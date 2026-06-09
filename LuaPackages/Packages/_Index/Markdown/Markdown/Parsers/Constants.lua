return {
	-- Containers can contain block elements like paragraphs
	CONTAINERS = {
		ROOT = true,
		TAG = true,
	},
	LISTS = {
		BULLET_LIST_ITEM = true,
		BULLET_LIST_ITEM_2 = true,
		ORDERED_LIST_ITEM = true,
	},
	-- These nodes can be included inside any paragraph or block element like a list
	INLINE_TEXT = {
		STYLED_TEXT = true,
		INLINE_CODE = true,
		LINK = true,
		IMAGE = true,
		ACTION = true,
		TABLE_DIVIDER = true,
		TABLE_HEADER = true,
		TABLE_HEADER_2 = true,
		TEXT = true,
		BREAK = true,
	},
	-- These nodes are outputted as plain text if not used in context (i.e. --- as a table divider)
	PLAIN_TEXT = {
		TEXT = true,
		TABLE_DIVIDER = true,
		TABLE_HEADER = true,
		TABLE_HEADER_2 = true,
	},
	-- These nodes are either outputted as text nodes or converted to richtext tags
	STYLED_TEXT = {
		BOLD = "b",
		BOLD_2 = "b",
		ITALIC = "i",
		ITALIC_2 = "i",
		STRIKE = "s",
	},
	DIVIDERS = {
		LINE_BREAK = true,
		DIVIDER = true,
	},
	ASCII = {
		WHITESPACE_PATTERN = "%s",
		PUNCTUATION_PATTERN = "[!/:;,_`|{}~<>=#&@'%%\"\\%$%(%)%*%+%-%.%?%[%]%^]",
	},
	UNICODE = require(script.Parent.UnicodeConstants),
}
