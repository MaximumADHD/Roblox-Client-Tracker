-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/beta/InlineParserState.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Scanner = require(Root.parser.beta.Scanner)

type Scanner = Scanner.Scanner

export type InlineParserState = {
	-- Return a scanner for the input for the current position (on the trigger character that the
	-- inline parser was added for).
	--
	-- Note that this always returns the same instance, if you want to backtrack you need to use
	-- Scanner.position and Scanner.setPosition.
	scanner: (self: InlineParserState) -> Scanner,
}

return {}
