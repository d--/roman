.PHONY: all clean check

all:
	$(MAKE) -C roman
	$(MAKE) -C rome_calc

clean:
	$(MAKE) clean -C roman
	$(MAKE) clean -C rome_calc

check:
	$(MAKE) check -C roman
	$(MAKE) check -C rome_calc

