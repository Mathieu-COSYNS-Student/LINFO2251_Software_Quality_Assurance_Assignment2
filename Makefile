# LINFO2251 - Assignment 2: Buggy Hash Table
#
# Authors :
#		- Mathieu Cosyns - 86032100
#		- Brandon Ngoran Ntam - 41481800

BHT							:=	bht

CC							:=	gcc
CFLAGS						:=	-g#-pedantic -Wvla -Wall -Werror 
LDFLAGS						:=	-pthread

FLAGS						:=	$(CFLAGS) $(LDFLAGS)

PHONY						:=	all clean $(BHT)

all: $(BHT)

$(BHT): bht.c
	$(CC) $(FLAGS) -o $@ bht.c

clean:
	@$(RM) -rv $(BHT)

.PHONY = $(PHONY)