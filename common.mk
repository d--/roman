.PHONY: all check clean

CFLAGS = -Wall

SRCDIR := src
TESTDIR := test
BINDIR := bin

all: $(BINDIR)/tests

check: $(BINDIR)/tests
	$<

$(BINDIR)/tests: $(TESTDIR)/tests.c $(OBJS) | $(BINDIR)
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@ \
		$(shell pkg-config --cflags --libs check)

$(BINDIR):
	mkdir -p $(BINDIR)

$(OBJDIR)/%.o: $(SRCDIR)/%.c | $(OBJDIR)
	$(CC) $(CFLAGS) $(LDFLAGS) -c $< -o $@

$(OBJDIR)/%.o: $(TESTDIR)/%.c | $(OBJDIR)
	$(CC) $(CFLAGS) $(LDFLAGS) -c $< -o $@ \
		$(shell pkg-config --cflags check)

$(OBJDIR):
	mkdir -p $(OBJDIR)

clean:
	$(RM) -r $(OBJDIR) $(BINDIR)

