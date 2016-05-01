CP=cp
CHMOD=chmod +x

DST:=/usr/local/bin
SRCS=$(wildcard bin/*)
DSTS=$(subst bin,$(DST),$(SRCS))

BOLD=\033[1m
NORMAL=\033[0m

.PHONY: install

$(DST)/%: $(SRCS)
	@$(CP) $^ $(DST)
	@$(CHMOD) $@

install: $(DSTS)
	@echo
	@echo "org was installed to $(BOLD)$(DST)$(NORMAL)"
	@echo "execute $(BOLD)org --help$(NORMAL) for more information"
	@echo

uninstall:
	$(RM) $(DSTS)
