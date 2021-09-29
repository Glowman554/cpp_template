OBJDIR = ../lib
BUILDDIR = ../bin

OUTPUT = encrypto

rwildcard=$(foreach d,$(wildcard $(1:=/*)),$(call rwildcard,$d,$2) $(filter $(subst *,%,$2),$d))

CPPSRC = $(call rwildcard,./,*.cpp)
OBJS = $(patsubst %.cpp, $(OBJDIR)/%_$(OUTPUT).o, $(CPPSRC))

CFLAGS = -I ../libary/include -Iinclude
LDFLAGS = $(BUILDDIR)/encrypto.a.o

CC = g++
ASM = nasm
LD = g++
AR = ar

$(OUTPUT): $(OBJS)
	@echo LD $^
	@$(LD) $(LDFLAGS) -o $(BUILDDIR)/$@ $^

$(OBJDIR)/%_$(OUTPUT).o: %.cpp
	@echo "CPP $^ -> $@"
	@mkdir -p $(@D)
	@$(CC) $(CFLAGS) -c -o $@ $^

.PHONY: build