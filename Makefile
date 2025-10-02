.PHONY: deploy
deploy: generate commit-static

# clear extract commit-static

.PHONY: generate
generate: clear
	hugo -s promo

.PHONY: extract
extract:
	tar -xf tinygodsdev-files.tar --overwrite

.PHONY: commit-static
commit-static:
	git add . 
	git commit -m "static site updates $(shell date)"
	git push

.PHONY: clear
clear:
	rm -rf public/*
	touch public/.static
	rm -rf assets
	rm -rf authors
	rm -rf media
	rm -rf tags

.PHONY: run
run:
	hugo server -D -s promo
