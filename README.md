# Portfolio — Riyad Cornu

Personal portfolio site, built as a single static page with plain HTML and CSS (no build step, no framework).

**Live:** https://batreverse.github.io/github-portfolio/

## Content

- Education timeline (CPGE, ENSEEIHT / N7 — ASR track)
- Skills ("Toolbox")
- Personal projects
- Career development & résumé
- International mobility
- Hobbies

## Stack

- HTML5 / CSS3 (custom properties, CSS Grid/Flexbox, `prefers-color-scheme` dark mode)
- [IBM Plex Mono / IBM Plex Sans](https://fonts.google.com/specimen/IBM+Plex+Mono) via Google Fonts
- Hosted on GitHub Pages

## Structure

```
index.html          # single-page site
style/style.css      # all styling
pdf/resume_en.pdf    # résumé, embedded in the Career section
```

## Run locally

No dependencies or build step needed:

```bash
python3 -m http.server 8000
```

Then open `http://localhost:8000` in a browser.
