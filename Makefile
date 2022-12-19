BINDIR = /usr/local/bin

help:          ## Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

install:       ## Install Target
	GOOS= GOARCH= GOARM= GOFLAGS= go build -o ${BINDIR}/_awswitch_prompt
	cp scripts/_awswitch ${BINDIR}/_awswitch
	@echo " -=-=--=-=-=-=-=-=-=-=-=-=-=-=- "
	@echo "                                "
	@echo "   To Finish Installation add   "
	@echo "                                "
	@echo "  alias awswitch=\"source _awswitch\"   "
	@echo "                                "
	@echo " to your bash profile or zshrc  "
	@echo "   then open new terminal or    "
	@echo "       source that file         "
	@echo "                                "
	@echo " -=-=--=-=-=-=-=-=-=-=-=-=-=-=- "

uninstall:     ## Uninstall Target
	rm -f ${BINDIR}/_awswitch
	rm -f ${BINDIR}/_awswitch_prompt
