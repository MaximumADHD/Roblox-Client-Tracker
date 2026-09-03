PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagMCPAssistantUseNewMarkdown"]
        3 JUMPIFNOT                        R0 ; [+17]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["Components"]
        7 GETTABLEKS                       R0 R0 K2 ["MarkdownViewer"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["FFlagMarkdownStudioThemeColors"]
       12 JUMPIFNOT                        R2 ; [+6]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K4 ["Hooks"]
       16 GETTABLEKS                       R1 R1 K5 ["useStudioThemeColors"]
       18 RETURN                           R0 2
       19 GETUPVAL                         R1 2
       20 RETURN                           R0 2
       21 GETUPVAL                         R0 3
       22 GETTABLEKS                       R0 R0 K6 ["get"]
       24 CALL                             R0 0 1
       25 GETTABLEKS                       R0 R0 K7 ["isDevFrameworkAvailable"]
       27 CALL                             R0 0 1
       28 JUMPIFNOT                        R0 ; [+29]
       29 GETUPVAL                         R0 4
       30 JUMPIFNOT                        R0 ; [+2]
       31 GETUPVAL                         R0 5
       32 JUMPIF                           R0 ; [+20]
       33 GETIMPORT                        R0 K9 [require]
       35 GETUPVAL                         R1 6
       36 GETTABLEKS                       R1 R1 K10 ["Parent"]
       38 GETTABLEKS                       R1 R1 K11 ["Framework"]
       40 CALL                             R0 1 1
       41 GETTABLEKS                       R1 R0 K12 ["UI"]
       43 GETTABLEKS                       R1 R1 K2 ["MarkdownViewer"]
       45 SETUPVAL                         R1 4
       46 GETTABLEKS                       R1 R0 K12 ["UI"]
       48 GETTABLEKS                       R1 R1 K4 ["Hooks"]
       50 GETTABLEKS                       R1 R1 K13 ["useStudioThemeColorsForHighlighter"]
       52 SETUPVAL                         R1 5
       53 GETUPVAL                         R0 4
       54 GETUPVAL                         R1 5
       55 JUMPIF                           R1 ; [+1]
       56 GETUPVAL                         R1 2
       57 RETURN                           R0 2
       58 GETUPVAL                         R0 7
       59 GETUPVAL                         R1 2
       60 RETURN                           R0 2

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"textSize", "font"}]
        1 GETTABLEKS                       R2 R0 K3 ["FontSize"]
        3 SETTABLEKS                       R2 R1 K0 ["textSize"]
        5 GETTABLEKS                       R2 R0 K4 ["Font"]
        7 SETTABLEKS                       R2 R1 K1 ["font"]
        9 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onMount"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["MarkdownText"]
        2 LOADK                            R3 K1 ["FailedParse"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_6:
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
       15 DUPCLOSURE                       R2 K3 [PROTO_5]
       16 CAPTURE                          UPVAL U1
       17 NEWTABLE                         R3 0 1
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K4 ["locale"]
       22 SETLIST                          R3 R4 1 [1]
       24 CALL                             R1 2 1
       25 GETUPVAL                         R2 2
       26 GETUPVAL                         R3 3
       27 DUPTABLE                         R4 K8 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y"}]
       28 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       30 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       32 GETUPVAL                         R5 2
       33 GETUPVAL                         R6 4
       34 DUPTABLE                         R7 K11 [{["tag"] = "auto-xy text-body-small", ["Text"]}]
       35 SETTABLEKS                       R1 R7 K10 ["Text"]
       37 CALL                             R5 2 -1
       38 CALL                             R2 -1 -1
       39 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Typography"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["Color"]
        6 GETTABLEKS                       R1 R1 K2 ["Content"]
        8 DUPTABLE                         R2 K7 [{"textStyles", "codeStyles", "codeBackgroundStyles", "headerStyles"}]
        9 GETTABLEKS                       R4 R0 K8 ["BodySmall"]
       11 DUPTABLE                         R3 K11 [{"textSize", "font"}]
       12 GETTABLEKS                       R5 R4 K12 ["FontSize"]
       14 SETTABLEKS                       R5 R3 K9 ["textSize"]
       16 GETTABLEKS                       R5 R4 K13 ["Font"]
       18 SETTABLEKS                       R5 R3 K10 ["font"]
       20 SETTABLEKS                       R3 R2 K3 ["textStyles"]
       22 DUPTABLE                         R3 K17 [{"textSize", "fontFace", "color", "transparency"}]
       23 GETTABLEKS                       R4 R0 K8 ["BodySmall"]
       25 GETTABLEKS                       R4 R4 K12 ["FontSize"]
       27 SETTABLEKS                       R4 R3 K9 ["textSize"]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K18 ["CODE_FONT"]
       32 SETTABLEKS                       R4 R3 K14 ["fontFace"]
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R5 R5 K19 ["FFlagMarkdownStudioThemeColors"]
       37 JUMPIFNOT                        R5 ; [+5]
       38 GETTABLEKS                       R4 R1 K20 ["Muted"]
       40 GETTABLEKS                       R4 R4 K21 ["Color3"]
       42 JUMP                             ; [+1]
       43 LOADNIL                          R4
       44 SETTABLEKS                       R4 R3 K15 ["color"]
       46 GETUPVAL                         R5 2
       47 GETTABLEKS                       R5 R5 K19 ["FFlagMarkdownStudioThemeColors"]
       49 JUMPIFNOT                        R5 ; [+5]
       50 GETTABLEKS                       R4 R1 K20 ["Muted"]
       52 GETTABLEKS                       R4 R4 K22 ["Transparency"]
       54 JUMP                             ; [+1]
       55 LOADNIL                          R4
       56 SETTABLEKS                       R4 R3 K16 ["transparency"]
       58 SETTABLEKS                       R3 R2 K4 ["codeStyles"]
       60 DUPTABLE                         R3 K25 [{["backgroundTransparency"] = 1}]
       61 SETTABLEKS                       R3 R2 K5 ["codeBackgroundStyles"]
       63 NEWTABLE                         R3 0 6
       65 GETTABLEKS                       R5 R0 K26 ["TitleLarge"]
       67 DUPTABLE                         R4 K11 [{"textSize", "font"}]
       68 GETTABLEKS                       R6 R5 K12 ["FontSize"]
       70 SETTABLEKS                       R6 R4 K9 ["textSize"]
       72 GETTABLEKS                       R6 R5 K13 ["Font"]
       74 SETTABLEKS                       R6 R4 K10 ["font"]
       76 GETTABLEKS                       R6 R0 K27 ["TitleMedium"]
       78 DUPTABLE                         R5 K11 [{"textSize", "font"}]
       79 GETTABLEKS                       R7 R6 K12 ["FontSize"]
       81 SETTABLEKS                       R7 R5 K9 ["textSize"]
       83 GETTABLEKS                       R7 R6 K13 ["Font"]
       85 SETTABLEKS                       R7 R5 K10 ["font"]
       87 GETTABLEKS                       R7 R0 K28 ["TitleSmall"]
       89 DUPTABLE                         R6 K11 [{"textSize", "font"}]
       90 GETTABLEKS                       R8 R7 K12 ["FontSize"]
       92 SETTABLEKS                       R8 R6 K9 ["textSize"]
       94 GETTABLEKS                       R8 R7 K13 ["Font"]
       96 SETTABLEKS                       R8 R6 K10 ["font"]
       98 GETTABLEKS                       R8 R0 K28 ["TitleSmall"]
      100 DUPTABLE                         R7 K11 [{"textSize", "font"}]
      101 GETTABLEKS                       R9 R8 K12 ["FontSize"]
      103 SETTABLEKS                       R9 R7 K9 ["textSize"]
      105 GETTABLEKS                       R9 R8 K13 ["Font"]
      107 SETTABLEKS                       R9 R7 K10 ["font"]
      109 GETTABLEKS                       R9 R0 K28 ["TitleSmall"]
      111 DUPTABLE                         R8 K11 [{"textSize", "font"}]
      112 GETTABLEKS                       R10 R9 K12 ["FontSize"]
      114 SETTABLEKS                       R10 R8 K9 ["textSize"]
      116 GETTABLEKS                       R10 R9 K13 ["Font"]
      118 SETTABLEKS                       R10 R8 K10 ["font"]
      120 GETTABLEKS                       R10 R0 K28 ["TitleSmall"]
      122 DUPTABLE                         R9 K11 [{"textSize", "font"}]
      123 GETTABLEKS                       R11 R10 K12 ["FontSize"]
      125 SETTABLEKS                       R11 R9 K9 ["textSize"]
      127 GETTABLEKS                       R11 R10 K13 ["Font"]
      129 SETTABLEKS                       R11 R9 K10 ["font"]
      131 SETLIST                          R3 R4 6 [1]
      133 SETTABLEKS                       R3 R2 K6 ["headerStyles"]
      135 RETURN                           R2 1

PROTO_8:
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
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["EventLogger"]
        6 GETTABLEKS                       R1 R0 K2 ["logMarkdownError"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["markdown"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useMemo"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R5 R5 K3 ["FFlagMarkdownStudioThemeColors"]
       16 JUMPIFNOT                        R5 ; [+11]
       17 NEWTABLE                         R4 0 2
       19 GETTABLEKS                       R5 R1 K4 ["Typography"]
       21 GETTABLEKS                       R6 R1 K5 ["Color"]
       23 GETTABLEKS                       R6 R6 K6 ["Content"]
       25 SETLIST                          R4 R5 2 [1]
       27 JUMP                             ; [+6]
       28 NEWTABLE                         R4 0 1
       30 GETTABLEKS                       R5 R1 K4 ["Typography"]
       32 SETLIST                          R4 R5 1 [1]
       34 CALL                             R2 2 1
       35 GETUPVAL                         R3 4
       36 CALL                             R3 0 2
       37 MOVE                             R5 R4
       38 CALL                             R5 0 1
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R6 R6 K2 ["useMemo"]
       42 NEWCLOSURE                       R7 P1
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R1
       46 NEWTABLE                         R8 0 2
       48 MOVE                             R9 R5
       49 GETTABLEKS                       R10 R1 K5 ["Color"]
       51 GETTABLEKS                       R10 R10 K7 ["Surface"]
       53 GETTABLEKS                       R10 R10 K8 ["Surface_200"]
       55 GETTABLEKS                       R10 R10 K9 ["Color3"]
       57 SETLIST                          R8 R9 2 [1]
       59 CALL                             R6 2 1
       60 GETUPVAL                         R7 1
       61 GETTABLEKS                       R7 R7 K2 ["useMemo"]
       63 NEWCLOSURE                       R8 P2
       64 CAPTURE                          VAL R0
       65 NEWTABLE                         R9 0 1
       67 GETTABLEKS                       R10 R0 K10 ["LayoutOrder"]
       69 SETLIST                          R9 R10 1 [1]
       71 CALL                             R7 2 1
       72 GETUPVAL                         R8 1
       73 GETTABLEKS                       R8 R8 K11 ["useCallback"]
       75 NEWCLOSURE                       R9 P3
       76 CAPTURE                          VAL R0
       77 CAPTURE                          UPVAL U6
       78 CAPTURE                          UPVAL U7
       79 NEWTABLE                         R10 0 2
       81 GETTABLEKS                       R11 R0 K12 ["messageId"]
       83 GETTABLEKS                       R12 R0 K13 ["markdown"]
       85 SETLIST                          R10 R11 2 [1]
       87 CALL                             R8 2 1
       88 GETUPVAL                         R9 8
       89 MOVE                             R10 R3
       90 DUPTABLE                         R11 K22 [{"Markdown", "WrapperProps", "MarkdownRendererProps", "ColorScheme", "Renderers", "Fallback", "LinkCallback", "OnError"}]
       91 GETTABLEKS                       R12 R0 K13 ["markdown"]
       93 SETTABLEKS                       R12 R11 K14 ["Markdown"]
       95 SETTABLEKS                       R7 R11 K15 ["WrapperProps"]
       97 SETTABLEKS                       R2 R11 K16 ["MarkdownRendererProps"]
       99 SETTABLEKS                       R6 R11 K17 ["ColorScheme"]
      101 GETUPVAL                         R13 3
      102 GETTABLEKS                       R13 R13 K23 ["FFlagAsssistantFixMarkdownRendererErrorForBracket"]
      104 JUMPIFNOT                        R13 ; [+2]
      105 GETUPVAL                         R12 9
      106 JUMP                             ; [+1]
      107 LOADNIL                          R12
      108 SETTABLEKS                       R12 R11 K18 ["Renderers"]
      110 GETUPVAL                         R12 8
      111 GETUPVAL                         R13 10
      112 DUPTABLE                         R14 K25 [{"LayoutOrder", "onMount"}]
      113 GETTABLEKS                       R15 R0 K10 ["LayoutOrder"]
      115 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
      117 SETTABLEKS                       R8 R14 K24 ["onMount"]
      119 CALL                             R12 2 1
      120 SETTABLEKS                       R12 R11 K19 ["Fallback"]
      122 GETTABLEKS                       R12 R0 K26 ["linkCallback"]
      124 SETTABLEKS                       R12 R11 K20 ["LinkCallback"]
      126 SETTABLEKS                       R8 R11 K21 ["OnError"]
      128 CALL                             R9 2 -1
      129 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R3 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Flags"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["Markdown"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["CopiedDependencies"]
       44 GETTABLEKS                       R7 R7 K14 ["MockFramework"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K6 ["Parent"]
       51 GETTABLEKS                       R8 R8 K15 ["React"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K16 ["Resources"]
       58 GETTABLEKS                       R9 R9 K17 ["Localization"]
       60 GETTABLEKS                       R9 R9 K18 ["Translator"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K19 ["Types"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K20 ["Util"]
       72 GETTABLEKS                       R11 R11 K21 ["callOnce"]
       74 CALL                             R10 1 1
       75 GETTABLEKS                       R11 R4 K22 ["Text"]
       77 GETTABLEKS                       R12 R4 K23 ["View"]
       79 GETTABLEKS                       R13 R6 K24 ["UI"]
       81 GETTABLEKS                       R13 R13 K25 ["MarkdownViewer"]
       83 GETTABLEKS                       R14 R7 K26 ["createElement"]
       85 LOADNIL                          R15
       86 LOADNIL                          R16
       87 DUPCLOSURE                       R17 K27 [PROTO_0]
       88 DUPCLOSURE                       R18 K28 [PROTO_1]
       89 DUPTABLE                         R19 K30 [{"ACTION"}]
       90 SETTABLEKS                       R18 R19 K29 ["ACTION"]
       92 NEWCLOSURE                       R20 P2
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R17
       96 CAPTURE                          VAL R2
       97 CAPTURE                          REF R15
       98 CAPTURE                          REF R16
       99 CAPTURE                          VAL R0
      100 CAPTURE                          VAL R13
      101 DUPCLOSURE                       R21 K31 [PROTO_3]
      102 DUPCLOSURE                       R22 K32 [PROTO_6]
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R11
      108 DUPCLOSURE                       R23 K33 [PROTO_12]
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R20
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R19
      119 CAPTURE                          VAL R22
      120 GETTABLEKS                       R24 R7 K34 ["memo"]
      122 MOVE                             R25 R23
      123 CALL                             R24 1 -1
      124 CLOSEUPVALS                      R15
      125 RETURN                           R24 -1
