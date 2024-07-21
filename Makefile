.PHONY: deploy
deploy: 
	git push dokku main

# clear extract commit-publii

.PHONY: extract
extract:
	tar -xf tinygodsdev-files.tar --overwrite

.PHONY: commit-publii
commit-publii:
	git add . 
	git commit -m "publii site updates $(shell date)"
	git push

.PHONY: clear
clear:
	rm -rf assets
	rm -rf authors
	rm -rf media
	rm -rf tags
