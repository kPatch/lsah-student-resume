LATEXMK ?= latexmk
SOURCE := resume.tex
BUILD_DIR := build
OUTPUT_DIR := output
OUTPUT_PDF := Lucky_Sah_Resume.pdf
ARCHIVE_PDF := $(OUTPUT_DIR)/Lucky_Sah_Resume.pdf

.PHONY: all clean

all: $(OUTPUT_PDF) $(ARCHIVE_PDF)

$(OUTPUT_PDF): $(SOURCE) | $(BUILD_DIR)
	$(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error -outdir=$(BUILD_DIR) $(SOURCE)
	cp $(BUILD_DIR)/resume.pdf $(OUTPUT_PDF)

$(ARCHIVE_PDF): $(OUTPUT_PDF) | $(OUTPUT_DIR)
	cp $(OUTPUT_PDF) $(ARCHIVE_PDF)

$(BUILD_DIR) $(OUTPUT_DIR):
	mkdir -p $@

clean:
	$(LATEXMK) -C -outdir=$(BUILD_DIR) $(SOURCE)
