#--------------------------------------------------------------
# Makefile generated with cmak2.py version 2.6.0 (6/2014).
# Date: 12/1/2019 14:27:46
# Dirty port from Original cmak perl script by SixK
#--------------------------------------------------------------

PREFIX  = /usr/local
CFLAGS  = 
LDFLAGS = -lsfml-graphics -lsfml-system -lsfml-window

CC = g++
RM = rm -f
INSTALL_PROG = install -m 755 -s

EXE = main

OBJS = EntityManager.o pch.o SpaceInvaders1978.o StringHelpers.o Weapon.o Entity.o Game.o

ALL : $(EXE)

EntityManager.o : EntityManager.cpp
	$(CC) -c EntityManager.cpp $(CFLAGS) -o EntityManager.o

pch.o : pch.cpp
	$(CC) -c pch.cpp $(CFLAGS) -o pch.o

SpaceInvaders1978.o : SpaceInvaders1978.cpp
	$(CC) -c SpaceInvaders1978.cpp $(CFLAGS) -o SpaceInvaders1978.o

Game.o : Game.cpp
	$(CC) -c Game.cpp $(CFLAGS) -o Game.o

StringHelpers.o : StringHelpers.cpp
	$(CC) -c StringHelpers.cpp $(CFLAGS) -o StringHelpers.o

Weapon.o : Weapon.cpp
	$(CC) -c Weapon.cpp $(CFLAGS) -o Weapon.o

Entity.o : Entity.cpp
	$(CC) -c Entity.cpp $(CFLAGS) -o Entity.o

$(EXE) : $(OBJS)
	$(CC) $(OBJS) -o $(EXE) $(LDFLAGS)

	strip $(EXE)

uninstall :
	$(RM) $(PREFIX)/bin/$(EXE)

clean :
	$(RM) $(OBJS) $(EXE) $(DEBUG) $(EGYPT)
