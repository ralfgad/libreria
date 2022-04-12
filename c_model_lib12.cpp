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

 ihc::FPhalf my_tanhfp16_prueba(int a) {
	return  (1.0 ); //valor falso
	
	
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
   ihc::FPsingle my_ffplusf_2_cyv(ihc::FPsingle  a, ihc::FPsingle  b, ihc::FPsingle  c,ihc::FPsingle  d, ihc::FPsingle  e ) {
	return  (b*c+d*e+a);
	
	
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

    ihc::FPhalf my_ffplusf_cyv_half(ihc::FPhalf  a, ihc::FPhalf  b, ihc::FPhalf  c ) {
	return  (b*c+a);
	
	
 }

    int my_ffplusf_cyv_half_prueba(int  a, ihc::FPhalf  b, ihc::FPhalf  c ) {
	return  (b*c+a);
	
	
 }

      ihc::FPhalf my_ffplusf_cyv_half_fin_prueba(int  a, ihc::FPhalf  b, ihc::FPhalf  c ) {
	return  (b*c+a);
	
	
 }
   ihc::FPhalf my_ffplusf_2_cyv_half(ihc::FPhalf  a, ihc::FPhalf  b, ihc::FPhalf  c,ihc::FPhalf  d, ihc::FPhalf  e ) {
	return  (b*c+d*e+a);
	
	
 } 
 
    ihc::FPhalf my_ffaccf_cyv_half(bool  c, ihc::FPhalf  a, ihc::FPhalf  b ) {

		ihc::FPhalf aux;
		if (c==true){
		  aux=a*b;
		  }
		else {
		  aux=a*b+aux;
		  }
		return aux;

	
 }