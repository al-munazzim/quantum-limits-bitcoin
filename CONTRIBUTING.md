# Contributing

We welcome contributions! This is a living document — corrections, additions, and improvements are encouraged.

## How to Contribute

1. **Fork** the repository
2. **Edit** `paper.md` (the single source of truth)
3. **Build locally** to verify: `./build.sh`
4. **Submit a PR** with a clear description of your changes

## What We're Looking For

- **Factual corrections** — wrong citations, inaccurate physics, logical errors
- **Additional references** — relevant papers, preprints, or data we missed
- **New sections** — complementary arguments, counterarguments, or experimental updates
- **Improved explanations** — clearer wording, better analogies, accessibility improvements
- **Translations** — if you'd like to translate the paper, open an issue first

## Style Guide

- Write in Markdown (the PDF is auto-generated via GitHub Actions)
- Use LaTeX math notation for formulas: `$E = mc^2$`
- Keep the scientific tone — precise but accessible
- Reference format: `[N]` inline, full citation in the References section
- Avoid Unicode superscripts/symbols — use LaTeX math instead

## Build Requirements

```bash
sudo apt-get install -y pandoc texlive-xetex texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended
./build.sh
```

## Authorship

Contributors who make substantial additions will be credited in the paper's acknowledgments section. For major contributions (new sections, significant analysis), co-authorship is possible — open an issue to discuss.

## License

By contributing, you agree that your contributions are licensed under CC BY 4.0.
