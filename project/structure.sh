#!/usr/bin/env #!/usr/bin/env bash

# first make the folders
mkdir -p bin
mkdir -p scripts
mkdir -p include
mkdir -p lib
mkdir -p doc
mkdir -p src/test

# now add the .gitignore
(
  echo "# .gitignore"
  echo "build/"
  echo "bin/"
  echo "lib/"
  echo ".DS_Store"
  echo "*.o"
  echo "*.d"
  echo "*.so"
  echo "*.a"
) > .gitignore

# code that writes the Makefile
(
  echo "CC := g++ # This is the main compiler"
  echo "# CC := clang --analyze # and comment out the linker last line for sanity"
  echo "SRCDIR := src"
  echo "BUILDDIR := build"
  echo "TARGET := bin/runner"
  echo "SRCEXT := cpp"
  echo "SOURCES := $(shell find $(SRCDIR) -type f -name *.$(SRCEXT))"
  echo "OBJECTS := $(patsubst $(SRCDIR)/%,$(BUILDDIR)/%,$(SOURCES:.$(SRCEXT)=.o))"
  echo "CFLAGS := -g -Wall -Werror -fPIC"
  echo "LIB := -pthread -Llib -lboost_thread-mt \\"
  echo "  -lboost_filesystem-mt -lboost_system-mt"
  echo "INC := -Iinclude"

  echo "$(TARGET): $(OBJECTS)"
  echo "  @echo \" Linking...\""
  echo "  $(CC) $^ -o $(TARGET) $(LIB)"
  echo "$(BUILDDIR)/%.o: $(SRCDIR)/%.$(SRCEXT)"
#   @mkdir -p $(BUILDDIR)
#   @echo " $(CC) $(CFLAGS) $(INC) -c -o $@ $<"; $(CC) $(CFLAGS) $(INC) -c -o $@ $<
#
# clean:
#   @echo " Cleaning...";
#   @echo " $(RM) -r $(BUILDDIR) $(TARGET)"; $(RM) -r $(BUILDDIR) $(TARGET)
#
# # Tests
# tester:
#   $(CC) $(CFLAGS) test/tester.cpp $(INC) $(LIB) -o bin/tester
#
# # Spikes
# ticket:
#   $(CC) $(CFLAGS) spikes/ticket.cpp $(INC) $(LIB) -o bin/ticket
#
# .PHONY: clean
clean:
  rm -rf *.o
) > Makefile
