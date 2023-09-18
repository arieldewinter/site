.PHONY: build serve prompt

build:
	hugo --minify

serve:
	hugo server -D

prompt:  # single word, hyphens for spaces
	@hugo new content blog/$(filter-out $@,$(MAKECMDGOALS)).md --kind prompt

post:  # single word, hyphens for spaces
	@hugo new content blog/$(filter-out $@,$(MAKECMDGOALS)).md

bookalert:  # single word, hyphens for spaces
	@hugo new content blog/$(filter-out $@,$(MAKECMDGOALS)).md --kind bookalert

# https://stackoverflow.com/a/6273809
# I'm electing to do this anyway because this isn't a software project and
# I am only passing single-word arguments into Make. If I need to convert this
# over to shell scripts, I can, but this is easier in the short-term.

%:
	@: