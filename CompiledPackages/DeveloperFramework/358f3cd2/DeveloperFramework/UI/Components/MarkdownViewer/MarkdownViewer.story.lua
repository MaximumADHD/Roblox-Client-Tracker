local Framework = script:FindFirstAncestor("UI").Parent
local React = require(Framework.Util.React)
local MarkdownViewer = require(Framework.UI.Components.MarkdownViewer)
local useStudioThemeColors = require(Framework.Util.Highlighter.useStudioThemeColors)
local HighlighterTypes = require(Framework.Util.Highlighter.Types)
local TextInput = require(Framework.UI.Components.TextInput)

local function createMarkdownViewer(text: string, wrapperProps: { [string]: any }?): React.ReactElement
	return React.createElement(MarkdownViewer, { Markdown = text, WrapperProps = wrapperProps })
end

local function customTextStory()
	local text, setText = React.useState("You custom text")

	return React.createElement(
		"Frame",
		{ [React.Tag] = "X-FitY X-ColumnM X-Transparent" },
		React.createElement(
			TextInput,
			{ MultiLine = true, OnTextChanged = setText, Text = text, Size = UDim2.new(1, 0, 0, 200), LayoutOrder = 1 }
		),
		createMarkdownViewer(text, { LayoutOrder = 2 })
	)
end

local function richTextStory()
	return createMarkdownViewer([[
It's normal text.

Text in *bold*.

Text _italicized_.

Text with ~strikethrough~ applied.

`Monospaced` text.

<font color="#FF7800">Colored text.</font>

Long paragraph with RichText: *bold*, _italic_, ~strikethrough~, `monospace`, *bold*, _italic_, ~strikethrough~, `monospace`.
]])
end

local function headingsStory()
	return createMarkdownViewer([[
# Heading 1

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in quam sodales, iaculis ligula ac, scelerisque leo. Duis facilisis blandit justo, at venenatis purus viverra ut.

## Heading 2

Suspendisse consectetur, dui lacinia posuere pharetra, tellus ante varius erat, et consequat nisl tortor in augue.

### Heading 3

Sed bibendum velit a scelerisque mattis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer sapien mi, lobortis et augue non, congue efficitur neque.

#### Heading 4

Nam ullamcorper velit at sodales malesuada. Morbi gravida arcu a quam euismod venenatis.

##### Heading 5

Phasellus at risus id lectus faucibus accumsan. Donec a feugiat purus. Sed luctus elit ac tellus sodales pellentesque.
]])
end

local function paragraphsStory()
	return createMarkdownViewer([[
This is a short paragraph.

This is a paragraph with a [link](http://example.com). Or even with [two](http://two-link.example) links. We also can add a [very long link with a verbose description](http://very-long-link.example) to see how it's dislayed.

This is a resonably long paragraph: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent nec massa sit amet nisl pretium ultrices vel nec ante. Nam tempor felis vitae egestas bibendum. Maecenas id nisl mauris. Morbi euismod elementum consectetur. Suspendisse feugiat vel nunc cursus condimentum. Vivamus vitae elit sed velit placerat placerat.

Paragraph with
a line break is still a valid paragraph.
]])
end

local function codeStory()
	local colors = useStudioThemeColors()
	local md = [[
Lua code block:

```lua
-- factorial function
function fact(n)
  if n == 0 then
    return 1
  else
    return n * fact(n-1)
  end
end

print("enter a number:")
a = io.read("*number")
print(fact(a))
```

Non-lua code block:

```ruby
class Integer
  def fact
    (1..self).reduce(:*) || 1
  end
end
```
]]

	return React.createElement(MarkdownViewer, { Markdown = md, ColorScheme = colors })
end

local function listStory()
	return createMarkdownViewer([[
- List item 1
- List item 2 to show inline formatting: *Bold*, _Italic_, ~Strike~ and `Monospace` text.
  - List subitem 2.1
- List item 3
  - List subitem 3.1
  - List subitem 3.2 with a [link](http://example.com)
    - List subsubitem 3.2.1
    - List subsubitem 3.2.2
      - Very deep list subsubsubitem 3.2.2.1
        * Very-very deep list subsubsubitem 3.2.2.1.1 with a different marker
        * 3.2.2.1.2 with a different marker
    - List subsubitem 3.2.3
    - Very long list subsubitem 3.2.4 - Phasellus at risus id lectus faucibus accumsan. Donec a feugiat purus. Sed luctus elit ac tellus sodales pellentesque.
    - List subitem 3.2.5
  - List subitem 3.3
- List item 4
  - List subitem 4.1
- Very long list item 5 - Phasellus at risus id lectus faucibus accumsan. Donec a feugiat purus. Sed luctus elit ac tellus sodales pellentesque.
]])
end

local function customizationStory()
	local md = [[
You can customize or position the MarkdownViewer's container by passing a `WrapperProps` prop. For example, this story uses the following properties:
```lua
{
	BackgroundColor3 = Color3.fromRGB(34, 87, 122),
	BackgroundTransparency = 0
}
```
You can pass any properties that Frame supports.
]]

	local wrapperProps = {
		BackgroundColor3 = Color3.fromRGB(34, 87, 122),
		BackgroundTransparency = 0,
	}
	return React.createElement(MarkdownViewer, { Markdown = md, WrapperProps = wrapperProps })
end

function rulerStory()
	return createMarkdownViewer([[
A ruler below is created with the *** syntax.

***

A ruler below is created with the --- syntax.

---

]])
end

function withMarkdownRendererPropsStory()
	local md = [[
You can customize the text style by passing a `MarkdownRendererProps` prop. For example, this story uses the following properties:
```lua
{
	textSize = 20,
	font = Enum.Font.Fondamento,
}
```
]]

	local markdownRendererProps = {
		textSize = 20,
		font = Enum.Font.Fondamento,
	}
	return React.createElement(MarkdownViewer, { Markdown = md, MarkdownRendererProps = markdownRendererProps })
end

function customCodeColorsStory()
	local md = [[
Lua code block with custom colors (black background, green keywords, orange strings and numbers, gray comments, everything else is white)

```lua
-- factorial function
function fact(n)
  if n == 0 then
    return 1
  else
    return n * fact(n-1)
  end
end
print("enter a number:")
a = io.read("*number")
print(fact(a))
```
]]

	local colorScheme: HighlighterTypes.TokenColors = {
		background = Color3.fromRGB(0, 0, 0), -- black
		iden = Color3.fromRGB(255, 255, 255), -- white
		keyword = Color3.fromRGB(0, 255, 0), -- green
		builtin = Color3.fromRGB(255, 255, 255), -- white
		string = Color3.fromRGB(255, 140, 0), -- orange
		number = Color3.fromRGB(255, 140, 0), -- orange
		comment = Color3.fromRGB(100, 100, 100), -- grey
		operator = Color3.fromRGB(255, 255, 255), -- white
		custom = Color3.fromRGB(255, 255, 255), -- white
	}

	return React.createElement(MarkdownViewer, { Markdown = md, ColorScheme = colorScheme })
end

function quoteStory()
	return createMarkdownViewer([[
This is a relatively long paragraph that goes before a quote.

> This is a simple quote.

> This is a quote with a [link](http://example.com).

> This is a quote with rich text: *bold*, _italic_, ~strikethrough~, `monospace`.
]])
end

function imageStory()
	local md = [[
You can include inline images using the normal markdown syntax: ![Image](rbxasset://textures/ui/common/robux_color@2x.png)

Image can be added via `img` tag with the `src` attribute. Optionally, you can specify `width` and `height` attributes:

<img src="rbxasset://textures/ui/common/robux_color@2x.png" width="100" height="100">
]]

	local markdownRendererProps = {
		imageSize = UDim2.new(0, 20, 0, 20),
	}

	return React.createElement(MarkdownViewer, { Markdown = md, MarkdownRendererProps = markdownRendererProps })
end

function lineBreaksStory()
	return createMarkdownViewer([[
These two sentences are separated only with one line break.
So they are rendered in the same paragraph as one line.
---
These two sentences are separated by two line breaks.

So they are rendered as two paragraphs.
---
These two sentences are separated with a hard break. <br>
So they are rendered in the same paragraph with a line break
---
   Trailing and leading whitespaces
      are removed around new lines. Other whitespaces are preserved.
]])
end

function actionButtonStory()
	return createMarkdownViewer([[
Here is an action button:

<Button url="explorer://action-link" text="Text button">

<Button url="explorer://action-link" text="Icon left" leftIcon="rbxasset://textures/DeveloperFramework/AssetPreview/close_button.png">

<Button url="explorer://action-link" text="Icon right" rightIcon="rbxasset://textures/DeveloperFramework/AssetPreview/close_button.png">
]])
end

return {
	stories = {
		{
			name = "Custom text",
			story = customTextStory,
		},
		{
			name = "Rich text",
			story = richTextStory,
		},
		{
			name = "Headings",
			story = headingsStory,
		},
		{
			name = "Paragraphs",
			story = paragraphsStory,
		},
		{
			name = "Code",
			story = codeStory,
		},
		{
			name = "List",
			story = listStory,
		},
		{
			name = "Customization",
			story = customizationStory,
		},
		{
			name = "Ruler",
			story = rulerStory,
		},
		{
			name = "With MarkdownRendererProps",
			story = withMarkdownRendererPropsStory,
		},
		{
			name = "With a custom codeblock color scheme",
			story = customCodeColorsStory,
		},
		{
			name = "Quote",
			story = quoteStory,
		},
		{
			name = "Image",
			story = imageStory,
		},
		{
			name = "Line Breaks",
			story = lineBreaksStory,
		},
		{
			name = "Action button",
			story = actionButtonStory,
		},
	},
}
