rexec = R CMD BATCH --no-save --no-restore

.PHONY : all
all : output/penguin_report.html

# Generates the penguin class file from R
output/penguin_class.csv : analysis/classify_penguins.R
	$(rexec) $< $(<D)/$(basename $(<F)).Rout

# Generates the penguin pairs image from R
output/penguin_pairs.png : analysis/plot_penguin.R
	$(rexec) $< $(<D)/$(basename $(<F)).Rout

# Runs the rendering of the quarto
output/penguin_report.html : analysis/penguin_report.qmd output/penguin_class.csv output/penguin_pairs.png
	quarto render $<
	mv $(<D)/$(@F) $@