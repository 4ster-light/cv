# CV

ATS-friendly, single-column LaTeX CV in English and Spanish.

The layout is based on the widely used Jake's Resume structure, adapted for A4 and for the Spanish university context. It avoids multi-column layouts, tables, icons, photos, and text boxes, so the PDF text is parsed in a predictable order. The class enables pdfTeX Unicode mapping for reliable text extraction.

## Files

- `ats-resume.cls` - shared ATS-friendly layout class
- `cv-en.tex` - English CV
- `cv-es.tex` - Spanish CV
- `Makefile` - builds both PDFs

## Build

```sh
make
```

Or compile directly:

```sh
pdflatex cv-en.tex
pdflatex cv-es.tex
```

The Spanish file uses Babel's `provide=*` mechanism, so use a current TeX Live or Overleaf version.

The resulting PDFs are `David_Vivar_Bogonez_CV_EN.pdf` and `David_Vivar_Bogonez_CV_ES.pdf`.

## ATS notes

- Submit the PDF, not the `.tex` source.
- Keep the CV to one page until you have enough experience to justify a second.
- Tailor the summary, skills, and project bullets to the keywords in each job posting.
- No photo, columns, tables, icons, or graphics are used for content.
- Standard section headings are used: Summary/Profile, Education, Technical Skills, Projects, Languages.
- Colored hyperlinks do not affect ATS parsing because the underlying text layer is unchanged.
- The education dates are set to `2025 -- Present` in English and `2025 -- Actualidad` in Spanish. Update them if needed.
- A phone number is intentionally omitted. Add one to the header if the application requires it.
