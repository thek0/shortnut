NPM = pnpm

.PHONY: init
init:
	if [$(which $(NPM)) = "$(NPM) not found"]; then \
		npm install -g $(NPM); \
	fi

	$(NPM) install
	make -C app init

.PHONY: app/dev
app/dev:
	make -C app dev
	$(NPM) nodemon

.PHONY: dev
dev:
	$(NPM) nodemon