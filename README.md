# Lucky Sah LaTeX resume

This project contains an ATS-friendly LaTeX resume that follows the supplied Word document's layout, typography, and section order. Verified content appears in black; missing fields and fictional publication samples appear in red for review.

## Project layout

- `resume.tex` - self-contained resume source and design system
- `Lucky_Sah_Resume.pdf` - compiled review PDF
- `output/Lucky_Sah_Resume.pdf` - matching organized output copy
- `source-material/` - original Word resume and its original PDF export, preserved unchanged
- `build/` - disposable LaTeX build files

## Build

Open `resume.tex` in the Codex LaTeX editor for an editable source view and live PDF preview, or run:

```sh
make
```

The command writes the review PDF to `Lucky_Sah_Resume.pdf` and mirrors it under `output/`.

## Redlined filler

The source sets `\showfillertrue`, so missing contact details, dates, project outcomes, and competition details appear as red italic bracketed prompts. Both fictional publication samples also appear in red. These review fields are not presented as facts; other claims have been verified by the user and remain black.

For the final resume, replace verified prompts with real content and remove the filler wrapper. To temporarily hide every prompt, change this line in `resume.tex`:

```tex
\showfillertrue
```

to:

```tex
\showfillerfalse
```

Recompile after changing the toggle because hidden filler changes pagination.
