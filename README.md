# STAT 364: Weekly Solutions

R scripts and Quarto documents for my STAT 364 coursework at Portland State University.

**Author:** Diya Patel

## About

This repository holds my solutions for each week's lab and assignment. Each week lives in its own folder (`week1`, `week2`, ...) with the Quarto source (`.qmd`), any standalone R scripts (`.R`), and the rendered PDF.

## Repository Structure

```
stat364/
├── README.md
├── week1/
│   ├── (Quarto .qmd file)
│   ├── (R script, if any)
│   └── (rendered PDF)
├── week2/
│   └── ...
└── ...
```

Each week gets its own folder named `weekN`, where `N` is the week number.

## Topics Covered

| Week | Topic | Folder |
|------|-------|--------|
| 1 | Median-median line, least-squares regression, bootstrap resampling | `week1/` |
| 2 | _coming soon_ | `week2/` |

_(Update this table as new weeks are added.)_

## Requirements

- [R](https://www.r-project.org/) (4.x recommended)
- [RStudio](https://posit.co/download/rstudio-desktop/) or another editor with Quarto support
- [Quarto](https://quarto.org/docs/get-started/) (1.4 or newer for inline Python/Julia; R inline code works in all versions)
- A LaTeX distribution for PDF output. If you don't have one, run `quarto install tinytex` once.

R packages used so far:

```r
install.packages("openintro")
```

Datasets such as `mtcars` and `cars` ship with base R.

## How to Render

From the terminal, inside a week's folder (replace `file.qmd` with the actual file name):

```bash
cd week1
quarto render file.qmd             # renders to the format set in the YAML header
quarto render file.qmd --to pdf    # force PDF
```

Or open the `.qmd` file in RStudio and click **Render**.

To run just the R code, open the `.R` file and run it line by line, or from the terminal:

```bash
Rscript file.R
```

## Reproducibility

Anything involving random sampling (for example, bootstrap resampling) sets a seed with `set.seed()` so results are the same every time the document is rendered.

## Notes

These are my own solutions, posted for my records and reference. If you are currently taking this course, please follow your instructor's academic integrity policy.
