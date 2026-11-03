-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/IncludeSourceSpans.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

-- Whether to include SourceSpan or not while parsing, see Parser.Builder.includeSourceSpans.
export type IncludeSourceSpans = "NONE" | "BLOCKS" | "BLOCKS_AND_INLINES"

local IncludeSourceSpans = table.freeze({
	-- Do not include source spans.
	NONE = "NONE" :: "NONE",
	-- Include source spans on Block nodes.
	BLOCKS = "BLOCKS" :: "BLOCKS",
	-- Include source spans on block nodes and inline nodes.
	BLOCKS_AND_INLINES = "BLOCKS_AND_INLINES" :: "BLOCKS_AND_INLINES",
})

return IncludeSourceSpans
