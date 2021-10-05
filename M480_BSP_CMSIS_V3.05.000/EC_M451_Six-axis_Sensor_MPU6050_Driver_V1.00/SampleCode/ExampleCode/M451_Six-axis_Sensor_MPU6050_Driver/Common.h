#ifndef __COMMON_H__
#define __COMMON_H__


#define PROTECT_REG(__CODE) {SYS_UnlockReg();__CODE;SYS_LockReg();}


extern void SYS_Init(uint32_t u32PllClock);
extern void Delayms(uint32_t u32ms);
extern void Delayus(uint32_t u32us);

extern void UART0_Init(unsigned int unBaud);









#endif

