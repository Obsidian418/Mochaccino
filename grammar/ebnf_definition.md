# EBNF Definition
This file clarifies the syntax of the Extended Backus-Naur Form (EBNF) metalanguage used to denote Mochaccino's grammar rules.

## Option
Symbol: `|`

Example:
```js
term =  "A" | "B"       // A or B
term2 = ("A" | "B") "C" // A or B, followed by C
```

## Repetition
Symbol: `term*` or `term+` or `term{6}`

Example:
```js
term =  "A"*         // A, repeated zero or more times
term2 = "B"+         // B, repeated at least once
term3 = ("A" "B"){6} // A followed by B, and the set is repeated exactly 6 times
```

## Grouping
Symbol: `(term1 term2)`

Example:
```js
term =  ("A" "B") | "C" // A followed by B, or just C
```

## Concatenation
Juxtaposition implicitly denotes concatenation.

## Terminals
The definitions for the following terminals are as such (RegEx expressions are included in some definitions):

- `NUMBER`: whole numbers of any number of digits, decimals are strictly not included 
    - `NUMBER = (1|2|3|4|5|6|7|8|9|0)*;`
- `STRING`: a line of unrestricted text enclosed in double or single quotes, whitespace allowed
    - `STRING = ('"' char* '"') | ("'" char* "'")`
    - `char` is known to be any character, uppercase or lowercase, number, symbol, or whitespace
- `TYPE`: a type literal which follows the same rules as `TEXT`
    - `TYPE = TEXT;`
- `TEXT`: an identifier-safe text which can include numbers (though not as the first character) and underscores, but not whitespaces
    - `TEXT = ["_"] {a-zA-Z} (NUMBER | [a-zA-z])*;`
