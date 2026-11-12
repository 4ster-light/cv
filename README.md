# CV

ATS-friendly, single-column LaTeX CV in English and Spanish.

The layout is based on the widely used Jake's Resume structure, adapted for A4 and for the Spanish university context. It avoids multi-column layouts, tables, icons, photos, and text boxes, so the PDF text is parsed in a predictable order. The class enables pdfTeX Unicode mapping for reliable text extraction.

## Files

- `ats-resume.cls` - shared ATS-friendly layout class
- `David_Vivar_Bogonez_CV_EN.tex` - English CV source
- `David_Vivar_Bogonez_CV_ES.tex` - Spanish CV source
- `David_Vivar_Bogonez_CV_EN.pdf`, `David_Vivar_Bogonez_CV_ES.pdf` - compiled PDFs

## Build

The build does not use `make`. Compile each document directly with pdfTeX from the repository root:

```sh
pdflatex David_Vivar_Bogonez_CV_EN.tex
pdflatex David_Vivar_Bogonez_CV_ES.tex
```

Run the commands a second time on a clean checkout, or after changing hyperlinks, so that hyperref can write the final bookmarks and metadata.

The Spanish source uses Babel's `provide=*` mechanism, so use a current TeX Live version (or Overleaf).

Each PDF is generated next to its source using the same base name (for example, `David_Vivar_Bogonez_CV_EN.tex` produces `David_Vivar_Bogonez_CV_EN.pdf`).

### TeXstudio

Open either `.tex` file in TeXstudio and use Build & View (`F5`). TeXstudio calls the system `pdflatex`, so no extra configuration is needed. Intermediate files such as `.aux`, `.log`, `.out`, and `.synctex.gz` are ignored by Git; only the sources, class file, and final PDFs are tracked.

## ATS notes

- Submit the PDF, not the `.tex` source.
- Keep the CV to one page until you have enough experience to justify a second.
- Tailor the summary, skills, and project bullets to the keywords in each job posting.
- No photo, columns, tables, icons, or graphics are used for content.
- Standard section headings are used: Summary/Profile, Education, Technical Skills, Certifications, Projects, and Languages (`Certificaciones`, `Proyectos`, and `Idiomas` in Spanish).
- Colored hyperlinks do not affect ATS parsing because the underlying text layer is unchanged.
- The education dates are set to `2025 -- Present` in English and `2025 -- Actualidad` in Spanish. Update them if needed.
- A phone number is intentionally omitted. Add one to the header if the application requires it.
