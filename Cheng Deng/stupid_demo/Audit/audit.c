#include <stdio.h>
#include "audit.h"
#include <stdlib.h>
#include <string.h>
#include <time.h>

void saveToAuditFile(char *pszCmdLine)
{
	FILE *fp;
	time_t rawtime;
	struct tm *ptminfo;
	time(&rawtime);
	ptminfo = localtime(&rawtime); 
    //printf("%s",buf);
    if((fp=fopen("audit.txt", "a"))== NULL){    /* 打开文件 */
           printf("File open error!\n");
           exit(0);
    }
    fprintf(fp, "[RECORD_AUDIT: %02d-%02d-%02d %02d:%02d:%02d]--CMD_USER:%s", ptminfo->tm_year + 1900, ptminfo->tm_mon + 1, ptminfo->tm_mday, ptminfo->tm_hour, ptminfo->tm_min, ptminfo->tm_sec, pszCmdLine);     
    fprintf(fp, "\n");
    fclose(fp);
}
void rollBackTranslate(char *pszCmdLine)
{
	char* CreateTableRollbackSignal = "create table";
	char* CreateIndexRollbackSignal = "create index";
	char* InsertColumnRollbackSignal = "insert into";
	char str[100];
	strcpy(str, pszCmdLine);
	char *p;
	
	FILE *fp;
	time_t rawtime;
	struct tm *ptminfo;
	time(&rawtime);
	ptminfo = localtime(&rawtime); 
    //printf("%s",buf);
    if((fp=fopen("rollBackTranslate.txt", "a"))== NULL){    /* 打开文件 */
           printf("File open error!\n");
           exit(0);
    }
    fprintf(fp, "[RECORD_AUDIT: %02d-%02d-%02d %02d:%02d:%02d]--SYS_COL:", ptminfo->tm_year + 1900, ptminfo->tm_mon + 1, ptminfo->tm_mday, ptminfo->tm_hour, ptminfo->tm_min, ptminfo->tm_sec);
	if (strncasecmp(pszCmdLine, CreateTableRollbackSignal, 12)==0)
	{
		int len=3;
		p = strtok(str, " ");
		while(p)
		{
			if (len==3) fprintf(fp, "drop ");
			else fprintf(fp, "%s ", p);
			p = strtok(NULL, " ");
			len--;
			if (len==0) break;
		}
	}
	if (strncasecmp(pszCmdLine, CreateIndexRollbackSignal, 12)==0)
	{
		int len=3;
		p = strtok(str, " ");
		while(p)
		{
			if (len==3) fprintf(fp, "drop ");
			else fprintf(fp, "%s ", p);
			p = strtok(NULL, " ");
			len--;
			if (len==0) break;
		}
	}
	if (strncasecmp(pszCmdLine, InsertColumnRollbackSignal, 11)==0)
	{
		//insert into tableName values (valueA, valueB, valueC);
		int len=3;
		p = strtok(str, " ");
		while(p)
		{
			if (len==3) fprintf(fp, "delete ");
			else fprintf(fp, "%s ", p);
			p = strtok(NULL, " ");
			len--;
			if (len==0) break;
		}
	}

	fprintf(fp, "no need to rollback\n");
}