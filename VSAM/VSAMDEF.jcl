//**********************************************************************
//*** DEFINE VSAM CLUSTER, DATA AND INDEX
//**********************************************************************
//VSAMDEF JOB (1),'CREATE VSAM',CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1),
// USER=HERC01,PASSWORD=CUL8TR,REGION=4M,NOTIFY=HERC01
//**********************************************************************
//* PARAMETER AREA
//**********************************************************************
// SET FILENAME=HERC01.VSAM.PROJECT              <- VSAM FILENAME
// SET DATANAME=HERC01.VSAM.PROJECT.DATA         <- VSAM DATA FILENAME
// SET INDEXNAME=HERC01.VSAM.PROJECT.INDEX       <- VSAM INDEX FILENAME
// SET VOLNAME=PUB001                            <- VOLUME NAME
//**********************************************************************
//* BATCH AREA
//**********************************************************************
//VSAMDEF   EXEC PGM=IDCAMS,REGION=1024K
//SYSPRINT  DD   SYSOUT=*
//SYSIN     DD   *
//*     DELETE &FILENAME
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
             DATA (NAME(&DATANAME) -
               CISZ(512)) -
             INDEX (NAME(&INDEXNAME) -
               CISZ(512))
/*
//
