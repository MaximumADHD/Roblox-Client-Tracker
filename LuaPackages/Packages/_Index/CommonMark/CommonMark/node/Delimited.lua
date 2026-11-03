-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/Delimited.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

-- PORT NOTE: node data getters become fields (porting-from-java.md, Nodes), so the interface's
-- getOpeningDelimiter()/getClosingDelimiter() are the openingDelimiter/closingDelimiter fields
-- that implementing kinds carry. Kinds whose Java constructor leaves the delimiter null
-- (`new Emphasis()`) leave the fields nil.
export type Delimited = {
	openingDelimiter: string?,
	closingDelimiter: string?,
}

return {}
