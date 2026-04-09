# kajit-zed

Zed language support for Kajit.

This minimal extension wires `.k-hir` files to `kajit lsp`. It does not
ship a deep grammar, but it does include a tiny Tree-sitter grammar because Zed
requires every language extension to declare one.

To see semantic highlighting, enable semantic tokens in Zed settings:

```json
{
  "languages": {
    "Kajit HIR": {
      "semantic_tokens": "full"
    }
  }
}
```
