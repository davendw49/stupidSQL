#include"invert.h"
int main(){
	if_t *f=invertfile_create(10);
	invertfile_insert(f,1,1);
	invertfile_insert(f,1,1);
	invertfile_insert(f,1,3);
	invertfile_insert(f,2,5);
	invertfile_traverse(f);
	invertfile_free(f);
}