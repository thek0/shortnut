.PHONY = init

NPM = pnpm

init:
	if [$(which $(NPM)) = "$(NPM) not found"]; then \
		npm install -g $(NPM); \
	fi

	$(NPM) install
	make -C app init
