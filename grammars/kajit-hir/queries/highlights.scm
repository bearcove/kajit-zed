[
  "{"
  "}"
  "["
  "]"
  "("
  ")"
] @punctuation.bracket

[
  ","
  ":"
  "::"
  "="
  "<"
  ">"
  "&"
  "-"
] @operator

(string) @string
(number) @number
(extern_symbol) @function

((identifier) @keyword
 (#any-of? @keyword
  "hir_module"
  "regions"
  "stores"
  "types"
  "callables"
  "functions"
  "function"
  "params"
  "locals"
  "return"
  "scopes"
  "scope"
  "parent"
  "none"
  "comment"
  "body"
  "init"
  "assign"
  "if"
  "else"
  "loop"
  "break"
  "continue"
  "return"
  "field"
  "binary"
  "call"
  "variant"
  "struct"
  "enum"
  "size"
  "transparent"
  "intrinsic"
  "effect"
  "domains"
  "control"
  "capabilities"
  "safety"
  "docs"
  "param"
  "temp"
  "destination"
  "host"
  "builtin"
  "reads"
  "mutates"
  "may_fail"
  "pure"
  "true"
  "false"
  "unit"
  "bool"))

((identifier) @function
 (#match? @function "^f[0-9]+$"))

((identifier) @type
 (#match? @type "^t[0-9]+$"))

((identifier) @variable
 (#match? @variable "^l[0-9]+$"))

((identifier) @constant
 (#match? @constant "^sc[0-9]+$"))
