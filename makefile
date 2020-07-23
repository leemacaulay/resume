# Convert yaml to json
resume.json : resume.yaml
	@echo "Converting yaml to json locally..."
	yq r -P -j $< > $@
	@echo "Converting yaml to json in GitHub gist..."
	yq r -P -j $< > c5ee2b24ec3d082f03ee773b91ce49b5/$@
	@echo "Complete."

pdf : resume.html
	@echo "Building pdf from resume.html..."
	wkhtmltopdf --viewport-size 1280x1024 --page-size A4 -T 0 -B 0 -L 0 -R 0 resume.html resume.pdf

clean :
	rm -f resume.json
