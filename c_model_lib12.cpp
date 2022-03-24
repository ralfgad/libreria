#include "HLS/hls_float.h"
#include "HLS/hls_float_math.h"




#include "float_lib12.h"

float my_tanhfp162fd (ihc::bfloat16  a) {
float af;
af=a;
return tanh(af);
 }
float my_dtanhfp162fd (ihc::bfloat16 a) {
	float af;
af=a;
	return (1-(tanh(af)*tanh(af))); }

ihc::FPhalf my_tanhfp16(ihc::FPhalf a) {
	return  (1.0 - ihc::ihc_exp(-2 * a)) / (1.0 + ihc::ihc_exp(-2 * a));
	
	
 }
 
 ihc::bfloat16 my_tanhbfloat16(ihc::bfloat16  a) {
	return  (1.0 - ihc::ihc_exp(-2 * a)) / (1.0 + ihc::ihc_exp(-2 * a));
	
	
 }
 
  ihc::bfloat19 my_tanhbfloat19(ihc::bfloat19  a) {
	return  (1.0 - ihc::ihc_exp(-2 * a)) / (1.0 + ihc::ihc_exp(-2 * a));
	
	
 }
 
  ihc::FPsingle my_tanhFPsingle(ihc::FPsingle  a) {
	return  (1.0 - ihc::ihc_exp(-2 * a)) / (1.0 + ihc::ihc_exp(-2 * a));
	
	
 }
 
   ihc::FPsingle my_ffplusf_cyv(ihc::FPsingle  a, ihc::FPsingle  b, ihc::FPsingle  c ) {
	return  (b*c+a);
	
	
 }
 
    ihc::FPsingle my_ffaccf_cyv(bool  c, ihc::FPsingle  a, ihc::FPsingle  b ) {

		ihc::FPsingle aux;
		if (c==true){
		  aux=a*b;
		  }
		else {
		  aux=a*b+aux;
		  }
		return aux;

	
 }