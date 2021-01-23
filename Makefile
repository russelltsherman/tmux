-include $(shell curl -sSL -o .build-harness "https://raw.githubusercontent.com/opsbot/build-harness/master/templates/Makefile.build-harness"; echo .build-harness)

current_dir = $(shell pwd)

## load dependencies for this project
bootstrap:
	make brew
	-ln -sv $(current_dir)/.tmux/ ~/
	-ln -sv $(current_dir)/.tmux.conf ~/
_PHONY: bootstrap
