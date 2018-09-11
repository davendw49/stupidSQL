#include "keywordsearch.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

char* search(char *kw)
{
	/*char *st = "mv a.c b.c";
	char str[100];
	strcpy(str, st);
	char *p;
	p = strtok(str, " ");
	while(p)
	{
		printf("%s\n", p);
		p = strtok(NULL, " ");
	}
	printf("%d\n", atoi("123"));
	return 0;*/
	static char result[]="";
	int len,i;
	
	FILE *fp;
	char filename[] = "keyword/test1.index";
	char keyword[100];
	strcpy(keyword,kw);
	char s[1024];
	//printf("%s\n", keyword);
	if((fp = fopen(filename,"r")) == NULL)
	{
		printf("error!");
		return -1;
	}
	while (!feof(fp))
	{
		fgets(s,1024,fp);
		// t1 = strlen(s);
		s[strlen(s)-1]='\0';
		len = strlen(s);
		//printf("%s -- %d %d\n", s, t1 ,t2);
		for (i=0;i<len;i++)
		{
			if (s[i]==' '){
				break;
			}
		}
		if (strncmp(keyword,s,i)==0) 
		{
			//printf("%s\n", s);
			/*
			char dest[4] = {""};
			char src[] = {"123456789"};
			strncpy(dest, src+3, 3);
			puts(dest);
			*/
			strncpy(result, s+i+1, len-i);
			break;
		}
	}
	//printf("this is our keywordsearch engine\n");
	result[strlen(result)-1]='\0';
	printf("%s\n", result);
	return result;
}

int keywordSearch(char *kw, char* history){
	/*FILE *fp;
	char filename[] = "test1.index";
	char StrLine[1024];
	if((fp = fopen(filename,"r")) == NULL)
	{
		printf("error!");
		return -1;
	}
	while (!feof(fp))
	{
		fgets(StrLine,1024,fp);
		printf("%s\n", StrLine);
	}
	fclose(fp);*/
	int i;
	char* result = search(kw);
	char* queryhead = "select * from ";
	char* querytail = " where pid=";

	char delims[] = ",";
	char *r = NULL;
	//printf("%s\n", result);
	r = strtok(result, delims);
	int pos=0;
	while(r!= NULL )
	{
		//printf("result is \"%s\"\n", r);
		int tmp = atoi(r);
		answer[pos] = tmp;
		answer[pos+1]=-1;
		pos++;
		r=strtok(NULL,delims);
	}

	for (i=0;answer[i]!=-1;i++){
		printf("%d\n", answer[i]);
	}


	// interpreter_more(pszCmdLine,storage_command);
	printf("%s\n", result);
	return 0;
}