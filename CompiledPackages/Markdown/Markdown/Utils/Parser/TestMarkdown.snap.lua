local markdown = [==[
# Heading with _italic_ text

\# Not a heading.

Some paragraph text with some *bold*, _italic_, ~strike~ text, and a `code *snippet_`.
Some basic content in the same paragraph.

Some basic content in a separate paragraph.

| Heading A | Heading B |
| --- | --- |
| Content A | Content B <br> with a newline |
| Content C | - |

## Code block

```lua
-- factorial function
function fact(n)
  if n == 0 then
    -- comment
    return 1
  else
    return n * fact(n-1)
  end
end

local foo = {}
for i=1, 10 do
  foo.bar = i
end

print("enter a number:")
a = io.read("*number")
print(fact(a))
```

---

Non-lua code block:

```ruby
class Integer
  def fact
    (1..self).reduce(:*) || 1
  end
end
```

### Really sub-heading with a [link](http://example.com)

1. Number list one
  a. Sub-list one with a [link](http://example.com)
  b. Sub-list *two*
2. Number list two
3. Number list three

===

- Bullet one
* Bullet two with an [[action]] and a [link](http://example.com)

Some
> quoted text

Some <div style="color: #fff">custom tag with a <span>span inside</span></div>.

<div>
  Multiline

  <b>bold text</b>

  * A list element with <span>a tag</span>.
</div>

An ![Image](rbxassetid://123456)

]==]

local ast = {
	children = {
		{
			attributes = {
				depth = 1,
			},
			children = {
				{

					name = "TEXT",
					offset = 2,
					text = "Heading with ",
				},
				{
					attributes = {
						style = "ITALIC",
					},
					children = {
						{

							name = "TEXT",
							offset = 17,
							text = "italic",
						},
					},
					name = "STYLED_TEXT",
					offset = 16,
				},
				{

					name = "TEXT",
					offset = 24,
					text = " text",
				},
			},
			isBlock = true,
			name = "HEADING",
			offset = 0,
		},
		{
			children = {
				{

					name = "TEXT",
					offset = 30,
					text = "# Not a heading.",
				},
			},
			name = "PARAGRAPH",
			offset = 30,
		},
		{
			children = {
				{

					name = "TEXT",
					offset = 49,
					text = "Some paragraph text with some ",
				},
				{
					attributes = {
						style = "BOLD",
					},
					children = {
						{

							name = "TEXT",
							offset = 81,
							text = "bold",
						},
					},
					name = "STYLED_TEXT",
					offset = 80,
				},
				{

					name = "TEXT",
					offset = 86,
					text = ", ",
				},
				{
					attributes = {
						style = "ITALIC",
					},
					children = {
						{

							name = "TEXT",
							offset = 89,
							text = "italic",
						},
					},
					name = "STYLED_TEXT",
					offset = 88,
				},
				{

					name = "TEXT",
					offset = 96,
					text = ", ",
				},
				{
					attributes = {
						style = "STRIKE",
					},
					children = {
						{

							name = "TEXT",
							offset = 99,
							text = "strike",
						},
					},
					name = "STYLED_TEXT",
					offset = 98,
				},
				{

					name = "TEXT",
					offset = 106,
					text = " text, and a ",
				},
				{

					name = "INLINE_CODE",
					offset = 119,
					text = "code *snippet_",
				},
				{

					name = "TEXT",
					offset = 135,
					text = [[.
Some basic content in the same paragraph.]],
				},
			},
			name = "PARAGRAPH",
			offset = 49,
		},
		{
			children = {
				{

					name = "TEXT",
					offset = 179,
					text = "Some basic content in a separate paragraph.",
				},
			},
			name = "PARAGRAPH",
			offset = 179,
		},
		{
			children = {
				{
					children = {
						{
							children = {
								{
									name = "TEXT",
									offset = 226,
									text = "Heading A",
								},
							},
							name = "TABLE_CELL",
							offset = 226,
						},
						{
							children = {
								{

									name = "TEXT",
									offset = 238,
									text = "Heading B",
								},
							},
							name = "TABLE_CELL",
							offset = 238,
						},
					},
					isBlock = true,
					name = "TABLE_HEADER",
					offset = 224,
				},
				{
					children = {
						{
							children = {
								{

									name = "TEXT",
									offset = 266,
									text = "Content A",
								},
							},
							name = "TABLE_CELL",
							offset = 266,
						},
						{
							children = {
								{

									name = "TEXT",
									offset = 278,
									text = "Content B ",
								},
								{
									name = "BREAK",
									offset = 289,
								},
								{
									name = "TEXT",
									offset = 293,
									text = " with a newline",
								},
							},
							name = "TABLE_CELL",
							offset = 278,
						},
					},
					isBlock = true,
					name = "TABLE_ROW",
					offset = 264,
				},
				{
					children = {
						{
							children = {
								{

									name = "TEXT",
									offset = 312,
									text = "Content C",
								},
							},
							name = "TABLE_CELL",
							offset = 312,
						},
						{
							children = {
								{

									name = "TEXT",
									offset = 324,
									text = "-",
								},
							},
							name = "TABLE_CELL",
							offset = 324,
						},
					},
					isBlock = true,
					name = "TABLE_ROW",
					offset = 310,
				},
			},
			name = "TABLE",
			offset = 224,
		},
		{
			attributes = {
				depth = 2,
			},
			children = {
				{

					name = "TEXT",
					offset = 332,
					text = "Code block",
				},
			},
			isBlock = true,
			name = "HEADING",
			offset = 329,
		},
		{
			attributes = {
				language = "lua",
			},

			name = "CODE_BLOCK",
			offset = 344,
			text = [[-- factorial function
function fact(n)
  if n == 0 then
    -- comment
    return 1
  else
    return n * fact(n-1)
  end
end

local foo = {}
for i=1, 10 do
  foo.bar = i
end

print("enter a number:")
a = io.read("*number")
print(fact(a))]],
		},
		{

			isBlock = true,
			name = "DIVIDER",
			offset = 595,
		},
		{
			children = {
				{

					name = "TEXT",
					offset = 600,
					text = "Non-lua code block:",
				},
			},
			name = "PARAGRAPH",
			offset = 600,
		},
		{
			attributes = {
				language = "ruby",
			},

			name = "CODE_BLOCK",
			offset = 621,
			text = [[class Integer
  def fact
    (1..self).reduce(:*) || 1
  end
end]],
		},
		{
			attributes = {
				depth = 3,
			},
			children = {
				{

					name = "TEXT",
					offset = 703,
					text = "Really sub-heading with a ",
				},
				{

					name = "LINK",
					offset = 730,
					text = "link",
					url = "http://example.com",
				},
			},
			isBlock = true,
			name = "HEADING",
			offset = 699,
		},
		{
			attributes = {
				depth = 0,
			},
			children = {
				{
					attributes = {
						depth = 0,
						prefix = "1",
					},
					children = {
						{

							name = "TEXT",
							offset = 760,
							text = "Number list one",
						},
					},
					isBlock = true,
					name = "LIST_ITEM",
					offset = 757,
				},
				{
					attributes = {
						depth = 2,
					},
					children = {
						{
							attributes = {
								depth = 2,
								prefix = "a",
							},
							children = {
								{

									name = "TEXT",
									offset = 781,
									text = "Sub-list one with a ",
								},
								{

									name = "LINK",
									offset = 802,
									text = "link",
									url = "http://example.com",
								},
							},
							isBlock = true,
							name = "LIST_ITEM",
							offset = 776,
						},
						{
							attributes = {
								depth = 2,
								prefix = "b",
							},
							children = {
								{

									name = "TEXT",
									offset = 833,
									text = "Sub-list ",
								},
								{
									attributes = {
										style = "BOLD",
									},
									children = {
										{

											name = "TEXT",
											offset = 844,
											text = "two",
										},
									},
									name = "STYLED_TEXT",
									offset = 843,
								},
							},
							isBlock = true,
							name = "LIST_ITEM",
							offset = 828,
						},
					},
					name = "LIST",
					offset = 776,
				},
				{
					attributes = {
						depth = 0,
						prefix = "2",
					},
					children = {
						{

							name = "TEXT",
							offset = 851,
							text = "Number list two",
						},
					},
					isBlock = true,
					name = "LIST_ITEM",
					offset = 848,
				},
				{
					attributes = {
						depth = 0,
						prefix = "3",
					},
					children = {
						{

							name = "TEXT",
							offset = 870,
							text = "Number list three",
						},
					},
					isBlock = true,
					name = "LIST_ITEM",
					offset = 867,
				},
			},
			name = "LIST",
			offset = 757,
		},
		{

			isBlock = true,
			name = "DIVIDER_2",
			offset = 889,
		},
		{
			attributes = {
				depth = 0,
			},
			children = {
				{
					attributes = {
						depth = 0,
						prefix = "-",
					},
					children = {
						{

							name = "TEXT",
							offset = 896,
							text = "Bullet one",
						},
					},
					isBlock = true,
					name = "LIST_ITEM",
					offset = 894,
				},
				{
					attributes = {
						depth = 0,
						prefix = "*",
					},
					children = {
						{

							name = "TEXT",
							offset = 909,
							text = "Bullet two with an ",
						},
						{

							name = "ACTION",
							offset = 929,
							text = "[[action]]",
						},
						{

							name = "TEXT",
							offset = 939,
							text = " and a ",
						},
						{

							name = "LINK",
							offset = 946,
							text = "link",
							url = "http://example.com",
						},
					},
					isBlock = true,
					name = "LIST_ITEM",
					offset = 907,
				},
			},
			name = "LIST",
			offset = 894,
		},
		{
			children = {
				{

					name = "TEXT",
					offset = 973,
					text = "Some",
				},
			},
			name = "PARAGRAPH",
			offset = 973,
		},
		{
			children = {
				{

					name = "TEXT",
					offset = 980,
					text = "quoted text",
				},
			},
			isBlock = true,
			name = "QUOTE",
			offset = 978,
		},
		{
			children = {
				{

					name = "TEXT",
					offset = 993,
					text = "Some ",
				},
			},
			name = "PARAGRAPH",
			offset = 993,
		},
		{
			attributes = {
				style = "color: #fff",
			},
			children = {
				{
					children = {
						{

							name = "TEXT",
							offset = 1024,
							text = "custom tag with a ",
						},
					},
					name = "PARAGRAPH",
					offset = 1024,
				},
				{
					children = {
						{
							children = {
								{

									name = "TEXT",
									offset = 1048,
									text = "span inside",
								},
							},
							name = "PARAGRAPH",
							offset = 1048,
						},
					},
					name = "TAG",
					offset = 1042,
					text = "span",
				},
			},
			name = "TAG",
			offset = 999,
			text = "div",
		},
		{
			children = {
				{

					name = "TEXT",
					offset = 1072,
					text = ".",
				},
			},
			name = "PARAGRAPH",
			offset = 1072,
		},
		{
			children = {
				{
					children = {
						{
							children = {},
							name = "TEXT",
							offset = 1080,
							text = "Multiline",
						},
					},
					name = "PARAGRAPH",
					offset = 1080,
				},
				{
					children = {
						{
							children = {
								{

									name = "TEXT",
									offset = 1095,
									text = "bold text",
								},
							},
							name = "PARAGRAPH",
							offset = 1095,
						},
					},
					attributes = {},
					name = "TAG",
					offset = 1092,
					text = "b",
				},
				{
					attributes = {
						depth = 0,
					},
					children = {
						{
							attributes = {
								depth = 0,
								prefix = "*",
							},
							children = {
								{
									children = {},
									name = "TEXT",
									offset = 1111,
									text = "A list element with ",
								},
								{
									children = {
										{
											children = {
												{
													children = {},
													name = "TEXT",
													offset = 1138,
													text = "a tag",
												},
											},
											name = "PARAGRAPH",
											offset = 1138,
										},
									},
									attributes = {},
									name = "TAG",
									offset = 1132,
									text = "span",
								},
								{
									children = {},
									name = "TEXT",
									offset = 1150,
									text = ".",
								},
							},
							isBlock = true,
							name = "LIST_ITEM",
							offset = 1109,
						},
					},
					name = "LIST",
					offset = 1109,
				},
			},
			name = "TAG",
			offset = 1075,
			text = "div",
		},
		{
			name = "PARAGRAPH",
			offset = 1159,
			children = {
				{
					name = "TEXT",
					offset = 1159,
					text = "An ",
				},
				{
					children = {},
					name = "IMAGE",
					offset = 1163,
					text = "Image",
					url = "rbxassetid://123456",
				},
			},
		},
	},
	name = "ROOT",
	offset = 1,
}

return {
	markdown = markdown,
	ast = ast,
}
