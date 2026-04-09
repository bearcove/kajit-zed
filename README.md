# kajit-zed

Zed language support for Kajit.

This minimal extension wires Kajit source files to `kajit lsp`:

- `.k-hir`
- `.k-asm`
- `.k-ir`
- `.k-mir`

It includes a tiny Tree-sitter grammar only because Zed requires one; the
grammar is intentionally not used for highlighting.

To see semantic highlighting, enable semantic tokens in Zed settings:

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
