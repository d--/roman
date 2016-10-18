OBJDIR := build

ROMAN_SRC := ../roman/src
$(OBJDIR)/%.o: $(ROMAN_SRC)/%.c | $(OBJDIR)
	$(CC) $(CFLAGS) $(LDFLAGS) -c $< -o $@

OBJS := $(addprefix $(OBJDIR)/,\
	\
	roman.o \
	roman_err.o \
	rome_calc.o \
	rome_calc_err.o \
	rome_calc_check.o \
	rome_calc_err_check.o )

include ../common.mk

