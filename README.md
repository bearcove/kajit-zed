# kajit-zed

Zed language support for Kajit.

This minimal extension wires Kajit source files to `kajit lsp`:

- `.k-hir`
- `.k-asm`
- `.k-ir`
- `.k-mir`

The Tree-sitter grammar is intentionally empty. It exists only because Zed
requires every language package to ship a grammar, and it must not be used for
coloring or highlights.

All coloring comes from Kajit LSP semantic tokens. Enable semantic tokens in
Zed settings:

```json
{
  "languages": {
    "Kajit HIR": {
      "semantic_tokens": "full"
    },
    "Kajit ASM": {
      "semantic_tokens": "full"
    },
    "Kajit IR": {
      "semantic_tokens": "full"
    },
    "Kajit MIR": {
      "semantic_tokens": "full"
    }
  }
}
```
