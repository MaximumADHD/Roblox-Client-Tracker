PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K3 [{"Markdown", "WrapperProps"}]
  SETTABLEKS R0 R4 K1 ["Markdown"]
  SETTABLEKS R1 R4 K2 ["WrapperProps"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["Text"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["useState"]
  LOADK R1 K1 ["You custom text"]
  CALL R0 1 2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K4 [{"tag"}]
  LOADK R5 K5 ["size-full-0 auto-y col gap-medium"]
  SETTABLEKS R5 R4 K3 ["tag"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["createElement"]
  LOADK R6 K6 ["TextBox"]
  NEWTABLE R7 16 0
  SETTABLEKS R0 R7 K7 ["Text"]
  LOADB R8 1
  SETTABLEKS R8 R7 K8 ["MultiLine"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K9 ["Change"]
  GETTABLEKS R8 R9 K7 ["Text"]
  NEWCLOSURE R9 P0
  CAPTURE VAL R1
  SETTABLE R9 R7 R8
  GETIMPORT R8 K13 [Enum.Font.BuilderSans]
  SETTABLEKS R8 R7 K11 ["Font"]
  GETIMPORT R8 K16 [Enum.TextYAlignment.Top]
  SETTABLEKS R8 R7 K14 ["TextYAlignment"]
  GETIMPORT R8 K19 [Enum.TextXAlignment.Left]
  SETTABLEKS R8 R7 K17 ["TextXAlignment"]
  LOADN R8 1
  SETTABLEKS R8 R7 K20 ["BorderSizePixel"]
  GETIMPORT R8 K23 [Color3.fromRGB]
  LOADN R9 27
  LOADN R10 42
  LOADN R11 53
  CALL R8 3 1
  SETTABLEKS R8 R7 K24 ["BorderColor3"]
  GETIMPORT R8 K23 [Color3.fromRGB]
  LOADN R9 255
  LOADN R10 255
  LOADN R11 255
  CALL R8 3 1
  SETTABLEKS R8 R7 K25 ["BackgroundColor3"]
  LOADN R8 0
  SETTABLEKS R8 R7 K26 ["BackgroundTransparency"]
  LOADN R8 18
  SETTABLEKS R8 R7 K27 ["TextSize"]
  GETIMPORT R8 K30 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  LOADN R12 200
  CALL R8 4 1
  SETTABLEKS R8 R7 K31 ["Size"]
  LOADN R8 1
  SETTABLEKS R8 R7 K32 ["LayoutOrder"]
  CALL R5 2 1
  GETUPVAL R6 2
  MOVE R7 R0
  DUPTABLE R8 K33 [{"LayoutOrder"}]
  LOADN R9 2
  SETTABLEKS R9 R8 K32 ["LayoutOrder"]
  CALL R6 2 -1
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R0 0
  LOADK R1 K0 ["It's normal text.

Text in *bold*.

Text _italicized_.

Text with ~strikethrough~ applied.

`Monospaced` text.

<font color=\"#FF7800\">Colored text.</font>

Long paragraph with RichText: *bold*, _italic_, ~strikethrough~, `monospace`, *bold*, _italic_, ~strikethrough~, `monospace`.
"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_4:
  GETUPVAL R0 0
  LOADK R1 K0 ["# Heading 1

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in quam sodales, iaculis ligula ac, scelerisque leo. Duis facilisis blandit justo, at venenatis purus viverra ut.

## Heading 2

Suspendisse consectetur, dui lacinia posuere pharetra, tellus ante varius erat, et consequat nisl tortor in augue.

### Heading 3

Sed bibendum velit a scelerisque mattis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer sapien mi, lobortis et augue non, congue efficitur neque.

#### Heading 4

Nam ullamcorper velit at sodales malesuada. Morbi gravida arcu a quam euismod venenatis.

##### Heading 5

Phasellus at risus id lectus faucibus accumsan. Donec a feugiat purus. Sed luctus elit ac tellus sodales pellentesque.
"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_5:
  GETUPVAL R0 0
  LOADK R1 K0 ["This is a short paragraph.

This is a paragraph with a [link](http://example.com). Or even with [two](http://two-link.example) links. We also can add a [very long link with a verbose description](http://very-long-link.example) to see how it's dislayed.

This is a resonably long paragraph: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent nec massa sit amet nisl pretium ultrices vel nec ante. Nam tempor felis vitae egestas bibendum. Maecenas id nisl mauris. Morbi euismod elementum consectetur. Suspendisse feugiat vel nunc cursus condimentum. Vivamus vitae elit sed velit placerat placerat.

Paragraph with
a line break is still a valid paragraph.
"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  DUPTABLE R2 K2 [{"Markdown"}]
  LOADK R3 K3 ["Lua code block:

```lua
-- factorial function
function fact(n)
  if n == 0 then
    return 1
  else
    return n * fact(n-1)
  end
end

print(\"enter a number:\")
a = io.read(\"*number\")
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
"]
  SETTABLEKS R3 R2 K1 ["Markdown"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_7:
  GETUPVAL R0 0
  LOADK R1 K0 ["- List item 1
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
"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_8:
  DUPTABLE R0 K1 [{"backgroundStyle"}]
  DUPTABLE R1 K4 [{"Color3", "Transparency"}]
  GETIMPORT R2 K6 [Color3.fromRGB]
  LOADN R3 255
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K2 ["Color3"]
  LOADK R2 K7 [0.5]
  SETTABLEKS R2 R1 K3 ["Transparency"]
  SETTABLEKS R1 R0 K0 ["backgroundStyle"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K8 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K11 [{"Markdown", "WrapperProps"}]
  LOADK R4 K12 ["You can customize or position the MarkdownViewer's container by passing a `WrapperProps` prop. For example, this story uses the following properties:
```lua
{
	backgroundStyle = {
		Color3 = Color3.fromRGB(255, 0, 0),
		Transparency = 0.5,
	},
}
```
You can pass any properties that View supports.
"]
  SETTABLEKS R4 R3 K9 ["Markdown"]
  SETTABLEKS R0 R3 K10 ["WrapperProps"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_9:
  GETUPVAL R0 0
  LOADK R1 K0 ["A ruler below is created with the === syntax.

===

A ruler below is created with a --- syntax.

---

"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_10:
  DUPTABLE R0 K1 [{"textStyles"}]
  DUPTABLE R1 K4 [{"textSize", "font"}]
  LOADN R2 20
  SETTABLEKS R2 R1 K2 ["textSize"]
  GETIMPORT R2 K8 [Enum.Font.Fondamento]
  SETTABLEKS R2 R1 K3 ["font"]
  SETTABLEKS R1 R0 K0 ["textStyles"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K9 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K12 [{"Markdown", "MarkdownRendererProps"}]
  LOADK R4 K13 ["You can customize the text style by passing a `MarkdownRendererProps` prop. For example, this story uses the following properties:
```lua
{
	textSize = 20,
	font = Enum.Font.Fondamento,
}
```
"]
  SETTABLEKS R4 R3 K10 ["Markdown"]
  SETTABLEKS R0 R3 K11 ["MarkdownRendererProps"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_11:
  DUPTABLE R0 K9 [{"background", "iden", "keyword", "builtin", "string", "number", "comment", "operator", "custom"}]
  GETIMPORT R1 K12 [Color3.fromRGB]
  LOADN R2 0
  LOADN R3 0
  LOADN R4 0
  CALL R1 3 1
  SETTABLEKS R1 R0 K0 ["background"]
  GETIMPORT R1 K12 [Color3.fromRGB]
  LOADN R2 255
  LOADN R3 255
  LOADN R4 255
  CALL R1 3 1
  SETTABLEKS R1 R0 K1 ["iden"]
  GETIMPORT R1 K12 [Color3.fromRGB]
  LOADN R2 0
  LOADN R3 255
  LOADN R4 0
  CALL R1 3 1
  SETTABLEKS R1 R0 K2 ["keyword"]
  GETIMPORT R1 K12 [Color3.fromRGB]
  LOADN R2 255
  LOADN R3 255
  LOADN R4 255
  CALL R1 3 1
  SETTABLEKS R1 R0 K3 ["builtin"]
  GETIMPORT R1 K12 [Color3.fromRGB]
  LOADN R2 255
  LOADN R3 140
  LOADN R4 0
  CALL R1 3 1
  SETTABLEKS R1 R0 K4 ["string"]
  GETIMPORT R1 K12 [Color3.fromRGB]
  LOADN R2 255
  LOADN R3 140
  LOADN R4 0
  CALL R1 3 1
  SETTABLEKS R1 R0 K5 ["number"]
  GETIMPORT R1 K12 [Color3.fromRGB]
  LOADN R2 100
  LOADN R3 100
  LOADN R4 100
  CALL R1 3 1
  SETTABLEKS R1 R0 K6 ["comment"]
  GETIMPORT R1 K12 [Color3.fromRGB]
  LOADN R2 255
  LOADN R3 255
  LOADN R4 255
  CALL R1 3 1
  SETTABLEKS R1 R0 K7 ["operator"]
  GETIMPORT R1 K12 [Color3.fromRGB]
  LOADN R2 255
  LOADN R3 255
  LOADN R4 255
  CALL R1 3 1
  SETTABLEKS R1 R0 K8 ["custom"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K13 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K16 [{"Markdown", "ColorScheme"}]
  LOADK R4 K17 ["Lua code block with custom colors (black background, green keywords, orange strings and numbers, gray comments, everything else is white)

```lua
-- factorial function
function fact(n)
  if n == 0 then
    return 1
  else
    return n * fact(n-1)
  end
end
print(\"enter a number:\")
a = io.read(\"*number\")
print(fact(a))
```
"]
  SETTABLEKS R4 R3 K14 ["Markdown"]
  SETTABLEKS R0 R3 K15 ["ColorScheme"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_12:
  GETUPVAL R0 0
  LOADK R1 K0 ["This is a relatively long paragraph that goes before a quote.

> This is a simple quote.

> This is a quote with a [link](http://example.com).

> This is a quote with rich text: *bold*, _italic_, ~strikethrough~, `monospace`.
"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_13:
  DUPTABLE R0 K1 [{"imageStyles"}]
  DUPTABLE R1 K3 [{"size"}]
  GETIMPORT R2 K6 [UDim2.new]
  LOADN R3 0
  LOADN R4 20
  LOADN R5 0
  LOADN R6 20
  CALL R2 4 1
  SETTABLEKS R2 R1 K2 ["size"]
  SETTABLEKS R1 R0 K0 ["imageStyles"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K10 [{"Markdown", "MarkdownRendererProps"}]
  LOADK R4 K11 ["You can include inline images using the normal markdown syntax: ![Image](rbxasset://textures/ui/common/robux_color@2x.png)

Image can be added via `img` tag with the `src` attribute. Optionally, you can specify `width` and `height` attributes:

<img src=\"rbxasset://textures/ui/common/robux_color@2x.png\" width=\"100\" height=\"100\">
"]
  SETTABLEKS R4 R3 K8 ["Markdown"]
  SETTABLEKS R0 R3 K9 ["MarkdownRendererProps"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_14:
  GETUPVAL R0 0
  LOADK R1 K0 ["These two sentences are separated only with one line break.
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
"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_15:
  GETUPVAL R0 0
  LOADK R1 K0 ["Here is an action button:

<Button url=\"explorer://action-link\" text=\"Text button\">

<Button url=\"explorer://action-link\" text=\"Icon\" icon=\"icons/common/robux\">
"]
  CALL R0 1 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  LOADK R3 K2 ["Components"]
  NAMECALL R1 R1 K3 ["FindFirstAncestor"]
  CALL R1 2 1
  GETTABLEKS R0 R1 K4 ["Parent"]
  GETIMPORT R1 K1 [script]
  LOADK R3 K5 ["Packages"]
  NAMECALL R1 R1 K3 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R0 K8 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R4 R1 K9 ["Foundation"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["View"]
  GETIMPORT R5 K7 [require]
  GETTABLEKS R6 R1 K11 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K7 [require]
  GETTABLEKS R8 R0 K2 ["Components"]
  GETTABLEKS R7 R8 K12 ["MarkdownViewer"]
  CALL R6 1 1
  DUPCLOSURE R7 K13 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R6
  DUPCLOSURE R8 K14 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R7
  DUPCLOSURE R9 K15 [PROTO_3]
  CAPTURE VAL R7
  DUPCLOSURE R10 K16 [PROTO_4]
  CAPTURE VAL R7
  DUPCLOSURE R11 K17 [PROTO_5]
  CAPTURE VAL R7
  DUPCLOSURE R12 K18 [PROTO_6]
  CAPTURE VAL R5
  CAPTURE VAL R6
  DUPCLOSURE R13 K19 [PROTO_7]
  CAPTURE VAL R7
  DUPCLOSURE R14 K20 [PROTO_8]
  CAPTURE VAL R5
  CAPTURE VAL R6
  DUPCLOSURE R15 K21 [PROTO_9]
  CAPTURE VAL R7
  SETGLOBAL R15 K22 ["rulerStory"]
  DUPCLOSURE R15 K23 [PROTO_10]
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETGLOBAL R15 K24 ["withMarkdownRendererPropsStory"]
  DUPCLOSURE R15 K25 [PROTO_11]
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETGLOBAL R15 K26 ["customCodeColorsStory"]
  DUPCLOSURE R15 K27 [PROTO_12]
  CAPTURE VAL R7
  SETGLOBAL R15 K28 ["quoteStory"]
  DUPCLOSURE R15 K29 [PROTO_13]
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETGLOBAL R15 K30 ["imageStory"]
  DUPCLOSURE R15 K31 [PROTO_14]
  CAPTURE VAL R7
  SETGLOBAL R15 K32 ["lineBreaksStory"]
  DUPCLOSURE R15 K33 [PROTO_15]
  CAPTURE VAL R7
  SETGLOBAL R15 K34 ["actionButtonStory"]
  DUPTABLE R15 K37 [{"summary", "stories"}]
  LOADK R16 K38 ["MarkdownViewer takes a markdown string as input and displays the rich content using a combination of RichText and inline UI components."]
  SETTABLEKS R16 R15 K35 ["summary"]
  NEWTABLE R16 0 14
  DUPTABLE R17 K41 [{"name", "summary", "story"}]
  LOADK R18 K42 ["Custom text"]
  SETTABLEKS R18 R17 K39 ["name"]
  LOADK R18 K43 ["Type your custom markdown text."]
  SETTABLEKS R18 R17 K35 ["summary"]
  SETTABLEKS R8 R17 K40 ["story"]
  DUPTABLE R18 K41 [{"name", "summary", "story"}]
  LOADK R19 K44 ["Rich text"]
  SETTABLEKS R19 R18 K39 ["name"]
  LOADK R19 K45 ["MarkdownViewer can display various rich text formatting options like bold, italic, strikethrough, and monospaced text."]
  SETTABLEKS R19 R18 K35 ["summary"]
  SETTABLEKS R9 R18 K40 ["story"]
  DUPTABLE R19 K41 [{"name", "summary", "story"}]
  LOADK R20 K46 ["Headings"]
  SETTABLEKS R20 R19 K39 ["name"]
  LOADK R20 K47 ["MarkdownViewer can display heading levels from 1 to 5."]
  SETTABLEKS R20 R19 K35 ["summary"]
  SETTABLEKS R10 R19 K40 ["story"]
  DUPTABLE R20 K41 [{"name", "summary", "story"}]
  LOADK R21 K48 ["Paragraphs"]
  SETTABLEKS R21 R20 K39 ["name"]
  LOADK R21 K49 ["MarkdownViewer can display paragraphs, including links and line breaks."]
  SETTABLEKS R21 R20 K35 ["summary"]
  SETTABLEKS R11 R20 K40 ["story"]
  DUPTABLE R21 K41 [{"name", "summary", "story"}]
  LOADK R22 K50 ["Code"]
  SETTABLEKS R22 R21 K39 ["name"]
  LOADK R22 K51 ["Displays Lua and non-Lua code blocks."]
  SETTABLEKS R22 R21 K35 ["summary"]
  SETTABLEKS R12 R21 K40 ["story"]
  DUPTABLE R22 K41 [{"name", "summary", "story"}]
  LOADK R23 K52 ["List"]
  SETTABLEKS R23 R22 K39 ["name"]
  LOADK R23 K53 ["MarkdownViewer can display lists with nested items and inline formatting."]
  SETTABLEKS R23 R22 K35 ["summary"]
  SETTABLEKS R13 R22 K40 ["story"]
  DUPTABLE R23 K41 [{"name", "summary", "story"}]
  LOADK R24 K54 ["Customization"]
  SETTABLEKS R24 R23 K39 ["name"]
  LOADK R24 K55 ["You can customize the MarkdownViewer's container using `WrapperProps`."]
  SETTABLEKS R24 R23 K35 ["summary"]
  SETTABLEKS R14 R23 K40 ["story"]
  DUPTABLE R24 K41 [{"name", "summary", "story"}]
  LOADK R25 K56 ["Ruler"]
  SETTABLEKS R25 R24 K39 ["name"]
  LOADK R25 K57 ["MarkdownViewer can display horizontal rulers."]
  SETTABLEKS R25 R24 K35 ["summary"]
  GETGLOBAL R25 K22 ["rulerStory"]
  SETTABLEKS R25 R24 K40 ["story"]
  DUPTABLE R25 K41 [{"name", "summary", "story"}]
  LOADK R26 K58 ["With MarkdownRendererProps"]
  SETTABLEKS R26 R25 K39 ["name"]
  LOADK R26 K59 ["You can customize text styles using `MarkdownRendererProps`."]
  SETTABLEKS R26 R25 K35 ["summary"]
  GETGLOBAL R26 K24 ["withMarkdownRendererPropsStory"]
  SETTABLEKS R26 R25 K40 ["story"]
  DUPTABLE R26 K41 [{"name", "summary", "story"}]
  LOADK R27 K60 ["With a custom codeblock color scheme"]
  SETTABLEKS R27 R26 K39 ["name"]
  LOADK R27 K61 ["MarkdownViewer can display a code block with a custom color scheme."]
  SETTABLEKS R27 R26 K35 ["summary"]
  GETGLOBAL R27 K26 ["customCodeColorsStory"]
  SETTABLEKS R27 R26 K40 ["story"]
  DUPTABLE R27 K41 [{"name", "summary", "story"}]
  LOADK R28 K62 ["Quote"]
  SETTABLEKS R28 R27 K39 ["name"]
  LOADK R28 K63 ["MarkdownViewer can display blockquotes with rich text and links."]
  SETTABLEKS R28 R27 K35 ["summary"]
  GETGLOBAL R28 K28 ["quoteStory"]
  SETTABLEKS R28 R27 K40 ["story"]
  DUPTABLE R28 K41 [{"name", "summary", "story"}]
  LOADK R29 K64 ["Image"]
  SETTABLEKS R29 R28 K39 ["name"]
  LOADK R29 K65 ["MarkdownViewer can display inline images."]
  SETTABLEKS R29 R28 K35 ["summary"]
  GETGLOBAL R29 K30 ["imageStory"]
  SETTABLEKS R29 R28 K40 ["story"]
  DUPTABLE R29 K41 [{"name", "summary", "story"}]
  LOADK R30 K66 ["Line Breaks"]
  SETTABLEKS R30 R29 K39 ["name"]
  LOADK R30 K67 ["MarkdownViewer can handle line breaks"]
  SETTABLEKS R30 R29 K35 ["summary"]
  GETGLOBAL R30 K32 ["lineBreaksStory"]
  SETTABLEKS R30 R29 K40 ["story"]
  DUPTABLE R30 K41 [{"name", "summary", "story"}]
  LOADK R31 K68 ["Action button"]
  SETTABLEKS R31 R30 K39 ["name"]
  LOADK R31 K69 ["MarkdownViewer can render an action button."]
  SETTABLEKS R31 R30 K35 ["summary"]
  GETGLOBAL R31 K34 ["actionButtonStory"]
  SETTABLEKS R31 R30 K40 ["story"]
  SETLIST R16 R17 14 [1]
  SETTABLEKS R16 R15 K36 ["stories"]
  RETURN R15 1
