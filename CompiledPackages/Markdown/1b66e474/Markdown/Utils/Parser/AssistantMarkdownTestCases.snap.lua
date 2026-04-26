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
			index = 1,
			offset = 1,
			children = {
				{
					index = 1,
					isBlock = true,
					name = "HEADING",
					offset = 0,
					attributes = {
						depth = 1,
					},
					children = {
						{
							children = {},
							index = 1,
							name = "TEXT",
							offset = 2,
							text = "Assistant Response",
						},
					},
				},
				{
					index = 2,
					name = "PARAGRAPH",
					offset = 22,
					children = {
						{
							children = {},
							index = 1,
							name = "TEXT",
							offset = 22,
							text = "Here's some code that I am in middle of writing:",
						},
					},
				},
				{
					index = 3,
					name = "CODE_BLOCK",
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
			index = 1,
			offset = 1,
			children = {
				{
					index = 1,
					offset = 0,
					name = "PARAGRAPH",
					children = {
						{
							children = {},
							index = 1,
							name = "TEXT",
							offset = 0,
							text = "Here's some ",
						},
						{
							children = {},
							index = 2,
							name = "INLINE_CODE",
							offset = 13,
							text = "inline code that doesn't have an end",
						},
					},
				},
			},
		},
	},
}

return testCases
