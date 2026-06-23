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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADK                            R1 K1 ["You custom text"]
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["createElement"]
        8 LOADK                            R3 K3 ["Frame"]
        9 NEWTABLE                         R4 1 0
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K4 ["Tag"]
       14 LOADK                            R6 K5 ["X-FitY X-ColumnM X-Transparent"]
       15 SETTABLE                         R6 R4 R5
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K2 ["createElement"]
       19 GETUPVAL                         R6 1
       20 DUPTABLE                         R7 K11 [{"MultiLine", "OnTextChanged", "Text", "Size", "LayoutOrder"}]
       21 LOADB                            R8 1
       22 SETTABLEKS                       R8 R7 K6 ["MultiLine"]
       24 SETTABLEKS                       R1 R7 K7 ["OnTextChanged"]
       26 SETTABLEKS                       R0 R7 K8 ["Text"]
       28 GETIMPORT                        R8 K14 [UDim2.new]
       30 LOADN                            R9 1
       31 LOADN                            R10 0
       32 LOADN                            R11 0
       33 LOADN                            R12 200
       34 CALL                             R8 4 1
       35 SETTABLEKS                       R8 R7 K9 ["Size"]
       37 LOADN                            R8 1
       38 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
       40 CALL                             R5 2 1
       41 GETUPVAL                         R6 2
       42 MOVE                             R7 R0
       43 DUPTABLE                         R8 K15 [{"LayoutOrder"}]
       44 LOADN                            R9 2
       45 SETTABLEKS                       R9 R8 K10 ["LayoutOrder"]
       47 CALL                             R6 2 -1
       48 CALL                             R2 -1 -1
       49 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["It's normal text.\n\nText in *bold*.\n\nText _italicized_.\n\nText with ~strikethrough~ applied.\n\n`Monospaced` text.\n\n<font color=\"#FF7800\">Colored text.</font>\n\nLong paragraph with RichText: *bold*, _italic_, ~strikethrough~, `monospace`, *bold*, _italic_, ~strikethrough~, `monospace`.\n"]
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["# Heading 1\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in quam sodales, iaculis ligula ac, scelerisque leo. Duis facilisis blandit justo, at venenatis purus viverra ut.\n\n## Heading 2\n\nSuspendisse consectetur, dui lacinia posuere pharetra, tellus ante varius erat, et consequat nisl tortor in augue.\n\n### Heading 3\n\nSed bibendum velit a scelerisque mattis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer sapien mi, lobortis et augue non, congue efficitur neque.\n\n#### Heading 4\n\nNam ullamcorper velit at sodales malesuada. Morbi gravida arcu a quam euismod venenatis.\n\n##### Heading 5\n\nPhasellus at risus id lectus faucibus accumsan. Donec a feugiat purus. Sed luctus elit ac tellus sodales pellentesque.\n"]
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["This is a short paragraph.\n\nThis is a paragraph with a [link](http://example.com). Or even with [two](http://two-link.example) links. We also can add a [very long link with a verbose description](http://very-long-link.example) to see how it's dislayed.\n\nThis is a resonably long paragraph: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent nec massa sit amet nisl pretium ultrices vel nec ante. Nam tempor felis vitae egestas bibendum. Maecenas id nisl mauris. Morbi euismod elementum consectetur. Suspendisse feugiat vel nunc cursus condimentum. Vivamus vitae elit sed velit placerat placerat.\n\nParagraph with\na line break is still a valid paragraph.\n"]
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["createElement"]
        5 GETUPVAL                         R2 2
        6 DUPTABLE                         R3 K3 [{"Markdown", "ColorScheme"}]
        7 LOADK                            R4 K4 ["Lua code block:\n\n```lua\n-- factorial function\nfunction fact(n)\n  if n == 0 then\n    return 1\n  else\n    return n * fact(n-1)\n  end\nend\n\nprint(\"enter a number:\")\na = io.read(\"*number\")\nprint(fact(a))\n```\n\nNon-lua code block:\n\n```ruby\nclass Integer\n  def fact\n    (1..self).reduce(:*) || 1\n  end\nend\n```\n"]
        8 SETTABLEKS                       R4 R3 K1 ["Markdown"]
       10 SETTABLEKS                       R0 R3 K2 ["ColorScheme"]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["- List item 1\n- List item 2 to show inline formatting: *Bold*, _Italic_, ~Strike~ and `Monospace` text.\n  - List subitem 2.1\n- List item 3\n  - List subitem 3.1\n  - List subitem 3.2 with a [link](http://example.com)\n    - List subsubitem 3.2.1\n    - List subsubitem 3.2.2\n      - Very deep list subsubsubitem 3.2.2.1\n        * Very-very deep list subsubsubitem 3.2.2.1.1 with a different marker\n        * 3.2.2.1.2 with a different marker\n    - List subsubitem 3.2.3\n    - Very long list subsubitem 3.2.4 - Phasellus at risus id lectus faucibus accumsan. Donec a feugiat purus. Sed luctus elit ac tellus sodales pellentesque.\n    - List subitem 3.2.5\n  - List subitem 3.3\n- List item 4\n  - List subitem 4.1\n- Very long list item 5 - Phasellus at risus id lectus faucibus accumsan. Donec a feugiat purus. Sed luctus elit ac tellus sodales pellentesque.\n"]
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_7:
        0 DUPTABLE                         R0 K2 [{"BackgroundColor3", "BackgroundTransparency"}]
        1 GETIMPORT                        R1 K5 [Color3.fromRGB]
        3 LOADN                            R2 34
        4 LOADN                            R3 87
        5 LOADN                            R4 122
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["BackgroundColor3"]
        9 LOADN                            R1 0
       10 SETTABLEKS                       R1 R0 K1 ["BackgroundTransparency"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K6 ["createElement"]
       15 GETUPVAL                         R2 1
       16 DUPTABLE                         R3 K9 [{"Markdown", "WrapperProps"}]
       17 LOADK                            R4 K10 ["You can customize or position the MarkdownViewer's container by passing a `WrapperProps` prop. For example, this story uses the following properties:\n```lua\n{\n\tBackgroundColor3 = Color3.fromRGB(34, 87, 122),\n\tBackgroundTransparency = 0\n}\n```\nYou can pass any properties that Frame supports.\n"]
       18 SETTABLEKS                       R4 R3 K7 ["Markdown"]
       20 SETTABLEKS                       R0 R3 K8 ["WrapperProps"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["A ruler below is created with the === syntax.\n\n===\n\nA ruler below is created with a --- syntax.\n\n---\n\n"]
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_9:
        0 DUPTABLE                         R0 K2 [{"textSize", "font"}]
        1 LOADN                            R1 20
        2 SETTABLEKS                       R1 R0 K0 ["textSize"]
        4 GETIMPORT                        R1 K6 [Enum.Font.Fondamento]
        6 SETTABLEKS                       R1 R0 K1 ["font"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K7 ["createElement"]
       11 GETUPVAL                         R2 1
       12 DUPTABLE                         R3 K10 [{"Markdown", "MarkdownRendererProps"}]
       13 LOADK                            R4 K11 ["You can customize the text style by passing a `MarkdownRendererProps` prop. For example, this story uses the following properties:\n```lua\n{\n\ttextSize = 20,\n\tfont = Enum.Font.Fondamento,\n}\n```\n"]
       14 SETTABLEKS                       R4 R3 K8 ["Markdown"]
       16 SETTABLEKS                       R0 R3 K9 ["MarkdownRendererProps"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_10:
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
       77 DUPTABLE                         R3 K16 [{"Markdown", "ColorScheme"}]
       78 LOADK                            R4 K17 ["Lua code block with custom colors (black background, green keywords, orange strings and numbers, gray comments, everything else is white)\n\n```lua\n-- factorial function\nfunction fact(n)\n  if n == 0 then\n    return 1\n  else\n    return n * fact(n-1)\n  end\nend\nprint(\"enter a number:\")\na = io.read(\"*number\")\nprint(fact(a))\n```\n"]
       79 SETTABLEKS                       R4 R3 K14 ["Markdown"]
       81 SETTABLEKS                       R0 R3 K15 ["ColorScheme"]
       83 CALL                             R1 2 -1
       84 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["This is a relatively long paragraph that goes before a quote.\n\n> This is a simple quote.\n\n> This is a quote with a [link](http://example.com).\n\n> This is a quote with rich text: *bold*, _italic_, ~strikethrough~, `monospace`.\n"]
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_12:
        0 DUPTABLE                         R0 K1 [{"imageSize"}]
        1 GETIMPORT                        R1 K4 [UDim2.new]
        3 LOADN                            R2 0
        4 LOADN                            R3 20
        5 LOADN                            R4 0
        6 LOADN                            R5 20
        7 CALL                             R1 4 1
        8 SETTABLEKS                       R1 R0 K0 ["imageSize"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K5 ["createElement"]
       13 GETUPVAL                         R2 1
       14 DUPTABLE                         R3 K8 [{"Markdown", "MarkdownRendererProps"}]
       15 LOADK                            R4 K9 ["You can include inline images using the normal markdown syntax: ![Image](rbxasset://textures/ui/common/robux_color@2x.png)\n\nImage can be added via `img` tag with the `src` attribute. Optionally, you can specify `width` and `height` attributes:\n\n<img src=\"rbxasset://textures/ui/common/robux_color@2x.png\" width=\"100\" height=\"100\">\n"]
       16 SETTABLEKS                       R4 R3 K6 ["Markdown"]
       18 SETTABLEKS                       R0 R3 K7 ["MarkdownRendererProps"]
       20 CALL                             R1 2 -1
       21 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["These two sentences are separated only with one line break.\nSo they are rendered in the same paragraph as one line.\n---\nThese two sentences are separated by two line breaks.\n\nSo they are rendered as two paragraphs.\n---\nThese two sentences are separated with a hard break. <br>\nSo they are rendered in the same paragraph with a line break\n---\n   Trailing and leading whitespaces\n      are removed around new lines. Other whitespaces are preserved.\n"]
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Here is an action button:\n\n<Button url=\"explorer://action-link\" text=\"Text button\">\n\n<Button url=\"explorer://action-link\" text=\"Icon left\" leftIcon=\"rbxasset://textures/DeveloperFramework/AssetPreview/close_button.png\">\n\n<Button url=\"explorer://action-link\" text=\"Icon right\" rightIcon=\"rbxasset://textures/DeveloperFramework/AssetPreview/close_button.png\">\n"]
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K9 ["Components"]
       22 GETTABLEKS                       R3 R3 K10 ["MarkdownViewer"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["Highlighter"]
       31 GETTABLEKS                       R4 R4 K12 ["useStudioThemeColors"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R5 R0 K7 ["Util"]
       38 GETTABLEKS                       R5 R5 K11 ["Highlighter"]
       40 GETTABLEKS                       R5 R5 K13 ["Types"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K6 [require]
       45 GETTABLEKS                       R6 R0 K2 ["UI"]
       47 GETTABLEKS                       R6 R6 K9 ["Components"]
       49 GETTABLEKS                       R6 R6 K14 ["TextInput"]
       51 CALL                             R5 1 1
       52 DUPCLOSURE                       R6 K15 [PROTO_0]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R2
       55 DUPCLOSURE                       R7 K16 [PROTO_1]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R6
       59 DUPCLOSURE                       R8 K17 [PROTO_2]
       60 CAPTURE                          VAL R6
       61 DUPCLOSURE                       R9 K18 [PROTO_3]
       62 CAPTURE                          VAL R6
       63 DUPCLOSURE                       R10 K19 [PROTO_4]
       64 CAPTURE                          VAL R6
       65 DUPCLOSURE                       R11 K20 [PROTO_5]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R2
       69 DUPCLOSURE                       R12 K21 [PROTO_6]
       70 CAPTURE                          VAL R6
       71 DUPCLOSURE                       R13 K22 [PROTO_7]
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R2
       74 DUPCLOSURE                       R14 K23 [PROTO_8]
       75 CAPTURE                          VAL R6
       76 SETGLOBAL                        R14 K24 ["rulerStory"]
       78 DUPCLOSURE                       R14 K25 [PROTO_9]
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R2
       81 SETGLOBAL                        R14 K26 ["withMarkdownRendererPropsStory"]
       83 DUPCLOSURE                       R14 K27 [PROTO_10]
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R2
       86 SETGLOBAL                        R14 K28 ["customCodeColorsStory"]
       88 DUPCLOSURE                       R14 K29 [PROTO_11]
       89 CAPTURE                          VAL R6
       90 SETGLOBAL                        R14 K30 ["quoteStory"]
       92 DUPCLOSURE                       R14 K31 [PROTO_12]
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R2
       95 SETGLOBAL                        R14 K32 ["imageStory"]
       97 DUPCLOSURE                       R14 K33 [PROTO_13]
       98 CAPTURE                          VAL R6
       99 SETGLOBAL                        R14 K34 ["lineBreaksStory"]
      101 DUPCLOSURE                       R14 K35 [PROTO_14]
      102 CAPTURE                          VAL R6
      103 SETGLOBAL                        R14 K36 ["actionButtonStory"]
      105 DUPTABLE                         R14 K38 [{"stories"}]
      106 NEWTABLE                         R15 0 14
      108 DUPTABLE                         R16 K41 [{"name", "story"}]
      109 LOADK                            R17 K42 ["Custom text"]
      110 SETTABLEKS                       R17 R16 K39 ["name"]
      112 SETTABLEKS                       R7 R16 K40 ["story"]
      114 DUPTABLE                         R17 K41 [{"name", "story"}]
      115 LOADK                            R18 K43 ["Rich text"]
      116 SETTABLEKS                       R18 R17 K39 ["name"]
      118 SETTABLEKS                       R8 R17 K40 ["story"]
      120 DUPTABLE                         R18 K41 [{"name", "story"}]
      121 LOADK                            R19 K44 ["Headings"]
      122 SETTABLEKS                       R19 R18 K39 ["name"]
      124 SETTABLEKS                       R9 R18 K40 ["story"]
      126 DUPTABLE                         R19 K41 [{"name", "story"}]
      127 LOADK                            R20 K45 ["Paragraphs"]
      128 SETTABLEKS                       R20 R19 K39 ["name"]
      130 SETTABLEKS                       R10 R19 K40 ["story"]
      132 DUPTABLE                         R20 K41 [{"name", "story"}]
      133 LOADK                            R21 K46 ["Code"]
      134 SETTABLEKS                       R21 R20 K39 ["name"]
      136 SETTABLEKS                       R11 R20 K40 ["story"]
      138 DUPTABLE                         R21 K41 [{"name", "story"}]
      139 LOADK                            R22 K47 ["List"]
      140 SETTABLEKS                       R22 R21 K39 ["name"]
      142 SETTABLEKS                       R12 R21 K40 ["story"]
      144 DUPTABLE                         R22 K41 [{"name", "story"}]
      145 LOADK                            R23 K48 ["Customization"]
      146 SETTABLEKS                       R23 R22 K39 ["name"]
      148 SETTABLEKS                       R13 R22 K40 ["story"]
      150 DUPTABLE                         R23 K41 [{"name", "story"}]
      151 LOADK                            R24 K49 ["Ruler"]
      152 SETTABLEKS                       R24 R23 K39 ["name"]
      154 GETGLOBAL                        R24 K24 ["rulerStory"]
      156 SETTABLEKS                       R24 R23 K40 ["story"]
      158 DUPTABLE                         R24 K41 [{"name", "story"}]
      159 LOADK                            R25 K50 ["With MarkdownRendererProps"]
      160 SETTABLEKS                       R25 R24 K39 ["name"]
      162 GETGLOBAL                        R25 K26 ["withMarkdownRendererPropsStory"]
      164 SETTABLEKS                       R25 R24 K40 ["story"]
      166 DUPTABLE                         R25 K41 [{"name", "story"}]
      167 LOADK                            R26 K51 ["With a custom codeblock color scheme"]
      168 SETTABLEKS                       R26 R25 K39 ["name"]
      170 GETGLOBAL                        R26 K28 ["customCodeColorsStory"]
      172 SETTABLEKS                       R26 R25 K40 ["story"]
      174 DUPTABLE                         R26 K41 [{"name", "story"}]
      175 LOADK                            R27 K52 ["Quote"]
      176 SETTABLEKS                       R27 R26 K39 ["name"]
      178 GETGLOBAL                        R27 K30 ["quoteStory"]
      180 SETTABLEKS                       R27 R26 K40 ["story"]
      182 DUPTABLE                         R27 K41 [{"name", "story"}]
      183 LOADK                            R28 K53 ["Image"]
      184 SETTABLEKS                       R28 R27 K39 ["name"]
      186 GETGLOBAL                        R28 K32 ["imageStory"]
      188 SETTABLEKS                       R28 R27 K40 ["story"]
      190 DUPTABLE                         R28 K41 [{"name", "story"}]
      191 LOADK                            R29 K54 ["Line Breaks"]
      192 SETTABLEKS                       R29 R28 K39 ["name"]
      194 GETGLOBAL                        R29 K34 ["lineBreaksStory"]
      196 SETTABLEKS                       R29 R28 K40 ["story"]
      198 DUPTABLE                         R29 K41 [{"name", "story"}]
      199 LOADK                            R30 K55 ["Action button"]
      200 SETTABLEKS                       R30 R29 K39 ["name"]
      202 GETGLOBAL                        R30 K36 ["actionButtonStory"]
      204 SETTABLEKS                       R30 R29 K40 ["story"]
      206 SETLIST                          R15 R16 14 [1]
      208 SETTABLEKS                       R15 R14 K37 ["stories"]
      210 RETURN                           R14 1
