local Root = script:FindFirstAncestor("Markdown")
local NodeType = require(Root.Enums.NodeType)

local testCases = {
	{
		name = "incomplete code block",
		markdown = [==[
# Assistant Response

Here's some code that I am in middle of writing:

```lua
-- factorial function
function fact(n)
  if n == 0 then
    -- comment
    return 1
  else
    return n * fact(n-1)]==],
		ast = {
			name = "ROOT",
			type = NodeType.Root,
			index = 1,
			offset = 1,
			children = {
				{
					index = 1,
					name = "HEADING",
					type = NodeType.TextBlock,
					offset = 0,
					attributes = {
						depth = 1,
					},
					children = {
						{
							children = {},
							index = 1,
							name = "TEXT",
							type = NodeType.InlineLeaf,
							offset = 2,
							text = "Assistant Response",
						},
					},
				},
				{
					index = 2,
					name = "PARAGRAPH",
					type = NodeType.TextBlock,
					offset = 22,
					children = {
						{
							children = {},
							index = 1,
							name = "TEXT",
							type = NodeType.InlineLeaf,
							offset = 22,
							text = "Here's some code that I am in middle of writing:",
						},
					},
				},
				{
					index = 3,
					name = "CODE_BLOCK",
					type = NodeType.Block,
					offset = 72,
					attributes = {
						language = "lua",
					},
					children = {},
					text = [[-- factorial function
function fact(n)
  if n == 0 then
    -- comment
    return 1
  else
    return n * fact(n-1)]],
				},
			},
		},
	},
	{
		name = "incomplete inline code",
		markdown = [==[Here's some `inline code that doesn't have an end]==],
		ast = {
			name = "ROOT",
			type = NodeType.Root,
			index = 1,
			offset = 1,
			children = {
				{
					name = "PARAGRAPH",
					type = NodeType.TextBlock,
					index = 1,
					offset = 0,
					children = {
						{
							name = "TEXT",
							type = NodeType.InlineLeaf,
							index = 1,
							offset = 0,
							text = "Here's some ",
							children = {},
						},
						{

							name = "STYLED_TEXT",
							type = NodeType.InlineSpan,
							index = 2,
							offset = 13,
							attributes = {
								style = "INLINE_CODE",
							},
							children = {
								{
									name = "TEXT",
									type = NodeType.InlineLeaf,
									index = 1,
									offset = 14,
									text = "inline code that doesn't have an end",
									children = {},
								},
							},
						},
					},
				},
			},
		},
	},
	{
		name = "overlapping styles",
		markdown = [==[Here's some *styling _like* this_ with overlapping styles]==],
		ast = {
			name = "ROOT",
			type = NodeType.Root,
			index = 1,
			offset = 1,
			children = {
				{
					index = 1,
					offset = 0,
					name = "PARAGRAPH",
					type = NodeType.TextBlock,
					children = {
						{
							index = 1,
							children = {},
							name = "TEXT",
							type = NodeType.InlineLeaf,
							offset = 0,
							text = "Here's some ",
						},
						{
							index = 2,
							children = {
								{
									index = 1,
									children = {},
									name = "TEXT",
									type = NodeType.InlineLeaf,
									offset = 14,
									text = "styling _like",
								},
							},
							attributes = {
								style = "BOLD",
							},
							name = "STYLED_TEXT",
							type = NodeType.InlineSpan,
							offset = 13,
						},
						{
							index = 3,
							children = {},
							name = "TEXT",
							type = NodeType.InlineLeaf,
							offset = 28,
							text = " this_ with overlapping styles",
						},
					},
				},
			},
		},
	},
}

return testCases
