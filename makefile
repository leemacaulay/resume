# Convert yaml to json
resume.json : resume.yaml
	@echo "Converting yaml to json..."
	yq r -P -j $< > $@
	@echo "Complete."
clean :
	rm -f resume.json
