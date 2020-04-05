
.PHONY: all
all:
	$(MAKE) -C lib/github.com/diku-dk/sml-setmap

.PHONY: clean
clean:
	$(MAKE) -C lib/github.com/diku-dk/sml-setmap clean
	rm -rf *~

.PHONY: test
test:
	echo 'todo'
