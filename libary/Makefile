OBJDIR = ../lib
BUILDDIR = ../bin

OUTPUT = encrypto.a

rwildcard=$(foreach d,$(wildcard $(1:=/*)),$(call rwildcard,$d,$2) $(filter $(subst *,%,$2),$d))

CPPSRC = $(call rwildcard,./,*.cpp)
OBJS = $(patsubst %.cpp, $(OBJDIR)/%_$(OUTPUT).o, $(CPPSRC))

CFLAGS = -Iinclude
LDFLAGS = -r

CC = g++
ASM = nasm
LD = ld
AR = ar

$(OUTPUT): $(OBJS)
	@echo LD $^
	@$(LD) $(LDFLAGS) -o $(BUILDDIR)/$@.o $^
	@echo AR $(BUILDDIR)/$@.o
	@$(AR) rcs $(BUILDDIR)/$@ $(BUILDDIR)/$@.o

$(OBJDIR)/%_$(OUTPUT).o: %.cpp
	@echo "CPP $^ -> $@"
	@mkdir -p $(@D)
	@$(CC) $(CFLAGS) -c -o $@ $^

.PHONY: build