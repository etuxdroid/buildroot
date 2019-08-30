CC = gcc

MAINSRC = etd_therm.c
CFLAGS ?= -Wall -Wshadow -Wundef -Wmaybe-uninitialized -O3 -g0 -I$(LVGL_DIR)/
LDFLAGS ?= -lpthread
BIN = etd_therm

LVGL_DIR = ${shell pwd}
include ./lvgl/src/lv_core/lv_core.mk
include ./lvgl/src/lv_hal/lv_hal.mk
include ./lvgl/src/lv_objx/lv_objx.mk
include ./lvgl/src/lv_font/lv_font.mk
include ./lvgl/src/lv_misc/lv_misc.mk
include ./lvgl/src/lv_themes/lv_themes.mk
include ./lvgl/src/lv_draw/lv_draw.mk
include ./lvgl/src/lv_drivers/lv_drivers.mk
OBJEXT ?= .o

AOBJS = $(ASRCS:.S=$(OBJEXT))
COBJS = $(CSRCS:.c=$(OBJEXT))

MAINOBJ = $(MAINSRC:.c=$(OBJEXT))

SRCS = $(ASRCS) $(CSRCS) $(MAINSRC)
OBJS = $(AOBJS) $(COBJS)

## MAINOBJ -> OBJFILES

all: default

%.o: %.c
	@$(CC)  $(CFLAGS) -c $< -o $@
	@echo "CC $<"
default: $(AOBJS) $(COBJS) $(MAINOBJ)
	$(CC) -o $(BIN) $(MAINOBJ) $(AOBJS) $(COBJS) $(LDFLAGS)
clean:
	rm -f $(BIN) $(AOBJS) $(COBJS) $(MAINOBJ)
