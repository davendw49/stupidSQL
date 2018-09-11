#include "keywordsearch.h"
//#include "../interpreter.c"
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

int keywordSearch(char *input){
	int i,len,kwlinestart,kwlineend,tablelinestart,tablelineend,j;
	int answer[100];
	int time=0;
	static char kw[]="";
	static char tb[]="";
	//char* cmd = "select *k breakfast from test1;";
	char* cmd = input;
	char queryhead[100] = "select * from ";
	char* querytail= " where id=";
	len = strlen(cmd);
	//printf("%d\n", len);

	for (i=0;i<len;i++)
	{
		if (cmd[i]==' '){
			if (time==0) time++;
			else if (time==1) 
			{
				kwlinestart = i;
				time++;
			}
			else if (time==2)
			{
				kwlineend = i;
				time++;
			}
			else if (time==3)
			{
				tablelinestart = i;
				time++;
			}
		}
		if (cmd[i]==';')
		{
			tablelineend = i;
			break;
		}
	}
	strncpy(tb,cmd+tablelinestart+1,tablelineend - tablelinestart-1);
	//printf("%d\n",strlen(tb));
	strcat(queryhead,tb);
	strcat(queryhead,querytail);
	//printf("%s\n", queryhead);
	strncpy(kw,cmd+kwlinestart+1,kwlineend - kwlinestart-1);
	

	char* result = search(kw);
	char delims[] = ",";
	char *r = NULL;
	char* idlist[100];
	//printf("%s\n", result);
	r = strtok(result, delims);
	int pos=0;
	while(r!= NULL )
	{
		char *str = malloc(sizeof(char)*strlen(queryhead));
		strcat(strcpy(str,queryhead),r); 
		//printf("result is \"%s\"\n", r);
		//strcat(queryhead,r);
		//strcat(queryhead,";");
		//printf("%s\n", queryhead);
		//idlist[pos]=r;
		//printf("%s\n", r);
		strcat(str,";");
		//printf("%s\n", str);
		interpreter(str);
		r=strtok(NULL,delims);
	}
	return 0;
}