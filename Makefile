ORIGINAL_PATH=/usr/share/gnome-shell/extensions/window-list@gnome-shell-extensions.gcampax.github.com

default:
	bash scripts/build.sh

install:
	cp -r dist/* $(ORIGINAL_PATH)/

bootstrap:
	bash scripts/bootstrap.sh

backup:
	cp -r $(ORIGINAL_PATH) backup/

recover:
	cp -r backup/* $(ORIGINAL_PATH)/

