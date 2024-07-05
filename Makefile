.PHONY: deploy
deploy: extract commit-publii
	git push dokku main

.PHONY: extract
extract:
	tar -xf tinygodsdev-files.tar --overwrite

.PHONY: commit-publii
commit-publii:
	git add . 
	git commit -m "site-updates"
