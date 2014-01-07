CFLAGS = -O2 -Wall $(shell pkg-config --cflags gstreamer-1.0)
LDFLAGS = $(shell pkg-config --libs gstreamer-1.0)

all: app

clean:
	rm -f app

app: app.c
	$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)

