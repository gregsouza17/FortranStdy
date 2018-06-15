#include <stdio.h>
#include <cuda.h>




extern __shared__ double cache[];

__global__ void kernel(int *Ss, int *Nn, int *mask, double *xyz,
		       double *cost){

  int i1 = blockIdx.x;
  int i2 = threadIdx.x;
  int j = threadIdx.y;
  int dimx= blockDim.x, dimy = blockDim.y;
  int cacheIndex = j*dimx+i2, cIndexMax = dimx*dimy;


  cache[cacheIndex] = 0.5;

  __syncthreads();

  //Somar todos os indices do cache aqui
  //ofset separado

  int i;
  for(i=1; i<cIndexMax; i++)
    cache[0]+=cache[i];
  
  cost[i1] += cache[0];
 
}

int main()
{
  //Initializing
  int N = 3, S = 10 ;
  double xyz[3][N][S], linxyz[3*N*S],soma;
  double cost[S];
  int mask[3][N]={0}, linmask[3*N];
  long int i1,i2;
  long int j=0,k=0;

  //mask
    for(k=0; k<3; k++){
      for(j=0; j<N; j++){
	mask[k][j] = 1;
	if(j%(k+1)==0)
	  mask[k][j] = 1;	
      }
    }
   
    for(k=0; k<3; k++){
      for(j=0; j<N; j++){
	linmask[j+N*k] = mask[k][j];
      }
    }
    //mask

    for(k=0; k<3; k++){
      for(j=0; j<N;j++){
	for(i1=0; i1<S; i1++){
	  xyz[k][j][i1] = 0.1*(i1+S*j + S*N*k);
	  linxyz[i1+S*j + S*N*k] = xyz[k][j][i1];
	}
      }
    }


    //CPU
    soma = 0;

  for (i1 = 0  ; i1 < S ; ++i1) {    
    for (i2 = 0;   i2< S ; ++i2) {
      if(i1!=i2){
	soma = 0;
	for(j=0;   j<N;   j++){
	  
	  for(k=0;   k<3;    k++){

	    if( linmask [N*k+j] ){
	      soma+=(linxyz[k*N*S+j*S+i1] - linxyz[k*N*S+j*S+i2])*(linxyz[k*N*S+j*S+i1] - linxyz[k*N*S+j*S+i2]);
	    }
	    
	  } //for k
	} //for j
       	cost[i1]+=soma;
      } //for if
    } //for i2
  } //for i1

  //GPU

  int *devN, *devS;
  
  cudaMalloc((void **)&devN, sizeof(int));
  cudaMalloc((void **)&devS, sizeof(int));

  cudaMemcpy(devN, &N, sizeof(int), cudaMemcpyHostToDevice);
  cudaMemcpy(devS, &S, sizeof(int), cudaMemcpyHostToDevice);

  int *dmask;
  cudaMalloc((void **)&dmask, sizeof(linmask));

  cudaMemcpy(dmask, linmask, sizeof(linmask), cudaMemcpyHostToDevice);

  double *d_xyz, *d_cost, cost2[S];
  cudaMalloc((void **)&d_xyz, sizeof(linxyz));
  cudaMalloc((void **)&d_cost, S*sizeof(double));

  cudaMemcpy(d_xyz, linxyz, sizeof(linxyz), cudaMemcpyHostToDevice);

  dim3    grids(S);
  dim3    threads(S,N);

 
  
  kernel<<<grids,threads,S*N*sizeof(double)>>>(devS, devN, dmask, d_xyz, d_cost);

  cudaMemcpy(cost2, d_cost, S*sizeof(double), cudaMemcpyDeviceToHost);

  printf("%f %f \n", cost2[0], cost2[1]);

  cudaFree(devN); cudaFree(devS); cudaFree(dmask);
  cudaFree(d_xyz); cudaFree(d_cost);
  
			    /*__global__ void kernel
(int *Ss, int *Nn, int *mask, double *xyz,  double *cost)*/
  return 0;
}
