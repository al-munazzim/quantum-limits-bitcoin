# Fundamental Physical Limits on Quantum Computation: Implications for Bitcoin Cryptography

**Jörg (@yojoe)**$^1$, **Al-Munazzim (Nazim)**$^2$ *(Editor)*

$^1$ Independent Researcher
$^2$ AI Research Agent, OpenClaw

**Date:** March 26, 2026

**Keywords:** quantum computing, Bitcoin, ECDSA, Shor's algorithm, Bekenstein bound, Bremermann limit, Landauer principle, Hilbert space discretization, RSA, cryptographic security

---

## Abstract

<div style="margin-left: 2em; margin-right: 2em; font-size: 0.9em;">

The security of Bitcoin and other cryptographic systems relies on the computational intractability of the elliptic curve discrete logarithm problem (ECDLP) and integer factorization. Shor's algorithm, executable on a sufficiently large quantum computer, theoretically solves both problems in polynomial time — posing an existential threat to current public-key cryptography. This paper presents a physical argument, grounded in fundamental information-theoretic limits of our universe, that this threat may be illusory. We first demonstrate that a classical parallel brute-force attack on 256-bit keys is physically impossible due to the Landauer principle, the Bremermann limit, the Bekenstein bound, and gravitational collapse. We then argue — drawing on Palmer's Rational Quantum Mechanics (RaQM) framework — that quantum computers face an analogous fundamental barrier: the physical universe may not support the phase resolution required for coherent quantum computation beyond approximately 1,000 qubits. Since Shor's algorithm cannot be decomposed into smaller sub-problems (no divide-and-conquer), this limit, if confirmed, would render quantum attacks on Bitcoin's secp256k1 cryptography permanently infeasible. This prediction is empirically testable within five years.

</div>

---

## Table of Contents

1. [Introduction](#introduction)
2. [Classical Limits: Why Brute Force Fails](#classical-limits-why-brute-force-fails)
   - [The Landauer Principle](#the-landauer-principle)
   - [The Bremermann Limit](#the-bremermann-limit)
   - [The Bekenstein Bound](#the-bekenstein-bound)
   - [Gravitational Collapse](#gravitational-collapse)
3. [The Quantum Promise: Shor's Algorithm](#the-quantum-promise-shors-algorithm)
4. [The Information-Theoretic Objection](#the-information-theoretic-objection)
   - [The Phase Resolution Problem](#the-phase-resolution-problem)
   - [Palmer's Rational Quantum Mechanics](#palmers-rational-quantum-mechanics)
   - [The Analogy to Classical Limits](#the-analogy-to-classical-limits)
5. [Why Quantum Error Correction Cannot Help](#why-quantum-error-correction-cannot-help)
6. [The Shor Algorithm's Achilles Heel: No Divide and Conquer](#the-shor-algorithms-achilles-heel-no-divide-and-conquer)
7. [Implications for Bitcoin](#implications-for-bitcoin)
8. [Testability](#testability)
9. [Conclusion](#conclusion)
10. [References](#references)

---

## Introduction

Since Shor's seminal 1994 paper demonstrating that quantum computers can factor large integers and compute discrete logarithms in polynomial time [1], the cryptographic community has grappled with the implications for public-key infrastructure. Bitcoin, which relies on the secp256k1 elliptic curve for transaction signing (256-bit ECDSA), is frequently cited as vulnerable to future quantum attacks [2].

Current estimates suggest that breaking Bitcoin's cryptography would require on the order of 2,500 logical qubits running Shor's algorithm, translating to millions of physical qubits when error correction overhead is included [3, 4]. While no quantum computer of this scale exists today, the trajectory of quantum hardware development has prompted proposals for "quantum-resistant" cryptographic migrations.

This paper argues that such concerns may be fundamentally misplaced — not because of engineering limitations, but because the physical structure of the universe imposes hard limits on quantum computation that cannot be overcome by technological progress.

---

## Classical Limits: Why Brute Force Fails

Before examining quantum approaches, we establish that classical parallel computation faces insurmountable physical barriers when attacking 256-bit keys. Consider a hypothetical chip that tests all $2^{256}$ possible private keys simultaneously in a single clock cycle.

### The Landauer Principle

Every irreversible logical operation dissipates a minimum energy of $kT \ln 2$, where $k$ is Boltzmann's constant and $T$ is temperature [5]. For $2^{256}$ parallel operations at room temperature (300 K):

> $E_{\min} = 2^{256} \times kT \ln 2 \approx 2^{256} \times 2.87 \times 10^{-21}$ J

This yields approximately $3.3 \times 10^{56}$ joules — roughly 10% of the Sun's total energy output over its remaining 5-billion-year lifetime. A single clock cycle of our hypothetical chip would require more energy than most stars produce.

### The Bremermann Limit

Bremermann established that the maximum computational rate of any physical system is bounded by its mass-energy [6]:

> $R_{\max} = mc^2 / \hbar \approx 1.36 \times 10^{50}$ bits/s/kg

To perform $2^{256}$ operations per second, the required mass exceeds $10^{27}$ kg — comparable to the mass of Jupiter.

### The Bekenstein Bound

The Bekenstein bound limits the maximum information content of a finite region of space with finite energy [7]:

> $I_{\max} = \frac{2\pi R E}{\hbar c \ln 2}$

A device encoding $2^{256}$ distinguishable states within any physically realizable volume violates this bound, meaning the required information density is physically impossible.

### Gravitational Collapse

Concentrating the required mass-energy into a finite volume inevitably exceeds the Schwarzschild radius, forming a black hole [8]. The computation cannot complete because the physical substrate collapses before producing a result.

**Conclusion:** Classical brute-force attacks on 256-bit keys are not merely impractical — they are forbidden by fundamental physics. The only classical recourse is sequential computation (trading space for time), which requires millions of years.

---

## The Quantum Promise: Shor's Algorithm

Quantum computation appears to circumvent these limits through superposition and entanglement. Shor's algorithm for factoring an *n*-bit integer requires [1]:

- A phase register of approximately 2*n* qubits
- A work register of approximately *n* qubits
- Polynomial (not exponential) gate operations

For Bitcoin's 256-bit ECDSA keys, this translates to approximately $512 + 256 = 768$ logical qubits, plus substantial error correction overhead — realistic estimates place the requirement at several thousand logical qubits or millions of physical qubits [3, 4].

The apparent "magic" is that quantum superposition allows the algorithm to explore an exponentially large solution space using only a polynomially-sized register. The phase estimation step extracts the solution through constructive interference.

**The critical question:** Does the universe actually permit this?

---

## The Information-Theoretic Objection

### The Phase Resolution Problem

A system of $n$ entangled qubits spans a Hilbert space of $2^n$ dimensions. For Shor's algorithm to function, the quantum state must maintain coherent phase relationships across all these dimensions simultaneously.

For 1,000 qubits, the Hilbert space has $2^{1000}$ dimensions — a number vastly exceeding the estimated number of particles in the observable universe (${\sim}10^{80} \approx 2^{265}$). The algorithm requires the physical system to distinguish phase differences on the order of $1/2^{1000}$.

The question is whether any physical system of finite mass-energy, embedded in a universe with gravitational interactions, can actually support phase resolution of this precision.

### Palmer's Rational Quantum Mechanics

Palmer (2026) provides a formal framework for this intuition [9]. His Rational Quantum Mechanics (RaQM) proposes that:

1. **Hilbert space is discrete, not continuous.** Gravity imposes a discretization on the quantum state space. The bases in which quantum states are defined must satisfy rational-number constraints.

2. **Information capacity is finite.** For any $n$-qubit state, there exists a finite information capacity parameter $p$. The actual information content grows linearly with $n$ (as $n \times p$), while the continuum theory requires exponentially many degrees of freedom ($2^n$). For large $n$, the physical qubits cannot carry enough information to maintain the full quantum state.

3. **Standard QM is a singular limit.** Conventional quantum mechanics corresponds to $p \to \infty$ (the continuum limit). RaQM and QM are experimentally indistinguishable for small numbers of qubits but diverge at scale.

4. **Quantitative prediction.** Palmer estimates that *p* lies between 200 and 400 for current qubit technologies and will never exceed 1,000. Beyond this threshold, the exponential advantage of quantum algorithms saturates.

### The Analogy to Classical Limits

The relationship between RaQM and standard quantum mechanics mirrors the relationship between relativistic and Newtonian mechanics. Just as special relativity imposes the speed of light as an absolute limit on velocity — invisible at everyday speeds but dominant at high velocities — RaQM imposes an information-theoretic limit on quantum parallelism that is invisible for small qubit counts but dominant at scale.

| Physical Limit | Domain | What It Bounds |
|---|---|---|
| Speed of light (*c*) | Mechanics | Maximum velocity |
| Bremermann limit | Classical computation | Maximum computation rate per mass |
| Bekenstein bound | Information theory | Maximum information per volume-energy |
| Landauer principle | Thermodynamics | Minimum energy per logical operation |
| Palmer's *p*-parameter | Quantum computation | Maximum effective Hilbert space dimension |

Table 1: *Fundamental physical limits relevant to computation. All represent cases where the universe imposes absolute bounds that no engineering can circumvent.*

---

## Why Quantum Error Correction Cannot Help

A natural objection is that quantum error correction (QEC) can, in principle, maintain coherence indefinitely by encoding logical qubits in larger numbers of physical qubits [10]. Standard quantum mechanics guarantees that QEC can scale arbitrarily, given sufficient physical resources.

However, if Palmer's discretization is correct, QEC faces a fundamental — not technical — barrier. Error correction works by detecting and correcting deviations from the ideal quantum state. But if the ideal state (requiring $1/2^{1000}$ phase precision) is physically unrealizable, then:

1. The "errors" being corrected are not random perturbations but structural features of discrete Hilbert space.
2. Adding more physical qubits for error correction does not restore information that the universe cannot encode in the first place.
3. The system does not decohere in the traditional sense (interaction with environment) but rather exhibits what might be called **fundamental decoherence** — the quantum state simply cannot carry the required information.

The observable result: beyond the critical qubit count, measurement outcomes degrade from a peaked interference pattern (correct answer with high probability) into flat statistical noise, regardless of error correction quality.

---

## The Shor Algorithm's Achilles Heel: No Divide and Conquer

Classical algorithms, when confronted with problems too large to solve directly, can often be decomposed. Shor's algorithm cannot [1, 11]. The quantum Fourier transform at its heart requires the **entire** phase register to maintain coherence simultaneously. There is no way to:

- Factor the problem into independent sub-problems
- Run partial computations and combine results
- Trade time for space (as classical computers can)

This is the critical asymmetry. If a classical brute-force approach exceeds physical limits, one can always fall back to sequential computation — it takes longer, but it works. If Shor's algorithm exceeds the quantum coherence limit, there is **no fallback**. The algorithm either runs in full or not at all.

For Bitcoin's 256-bit ECDSA, the full algorithm requires well over 1,000 coherent logical qubits. If Palmer's limit holds, Shor's algorithm simply cannot produce a result for this problem size — not because of insufficient engineering, but because the universe does not permit it.

---

## Implications for Bitcoin

Bitcoin uses the secp256k1 elliptic curve for transaction signing. The security assumption is that deriving a private key from a public key (the ECDLP) is computationally intractable [2].

If the arguments presented here are correct:

1. **Classical attacks** are permanently infeasible due to Landauer, Bremermann, Bekenstein, and gravitational limits (Section 2).

2. **Quantum attacks** via Shor's algorithm are permanently infeasible if the universe imposes a hard limit on coherent quantum computation at ~1,000 qubits (Sections 4–6).

3. **No hybrid approach exists** because Shor's algorithm is indivisible — one cannot use quantum computation for part of the problem and classical computation for the rest.

4. **The threat model collapses.** Bitcoin's cryptographic security would rest not on the assumption that "quantum computers are hard to build" (an engineering claim, vulnerable to future breakthroughs) but on "the universe forbids the required computation" (a physical law, as permanent as the speed of light).

This would render the entire post-quantum cryptography migration for Bitcoin unnecessary — though prudent hedging remains reasonable until Palmer's prediction is empirically confirmed.

---

## Testability

Palmer predicts that the deviation between RaQM and standard QM becomes measurable as quantum computers scale toward 1,000 high-quality qubits [9]. The specific prediction:

> Quantum algorithms requiring maximal *n*-qubit superposition and entanglement will show diminishing returns as *n* approaches Palmer's *p*-parameter, with the exponential speedup saturating rather than continuing to scale.

Current quantum hardware (IBM, Google, Quantinuum) is approaching the 1,000-physical-qubit range. Within five years, experiments specifically designed to test whether quantum speedup continues to scale linearly with qubit count — or saturates — should be feasible.

A positive result (saturation observed) would constitute evidence for a new fundamental physical limit. A negative result (speedup continues scaling) would rule out RaQM and confirm that quantum threats to cryptography remain real.

---

## Conclusion

We have presented a physical argument — synthesizing classical information-theoretic limits with Palmer's Rational Quantum Mechanics — that quantum computers may face a fundamental, universe-imposed barrier to scaling beyond approximately 1,000 coherent qubits. If confirmed, this would permanently eliminate the quantum threat to Bitcoin's secp256k1 cryptography and to RSA-2048.

The argument is not that quantum computers are difficult to build (they are), nor that error correction is imperfect (it is), but that the physical universe may not support the information density required for large-scale quantum parallelism — just as it does not support faster-than-light travel or unlimited classical computation density.

This is an empirically testable claim. The next five years of quantum hardware development will either confirm a new fundamental limit of nature or demonstrate that the quantum threat to cryptography is real and imminent. Either outcome would be profound.

---

## References

[1] P. W. Shor, "Algorithms for quantum computation: discrete logarithms and factoring," *Proceedings 35th Annual Symposium on Foundations of Computer Science*, pp. 124–134, IEEE, 1994. doi: 10.1109/SFCS.1994.365700

[2] S. Nakamoto, "Bitcoin: A Peer-to-Peer Electronic Cash System," 2008. https://bitcoin.org/bitcoin.pdf

[3] M. Roetteler, M. Naehrig, K. M. Svore, and K. Lauter, "Quantum resource estimates for computing elliptic curve discrete logarithms," *Advances in Cryptology — ASIACRYPT 2017*, pp. 241–270, Springer, 2017. doi: 10.1007/978-3-319-70697-9_9

[4] C. Gidney, "How to factor 2048 bit RSA integers with less than a million noisy qubits," arXiv preprint arXiv:2505.15917, 2025. http://arxiv.org/abs/2505.15917

[5] R. Landauer, "Irreversibility and heat generation in the computing process," *IBM Journal of Research and Development*, vol. 5, no. 3, pp. 183–191, 1961. doi: 10.1147/rd.53.0183

[6] H. J. Bremermann, "Optimization through evolution and recombination," in *Self-Organizing Systems*, M. C. Yovits, G. T. Jacobi, and G. D. Goldstein, Eds., pp. 93–106, Spartan Books, 1962.

[7] J. D. Bekenstein, "Universal upper bound on the entropy-to-energy ratio for bounded systems," *Physical Review D*, vol. 23, no. 2, pp. 287–298, 1981. doi: 10.1103/PhysRevD.23.287

[8] R. Penrose, "Gravitational collapse and space-time singularities," *Physical Review Letters*, vol. 14, no. 3, pp. 57–59, 1965. doi: 10.1103/PhysRevLett.14.57

[9] T. Palmer, "Rational quantum mechanics: Testing quantum theory with quantum computers," *Proceedings of the National Academy of Sciences*, vol. 123, no. 12, e2523350123, 2026. doi: 10.1073/pnas.2523350123

[10] D. Gottesman, "An introduction to quantum error correction and fault-tolerant quantum computation," *Proceedings of Symposia in Applied Mathematics*, vol. 68, pp. 13–58, 2010. arXiv: 0904.2557

[11] R. Cleve, A. Ekert, C. Macchiavello, and M. Mosca, "Quantum algorithms revisited," *Proceedings of the Royal Society of London A*, vol. 454, pp. 339–354, 1998. doi: 10.1098/rspa.1998.0164

[12] L. Diósi, "Models for universal reduction of macroscopic quantum fluctuations," *Physical Review A*, vol. 40, pp. 1165–1174, 1989. doi: 10.1103/PhysRevA.40.1165

[13] R. Penrose, "On gravity's role in quantum state reduction," *General Relativity and Gravitation*, vol. 28, pp. 581–600, 1996. doi: 10.1007/BF02105068

[14] G. C. Ghirardi, A. Rimini, and T. Weber, "Continuous-spontaneous-reduction model involving gravity," *Physical Review A*, vol. 42, pp. 1057–1064, 1990. doi: 10.1103/PhysRevA.42.1057

---

*Manuscript received: March 26, 2026. This paper represents a synthesis of informal discussion and is not peer-reviewed. The arguments presented draw heavily on Palmer (2026) and on the physical intuitions developed by the first author.*
