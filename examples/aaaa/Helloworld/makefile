CC=clang # or gcc

FRAMEWORKS:= -framework Foundation\
	 -framework UIKit\
	  -framework CoreGraphics
# UIKit.framework Foundation.framework CoreGraphics.framework
LIBRARIES:= -lobjc

SOURCE=main.m

CFLAGS=-Wall -Werror -g -v $(SOURCE)
LDFLAGS=$(LIBRARIES) $(FRAMEWORKS)
OUT=-o main

all:
	$(CC) $(CFLAGS) $(LDFLAGS) $(OUT)
