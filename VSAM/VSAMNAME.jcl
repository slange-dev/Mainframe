//**********************************************************************
//*** ALTER VSAM NAME
//**********************************************************************
//VSAMNAM JOB (1),'ALTER VSAM',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),
// USER=HERC01,PASSWORD=CUL8TR,REGION=4M,NOTIFY=HERC01
//**********************************************************************
//* PARAMETER AREA
//**********************************************************************
//* FILENAME
// SET OLDFILENAME=HERC01.VSAM.PROJECT      <- OLD VSAM FILENAME
// SET NEWFILENAME=HERC01.VSAM.PROJECT      <- NEW VSAM FILENAME
//* DATANAME
// SET OLDDATANAME=HERC01.VSAM.PROJECT.DATA <- OLD VSAM DATA FILENAME
// SET NEWDATANAME=HERC01.VSAM.PROJECT.DATA <- NEW VSAM DATA FILENAME
//**********************************************************************
//* BATCH AREA
//**********************************************************************
//STEP1    EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
//* FILE
  ALTER -
  &OLDFILENAME -
  NEWNAME(&NEWNFILEAME)
//* DATA
  ALTER -
  &OLDDATANAME -
  NEWNAME(&NEWDATANAME)
/*
//
