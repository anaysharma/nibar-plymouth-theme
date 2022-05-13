DESTDIR?=/usr/share
# for legacy Plymouth
# DESTDIR=/lib

install:
	mkdir -p $(DESTDIR)/plymouth/themes
	cp -r nibar $(DESTDIR)/plymouth/themes
	sed -i 's|DESTDIR|$(DESTDIR)|g' $(DESTDIR)/plymouth/themes/nibar/nibar.plymouth

uninstall:
	rm -rf "$(DESTDIR)/plymouth/themes/nibar"
