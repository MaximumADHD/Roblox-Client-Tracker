# Markdown

Roblox components for markdown parsing and rendering.

## Overview

This module provides a complete markdown solution including a parser and renderer for displaying markdown content in Roblox experiences.

## Public surface

The exports of `src/init.lua`, values and types. Every change to them gets an entry in [CHANGELOG.md](CHANGELOG.md).

- **Stable:** `Components` (including `MarkdownViewer`), `Enums`, `Parsers` (`CommonMark`, `CommonMarkComplianceParser`, `RobloxMarkdown`, `WikiMarkdownParser`), `Utils`, `parse`, `safeParse`, `toRendererAst`, `parseOptions` (the Roblox profile), `Flags`, the renderer types (`Node`, `Context`, `RenderersType`, ...) and `ParserDocument`, `ParserNode`, `Mention`, `Underline`, `FormattingTag`, `FormattingTagText`. Stable also covers the renderer AST these parsers produce for a given input.
- **Temporary:** `MarkdownViewer`'s `ParserProfile` prop (`"RobloxMarkdown" | "CommonMark" | "Legacy"`) is temporary cutover config, not long-term API. It's honored only while `FFlagMarkdownUseRobloxProfileParser` or `FFlagMarkdownDefaultRobloxProfile` is on, and goes away when the cutover ends. `"Legacy"` keeps `CommonMarkComplianceParser`.
- **Beta:** `createParser`, `Adapter`, and the types `Parser`, `ParserConfig`, `Extension` and `Adapter*`. They may change in any release; the changelog lists the changes under *Beta*.
- **Leaving beta:** when one extension written outside this repo, or GFM tables, has been built on the adapter with no change to the beta API. Then the beta marks come off here, in `src/init.lua` and in [docs/extensions.md](docs/extensions.md), and the changelog records it.
- `Flags` is read once at require time through SafeFlags: `FFlagMarkdownUseRobloxProfileParser` (whether `MarkdownViewer` may parse with the profile its `ParserProfile` prop names) `FFlagMarkdownDefaultRobloxProfile` (whether a viewer with no `ParserProfile` parses with `Parsers.RobloxMarkdown` instead of `CommonMarkComplianceParser`; implies the prop is honored) and `FFlagMarkdownFormattingTags` (whether both profiles read the inline formatting tags `<b>`, `<i>`, `<u>`, `<s>`; [docs/roblox-profile.md](docs/roblox-profile.md#inline-formatting-tags)).

## Versioning

Markdown keeps its `1.0.0-alpha-N` line; each publish bumps N. The version doesn't encode compatibility, so the changelog lists breaking changes under *Breaking*. These count as breaking:

- removing or renaming a stable export, or changing its signature;
- a change to the renderer AST a stable parser produces for some input (node names, attributes, nesting): a profile rule change, a new default rule, or a CommonMark update that changes the output;
- a change to a flag's name or to what its values select.

`ParserProfile` is temporary: removing it, or changing which profile a value selects, is still listed under *Breaking*, with migration steps.

Not breaking: changes to the beta surface (listed under *Beta*), and fixes that bring a profile's output in line with its spec (listed under *Fixed*).

## Strikethrough

The CommonMark parser supports `~foo~` and `~~foo~~`. Both forms produce
`STYLED_TEXT` nodes with `attributes.style` set to `STRIKE`, so they share the
existing strikethrough renderer and custom `STYLED_TEXT` handling.

The WikiMarkdown parser supports only the existing single-tilde `STRIKE` delimiter.

## Adapter (beta)

`Markdown.createParser({ extensions, parserOptions })` builds a parser: CommonMark's parse, then an adapter from the CommonMark `Document` to the renderer AST. Extensions add parser syntax and adapter rules (`extendAdapter`). RobloxMarkdown (`Markdown.parse`, `Markdown.Parsers.RobloxMarkdown`) and CommonMark (`Markdown.Parsers.CommonMark`: plain CommonMark, plus the formatting tags under `FFlagMarkdownFormattingTags`) are two configurations of it. `parse(source, options?)` and `safeParse(source, options?)` take the old parser's options (`{ isStreaming }`) and hand them to the adapter as `ctx.options`. Beta (see *Public surface*): rule forms, context and pass names may change. The rule forms, context, passes and built-in rules are documented in [docs/extensions.md](docs/extensions.md).

## Docs

- [docs/architecture.md](docs/architecture.md): the layers (CommonMark, profiles, adapter, renderer AST, MarkdownViewer), the data flow, the renderer AST invariants, and where each kind of change goes.
- [docs/extensions.md](docs/extensions.md): writing an extension end to end (parser side, adapter rules, tests), with Underline and Mention as worked examples, and porting a commonmark-java extension.
- [docs/roblox-profile.md](docs/roblox-profile.md): the Roblox profile's rules, the spec pin and fixture, the profile suites and ratchet, the DeviationsManifest, the spec-move procedure, and the open decisions.
- CommonMark itself: [modules/commonmark/README.md](../commonmark/README.md).

## License

The Underline files and `Parsers/FormattingTags/FormattingTagHtmlNodeRenderer.lua` are adapted from commonmark-java (BSD-2-Clause, Copyright (c) 2015, Robin Stocker); see `LICENSE-commonmark-java`. [modules/commonmark/NOTICE.md](../commonmark/NOTICE.md) lists every third-party source in Markdown and CommonMark.
