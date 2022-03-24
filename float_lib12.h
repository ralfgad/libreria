#ifndef _RTL_TANH_DERTANH_H_
#define _RTL_TANH_DERTANH_H_




#ifdef __cplusplus
extern "C" {
#endif

ihc::bfloat16 my_tanhbfloat16 (ihc::bfloat16 a);
ihc::bfloat19 my_tanhbfloat19 (ihc::bfloat19 a);
ihc::FPhalf my_tanhfp16 (ihc::FPhalf a);
ihc::FPsingle my_tanhFPsingle (ihc::FPsingle a);
ihc::FPsingle my_ffplusf_cyv(ihc::FPsingle  a, ihc::FPsingle  b, ihc::FPsingle  c );
ihc::FPsingle my_ffaccf_cyv(bool  c, ihc::FPsingle  a, ihc::FPsingle  b );
float my_tanhfp162fd (ihc::bfloat16 a) ;
float my_dtanhfp162fd (ihc::bfloat16 a) ;


#ifdef __cplusplus
}
#endif

#endif // _RTL_TANH_DERTANH_H_