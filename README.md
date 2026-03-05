# Mastery in Shell Scripting: A Comprehensive Linux & Unix Bash Programming Guide

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Bash](https://img.shields.io/badge/Language-Bash%20Scripting-4EAA25.svg)](https://www.gnu.org/software/bash/)
[![Linux](https://img.shields.io/badge/Platform-Linux%20%7C%20Unix-blue.svg)](https://kernel.org)

Welcome to the **Shell Lab Project**—your ultimate repository for learning and mastering **Linux/Unix Shell Scripting** and **Bash Programming**. This collection features carefully curated, highly optimized, and bug-free shell scripts covering a wide range of computer science concepts, from basic arithmetic and loop structures to advanced string manipulation and system administration tasks.

Whether you are a beginner looking to understand the Linux command line or an advanced user seeking functional code snippets for string processing, conditional logic, or mathematical operations in Bash, this repository provides clear, modern, and practical examples.

## Key Features and Concepts Covered
Our extensive list of bash programs demonstrates best practices in shell scripting, emphasizing:
- **Core Linux Commands:** `bc`, `wc`, `sed`, `awk`, `date`, `rev`, `grep`
- **Control Structures:** Conditional statements (`if-else`), `case` menus
- **Iterative Logic:** `while` and `for` loops, nested loops
- **Text & String Manipulation:** Pattern matching, string comparison, and regex
- **Advanced Operations:** Floating-point arithmetic, array manipulations, and variable scoping

---

## List of Shell Scripting Examples

Explore our exhaustive index of Bash scripts specifically designed to teach critical programming constructs:

| Script Name | Aim & Purpose | Essential Linux/Bash Concepts Applied |
|-------------|---------------|---------------------------------------|
| `circle.sh` | **Calculate Area & Circumference of a Circle** | Area & circumference formula implementation, `bc` for floating-point math |
| `arithmetic.sh` | **Interactive Arithmetic Operations Menu** | `case` statement usage, interactive `while` loops, basic arithmetic |
| `largest.sh` | **Find the Largest of Three Numbers** | Conditional `if-else` blocks, relational operators, numerical comparison |
| `mean_variance.sh` | **Compute Mean & Variance** | Statistical modeling, `bc` with `scale`, variance derivation logic |
| `reverse.sh` | **Reverse an Integer** | `while` loop iterations, modulo `%` operations, integer division `/` |
| `primes.sh` | **Generate Prime Numbers** | Nested loop structures, divisibility checking using modulo |
| `fibonacci.sh` | **Generate Fibonacci Sequence** | Iterative number generation algorithms, temporary variable swapping |
| `armstrong.sh` | **Verify Armstrong Numbers** | Cubing mathematical digits, number accumulation logic |
| `palindrome.sh` | **Check for Palindrome Strings** | String reversal using `rev`, string equality and comparison operations |
| `word_count.sh`| **Count File Lines, Words, and Characters** | System utilities (`wc`), standard input redirection, basic file operations |
| `factorial.sh`| **Calculate Factorial Sequences** | Iterative reduction, variable multiplication handling, large number formatting |
| `salary.sh`| **Compute Employee Gross Salary** | Percentage-based calculations, handling floating-point currency approximations |
| `average.sh`| **Calculate Averages via Command Line Inputs** | CLI argument parsing (`$#`, `$@`), dynamic loops, terminal interaction |
| `greeting.sh`| **Dynamic Time-based Greeting Script** | `date` system command extraction, parsing hours, time-based dynamic logic |
| `vowels.sh`| **Count Vowels and Consonants in Text** | Rapid string parsing with `sed`, regular expression (regex) applications |

---

## How to Execute the Shell Scripts

To leverage these **Linux shell scripting examples** on your local Unix-like system (Linux, macOS, or WSL), follow these instructions:

1. **Clone the Repository**
   ```bash
   git clone https://github.com/Abisin-Raj/shell-lab.git
   cd shell-lab
   ```

2. **Grant Execution Permissions**
   Before running a bash script, you must temporarily modify its permissions to make it an executable file:
   ```bash
   chmod +x circle.sh
   # Or to make all scripts executable: chmod +x *.sh
   ```

3. **Run the Script**
   Execute the program via the terminal using the standard execution syntax:
   ```bash
   ./circle.sh
   # Alternatively, you can invoke bash directly:
   bash circle.sh
   ```

---

## Quality Assurance and Versioning Updates 

This repository enforces stringent code quality guidelines. Previous legacy versions (`Previous-ig` & `Current-ig`) were deprecated and overhauled to provide developers with standard-compliant code. The advantages of the current `Shell Lab` scripts include:

- **Mathematical Accuracy:** Patched boundary condition errors (e.g., edge-cases in Factorial and Variance outputs).
- **Modern POSIX Syntax:** Leveraging `$((...))` arithmetic enclosures over outdated `expr` methods.
- **Robust Execution Formats:** Error-handled input validation and bullet-proof text parsing.
- **Standardized Documentation Headers:** Every single script initiates with clearly defined *Heading*, *Aim*, and expected *Output Structure* references to support optimal developer onboarding.

---

*(Keywords for search index generation: Linux Shell Scripting, Bash Programming Tutorial, Unix Terminal Commands, Automate Linux Tasks with code, Learn Bash Scripting examples, shell script math functions, Linux file manipulation scripts, shell control statements.)*
