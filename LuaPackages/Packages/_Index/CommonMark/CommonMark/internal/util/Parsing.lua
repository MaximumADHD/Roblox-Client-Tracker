-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/util/Parsing.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Parsing = {}

Parsing.CODE_BLOCK_INDENT = 4

function Parsing.columnsToNextTabStop(column: number): number
	-- Tab stop is 4
	return 4 - (column % 4)
end

return Parsing
