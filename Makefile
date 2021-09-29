OBJDIR = lib
BUILDDIR = bin

build:
	@echo "Building libary"
	@make -C libary

	@echo "Building src"
	@make -C src

setup:
	@mkdir $(BUILDDIR)
	@mkdir $(OBJDIR)

clean:
	@rm -r $(BUILDDIR)
	@rm -r $(OBJDIR)
	@mkdir $(BUILDDIR)
	@mkdir $(OBJDIR)

.PHONY: build