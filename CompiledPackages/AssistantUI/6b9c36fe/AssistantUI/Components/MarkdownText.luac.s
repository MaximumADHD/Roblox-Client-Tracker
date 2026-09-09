PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K10 [{[1] = "size-full-0 auto-y content-default", ["Text"], ["TextXAlignment"], ["Font"], ["TextSize"] = 18, ["LayoutOrder"], ["TextWrapped"] = True}]
        3 GETTABLEKS                       R4 R0 K11 ["Markdown"]
        5 SETTABLEKS                       R4 R3 K2 ["Text"]
        7 GETIMPORT                        R4 K14 [Enum.TextXAlignment.Left]
        9 SETTABLEKS                       R4 R3 K3 ["TextXAlignment"]
       11 GETIMPORT                        R4 K16 [Enum.Font.SourceSans]
       13 SETTABLEKS                       R4 R3 K4 ["Font"]
       15 GETTABLEKS                       R5 R0 K17 ["WrapperProps"]
       17 JUMPIFNOT                        R5 ; [+5]
       18 GETTABLEKS                       R4 R0 K17 ["WrapperProps"]
       20 GETTABLEKS                       R4 R4 K7 ["LayoutOrder"]
       22 JUMPIF                           R4 ; [+1]
       23 LOADN                            R4 0
       24 SETTABLEKS                       R4 R3 K7 ["LayoutOrder"]
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 LOADK                            R3 K3 ["TEXT"]
        5 SETTABLEKS                       R3 R2 K4 ["name"]
        7 GETTABLEKS                       R3 R1 K5 ["processChildren"]
        9 NEWTABLE                         R4 0 1
       11 MOVE                             R5 R2
       12 SETLIST                          R4 R5 1 [1]
       14 MOVE                             R5 R1
       15 CALL                             R3 2 1
       16 LENGTH                           R4 R3
       17 JUMPIFNOTEQKN                    R4 K6 [1] ; [+3]
       19 GETTABLEN                        R4 R3 1
       20 RETURN                           R4 1
       21 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["isDevFrameworkAvailable"]
        6 CALL                             R0 0 1
        7 JUMPIFNOT                        R0 ; [+27]
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+2]
       10 GETUPVAL                         R0 2
       11 JUMPIF                           R0 ; [+18]
       12 GETIMPORT                        R0 K3 [require]
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R1 R1 K4 ["Framework"]
       17 CALL                             R0 1 1
       18 GETTABLEKS                       R1 R0 K5 ["UI"]
       20 GETTABLEKS                       R1 R1 K6 ["MarkdownViewer"]
       22 SETUPVAL                         R1 1
       23 GETTABLEKS                       R1 R0 K5 ["UI"]
       25 GETTABLEKS                       R1 R1 K7 ["Hooks"]
       27 GETTABLEKS                       R1 R1 K8 ["useStudioThemeColorsForHighlighter"]
       29 SETUPVAL                         R1 2
       30 GETUPVAL                         R0 1
       31 GETUPVAL                         R1 2
       32 JUMPIF                           R1 ; [+1]
       33 GETUPVAL                         R1 4
       34 RETURN                           R0 2
       35 GETUPVAL                         R0 5
       36 GETUPVAL                         R1 4
       37 RETURN                           R0 2

PROTO_4:
        0 DUPTABLE                         R2 K6 [{[1], ["fontFace"] = , ["textSize"], ["transparency"], ["color"]}]
        1 GETTABLEKS                       R3 R0 K7 ["Font"]
        3 SETTABLEKS                       R3 R2 K0 ["font"]
        5 GETTABLEKS                       R3 R0 K8 ["FontSize"]
        7 SETTABLEKS                       R3 R2 K3 ["textSize"]
        9 JUMPIFNOT                        R1 ; [+3]
       10 GETTABLEKS                       R3 R1 K9 ["Transparency"]
       12 JUMPIF                           R3 ; [+1]
       13 LOADNIL                          R3
       14 SETTABLEKS                       R3 R2 K4 ["transparency"]
       16 JUMPIFNOT                        R1 ; [+14]
       17 GETTABLEKS                       R4 R1 K10 ["Color3"]
       19 JUMPIFNOT                        R4 ; [+11]
       20 LOADK                            R4 K11 ["#%*"]
       21 GETTABLEKS                       R6 R1 K10 ["Color3"]
       23 NAMECALL                         R6 R6 K12 ["ToHex"]
       25 CALL                             R6 1 1
       26 NAMECALL                         R4 R4 K13 ["format"]
       28 CALL                             R4 2 1
       29 MOVE                             R3 R4
       30 JUMPIF                           R3 ; [+1]
       31 LOADNIL                          R3
       32 SETTABLEKS                       R3 R2 K5 ["color"]
       34 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onMount"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["MarkdownText"]
        2 LOADK                            R3 K1 ["FailedParse"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useEffect"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["onMount"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K2 ["useMemo"]
       15 DUPCLOSURE                       R2 K3 [PROTO_6]
       16 CAPTURE                          UPVAL U1
       17 NEWTABLE                         R3 0 1
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K4 ["locale"]
       22 SETLIST                          R3 R4 1 [1]
       24 CALL                             R1 2 1
       25 GETUPVAL                         R2 2
       26 GETUPVAL                         R3 3
       27 DUPTABLE                         R4 K8 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"]}]
       28 GETTABLEKS                       R5 R0 K7 ["LayoutOrder"]
       30 SETTABLEKS                       R5 R4 K7 ["LayoutOrder"]
       32 DUPTABLE                         R5 K10 [{"ErrorText"}]
       33 GETUPVAL                         R6 2
       34 GETUPVAL                         R7 4
       35 DUPTABLE                         R8 K13 [{["tag"] = "auto-xy text-body-small", ["Text"]}]
       36 SETTABLEKS                       R1 R8 K12 ["Text"]
       38 CALL                             R6 2 1
       39 SETTABLEKS                       R6 R5 K9 ["ErrorText"]
       41 CALL                             R2 3 -1
       42 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Typography"]
        3 DUPTABLE                         R1 K5 [{"textStyles", "codeStyles", "codeBackgroundStyles", "headerStyles"}]
        4 GETTABLEKS                       R3 R0 K6 ["BodySmall"]
        6 DUPTABLE                         R2 K13 [{["font"], ["fontFace"] = , ["textSize"], ["transparency"] = , ["color"] = }]
        7 GETTABLEKS                       R4 R3 K14 ["Font"]
        9 SETTABLEKS                       R4 R2 K7 ["font"]
       11 GETTABLEKS                       R4 R3 K15 ["FontSize"]
       13 SETTABLEKS                       R4 R2 K10 ["textSize"]
       15 SETTABLEKS                       R2 R1 K1 ["textStyles"]
       17 DUPTABLE                         R2 K16 [{"textSize", "fontFace"}]
       18 GETTABLEKS                       R3 R0 K6 ["BodySmall"]
       20 GETTABLEKS                       R3 R3 K15 ["FontSize"]
       22 SETTABLEKS                       R3 R2 K10 ["textSize"]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K17 ["CODE_FONT"]
       27 SETTABLEKS                       R3 R2 K8 ["fontFace"]
       29 SETTABLEKS                       R2 R1 K2 ["codeStyles"]
       31 DUPTABLE                         R2 K20 [{["backgroundTransparency"] = 1}]
       32 SETTABLEKS                       R2 R1 K3 ["codeBackgroundStyles"]
       34 NEWTABLE                         R2 0 6
       36 GETTABLEKS                       R4 R0 K21 ["TitleLarge"]
       38 DUPTABLE                         R3 K13 [{["font"], ["fontFace"] = , ["textSize"], ["transparency"] = , ["color"] = }]
       39 GETTABLEKS                       R5 R4 K14 ["Font"]
       41 SETTABLEKS                       R5 R3 K7 ["font"]
       43 GETTABLEKS                       R5 R4 K15 ["FontSize"]
       45 SETTABLEKS                       R5 R3 K10 ["textSize"]
       47 GETTABLEKS                       R5 R0 K22 ["TitleMedium"]
       49 DUPTABLE                         R4 K13 [{["font"], ["fontFace"] = , ["textSize"], ["transparency"] = , ["color"] = }]
       50 GETTABLEKS                       R6 R5 K14 ["Font"]
       52 SETTABLEKS                       R6 R4 K7 ["font"]
       54 GETTABLEKS                       R6 R5 K15 ["FontSize"]
       56 SETTABLEKS                       R6 R4 K10 ["textSize"]
       58 GETTABLEKS                       R6 R0 K23 ["TitleSmall"]
       60 DUPTABLE                         R5 K13 [{["font"], ["fontFace"] = , ["textSize"], ["transparency"] = , ["color"] = }]
       61 GETTABLEKS                       R7 R6 K14 ["Font"]
       63 SETTABLEKS                       R7 R5 K7 ["font"]
       65 GETTABLEKS                       R7 R6 K15 ["FontSize"]
       67 SETTABLEKS                       R7 R5 K10 ["textSize"]
       69 GETTABLEKS                       R7 R0 K23 ["TitleSmall"]
       71 DUPTABLE                         R6 K13 [{["font"], ["fontFace"] = , ["textSize"], ["transparency"] = , ["color"] = }]
       72 GETTABLEKS                       R8 R7 K14 ["Font"]
       74 SETTABLEKS                       R8 R6 K7 ["font"]
       76 GETTABLEKS                       R8 R7 K15 ["FontSize"]
       78 SETTABLEKS                       R8 R6 K10 ["textSize"]
       80 GETTABLEKS                       R8 R0 K23 ["TitleSmall"]
       82 DUPTABLE                         R7 K13 [{["font"], ["fontFace"] = , ["textSize"], ["transparency"] = , ["color"] = }]
       83 GETTABLEKS                       R9 R8 K14 ["Font"]
       85 SETTABLEKS                       R9 R7 K7 ["font"]
       87 GETTABLEKS                       R9 R8 K15 ["FontSize"]
       89 SETTABLEKS                       R9 R7 K10 ["textSize"]
       91 GETTABLEKS                       R9 R0 K23 ["TitleSmall"]
       93 DUPTABLE                         R8 K13 [{["font"], ["fontFace"] = , ["textSize"], ["transparency"] = , ["color"] = }]
       94 GETTABLEKS                       R10 R9 K14 ["Font"]
       96 SETTABLEKS                       R10 R8 K7 ["font"]
       98 GETTABLEKS                       R10 R9 K15 ["FontSize"]
      100 SETTABLEKS                       R10 R8 K10 ["textSize"]
      102 SETLIST                          R2 R3 6 [1]
      104 SETTABLEKS                       R2 R1 K4 ["headerStyles"]
      106 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Dictionary"]
        3 GETTABLEKS                       R0 R0 K1 ["join"]
        5 GETUPVAL                         R1 1
        6 NEWTABLE                         R2 1 0
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["Color"]
       11 GETTABLEKS                       R3 R3 K3 ["Surface"]
       13 GETTABLEKS                       R3 R3 K4 ["Surface_200"]
       15 GETTABLEKS                       R3 R3 K5 ["Color3"]
       17 SETTABLEKS                       R3 R2 K6 ["background"]
       19 CALL                             R0 2 -1
       20 RETURN                           R0 -1

PROTO_10:
        0 DUPTABLE                         R0 K3 [{"AutomaticSize", "Size", "LayoutOrder"}]
        1 GETIMPORT                        R1 K6 [Enum.AutomaticSize.Y]
        3 SETTABLEKS                       R1 R0 K0 ["AutomaticSize"]
        5 GETIMPORT                        R1 K9 [UDim2.fromScale]
        7 LOADN                            R2 1
        8 LOADN                            R3 0
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K1 ["Size"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K2 ["LayoutOrder"]
       15 SETTABLEKS                       R1 R0 K2 ["LayoutOrder"]
       17 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["EventLogger"]
        6 GETTABLEKS                       R1 R0 K2 ["logMarkdownError"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["markdown"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["messageId"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R0 1
        5 LOADK                            R2 K1 ["MarkdownError_%*"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["messageId"]
        9 NAMECALL                         R2 R2 K2 ["format"]
       11 CALL                             R2 2 1
       12 MOVE                             R1 R2
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U0
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useMemo"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U2
       12 NEWTABLE                         R4 0 1
       14 GETTABLEKS                       R5 R1 K3 ["Typography"]
       16 SETLIST                          R4 R5 1 [1]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K4 ["get"]
       22 CALL                             R5 0 1
       23 GETTABLEKS                       R5 R5 K5 ["isDevFrameworkAvailable"]
       25 CALL                             R5 0 1
       26 JUMPIFNOT                        R5 ; [+27]
       27 GETUPVAL                         R5 4
       28 JUMPIFNOT                        R5 ; [+2]
       29 GETUPVAL                         R5 5
       30 JUMPIF                           R5 ; [+18]
       31 GETIMPORT                        R5 K7 [require]
       33 GETUPVAL                         R6 6
       34 GETTABLEKS                       R6 R6 K8 ["Framework"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R5 K9 ["UI"]
       39 GETTABLEKS                       R6 R6 K10 ["MarkdownViewer"]
       41 SETUPVAL                         R6 4
       42 GETTABLEKS                       R6 R5 K9 ["UI"]
       44 GETTABLEKS                       R6 R6 K0 ["Hooks"]
       46 GETTABLEKS                       R6 R6 K11 ["useStudioThemeColorsForHighlighter"]
       48 SETUPVAL                         R6 5
       49 GETUPVAL                         R3 4
       50 GETUPVAL                         R4 5
       51 JUMPIF                           R4 ; [+4]
       52 GETUPVAL                         R4 7
       53 JUMP                             ; [+2]
       54 GETUPVAL                         R3 8
       55 GETUPVAL                         R4 7
       56 MOVE                             R5 R4
       57 CALL                             R5 0 1
       58 GETUPVAL                         R6 1
       59 GETTABLEKS                       R6 R6 K2 ["useMemo"]
       61 NEWCLOSURE                       R7 P1
       62 CAPTURE                          UPVAL U9
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R1
       65 NEWTABLE                         R8 0 2
       67 MOVE                             R9 R5
       68 GETTABLEKS                       R10 R1 K12 ["Color"]
       70 GETTABLEKS                       R10 R10 K13 ["Surface"]
       72 GETTABLEKS                       R10 R10 K14 ["Surface_200"]
       74 GETTABLEKS                       R10 R10 K15 ["Color3"]
       76 SETLIST                          R8 R9 2 [1]
       78 CALL                             R6 2 1
       79 GETUPVAL                         R7 1
       80 GETTABLEKS                       R7 R7 K2 ["useMemo"]
       82 NEWCLOSURE                       R8 P2
       83 CAPTURE                          VAL R0
       84 NEWTABLE                         R9 0 1
       86 GETTABLEKS                       R10 R0 K16 ["LayoutOrder"]
       88 SETLIST                          R9 R10 1 [1]
       90 CALL                             R7 2 1
       91 GETUPVAL                         R8 1
       92 GETTABLEKS                       R8 R8 K17 ["useCallback"]
       94 NEWCLOSURE                       R9 P3
       95 CAPTURE                          VAL R0
       96 CAPTURE                          UPVAL U10
       97 CAPTURE                          UPVAL U3
       98 NEWTABLE                         R10 0 2
      100 GETTABLEKS                       R11 R0 K18 ["messageId"]
      102 GETTABLEKS                       R12 R0 K19 ["markdown"]
      104 SETLIST                          R10 R11 2 [1]
      106 CALL                             R8 2 1
      107 GETUPVAL                         R9 11
      108 MOVE                             R10 R3
      109 DUPTABLE                         R11 K28 [{"Markdown", "WrapperProps", "MarkdownRendererProps", "ColorScheme", "Renderers", "Fallback", "LinkCallback", "OnError"}]
      110 GETTABLEKS                       R12 R0 K19 ["markdown"]
      112 SETTABLEKS                       R12 R11 K20 ["Markdown"]
      114 SETTABLEKS                       R7 R11 K21 ["WrapperProps"]
      116 SETTABLEKS                       R2 R11 K22 ["MarkdownRendererProps"]
      118 SETTABLEKS                       R6 R11 K23 ["ColorScheme"]
      120 GETUPVAL                         R13 12
      121 GETTABLEKS                       R13 R13 K29 ["FFlagAsssistantFixMarkdownRendererErrorForBracket"]
      123 JUMPIFNOT                        R13 ; [+2]
      124 GETUPVAL                         R12 13
      125 JUMP                             ; [+1]
      126 LOADNIL                          R12
      127 SETTABLEKS                       R12 R11 K24 ["Renderers"]
      129 GETUPVAL                         R12 11
      130 GETUPVAL                         R13 14
      131 DUPTABLE                         R14 K31 [{"LayoutOrder", "onMount"}]
      132 GETTABLEKS                       R15 R0 K16 ["LayoutOrder"]
      134 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
      136 SETTABLEKS                       R8 R14 K30 ["onMount"]
      138 CALL                             R12 2 1
      139 SETTABLEKS                       R12 R11 K25 ["Fallback"]
      141 GETTABLEKS                       R12 R0 K32 ["linkCallback"]
      143 SETTABLEKS                       R12 R11 K26 ["LinkCallback"]
      145 SETTABLEKS                       R8 R11 K27 ["OnError"]
      147 CALL                             R9 2 -1
      148 RETURN                           R9 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["EventLogger"]
        6 GETTABLEKS                       R1 R0 K2 ["logMarkdownError"]
        8 GETUPVAL                         R2 1
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+11]
        2 GETUPVAL                         R1 1
        3 LOADK                            R3 K0 ["MarkdownError_%*"]
        4 GETUPVAL                         R5 0
        5 NAMECALL                         R3 R3 K1 ["format"]
        7 CALL                             R3 2 1
        8 MOVE                             R2 R3
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useCallback"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 NEWTABLE                         R4 0 2
       10 MOVE                             R5 R1
       11 MOVE                             R6 R0
       12 SETLIST                          R4 R5 2 [1]
       14 CALL                             R2 2 1
       15 RETURN                           R2 1

PROTO_17:
        0 DUPTABLE                         R2 K6 [{[1] = "TEXT", ["text"], ["children"], ["offset"], ["type"]}]
        1 GETTABLEKS                       R3 R0 K2 ["text"]
        3 SETTABLEKS                       R3 R2 K2 ["text"]
        5 NEWTABLE                         R3 0 0
        7 SETTABLEKS                       R3 R2 K3 ["children"]
        9 GETTABLEKS                       R3 R0 K4 ["offset"]
       11 SETTABLEKS                       R3 R2 K4 ["offset"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K7 ["InlineLeaf"]
       16 SETTABLEKS                       R3 R2 K5 ["type"]
       18 DUPTABLE                         R3 K8 [{"name", "children", "offset", "type"}]
       19 GETTABLEKS                       R4 R0 K0 ["name"]
       21 SETTABLEKS                       R4 R3 K0 ["name"]
       23 NEWTABLE                         R4 0 1
       25 MOVE                             R5 R2
       26 SETLIST                          R4 R5 1 [1]
       28 SETTABLEKS                       R4 R3 K3 ["children"]
       30 GETTABLEKS                       R4 R0 K4 ["offset"]
       32 SETTABLEKS                       R4 R3 K4 ["offset"]
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R4 R4 K9 ["InlineSpan"]
       37 SETTABLEKS                       R4 R3 K5 ["type"]
       39 GETTABLEKS                       R5 R1 K10 ["processChildren"]
       41 MOVE                             R6 R3
       42 MOVE                             R7 R1
       43 CALL                             R5 2 1
       44 GETTABLEN                        R4 R5 1
       45 RETURN                           R4 1

PROTO_18:
        0 DUPTABLE                         R0 K4 [{"textStyles", "codeStyles", "codeBackgroundStyles", "headerStyles"}]
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K5 ["BodySmall"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K6 ["Default"]
        8 CALL                             R1 2 1
        9 SETTABLEKS                       R1 R0 K0 ["textStyles"]
       11 DUPTABLE                         R1 K12 [{"textSize", "fontFace", "lineHeight", "color", "transparency"}]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K5 ["BodySmall"]
       15 GETTABLEKS                       R2 R2 K13 ["FontSize"]
       17 SETTABLEKS                       R2 R1 K7 ["textSize"]
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R2 R2 K14 ["CODE_FONT"]
       22 SETTABLEKS                       R2 R1 K8 ["fontFace"]
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K5 ["BodySmall"]
       27 GETTABLEKS                       R2 R2 K15 ["LineHeight"]
       29 SETTABLEKS                       R2 R1 K9 ["lineHeight"]
       31 LOADK                            R3 K16 ["#%*"]
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R5 R5 K17 ["Muted"]
       35 GETTABLEKS                       R5 R5 K18 ["Color3"]
       37 NAMECALL                         R5 R5 K19 ["ToHex"]
       39 CALL                             R5 1 1
       40 NAMECALL                         R3 R3 K20 ["format"]
       42 CALL                             R3 2 1
       43 MOVE                             R2 R3
       44 SETTABLEKS                       R2 R1 K10 ["color"]
       46 GETUPVAL                         R2 2
       47 GETTABLEKS                       R2 R2 K17 ["Muted"]
       49 GETTABLEKS                       R2 R2 K21 ["Transparency"]
       51 SETTABLEKS                       R2 R1 K11 ["transparency"]
       53 SETTABLEKS                       R1 R0 K1 ["codeStyles"]
       55 DUPTABLE                         R1 K24 [{["backgroundTransparency"] = 1}]
       56 SETTABLEKS                       R1 R0 K2 ["codeBackgroundStyles"]
       58 NEWTABLE                         R1 0 6
       60 GETUPVAL                         R2 0
       61 GETUPVAL                         R3 1
       62 GETTABLEKS                       R3 R3 K25 ["TitleLarge"]
       64 GETUPVAL                         R4 2
       65 GETTABLEKS                       R4 R4 K6 ["Default"]
       67 CALL                             R2 2 1
       68 GETUPVAL                         R3 0
       69 GETUPVAL                         R4 1
       70 GETTABLEKS                       R4 R4 K26 ["TitleMedium"]
       72 GETUPVAL                         R5 2
       73 GETTABLEKS                       R5 R5 K6 ["Default"]
       75 CALL                             R3 2 1
       76 GETUPVAL                         R4 0
       77 GETUPVAL                         R5 1
       78 GETTABLEKS                       R5 R5 K27 ["TitleSmall"]
       80 GETUPVAL                         R6 2
       81 GETTABLEKS                       R6 R6 K6 ["Default"]
       83 CALL                             R4 2 1
       84 GETUPVAL                         R5 0
       85 GETUPVAL                         R6 1
       86 GETTABLEKS                       R6 R6 K27 ["TitleSmall"]
       88 GETUPVAL                         R7 2
       89 GETTABLEKS                       R7 R7 K6 ["Default"]
       91 CALL                             R5 2 1
       92 GETUPVAL                         R6 0
       93 GETUPVAL                         R7 1
       94 GETTABLEKS                       R7 R7 K27 ["TitleSmall"]
       96 GETUPVAL                         R8 2
       97 GETTABLEKS                       R8 R8 K6 ["Default"]
       99 CALL                             R6 2 1
      100 GETUPVAL                         R7 0
      101 GETUPVAL                         R8 1
      102 GETTABLEKS                       R8 R8 K27 ["TitleSmall"]
      104 GETUPVAL                         R9 2
      105 GETTABLEKS                       R9 R9 K6 ["Default"]
      107 CALL                             R7 2 1
      108 SETLIST                          R1 R2 6 [1]
      110 SETTABLEKS                       R1 R0 K3 ["headerStyles"]
      112 RETURN                           R0 1

PROTO_19:
        0 DUPTABLE                         R0 K3 [{"AutomaticSize", "Size", "LayoutOrder"}]
        1 GETIMPORT                        R1 K6 [Enum.AutomaticSize.Y]
        3 SETTABLEKS                       R1 R0 K0 ["AutomaticSize"]
        5 GETIMPORT                        R1 K9 [UDim2.fromScale]
        7 LOADN                            R2 1
        8 LOADN                            R3 0
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K1 ["Size"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K2 ["LayoutOrder"]
       15 SETTABLEKS                       R1 R0 K2 ["LayoutOrder"]
       17 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["join"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"background"}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K3 ["Color"]
        8 GETTABLEKS                       R3 R3 K4 ["Surface"]
       10 GETTABLEKS                       R3 R3 K5 ["Surface_200"]
       12 GETTABLEKS                       R3 R3 K6 ["Color3"]
       14 SETTABLEKS                       R3 R2 K1 ["background"]
       16 CALL                             R0 2 -1
       17 RETURN                           R0 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Typography"]
        8 GETTABLEKS                       R3 R1 K3 ["Color"]
       10 GETTABLEKS                       R3 R3 K4 ["Content"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K5 ["useMemo"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U3
       20 NEWTABLE                         R6 0 2
       22 MOVE                             R7 R2
       23 MOVE                             R8 R3
       24 SETLIST                          R6 R7 2 [1]
       26 CALL                             R4 2 1
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K5 ["useMemo"]
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          VAL R0
       32 NEWTABLE                         R7 0 1
       34 GETTABLEKS                       R8 R0 K6 ["LayoutOrder"]
       36 SETLIST                          R7 R8 1 [1]
       38 CALL                             R5 2 1
       39 GETUPVAL                         R6 4
       40 CALL                             R6 0 1
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R7 R7 K5 ["useMemo"]
       44 NEWCLOSURE                       R8 P2
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R1
       48 NEWTABLE                         R9 0 2
       50 MOVE                             R10 R6
       51 GETTABLEKS                       R11 R1 K3 ["Color"]
       53 GETTABLEKS                       R11 R11 K7 ["Surface"]
       55 GETTABLEKS                       R11 R11 K8 ["Surface_200"]
       57 GETTABLEKS                       R11 R11 K9 ["Color3"]
       59 SETLIST                          R9 R10 2 [1]
       61 CALL                             R7 2 1
       62 GETTABLEKS                       R9 R0 K10 ["markdown"]
       64 GETTABLEKS                       R10 R0 K11 ["messageId"]
       66 GETUPVAL                         R11 1
       67 GETTABLEKS                       R11 R11 K12 ["useCallback"]
       69 NEWCLOSURE                       R12 P3
       70 CAPTURE                          VAL R10
       71 CAPTURE                          UPVAL U6
       72 CAPTURE                          UPVAL U7
       73 CAPTURE                          VAL R9
       74 NEWTABLE                         R13 0 2
       76 MOVE                             R14 R10
       77 MOVE                             R15 R9
       78 SETLIST                          R13 R14 2 [1]
       80 CALL                             R11 2 1
       81 MOVE                             R8 R11
       82 GETUPVAL                         R9 8
       83 GETUPVAL                         R10 9
       84 GETTABLEKS                       R10 R10 K13 ["Components"]
       86 GETTABLEKS                       R10 R10 K14 ["MarkdownViewer"]
       88 DUPTABLE                         R11 K26 [{["Markdown"], ["Ast"] = , ["Renderers"] = , ["LinkCallback"], ["MarkdownRendererProps"], ["WrapperProps"], ["ColorScheme"], ["Fallback"], ["OnError"], ["AdditionalFeatureRenderers"]}]
       89 GETTABLEKS                       R12 R0 K10 ["markdown"]
       91 SETTABLEKS                       R12 R11 K15 ["Markdown"]
       93 GETTABLEKS                       R12 R0 K27 ["linkCallback"]
       95 SETTABLEKS                       R12 R11 K19 ["LinkCallback"]
       97 SETTABLEKS                       R4 R11 K20 ["MarkdownRendererProps"]
       99 SETTABLEKS                       R5 R11 K21 ["WrapperProps"]
      101 SETTABLEKS                       R7 R11 K22 ["ColorScheme"]
      103 GETUPVAL                         R12 8
      104 GETUPVAL                         R13 10
      105 DUPTABLE                         R14 K29 [{"onMount", "LayoutOrder"}]
      106 SETTABLEKS                       R8 R14 K28 ["onMount"]
      108 GETTABLEKS                       R15 R0 K6 ["LayoutOrder"]
      110 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
      112 CALL                             R12 2 1
      113 SETTABLEKS                       R12 R11 K23 ["Fallback"]
      115 SETTABLEKS                       R8 R11 K24 ["OnError"]
      117 GETUPVAL                         R12 11
      118 SETTABLEKS                       R12 R11 K25 ["AdditionalFeatureRenderers"]
      120 CALL                             R9 2 -1
      121 RETURN                           R9 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantUseMarkdownPackage"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R2 2
        6 MOVE                             R3 R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 3
       11 MOVE                             R3 R0
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Cryo"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Foundation"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Markdown"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R1 K11 ["MarkdownCore"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K6 [require]
       36 GETTABLEKS                       R8 R1 K12 ["React"]
       38 CALL                             R7 1 1
       39 GETIMPORT                        R8 K6 [require]
       41 GETTABLEKS                       R9 R0 K13 ["Guest"]
       43 GETTABLEKS                       R9 R9 K14 ["Environment"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K6 [require]
       48 GETTABLEKS                       R10 R0 K15 ["Flags"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K6 [require]
       53 GETTABLEKS                       R11 R0 K16 ["Resources"]
       55 GETTABLEKS                       R11 R11 K17 ["Localization"]
       57 GETTABLEKS                       R11 R11 K18 ["Translator"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K6 [require]
       62 GETTABLEKS                       R12 R0 K19 ["Types"]
       64 CALL                             R11 1 1
       65 GETIMPORT                        R12 K6 [require]
       67 GETTABLEKS                       R13 R0 K20 ["Util"]
       69 GETTABLEKS                       R13 R13 K21 ["callOnce"]
       71 CALL                             R12 1 1
       72 GETTABLEKS                       R13 R4 K22 ["Text"]
       74 GETTABLEKS                       R14 R4 K23 ["View"]
       76 GETTABLEKS                       R15 R5 K24 ["Enums"]
       78 GETTABLEKS                       R15 R15 K25 ["NodeType"]
       80 GETTABLEKS                       R16 R6 K26 ["Hooks"]
       82 GETTABLEKS                       R16 R16 K27 ["useStudioThemeColors"]
       84 GETTABLEKS                       R17 R7 K28 ["createElement"]
       86 LOADNIL                          R18
       87 LOADNIL                          R19
       88 DUPCLOSURE                       R20 K29 [PROTO_0]
       89 CAPTURE                          VAL R17
       90 CAPTURE                          VAL R13
       91 DUPCLOSURE                       R21 K30 [PROTO_1]
       92 DUPCLOSURE                       R22 K31 [PROTO_2]
       93 DUPTABLE                         R23 K33 [{"ACTION"}]
       94 SETTABLEKS                       R22 R23 K32 ["ACTION"]
       96 NEWCLOSURE                       R24 P3
       97 CAPTURE                          VAL R8
       98 CAPTURE                          REF R18
       99 CAPTURE                          REF R19
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R21
      102 CAPTURE                          VAL R20
      103 DUPCLOSURE                       R25 K34 [PROTO_4]
      104 DUPCLOSURE                       R26 K35 [PROTO_7]
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R17
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R13
      110 NEWCLOSURE                       R27 P6
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R8
      115 CAPTURE                          REF R18
      116 CAPTURE                          REF R19
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R21
      119 CAPTURE                          VAL R20
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R17
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R23
      125 CAPTURE                          VAL R26
      126 DUPCLOSURE                       R28 K36 [PROTO_16]
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R8
      130 DUPCLOSURE                       R29 K37 [PROTO_17]
      131 CAPTURE                          VAL R15
      132 DUPTABLE                         R30 K33 [{"ACTION"}]
      133 SETTABLEKS                       R29 R30 K32 ["ACTION"]
      135 DUPCLOSURE                       R31 K38 [PROTO_21]
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R25
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R16
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R26
      147 CAPTURE                          VAL R30
      148 DUPCLOSURE                       R32 K39 [PROTO_22]
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R17
      151 CAPTURE                          VAL R31
      152 CAPTURE                          VAL R27
      153 GETTABLEKS                       R33 R7 K40 ["memo"]
      155 MOVE                             R34 R32
      156 CALL                             R33 1 -1
      157 CLOSEUPVALS                      R18
      158 RETURN                           R33 -1
