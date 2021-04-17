-include $(shell curl -sSL -o .build-harness "https://raw.githubusercontent.com/opsbot/build-harness/main/templates/Makefile.build-harness"; echo .build-harness)

current_dir = $(shell pwd)

## load dependencies for this project
bootstrap:
	make brew
	-ln -sfv $(current_dir)/.tmux/ ~/
	-ln -sfv $(current_dir)/.tmux.conf ~/
_PHONY: bootstrap
