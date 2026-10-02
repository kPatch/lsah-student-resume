# Lucky Sah LaTeX resume

This project contains a newly designed, ATS-friendly LaTeX resume based on the factual content in the supplied Word document. The Word layout was not reused.

## Project layout

- `resume.tex` - self-contained resume source and design system
- `output/Lucky_Sah_Resume.pdf` - compiled review PDF
- `source-material/` - original Word resume and its original PDF export, preserved unchanged
- `build/` - disposable LaTeX build files

## Build

Open `resume.tex` in the Codex LaTeX editor for an editable source view and live PDF preview, or run:

```sh
make
```

The command writes the review PDF to `output/Lucky_Sah_Resume.pdf`.

## Redlined filler

The source sets `\showfillertrue`, so all missing details and suggested impact metrics appear in red. Each prompt is explicitly labeled `FILLER` and is not presented as a fact.

For the final resume, replace verified prompts with real content and remove the filler wrapper. To temporarily hide every prompt, change this line in `resume.tex`:

```tex
\showfillertrue
```

to:

```tex
\showfillerfalse
```

Recompile after changing the toggle because hidden filler changes pagination.
