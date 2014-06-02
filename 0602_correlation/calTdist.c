/************************************************/
/* File   :                         */
/* Author : Hirotaka Yuzurihara                 */
/* Time-stamp: "2014-04-22 19:39:15 yuzurihara" */
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

  int n, i;
  double p;
  double s, t;

  p = 0.05;

  for(n=3; n<=100; n++){
    t = gsl_cdf_tdist_Pinv(1.0 - p/2.0, n-2);
    s = gsl_cdf_tdist_Qinv(p/2.0, n-2);
    printf("%d  %f  %f  %f\n", n, t, t/sqrt(n - 2 + t*t), s/sqrt(n - 2 + s*s));
  }

  return 0;
}
