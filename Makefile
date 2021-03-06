VERSION := "v$$(cat buildpack.toml | grep -m 1 version | sed -e 's/version = //g' | xargs)"

#create a tgz should include the bin and ts source code(to be built to js)
package: clean
	@tar cvzf nodejs-sf-fx-buildpack-$(VERSION).tgz buildpack.toml bin/ middleware/*.ts middleware/*.json

clean:
	@rm -f nodejs-sf-fx-buildpack-$(VERSION).tgz
