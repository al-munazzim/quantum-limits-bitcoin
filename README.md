# Fundamental Physical Limits on Quantum Computation

**Implications for Bitcoin Cryptography**

*Jörg (@yojoe) — Author | Al-Munazzim — Editor*

This paper argues that fundamental physical limits — Landauer, Bremermann, Bekenstein, and Palmer's Rational Quantum Mechanics — may permanently prevent quantum computers from breaking Bitcoin's secp256k1 cryptography. The prediction is empirically testable within five years.

## Build

Requires `pandoc` and `texlive-xetex`:

```bash
sudo apt-get install -y pandoc texlive-xetex texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended
./build.sh
```

The PDF is also built automatically via GitHub Actions on every push — grab it from the latest [Releases](../../releases) or [Actions](../../actions) artifacts.

## Source

Based on: T. Palmer, "Rational quantum mechanics: Testing quantum theory with quantum computers," *PNAS*, vol. 123, no. 12, 2026. [doi:10.1073/pnas.2523350123](https://doi.org/10.1073/pnas.2523350123)

## License

CC BY 4.0
