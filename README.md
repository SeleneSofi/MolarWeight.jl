# MolarWeight

This package contains a basic implementation for calculating
the molar weight from the molecular formula.

## Database

The package uses the IUPAC conventional values of the standard
atomic weight from their
[Periodic Table](https://iupac.org/what-we-do/periodic-table-of-elements/)
(dated 1 Dec 2018).
For the missing values, the most stable isotope ones were used, as in
[Standard Atomic Weight (Wikipedia)](https://en.wikipedia.org/wiki/Standard_atomic_weight).

## Install by:

```julia
] add https://github.com/SeleneSofi/MolarWeight.jl
```

## Elementary use:

For it to ask for molecular formula, you should use:

```julia
mw = MolarWeight.molarweight();
Enter molecular formula:
C6H12O6
180.156 g.mol⁻¹

mw
180.156
```

Or you can put the molecular formula as a string, using:

```julia
mw = MolarWeight.molarweight("C6H12O6")
180.156 g.mol⁻¹

mw
180.156
```

It displays the molar weight and also returns the number as a Float variable.
The function ignores non-letter and non-number characters and upper/lower case, and it sums
 repeated atoms, so:

```
c3-h6,c R4 h3 ==> c3h9cr4
```

The package does not support parenthesis or hydrate formulas yet; "(", ")" "." are ignored.
These should be implemented later.