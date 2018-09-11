#ifndef INVERT_FILE_H
#define INVERT_FILE_H
#include<stdio.h>
#include<stdlib.h>
 
typedef struct _invertfile_ {
    unsigned int tablelen;
    void **table;
    //unsigned int offset;	
	unsigned int nodecount;
 
}if_t;
typedef struct _word_{
	unsigned int id;
	unsigned int refered;//
	void *link;
}word_t;
typedef struct _word_frequency_{
	unsigned int d_id;
	unsigned int refered;//the num of referenced in the document
	void *next;
}wf_t;
 
if_t* invertfile_create(int length);
void invertfile_insert(if_t *h,int w_id,int d_id);
wf_t* invertfile_search(if_t *h,int w_id,int d_id);
void invertfile_traverse(if_t *h);
void invertfile_free(if_t *h);
#endif