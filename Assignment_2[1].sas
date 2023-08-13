%let path = /home/&sysuserid/sasuser.v94/SAS assignment 2;
LIBNAME assign2 "&path" ;

proc import
	datafile = "&path\famafrench.xlsx"
	dbms=xlsx
	out=assign2.famafrench
	replace;
run;

data assign2.SMB (Rename=(dateff=date) keep=dateff smb);
	set assign2.famafrench;
run;

data assign2.HML (Rename=(dateff=date) keep=dateff hml);
	set assign2.famafrench;
run;
data assign2.MKTRF (Rename=(dateff=date) keep=dateff mktrf);
	set assign2.famafrench;
run;
data assign2.RF (Rename=(dateff=date) keep=dateff rf);
	set assign2.famafrench;
run;
data assign2.UMD (Rename=(dateff=date) keep=dateff umd);
	set assign2.famafrench;
run;