local Root = script:FindFirstAncestor("Components").Parent
local Packages = Root.Parent
local Types = require(Root.Types)
local Foundation = require(Packages.Foundation)
local View = Foundation.View
local Dash = require(Packages.Dash)
local MarkdownCore = require(Packages.MarkdownCore)

local React = require(Packages.React)
local MarkdownViewer = require(Root.Components.MarkdownViewer)
local NodeType = require(Root.Enums.NodeType)

local function createMarkdownViewer(text: string, wrapperProps: { [string]: any }?): React.ReactElement
	return React.createElement(MarkdownViewer, { Markdown = text, WrapperProps = wrapperProps })
end

local function customTextStory()
	local text, setText = React.useState("")

	return React.createElement(
		View,
		{ tag = "size-full-0 auto-y col gap-medium" },
		React.createElement("TextBox", {
			Text = text,
			MultiLine = true,
			[React.Change.Text] = function(rbx: TextBox)
				setText(rbx.Text)
			end,
			Font = Enum.Font.BuilderSans,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextXAlignment = Enum.TextXAlignment.Left,
			BorderSizePixel = 1,
			BorderColor3 = Color3.fromRGB(27, 42, 53),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 0,
			TextSize = 18,
			Size = UDim2.new(1, 0, 0, 200),
			LayoutOrder = 1,
			ClearTextOnFocus = false,
			PlaceholderText = "Your custom text",
			TextWrapped = true,
		}),
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

	return React.createElement(MarkdownViewer, {
		Markdown = md,
		MarkdownRendererProps = {
			codeSettings = {
				showLineNumbers = true,
				showCopyButton = true,
			},
		},
	})
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
	backgroundStyle = {
		Color3 = Color3.fromRGB(255, 0, 0),
		Transparency = 0.5,
	},
}
```
You can pass any properties that View supports.
]]

	local wrapperProps = {
		backgroundStyle = {
			Color3 = Color3.fromRGB(255, 0, 0),
			Transparency = 0.5,
		},
	}
	return React.createElement(MarkdownViewer, { Markdown = md, WrapperProps = wrapperProps })
end

function rulerStory()
	return createMarkdownViewer([[
A ruler below is created with a --- syntax.

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
		textStyles = {
			textSize = 20,
			font = Enum.Font.Fondamento,
		},
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

	local colorScheme: MarkdownCore.TokenColors = {
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
		imageStyles = {
			size = UDim2.new(0, 20, 0, 20),
		},
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

<Button url="explorer://action-link" text="Icon" icon="icons/common/robux">
]])
end

local function renderAllStyles(node: Types.Node, context: Types.Context)
	local styleProps = {
		bold = true,
		italic = true,
		strike = true,
	}
	return context.processChildren(node, Dash.joinDeep(context, { textStyles = styleProps }))
end

local function allStylesStory()
	local ast = {
		["children"] = {
			[1] = {
				["children"] = {
					[1] = {
						["children"] = {},
						["index"] = 1,
						["name"] = "TEXT",
						["offset"] = 0,
						["text"] = "The following is an example of a custom feature renderer ",
						["type"] = NodeType.InlineLeaf,
					},
					[2] = {
						["children"] = {
							[1] = {
								["children"] = {},
								["index"] = 1,
								["name"] = "TEXT",
								["offset"] = 9,
								["text"] = " that applies all styles to a part of text!",
								["type"] = NodeType.InlineLeaf,
							},
						},
						["index"] = 2,
						["name"] = "ALL_STYLED_TEXT",
						["offset"] = 58,
						["type"] = NodeType.InlineSpan,
					},
				},
				["index"] = 1,
				["name"] = "PARAGRAPH",
				["offset"] = 0,
				["type"] = NodeType.TextBlock,
			},
		},
		["index"] = 1,
		["name"] = "ROOT",
		["offset"] = 1,
		["type"] = NodeType.Root,
	}
	return React.createElement(MarkdownViewer, {
		Ast = ast,
		AdditionalFeatureRenderers = {
			["ALL_STYLED_TEXT"] = renderAllStyles,
		},
	})
end

return {
	summary = "MarkdownViewer takes a markdown string as input and displays the rich content using a combination of RichText and inline UI components.",
	stories = {
		{
			name = "Custom text",
			summary = "Type your custom markdown text.",
			story = customTextStory,
		},
		{
			name = "Rich text",
			summary = "MarkdownViewer can display various rich text formatting options like bold, italic, strikethrough, and monospaced text.",
			story = richTextStory,
		},
		{
			name = "Headings",
			summary = "MarkdownViewer can display heading levels from 1 to 5.",
			story = headingsStory,
		},
		{
			name = "Paragraphs",
			summary = "MarkdownViewer can display paragraphs, including links and line breaks.",
			story = paragraphsStory,
		},
		{
			name = "Code",
			summary = "Displays Lua and non-Lua code blocks.",
			story = codeStory,
		},
		{
			name = "List",
			summary = "MarkdownViewer can display lists with nested items and inline formatting.",
			story = listStory,
		},
		{
			name = "Customization",
			summary = "You can customize the MarkdownViewer's container using `WrapperProps`.",
			story = customizationStory,
		},
		{
			name = "Ruler",
			summary = "MarkdownViewer can display horizontal rulers.",
			story = rulerStory,
		},
		{
			name = "With MarkdownRendererProps",
			summary = "You can customize text styles using `MarkdownRendererProps`.",
			story = withMarkdownRendererPropsStory,
		},
		{
			name = "With a custom codeblock color scheme",
			summary = "MarkdownViewer can display a code block with a custom color scheme.",
			story = customCodeColorsStory,
		},
		{
			name = "Quote",
			summary = "MarkdownViewer can display blockquotes with rich text and links.",
			story = quoteStory,
		},
		{
			name = "Image",
			summary = "MarkdownViewer can display inline images.",
			story = imageStory,
		},
		{
			name = "Line Breaks",
			summary = "MarkdownViewer can handle line breaks",
			story = lineBreaksStory,
		},
		{
			name = "Action button",
			summary = "MarkdownViewer can render an action button.",
			story = actionButtonStory,
		},
		{
			name = "Custom Feature Renderers",
			summary = "MarkdownViewer can render custom features that don't have native support with the `AdditionalFeatureRenderers` prop.",
			story = allStylesStory,
		},
	},
}
