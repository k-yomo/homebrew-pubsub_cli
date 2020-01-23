
VERSION=v1.2.1
ZIP_FILE_NAME=pubsub_cli-${VERSION}.tar.gz

gen_hash:
	@wget -qO ${ZIP_FILE_NAME} https://github.com/k-yomo/pubsub_cli/archive/${VERSION}.tar.gz
	@echo "#########################"
	@echo "[pubsub_cli formula ${VERSION}]"
	@shasum -a 256 ${ZIP_FILE_NAME}
	@echo "#########################"
	@rm ${ZIP_FILE_NAME}

