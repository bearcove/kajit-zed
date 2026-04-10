module.exports = grammar({
  name: "kajit_hir",

  extras: $ => [
    /\s+/,
    $.line_comment,
    $.block_comment,
  ],

  rules: {
    source_file: $ => repeat($._token),

    _token: $ => choice(
      $.extern_symbol,
      $.identifier,
      $.number,
      $.string,
      $.punctuation,
    ),

    identifier: _ => token(/[A-Za-z_][A-Za-z0-9_]*/),

    extern_symbol: _ => token(/@[A-Za-z0-9_.]+/),

    number: _ => token(choice(
      /0x[0-9a-fA-F]+/,
      /[0-9]+/,
    )),

    string: _ => token(seq(
      '"',
      repeat(choice(
        /[^"\\\n]+/,
        /\\./,
      )),
      '"',
    )),

    punctuation: _ => token(choice(
      "::",
      "{",
      "}",
      "[",
      "]",
      "(",
      ")",
      "<",
      ">",
      ":",
      ",",
      "=",
      "@",
      "&",
      "-",
    )),

    line_comment: _ => token(seq("//", /.*/)),

    block_comment: _ => token(seq(
      "/*",
      repeat(choice(
        /[^*]+/,
        /\*+[^/*]/,
      )),
      /\*+\//,
    )),
  },
});
