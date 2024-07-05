.PHONY: deploy
deploy: clear extract commit-publii
	git push dokku main

.PHONY: extract
extract:
	tar -xf tinygodsdev-files.tar --overwrite

.PHONY: commit-publii
commit-publii:
	git add . 
	git commit -m "site-updates"
	git push

.PHONY: clear
clear:
	rm -rf assets
	rm -rf authors
	rm -rf media
	rm -rf tags
