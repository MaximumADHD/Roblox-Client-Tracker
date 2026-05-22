PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+16]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["Components"]
        6 GETTABLEKS                       R0 R0 K1 ["MarkdownViewer"]
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R2 ; [+6]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K2 ["Hooks"]
       14 GETTABLEKS                       R1 R1 K3 ["useStudioThemeColors"]
       16 RETURN                           R0 2
       17 GETUPVAL                         R1 3
       18 RETURN                           R0 2
       19 GETUPVAL                         R0 4
       20 GETTABLEKS                       R0 R0 K4 ["get"]
       22 CALL                             R0 0 1
       23 GETTABLEKS                       R0 R0 K5 ["isDevFrameworkAvailable"]
       25 CALL                             R0 0 1
       26 JUMPIFNOT                        R0 ; [+35]
       27 GETUPVAL                         R0 5
       28 JUMPIFNOT                        R0 ; [+2]
       29 GETUPVAL                         R0 6
       30 JUMPIF                           R0 ; [+20]
       31 GETIMPORT                        R0 K7 [require]
       33 GETUPVAL                         R1 7
       34 GETTABLEKS                       R1 R1 K8 ["Parent"]
       36 GETTABLEKS                       R1 R1 K9 ["Framework"]
       38 CALL                             R0 1 1
       39 GETTABLEKS                       R1 R0 K10 ["UI"]
       41 GETTABLEKS                       R1 R1 K1 ["MarkdownViewer"]
       43 SETUPVAL                         R1 5
       44 GETTABLEKS                       R1 R0 K10 ["UI"]
       46 GETTABLEKS                       R1 R1 K2 ["Hooks"]
       48 GETTABLEKS                       R1 R1 K11 ["useStudioThemeColorsForHighlighter"]
       50 SETUPVAL                         R1 6
       51 GETUPVAL                         R0 8
       52 CALL                             R0 0 1
       53 JUMPIFNOT                        R0 ; [+5]
       54 GETUPVAL                         R0 5
       55 GETUPVAL                         R1 6
       56 JUMPIF                           R1 ; [+1]
       57 GETUPVAL                         R1 3
       58 RETURN                           R0 2
       59 GETUPVAL                         R0 5
       60 GETUPVAL                         R1 6
       61 RETURN                           R0 2
       62 GETUPVAL                         R0 9
       63 GETUPVAL                         R1 3
       64 RETURN                           R0 2

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"textSize", "font"}]
        1 GETTABLEKS                       R2 R0 K3 ["FontSize"]
        3 SETTABLEKS                       R2 R1 K0 ["textSize"]
        5 GETTABLEKS                       R2 R0 K4 ["Font"]
        7 SETTABLEKS                       R2 R1 K1 ["font"]
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onMount"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["MarkdownText"]
        2 LOADK                            R3 K1 ["FailedParse"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_5:
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
       15 DUPCLOSURE                       R2 K3 [PROTO_4]
       16 CAPTURE                          UPVAL U1
       17 NEWTABLE                         R3 0 1
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K4 ["locale"]
       22 SETLIST                          R3 R4 1 [1]
       24 CALL                             R1 2 1
       25 GETUPVAL                         R2 2
       26 GETUPVAL                         R3 3
       27 DUPTABLE                         R4 K7 [{"LayoutOrder", "tag"}]
       28 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       30 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       32 LOADK                            R5 K8 ["size-full-0 auto-y"]
       33 SETTABLEKS                       R5 R4 K6 ["tag"]
       35 GETUPVAL                         R5 2
       36 GETUPVAL                         R6 4
       37 DUPTABLE                         R7 K10 [{"tag", "Text"}]
       38 LOADK                            R8 K11 ["auto-xy text-body-small"]
       39 SETTABLEKS                       R8 R7 K6 ["tag"]
       41 SETTABLEKS                       R1 R7 K9 ["Text"]
       43 CALL                             R5 2 -1
       44 CALL                             R2 -1 -1
       45 RETURN                           R2 -1

PROTO_6:
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
       35 CALL                             R5 0 1
       36 JUMPIFNOT                        R5 ; [+5]
       37 GETTABLEKS                       R4 R1 K19 ["Muted"]
       39 GETTABLEKS                       R4 R4 K20 ["Color3"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R4
       43 SETTABLEKS                       R4 R3 K15 ["color"]
       45 GETUPVAL                         R5 2
       46 CALL                             R5 0 1
       47 JUMPIFNOT                        R5 ; [+5]
       48 GETTABLEKS                       R4 R1 K19 ["Muted"]
       50 GETTABLEKS                       R4 R4 K21 ["Transparency"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R4
       54 SETTABLEKS                       R4 R3 K16 ["transparency"]
       56 SETTABLEKS                       R3 R2 K4 ["codeStyles"]
       58 DUPTABLE                         R3 K23 [{"backgroundTransparency"}]
       59 LOADN                            R4 1
       60 SETTABLEKS                       R4 R3 K22 ["backgroundTransparency"]
       62 SETTABLEKS                       R3 R2 K5 ["codeBackgroundStyles"]
       64 NEWTABLE                         R3 0 6
       66 GETTABLEKS                       R5 R0 K24 ["TitleLarge"]
       68 DUPTABLE                         R4 K11 [{"textSize", "font"}]
       69 GETTABLEKS                       R6 R5 K12 ["FontSize"]
       71 SETTABLEKS                       R6 R4 K9 ["textSize"]
       73 GETTABLEKS                       R6 R5 K13 ["Font"]
       75 SETTABLEKS                       R6 R4 K10 ["font"]
       77 GETTABLEKS                       R6 R0 K25 ["TitleMedium"]
       79 DUPTABLE                         R5 K11 [{"textSize", "font"}]
       80 GETTABLEKS                       R7 R6 K12 ["FontSize"]
       82 SETTABLEKS                       R7 R5 K9 ["textSize"]
       84 GETTABLEKS                       R7 R6 K13 ["Font"]
       86 SETTABLEKS                       R7 R5 K10 ["font"]
       88 GETTABLEKS                       R7 R0 K26 ["TitleSmall"]
       90 DUPTABLE                         R6 K11 [{"textSize", "font"}]
       91 GETTABLEKS                       R8 R7 K12 ["FontSize"]
       93 SETTABLEKS                       R8 R6 K9 ["textSize"]
       95 GETTABLEKS                       R8 R7 K13 ["Font"]
       97 SETTABLEKS                       R8 R6 K10 ["font"]
       99 GETTABLEKS                       R8 R0 K26 ["TitleSmall"]
      101 DUPTABLE                         R7 K11 [{"textSize", "font"}]
      102 GETTABLEKS                       R9 R8 K12 ["FontSize"]
      104 SETTABLEKS                       R9 R7 K9 ["textSize"]
      106 GETTABLEKS                       R9 R8 K13 ["Font"]
      108 SETTABLEKS                       R9 R7 K10 ["font"]
      110 GETTABLEKS                       R9 R0 K26 ["TitleSmall"]
      112 DUPTABLE                         R8 K11 [{"textSize", "font"}]
      113 GETTABLEKS                       R10 R9 K12 ["FontSize"]
      115 SETTABLEKS                       R10 R8 K9 ["textSize"]
      117 GETTABLEKS                       R10 R9 K13 ["Font"]
      119 SETTABLEKS                       R10 R8 K10 ["font"]
      121 GETTABLEKS                       R10 R0 K26 ["TitleSmall"]
      123 DUPTABLE                         R9 K11 [{"textSize", "font"}]
      124 GETTABLEKS                       R11 R10 K12 ["FontSize"]
      126 SETTABLEKS                       R11 R9 K9 ["textSize"]
      128 GETTABLEKS                       R11 R10 K13 ["Font"]
      130 SETTABLEKS                       R11 R9 K10 ["font"]
      132 SETLIST                          R3 R4 6 [1]
      134 SETTABLEKS                       R3 R2 K6 ["headerStyles"]
      136 RETURN                           R2 1

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["EventLogger"]
        6 GETTABLEKS                       R1 R0 K2 ["logMarkdownError"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["markdown"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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
       14 CALL                             R5 0 1
       15 JUMPIFNOT                        R5 ; [+11]
       16 NEWTABLE                         R4 0 2
       18 GETTABLEKS                       R5 R1 K3 ["Typography"]
       20 GETTABLEKS                       R6 R1 K4 ["Color"]
       22 GETTABLEKS                       R6 R6 K5 ["Content"]
       24 SETLIST                          R4 R5 2 [1]
       26 JUMP                             ; [+6]
       27 NEWTABLE                         R4 0 1
       29 GETTABLEKS                       R5 R1 K3 ["Typography"]
       31 SETLIST                          R4 R5 1 [1]
       33 CALL                             R2 2 1
       34 GETUPVAL                         R3 4
       35 CALL                             R3 0 2
       36 MOVE                             R5 R4
       37 CALL                             R5 0 1
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K2 ["useMemo"]
       41 NEWCLOSURE                       R7 P1
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R1
       45 NEWTABLE                         R8 0 2
       47 MOVE                             R9 R5
       48 GETTABLEKS                       R10 R1 K4 ["Color"]
       50 GETTABLEKS                       R10 R10 K6 ["Surface"]
       52 GETTABLEKS                       R10 R10 K7 ["Surface_200"]
       54 GETTABLEKS                       R10 R10 K8 ["Color3"]
       56 SETLIST                          R8 R9 2 [1]
       58 CALL                             R6 2 1
       59 GETUPVAL                         R7 1
       60 GETTABLEKS                       R7 R7 K2 ["useMemo"]
       62 NEWCLOSURE                       R8 P2
       63 CAPTURE                          VAL R0
       64 NEWTABLE                         R9 0 1
       66 GETTABLEKS                       R10 R0 K9 ["LayoutOrder"]
       68 SETLIST                          R9 R10 1 [1]
       70 CALL                             R7 2 1
       71 GETUPVAL                         R8 1
       72 GETTABLEKS                       R8 R8 K10 ["useCallback"]
       74 NEWCLOSURE                       R9 P3
       75 CAPTURE                          VAL R0
       76 CAPTURE                          UPVAL U6
       77 CAPTURE                          UPVAL U7
       78 NEWTABLE                         R10 0 2
       80 GETTABLEKS                       R11 R0 K11 ["messageId"]
       82 GETTABLEKS                       R12 R0 K12 ["markdown"]
       84 SETLIST                          R10 R11 2 [1]
       86 CALL                             R8 2 1
       87 GETUPVAL                         R9 8
       88 MOVE                             R10 R3
       89 DUPTABLE                         R11 K19 [{"Markdown", "WrapperProps", "MarkdownRendererProps", "ColorScheme", "Fallback", "LinkCallback"}]
       90 GETTABLEKS                       R12 R0 K12 ["markdown"]
       92 SETTABLEKS                       R12 R11 K13 ["Markdown"]
       94 SETTABLEKS                       R7 R11 K14 ["WrapperProps"]
       96 SETTABLEKS                       R2 R11 K15 ["MarkdownRendererProps"]
       98 SETTABLEKS                       R6 R11 K16 ["ColorScheme"]
      100 GETUPVAL                         R12 8
      101 GETUPVAL                         R13 9
      102 DUPTABLE                         R14 K21 [{"LayoutOrder", "onMount"}]
      103 GETTABLEKS                       R15 R0 K9 ["LayoutOrder"]
      105 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
      107 SETTABLEKS                       R8 R14 K20 ["onMount"]
      109 CALL                             R12 2 1
      110 SETTABLEKS                       R12 R11 K17 ["Fallback"]
      112 GETTABLEKS                       R12 R0 K22 ["linkCallback"]
      114 SETTABLEKS                       R12 R11 K18 ["LinkCallback"]
      116 CALL                             R9 2 -1
      117 RETURN                           R9 -1

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
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["Markdown"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["CopiedDependencies"]
       39 GETTABLEKS                       R6 R6 K13 ["MockFramework"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Parent"]
       46 GETTABLEKS                       R7 R7 K14 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K15 ["Resources"]
       53 GETTABLEKS                       R8 R8 K16 ["Localization"]
       55 GETTABLEKS                       R8 R8 K17 ["Translator"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K18 ["Types"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K19 ["Util"]
       67 GETTABLEKS                       R10 R10 K20 ["callOnce"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K21 ["Flags"]
       74 GETTABLEKS                       R11 R11 K22 ["FFlagAssistantMarkdownColorFix"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K21 ["Flags"]
       81 GETTABLEKS                       R12 R12 K23 ["FFlagMCPAssistantUseNewMarkdown"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K21 ["Flags"]
       88 GETTABLEKS                       R13 R13 K24 ["FFlagMarkdownStudioThemeColors"]
       90 CALL                             R12 1 1
       91 GETTABLEKS                       R13 R3 K25 ["Text"]
       93 GETTABLEKS                       R14 R3 K26 ["View"]
       95 GETTABLEKS                       R15 R5 K27 ["UI"]
       97 GETTABLEKS                       R15 R15 K28 ["MarkdownViewer"]
       99 GETTABLEKS                       R16 R6 K29 ["createElement"]
      101 LOADNIL                          R17
      102 LOADNIL                          R18
      103 DUPCLOSURE                       R19 K30 [PROTO_0]
      104 NEWCLOSURE                       R20 P1
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R19
      109 CAPTURE                          VAL R2
      110 CAPTURE                          REF R17
      111 CAPTURE                          REF R18
      112 CAPTURE                          VAL R0
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R15
      115 DUPCLOSURE                       R21 K31 [PROTO_2]
      116 DUPCLOSURE                       R22 K32 [PROTO_5]
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R16
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R13
      122 DUPCLOSURE                       R23 K33 [PROTO_11]
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R20
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R22
      133 GETTABLEKS                       R24 R6 K34 ["memo"]
      135 MOVE                             R25 R23
      136 CALL                             R24 1 -1
      137 CLOSEUPVALS                      R17
      138 RETURN                           R24 -1
