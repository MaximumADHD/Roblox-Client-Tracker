PROTO_0:
        0 DUPTABLE                         R2 K5 [{"font", "fontFace", "textSize", "transparency", "color"}]
        1 GETUPVAL                         R4 0
        2 JUMPIFNOT                        R4 ; [+2]
        3 LOADNIL                          R3
        4 JUMP                             ; [+2]
        5 GETTABLEKS                       R3 R0 K6 ["Font"]
        7 SETTABLEKS                       R3 R2 K0 ["font"]
        9 GETUPVAL                         R4 0
       10 JUMPIFNOT                        R4 ; [+5]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R4 R0 K6 ["Font"]
       14 CALL                             R3 1 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R3
       17 SETTABLEKS                       R3 R2 K1 ["fontFace"]
       19 GETTABLEKS                       R3 R0 K7 ["FontSize"]
       21 SETTABLEKS                       R3 R2 K2 ["textSize"]
       23 JUMPIFNOT                        R1 ; [+3]
       24 GETTABLEKS                       R3 R1 K8 ["Transparency"]
       26 JUMPIF                           R3 ; [+1]
       27 LOADNIL                          R3
       28 SETTABLEKS                       R3 R2 K3 ["transparency"]
       30 JUMPIFNOT                        R1 ; [+13]
       31 GETTABLEKS                       R4 R1 K9 ["Color3"]
       33 JUMPIFNOT                        R4 ; [+10]
       34 LOADK                            R3 K10 ["#%*"]
       35 GETTABLEKS                       R5 R1 K9 ["Color3"]
       37 NAMECALL                         R5 R5 K11 ["ToHex"]
       39 CALL                             R5 1 1
       40 NAMECALL                         R3 R3 K12 ["format"]
       42 CALL                             R3 2 1
       43 JUMPIF                           R3 ; [+1]
       44 LOADNIL                          R3
       45 SETTABLEKS                       R3 R2 K4 ["color"]
       47 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onMount"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["MarkdownText"]
        2 LOADK                            R3 K1 ["FailedParse"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_3:
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
       15 DUPCLOSURE                       R2 K3 [PROTO_2]
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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["EventLogger"]
        6 GETTABLEKS                       R1 R0 K2 ["logMarkdownError"]
        8 GETUPVAL                         R2 1
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+10]
        2 GETUPVAL                         R1 1
        3 LOADK                            R2 K0 ["MarkdownError_%*"]
        4 GETUPVAL                         R4 0
        5 NAMECALL                         R2 R2 K1 ["format"]
        7 CALL                             R2 2 1
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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
       31 LOADK                            R2 K16 ["#%*"]
       32 GETUPVAL                         R4 2
       33 GETTABLEKS                       R4 R4 K17 ["Muted"]
       35 GETTABLEKS                       R4 R4 K18 ["Color3"]
       37 NAMECALL                         R4 R4 K19 ["ToHex"]
       39 CALL                             R4 1 1
       40 NAMECALL                         R2 R2 K20 ["format"]
       42 CALL                             R2 2 1
       43 SETTABLEKS                       R2 R1 K10 ["color"]
       45 GETUPVAL                         R2 2
       46 GETTABLEKS                       R2 R2 K17 ["Muted"]
       48 GETTABLEKS                       R2 R2 K21 ["Transparency"]
       50 SETTABLEKS                       R2 R1 K11 ["transparency"]
       52 SETTABLEKS                       R1 R0 K1 ["codeStyles"]
       54 DUPTABLE                         R1 K24 [{["backgroundTransparency"] = 1}]
       55 SETTABLEKS                       R1 R0 K2 ["codeBackgroundStyles"]
       57 NEWTABLE                         R1 0 6
       59 GETUPVAL                         R2 0
       60 GETUPVAL                         R3 1
       61 GETTABLEKS                       R3 R3 K25 ["TitleLarge"]
       63 GETUPVAL                         R4 2
       64 GETTABLEKS                       R4 R4 K6 ["Default"]
       66 CALL                             R2 2 1
       67 GETUPVAL                         R3 0
       68 GETUPVAL                         R4 1
       69 GETTABLEKS                       R4 R4 K26 ["TitleMedium"]
       71 GETUPVAL                         R5 2
       72 GETTABLEKS                       R5 R5 K6 ["Default"]
       74 CALL                             R3 2 1
       75 GETUPVAL                         R4 0
       76 GETUPVAL                         R5 1
       77 GETTABLEKS                       R5 R5 K27 ["TitleSmall"]
       79 GETUPVAL                         R6 2
       80 GETTABLEKS                       R6 R6 K6 ["Default"]
       82 CALL                             R4 2 1
       83 GETUPVAL                         R5 0
       84 GETUPVAL                         R6 1
       85 GETTABLEKS                       R6 R6 K27 ["TitleSmall"]
       87 GETUPVAL                         R7 2
       88 GETTABLEKS                       R7 R7 K6 ["Default"]
       90 CALL                             R5 2 1
       91 GETUPVAL                         R6 0
       92 GETUPVAL                         R7 1
       93 GETTABLEKS                       R7 R7 K27 ["TitleSmall"]
       95 GETUPVAL                         R8 2
       96 GETTABLEKS                       R8 R8 K6 ["Default"]
       98 CALL                             R6 2 1
       99 GETUPVAL                         R7 0
      100 GETUPVAL                         R8 1
      101 GETTABLEKS                       R8 R8 K27 ["TitleSmall"]
      103 GETUPVAL                         R9 2
      104 GETTABLEKS                       R9 R9 K6 ["Default"]
      106 CALL                             R7 2 1
      107 SETLIST                          R1 R2 6 [1]
      109 SETTABLEKS                       R1 R0 K3 ["headerStyles"]
      111 RETURN                           R0 1

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Foundation"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Markdown"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["MarkdownCore"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R1 K11 ["React"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K6 [require]
       36 GETTABLEKS                       R8 R0 K12 ["Guest"]
       38 GETTABLEKS                       R8 R8 K13 ["Environment"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K6 [require]
       43 GETTABLEKS                       R9 R0 K14 ["Resources"]
       45 GETTABLEKS                       R9 R9 K15 ["Localization"]
       47 GETTABLEKS                       R9 R9 K16 ["Translator"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R10 R0 K17 ["Types"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K6 [require]
       57 GETTABLEKS                       R11 R0 K18 ["Util"]
       59 GETTABLEKS                       R11 R11 K19 ["callOnce"]
       61 CALL                             R10 1 1
       62 GETTABLEKS                       R11 R3 K20 ["Text"]
       64 GETTABLEKS                       R12 R3 K21 ["View"]
       66 GETTABLEKS                       R13 R3 K22 ["Utility"]
       68 GETTABLEKS                       R13 R13 K23 ["Flags"]
       70 GETTABLEKS                       R13 R13 K24 ["FoundationStudioFontFaceMigration"]
       72 GETTABLEKS                       R14 R3 K22 ["Utility"]
       74 GETTABLEKS                       R14 R14 K25 ["normalizeFontFace"]
       76 GETTABLEKS                       R15 R4 K26 ["Enums"]
       78 GETTABLEKS                       R15 R15 K27 ["NodeType"]
       80 GETTABLEKS                       R16 R5 K28 ["Hooks"]
       82 GETTABLEKS                       R16 R16 K29 ["useStudioThemeColors"]
       84 GETTABLEKS                       R17 R6 K30 ["createElement"]
       86 DUPCLOSURE                       R18 K31 [PROTO_0]
       87 CAPTURE                          VAL R13
       88 CAPTURE                          VAL R14
       89 DUPCLOSURE                       R19 K32 [PROTO_3]
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R17
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R11
       95 DUPCLOSURE                       R20 K33 [PROTO_6]
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R7
       99 DUPCLOSURE                       R21 K34 [PROTO_7]
      100 CAPTURE                          VAL R15
      101 DUPTABLE                         R22 K36 [{"ACTION"}]
      102 SETTABLEKS                       R21 R22 K35 ["ACTION"]
      104 DUPCLOSURE                       R23 K37 [PROTO_11]
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R18
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R17
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R19
      116 CAPTURE                          VAL R22
      117 GETTABLEKS                       R24 R6 K38 ["memo"]
      119 MOVE                             R25 R23
      120 CALL                             R24 1 -1
      121 RETURN                           R24 -1
