#ifndef __TYPEDEF_H__
#define __TYPEDEF_H__

typedef          char       CHAR    ;
typedef   signed char       INT8    ;
typedef unsigned char      UINT8    ;
typedef   signed short int  INT16   ;
typedef unsigned short int UINT16   ;
typedef   signed int        INT32   ;
typedef unsigned int       UINT32   ;
typedef float               FP32    ;                   
typedef double              FP64    ;                  


typedef unsigned char u8;
typedef signed char s8;
typedef unsigned short int u16;
typedef signed short int s16;
typedef unsigned int u32;
typedef signed int s32;
typedef unsigned char umword;
typedef signed char smword;
typedef umword bool;
typedef unsigned int uint;
typedef signed int sint;



typedef UINT32 WPARAM ;
typedef UINT32 LPARAM ;


#define BOOL 				UINT32
#define VOID        void
#define STATIC      static
#define EXTERN      extern
#define EXTERN_C		extern
#define CONST       const
#define CODE        code
#define VOLATILE    volatile
#define VAR_T       UINT8

#define LOW         0UL
#define HIGH        1UL

#define ON          1UL
#define OFF         0UL

#define NOP()       __nop()

/* These types must be 16-bit, 32-bit or larger integer */
typedef int				INT;
typedef unsigned int	UINT;

/* These types must be 8-bit integer */
typedef char			CHAR;
typedef unsigned char	UCHAR;
typedef unsigned char	BYTE;

/* These types must be 16-bit integer */
typedef short			SHORT;
typedef unsigned short	USHORT;
typedef unsigned short	WORD;
typedef unsigned short	WCHAR;

/* These types must be 32-bit integer */
typedef long			LONG;
typedef unsigned long	ULONG;
typedef unsigned long	DWORD;



#endif




