emacs_dir := .config/emacs

all: .emacs

# '.emacs' contains all of my elisp files in 1 file
.emacs: $(emacs_dir)/*.el
	cat $(emacs_dir)/dotemacs_header $^ \
		$(emacs_dir)/dotemacs_footer \
		| sed "s/(load-file /;;(load-file /g" >.emacs

.DELETE_ON_ERROR:
.PHONY: clean

clean:
	rm .emacs
