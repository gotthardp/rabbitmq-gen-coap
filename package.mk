RELEASABLE=true
APP_NAME:=gen_coap

UPSTREAM_GIT:=https://github.com/gotthardp/gen_coap.git
UPSTREAM_REVISION:=995cb738bb6204077b7e8ef41837a1ef1748a12b
RETAIN_ORIGINAL_VERSION:=true

ORIGINAL_APP_FILE:=$(CLONE_DIR)/src/gen_coap.app.src
DO_NOT_GENERATE_APP_FILE=true

# add auto-generated files
EBIN_BEAMS+=$(EBIN_DIR)/core_link_scanner.beam $(EBIN_DIR)/core_link_parser.beam

define package_rules
%.erl : %.xrl
	$(ERLC) -o $$(@D) $$<

%.erl : %.yrl
	$(ERLC) -o $$(@D) $$<
endef
