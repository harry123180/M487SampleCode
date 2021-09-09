#line 1 "..\\arm_fft_bin_data.c"
#line 1 "..\\..\\..\\..\\Library\\CMSIS\\Include\\arm_math.h"






































 


























































































































 




 








 









 



 






































































 



 



 



 


 






 



 



 
#line 298 "..\\..\\..\\..\\Library\\CMSIS\\Include\\arm_math.h"



#line 1 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm4.h"
 




 

























 











#line 1 "D:\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "D:\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "D:\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "D:\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "D:\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "D:\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 45 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm4.h"

















 




 



 

 













#line 120 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm4.h"



 
#line 135 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm4.h"

#line 209 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm4.h"

#line 1 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmInstr.h"
 




 

























 












 



 

 
#line 1 "..\\..\\..\\..\\Library\\CMSIS\\Include\\cmsis_armcc.h"
 




 

























 










 



 

 
 





 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}






 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}






 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}






 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}






 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}






 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}






 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}






 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}






 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}






 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}






 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}








 







 







 
static __inline uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __asm("basepri");
  return(__regBasePri);
}






 
static __inline void __set_BASEPRI(uint32_t basePri)
{
  register uint32_t __regBasePri         __asm("basepri");
  __regBasePri = (basePri & 0xFFU);
}







 
static __inline void __set_BASEPRI_MAX(uint32_t basePri)
{
  register uint32_t __regBasePriMax      __asm("basepri_max");
  __regBasePriMax = (basePri & 0xFFU);
}






 
static __inline uint32_t __get_FAULTMASK(void)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  return(__regFaultMask);
}






 
static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  __regFaultMask = (faultMask & (uint32_t)1);
}










 
static __inline uint32_t __get_FPSCR(void)
{

  register uint32_t __regfpscr         __asm("fpscr");
  return(__regfpscr);



}






 
static __inline void __set_FPSCR(uint32_t fpscr)
{

  register uint32_t __regfpscr         __asm("fpscr");
  __regfpscr = (fpscr);

}





 


 



 




 






 







 






 








 










 










 











 








 

__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}







 

__attribute__((section(".revsh_text"))) static __inline __asm int32_t __REVSH(int32_t value)
{
  revsh r0, r0
  bx lr
}









 









 








 
#line 455 "..\\..\\..\\..\\Library\\CMSIS\\Include\\cmsis_armcc.h"







 










 












 












 














 














 














 










 









 









 









 

__attribute__((section(".rrx_text"))) static __inline __asm uint32_t __RRX(uint32_t value)
{
  rrx r0, r0
  bx lr
}








 








 








 








 








 








 




   


 



 



#line 720 "..\\..\\..\\..\\Library\\CMSIS\\Include\\cmsis_armcc.h"











 


#line 54 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmInstr.h"

 
#line 84 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmInstr.h"

   

#line 211 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm4.h"
#line 1 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmFunc.h"
 




 

























 












 



 

 
#line 54 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmFunc.h"

 
#line 84 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmFunc.h"

 

#line 212 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm4.h"
#line 1 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmSimd.h"
 




 

























 
















 



 

 
#line 58 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmSimd.h"

 
#line 88 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmSimd.h"

 






#line 213 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm4.h"







#line 305 "..\\..\\..\\..\\Library\\CMSIS\\Include\\arm_math.h"
#line 316 "..\\..\\..\\..\\Library\\CMSIS\\Include\\arm_math.h"

#line 1 "D:\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "D:\\ARM\\ARMCC\\Bin\\..\\include\\string.h"


  



    typedef unsigned int size_t;    
#line 54 "D:\\ARM\\ARMCC\\Bin\\..\\include\\string.h"




extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 193 "D:\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 209 "D:\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 232 "D:\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 247 "D:\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 270 "D:\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 502 "D:\\ARM\\ARMCC\\Bin\\..\\include\\string.h"



 

#line 319 "..\\..\\..\\..\\Library\\CMSIS\\Include\\arm_math.h"
#line 1 "D:\\ARM\\ARMCC\\Bin\\..\\include\\math.h"




 





 












 






   









 






#line 61 "D:\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

#line 75 "D:\\ARM\\ARMCC\\Bin\\..\\include\\math.h"







   




 















 
#line 112 "D:\\ARM\\ARMCC\\Bin\\..\\include\\math.h"











 





extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_dcmp4(double  , double  );
extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_fcmp4(float  , float  );
    




 

extern __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassifyf(float  );
extern __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassify(double  );
     
     

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isfinitef(float __x)
{
    return (((*(unsigned *)&(__x)) >> 23) & 0xff) != 0xff;
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isfinite(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff) != 0x7ff;
}
     
     

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isinff(float __x)
{
    return ((*(unsigned *)&(__x)) << 1) == 0xff000000;
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isinf(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) << 1) == 0xffe00000) && ((*(unsigned *)&(__x)) == 0);
}
     
     

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreaterf(float __x, float __y)
{
    unsigned __f = __ARM_fcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreater(double __x, double __y)
{
    unsigned __f = __ARM_dcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
    


 

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnanf(float __x)
{
    return (0x7f800000 - ((*(unsigned *)&(__x)) & 0x7fffffff)) >> 31;
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnan(double __x)
{
    unsigned __xf = (*(1 + (unsigned *)&(__x))) | (((*(unsigned *)&(__x)) == 0) ? 0 : 1);
    return (0x7ff00000 - (__xf & 0x7fffffff)) >> 31;
}
     
     

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnormalf(float __x)
{
    unsigned __xe = ((*(unsigned *)&(__x)) >> 23) & 0xff;
    return (__xe != 0xff) && (__xe != 0);
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnormal(double __x)
{
    unsigned __xe = ((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff;
    return (__xe != 0x7ff) && (__xe != 0);
}
     
     

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_signbitf(float __x)
{
    return (*(unsigned *)&(__x)) >> 31;
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_signbit(double __x)
{
    return (*(1 + (unsigned *)&(__x))) >> 31;
}
     
     








#line 230 "D:\\ARM\\ARMCC\\Bin\\..\\include\\math.h"







   
  typedef float float_t;
  typedef double double_t;
#line 251 "D:\\ARM\\ARMCC\\Bin\\..\\include\\math.h"



extern const int math_errhandling;
#line 261 "D:\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

extern __declspec(__nothrow) double acos(double  );
    
    
    
extern __declspec(__nothrow) double asin(double  );
    
    
    
    

extern __declspec(__nothrow) __attribute__((const)) double atan(double  );
    
    

extern __declspec(__nothrow) double atan2(double  , double  );
    
    
    
    

extern __declspec(__nothrow) double cos(double  );
    
    
    
    
extern __declspec(__nothrow) double sin(double  );
    
    
    
    

extern void __use_accurate_range_reduction(void);
    
    

extern __declspec(__nothrow) double tan(double  );
    
    
    
    

extern __declspec(__nothrow) double cosh(double  );
    
    
    
    
extern __declspec(__nothrow) double sinh(double  );
    
    
    
    
    

extern __declspec(__nothrow) __attribute__((const)) double tanh(double  );
    
    

extern __declspec(__nothrow) double exp(double  );
    
    
    
    
    

extern __declspec(__nothrow) double frexp(double  , int *  ) __attribute__((__nonnull__(2)));
    
    
    
    
    
    

extern __declspec(__nothrow) double ldexp(double  , int  );
    
    
    
    
extern __declspec(__nothrow) double log(double  );
    
    
    
    
    
extern __declspec(__nothrow) double log10(double  );
    
    
    
extern __declspec(__nothrow) double modf(double  , double *  ) __attribute__((__nonnull__(2)));
    
    
    
    

extern __declspec(__nothrow) double pow(double  , double  );
    
    
    
    
    
    
extern __declspec(__nothrow) double sqrt(double  );
    
    
    




    __inline double _sqrt(double __x) { return sqrt(__x); }


    __inline float _sqrtf(float __x) { return __sqrtf(__x); }



    



 

extern __declspec(__nothrow) __attribute__((const)) double ceil(double  );
    
    
extern __declspec(__nothrow) __attribute__((const)) double fabs(double  );
    
    

extern __declspec(__nothrow) __attribute__((const)) double floor(double  );
    
    

extern __declspec(__nothrow) double fmod(double  , double  );
    
    
    
    
    

    









 



extern __declspec(__nothrow) double acosh(double  );
    

 
extern __declspec(__nothrow) double asinh(double  );
    

 
extern __declspec(__nothrow) double atanh(double  );
    

 
extern __declspec(__nothrow) double cbrt(double  );
    

 
__inline __declspec(__nothrow) __attribute__((const)) double copysign(double __x, double __y)
    

 
{
    (*(1 + (unsigned *)&(__x))) = ((*(1 + (unsigned *)&(__x))) & 0x7fffffff) | ((*(1 + (unsigned *)&(__y))) & 0x80000000);
    return __x;
}
__inline __declspec(__nothrow) __attribute__((const)) float copysignf(float __x, float __y)
    

 
{
    (*(unsigned *)&(__x)) = ((*(unsigned *)&(__x)) & 0x7fffffff) | ((*(unsigned *)&(__y)) & 0x80000000);
    return __x;
}
extern __declspec(__nothrow) double erf(double  );
    

 
extern __declspec(__nothrow) double erfc(double  );
    

 
extern __declspec(__nothrow) double expm1(double  );
    

 



    

 






#line 479 "D:\\ARM\\ARMCC\\Bin\\..\\include\\math.h"


extern __declspec(__nothrow) double hypot(double  , double  );
    




 
extern __declspec(__nothrow) int ilogb(double  );
    

 
extern __declspec(__nothrow) int ilogbf(float  );
    

 
extern __declspec(__nothrow) int ilogbl(long double  );
    

 







    

 





    



 





    



 





    

 





    



 





    



 





    



 





    

 





    

 





    


 

extern __declspec(__nothrow) double lgamma (double  );
    


 
extern __declspec(__nothrow) double log1p(double  );
    

 
extern __declspec(__nothrow) double logb(double  );
    

 
extern __declspec(__nothrow) float logbf(float  );
    

 
extern __declspec(__nothrow) long double logbl(long double  );
    

 
extern __declspec(__nothrow) double nextafter(double  , double  );
    


 
extern __declspec(__nothrow) float nextafterf(float  , float  );
    


 
extern __declspec(__nothrow) long double nextafterl(long double  , long double  );
    


 
extern __declspec(__nothrow) double nexttoward(double  , long double  );
    


 
extern __declspec(__nothrow) float nexttowardf(float  , long double  );
    


 
extern __declspec(__nothrow) long double nexttowardl(long double  , long double  );
    


 
extern __declspec(__nothrow) double remainder(double  , double  );
    

 
extern __declspec(__nothrow) __attribute__((const)) double rint(double  );
    

 
extern __declspec(__nothrow) double scalbln(double  , long int  );
    

 
extern __declspec(__nothrow) float scalblnf(float  , long int  );
    

 
extern __declspec(__nothrow) long double scalblnl(long double  , long int  );
    

 
extern __declspec(__nothrow) double scalbn(double  , int  );
    

 
extern __declspec(__nothrow) float scalbnf(float  , int  );
    

 
extern __declspec(__nothrow) long double scalbnl(long double  , int  );
    

 




    

 



 
extern __declspec(__nothrow) __attribute__((const)) float _fabsf(float);  
__inline __declspec(__nothrow) __attribute__((const)) float fabsf(float __f) { return _fabsf(__f); }
extern __declspec(__nothrow) float sinf(float  );
extern __declspec(__nothrow) float cosf(float  );
extern __declspec(__nothrow) float tanf(float  );
extern __declspec(__nothrow) float acosf(float  );
extern __declspec(__nothrow) float asinf(float  );
extern __declspec(__nothrow) float atanf(float  );
extern __declspec(__nothrow) float atan2f(float  , float  );
extern __declspec(__nothrow) float sinhf(float  );
extern __declspec(__nothrow) float coshf(float  );
extern __declspec(__nothrow) float tanhf(float  );
extern __declspec(__nothrow) float expf(float  );
extern __declspec(__nothrow) float logf(float  );
extern __declspec(__nothrow) float log10f(float  );
extern __declspec(__nothrow) float powf(float  , float  );
extern __declspec(__nothrow) float sqrtf(float  );
extern __declspec(__nothrow) float ldexpf(float  , int  );
extern __declspec(__nothrow) float frexpf(float  , int *  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) __attribute__((const)) float ceilf(float  );
extern __declspec(__nothrow) __attribute__((const)) float floorf(float  );
extern __declspec(__nothrow) float fmodf(float  , float  );
extern __declspec(__nothrow) float modff(float  , float *  ) __attribute__((__nonnull__(2)));

 
 













 
__declspec(__nothrow) long double acosl(long double );
__declspec(__nothrow) long double asinl(long double );
__declspec(__nothrow) long double atanl(long double );
__declspec(__nothrow) long double atan2l(long double , long double );
__declspec(__nothrow) long double ceill(long double );
__declspec(__nothrow) long double cosl(long double );
__declspec(__nothrow) long double coshl(long double );
__declspec(__nothrow) long double expl(long double );
__declspec(__nothrow) long double fabsl(long double );
__declspec(__nothrow) long double floorl(long double );
__declspec(__nothrow) long double fmodl(long double , long double );
__declspec(__nothrow) long double frexpl(long double , int* ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double ldexpl(long double , int );
__declspec(__nothrow) long double logl(long double );
__declspec(__nothrow) long double log10l(long double );
__declspec(__nothrow) long double modfl(long double  , long double *  ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double powl(long double , long double );
__declspec(__nothrow) long double sinl(long double );
__declspec(__nothrow) long double sinhl(long double );
__declspec(__nothrow) long double sqrtl(long double );
__declspec(__nothrow) long double tanl(long double );
__declspec(__nothrow) long double tanhl(long double );





 
extern __declspec(__nothrow) float acoshf(float  );
__declspec(__nothrow) long double acoshl(long double );
extern __declspec(__nothrow) float asinhf(float  );
__declspec(__nothrow) long double asinhl(long double );
extern __declspec(__nothrow) float atanhf(float  );
__declspec(__nothrow) long double atanhl(long double );
__declspec(__nothrow) long double copysignl(long double , long double );
extern __declspec(__nothrow) float cbrtf(float  );
__declspec(__nothrow) long double cbrtl(long double );
extern __declspec(__nothrow) float erff(float  );
__declspec(__nothrow) long double erfl(long double );
extern __declspec(__nothrow) float erfcf(float  );
__declspec(__nothrow) long double erfcl(long double );
extern __declspec(__nothrow) float expm1f(float  );
__declspec(__nothrow) long double expm1l(long double );
extern __declspec(__nothrow) float log1pf(float  );
__declspec(__nothrow) long double log1pl(long double );
extern __declspec(__nothrow) float hypotf(float  , float  );
__declspec(__nothrow) long double hypotl(long double , long double );
extern __declspec(__nothrow) float lgammaf(float  );
__declspec(__nothrow) long double lgammal(long double );
extern __declspec(__nothrow) float remainderf(float  , float  );
__declspec(__nothrow) long double remainderl(long double , long double );
extern __declspec(__nothrow) float rintf(float  );
__declspec(__nothrow) long double rintl(long double );



#line 875 "D:\\ARM\\ARMCC\\Bin\\..\\include\\math.h"





#line 896 "D:\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

#line 1087 "D:\\ARM\\ARMCC\\Bin\\..\\include\\math.h"











#line 1317 "D:\\ARM\\ARMCC\\Bin\\..\\include\\math.h"





 
#line 320 "..\\..\\..\\..\\Library\\CMSIS\\Include\\arm_math.h"






  

 

#line 336 "..\\..\\..\\..\\Library\\CMSIS\\Include\\arm_math.h"

  

 

#line 348 "..\\..\\..\\..\\Library\\CMSIS\\Include\\arm_math.h"

  

 
   
   


  

 
#line 368 "..\\..\\..\\..\\Library\\CMSIS\\Include\\arm_math.h"

  

 

  typedef enum
  {
    ARM_MATH_SUCCESS = 0,                 
    ARM_MATH_ARGUMENT_ERROR = -1,         
    ARM_MATH_LENGTH_ERROR = -2,           
    ARM_MATH_SIZE_MISMATCH = -3,          
    ARM_MATH_NANINF = -4,                 
    ARM_MATH_SINGULAR = -5,               
    ARM_MATH_TEST_FAILURE = -6            
  } arm_status;

  

 
  typedef int8_t q7_t;

  

 
  typedef int16_t q15_t;

  

 
  typedef int32_t q31_t;

  

 
  typedef int64_t q63_t;

  

 
  typedef float float32_t;

  

 
  typedef double float64_t;

  

 




#line 444 "..\\..\\..\\..\\Library\\CMSIS\\Include\\arm_math.h"






#line 460 "..\\..\\..\\..\\Library\\CMSIS\\Include\\arm_math.h"


   

 


#line 479 "..\\..\\..\\..\\Library\\CMSIS\\Include\\arm_math.h"


  

 
  static __inline q31_t clip_q63_to_q31(
  q63_t x)
  {
    return ((q31_t) (x >> 32) != ((q31_t) x >> 31)) ?
      ((0x7FFFFFFF ^ ((q31_t) (x >> 63)))) : (q31_t) x;
  }

  

 
  static __inline q15_t clip_q63_to_q15(
  q63_t x)
  {
    return ((q31_t) (x >> 32) != ((q31_t) x >> 31)) ?
      ((0x7FFF ^ ((q15_t) (x >> 63)))) : (q15_t) (x >> 15);
  }

  

 
  static __inline q7_t clip_q31_to_q7(
  q31_t x)
  {
    return ((q31_t) (x >> 24) != ((q31_t) x >> 23)) ?
      ((0x7F ^ ((q7_t) (x >> 31)))) : (q7_t) x;
  }

  

 
  static __inline q15_t clip_q31_to_q15(
  q31_t x)
  {
    return ((q31_t) (x >> 16) != ((q31_t) x >> 15)) ?
      ((0x7FFF ^ ((q15_t) (x >> 31)))) : (q15_t) x;
  }

  

 

  static __inline q63_t mult32x64(
  q63_t x,
  q31_t y)
  {
    return ((((q63_t) (x & 0x00000000FFFFFFFF) * y) >> 32) +
            (((q63_t) (x >> 32) * y)));
  }





 
 
#line 558 "..\\..\\..\\..\\Library\\CMSIS\\Include\\arm_math.h"

  

 

  static __inline uint32_t arm_recip_q31(
  q31_t in,
  q31_t * dst,
  q31_t * pRecipTable)
  {
    q31_t out;
    uint32_t tempVal;
    uint32_t index, i;
    uint32_t signBits;

    if(in > 0)
    {
      signBits = ((uint32_t) (__clz( in) - 1));
    }
    else
    {
      signBits = ((uint32_t) (__clz(-in) - 1));
    }

     
    in = (in << signBits);

     
    index = (uint32_t)(in >> 24);
    index = (index & 0x0000003F);

     
    out = pRecipTable[index];

     
     
    for (i = 0u; i < 2u; i++)
    {
      tempVal = (uint32_t) (((q63_t) in * out) >> 31);
      tempVal = 0x7FFFFFFFu - tempVal;
       
       
      out = clip_q63_to_q31(((q63_t) out * tempVal) >> 30);
    }

     
    *dst = out;

     
    return (signBits + 1u);
  }


  

 
  static __inline uint32_t arm_recip_q15(
  q15_t in,
  q15_t * dst,
  q15_t * pRecipTable)
  {
    q15_t out = 0;
    uint32_t tempVal = 0;
    uint32_t index = 0, i = 0;
    uint32_t signBits = 0;

    if(in > 0)
    {
      signBits = ((uint32_t)(__clz( in) - 17));
    }
    else
    {
      signBits = ((uint32_t)(__clz(-in) - 17));
    }

     
    in = (in << signBits);

     
    index = (uint32_t)(in >>  8);
    index = (index & 0x0000003F);

     
    out = pRecipTable[index];

     
     
    for (i = 0u; i < 2u; i++)
    {
      tempVal = (uint32_t) (((q31_t) in * out) >> 15);
      tempVal = 0x7FFFu - tempVal;
       
      out = (q15_t) (((q31_t) out * tempVal) >> 14);
       
    }

     
    *dst = out;

     
    return (signBits + 1);
  }


  

 
#line 700 "..\\..\\..\\..\\Library\\CMSIS\\Include\\arm_math.h"


  

 
#line 1024 "..\\..\\..\\..\\Library\\CMSIS\\Include\\arm_math.h"


  

 
  typedef struct
  {
    uint16_t numTaps;         
    q7_t *pState;             
    q7_t *pCoeffs;            
  } arm_fir_instance_q7;

  

 
  typedef struct
  {
    uint16_t numTaps;          
    q15_t *pState;             
    q15_t *pCoeffs;            
  } arm_fir_instance_q15;

  

 
  typedef struct
  {
    uint16_t numTaps;          
    q31_t *pState;             
    q31_t *pCoeffs;            
  } arm_fir_instance_q31;

  

 
  typedef struct
  {
    uint16_t numTaps;      
    float32_t *pState;     
    float32_t *pCoeffs;    
  } arm_fir_instance_f32;


  





 
  void arm_fir_q7(
  const arm_fir_instance_q7 * S,
  q7_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);


  






 
  void arm_fir_init_q7(
  arm_fir_instance_q7 * S,
  uint16_t numTaps,
  q7_t * pCoeffs,
  q7_t * pState,
  uint32_t blockSize);


  





 
  void arm_fir_q15(
  const arm_fir_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);


  





 
  void arm_fir_fast_q15(
  const arm_fir_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);


  








 
  arm_status arm_fir_init_q15(
  arm_fir_instance_q15 * S,
  uint16_t numTaps,
  q15_t * pCoeffs,
  q15_t * pState,
  uint32_t blockSize);


  





 
  void arm_fir_q31(
  const arm_fir_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  





 
  void arm_fir_fast_q31(
  const arm_fir_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  






 
  void arm_fir_init_q31(
  arm_fir_instance_q31 * S,
  uint16_t numTaps,
  q31_t * pCoeffs,
  q31_t * pState,
  uint32_t blockSize);


  





 
  void arm_fir_f32(
  const arm_fir_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  






 
  void arm_fir_init_f32(
  arm_fir_instance_f32 * S,
  uint16_t numTaps,
  float32_t * pCoeffs,
  float32_t * pState,
  uint32_t blockSize);


  

 
  typedef struct
  {
    int8_t numStages;         
    q15_t *pState;            
    q15_t *pCoeffs;           
    int8_t postShift;         
  } arm_biquad_casd_df1_inst_q15;

  

 
  typedef struct
  {
    uint32_t numStages;       
    q31_t *pState;            
    q31_t *pCoeffs;           
    uint8_t postShift;        
  } arm_biquad_casd_df1_inst_q31;

  

 
  typedef struct
  {
    uint32_t numStages;       
    float32_t *pState;        
    float32_t *pCoeffs;       
  } arm_biquad_casd_df1_inst_f32;


  





 
  void arm_biquad_cascade_df1_q15(
  const arm_biquad_casd_df1_inst_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);


  






 
  void arm_biquad_cascade_df1_init_q15(
  arm_biquad_casd_df1_inst_q15 * S,
  uint8_t numStages,
  q15_t * pCoeffs,
  q15_t * pState,
  int8_t postShift);


  





 
  void arm_biquad_cascade_df1_fast_q15(
  const arm_biquad_casd_df1_inst_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);


  





 
  void arm_biquad_cascade_df1_q31(
  const arm_biquad_casd_df1_inst_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  





 
  void arm_biquad_cascade_df1_fast_q31(
  const arm_biquad_casd_df1_inst_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  






 
  void arm_biquad_cascade_df1_init_q31(
  arm_biquad_casd_df1_inst_q31 * S,
  uint8_t numStages,
  q31_t * pCoeffs,
  q31_t * pState,
  int8_t postShift);


  





 
  void arm_biquad_cascade_df1_f32(
  const arm_biquad_casd_df1_inst_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  





 
  void arm_biquad_cascade_df1_init_f32(
  arm_biquad_casd_df1_inst_f32 * S,
  uint8_t numStages,
  float32_t * pCoeffs,
  float32_t * pState);


  

 
  typedef struct
  {
    uint16_t numRows;      
    uint16_t numCols;      
    float32_t *pData;      
  } arm_matrix_instance_f32;


  

 
  typedef struct
  {
    uint16_t numRows;      
    uint16_t numCols;      
    float64_t *pData;      
  } arm_matrix_instance_f64;

  

 
  typedef struct
  {
    uint16_t numRows;      
    uint16_t numCols;      
    q15_t *pData;          
  } arm_matrix_instance_q15;

  

 
  typedef struct
  {
    uint16_t numRows;      
    uint16_t numCols;      
    q31_t *pData;          
  } arm_matrix_instance_q31;


  






 
  arm_status arm_mat_add_f32(
  const arm_matrix_instance_f32 * pSrcA,
  const arm_matrix_instance_f32 * pSrcB,
  arm_matrix_instance_f32 * pDst);


  






 
  arm_status arm_mat_add_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
  arm_matrix_instance_q15 * pDst);


  






 
  arm_status arm_mat_add_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
  arm_matrix_instance_q31 * pDst);


  






 
  arm_status arm_mat_cmplx_mult_f32(
  const arm_matrix_instance_f32 * pSrcA,
  const arm_matrix_instance_f32 * pSrcB,
  arm_matrix_instance_f32 * pDst);


  






 
  arm_status arm_mat_cmplx_mult_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
  arm_matrix_instance_q15 * pDst,
  q15_t * pScratch);


  






 
  arm_status arm_mat_cmplx_mult_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
  arm_matrix_instance_q31 * pDst);


  





 
  arm_status arm_mat_trans_f32(
  const arm_matrix_instance_f32 * pSrc,
  arm_matrix_instance_f32 * pDst);


  





 
  arm_status arm_mat_trans_q15(
  const arm_matrix_instance_q15 * pSrc,
  arm_matrix_instance_q15 * pDst);


  





 
  arm_status arm_mat_trans_q31(
  const arm_matrix_instance_q31 * pSrc,
  arm_matrix_instance_q31 * pDst);


  






 
  arm_status arm_mat_mult_f32(
  const arm_matrix_instance_f32 * pSrcA,
  const arm_matrix_instance_f32 * pSrcB,
  arm_matrix_instance_f32 * pDst);


  







 
  arm_status arm_mat_mult_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
  arm_matrix_instance_q15 * pDst,
  q15_t * pState);


  







 
  arm_status arm_mat_mult_fast_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
  arm_matrix_instance_q15 * pDst,
  q15_t * pState);


  






 
  arm_status arm_mat_mult_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
  arm_matrix_instance_q31 * pDst);


  






 
  arm_status arm_mat_mult_fast_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
  arm_matrix_instance_q31 * pDst);


  






 
  arm_status arm_mat_sub_f32(
  const arm_matrix_instance_f32 * pSrcA,
  const arm_matrix_instance_f32 * pSrcB,
  arm_matrix_instance_f32 * pDst);


  






 
  arm_status arm_mat_sub_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
  arm_matrix_instance_q15 * pDst);


  






 
  arm_status arm_mat_sub_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
  arm_matrix_instance_q31 * pDst);


  






 
  arm_status arm_mat_scale_f32(
  const arm_matrix_instance_f32 * pSrc,
  float32_t scale,
  arm_matrix_instance_f32 * pDst);


  







 
  arm_status arm_mat_scale_q15(
  const arm_matrix_instance_q15 * pSrc,
  q15_t scaleFract,
  int32_t shift,
  arm_matrix_instance_q15 * pDst);


  







 
  arm_status arm_mat_scale_q31(
  const arm_matrix_instance_q31 * pSrc,
  q31_t scaleFract,
  int32_t shift,
  arm_matrix_instance_q31 * pDst);


  





 
  void arm_mat_init_q31(
  arm_matrix_instance_q31 * S,
  uint16_t nRows,
  uint16_t nColumns,
  q31_t * pData);


  





 
  void arm_mat_init_q15(
  arm_matrix_instance_q15 * S,
  uint16_t nRows,
  uint16_t nColumns,
  q15_t * pData);


  





 
  void arm_mat_init_f32(
  arm_matrix_instance_f32 * S,
  uint16_t nRows,
  uint16_t nColumns,
  float32_t * pData);



  

 
  typedef struct
  {
    q15_t A0;            




    q31_t A1;            

    q15_t state[3];      
    q15_t Kp;            
    q15_t Ki;            
    q15_t Kd;            
  } arm_pid_instance_q15;

  

 
  typedef struct
  {
    q31_t A0;             
    q31_t A1;             
    q31_t A2;             
    q31_t state[3];       
    q31_t Kp;             
    q31_t Ki;             
    q31_t Kd;             
  } arm_pid_instance_q31;

  

 
  typedef struct
  {
    float32_t A0;           
    float32_t A1;           
    float32_t A2;           
    float32_t state[3];     
    float32_t Kp;           
    float32_t Ki;           
    float32_t Kd;           
  } arm_pid_instance_f32;



  



 
  void arm_pid_init_f32(
  arm_pid_instance_f32 * S,
  int32_t resetStateFlag);


  


 
  void arm_pid_reset_f32(
  arm_pid_instance_f32 * S);


  



 
  void arm_pid_init_q31(
  arm_pid_instance_q31 * S,
  int32_t resetStateFlag);


  


 

  void arm_pid_reset_q31(
  arm_pid_instance_q31 * S);


  



 
  void arm_pid_init_q15(
  arm_pid_instance_q15 * S,
  int32_t resetStateFlag);


  


 
  void arm_pid_reset_q15(
  arm_pid_instance_q15 * S);


  

 
  typedef struct
  {
    uint32_t nValues;            
    float32_t x1;                
    float32_t xSpacing;          
    float32_t *pYData;           
  } arm_linear_interp_instance_f32;

  

 
  typedef struct
  {
    uint16_t numRows;    
    uint16_t numCols;    
    float32_t *pData;    
  } arm_bilinear_interp_instance_f32;

   

 
  typedef struct
  {
    uint16_t numRows;    
    uint16_t numCols;    
    q31_t *pData;        
  } arm_bilinear_interp_instance_q31;

   

 
  typedef struct
  {
    uint16_t numRows;    
    uint16_t numCols;    
    q15_t *pData;        
  } arm_bilinear_interp_instance_q15;

   

 
  typedef struct
  {
    uint16_t numRows;    
    uint16_t numCols;    
    q7_t *pData;         
  } arm_bilinear_interp_instance_q7;


  





 
  void arm_mult_q7(
  q7_t * pSrcA,
  q7_t * pSrcB,
  q7_t * pDst,
  uint32_t blockSize);


  





 
  void arm_mult_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  q15_t * pDst,
  uint32_t blockSize);


  





 
  void arm_mult_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  q31_t * pDst,
  uint32_t blockSize);


  





 
  void arm_mult_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  float32_t * pDst,
  uint32_t blockSize);


  

 
  typedef struct
  {
    uint16_t fftLen;                  
    uint8_t ifftFlag;                 
    uint8_t bitReverseFlag;           
    q15_t *pTwiddle;                  
    uint16_t *pBitRevTable;           
    uint16_t twidCoefModifier;        
    uint16_t bitRevFactor;            
  } arm_cfft_radix2_instance_q15;

 
  arm_status arm_cfft_radix2_init_q15(
  arm_cfft_radix2_instance_q15 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

 
  void arm_cfft_radix2_q15(
  const arm_cfft_radix2_instance_q15 * S,
  q15_t * pSrc);


  

 
  typedef struct
  {
    uint16_t fftLen;                  
    uint8_t ifftFlag;                 
    uint8_t bitReverseFlag;           
    q15_t *pTwiddle;                  
    uint16_t *pBitRevTable;           
    uint16_t twidCoefModifier;        
    uint16_t bitRevFactor;            
  } arm_cfft_radix4_instance_q15;

 
  arm_status arm_cfft_radix4_init_q15(
  arm_cfft_radix4_instance_q15 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

 
  void arm_cfft_radix4_q15(
  const arm_cfft_radix4_instance_q15 * S,
  q15_t * pSrc);

  

 
  typedef struct
  {
    uint16_t fftLen;                  
    uint8_t ifftFlag;                 
    uint8_t bitReverseFlag;           
    q31_t *pTwiddle;                  
    uint16_t *pBitRevTable;           
    uint16_t twidCoefModifier;        
    uint16_t bitRevFactor;            
  } arm_cfft_radix2_instance_q31;

 
  arm_status arm_cfft_radix2_init_q31(
  arm_cfft_radix2_instance_q31 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

 
  void arm_cfft_radix2_q31(
  const arm_cfft_radix2_instance_q31 * S,
  q31_t * pSrc);

  

 
  typedef struct
  {
    uint16_t fftLen;                  
    uint8_t ifftFlag;                 
    uint8_t bitReverseFlag;           
    q31_t *pTwiddle;                  
    uint16_t *pBitRevTable;           
    uint16_t twidCoefModifier;        
    uint16_t bitRevFactor;            
  } arm_cfft_radix4_instance_q31;

 
  void arm_cfft_radix4_q31(
  const arm_cfft_radix4_instance_q31 * S,
  q31_t * pSrc);

 
  arm_status arm_cfft_radix4_init_q31(
  arm_cfft_radix4_instance_q31 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

  

 
  typedef struct
  {
    uint16_t fftLen;                    
    uint8_t ifftFlag;                   
    uint8_t bitReverseFlag;             
    float32_t *pTwiddle;                
    uint16_t *pBitRevTable;             
    uint16_t twidCoefModifier;          
    uint16_t bitRevFactor;              
    float32_t onebyfftLen;              
  } arm_cfft_radix2_instance_f32;

 
  arm_status arm_cfft_radix2_init_f32(
  arm_cfft_radix2_instance_f32 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

 
  void arm_cfft_radix2_f32(
  const arm_cfft_radix2_instance_f32 * S,
  float32_t * pSrc);

  

 
  typedef struct
  {
    uint16_t fftLen;                    
    uint8_t ifftFlag;                   
    uint8_t bitReverseFlag;             
    float32_t *pTwiddle;                
    uint16_t *pBitRevTable;             
    uint16_t twidCoefModifier;          
    uint16_t bitRevFactor;              
    float32_t onebyfftLen;              
  } arm_cfft_radix4_instance_f32;

 
  arm_status arm_cfft_radix4_init_f32(
  arm_cfft_radix4_instance_f32 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

 
  void arm_cfft_radix4_f32(
  const arm_cfft_radix4_instance_f32 * S,
  float32_t * pSrc);

  

 
  typedef struct
  {
    uint16_t fftLen;                    
    const q15_t *pTwiddle;              
    const uint16_t *pBitRevTable;       
    uint16_t bitRevLength;              
  } arm_cfft_instance_q15;

void arm_cfft_q15(
    const arm_cfft_instance_q15 * S,
    q15_t * p1,
    uint8_t ifftFlag,
    uint8_t bitReverseFlag);

  

 
  typedef struct
  {
    uint16_t fftLen;                    
    const q31_t *pTwiddle;              
    const uint16_t *pBitRevTable;       
    uint16_t bitRevLength;              
  } arm_cfft_instance_q31;

void arm_cfft_q31(
    const arm_cfft_instance_q31 * S,
    q31_t * p1,
    uint8_t ifftFlag,
    uint8_t bitReverseFlag);

  

 
  typedef struct
  {
    uint16_t fftLen;                    
    const float32_t *pTwiddle;          
    const uint16_t *pBitRevTable;       
    uint16_t bitRevLength;              
  } arm_cfft_instance_f32;

  void arm_cfft_f32(
  const arm_cfft_instance_f32 * S,
  float32_t * p1,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

  

 
  typedef struct
  {
    uint32_t fftLenReal;                       
    uint8_t ifftFlagR;                         
    uint8_t bitReverseFlagR;                   
    uint32_t twidCoefRModifier;                
    q15_t *pTwiddleAReal;                      
    q15_t *pTwiddleBReal;                      
    const arm_cfft_instance_q15 *pCfft;        
  } arm_rfft_instance_q15;

  arm_status arm_rfft_init_q15(
  arm_rfft_instance_q15 * S,
  uint32_t fftLenReal,
  uint32_t ifftFlagR,
  uint32_t bitReverseFlag);

  void arm_rfft_q15(
  const arm_rfft_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst);

  

 
  typedef struct
  {
    uint32_t fftLenReal;                         
    uint8_t ifftFlagR;                           
    uint8_t bitReverseFlagR;                     
    uint32_t twidCoefRModifier;                  
    q31_t *pTwiddleAReal;                        
    q31_t *pTwiddleBReal;                        
    const arm_cfft_instance_q31 *pCfft;          
  } arm_rfft_instance_q31;

  arm_status arm_rfft_init_q31(
  arm_rfft_instance_q31 * S,
  uint32_t fftLenReal,
  uint32_t ifftFlagR,
  uint32_t bitReverseFlag);

  void arm_rfft_q31(
  const arm_rfft_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst);

  

 
  typedef struct
  {
    uint32_t fftLenReal;                         
    uint16_t fftLenBy2;                          
    uint8_t ifftFlagR;                           
    uint8_t bitReverseFlagR;                     
    uint32_t twidCoefRModifier;                      
    float32_t *pTwiddleAReal;                    
    float32_t *pTwiddleBReal;                    
    arm_cfft_radix4_instance_f32 *pCfft;         
  } arm_rfft_instance_f32;

  arm_status arm_rfft_init_f32(
  arm_rfft_instance_f32 * S,
  arm_cfft_radix4_instance_f32 * S_CFFT,
  uint32_t fftLenReal,
  uint32_t ifftFlagR,
  uint32_t bitReverseFlag);

  void arm_rfft_f32(
  const arm_rfft_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst);

  

 
typedef struct
  {
    arm_cfft_instance_f32 Sint;       
    uint16_t fftLenRFFT;              
    float32_t * pTwiddleRFFT;         
  } arm_rfft_fast_instance_f32 ;

arm_status arm_rfft_fast_init_f32 (
   arm_rfft_fast_instance_f32 * S,
   uint16_t fftLen);

void arm_rfft_fast_f32(
  arm_rfft_fast_instance_f32 * S,
  float32_t * p, float32_t * pOut,
  uint8_t ifftFlag);

  

 
  typedef struct
  {
    uint16_t N;                           
    uint16_t Nby2;                        
    float32_t normalize;                  
    float32_t *pTwiddle;                  
    float32_t *pCosFactor;                
    arm_rfft_instance_f32 *pRfft;         
    arm_cfft_radix4_instance_f32 *pCfft;  
  } arm_dct4_instance_f32;


  








 
  arm_status arm_dct4_init_f32(
  arm_dct4_instance_f32 * S,
  arm_rfft_instance_f32 * S_RFFT,
  arm_cfft_radix4_instance_f32 * S_CFFT,
  uint16_t N,
  uint16_t Nby2,
  float32_t normalize);


  




 
  void arm_dct4_f32(
  const arm_dct4_instance_f32 * S,
  float32_t * pState,
  float32_t * pInlineBuffer);


  

 
  typedef struct
  {
    uint16_t N;                           
    uint16_t Nby2;                        
    q31_t normalize;                      
    q31_t *pTwiddle;                      
    q31_t *pCosFactor;                    
    arm_rfft_instance_q31 *pRfft;         
    arm_cfft_radix4_instance_q31 *pCfft;  
  } arm_dct4_instance_q31;


  








 
  arm_status arm_dct4_init_q31(
  arm_dct4_instance_q31 * S,
  arm_rfft_instance_q31 * S_RFFT,
  arm_cfft_radix4_instance_q31 * S_CFFT,
  uint16_t N,
  uint16_t Nby2,
  q31_t normalize);


  




 
  void arm_dct4_q31(
  const arm_dct4_instance_q31 * S,
  q31_t * pState,
  q31_t * pInlineBuffer);


  

 
  typedef struct
  {
    uint16_t N;                           
    uint16_t Nby2;                        
    q15_t normalize;                      
    q15_t *pTwiddle;                      
    q15_t *pCosFactor;                    
    arm_rfft_instance_q15 *pRfft;         
    arm_cfft_radix4_instance_q15 *pCfft;  
  } arm_dct4_instance_q15;


  








 
  arm_status arm_dct4_init_q15(
  arm_dct4_instance_q15 * S,
  arm_rfft_instance_q15 * S_RFFT,
  arm_cfft_radix4_instance_q15 * S_CFFT,
  uint16_t N,
  uint16_t Nby2,
  q15_t normalize);


  




 
  void arm_dct4_q15(
  const arm_dct4_instance_q15 * S,
  q15_t * pState,
  q15_t * pInlineBuffer);


  





 
  void arm_add_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  float32_t * pDst,
  uint32_t blockSize);


  





 
  void arm_add_q7(
  q7_t * pSrcA,
  q7_t * pSrcB,
  q7_t * pDst,
  uint32_t blockSize);


  





 
  void arm_add_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  q15_t * pDst,
  uint32_t blockSize);


  





 
  void arm_add_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  q31_t * pDst,
  uint32_t blockSize);


  





 
  void arm_sub_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  float32_t * pDst,
  uint32_t blockSize);


  





 
  void arm_sub_q7(
  q7_t * pSrcA,
  q7_t * pSrcB,
  q7_t * pDst,
  uint32_t blockSize);


  





 
  void arm_sub_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  q15_t * pDst,
  uint32_t blockSize);


  





 
  void arm_sub_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  q31_t * pDst,
  uint32_t blockSize);


  





 
  void arm_scale_f32(
  float32_t * pSrc,
  float32_t scale,
  float32_t * pDst,
  uint32_t blockSize);


  






 
  void arm_scale_q7(
  q7_t * pSrc,
  q7_t scaleFract,
  int8_t shift,
  q7_t * pDst,
  uint32_t blockSize);


  






 
  void arm_scale_q15(
  q15_t * pSrc,
  q15_t scaleFract,
  int8_t shift,
  q15_t * pDst,
  uint32_t blockSize);


  






 
  void arm_scale_q31(
  q31_t * pSrc,
  q31_t scaleFract,
  int8_t shift,
  q31_t * pDst,
  uint32_t blockSize);


  




 
  void arm_abs_q7(
  q7_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);


  




 
  void arm_abs_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  




 
  void arm_abs_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);


  




 
  void arm_abs_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  





 
  void arm_dot_prod_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  uint32_t blockSize,
  float32_t * result);


  





 
  void arm_dot_prod_q7(
  q7_t * pSrcA,
  q7_t * pSrcB,
  uint32_t blockSize,
  q31_t * result);


  





 
  void arm_dot_prod_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  uint32_t blockSize,
  q63_t * result);


  





 
  void arm_dot_prod_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  uint32_t blockSize,
  q63_t * result);


  





 
  void arm_shift_q7(
  q7_t * pSrc,
  int8_t shiftBits,
  q7_t * pDst,
  uint32_t blockSize);


  





 
  void arm_shift_q15(
  q15_t * pSrc,
  int8_t shiftBits,
  q15_t * pDst,
  uint32_t blockSize);


  





 
  void arm_shift_q31(
  q31_t * pSrc,
  int8_t shiftBits,
  q31_t * pDst,
  uint32_t blockSize);


  





 
  void arm_offset_f32(
  float32_t * pSrc,
  float32_t offset,
  float32_t * pDst,
  uint32_t blockSize);


  





 
  void arm_offset_q7(
  q7_t * pSrc,
  q7_t offset,
  q7_t * pDst,
  uint32_t blockSize);


  





 
  void arm_offset_q15(
  q15_t * pSrc,
  q15_t offset,
  q15_t * pDst,
  uint32_t blockSize);


  





 
  void arm_offset_q31(
  q31_t * pSrc,
  q31_t offset,
  q31_t * pDst,
  uint32_t blockSize);


  




 
  void arm_negate_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  




 
  void arm_negate_q7(
  q7_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);


  




 
  void arm_negate_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);


  




 
  void arm_negate_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  




 
  void arm_copy_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  




 
  void arm_copy_q7(
  q7_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);


  




 
  void arm_copy_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);


  




 
  void arm_copy_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  




 
  void arm_fill_f32(
  float32_t value,
  float32_t * pDst,
  uint32_t blockSize);


  




 
  void arm_fill_q7(
  q7_t value,
  q7_t * pDst,
  uint32_t blockSize);


  




 
  void arm_fill_q15(
  q15_t value,
  q15_t * pDst,
  uint32_t blockSize);


  




 
  void arm_fill_q31(
  q31_t value,
  q31_t * pDst,
  uint32_t blockSize);









 
  void arm_conv_f32(
  float32_t * pSrcA,
  uint32_t srcALen,
  float32_t * pSrcB,
  uint32_t srcBLen,
  float32_t * pDst);


  








 
  void arm_conv_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  q15_t * pScratch1,
  q15_t * pScratch2);









 
  void arm_conv_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst);


  






 
  void arm_conv_fast_q15(
          q15_t * pSrcA,
          uint32_t srcALen,
          q15_t * pSrcB,
          uint32_t srcBLen,
          q15_t * pDst);


  








 
  void arm_conv_fast_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  q15_t * pScratch1,
  q15_t * pScratch2);


  






 
  void arm_conv_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst);


  






 
  void arm_conv_fast_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst);


    








 
  void arm_conv_opt_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst,
  q15_t * pScratch1,
  q15_t * pScratch2);


  






 
  void arm_conv_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst);


  









 
  arm_status arm_conv_partial_f32(
  float32_t * pSrcA,
  uint32_t srcALen,
  float32_t * pSrcB,
  uint32_t srcBLen,
  float32_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);


  











 
  arm_status arm_conv_partial_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints,
  q15_t * pScratch1,
  q15_t * pScratch2);


  









 
  arm_status arm_conv_partial_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);


  









 
  arm_status arm_conv_partial_fast_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);


  











 
  arm_status arm_conv_partial_fast_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints,
  q15_t * pScratch1,
  q15_t * pScratch2);


  









 
  arm_status arm_conv_partial_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);


  









 
  arm_status arm_conv_partial_fast_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);


  











 
  arm_status arm_conv_partial_opt_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints,
  q15_t * pScratch1,
  q15_t * pScratch2);












 
  arm_status arm_conv_partial_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);


  

 
  typedef struct
  {
    uint8_t M;                   
    uint16_t numTaps;            
    q15_t *pCoeffs;              
    q15_t *pState;               
  } arm_fir_decimate_instance_q15;

  

 
  typedef struct
  {
    uint8_t M;                   
    uint16_t numTaps;            
    q31_t *pCoeffs;              
    q31_t *pState;               
  } arm_fir_decimate_instance_q31;

  

 
  typedef struct
  {
    uint8_t M;                   
    uint16_t numTaps;            
    float32_t *pCoeffs;          
    float32_t *pState;           
  } arm_fir_decimate_instance_f32;


  





 
  void arm_fir_decimate_f32(
  const arm_fir_decimate_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  









 
  arm_status arm_fir_decimate_init_f32(
  arm_fir_decimate_instance_f32 * S,
  uint16_t numTaps,
  uint8_t M,
  float32_t * pCoeffs,
  float32_t * pState,
  uint32_t blockSize);


  





 
  void arm_fir_decimate_q15(
  const arm_fir_decimate_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);


  





 
  void arm_fir_decimate_fast_q15(
  const arm_fir_decimate_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);


  









 
  arm_status arm_fir_decimate_init_q15(
  arm_fir_decimate_instance_q15 * S,
  uint16_t numTaps,
  uint8_t M,
  q15_t * pCoeffs,
  q15_t * pState,
  uint32_t blockSize);


  





 
  void arm_fir_decimate_q31(
  const arm_fir_decimate_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  





 
  void arm_fir_decimate_fast_q31(
  arm_fir_decimate_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  









 
  arm_status arm_fir_decimate_init_q31(
  arm_fir_decimate_instance_q31 * S,
  uint16_t numTaps,
  uint8_t M,
  q31_t * pCoeffs,
  q31_t * pState,
  uint32_t blockSize);


  

 
  typedef struct
  {
    uint8_t L;                       
    uint16_t phaseLength;            
    q15_t *pCoeffs;                  
    q15_t *pState;                   
  } arm_fir_interpolate_instance_q15;

  

 
  typedef struct
  {
    uint8_t L;                       
    uint16_t phaseLength;            
    q31_t *pCoeffs;                  
    q31_t *pState;                   
  } arm_fir_interpolate_instance_q31;

  

 
  typedef struct
  {
    uint8_t L;                      
    uint16_t phaseLength;           
    float32_t *pCoeffs;             
    float32_t *pState;              
  } arm_fir_interpolate_instance_f32;


  





 
  void arm_fir_interpolate_q15(
  const arm_fir_interpolate_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);


  









 
  arm_status arm_fir_interpolate_init_q15(
  arm_fir_interpolate_instance_q15 * S,
  uint8_t L,
  uint16_t numTaps,
  q15_t * pCoeffs,
  q15_t * pState,
  uint32_t blockSize);


  





 
  void arm_fir_interpolate_q31(
  const arm_fir_interpolate_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  









 
  arm_status arm_fir_interpolate_init_q31(
  arm_fir_interpolate_instance_q31 * S,
  uint8_t L,
  uint16_t numTaps,
  q31_t * pCoeffs,
  q31_t * pState,
  uint32_t blockSize);


  





 
  void arm_fir_interpolate_f32(
  const arm_fir_interpolate_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  









 
  arm_status arm_fir_interpolate_init_f32(
  arm_fir_interpolate_instance_f32 * S,
  uint8_t L,
  uint16_t numTaps,
  float32_t * pCoeffs,
  float32_t * pState,
  uint32_t blockSize);


  

 
  typedef struct
  {
    uint8_t numStages;        
    q63_t *pState;            
    q31_t *pCoeffs;           
    uint8_t postShift;        
  } arm_biquad_cas_df1_32x64_ins_q31;


  




 
  void arm_biquad_cas_df1_32x64_q31(
  const arm_biquad_cas_df1_32x64_ins_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  





 
  void arm_biquad_cas_df1_32x64_init_q31(
  arm_biquad_cas_df1_32x64_ins_q31 * S,
  uint8_t numStages,
  q31_t * pCoeffs,
  q63_t * pState,
  uint8_t postShift);


  

 
  typedef struct
  {
    uint8_t numStages;          
    float32_t *pState;          
    float32_t *pCoeffs;         
  } arm_biquad_cascade_df2T_instance_f32;

  

 
  typedef struct
  {
    uint8_t numStages;          
    float32_t *pState;          
    float32_t *pCoeffs;         
  } arm_biquad_cascade_stereo_df2T_instance_f32;

  

 
  typedef struct
  {
    uint8_t numStages;          
    float64_t *pState;          
    float64_t *pCoeffs;         
  } arm_biquad_cascade_df2T_instance_f64;


  





 
  void arm_biquad_cascade_df2T_f32(
  const arm_biquad_cascade_df2T_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  





 
  void arm_biquad_cascade_stereo_df2T_f32(
  const arm_biquad_cascade_stereo_df2T_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  





 
  void arm_biquad_cascade_df2T_f64(
  const arm_biquad_cascade_df2T_instance_f64 * S,
  float64_t * pSrc,
  float64_t * pDst,
  uint32_t blockSize);


  





 
  void arm_biquad_cascade_df2T_init_f32(
  arm_biquad_cascade_df2T_instance_f32 * S,
  uint8_t numStages,
  float32_t * pCoeffs,
  float32_t * pState);


  





 
  void arm_biquad_cascade_stereo_df2T_init_f32(
  arm_biquad_cascade_stereo_df2T_instance_f32 * S,
  uint8_t numStages,
  float32_t * pCoeffs,
  float32_t * pState);


  





 
  void arm_biquad_cascade_df2T_init_f64(
  arm_biquad_cascade_df2T_instance_f64 * S,
  uint8_t numStages,
  float64_t * pCoeffs,
  float64_t * pState);


  

 
  typedef struct
  {
    uint16_t numStages;                   
    q15_t *pState;                        
    q15_t *pCoeffs;                       
  } arm_fir_lattice_instance_q15;

  

 
  typedef struct
  {
    uint16_t numStages;                   
    q31_t *pState;                        
    q31_t *pCoeffs;                       
  } arm_fir_lattice_instance_q31;

  

 
  typedef struct
  {
    uint16_t numStages;                   
    float32_t *pState;                    
    float32_t *pCoeffs;                   
  } arm_fir_lattice_instance_f32;


  





 
  void arm_fir_lattice_init_q15(
  arm_fir_lattice_instance_q15 * S,
  uint16_t numStages,
  q15_t * pCoeffs,
  q15_t * pState);


  





 
  void arm_fir_lattice_q15(
  const arm_fir_lattice_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);


  





 
  void arm_fir_lattice_init_q31(
  arm_fir_lattice_instance_q31 * S,
  uint16_t numStages,
  q31_t * pCoeffs,
  q31_t * pState);


  





 
  void arm_fir_lattice_q31(
  const arm_fir_lattice_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);








 
  void arm_fir_lattice_init_f32(
  arm_fir_lattice_instance_f32 * S,
  uint16_t numStages,
  float32_t * pCoeffs,
  float32_t * pState);


  





 
  void arm_fir_lattice_f32(
  const arm_fir_lattice_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  

 
  typedef struct
  {
    uint16_t numStages;                   
    q15_t *pState;                        
    q15_t *pkCoeffs;                      
    q15_t *pvCoeffs;                      
  } arm_iir_lattice_instance_q15;

  

 
  typedef struct
  {
    uint16_t numStages;                   
    q31_t *pState;                        
    q31_t *pkCoeffs;                      
    q31_t *pvCoeffs;                      
  } arm_iir_lattice_instance_q31;

  

 
  typedef struct
  {
    uint16_t numStages;                   
    float32_t *pState;                    
    float32_t *pkCoeffs;                  
    float32_t *pvCoeffs;                  
  } arm_iir_lattice_instance_f32;


  





 
  void arm_iir_lattice_f32(
  const arm_iir_lattice_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  







 
  void arm_iir_lattice_init_f32(
  arm_iir_lattice_instance_f32 * S,
  uint16_t numStages,
  float32_t * pkCoeffs,
  float32_t * pvCoeffs,
  float32_t * pState,
  uint32_t blockSize);


  





 
  void arm_iir_lattice_q31(
  const arm_iir_lattice_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  







 
  void arm_iir_lattice_init_q31(
  arm_iir_lattice_instance_q31 * S,
  uint16_t numStages,
  q31_t * pkCoeffs,
  q31_t * pvCoeffs,
  q31_t * pState,
  uint32_t blockSize);


  





 
  void arm_iir_lattice_q15(
  const arm_iir_lattice_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);










 
  void arm_iir_lattice_init_q15(
  arm_iir_lattice_instance_q15 * S,
  uint16_t numStages,
  q15_t * pkCoeffs,
  q15_t * pvCoeffs,
  q15_t * pState,
  uint32_t blockSize);


  

 
  typedef struct
  {
    uint16_t numTaps;     
    float32_t *pState;    
    float32_t *pCoeffs;   
    float32_t mu;         
  } arm_lms_instance_f32;


  







 
  void arm_lms_f32(
  const arm_lms_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pRef,
  float32_t * pOut,
  float32_t * pErr,
  uint32_t blockSize);


  







 
  void arm_lms_init_f32(
  arm_lms_instance_f32 * S,
  uint16_t numTaps,
  float32_t * pCoeffs,
  float32_t * pState,
  float32_t mu,
  uint32_t blockSize);


  

 
  typedef struct
  {
    uint16_t numTaps;     
    q15_t *pState;        
    q15_t *pCoeffs;       
    q15_t mu;             
    uint32_t postShift;   
  } arm_lms_instance_q15;


  








 
  void arm_lms_init_q15(
  arm_lms_instance_q15 * S,
  uint16_t numTaps,
  q15_t * pCoeffs,
  q15_t * pState,
  q15_t mu,
  uint32_t blockSize,
  uint32_t postShift);


  







 
  void arm_lms_q15(
  const arm_lms_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pRef,
  q15_t * pOut,
  q15_t * pErr,
  uint32_t blockSize);


  

 
  typedef struct
  {
    uint16_t numTaps;     
    q31_t *pState;        
    q31_t *pCoeffs;       
    q31_t mu;             
    uint32_t postShift;   
  } arm_lms_instance_q31;


  







 
  void arm_lms_q31(
  const arm_lms_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pRef,
  q31_t * pOut,
  q31_t * pErr,
  uint32_t blockSize);


  








 
  void arm_lms_init_q31(
  arm_lms_instance_q31 * S,
  uint16_t numTaps,
  q31_t * pCoeffs,
  q31_t * pState,
  q31_t mu,
  uint32_t blockSize,
  uint32_t postShift);


  

 
  typedef struct
  {
    uint16_t numTaps;      
    float32_t *pState;     
    float32_t *pCoeffs;    
    float32_t mu;          
    float32_t energy;      
    float32_t x0;          
  } arm_lms_norm_instance_f32;


  







 
  void arm_lms_norm_f32(
  arm_lms_norm_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pRef,
  float32_t * pOut,
  float32_t * pErr,
  uint32_t blockSize);


  







 
  void arm_lms_norm_init_f32(
  arm_lms_norm_instance_f32 * S,
  uint16_t numTaps,
  float32_t * pCoeffs,
  float32_t * pState,
  float32_t mu,
  uint32_t blockSize);


  

 
  typedef struct
  {
    uint16_t numTaps;      
    q31_t *pState;         
    q31_t *pCoeffs;        
    q31_t mu;              
    uint8_t postShift;     
    q31_t *recipTable;     
    q31_t energy;          
    q31_t x0;              
  } arm_lms_norm_instance_q31;


  







 
  void arm_lms_norm_q31(
  arm_lms_norm_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pRef,
  q31_t * pOut,
  q31_t * pErr,
  uint32_t blockSize);


  








 
  void arm_lms_norm_init_q31(
  arm_lms_norm_instance_q31 * S,
  uint16_t numTaps,
  q31_t * pCoeffs,
  q31_t * pState,
  q31_t mu,
  uint32_t blockSize,
  uint8_t postShift);


  

 
  typedef struct
  {
    uint16_t numTaps;      
    q15_t *pState;         
    q15_t *pCoeffs;        
    q15_t mu;              
    uint8_t postShift;     
    q15_t *recipTable;     
    q15_t energy;          
    q15_t x0;              
  } arm_lms_norm_instance_q15;


  







 
  void arm_lms_norm_q15(
  arm_lms_norm_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pRef,
  q15_t * pOut,
  q15_t * pErr,
  uint32_t blockSize);


  








 
  void arm_lms_norm_init_q15(
  arm_lms_norm_instance_q15 * S,
  uint16_t numTaps,
  q15_t * pCoeffs,
  q15_t * pState,
  q15_t mu,
  uint32_t blockSize,
  uint8_t postShift);


  






 
  void arm_correlate_f32(
  float32_t * pSrcA,
  uint32_t srcALen,
  float32_t * pSrcB,
  uint32_t srcBLen,
  float32_t * pDst);


   







 
  void arm_correlate_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  q15_t * pScratch);


  






 

  void arm_correlate_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst);


  






 

  void arm_correlate_fast_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst);


  







 
  void arm_correlate_fast_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  q15_t * pScratch);


  






 
  void arm_correlate_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst);


  






 
  void arm_correlate_fast_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst);


 








 
  void arm_correlate_opt_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst,
  q15_t * pScratch1,
  q15_t * pScratch2);


  






 
  void arm_correlate_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst);


  

 
  typedef struct
  {
    uint16_t numTaps;              
    uint16_t stateIndex;           
    float32_t *pState;             
    float32_t *pCoeffs;            
    uint16_t maxDelay;             
    int32_t *pTapDelay;            
  } arm_fir_sparse_instance_f32;

  

 
  typedef struct
  {
    uint16_t numTaps;              
    uint16_t stateIndex;           
    q31_t *pState;                 
    q31_t *pCoeffs;                
    uint16_t maxDelay;             
    int32_t *pTapDelay;            
  } arm_fir_sparse_instance_q31;

  

 
  typedef struct
  {
    uint16_t numTaps;              
    uint16_t stateIndex;           
    q15_t *pState;                 
    q15_t *pCoeffs;                
    uint16_t maxDelay;             
    int32_t *pTapDelay;            
  } arm_fir_sparse_instance_q15;

  

 
  typedef struct
  {
    uint16_t numTaps;              
    uint16_t stateIndex;           
    q7_t *pState;                  
    q7_t *pCoeffs;                 
    uint16_t maxDelay;             
    int32_t *pTapDelay;            
  } arm_fir_sparse_instance_q7;


  






 
  void arm_fir_sparse_f32(
  arm_fir_sparse_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  float32_t * pScratchIn,
  uint32_t blockSize);


  








 
  void arm_fir_sparse_init_f32(
  arm_fir_sparse_instance_f32 * S,
  uint16_t numTaps,
  float32_t * pCoeffs,
  float32_t * pState,
  int32_t * pTapDelay,
  uint16_t maxDelay,
  uint32_t blockSize);


  






 
  void arm_fir_sparse_q31(
  arm_fir_sparse_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  q31_t * pScratchIn,
  uint32_t blockSize);


  








 
  void arm_fir_sparse_init_q31(
  arm_fir_sparse_instance_q31 * S,
  uint16_t numTaps,
  q31_t * pCoeffs,
  q31_t * pState,
  int32_t * pTapDelay,
  uint16_t maxDelay,
  uint32_t blockSize);


  







 
  void arm_fir_sparse_q15(
  arm_fir_sparse_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  q15_t * pScratchIn,
  q31_t * pScratchOut,
  uint32_t blockSize);


  








 
  void arm_fir_sparse_init_q15(
  arm_fir_sparse_instance_q15 * S,
  uint16_t numTaps,
  q15_t * pCoeffs,
  q15_t * pState,
  int32_t * pTapDelay,
  uint16_t maxDelay,
  uint32_t blockSize);


  







 
  void arm_fir_sparse_q7(
  arm_fir_sparse_instance_q7 * S,
  q7_t * pSrc,
  q7_t * pDst,
  q7_t * pScratchIn,
  q31_t * pScratchOut,
  uint32_t blockSize);


  








 
  void arm_fir_sparse_init_q7(
  arm_fir_sparse_instance_q7 * S,
  uint16_t numTaps,
  q7_t * pCoeffs,
  q7_t * pState,
  int32_t * pTapDelay,
  uint16_t maxDelay,
  uint32_t blockSize);


  




 
  void arm_sin_cos_f32(
  float32_t theta,
  float32_t * pSinVal,
  float32_t * pCosVal);


  




 
  void arm_sin_cos_q31(
  q31_t theta,
  q31_t * pSinVal,
  q31_t * pCosVal);


  




 
  void arm_cmplx_conj_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t numSamples);

  




 
  void arm_cmplx_conj_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t numSamples);


  




 
  void arm_cmplx_conj_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t numSamples);


  




 
  void arm_cmplx_mag_squared_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t numSamples);


  




 
  void arm_cmplx_mag_squared_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t numSamples);


  




 
  void arm_cmplx_mag_squared_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t numSamples);


 

 

  






















































 

  


 

  




 
  static __inline float32_t arm_pid_f32(
  arm_pid_instance_f32 * S,
  float32_t in)
  {
    float32_t out;

     
    out = (S->A0 * in) +
      (S->A1 * S->state[0]) + (S->A2 * S->state[1]) + (S->state[2]);

     
    S->state[1] = S->state[0];
    S->state[0] = in;
    S->state[2] = out;

     
    return (out);

  }

  












 
  static __inline q31_t arm_pid_q31(
  arm_pid_instance_q31 * S,
  q31_t in)
  {
    q63_t acc;
    q31_t out;

     
    acc = (q63_t) S->A0 * in;

     
    acc += (q63_t) S->A1 * S->state[0];

     
    acc += (q63_t) S->A2 * S->state[1];

     
    out = (q31_t) (acc >> 31u);

     
    out += S->state[2];

     
    S->state[1] = S->state[0];
    S->state[0] = in;
    S->state[2] = out;

     
    return (out);
  }


  













 
  static __inline q15_t arm_pid_q15(
  arm_pid_instance_q15 * S,
  q15_t in)
  {
    q63_t acc;
    q15_t out;


    int32_t __packed *vstate;

     

     
    acc = (q31_t) __smuad((uint32_t)S->A0, (uint32_t)in);

     
    vstate = ((int32_t __packed *)(S->state));
    acc = (q63_t)__smlald((uint32_t)S->A1, (uint32_t)*vstate, (uint64_t)acc);
#line 4902 "..\\..\\..\\..\\Library\\CMSIS\\Include\\arm_math.h"

     
    acc += (q31_t) S->state[2] << 15;

     
    out = (q15_t) (__ssat((acc >> 15), 16));

     
    S->state[1] = S->state[0];
    S->state[0] = in;
    S->state[2] = out;

     
    return (out);
  }

  

 


  





 
  arm_status arm_mat_inverse_f32(
  const arm_matrix_instance_f32 * src,
  arm_matrix_instance_f32 * dst);


  





 
  arm_status arm_mat_inverse_f64(
  const arm_matrix_instance_f64 * src,
  arm_matrix_instance_f64 * dst);



  

 

  



















 

  


 

  






 
  static __inline void arm_clarke_f32(
  float32_t Ia,
  float32_t Ib,
  float32_t * pIalpha,
  float32_t * pIbeta)
  {
     
    *pIalpha = Ia;

     
    *pIbeta = ((float32_t) 0.57735026919 * Ia + (float32_t) 1.15470053838 * Ib);
  }


  











 
  static __inline void arm_clarke_q31(
  q31_t Ia,
  q31_t Ib,
  q31_t * pIalpha,
  q31_t * pIbeta)
  {
    q31_t product1, product2;                     

     
    *pIalpha = Ia;

     
    product1 = (q31_t) (((q63_t) Ia * 0x24F34E8B) >> 30);

     
    product2 = (q31_t) (((q63_t) Ib * 0x49E69D16) >> 30);

     
    *pIbeta = __qadd(product1, product2);
  }

  

 

  




 
  void arm_q7_to_q31(
  q7_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);



  

 

  













 

  


 

   





 
  static __inline void arm_inv_clarke_f32(
  float32_t Ialpha,
  float32_t Ibeta,
  float32_t * pIa,
  float32_t * pIb)
  {
     
    *pIa = Ialpha;

     
    *pIb = -0.5f * Ialpha + 0.8660254039f * Ibeta;
  }


  











 
  static __inline void arm_inv_clarke_q31(
  q31_t Ialpha,
  q31_t Ibeta,
  q31_t * pIa,
  q31_t * pIb)
  {
    q31_t product1, product2;                     

     
    *pIa = Ialpha;

     
    product1 = (q31_t) (((q63_t) (Ialpha) * (0x40000000)) >> 31);

     
    product2 = (q31_t) (((q63_t) (Ibeta) * (0x6ED9EBA1)) >> 31);

     
    *pIb = __qsub(product2, product1);
  }

  

 

  




 
  void arm_q7_to_q15(
  q7_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);



  

 

  





















 

  


 

  










 
  static __inline void arm_park_f32(
  float32_t Ialpha,
  float32_t Ibeta,
  float32_t * pId,
  float32_t * pIq,
  float32_t sinVal,
  float32_t cosVal)
  {
     
    *pId = Ialpha * cosVal + Ibeta * sinVal;

     
    *pIq = -Ialpha * sinVal + Ibeta * cosVal;
  }


  













 
  static __inline void arm_park_q31(
  q31_t Ialpha,
  q31_t Ibeta,
  q31_t * pId,
  q31_t * pIq,
  q31_t sinVal,
  q31_t cosVal)
  {
    q31_t product1, product2;                     
    q31_t product3, product4;                     

     
    product1 = (q31_t) (((q63_t) (Ialpha) * (cosVal)) >> 31);

     
    product2 = (q31_t) (((q63_t) (Ibeta) * (sinVal)) >> 31);


     
    product3 = (q31_t) (((q63_t) (Ialpha) * (sinVal)) >> 31);

     
    product4 = (q31_t) (((q63_t) (Ibeta) * (cosVal)) >> 31);

     
    *pId = __qadd(product1, product2);

     
    *pIq = __qsub(product4, product3);
  }

  

 

  




 
  void arm_q7_to_float(
  q7_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  

 

  














 

  


 

   







 
  static __inline void arm_inv_park_f32(
  float32_t Id,
  float32_t Iq,
  float32_t * pIalpha,
  float32_t * pIbeta,
  float32_t sinVal,
  float32_t cosVal)
  {
     
    *pIalpha = Id * cosVal - Iq * sinVal;

     
    *pIbeta = Id * sinVal + Iq * cosVal;
  }


  













 
  static __inline void arm_inv_park_q31(
  q31_t Id,
  q31_t Iq,
  q31_t * pIalpha,
  q31_t * pIbeta,
  q31_t sinVal,
  q31_t cosVal)
  {
    q31_t product1, product2;                     
    q31_t product3, product4;                     

     
    product1 = (q31_t) (((q63_t) (Id) * (cosVal)) >> 31);

     
    product2 = (q31_t) (((q63_t) (Iq) * (sinVal)) >> 31);


     
    product3 = (q31_t) (((q63_t) (Id) * (sinVal)) >> 31);

     
    product4 = (q31_t) (((q63_t) (Iq) * (cosVal)) >> 31);

     
    *pIalpha = __qsub(product1, product2);

     
    *pIbeta = __qadd(product4, product3);
  }

  

 


  




 
  void arm_q31_to_float(
  q31_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  

 

  





























 

  


 

  





 
  static __inline float32_t arm_linear_interp_f32(
  arm_linear_interp_instance_f32 * S,
  float32_t x)
  {
    float32_t y;
    float32_t x0, x1;                             
    float32_t y0, y1;                             
    float32_t xSpacing = S->xSpacing;             
    int32_t i;                                    
    float32_t *pYData = S->pYData;                

     
    i = (int32_t) ((x - S->x1) / xSpacing);

    if(i < 0)
    {
       
      y = pYData[0];
    }
    else if((uint32_t)i >= S->nValues)
    {
       
      y = pYData[S->nValues - 1];
    }
    else
    {
       
      x0 = S->x1 +  i      * xSpacing;
      x1 = S->x1 + (i + 1) * xSpacing;

       
      y0 = pYData[i];
      y1 = pYData[i + 1];

       
      y = y0 + (x - x0) * ((y1 - y0) / (x1 - x0));

    }

     
    return (y);
  }


   











 
  static __inline q31_t arm_linear_interp_q31(
  q31_t * pYData,
  q31_t x,
  uint32_t nValues)
  {
    q31_t y;                                      
    q31_t y0, y1;                                 
    q31_t fract;                                  
    int32_t index;                                

     
     
     
    index = ((x & (q31_t)0xFFF00000) >> 20);

    if(index >= (int32_t)(nValues - 1))
    {
      return (pYData[nValues - 1]);
    }
    else if(index < 0)
    {
      return (pYData[0]);
    }
    else
    {
       
       
      fract = (x & 0x000FFFFF) << 11;

       
      y0 = pYData[index];
      y1 = pYData[index + 1];

       
      y = ((q31_t) ((q63_t) y0 * (0x7FFFFFFF - fract) >> 32));

       
      y += ((q31_t) (((q63_t) y1 * fract) >> 32));

       
      return (y << 1u);
    }
  }


  











 
  static __inline q15_t arm_linear_interp_q15(
  q15_t * pYData,
  q31_t x,
  uint32_t nValues)
  {
    q63_t y;                                      
    q15_t y0, y1;                                 
    q31_t fract;                                  
    int32_t index;                                

     
     
     
    index = ((x & (int32_t)0xFFF00000) >> 20);

    if(index >= (int32_t)(nValues - 1))
    {
      return (pYData[nValues - 1]);
    }
    else if(index < 0)
    {
      return (pYData[0]);
    }
    else
    {
       
       
      fract = (x & 0x000FFFFF);

       
      y0 = pYData[index];
      y1 = pYData[index + 1];

       
      y = ((q63_t) y0 * (0xFFFFF - fract));

       
      y += ((q63_t) y1 * (fract));

       
      return (q15_t) (y >> 20);
    }
  }


  










 
  static __inline q7_t arm_linear_interp_q7(
  q7_t * pYData,
  q31_t x,
  uint32_t nValues)
  {
    q31_t y;                                      
    q7_t y0, y1;                                  
    q31_t fract;                                  
    uint32_t index;                               

     
     
     
    if (x < 0)
    {
      return (pYData[0]);
    }
    index = (x >> 20) & 0xfff;

    if(index >= (nValues - 1))
    {
      return (pYData[nValues - 1]);
    }
    else
    {
       
       
      fract = (x & 0x000FFFFF);

       
      y0 = pYData[index];
      y1 = pYData[index + 1];

       
      y = ((y0 * (0xFFFFF - fract)));

       
      y += (y1 * fract);

       
      return (q7_t) (y >> 20);
     }
  }

  

 

  



 
  float32_t arm_sin_f32(
  float32_t x);


  



 
  q31_t arm_sin_q31(
  q31_t x);


  



 
  q15_t arm_sin_q15(
  q15_t x);


  



 
  float32_t arm_cos_f32(
  float32_t x);


  



 
  q31_t arm_cos_q31(
  q31_t x);


  



 
  q15_t arm_cos_q15(
  q15_t x);


  

 


  

















 


  


 

  





 
  static __inline arm_status arm_sqrt_f32(
  float32_t in,
  float32_t * pOut)
  {
    if(in >= 0.0f)
    {


      *pOut = __sqrtf(in);
#line 5763 "..\\..\\..\\..\\Library\\CMSIS\\Include\\arm_math.h"

      return (ARM_MATH_SUCCESS);
    }
    else
    {
      *pOut = 0.0f;
      return (ARM_MATH_ARGUMENT_ERROR);
    }
  }


  





 
  arm_status arm_sqrt_q31(
  q31_t in,
  q31_t * pOut);


  





 
  arm_status arm_sqrt_q15(
  q15_t in,
  q15_t * pOut);

  

 


  

 
  static __inline void arm_circularWrite_f32(
  int32_t * circBuffer,
  int32_t L,
  uint16_t * writeOffset,
  int32_t bufferInc,
  const int32_t * src,
  int32_t srcInc,
  uint32_t blockSize)
  {
    uint32_t i = 0u;
    int32_t wOffset;

    
 
    wOffset = *writeOffset;

     
    i = blockSize;

    while(i > 0u)
    {
       
      circBuffer[wOffset] = *src;

       
      src += srcInc;

       
      wOffset += bufferInc;
      if(wOffset >= L)
        wOffset -= L;

       
      i--;
    }

     
    *writeOffset = (uint16_t)wOffset;
  }



  

 
  static __inline void arm_circularRead_f32(
  int32_t * circBuffer,
  int32_t L,
  int32_t * readOffset,
  int32_t bufferInc,
  int32_t * dst,
  int32_t * dst_base,
  int32_t dst_length,
  int32_t dstInc,
  uint32_t blockSize)
  {
    uint32_t i = 0u;
    int32_t rOffset, dst_end;

    
 
    rOffset = *readOffset;
    dst_end = (int32_t) (dst_base + dst_length);

     
    i = blockSize;

    while(i > 0u)
    {
       
      *dst = circBuffer[rOffset];

       
      dst += dstInc;

      if(dst == (int32_t *) dst_end)
      {
        dst = dst_base;
      }

       
      rOffset += bufferInc;

      if(rOffset >= L)
      {
        rOffset -= L;
      }

       
      i--;
    }

     
    *readOffset = rOffset;
  }


  

 
  static __inline void arm_circularWrite_q15(
  q15_t * circBuffer,
  int32_t L,
  uint16_t * writeOffset,
  int32_t bufferInc,
  const q15_t * src,
  int32_t srcInc,
  uint32_t blockSize)
  {
    uint32_t i = 0u;
    int32_t wOffset;

    
 
    wOffset = *writeOffset;

     
    i = blockSize;

    while(i > 0u)
    {
       
      circBuffer[wOffset] = *src;

       
      src += srcInc;

       
      wOffset += bufferInc;
      if(wOffset >= L)
        wOffset -= L;

       
      i--;
    }

     
    *writeOffset = (uint16_t)wOffset;
  }


  

 
  static __inline void arm_circularRead_q15(
  q15_t * circBuffer,
  int32_t L,
  int32_t * readOffset,
  int32_t bufferInc,
  q15_t * dst,
  q15_t * dst_base,
  int32_t dst_length,
  int32_t dstInc,
  uint32_t blockSize)
  {
    uint32_t i = 0;
    int32_t rOffset, dst_end;

    
 
    rOffset = *readOffset;

    dst_end = (int32_t) (dst_base + dst_length);

     
    i = blockSize;

    while(i > 0u)
    {
       
      *dst = circBuffer[rOffset];

       
      dst += dstInc;

      if(dst == (q15_t *) dst_end)
      {
        dst = dst_base;
      }

       
      rOffset += bufferInc;

      if(rOffset >= L)
      {
        rOffset -= L;
      }

       
      i--;
    }

     
    *readOffset = rOffset;
  }


  

 
  static __inline void arm_circularWrite_q7(
  q7_t * circBuffer,
  int32_t L,
  uint16_t * writeOffset,
  int32_t bufferInc,
  const q7_t * src,
  int32_t srcInc,
  uint32_t blockSize)
  {
    uint32_t i = 0u;
    int32_t wOffset;

    
 
    wOffset = *writeOffset;

     
    i = blockSize;

    while(i > 0u)
    {
       
      circBuffer[wOffset] = *src;

       
      src += srcInc;

       
      wOffset += bufferInc;
      if(wOffset >= L)
        wOffset -= L;

       
      i--;
    }

     
    *writeOffset = (uint16_t)wOffset;
  }


  

 
  static __inline void arm_circularRead_q7(
  q7_t * circBuffer,
  int32_t L,
  int32_t * readOffset,
  int32_t bufferInc,
  q7_t * dst,
  q7_t * dst_base,
  int32_t dst_length,
  int32_t dstInc,
  uint32_t blockSize)
  {
    uint32_t i = 0;
    int32_t rOffset, dst_end;

    
 
    rOffset = *readOffset;

    dst_end = (int32_t) (dst_base + dst_length);

     
    i = blockSize;

    while(i > 0u)
    {
       
      *dst = circBuffer[rOffset];

       
      dst += dstInc;

      if(dst == (q7_t *) dst_end)
      {
        dst = dst_base;
      }

       
      rOffset += bufferInc;

      if(rOffset >= L)
      {
        rOffset -= L;
      }

       
      i--;
    }

     
    *readOffset = rOffset;
  }


  




 
  void arm_power_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q63_t * pResult);


  




 
  void arm_power_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult);


  




 
  void arm_power_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q63_t * pResult);


  




 
  void arm_power_q7(
  q7_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult);


  




 
  void arm_mean_q7(
  q7_t * pSrc,
  uint32_t blockSize,
  q7_t * pResult);


  




 
  void arm_mean_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult);


  




 
  void arm_mean_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult);


  




 
  void arm_mean_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult);


  




 
  void arm_var_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult);


  




 
  void arm_var_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult);


  




 
  void arm_var_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult);


  




 
  void arm_rms_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult);


  




 
  void arm_rms_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult);


  




 
  void arm_rms_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult);


  




 
  void arm_std_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult);


  




 
  void arm_std_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult);


  




 
  void arm_std_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult);


  




 
  void arm_cmplx_mag_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t numSamples);


  




 
  void arm_cmplx_mag_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t numSamples);


  




 
  void arm_cmplx_mag_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t numSamples);


  






 
  void arm_cmplx_dot_prod_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  uint32_t numSamples,
  q31_t * realResult,
  q31_t * imagResult);


  






 
  void arm_cmplx_dot_prod_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  uint32_t numSamples,
  q63_t * realResult,
  q63_t * imagResult);


  






 
  void arm_cmplx_dot_prod_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  uint32_t numSamples,
  float32_t * realResult,
  float32_t * imagResult);


  





 
  void arm_cmplx_mult_real_q15(
  q15_t * pSrcCmplx,
  q15_t * pSrcReal,
  q15_t * pCmplxDst,
  uint32_t numSamples);


  





 
  void arm_cmplx_mult_real_q31(
  q31_t * pSrcCmplx,
  q31_t * pSrcReal,
  q31_t * pCmplxDst,
  uint32_t numSamples);


  





 
  void arm_cmplx_mult_real_f32(
  float32_t * pSrcCmplx,
  float32_t * pSrcReal,
  float32_t * pCmplxDst,
  uint32_t numSamples);


  





 
  void arm_min_q7(
  q7_t * pSrc,
  uint32_t blockSize,
  q7_t * result,
  uint32_t * index);


  





 
  void arm_min_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult,
  uint32_t * pIndex);


  





 
  void arm_min_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult,
  uint32_t * pIndex);


  





 
  void arm_min_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult,
  uint32_t * pIndex);








 
  void arm_max_q7(
  q7_t * pSrc,
  uint32_t blockSize,
  q7_t * pResult,
  uint32_t * pIndex);








 
  void arm_max_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult,
  uint32_t * pIndex);








 
  void arm_max_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult,
  uint32_t * pIndex);








 
  void arm_max_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult,
  uint32_t * pIndex);


  





 
  void arm_cmplx_mult_cmplx_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  q15_t * pDst,
  uint32_t numSamples);


  





 
  void arm_cmplx_mult_cmplx_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  q31_t * pDst,
  uint32_t numSamples);


  





 
  void arm_cmplx_mult_cmplx_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  float32_t * pDst,
  uint32_t numSamples);


  




 
  void arm_float_to_q31(
  float32_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  




 
  void arm_float_to_q15(
  float32_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);


  




 
  void arm_float_to_q7(
  float32_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);


  




 
  void arm_q31_to_q15(
  q31_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);


  




 
  void arm_q31_to_q7(
  q31_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);


  




 
  void arm_q15_to_float(
  q15_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  




 
  void arm_q15_to_q31(
  q15_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  




 
  void arm_q15_to_q7(
  q15_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);


  

 

  

















































 

  


 


  






 
  static __inline float32_t arm_bilinear_interp_f32(
  const arm_bilinear_interp_instance_f32 * S,
  float32_t X,
  float32_t Y)
  {
    float32_t out;
    float32_t f00, f01, f10, f11;
    float32_t *pData = S->pData;
    int32_t xIndex, yIndex, index;
    float32_t xdiff, ydiff;
    float32_t b1, b2, b3, b4;

    xIndex = (int32_t) X;
    yIndex = (int32_t) Y;

     
     
    if(xIndex < 0 || xIndex > (S->numRows - 1) || yIndex < 0 || yIndex > (S->numCols - 1))
    {
      return (0);
    }

     
    index = (xIndex - 1) + (yIndex - 1) * S->numCols;


     
    f00 = pData[index];
    f01 = pData[index + 1];

     
    index = (xIndex - 1) + (yIndex) * S->numCols;


     
    f10 = pData[index];
    f11 = pData[index + 1];

     
    b1 = f00;
    b2 = f01 - f00;
    b3 = f10 - f00;
    b4 = f00 - f01 - f10 + f11;

     
    xdiff = X - xIndex;

     
    ydiff = Y - yIndex;

     
    out = b1 + b2 * xdiff + b3 * ydiff + b4 * xdiff * ydiff;

     
    return (out);
  }


  






 
  static __inline q31_t arm_bilinear_interp_q31(
  arm_bilinear_interp_instance_q31 * S,
  q31_t X,
  q31_t Y)
  {
    q31_t out;                                    
    q31_t acc = 0;                                
    q31_t xfract, yfract;                         
    q31_t x1, x2, y1, y2;                         
    int32_t rI, cI;                               
    q31_t *pYData = S->pData;                     
    uint32_t nCols = S->numCols;                  

     
     
     
    rI = ((X & (q31_t)0xFFF00000) >> 20);

     
     
     
    cI = ((Y & (q31_t)0xFFF00000) >> 20);

     
     
    if(rI < 0 || rI > (S->numRows - 1) || cI < 0 || cI > (S->numCols - 1))
    {
      return (0);
    }

     
     
    xfract = (X & 0x000FFFFF) << 11u;

     
    x1 = pYData[(rI) + (int32_t)nCols * (cI)    ];
    x2 = pYData[(rI) + (int32_t)nCols * (cI) + 1];

     
     
    yfract = (Y & 0x000FFFFF) << 11u;

     
    y1 = pYData[(rI) + (int32_t)nCols * (cI + 1)    ];
    y2 = pYData[(rI) + (int32_t)nCols * (cI + 1) + 1];

     
    out = ((q31_t) (((q63_t) x1  * (0x7FFFFFFF - xfract)) >> 32));
    acc = ((q31_t) (((q63_t) out * (0x7FFFFFFF - yfract)) >> 32));

     
    out = ((q31_t) ((q63_t) x2 * (0x7FFFFFFF - yfract) >> 32));
    acc += ((q31_t) ((q63_t) out * (xfract) >> 32));

     
    out = ((q31_t) ((q63_t) y1 * (0x7FFFFFFF - xfract) >> 32));
    acc += ((q31_t) ((q63_t) out * (yfract) >> 32));

     
    out = ((q31_t) ((q63_t) y2 * (xfract) >> 32));
    acc += ((q31_t) ((q63_t) out * (yfract) >> 32));

     
    return ((q31_t)(acc << 2));
  }


  





 
  static __inline q15_t arm_bilinear_interp_q15(
  arm_bilinear_interp_instance_q15 * S,
  q31_t X,
  q31_t Y)
  {
    q63_t acc = 0;                                
    q31_t out;                                    
    q15_t x1, x2, y1, y2;                         
    q31_t xfract, yfract;                         
    int32_t rI, cI;                               
    q15_t *pYData = S->pData;                     
    uint32_t nCols = S->numCols;                  

     
     
     
    rI = ((X & (q31_t)0xFFF00000) >> 20);

     
     
     
    cI = ((Y & (q31_t)0xFFF00000) >> 20);

     
     
    if(rI < 0 || rI > (S->numRows - 1) || cI < 0 || cI > (S->numCols - 1))
    {
      return (0);
    }

     
     
    xfract = (X & 0x000FFFFF);

     
    x1 = pYData[((uint32_t)rI) + nCols * ((uint32_t)cI)    ];
    x2 = pYData[((uint32_t)rI) + nCols * ((uint32_t)cI) + 1];

     
     
    yfract = (Y & 0x000FFFFF);

     
    y1 = pYData[((uint32_t)rI) + nCols * ((uint32_t)cI + 1)    ];
    y2 = pYData[((uint32_t)rI) + nCols * ((uint32_t)cI + 1) + 1];

     

     
     
    out = (q31_t) (((q63_t) x1 * (0xFFFFF - xfract)) >> 4u);
    acc = ((q63_t) out * (0xFFFFF - yfract));

     
    out = (q31_t) (((q63_t) x2 * (0xFFFFF - yfract)) >> 4u);
    acc += ((q63_t) out * (xfract));

     
    out = (q31_t) (((q63_t) y1 * (0xFFFFF - xfract)) >> 4u);
    acc += ((q63_t) out * (yfract));

     
    out = (q31_t) (((q63_t) y2 * (xfract)) >> 4u);
    acc += ((q63_t) out * (yfract));

     
     
    return ((q15_t)(acc >> 36));
  }


  





 
  static __inline q7_t arm_bilinear_interp_q7(
  arm_bilinear_interp_instance_q7 * S,
  q31_t X,
  q31_t Y)
  {
    q63_t acc = 0;                                
    q31_t out;                                    
    q31_t xfract, yfract;                         
    q7_t x1, x2, y1, y2;                          
    int32_t rI, cI;                               
    q7_t *pYData = S->pData;                      
    uint32_t nCols = S->numCols;                  

     
     
     
    rI = ((X & (q31_t)0xFFF00000) >> 20);

     
     
     
    cI = ((Y & (q31_t)0xFFF00000) >> 20);

     
     
    if(rI < 0 || rI > (S->numRows - 1) || cI < 0 || cI > (S->numCols - 1))
    {
      return (0);
    }

     
     
    xfract = (X & (q31_t)0x000FFFFF);

     
    x1 = pYData[((uint32_t)rI) + nCols * ((uint32_t)cI)    ];
    x2 = pYData[((uint32_t)rI) + nCols * ((uint32_t)cI) + 1];

     
     
    yfract = (Y & (q31_t)0x000FFFFF);

     
    y1 = pYData[((uint32_t)rI) + nCols * ((uint32_t)cI + 1)    ];
    y2 = pYData[((uint32_t)rI) + nCols * ((uint32_t)cI + 1) + 1];

     
    out = ((x1 * (0xFFFFF - xfract)));
    acc = (((q63_t) out * (0xFFFFF - yfract)));

     
    out = ((x2 * (0xFFFFF - yfract)));
    acc += (((q63_t) out * (xfract)));

     
    out = ((y1 * (0xFFFFF - xfract)));
    acc += (((q63_t) out * (yfract)));

     
    out = ((y2 * (yfract)));
    acc += (((q63_t) out * (xfract)));

     
    return ((q7_t)(acc >> 40));
  }

  

 


 



 



 



 



 



 





   
#line 7075 "..\\..\\..\\..\\Library\\CMSIS\\Include\\arm_math.h"

   
#line 7083 "..\\..\\..\\..\\Library\\CMSIS\\Include\\arm_math.h"

   


   


#line 7138 "..\\..\\..\\..\\Library\\CMSIS\\Include\\arm_math.h"
















 
#line 2 "..\\arm_fft_bin_data.c"



 

float32_t testInput_f32_10khz[2048] =
{
    -0.865129623056441,     0.000000000000000,  -2.655020678073846,     0.000000000000000,  0.600664612949661,  0.000000000000000,  0.080378093886515,  0.000000000000000,
        -2.899160484012034,     0.000000000000000,  2.563004262857762,  0.000000000000000,  3.078328403304206,  0.000000000000000,  0.105906778385130,  0.000000000000000,
        0.048366940168201,  0.000000000000000,  -0.145696461188734,     0.000000000000000,  -0.023417155362879,     0.000000000000000,  2.127729174988954,  0.000000000000000,
        -1.176633086028377,     0.000000000000000,  3.690223557991855,  0.000000000000000,  -0.622791766173194,     0.000000000000000,  0.722837373872203,  0.000000000000000,
        2.739754205367484,  0.000000000000000,  -0.062610410524552,     0.000000000000000,  -0.891296810967338,     0.000000000000000,  -1.845872258871811,     0.000000000000000,
        1.195039415434387,  0.000000000000000,  -2.177388969045026,     0.000000000000000,  1.078649103637905,  0.000000000000000,  2.570976050490193,  0.000000000000000,
        -1.383551403404574,     0.000000000000000,  2.392141424058873,  0.000000000000000,  2.858002843205065,  0.000000000000000,  -3.682433899725536,     0.000000000000000,
        -3.488146646451150,     0.000000000000000,  1.323468578888120,  0.000000000000000,  -0.099771155430726,     0.000000000000000,  1.561168082500454,  0.000000000000000,
        1.025026795103179,  0.000000000000000,  0.928841900171200,  0.000000000000000,  2.930499509864950,  0.000000000000000,  2.013349089766430,  0.000000000000000,
        2.381676148486737,  0.000000000000000,  -3.081062307950236,     0.000000000000000,  -0.389579115537544,     0.000000000000000,  0.181540149166620,  0.000000000000000,
        -2.601953341353208,     0.000000000000000,  0.333435137783218,  0.000000000000000,  -2.812945856162965,     0.000000000000000,  2.649109640172910,  0.000000000000000,
        -1.003963025744654,     0.000000000000000,  1.552460768755035,  0.000000000000000,  0.088641345335247,  0.000000000000000,  -2.519951327113426,     0.000000000000000,
        -4.341348988610527,     0.000000000000000,  0.557772429359965,  0.000000000000000,  -1.671267412948494,     0.000000000000000,  0.733951350960387,  0.000000000000000,
        0.409263788034864,  0.000000000000000,  3.566033071952806,  0.000000000000000,  1.882565173848352,  0.000000000000000,  -1.106017073793287,     0.000000000000000,
        0.154456720778718,  0.000000000000000,  -2.513205795512153,     0.000000000000000,  0.310978660939421,  0.000000000000000,  0.579706500111723,  0.000000000000000,
        0.000086383683251,  0.000000000000000,  -1.311866980897721,     0.000000000000000,  1.840007477574986,  0.000000000000000,  -3.253005768451345,     0.000000000000000,
        1.462584328739432,  0.000000000000000,  1.610103610851738,  0.000000000000000,  0.761914676858907,  0.000000000000000,  0.974541361089834,  0.000000000000000,
        0.686845845885983,  0.000000000000000,  1.849153122025191,  0.000000000000000,  0.787800410401453,  0.000000000000000,  -1.187438909666279,     0.000000000000000,
        -0.754937911044720,     0.000000000000000,  0.084373858395232,  0.000000000000000,  -2.600269011710521,     0.000000000000000,  -0.962982842142644,     0.000000000000000,
        -0.369328108540868,     0.000000000000000,  0.810791418361879,  0.000000000000000,  3.587016488699641,  0.000000000000000,  -0.520776145083723,     0.000000000000000,
        0.640249919627884,  0.000000000000000,  1.103122489464969,  0.000000000000000,  2.231779881455556,  0.000000000000000,  -1.308035392685241,     0.000000000000000,
        0.424070304330106,  0.000000000000000,  -0.200383932651189,     0.000000000000000,  -2.365526783356541,     0.000000000000000,  -0.989114757436628,     0.000000000000000,
        2.770807688959777,  0.000000000000000,  -0.444172737462307,     0.000000000000000,  0.079760979374078,  0.000000000000000,  -0.005199118412183,     0.000000000000000,
        -0.664712668309527,     0.000000000000000,  -0.624171857561896,     0.000000000000000,  0.537306979007338,  0.000000000000000,  -2.575955675497642,     0.000000000000000,
        1.562363235756780,  0.000000000000000,  1.814069369848895,  0.000000000000000,  -1.293428583392509,     0.000000000000000,  -1.026188449495686,     0.000000000000000,
        -2.981771815588717,     0.000000000000000,  -4.223468103075124,     0.000000000000000,  2.672674782004045,  0.000000000000000,  -0.856096801117735,     0.000000000000000,
        0.048517345512563,  0.000000000000000,  -0.026860721136222,     0.000000000000000,  0.392932277758187,  0.000000000000000,  -1.331740855093099,     0.000000000000000,
        -1.894292129477081,     0.000000000000000,  -1.425006468460681,     0.000000000000000,  -2.721772427617057,     0.000000000000000,  -1.616831100216806,     0.000000000000000,
        3.551177651488947,  0.000000000000000,  -0.069685667896087,     0.000000000000000,  -3.134634907409102,     0.000000000000000,  -0.263627598944639,     0.000000000000000,
        -1.650469945991350,     0.000000000000000,  -2.203580339374399,     0.000000000000000,  -0.872203246123242,     0.000000000000000,  1.230782812607287,  0.000000000000000,
        0.257288860093291,  0.000000000000000,  1.989083106173137,  0.000000000000000,  -1.985638729453261,     0.000000000000000,  -1.416185105842892,     0.000000000000000,
        -1.131097688325772,     0.000000000000000,  -2.245130805416057,     0.000000000000000,  -1.938873996219074,     0.000000000000000,  2.043608361562645,  0.000000000000000,
        -0.583727989880841,     0.000000000000000,  -1.785266378212929,     0.000000000000000,  1.961457586224753,  0.000000000000000,  1.139400099963223,  0.000000000000000,
        -1.979519343363991,     0.000000000000000,  2.003023322818429,  0.000000000000000,  0.229004069076829,  0.000000000000000,  3.452808862193135,  0.000000000000000,
        2.882273808365857,  0.000000000000000,  -1.549450501844438,     0.000000000000000,  -3.283872089931876,     0.000000000000000,  -0.327025884099064,     0.000000000000000,
        -0.054979977136430,     0.000000000000000,  -1.192280531479012,     0.000000000000000,  0.645539328365578,  0.000000000000000,  2.300832863404618,  0.000000000000000,
        -1.092951789535240,     0.000000000000000,  -1.017368249363773,     0.000000000000000,  -0.142673056169787,     0.000000000000000,  0.831073544881250,  0.000000000000000,
        -2.314612531587064,     0.000000000000000,  -2.221456299106321,     0.000000000000000,  0.460261143885226,  0.000000000000000,  0.050585301888595,  0.000000000000000,
        0.364373329183988,  0.000000000000000,  -1.685956552069538,     0.000000000000000,  0.050664512351055,  0.000000000000000,  -0.193355783902718,     0.000000000000000,
        -0.158660446046828,     0.000000000000000,  2.394156453841953,  0.000000000000000,  -1.562965718554525,     0.000000000000000,  -2.199750600869900,     0.000000000000000,
        1.544984022381773,  0.000000000000000,  -1.988307216807315,     0.000000000000000,  -0.628240722541046,     0.000000000000000,  -1.436235771505429,     0.000000000000000,
        1.677013691147313,  0.000000000000000,  1.600741781678228,  0.000000000000000,  -0.757380959134706,     0.000000000000000,  -4.784797439515566,     0.000000000000000,
        0.265121462834569,  0.000000000000000,  3.862029485934378,  0.000000000000000,  2.386823577249430,  0.000000000000000,  -3.655779745436893,     0.000000000000000,
        -0.763541621368016,     0.000000000000000,  -1.182140388432962,     0.000000000000000,  -1.349106114858063,     0.000000000000000,  -2.287533624396759,     0.000000000000000,
        -0.028603745188423,     0.000000000000000,  -1.353580755934427,     0.000000000000000,  0.461602380352937,  0.000000000000000,  -0.059599055078928,     0.000000000000000,
        -0.929946734342228,     0.000000000000000,  0.065773089295561,  0.000000000000000,  1.106565863102982,  0.000000000000000,  4.719295086373593,  0.000000000000000,
        -2.108377703544395,     0.000000000000000,  -2.226393620240159,     0.000000000000000,  1.375668397437521,  0.000000000000000,  -0.960772428525443,     0.000000000000000,
        -2.156313465390571,     0.000000000000000,  1.126060012375311,  0.000000000000000,  2.756485137030720,  0.000000000000000,  0.739639690862600,  0.000000000000000,
        3.914769510295006,  0.000000000000000,  1.685232785586675,  0.000000000000000,  4.079058040970612,  0.000000000000000,  -1.174598301660513,     0.000000000000000,
        -2.885776587275580,     0.000000000000000,  -0.241073635188767,     0.000000000000000,  3.080489872502403,  0.000000000000000,  -2.051244183999421,     0.000000000000000,
        0.664330486845139,  0.000000000000000,  -1.697798999370016,     0.000000000000000,  1.452369423649782,  0.000000000000000,  -1.523532831019280,     0.000000000000000,
        0.171981186587481,  0.000000000000000,  -4.685274721583927,     0.000000000000000,  -1.336175835319380,     0.000000000000000,  1.419070770428945,  0.000000000000000,
        -0.035791601713475,     0.000000000000000,  2.291937971632081,  0.000000000000000,  -1.962559313450293,     0.000000000000000,  -4.831595589339301,     0.000000000000000,
        -1.857055284000925,     0.000000000000000,  2.606271522635512,  0.000000000000000,  -0.576447978738030,     0.000000000000000,  0.082299166967720,  0.000000000000000,
        1.888399453494614,  0.000000000000000,  -3.564705298046079,     0.000000000000000,  -0.939357831083889,     0.000000000000000,  -1.903578203697778,     0.000000000000000,
        -2.642492215447250,     0.000000000000000,  -0.182990405251017,     0.000000000000000,  3.742026478011174,  0.000000000000000,  0.104295803798333,  0.000000000000000,
        1.848678195370347,  0.000000000000000,  -1.887384346896369,     0.000000000000000,  0.365048973046045,  0.000000000000000,  -0.889638010354219,     0.000000000000000,
        1.173877118428863,  0.000000000000000,  -1.178562827540109,     0.000000000000000,  0.610271645685184,  0.000000000000000,  1.831284815697871,  0.000000000000000,
        0.449575390102283,  0.000000000000000,  1.597171905253443,  0.000000000000000,  3.918574971904773,  0.000000000000000,  0.868104027970404,  0.000000000000000,
        0.582643134746494,  0.000000000000000,  2.321256382353331,  0.000000000000000,  -0.238118642223180,     0.000000000000000,  -2.890287868054370,     0.000000000000000,
        0.970995414625622,  0.000000000000000,  0.666137930891283,  0.000000000000000,  -0.202435718709502,     0.000000000000000,  2.057930200518194,  0.000000000000000,
        3.120583443719949,  0.000000000000000,  -0.863945271701041,     0.000000000000000,  0.906848893874630,  0.000000000000000,  -1.434124930222570,     0.000000000000000,
        0.754659384848783,  0.000000000000000,  -5.224154442713778,     0.000000000000000,  2.330229744098967,  0.000000000000000,  1.113946320164698,  0.000000000000000,
        0.523324920322840,  0.000000000000000,  1.750740911548348,  0.000000000000000,  -0.899333972913577,     0.000000000000000,  0.228705845203506,  0.000000000000000,
        -1.934782624767648,     0.000000000000000,  -3.508386237231303,     0.000000000000000,  -2.107108523073510,     0.000000000000000,  0.380587645474815,  0.000000000000000,
        -0.476200877183279,     0.000000000000000,  -2.172086712642198,     0.000000000000000,  1.795372535780299,  0.000000000000000,  -2.100318983391055,     0.000000000000000,
        -0.022571122461405,     0.000000000000000,  0.674514020010955,  0.000000000000000,  -0.148872569390857,     0.000000000000000,  0.298175890592737,  0.000000000000000,
        -1.134244492493590,     0.000000000000000,  -3.146848422289455,     0.000000000000000,  -1.357950199087602,     0.000000000000000,  0.667362732020878,  0.000000000000000,
        -3.119397998316724,     0.000000000000000,  -1.189341126297637,     0.000000000000000,  -1.532744386856668,     0.000000000000000,  -1.672972484202534,     0.000000000000000,
        -2.042283373871558,     0.000000000000000,  -1.479481547595924,     0.000000000000000,  -0.002668662875396,     0.000000000000000,  0.262737760129546,  0.000000000000000,
        2.734456080621830,  0.000000000000000,  -0.671945925075102,     0.000000000000000,  -3.735078262179111,     0.000000000000000,  -0.161705013319883,     0.000000000000000,
        0.748963512361001,  0.000000000000000,  1.128046374367600,  0.000000000000000,  0.649651335592966,  0.000000000000000,  1.880020215025867,  0.000000000000000,
        -1.095632293842306,     0.000000000000000,  1.197764876160487,  0.000000000000000,  0.323646656252985,  0.000000000000000,  -1.655502751114502,     0.000000000000000,
        3.666399062961496,  0.000000000000000,  -0.334060899735197,     0.000000000000000,  -2.119056978738397,     0.000000000000000,  3.721375117275012,  0.000000000000000,
        0.044874186872307,  0.000000000000000,  -2.733053897593234,     0.000000000000000,  1.590700278891042,  0.000000000000000,  3.215711772781902,  0.000000000000000,
        -1.792085012843801,     0.000000000000000,  -0.405797188885475,     0.000000000000000,  -0.628080020080892,     0.000000000000000,  -1.831815840843960,     0.000000000000000,
        2.973656862522834,  0.000000000000000,  -0.212032655138417,     0.000000000000000,  0.372437389437234,  0.000000000000000,  -1.614030579023492,     0.000000000000000,
        -0.704900996358698,     0.000000000000000,  1.123700273452105,  0.000000000000000,  -0.136371848130819,     0.000000000000000,  3.020284357635585,  0.000000000000000,
        -0.550211350877649,     0.000000000000000,  5.101256236381711,  0.000000000000000,  3.367051512192333,  0.000000000000000,  -4.385131946669234,     0.000000000000000,
        -3.967303337694391,     0.000000000000000,  -0.965894936640022,     0.000000000000000,  0.328366945264681,  0.000000000000000,  0.199041562924914,  0.000000000000000,
        1.067681999025495,  0.000000000000000,  -1.939516091697170,     0.000000000000000,  -1.092980954328824,     0.000000000000000,  0.273786079368066,  0.000000000000000,
        -0.040928322190265,     0.000000000000000,  -0.118368078577437,     0.000000000000000,  1.766589628899997,  0.000000000000000,  1.738321311635393,  0.000000000000000,
        -2.895012794321649,     0.000000000000000,  1.213521771395142,  0.000000000000000,  0.922971726633985,  0.000000000000000,  1.091516563636489,  0.000000000000000,
        3.226378465469620,  0.000000000000000,  1.149169778666974,  0.000000000000000,  -1.695986327709386,     0.000000000000000,  -0.974803077355813,     0.000000000000000,
        -4.898035507513607,     0.000000000000000,  1.622719302889447,  0.000000000000000,  0.583891313586579,  0.000000000000000,  -1.677182424094957,     0.000000000000000,
        -1.915633132814685,     0.000000000000000,  -1.980150370851616,     0.000000000000000,  0.604538269404190,  0.000000000000000,  0.939862406149365,  0.000000000000000,
        -1.266939874246416,     0.000000000000000,  -1.494771249200063,     0.000000000000000,  0.278042784093988,  0.000000000000000,  0.326627416008916,  0.000000000000000,
        -1.914530157643303,     0.000000000000000,  1.908947721862196,  0.000000000000000,  0.531819285694044,  0.000000000000000,  3.056856632319658,  0.000000000000000,
        -0.389241827774643,     0.000000000000000,  -2.418606606780420,     0.000000000000000,  0.915299238878703,  0.000000000000000,  -0.098774174295283,     0.000000000000000,
        -0.906199428444304,     0.000000000000000,  0.316716451217743,  0.000000000000000,  -4.367700643578311,     0.000000000000000,  1.491687997515293,  0.000000000000000,
        -1.962381126288365,     0.000000000000000,  -0.700829196527045,     0.000000000000000,  3.028958963615630,  0.000000000000000,  -2.313461067462598,     0.000000000000000,
        -1.431933239886712,     0.000000000000000,  -0.831153039725342,     0.000000000000000,  3.939495598250743,  0.000000000000000,  0.342974753984771,  0.000000000000000,
        -2.768330763002974,     0.000000000000000,  -2.744010370019008,     0.000000000000000,  3.821352685212561,  0.000000000000000,  4.551065271455856,  0.000000000000000,
        3.270136437041298,  0.000000000000000,  -3.188028411950982,     0.000000000000000,  -0.777075012417436,     0.000000000000000,  0.097110650265216,  0.000000000000000,
        1.221216137608812,  0.000000000000000,  -1.325824244541822,     0.000000000000000,  -2.655296734084113,     0.000000000000000,  -1.074792144885704,     0.000000000000000,
        2.770401584439407,  0.000000000000000,  5.240270645610543,  0.000000000000000,  0.108576672208892,  0.000000000000000,  -1.209394350650142,     0.000000000000000,
        1.403344353838785,  0.000000000000000,  -0.299032904177277,     0.000000000000000,  4.074959450638227,  0.000000000000000,  1.718727473952107,  0.000000000000000,
        -3.061349227080806,     0.000000000000000,  -1.158596888541269,     0.000000000000000,  3.381858904662625,  0.000000000000000,  0.957339964054052,  0.000000000000000,
        0.179900074904899,  0.000000000000000,  -3.909641902506081,     0.000000000000000,  0.805717289408649,  0.000000000000000,  2.047413793928261,  0.000000000000000,
        -1.273580225826614,     0.000000000000000,  -2.681359186869971,     0.000000000000000,  -0.721241345822093,     0.000000000000000,  -1.613090681569475,     0.000000000000000,
        0.463138804815955,  0.000000000000000,  0.377223507800954,  0.000000000000000,  2.046550684968141,  0.000000000000000,  0.178508732797712,  0.000000000000000,
        -0.477815330358845,     0.000000000000000,  3.763355908332053,  0.000000000000000,  1.300430303035163,  0.000000000000000,  -0.214625793857725,     0.000000000000000,
        1.343267891864081,  0.000000000000000,  -0.340007682433245,     0.000000000000000,  2.062703194680005,  0.000000000000000,  0.042032160234235,  0.000000000000000,
        0.643732569732250,  0.000000000000000,  -1.913502543857589,     0.000000000000000,  3.771340762937158,  0.000000000000000,  1.050024807363386,  0.000000000000000,
        -4.440489488592649,     0.000000000000000,  0.444904302066643,  0.000000000000000,  2.898702265650048,  0.000000000000000,  1.953232980548558,  0.000000000000000,
        2.761564952735079,  0.000000000000000,  1.963537633260397,  0.000000000000000,  -2.168858472916215,     0.000000000000000,  -4.116235357699841,     0.000000000000000,
        4.183678271896528,  0.000000000000000,  0.600422284944681,  0.000000000000000,  -0.659352647255126,     0.000000000000000,  -0.993127338218109,     0.000000000000000,
        -2.463571314945747,     0.000000000000000,  0.937720951545881,  0.000000000000000,  -3.098957308429730,     0.000000000000000,  -2.354719140045463,     0.000000000000000,
        -0.417285119323949,     0.000000000000000,  2.187974075975947,  0.000000000000000,  1.101468905172585,  0.000000000000000,  -3.185800678152109,     0.000000000000000,
        2.357534709345083,  0.000000000000000,  0.246645606729407,  0.000000000000000,  4.440905650784504,  0.000000000000000,  -2.236807716637866,     0.000000000000000,
        -2.171481518317550,     0.000000000000000,  -2.029571795072690,     0.000000000000000,  0.135599790431348,  0.000000000000000,  -1.277965265520191,     0.000000000000000,
        -1.927976233157507,     0.000000000000000,  -5.434492783745394,     0.000000000000000,  -2.026375829312657,     0.000000000000000,  1.009666016819321,  0.000000000000000,
        0.238549782367247,  0.000000000000000,  -0.516403923971309,     0.000000000000000,  -0.933977817429352,     0.000000000000000,  0.155803015935614,  0.000000000000000,
        -0.396194809997929,     0.000000000000000,  -0.915178100253214,     0.000000000000000,  0.666329367985015,  0.000000000000000,  -1.517991149945785,     0.000000000000000,
        0.458266744144822,  0.000000000000000,  -1.242845974381418,     0.000000000000000,  0.057914823556477,  0.000000000000000,  0.994101307476875,  0.000000000000000,
        -2.387209849199325,     0.000000000000000,  0.459297048883826,  0.000000000000000,  0.227711405683905,  0.000000000000000,  0.030255073506117,  0.000000000000000,
        -1.323361608181337,     0.000000000000000,  -4.650244457426706,     0.000000000000000,  0.062908579526021,  0.000000000000000,  3.462831028244432,  0.000000000000000,
        1.303608183314856,  0.000000000000000,  -1.430415193881612,     0.000000000000000,  -1.672886118942142,     0.000000000000000,  0.992890699210099,  0.000000000000000,
        -0.160814531784247,     0.000000000000000,  -1.238132939350430,     0.000000000000000,  -0.589223271459376,     0.000000000000000,  2.326363810561534,  0.000000000000000,
        -4.433789496230785,     0.000000000000000,  1.664686987538929,  0.000000000000000,  -2.366128834617921,     0.000000000000000,  1.212421570743837,  0.000000000000000,
        -4.847914267690055,     0.000000000000000,  0.228485221404712,  0.000000000000000,  0.466139765470957,  0.000000000000000,  -1.344202776943546,     0.000000000000000,
        -1.012053673330574,     0.000000000000000,  -2.844980626424742,     0.000000000000000,  -1.552703722026340,     0.000000000000000,  -1.448830983885038,     0.000000000000000,
        0.127010756753980,  0.000000000000000,  -1.667188263752299,     0.000000000000000,  3.424818052085100,  0.000000000000000,  0.956291135453840,  0.000000000000000,
        -3.725533331754662,     0.000000000000000,  -1.584534272368832,     0.000000000000000,  -1.654148210472472,     0.000000000000000,  0.701610500675698,  0.000000000000000,
        0.164954538683927,  0.000000000000000,  -0.739260064712987,     0.000000000000000,  -2.167324026090101,     0.000000000000000,  -0.310240491909496,     0.000000000000000,
        -2.281790349106906,     0.000000000000000,  1.719655331305361,  0.000000000000000,  -2.997005923606441,     0.000000000000000,  -1.999301431556852,     0.000000000000000,
        -0.292229010068828,     0.000000000000000,  1.172317994855851,  0.000000000000000,  0.196734885241533,  0.000000000000000,  2.981365193477068,  0.000000000000000,
        2.637726016926352,  0.000000000000000,  1.434045125217982,  0.000000000000000,  0.883627180451827,  0.000000000000000,  -1.434040761445747,     0.000000000000000,
        -1.528891971086553,     0.000000000000000,  -3.306913135367542,     0.000000000000000,  -0.399059265470646,     0.000000000000000,  -0.265674394285178,     0.000000000000000,
        3.502591252855384,  0.000000000000000,  0.830301156604454,  0.000000000000000,  -0.220021317046083,     0.000000000000000,  -0.090553770476646,     0.000000000000000,
        0.771863477047951,  0.000000000000000,  1.351209629105760,  0.000000000000000,  3.773699756201963,  0.000000000000000,  0.472600118752329,  0.000000000000000,
        2.332825668012222,  0.000000000000000,  1.853747950314528,  0.000000000000000,  0.759515251766178,  0.000000000000000,  1.327112776215496,  0.000000000000000,
        2.518730296237868,  0.000000000000000,  0.764450208786353,  0.000000000000000,  -0.278275349491296,     0.000000000000000,  -0.041559465082020,     0.000000000000000,
        1.387166083167787,  0.000000000000000,  2.612996769598122,  0.000000000000000,  -0.385404831721799,     0.000000000000000,  2.005630016170309,  0.000000000000000,
        -0.950500047307998,     0.000000000000000,  -1.166884021392492,     0.000000000000000,  1.432973552928162,  0.000000000000000,  2.540370505384567,  0.000000000000000,
        -1.140505295054501,     0.000000000000000,  -3.673358835201185,     0.000000000000000,  -0.450691288038056,     0.000000000000000,  1.601024294408014,  0.000000000000000,
        0.773213556014045,  0.000000000000000,  2.973873693246168,  0.000000000000000,  -1.361548406382279,     0.000000000000000,  1.409136332424815,  0.000000000000000,
        -0.963382518314713,     0.000000000000000,  -2.031268227368161,     0.000000000000000,  0.983309972085586,  0.000000000000000,  -3.461412488471631,     0.000000000000000,
        -2.601124929406039,     0.000000000000000,  -0.533896239766343,     0.000000000000000,  -2.627129008866350,     0.000000000000000,  0.622111169161305,  0.000000000000000,
        -1.160926365580422,     0.000000000000000,  -2.406196188132628,     0.000000000000000,  -1.076870362758737,     0.000000000000000,  -1.791866820937175,     0.000000000000000,
        -0.749453071522325,     0.000000000000000,  -5.324156615990973,     0.000000000000000,  -1.038698022238289,     0.000000000000000,  -2.106629944730630,     0.000000000000000,
        0.659295598564773,  0.000000000000000,  0.520940881580988,  0.000000000000000,  -0.055649203928700,     0.000000000000000,  0.292096765423137,  0.000000000000000,
        -4.663743901790872,     0.000000000000000,  -0.125066503391666,     0.000000000000000,  -2.452620252445380,     0.000000000000000,  -0.712128227397468,     0.000000000000000,
        -0.048938037970968,     0.000000000000000,  -1.821520226003361,     0.000000000000000,  0.810106421304257,  0.000000000000000,  -0.196636623956257,     0.000000000000000,
        -0.701769836763804,     0.000000000000000,  2.460345045649201,  0.000000000000000,  3.506597671641116,  0.000000000000000,  -2.711322611972225,     0.000000000000000,
        -0.658079876600542,     0.000000000000000,  -2.040082099646173,     0.000000000000000,  2.201668355395807,  0.000000000000000,  1.181507395879711,  0.000000000000000,
        -1.640739552179682,     0.000000000000000,  -1.613393726467190,     0.000000000000000,  -1.156741241731352,     0.000000000000000,  2.527773464519963,  0.000000000000000,
        -0.497040638009502,     0.000000000000000,  -0.975817112895589,     0.000000000000000,  -2.866830755546166,     0.000000000000000,  1.120214498507878,  0.000000000000000,
        5.986771654661698,  0.000000000000000,  0.398219252656757,  0.000000000000000,  -3.545606013198135,     0.000000000000000,  0.312398099396191,  0.000000000000000,
        -2.265327979531788,     0.000000000000000,  0.792121001107366,  0.000000000000000,  -3.736145137670100,     0.000000000000000,  0.762228883650802,  0.000000000000000,
        2.283545661214646,  0.000000000000000,  3.780020629583529,  0.000000000000000,  3.117260228608810,  0.000000000000000,  -2.011159255609613,     0.000000000000000,
        0.279107700476072,  0.000000000000000,  2.003369134246936,  0.000000000000000,  -1.448171234480257,     0.000000000000000,  0.584697150310140,  0.000000000000000,
        0.919508663636197,  0.000000000000000,  -3.071349141675388,     0.000000000000000,  -1.555923649263667,     0.000000000000000,  2.232497079438850,  0.000000000000000,
        -0.012662139119883,     0.000000000000000,  0.372825540734715,  0.000000000000000,  2.378543590847629,  0.000000000000000,  1.459053407813062,  0.000000000000000,
        -0.967913907390927,     0.000000000000000,  1.322825200678212,  0.000000000000000,  -1.033775820061824,     0.000000000000000,  -1.813629552693142,     0.000000000000000,
        4.794348161661486,  0.000000000000000,  0.655279811518676,  0.000000000000000,  -2.224590138589720,     0.000000000000000,  0.595329481295766,  0.000000000000000,
        3.364055988866225,  0.000000000000000,  1.863416422998127,  0.000000000000000,  1.930305751828105,  0.000000000000000,  -0.284467053432545,     0.000000000000000,
        -0.923374905878938,     0.000000000000000,  1.922988234041399,  0.000000000000000,  0.310482143432719,  0.000000000000000,  0.332122302397134,  0.000000000000000,
        -1.659487472408966,     0.000000000000000,  -1.865943507877961,     0.000000000000000,  -0.186775297569864,     0.000000000000000,  -1.700543850628361,     0.000000000000000,
        0.497157959366735,  0.000000000000000,  -0.471244843957418,     0.000000000000000,  -0.432013753969948,     0.000000000000000,  -4.000189880113231,     0.000000000000000,
        -0.415335170016467,     0.000000000000000,  0.317311950972859,  0.000000000000000,  0.038393428927595,  0.000000000000000,  0.177219909465206,  0.000000000000000,
        0.531650958095143,  0.000000000000000,  -2.711644985175806,     0.000000000000000,  0.328744077805156,  0.000000000000000,  -0.938417707547928,     0.000000000000000,
        0.970379584897379,  0.000000000000000,  1.873649473917137,  0.000000000000000,  0.177938226987023,  0.000000000000000,  0.155609346302393,  0.000000000000000,
        -1.276504241867208,     0.000000000000000,  -0.463725075928807,     0.000000000000000,  -0.064748250389500,     0.000000000000000,  -1.725568534062385,     0.000000000000000,
        -0.139066584804067,     0.000000000000000,  1.975514554117767,  0.000000000000000,  -0.807063199499478,     0.000000000000000,  -0.326926659682788,     0.000000000000000,
        1.445727032487938,  0.000000000000000,  -0.597151107739100,     0.000000000000000,  2.732557531709386,  0.000000000000000,  -2.907130934109188,     0.000000000000000,
        -1.461264832679981,     0.000000000000000,  -1.708588604968163,     0.000000000000000,  3.652851925431363,  0.000000000000000,  0.682050868282879,  0.000000000000000,
        -0.281312579963294,     0.000000000000000,  0.554966483307825,  0.000000000000000,  -0.981341739340932,     0.000000000000000,  1.279543331141603,  0.000000000000000,
        0.036589747826856,  0.000000000000000,  2.312073745896073,  0.000000000000000,  1.754682200732425,  0.000000000000000,  -0.957515875428627,     0.000000000000000,
        -0.833596942819695,     0.000000000000000,  0.437054368791033,  0.000000000000000,  -0.898819399360279,     0.000000000000000,  -0.296050580896839,     0.000000000000000,
        -0.785144257649601,     0.000000000000000,  -2.541503089003311,     0.000000000000000,  2.225075846758761,  0.000000000000000,  -1.587290487902002,     0.000000000000000,
        -1.421404172056462,     0.000000000000000,  -3.015149802293631,     0.000000000000000,  1.780874288867949,  0.000000000000000,  -0.865812740882613,     0.000000000000000,
        -2.845327531197112,     0.000000000000000,  1.445225867774367,  0.000000000000000,  2.183733236584647,  0.000000000000000,  1.163371072749080,  0.000000000000000,
        0.883547693520409,  0.000000000000000,  -1.224093106684675,     0.000000000000000,  -1.854501116331044,     0.000000000000000,  1.783082089255796,  0.000000000000000,
        2.301508706196191,  0.000000000000000,  -0.539901944139077,     0.000000000000000,  1.962315832319967,  0.000000000000000,  -0.060709041870503,     0.000000000000000,
        -1.353139923300238,     0.000000000000000,  -1.482887537805234,     0.000000000000000,  1.273732601967176,  0.000000000000000,  -3.456609915556321,     0.000000000000000,
        -3.752320586540873,     0.000000000000000,  3.536356614978951,  0.000000000000000,  0.206035952043233,  0.000000000000000,  5.933966913773842,  0.000000000000000,
        -0.486633898075490,     0.000000000000000,  -0.329595089863342,     0.000000000000000,  1.496414153905337,  0.000000000000000,  0.137868749388880,  0.000000000000000,
        -0.437192030996792,     0.000000000000000,  2.682750615210656,  0.000000000000000,  -2.440234892848570,     0.000000000000000,  1.433910252426186,  0.000000000000000,
        -0.415051506104074,     0.000000000000000,  1.982003013708649,  0.000000000000000,  1.345796609972435,  0.000000000000000,  -2.335949513404370,     0.000000000000000,
        1.065988867433025,  0.000000000000000,  2.741844905000464,  0.000000000000000,  -1.754047930934362,     0.000000000000000,  0.229252730015575,  0.000000000000000,
        -0.679791016408669,     0.000000000000000,  -2.274097820043743,     0.000000000000000,  0.149802252231876,  0.000000000000000,  -0.139697151364830,     0.000000000000000,
        -2.773367420505435,     0.000000000000000,  -4.403400246165611,     0.000000000000000,  -1.468974515184135,     0.000000000000000,  0.664990623095844,  0.000000000000000,
        -3.446979775557143,     0.000000000000000,  1.850006428987618,  0.000000000000000,  -1.550866747921936,     0.000000000000000,  -3.632874882935257,     0.000000000000000,
        0.828039662992464,  0.000000000000000,  2.794055182632816,  0.000000000000000,  -0.593995716682633,     0.000000000000000,  0.142788156054200,  0.000000000000000,
        0.552461945119668,  0.000000000000000,  0.842127129738758,  0.000000000000000,  1.414335509600077,  0.000000000000000,  -0.311559241382430,     0.000000000000000,
        1.510590844695250,  0.000000000000000,  1.692217183824300,  0.000000000000000,  0.613760285711957,  0.000000000000000,  0.065233463207770,  0.000000000000000,
        -2.571912893711505,     0.000000000000000,  -1.707001531141341,     0.000000000000000,  0.673884968382041,  0.000000000000000,  0.889863883420103,  0.000000000000000,
        -2.395635435233346,     0.000000000000000,  1.129247296359819,  0.000000000000000,  0.569074704779735,  0.000000000000000,  6.139436017480722,  0.000000000000000,
        0.822158309259017,  0.000000000000000,  -3.289872016222589,     0.000000000000000,  0.417612988384414,  0.000000000000000,  1.493982103868165,  0.000000000000000,
        -0.415353391377005,     0.000000000000000,  0.288670764933155,  0.000000000000000,  -1.895650228872272,     0.000000000000000,  -0.139631694475020,     0.000000000000000,
        1.445103299005436,  0.000000000000000,  2.877182243683429,  0.000000000000000,  1.192428490172580,  0.000000000000000,  -5.964591921763842,     0.000000000000000,
        0.570859795882959,  0.000000000000000,  2.328333316356666,  0.000000000000000,  0.333755014930026,  0.000000000000000,  1.221901577771909,  0.000000000000000,
        0.943358697415568,  0.000000000000000,  2.793063983613067,  0.000000000000000,  3.163005066073616,  0.000000000000000,  2.098300664513867,  0.000000000000000,
        -3.915313164333447,     0.000000000000000,  -2.475766769064539,     0.000000000000000,  1.720472044894277,  0.000000000000000,  -1.273591949275665,     0.000000000000000,
        -1.213451272938616,     0.000000000000000,  0.697439404325690,  0.000000000000000,  -0.309902287574293,     0.000000000000000,  2.622575852162781,  0.000000000000000,
        -2.075881936219060,     0.000000000000000,  0.777847545691770,  0.000000000000000,  -3.967947986440650,     0.000000000000000,  -3.066503371806472,     0.000000000000000,
        1.193780625937845,  0.000000000000000,  0.214246579281311,  0.000000000000000,  -2.610681491162162,     0.000000000000000,  -1.261224183972745,     0.000000000000000,
        -1.165071748544285,     0.000000000000000,  -1.116548474834374,     0.000000000000000,  0.847202164846982,  0.000000000000000,  -3.474301529532390,     0.000000000000000,
        0.020799541946476,  0.000000000000000,  -3.868995473288166,     0.000000000000000,  1.757979409638067,  0.000000000000000,  0.868115130183109,  0.000000000000000,
        0.910167436737958,  0.000000000000000,  -1.878855115563720,     0.000000000000000,  1.710357104174161,  0.000000000000000,  -1.468933980990902,     0.000000000000000,
        1.799544171601169,  0.000000000000000,  -4.922332880027887,     0.000000000000000,  0.219424548939720,  0.000000000000000,  -0.971671113451924,     0.000000000000000,
        -0.940533475616266,     0.000000000000000,  0.122510114412152,  0.000000000000000,  -1.373686254916911,     0.000000000000000,  1.760348103896323,  0.000000000000000,
        0.391745067829643,  0.000000000000000,  2.521958505327354,  0.000000000000000,  -1.300693516405092,     0.000000000000000,  -0.538251788309178,     0.000000000000000,
        0.797184135810173,  0.000000000000000,  2.908800548982588,  0.000000000000000,  1.590902251655215,  0.000000000000000,  -1.070323714487264,     0.000000000000000,
        -3.349764443340999,     0.000000000000000,  -1.190563529731447,     0.000000000000000,  1.363369471291963,  0.000000000000000,  -1.814270299924576,     0.000000000000000,
        -0.023381588315711,     0.000000000000000,  1.719182048679569,  0.000000000000000,  0.839917213252626,  0.000000000000000,  1.006099633839122,  0.000000000000000,
        0.812462674381527,  0.000000000000000,  1.755814336346739,  0.000000000000000,  2.546848681206319,  0.000000000000000,  -1.555300208869455,     0.000000000000000,
        1.017053811631167,  0.000000000000000,  0.996591039170903,  0.000000000000000,  -1.228047247924881,     0.000000000000000,  4.809462271463009,  0.000000000000000,
        2.318113116151685,  0.000000000000000,  -1.206932520679733,     0.000000000000000,  1.273757685623312,  0.000000000000000,  0.724335352481802,  0.000000000000000,
        1.519876652073198,  0.000000000000000,  -2.749670314714158,     0.000000000000000,  3.424042481847581,  0.000000000000000,  -3.714668360421517,     0.000000000000000,
        1.612834197004014,  0.000000000000000,  -2.038234723985566,     0.000000000000000,  1.470938786562152,  0.000000000000000,  2.111634918450302,  0.000000000000000,
        1.030376670151787,  0.000000000000000,  -0.420877189003829,     0.000000000000000,  -1.502024800532894,     0.000000000000000,  0.452310749163804,  0.000000000000000,
        -1.606059382300987,     0.000000000000000,  -4.006159967834147,     0.000000000000000,  -2.152801208196508,     0.000000000000000,  1.671674089372579,  0.000000000000000,
        1.714536333564101,  0.000000000000000,  -1.011518543005344,     0.000000000000000,  -0.576410282180584,     0.000000000000000,  0.733689809480836,  0.000000000000000,
        1.004245602717974,  0.000000000000000,  1.010090391888449,  0.000000000000000,  3.811459513385621,  0.000000000000000,  -5.230621089271954,     0.000000000000000,
        0.678044861034399,  0.000000000000000,  1.255935859598107,  0.000000000000000,  1.674521701615288,  0.000000000000000,  -1.656695216761705,     0.000000000000000,
        1.169286028869693,  0.000000000000000,  0.524915416191998,  0.000000000000000,  2.397642885039520,  0.000000000000000,  2.108711400616072,  0.000000000000000,
        2.037618211018084,  0.000000000000000,  -0.623664553406925,     0.000000000000000,  2.984106170984409,  0.000000000000000,  1.132182737400932,  0.000000000000000,
        -2.859274340352130,     0.000000000000000,  -0.975550071398723,     0.000000000000000,  -1.359935119997407,     0.000000000000000,  -2.963308211050121,     0.000000000000000,
        -0.228726662781163,     0.000000000000000,  -1.411110379682043,     0.000000000000000,  0.741553355734225,  0.000000000000000,  0.497554254758309,  0.000000000000000,
        2.371907950598855,  0.000000000000000,  1.063465168988748,  0.000000000000000,  -0.641082692081488,     0.000000000000000,  -0.855439878540726,     0.000000000000000,
        0.578321738578726,  0.000000000000000,  3.005809768796194,  0.000000000000000,  1.961458699064065,  0.000000000000000,  -3.206261663772745,     0.000000000000000,
        -0.364431989095434,     0.000000000000000,  -0.263182496622273,     0.000000000000000,  1.843464680631139,  0.000000000000000,  -0.419107530229249,     0.000000000000000,
        1.662335873298487,  0.000000000000000,  -0.853687563304005,     0.000000000000000,  -2.584133404357169,     0.000000000000000,  3.466839568922895,  0.000000000000000,
        0.881671345091973,  0.000000000000000,  0.454620014206908,  0.000000000000000,  -1.737245187402739,     0.000000000000000,  2.162713238369243,  0.000000000000000,
        -3.868539002714486,     0.000000000000000,  2.014114855933826,  0.000000000000000,  -0.703233831811006,     0.000000000000000,  -3.410319935997574,     0.000000000000000,
        -1.851235811006584,     0.000000000000000,  0.909783907894036,  0.000000000000000,  0.091884002136728,  0.000000000000000,  -2.688294201131650,     0.000000000000000,
        -0.906134178460955,     0.000000000000000,  3.475054609035133,  0.000000000000000,  -0.573927964170323,     0.000000000000000,  -0.429542937515399,     0.000000000000000,
        0.991348618739939,  0.000000000000000,  1.974804904926325,  0.000000000000000,  0.975783450796698,  0.000000000000000,  -3.057119549071503,     0.000000000000000,
        -3.899429237481194,     0.000000000000000,  0.362439009175350,  0.000000000000000,  -1.124461670265618,     0.000000000000000,  1.806000360163583,  0.000000000000000,
        -2.768333362600288,     0.000000000000000,  0.244387897900379,  0.000000000000000,  0.908767296720926,  0.000000000000000,  1.254669374391882,  0.000000000000000,
        -1.420441929463686,     0.000000000000000,  -0.875658895966293,     0.000000000000000,  0.183824603376167,  0.000000000000000,  -3.361653917011686,     0.000000000000000,
        -0.796615630227952,     0.000000000000000,  -1.660226542658673,     0.000000000000000,  1.654439358307226,  0.000000000000000,  2.782812946709771,  0.000000000000000,
        1.418064412811531,  0.000000000000000,  -0.819645647243761,     0.000000000000000,  0.807724772592699,  0.000000000000000,  -0.941967976379298,     0.000000000000000,
        -2.312768306047469,     0.000000000000000,  0.872426936477443,  0.000000000000000,  0.919528961530845,  0.000000000000000,  -2.084904575264847,     0.000000000000000,
        -1.972464868459322,     0.000000000000000,  -1.050687203338466,     0.000000000000000,  1.659579707007902,  0.000000000000000,  -1.820640014705855,     0.000000000000000,
        -1.195078061671045,     0.000000000000000,  -1.639773173762048,     0.000000000000000,  1.616744338157063,  0.000000000000000,  4.019216096811563,  0.000000000000000,
        3.461021102549681,  0.000000000000000,  1.642352734361484,  0.000000000000000,  -0.046354693720813,     0.000000000000000,  -0.041936252359677,     0.000000000000000,
        -2.393307519480551,     0.000000000000000,  -0.341471634615121,     0.000000000000000,  -0.392073595257017,     0.000000000000000,  -0.219299018372730,     0.000000000000000,
        -2.016391579662071,     0.000000000000000,  -0.653096251969787,     0.000000000000000,  1.466353155666821,  0.000000000000000,  -2.872058864320412,     0.000000000000000,
        -2.157180779503830,     0.000000000000000,  0.723257479841560,  0.000000000000000,  3.769951308104384,  0.000000000000000,  -1.923392042420024,     0.000000000000000,
        0.644899359942840,  0.000000000000000,  -2.090226891621437,     0.000000000000000,  -0.277043982890403,     0.000000000000000,  -0.528271428321112,     0.000000000000000,
        2.518120645960652,  0.000000000000000,  1.040820431111488,  0.000000000000000,  -4.560583754742486,     0.000000000000000,  -0.226899614918836,     0.000000000000000,
        1.713331231108959,  0.000000000000000,  -3.293941019163642,     0.000000000000000,  -1.113331444648290,     0.000000000000000,  -1.032308423149906,     0.000000000000000,
        1.593774272982443,  0.000000000000000,  -1.246840475090529,     0.000000000000000,  -0.190344684920137,     0.000000000000000,  -1.719386356896355,     0.000000000000000,
        -2.827721754659679,     0.000000000000000,  -0.092438285279020,     0.000000000000000,  -0.565844430675246,     0.000000000000000,  -1.077916121691716,     0.000000000000000,
        -1.208665809504693,     0.000000000000000,  -2.996014266381254,     0.000000000000000,  2.888573323402423,  0.000000000000000,  2.829507048720695,  0.000000000000000,
        -0.859177034120755,     0.000000000000000,  -1.969302377743254,     0.000000000000000,  0.777437674525362,  0.000000000000000,  -0.124910190157646,     0.000000000000000,
        0.129875493115290,  0.000000000000000,  -4.192139262163992,     0.000000000000000,  3.023496047962126,  0.000000000000000,  1.149775163736637,  0.000000000000000,
        2.038151304801731,  0.000000000000000,  3.016122489841263,  0.000000000000000,  -4.829481812137012,     0.000000000000000,  -1.668436615909279,     0.000000000000000,
        0.958586784636918,  0.000000000000000,  1.550652410058678,  0.000000000000000,  -1.456305257976716,     0.000000000000000,  -0.079588392344731,     0.000000000000000,
        -2.453213599392345,     0.000000000000000,  0.296795909127105,  0.000000000000000,  -0.253426616607643,     0.000000000000000,  1.418937160028195,  0.000000000000000,
        -1.672949529066915,     0.000000000000000,  -1.620990298572947,     0.000000000000000,  -1.085103073196045,     0.000000000000000,  0.738606361195386,  0.000000000000000,
        -2.097831202853255,     0.000000000000000,  2.711952282071310,  0.000000000000000,  1.498539238246888,  0.000000000000000,  1.317457282535915,  0.000000000000000,
        -0.302765938349717,     0.000000000000000,  -0.044623707947201,     0.000000000000000,  2.337405215062395,  0.000000000000000,  -3.980689173859100,     0.000000000000000,


    };

