local Root = script:FindFirstAncestor("Markdown")
local NodeType = require(Root.Enums.NodeType)

local DefaultParserOptions = {
	inlineTags = {
		font = true,
		img = true,
	},
	nodeConfiguration = {
		["ROOT"] = {
			type = NodeType.Root,
		},
		["LIST_ITEM"] = {
			type = NodeType.TextBlock,
		},
		["PARAGRAPH"] = {
			type = NodeType.TextBlock,
		},
		["HEADING"] = {
			type = NodeType.TextBlock,
		},
		["STYLED_TEXT"] = {
			type = NodeType.InlineSpan,
		},
		["LINK"] = {
			type = NodeType.InlineSpan,
		},
		["IMAGE"] = {
			type = NodeType.InlineLeaf,
		},
		["ACTION"] = {
			type = NodeType.InlineLeaf,
		},
		["TABLE_DIVIDER"] = {
			type = NodeType.Block,
		},
		["TABLE_HEADER"] = {
			type = NodeType.Block,
		},
		["TABLE_HEADER_2"] = {
			type = NodeType.Block,
		},
		["TABLE"] = {
			type = NodeType.Block,
		},
		["TABLE_CELL"] = {
			type = NodeType.TextBlock,
		},
		["TABLE_ROW"] = {
			type = NodeType.Block,
		},
		["LIST"] = {
			type = NodeType.Block,
		},
		["TEXT"] = {
			type = NodeType.InlineLeaf,
		},
		["BREAK"] = {
			type = NodeType.InlineLeaf,
		},
		["LINE_BREAK"] = {
			type = NodeType.InlineLeaf,
		},
		["DIVIDER"] = {
			type = NodeType.Block,
		},
		["CODE_BLOCK"] = {
			type = NodeType.Block,
		},
		["QUOTE"] = {
			type = NodeType.TextBlock,
		},
	},
}

return DefaultParserOptions
