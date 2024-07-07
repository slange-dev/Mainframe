//**********************************************************************
//*** VSAM ALTER NAME
//**********************************************************************
//VSAMNAM JOB CLASS=A,MSGCLASS=H,
// USER=HERC01,PASSWORD=CUL8TR
//**********************************************************************
//* PARAMETER AREA
//**********************************************************************
//* FILE
// SET OLDFILENAME=HERC01.VSAM.PROJECT <- OLD VSAM FILENAME
// SET NEWFILENAME=HERC01.VSAM.PROJECT <- NEW VSAM FILENAME
//* DATA
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
//
