//**********************************************************************
//*** DELETE VSAM CLUSTER
//**********************************************************************
//VSAMDEL JOB (1),'DELETE VSAM',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),
// USER=HERC01,PASSWORD=CUL8TR,REGION=4M,NOTIFY=HERC01
//**********************************************************************
//* PARAMETER AREA
//**********************************************************************
// SET FILENAME=HERC01.VSAM.PROJECT              <- VSAM FILENAME
//**********************************************************************
//* BATCH AREA
//**********************************************************************
//VSAMDEL   EXEC PGM=IDCAMS,REGION=1024K
//SYSPRINT  DD   SYSOUT=*
//SYSIN     DD   *
  DELETE &FILENAME
/*
//
