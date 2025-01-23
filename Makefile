CC := ${CC}
CFLAGS := ${CFLAGS}
LDFLAGS := ${LDFLAGS}}
SRCS = $(wildcard *.c)
INCS = $(wildcard *.h)
OBJS = $(SRCS:.c=.o)

TARGET ?= ''

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $(TARGET)

install:
	install -d $(DEST_DIR)$(BIN_DIR)
	install -m 0755 $(TARGET) $(DEST_DIR)$(BIN_DIR)

clean:
	-rm $(filter-out $(SRCS) $(INCS), $(wildcard *.*))

allclean:
	-rm $(filter-out $(SRCS) $(INCS), $(wildcard *.*) $(TARGET))
