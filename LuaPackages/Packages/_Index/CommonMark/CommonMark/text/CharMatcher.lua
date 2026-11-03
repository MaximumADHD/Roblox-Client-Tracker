-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/text/CharMatcher.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

-- Matches on byte values only, so like Java's `char` version it can't see whole multi-byte
-- characters.
export type CharMatcher = {
	matches: (self: any, c: number) -> boolean,
}

return {}
