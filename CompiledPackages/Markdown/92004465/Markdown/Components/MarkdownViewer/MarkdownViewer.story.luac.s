PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K3 [{"Markdown", "WrapperProps"}]
        5 SETTABLEKS                       R0 R4 K1 ["Markdown"]
        7 SETTABLEKS                       R1 R4 K2 ["WrapperProps"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Text"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADK                            R1 K1 [""]
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["createElement"]
        8 GETUPVAL                         R3 1
        9 DUPTABLE                         R4 K5 [{["tag"] = "size-full-0 auto-y col gap-medium"}]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K2 ["createElement"]
       13 LOADK                            R6 K6 ["TextBox"]
       14 NEWTABLE                         R7 16 0
       16 SETTABLEKS                       R0 R7 K7 ["Text"]
       18 LOADB                            R8 1
       19 SETTABLEKS                       R8 R7 K8 ["MultiLine"]
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R8 R8 K9 ["Change"]
       24 GETTABLEKS                       R8 R8 K7 ["Text"]
       26 NEWCLOSURE                       R9 P0
       27 CAPTURE                          VAL R1
       28 SETTABLE                         R9 R7 R8
       29 GETIMPORT                        R8 K13 [Enum.Font.BuilderSans]
       31 SETTABLEKS                       R8 R7 K11 ["Font"]
       33 GETIMPORT                        R8 K16 [Enum.TextYAlignment.Top]
       35 SETTABLEKS                       R8 R7 K14 ["TextYAlignment"]
       37 GETIMPORT                        R8 K19 [Enum.TextXAlignment.Left]
       39 SETTABLEKS                       R8 R7 K17 ["TextXAlignment"]
       41 LOADN                            R8 1
       42 SETTABLEKS                       R8 R7 K20 ["BorderSizePixel"]
       44 GETIMPORT                        R8 K23 [Color3.fromRGB]
       46 LOADN                            R9 27
       47 LOADN                            R10 42
       48 LOADN                            R11 53
       49 CALL                             R8 3 1
       50 SETTABLEKS                       R8 R7 K24 ["BorderColor3"]
       52 GETIMPORT                        R8 K23 [Color3.fromRGB]
       54 LOADN                            R9 255
       55 LOADN                            R10 255
       56 LOADN                            R11 255
       57 CALL                             R8 3 1
       58 SETTABLEKS                       R8 R7 K25 ["BackgroundColor3"]
       60 LOADN                            R8 0
       61 SETTABLEKS                       R8 R7 K26 ["BackgroundTransparency"]
       63 LOADN                            R8 18
       64 SETTABLEKS                       R8 R7 K27 ["TextSize"]
       66 GETIMPORT                        R8 K30 [UDim2.new]
       68 LOADN                            R9 1
       69 LOADN                            R10 0
       70 LOADN                            R11 0
       71 LOADN                            R12 200
       72 CALL                             R8 4 1
       73 SETTABLEKS                       R8 R7 K31 ["Size"]
       75 LOADN                            R8 1
       76 SETTABLEKS                       R8 R7 K32 ["LayoutOrder"]
       78 LOADB                            R8 0
       79 SETTABLEKS                       R8 R7 K33 ["ClearTextOnFocus"]
       81 LOADK                            R8 K34 ["Your custom text"]
       82 SETTABLEKS                       R8 R7 K35 ["PlaceholderText"]
       84 LOADB                            R8 1
       85 SETTABLEKS                       R8 R7 K36 ["TextWrapped"]
       87 CALL                             R5 2 1
       88 GETUPVAL                         R6 2
       89 MOVE                             R7 R0
       90 DUPTABLE                         R8 K38 [{["LayoutOrder"] = 2}]
       91 CALL                             R6 2 -1
       92 CALL                             R2 -1 -1
       93 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["It's normal text.\n\nText in *bold*.\n\nText _italicized_.\n\nText with ~strikethrough~ applied.\n\n`Monospaced` text.\n\n<font color=\"#FF7800\">Colored text.</font>\n\nLong paragraph with RichText: *bold*, _italic_, ~strikethrough~, `monospace`, *bold*, _italic_, ~strikethrough~, `monospace`.\n"]
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["# Heading 1\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in quam sodales, iaculis ligula ac, scelerisque leo. Duis facilisis blandit justo, at venenatis purus viverra ut.\n\n## Heading 2\n\nSuspendisse consectetur, dui lacinia posuere pharetra, tellus ante varius erat, et consequat nisl tortor in augue.\n\n### Heading 3\n\nSed bibendum velit a scelerisque mattis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer sapien mi, lobortis et augue non, congue efficitur neque.\n\n#### Heading 4\n\nNam ullamcorper velit at sodales malesuada. Morbi gravida arcu a quam euismod venenatis.\n\n##### Heading 5\n\nPhasellus at risus id lectus faucibus accumsan. Donec a feugiat purus. Sed luctus elit ac tellus sodales pellentesque.\n"]
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["This is a short paragraph.\n\nThis is a paragraph with a [link](http://example.com). Or even with [two](http://two-link.example) links. We also can add a [very long link with a verbose description](http://very-long-link.example) to see how it's dislayed.\n\nThis is a resonably long paragraph: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent nec massa sit amet nisl pretium ultrices vel nec ante. Nam tempor felis vitae egestas bibendum. Maecenas id nisl mauris. Morbi euismod elementum consectetur. Suspendisse feugiat vel nunc cursus condimentum. Vivamus vitae elit sed velit placerat placerat.\n\nParagraph with\na line break is still a valid paragraph.\n"]
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K4 [{["Markdown"] = "Lua code block:\n\n```lua\n-- factorial function\nfunction fact(n)\n  if n == 0 then\n    return 1\n  else\n    return n * fact(n-1)\n  end\nend\n\nprint(\"enter a number:\")\na = io.read(\"*number\")\nprint(fact(a))\n```\n\nNon-lua code block:\n\n```ruby\nclass Integer\n  def fact\n    (1..self).reduce(:*) || 1\n  end\nend\n```\n", ["MarkdownRendererProps"]}]
        5 DUPTABLE                         R3 K7 [{"codeSettings", "textStyles"}]
        6 DUPTABLE                         R4 K11 [{["showLineNumbers"] = True, ["showCopyButton"] = True}]
        7 SETTABLEKS                       R4 R3 K5 ["codeSettings"]
        9 DUPTABLE                         R4 K13 [{"fontFace"}]
       10 GETIMPORT                        R5 K16 [Font.fromEnum]
       12 GETIMPORT                        R6 K19 [Enum.Font.LuckiestGuy]
       14 CALL                             R5 1 1
       15 SETTABLEKS                       R5 R4 K12 ["fontFace"]
       17 SETTABLEKS                       R4 R3 K6 ["textStyles"]
       19 SETTABLEKS                       R3 R2 K3 ["MarkdownRendererProps"]
       21 CALL                             R0 2 -1
       22 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["- List item 1\n- List item 2 to show inline formatting: *Bold*, _Italic_, ~Strike~ and `Monospace` text.\n  - List subitem 2.1\n- List item 3\n  - List subitem 3.1\n  - List subitem 3.2 with a [link](http://example.com)\n    - List subsubitem 3.2.1\n    - List subsubitem 3.2.2\n      - Very deep list subsubsubitem 3.2.2.1\n        * Very-very deep list subsubsubitem 3.2.2.1.1 with a different marker\n        * 3.2.2.1.2 with a different marker\n    - List subsubitem 3.2.3\n    - Very long list subsubitem 3.2.4 - Phasellus at risus id lectus faucibus accumsan. Donec a feugiat purus. Sed luctus elit ac tellus sodales pellentesque.\n    - List subitem 3.2.5\n  - List subitem 3.3\n- List item 4\n  - List subitem 4.1\n- Very long list item 5 - Phasellus at risus id lectus faucibus accumsan. Donec a feugiat purus. Sed luctus elit ac tellus sodales pellentesque.\n"]
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_8:
        0 DUPTABLE                         R0 K1 [{"backgroundStyle"}]
        1 DUPTABLE                         R1 K5 [{["Color3"], ["Transparency"] = 0.5}]
        2 GETIMPORT                        R2 K7 [Color3.fromRGB]
        4 LOADN                            R3 255
        5 LOADN                            R4 0
        6 LOADN                            R5 0
        7 CALL                             R2 3 1
        8 SETTABLEKS                       R2 R1 K2 ["Color3"]
       10 SETTABLEKS                       R1 R0 K0 ["backgroundStyle"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K8 ["createElement"]
       15 GETUPVAL                         R2 1
       16 DUPTABLE                         R3 K12 [{["Markdown"] = "You can customize or position the MarkdownViewer's container by passing a `WrapperProps` prop. For example, this story uses the following properties:\n```lua\n{\n\tbackgroundStyle = {\n\t\tColor3 = Color3.fromRGB(255, 0, 0),\n\t\tTransparency = 0.5,\n\t},\n}\n```\nYou can pass any properties that View supports.\n", ["WrapperProps"]}]
       17 SETTABLEKS                       R0 R3 K11 ["WrapperProps"]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["A ruler below is created with a --- syntax.\n\n---\n\n"]
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_10:
        0 DUPTABLE                         R0 K1 [{"textStyles"}]
        1 DUPTABLE                         R1 K5 [{["textSize"] = 20, ["font"]}]
        2 GETIMPORT                        R2 K9 [Enum.Font.Fondamento]
        4 SETTABLEKS                       R2 R1 K4 ["font"]
        6 SETTABLEKS                       R1 R0 K0 ["textStyles"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K10 ["createElement"]
       11 GETUPVAL                         R2 1
       12 DUPTABLE                         R3 K14 [{["Markdown"] = "You can customize the text style by passing a `MarkdownRendererProps` prop. For example, this story uses the following properties:\n```lua\n{\n\ttextSize = 20,\n\tfont = Enum.Font.Fondamento,\n}\n```\n", ["MarkdownRendererProps"]}]
       13 SETTABLEKS                       R0 R3 K13 ["MarkdownRendererProps"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_11:
        0 DUPTABLE                         R0 K9 [{"background", "iden", "keyword", "builtin", "string", "number", "comment", "operator", "custom"}]
        1 GETIMPORT                        R1 K12 [Color3.fromRGB]
        3 LOADN                            R2 0
        4 LOADN                            R3 0
        5 LOADN                            R4 0
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["background"]
        9 GETIMPORT                        R1 K12 [Color3.fromRGB]
       11 LOADN                            R2 255
       12 LOADN                            R3 255
       13 LOADN                            R4 255
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["iden"]
       17 GETIMPORT                        R1 K12 [Color3.fromRGB]
       19 LOADN                            R2 0
       20 LOADN                            R3 255
       21 LOADN                            R4 0
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["keyword"]
       25 GETIMPORT                        R1 K12 [Color3.fromRGB]
       27 LOADN                            R2 255
       28 LOADN                            R3 255
       29 LOADN                            R4 255
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["builtin"]
       33 GETIMPORT                        R1 K12 [Color3.fromRGB]
       35 LOADN                            R2 255
       36 LOADN                            R3 140
       37 LOADN                            R4 0
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["string"]
       41 GETIMPORT                        R1 K12 [Color3.fromRGB]
       43 LOADN                            R2 255
       44 LOADN                            R3 140
       45 LOADN                            R4 0
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["number"]
       49 GETIMPORT                        R1 K12 [Color3.fromRGB]
       51 LOADN                            R2 100
       52 LOADN                            R3 100
       53 LOADN                            R4 100
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["comment"]
       57 GETIMPORT                        R1 K12 [Color3.fromRGB]
       59 LOADN                            R2 255
       60 LOADN                            R3 255
       61 LOADN                            R4 255
       62 CALL                             R1 3 1
       63 SETTABLEKS                       R1 R0 K7 ["operator"]
       65 GETIMPORT                        R1 K12 [Color3.fromRGB]
       67 LOADN                            R2 255
       68 LOADN                            R3 255
       69 LOADN                            R4 255
       70 CALL                             R1 3 1
       71 SETTABLEKS                       R1 R0 K8 ["custom"]
       73 GETUPVAL                         R1 0
       74 GETTABLEKS                       R1 R1 K13 ["createElement"]
       76 GETUPVAL                         R2 1
       77 DUPTABLE                         R3 K17 [{["Markdown"] = "Lua code block with custom colors (black background, green keywords, orange strings and numbers, gray comments, everything else is white)\n\n```lua\n-- factorial function\nfunction fact(n)\n  if n == 0 then\n    return 1\n  else\n    return n * fact(n-1)\n  end\nend\nprint(\"enter a number:\")\na = io.read(\"*number\")\nprint(fact(a))\n```\n", ["ColorScheme"]}]
       78 SETTABLEKS                       R0 R3 K16 ["ColorScheme"]
       80 CALL                             R1 2 -1
       81 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["This is a relatively long paragraph that goes before a quote.\n\n> This is a simple quote.\n\n> This is a quote with a [link](http://example.com).\n\n> This is a quote with rich text: *bold*, _italic_, ~strikethrough~, `monospace`.\n"]
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_13:
        0 DUPTABLE                         R0 K1 [{"imageStyles"}]
        1 DUPTABLE                         R1 K3 [{"size"}]
        2 GETIMPORT                        R2 K6 [UDim2.new]
        4 LOADN                            R3 0
        5 LOADN                            R4 20
        6 LOADN                            R5 0
        7 LOADN                            R6 20
        8 CALL                             R2 4 1
        9 SETTABLEKS                       R2 R1 K2 ["size"]
       11 SETTABLEKS                       R1 R0 K0 ["imageStyles"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K7 ["createElement"]
       16 GETUPVAL                         R2 1
       17 DUPTABLE                         R3 K11 [{["Markdown"] = "You can include inline images using the normal markdown syntax: ![Image](rbxasset://textures/ui/common/robux_color@2x.png)\n\nImage can be added via `img` tag with the `src` attribute. Optionally, you can specify `width` and `height` attributes:\n\n<img src=\"rbxasset://textures/ui/common/robux_color@2x.png\" width=\"100\" height=\"100\">\n", ["MarkdownRendererProps"]}]
       18 SETTABLEKS                       R0 R3 K10 ["MarkdownRendererProps"]
       20 CALL                             R1 2 -1
       21 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["These two sentences are separated only with one line break.\nSo they are rendered in the same paragraph as one line.\n---\nThese two sentences are separated by two line breaks.\n\nSo they are rendered as two paragraphs.\n---\nThese two sentences are separated with a hard break. <br>\nSo they are rendered in the same paragraph with a line break\n---\n   Trailing and leading whitespaces\n      are removed around new lines. Other whitespaces are preserved.\n"]
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Here is an action button:\n\n<Button url=\"explorer://action-link\" text=\"Text button\">\n\n<Button url=\"explorer://action-link\" text=\"Icon\" icon=\"icons/common/robux\">\n"]
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Components"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K1 [script]
       11 LOADK                            R3 K5 ["Packages"]
       12 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K7 [require]
       17 GETTABLEKS                       R3 R0 K8 ["Types"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K7 [require]
       22 GETTABLEKS                       R4 R1 K9 ["Foundation"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K10 ["View"]
       27 GETIMPORT                        R5 K7 [require]
       29 GETTABLEKS                       R6 R1 K11 ["React"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K7 [require]
       34 GETTABLEKS                       R7 R0 K2 ["Components"]
       36 GETTABLEKS                       R7 R7 K12 ["MarkdownViewer"]
       38 CALL                             R6 1 1
       39 DUPCLOSURE                       R7 K13 [PROTO_0]
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R6
       42 DUPCLOSURE                       R8 K14 [PROTO_2]
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R7
       46 DUPCLOSURE                       R9 K15 [PROTO_3]
       47 CAPTURE                          VAL R7
       48 DUPCLOSURE                       R10 K16 [PROTO_4]
       49 CAPTURE                          VAL R7
       50 DUPCLOSURE                       R11 K17 [PROTO_5]
       51 CAPTURE                          VAL R7
       52 DUPCLOSURE                       R12 K18 [PROTO_6]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R6
       55 DUPCLOSURE                       R13 K19 [PROTO_7]
       56 CAPTURE                          VAL R7
       57 DUPCLOSURE                       R14 K20 [PROTO_8]
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R6
       60 DUPCLOSURE                       R15 K21 [PROTO_9]
       61 CAPTURE                          VAL R7
       62 SETGLOBAL                        R15 K22 ["rulerStory"]
       64 DUPCLOSURE                       R15 K23 [PROTO_10]
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R6
       67 SETGLOBAL                        R15 K24 ["withMarkdownRendererPropsStory"]
       69 DUPCLOSURE                       R15 K25 [PROTO_11]
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R6
       72 SETGLOBAL                        R15 K26 ["customCodeColorsStory"]
       74 DUPCLOSURE                       R15 K27 [PROTO_12]
       75 CAPTURE                          VAL R7
       76 SETGLOBAL                        R15 K28 ["quoteStory"]
       78 DUPCLOSURE                       R15 K29 [PROTO_13]
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R6
       81 SETGLOBAL                        R15 K30 ["imageStory"]
       83 DUPCLOSURE                       R15 K31 [PROTO_14]
       84 CAPTURE                          VAL R7
       85 SETGLOBAL                        R15 K32 ["lineBreaksStory"]
       87 DUPCLOSURE                       R15 K33 [PROTO_15]
       88 CAPTURE                          VAL R7
       89 SETGLOBAL                        R15 K34 ["actionButtonStory"]
       91 DUPTABLE                         R15 K38 [{["summary"] = "MarkdownViewer takes a markdown string as input and displays the rich content using a combination of RichText and inline UI components.", ["stories"]}]
       92 NEWTABLE                         R16 0 14
       94 DUPTABLE                         R17 K43 [{["name"] = "Custom text", ["summary"] = "Type your custom markdown text.", ["story"]}]
       95 SETTABLEKS                       R8 R17 K42 ["story"]
       97 DUPTABLE                         R18 K46 [{["name"] = "Rich text", ["summary"] = "MarkdownViewer can display various rich text formatting options like bold, italic, strikethrough, and monospaced text.", ["story"]}]
       98 SETTABLEKS                       R9 R18 K42 ["story"]
      100 DUPTABLE                         R19 K49 [{["name"] = "Headings", ["summary"] = "MarkdownViewer can display heading levels from 1 to 5.", ["story"]}]
      101 SETTABLEKS                       R10 R19 K42 ["story"]
      103 DUPTABLE                         R20 K52 [{["name"] = "Paragraphs", ["summary"] = "MarkdownViewer can display paragraphs, including links and line breaks.", ["story"]}]
      104 SETTABLEKS                       R11 R20 K42 ["story"]
      106 DUPTABLE                         R21 K55 [{["name"] = "Code", ["summary"] = "Displays Lua and non-Lua code blocks.", ["story"]}]
      107 SETTABLEKS                       R12 R21 K42 ["story"]
      109 DUPTABLE                         R22 K58 [{["name"] = "List", ["summary"] = "MarkdownViewer can display lists with nested items and inline formatting.", ["story"]}]
      110 SETTABLEKS                       R13 R22 K42 ["story"]
      112 DUPTABLE                         R23 K61 [{["name"] = "Customization", ["summary"] = "You can customize the MarkdownViewer's container using `WrapperProps`.", ["story"]}]
      113 SETTABLEKS                       R14 R23 K42 ["story"]
      115 DUPTABLE                         R24 K64 [{["name"] = "Ruler", ["summary"] = "MarkdownViewer can display horizontal rulers.", ["story"]}]
      116 GETGLOBAL                        R25 K22 ["rulerStory"]
      118 SETTABLEKS                       R25 R24 K42 ["story"]
      120 DUPTABLE                         R25 K67 [{["name"] = "With MarkdownRendererProps", ["summary"] = "You can customize text styles using `MarkdownRendererProps`.", ["story"]}]
      121 GETGLOBAL                        R26 K24 ["withMarkdownRendererPropsStory"]
      123 SETTABLEKS                       R26 R25 K42 ["story"]
      125 DUPTABLE                         R26 K70 [{["name"] = "With a custom codeblock color scheme", ["summary"] = "MarkdownViewer can display a code block with a custom color scheme.", ["story"]}]
      126 GETGLOBAL                        R27 K26 ["customCodeColorsStory"]
      128 SETTABLEKS                       R27 R26 K42 ["story"]
      130 DUPTABLE                         R27 K73 [{["name"] = "Quote", ["summary"] = "MarkdownViewer can display blockquotes with rich text and links.", ["story"]}]
      131 GETGLOBAL                        R28 K28 ["quoteStory"]
      133 SETTABLEKS                       R28 R27 K42 ["story"]
      135 DUPTABLE                         R28 K76 [{["name"] = "Image", ["summary"] = "MarkdownViewer can display inline images.", ["story"]}]
      136 GETGLOBAL                        R29 K30 ["imageStory"]
      138 SETTABLEKS                       R29 R28 K42 ["story"]
      140 DUPTABLE                         R29 K79 [{["name"] = "Line Breaks", ["summary"] = "MarkdownViewer can handle line breaks", ["story"]}]
      141 GETGLOBAL                        R30 K32 ["lineBreaksStory"]
      143 SETTABLEKS                       R30 R29 K42 ["story"]
      145 DUPTABLE                         R30 K82 [{["name"] = "Action button", ["summary"] = "MarkdownViewer can render an action button.", ["story"]}]
      146 GETGLOBAL                        R31 K34 ["actionButtonStory"]
      148 SETTABLEKS                       R31 R30 K42 ["story"]
      150 SETLIST                          R16 R17 14 [1]
      152 SETTABLEKS                       R16 R15 K37 ["stories"]
      154 RETURN                           R15 1
