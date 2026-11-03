# CommonMark

A Luau port of [commonmark-java](https://github.com/commonmark/commonmark-java) 0.30.0 (`commonmark-parent-0.30.0`, `64037cf982f2b12a4a2fa1c5a75c6d3f4ab979bf`): a CommonMark 0.31.2 parser, its HTML renderer and the GFM strikethrough extension. With default options it passes every CommonMark spec example and the cmark and commonmark.js regression suites (ten regression examples through overrides that expect commonmark-java's output: Java's own BOM override plus nine Roblox-added ones). It has no Roblox-specific behavior; the Roblox profile lives in `Markdown` (`modules/markdown/src/Parsers/RobloxMarkdown/`).

Treat it as a black box: the code follows commonmark-java line by line, and every difference is marked in the source with a `-- PORT NOTE:` comment.

## Public API (`src/init.lua`)

```lua
local CommonMark = require(Packages.CommonMark)
local document = CommonMark.parse("# Hi\n", { includeSourceSpans = "BLOCKS" })
local html = CommonMark.renderHtml(document, { escapeHtml = true })
```

- `CommonMark.parse(source: string, options: ParseOptions?): Document`
- `CommonMark.renderHtml(document: Node, options: RenderOptions?): string` (any node renders with its children)

Each options table is read once, when it's first used, and the built parser or renderer is cached under the table's identity. Pass a new table to change options; mutating one has no effect.

| `ParseOptions` field | Default | Java equivalent |
|---|---|---|
| `extensions: { Extension }?` | none | `Parser.Builder.extensions`; applied first |
| `enabledBlockTypes: { string }?` | all of `BlockQuote`, `Heading`, `FencedCodeBlock`, `HtmlBlock`, `ThematicBreak`, `ListBlock`, `IndentedCodeBlock` | `enabledBlockTypes` |
| `enabledInlineTypes: { string }?` | all of `Code`, `HtmlInline`, `Autolink`, `Entity`, `BackslashEscape`, `Emphasis`, `Link`, `Image`, `HardLineBreak` | none (port addition) |
| `linkReferenceDefinitions: boolean?` | `true` | none (port addition) |
| `includeSourceSpans: ("NONE" \| "BLOCKS" \| "BLOCKS_AND_INLINES")?` | `"NONE"` | `includeSourceSpans` |
| `maxOpenBlockParsers: number?` | 100 | `maxOpenBlockParsers` |
| `maxInlineNesting: number?` | 100 | `maxInlineNesting` |

| `RenderOptions` field | Default |
|---|---|
| `extensions: { Extension }?` | none; applied first |
| `softbreak: string?` | `"\n"` |
| `escapeHtml: boolean?` | `false` |
| `sanitizeUrls: boolean?` | `false` |
| `percentEncodeUrls: boolean?` | `false` |

Unknown block or inline type names raise. The full doc comments are on the builder methods in `src/parser/Parser.lua` and `src/renderer/html/HtmlRenderer.lua`.

**Value namespaces** mirror commonmark-java's exported packages. They are frozen (the modules in them are not). `src/ApiSurface.test.lua` pins the exact keys and the freezing.

**Loading:** parsing runs none of the HTML renderer (`src/renderer/**`, `src/internal/renderer/**`, the strikethrough HTML node renderer). It loads on the first `renderHtml`, an extension's `extendHtmlRenderer`, or the first access to `Renderer.Html.DefaultUrlSanitizer`. Generalized iteration over `Renderer.Html` loads and lists both members; `pairs` and `next` see only `LinkedHashMap`, because a frozen table can't store the loaded member. Renderer types reach the parse path through `src/internal/port/RendererTypes.lua`, which never runs. `src/RequireCost.test.lua` traces this.

| Namespace | Members |
|---|---|
| `CommonMark.Node` | `AbstractVisitor`, `CustomBlock`, `CustomNode`, `Nodes`, `SourceSpan`, `SourceSpans` |
| `CommonMark.Parser` | `SourceLine`, `SourceLines` |
| `CommonMark.Parser.Beta` | `LinkResult`, `ParsedInline`, `Scanner` |
| `CommonMark.Parser.Block` | `AbstractBlockParser`, `BlockContinue`, `BlockStart` |
| `CommonMark.Parser.Delimiter` | `EmphasisLikeDelimiterProcessor` (port addition) |
| `CommonMark.Renderer.Html` | `DefaultUrlSanitizer`, `LinkedHashMap` |
| `CommonMark.Text` | `AsciiMatcher`, `Characters` |
| `CommonMark.Ext.Gfm.Strikethrough` | `StrikethroughExtension` |
| `CommonMark.Internal` | `AutolinkInlineParser`, `BlockQuoteParser`. **Unstable**: outside the public surface |

**Types** are flat at the top level (`CommonMark.Node`, `CommonMark.Heading`, `CommonMark.BlockParser`, `CommonMark.ParseOptions`, ...), because Luau exports types only at module level. Node kinds are told apart by `node.kind == "Heading"`, not by class.

**Extensions** are tables `{ extendParser: ((ParserBuilder) -> ())?, extendHtmlRenderer: ((HtmlRendererBuilder) -> ())? }` (`src/Extension.lua`). They register block parser factories, inline content parser factories, delimiter processors, link processors, post-processors and node renderers on the builders, as in Java.

## Public surface

Everything `src/ApiSurface.test.lua` pins except `CommonMark.Internal`: `parse`, `renderHtml` and the value namespaces above, with what they carry. That is the options fields and defaults, the public methods and fields of the exported modules, the flat types in `src/init.lua`, and the output for a given input and options. `CommonMark.Internal` and any module reached by path instead of through `src/init.lua` are unstable.

## Versioning

Semver from 0.1.0. Every change to the public surface gets an entry in [CHANGELOG.md](CHANGELOG.md).

- **Minor** (before 1.0; major after): a breaking change to the public surface (an export removed or renamed, a signature changed), or any behavior change: an upstream sync, a new default, a new deviation.
- **Patch**: fixes that bring the port back to commonmark-java's behavior, and additive changes that don't change behavior (a new export, an option whose default keeps the old behavior).

## Package contents

- `src/`: one module per Java class at its Java package path (`parser/beta/Scanner.lua`). `src/internal/port/` holds Roblox-written helpers with no Java counterpart; `src/internal/data/` holds generated Unicode and HTML-entity tables.
- Not published (`rotriever.toml` `files`): `*.test.lua`, `src/__fixtures__/`, `src/test/`, `src/testutil/`, `.luaurc`.

## Docs

- [docs/changing-core-behavior.md](docs/changing-core-behavior.md): the decision rule for changing behavior, the conformance suites and ratchet, the fixture tools, the upstream-sync checklist and the gate commands. Start here.
- [docs/porting-from-java.md](docs/porting-from-java.md): how Java maps to Luau, the PORT NOTE convention and the review checklist.
- [docs/java-inventory.md](docs/java-inventory.md): every Java file in scope, its layer, size and dependencies.

## License

Ported files are BSD-2-Clause, Copyright (c) 2015, Robin Stocker; see `LICENSE-commonmark-java`. The data tables in `src/internal/data/` carry their own attribution headers (Unicode, see `LICENSE-unicode`; WHATWG).

[NOTICE.md](NOTICE.md) lists every third-party source, its license, the files it covers and whether they ship. It's generated from the repository's `third-party.toml` by `scripts/check-attributions --write-notice`.
