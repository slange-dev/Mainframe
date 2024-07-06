//**********************************************************************
//*** VSAM DEFINE CLUSTER DATA AND INDEX
//**********************************************************************
//VSAMDEF JOB CLASS=A,MSGCLASS=H,
// USER=HERC01,PASSWORD=CUL8TR
//**********************************************************************
//* PARAMETER AREA
//**********************************************************************
// SET FILENAME=HERC01.VSAM.PROJECT <- VSAM FILENAME
// SET VOLNAME=PUB001               <- VOLUME NAME
// SET DATANAME=HERC01.VSAM.PROJECT.DATA    <- VSAM DATA FILENAME
// SET INDEXNAME=HERC01.VSAM.PROJECT.INDEX  <- VSAM INDEX FILENAME
//**********************************************************************
//* BATCH AREA
//**********************************************************************
//VSAMDEF   EXEC PGM=IDCAMS
//SYSPRINT  DD   SYSOUT=A
//SYSIN     DD   *
     DEFINE CLUSTER(NAME(&FILENAME) -
                VOL(&VOLNAME) -
                INDEXED -
                CYL(10 2) -
                RECORDSIZE(384 384) -
                KEYS(13 20) -
                FREESPACE(0 50) -
                SHAREOPTIONS(2 3) -
                LOG(NONE) -
                CISZ(512)) -
             DATA  (NAME(&DATANAME) -
               CISZ(512)) -
             INDEX (NAME(&INDEXNAME) -
               CISZ(512))
//
