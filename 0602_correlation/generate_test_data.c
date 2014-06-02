/************************************************/
/* File   :                         */
/* Author : Hirotaka Yuzurihara                 */
/* Time-stamp: "2014-06-02 20:27:35 yuzurihara" */
/************************************************/
#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include <time.h>
#include <gsl/gsl_rng.h>
#include <gsl/gsl_randist.h>
#include <gsl/gsl_statistics.h>
#include <gsl/gsl_sf.h>
#include <gsl/gsl_cdf.h>

int main(int argc, char *argv[]){

  FILE *fp, *gp;
  int i, data_size, j;
  int npoint, out_size;
  double srate, duration;
  double *t, *ch1, *ch2;
  double *f, *vr, *vi, *va;
  double *bg;

  /* parameter */

  double sigma = 1.0;
  double delay = 5.0;
  
  duration = 10.0;
  srate    = 100;
  npoint   = duration * srate;

  int n_delay = delay*srate;
  n_delay = 10;


  int n_total = 2 * npoint;

  fprintf(stderr, "%d  %d  %d\n", n_total, npoint, n_delay);



  /* memory allocate */
  t  = (double*)malloc(sizeof(double*)*npoint);
  bg = (double*)malloc(sizeof(double*)*2*npoint);
  ch1 = (double*)malloc(sizeof(double*)*npoint);
  ch2 = (double*)malloc(sizeof(double*)*npoint);

  /* GSL set-up */
  gsl_rng_type *T = (gsl_rng_type *)gsl_rng_default;
  /* 乱数発生器 */
  gsl_rng *rnd = gsl_rng_alloc(T);
  /* システムクロックを使って乱数の初期値を設定 */
  gsl_rng_set (rnd, time(NULL));

  for(i=0, j=0; i<2*npoint; i++){
    bg[i] = gsl_ran_gaussian (rnd, sigma);

    if(0<=i && i<npoint){
      ch1[i] = bg[i];
    }
    
    if(n_delay <= i && i < (n_delay+npoint)){
      ch2[j] = bg[i];
      //printf("%d  %d  %d  %d\n", i, j, n_delay, n_delay+npoint);
      j++;
    }
    //printf("%d  %d  %d  %d\n", i, j, n_delay, n_delay+npoint);
    
  }


  if ((fp = fopen("data_channel1.txt", "w")) == NULL) {
    printf("file open error!!\n");
    exit(1);
  }

  if ((gp = fopen("data_channel2.txt", "w")) == NULL) {
    printf("file open error!!\n");
    exit(1);
  }


  for(i=0; i<npoint; i++){
    t[i] = i/srate;
    printf("%.10f  %.10f  %.10f\n", t[i], ch1[i], ch2[i]);
    fprintf(fp, "%.15f\n", ch1[i]);
    fprintf(gp, "%.15f\n", ch2[i]);
  }


  gsl_rng_free(rnd);

  return 0;
}
