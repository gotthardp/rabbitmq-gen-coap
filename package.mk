RELEASABLE=true
APP_NAME:=gen_coap

UPSTREAM_GIT:=https://github.com/gotthardp/gen_coap.git
UPSTREAM_REVISION:=a0fc3cf6b2dc1fda2ca700b79441a852988a5e29
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
