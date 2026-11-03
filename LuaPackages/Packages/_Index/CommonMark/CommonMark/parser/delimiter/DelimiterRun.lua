-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/delimiter/DelimiterRun.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Text = require(Root.node.Text)

type Text = Text.Text

-- A delimiter run is one or more of the same delimiter character, e.g. `***`.
--
-- PORT NOTE: getOpeners and getClosers return Iterable<Text> in Java; here they return an array,
-- which is what Delimiter's subList results are.
export type DelimiterRun = {
	-- Whether this can open a delimiter.
	canOpen: (self: DelimiterRun) -> boolean,
	-- Whether this can close a delimiter.
	canClose: (self: DelimiterRun) -> boolean,
	-- The number of characters in this delimiter run (that are left for processing).
	length: (self: DelimiterRun) -> number,
	-- The number of characters originally in this delimiter run; at the start of processing, this
	-- is the same as length.
	originalLength: (self: DelimiterRun) -> number,
	-- The innermost opening delimiter, e.g. for `***` this is the last `*`.
	getOpener: (self: DelimiterRun) -> Text,
	-- The innermost closing delimiter, e.g. for `***` this is the first `*`.
	getCloser: (self: DelimiterRun) -> Text,
	-- Get the opening delimiter nodes for the specified length of delimiters. Length must be
	-- between 1 and length.
	--
	-- For example, for a delimiter run `***`, calling this with 1 would return the last `*`.
	-- Calling it with 2 would return the second last `*` and the last `*`.
	getOpeners: (self: DelimiterRun, length: number) -> { Text },
	-- Get the closing delimiter nodes for the specified length of delimiters. Length must be
	-- between 1 and length.
	--
	-- For example, for a delimiter run `***`, calling this with 1 would return the first `*`.
	-- Calling it with 2 would return the first `*` and the second `*`.
	getClosers: (self: DelimiterRun, length: number) -> { Text },
}

return {}
