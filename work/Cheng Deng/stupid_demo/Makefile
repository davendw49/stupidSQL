CC = gcc
CFLAGS = -Wall -c
LFLAGS = -Wall
#DEBUG = -g
OBJS = BPlusTreeInt.o BPlusTreeFloat.o BPlusTreeStr.o BPlusTree.o RecordInt.o RecordFloat.o RecordStr.o Record.o keywordsearch.o audit.o main.o
OUTPUT = -lreadline -lncurses -o stupidSQL

all: test

test: $(OBJS)
	$(CC) $(LFLAGS) $(DEBUG) $(OBJS) $(OUTPUT)

BPlusTree.o: BPlusTree/BPlusTree.c BPlusTree/BPlusTree.h stupidSQL.h
	$(CC) $(CFLAGS) $(DEBUG) BPlusTree/BPlusTree.c

BPlusTreeInt.o: BPlusTree/BPlusTreeInt.c BPlusTree/BPlusTreeInt.h BPlusTree/BPlusTree.c BPlusTree/BPlusTree.h stupidSQL.h
	$(CC) $(CFLAGS) $(DEBUG) BPlusTree/BPlusTreeInt.c

BPlusTreeFloat.o: BPlusTree/BPlusTreeFloat.c BPlusTree/BPlusTreeFloat.h BPlusTree/BPlusTree.c BPlusTree/BPlusTree.h stupidSQL.h
	$(CC) $(CFLAGS) $(DEBUG) BPlusTree/BPlusTreeFloat.c

BPlusTreeStr.o: BPlusTree/BPlusTreeStr.c BPlusTree/BPlusTreeStr.h BPlusTree/BPlusTree.c BPlusTree/BPlusTree.h stupidSQL.h
	$(CC) $(CFLAGS) $(DEBUG) BPlusTree/BPlusTreeStr.c

Record.o: Record/Record.c Record/Record.h stupidSQL.h BPlusTree/BPlusTree.h
	$(CC) $(CFLAGS) $(DEBUG) Record/Record.c

RecordInt.o: Record/Record.h Record/RecordInt.c stupidSQL.h BPlusTree/BPlusTree.h BPlusTree/BPlusTreeInt.h
	$(CC) $(CFLAGS) $(DEBUG) Record/RecordInt.c

RecordFloat.o: Record/Record.h Record/RecordFloat.c stupidSQL.h BPlusTree/BPlusTree.h BPlusTree/BPlusTreeFloat.h
	$(CC) $(CFLAGS) $(DEBUG) Record/RecordFloat.c

RecordStr.o: Record/Record.h Record/RecordStr.c stupidSQL.h BPlusTree/BPlusTree.h BPlusTree/BPlusTreeStr.h
	$(CC) $(CFLAGS) $(DEBUG) Record/RecordStr.c

keywordsearch.o: keyword/keywordsearch.c keyword/keywordsearch.h stupidSQL.h interpreter.c  Record/Record.h BPlusTree/BPlusTree.h
	$(CC) $(CFLAGS) $(DEBUG) keyword/keywordsearch.c

audit.o: Audit/audit.h Audit/audit.c
	$(CC) $(CFLAGS) $(DEBUG) Audit/audit.c

main.o: main.c stupidSQL.h BPlusTree/BPlusTree.h interpreter.c
	$(CC) $(CFLAGS) $(DEBUG) main.c

clean:
	rm -f $(OBJS) stupidSQL

clean_audit:
	rm audit.txt
