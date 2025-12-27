# Omer Resume Template

A clean, one-page, two-column resume template built for **XeLaTeX** (Overleaf-friendly).  
This project is a **derivative work** based on **Deedy-Resume** and **Deedy-Resume-Reversed**.

---

## Table of Contents
- [Preview](#preview)
- [Getting Started](#getting-started)
- [Compile](#compile)
- [File Structure](#file-structure)
- [Customize](#customize)
- [Troubleshooting](#troubleshooting)
- [License](#license)
- [Credits](#credits)

---

## Preview
Add a preview image or compiled PDF link here.

- `resume.pdf` (compiled output)

---

## Getting Started

### Overleaf (Recommended)
1. Upload this repository (or the zip) as a new project.
2. Set compiler to **XeLaTeX**:  
   **Menu → Settings → Compiler → XeLaTeX**
3. Compile `main.tex`.

### Local
Install a TeX distribution:
- **TeX Live** (Linux/macOS)
- **MacTeX** (macOS)
- **MiKTeX** (Windows)

---

## Compile

### Overleaf
Just compile with **XeLaTeX**.

### Local (XeLaTeX + BibTeX)
```bash
xelatex main.tex
bibtex main
xelatex main.tex
xelatex main.tex
```

> Publications are driven by `publications.bib`. If you don’t need publications, you can remove the bibliography block from `main.tex`.

---

## File Structure

- `main.tex` — resume content (edit this)
- `syed-omer-shah-resume.cls` — custom resume class (layout + macros)
- `publications.bib` — BibTeX entries for publications
- `LICENSE` — Apache 2.0 license
- `NOTICE` — attribution & notices for derivative work

---

## Customize

### Name + Contact
Edit the `\namesection{...}{...}` block in `main.tex`.

### Add / Remove Sections
Sections are standard LaTeX blocks:
- `\section{Experience}`
- `\section{Research}`
- `\section{Projects}`
- `\section{Publications}`

### Project Links
Use:
```tex
\href{https://your-link}{\textbf{link}}
```

### Publications
Add entries to `publications.bib` and keep:
```tex
\nocite{*}
\bibliographystyle{unsrt}
\bibliography{publications}
```

---

## Troubleshooting

### `fontspec` requires XeTeX or LuaTeX
If you see:
> `Fatal Package fontspec Error: The fontspec package requires either XeTeX or LuaTeX`

Fix:
- Overleaf: set compiler to **XeLaTeX**
- Local: compile with `xelatex`, not `pdflatex`

### Weird list spacing
If list spacing looks inconsistent:
- Use **one** list style everywhere (`tightemize` or `itemize`)
- If using `itemize`, enable consistent spacing via `enumitem`, e.g.:
```tex
\usepackage{enumitem}
\setlist[itemize]{leftmargin=*, itemsep=2pt, topsep=2pt, parsep=0pt, partopsep=0pt}
```

---

## License
This project is licensed under the **Apache License 2.0**.

Because this template is a derivative work of Deedy-Resume and Deedy-Resume-Reversed, it includes:
- `LICENSE`
- `NOTICE`

Please keep attribution intact when redistributing.

---

## Credits
- Deedy-Resume — Debarghya Das  
- Deedy-Resume-Reversed — Zachary Taylor  
- Custom structure & modifications — Syed Omer Shah
