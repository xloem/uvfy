PREFIX=/usr/local

BINDIR=$(PREFIX)/bin
DATADIR=$(PREFIX)/share

UVFY_HOME=$(DATADIR)/uvfy
EXECUTABLES=uvfy


install: $(EXECUTABLES) scripts/* default/*
	install -m 555 -d "$(UVFY_HOME)"/scripts "$(UVFY_HOME)"/default
	install -m 555 -t "$(UVFY_HOME)"/scripts scripts/*
	install -m 555 -t "$(UVFY_HOME)"/default default/*
	install -m 555 $(EXECUTABLES) "$(BINDIR)"

uninstall:
	-cd "$(BINDIR)" && rm $(EXECUTABLES)
	-rm -rf "$(UVFY_HOME)"
