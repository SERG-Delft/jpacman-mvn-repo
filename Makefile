FRAMEWORK=../jpacman-framework
LOCALREPO=$(FRAMEWORK)/target/mvn-repo

release:
	-cp -r $(LOCALREPO)/releases .

snapshot:
	-cp -r $(LOCALREPO)/snapshots .

local:
	cd $(FRAMEWORK); mvn clean deploy

all:
	$(MAKE) local snapshot release
