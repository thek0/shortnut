.PHONY = init

init:
	if [$(which pnpm) = "pnpm not found"]; then \
		npm install -g pnpm; \
	fi
	make -C app init
