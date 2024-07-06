//**********************************************************************
//*** VSAM ALTER NAME
//**********************************************************************
//VSAMNAM JOB CLASS=A,MSGCLASS=H,
// USER=HERC01,PASSWORD=CUL8TR
//**********************************************************************
//* PARAMETER AREA
//**********************************************************************
// SET OLDFILENAME=HERC01.VSAM.PROJECT <- OLD VSAM FILENAME
// SET NEWNFILEAME=HERC01.VSAM.PROJECT <- NEW VSAM FILENAME

// SET OLDDATANAME=HERC01.VSAM.PROJECT <- OLD VSAM DATA FILENAME
// SET NEWDATANAME=HERC01.VSAM.PROJECT <- NEW VSAM DATA FILENAME
//**********************************************************************
//* BATCH AREA
//**********************************************************************
//STEP1    EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
  ALTER -
  &OLDFILENAME -
  NEWNAME(&NEWNFILEAME)
  ALTER -
  &OLDDATANAME -
  NEWNAME(&NEWDATANAME)
//
