-include $(shell curl -sSL -o .build-harness "https://raw.githubusercontent.com/russelltsherman/build-harness/master/templates/Makefile.build-harness"; echo .build-harness)

current_dir = $(shell pwd)

## load dependencies for this project
bootstrap: init-build-harness
	-ln -sv $(current_dir)/.tmux/ ~/
	-ln -sv $(current_dir)/.tmux.conf ~/
_PHONY: bootstrap
