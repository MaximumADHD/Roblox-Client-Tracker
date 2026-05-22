PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["initialText"]
        4 SETTABLEKS                       R1 R0 K1 ["current"]
        6 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Text"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["current"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+2]
        7 RETURN                           R0 0
        8 LOADN                            R4 1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K2 ["maxLength"]
       12 NAMECALL                         R2 R1 K3 ["sub"]
       14 CALL                             R2 3 1
       15 FASTCALL1                        TONUMBER R2 ; [+3]
       16 MOVE                             R4 R2
       17 GETIMPORT                        R3 K5 [tonumber]
       19 CALL                             R3 1 1
       20 JUMPIFNOT                        R3 ; [+9]
       21 GETUPVAL                         R4 0
       22 FASTCALL1                        TOSTRING R3 ; [+3]
       23 MOVE                             R6 R3
       24 GETIMPORT                        R5 K7 [tostring]
       26 CALL                             R5 1 1
       27 SETTABLEKS                       R5 R4 K1 ["current"]
       29 JUMP                             ; [+6]
       30 JUMPIFNOTEQKS                    R1 K8 [""] ; [+5]
       32 GETUPVAL                         R4 0
       33 LOADK                            R5 K8 [""]
       34 SETTABLEKS                       R5 R4 K1 ["current"]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K1 ["current"]
       39 SETTABLEKS                       R4 R0 K0 ["Text"]
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K1 ["current"]
       44 FASTCALL1                        TONUMBER R5 ; [+2]
       45 GETIMPORT                        R4 K5 [tonumber]
       47 CALL                             R4 1 1
       48 LOADB                            R5 1
       49 JUMPIFEQKNIL                     R4 ; [+25]
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R6 R6 K9 ["min"]
       54 JUMPIFEQKNIL                     R6 ; [+7]
       56 LOADB                            R5 0
       57 GETUPVAL                         R6 1
       58 GETTABLEKS                       R6 R6 K9 ["min"]
       60 JUMPIFNOTLE                      R6 R4 ; [+14]
       62 LOADB                            R5 1
       63 GETUPVAL                         R6 1
       64 GETTABLEKS                       R6 R6 K10 ["max"]
       66 JUMPIFEQKNIL                     R6 ; [+8]
       68 GETUPVAL                         R6 1
       69 GETTABLEKS                       R6 R6 K10 ["max"]
       71 JUMPIFLE                         R4 R6 ; [+2]
       73 LOADB                            R5 0 +1
       74 LOADB                            R5 1
       75 GETUPVAL                         R6 2
       76 MOVE                             R7 R5
       77 CALL                             R6 1 0
       78 GETUPVAL                         R6 1
       79 GETTABLEKS                       R6 R6 K11 ["onValueChange"]
       81 JUMPIFNOT                        R6 ; [+5]
       82 GETUPVAL                         R6 1
       83 GETTABLEKS                       R6 R6 K11 ["onValueChange"]
       85 MOVE                             R7 R4
       86 CALL                             R6 1 0
       87 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Color"]
        8 GETTABLEKS                       R2 R2 K3 ["System"]
       10 GETTABLEKS                       R2 R2 K4 ["Alert"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K5 ["useRef"]
       15 GETTABLEKS                       R4 R0 K6 ["initialText"]
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K7 ["useState"]
       21 LOADB                            R5 1
       22 CALL                             R4 1 2
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K8 ["useEffect"]
       26 NEWCLOSURE                       R7 P0
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R0
       29 NEWTABLE                         R8 0 0
       31 CALL                             R6 2 0
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R6 R6 K9 ["useCallback"]
       35 NEWCLOSURE                       R7 P1
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R5
       39 NEWTABLE                         R8 0 2
       41 GETTABLEKS                       R9 R0 K10 ["onValueChange"]
       43 GETTABLEKS                       R10 R0 K11 ["maxLength"]
       45 SETLIST                          R8 R9 2 [1]
       47 CALL                             R6 2 1
       48 GETUPVAL                         R7 2
       49 LOADK                            R8 K12 ["TextBox"]
       50 GETUPVAL                         R9 3
       51 GETTABLEKS                       R9 R9 K13 ["assign"]
       53 GETTABLEKS                       R10 R0 K14 ["native"]
       55 NEWTABLE                         R11 4 0
       57 GETTABLEKS                       R13 R0 K6 ["initialText"]
       59 ORK                              R12 R13 K15 [""]
       60 SETTABLEKS                       R12 R11 K16 ["Text"]
       62 JUMPIF                           R4 ; [+3]
       63 GETTABLEKS                       R12 R2 K17 ["Color3"]
       65 JUMP                             ; [+1]
       66 LOADNIL                          R12
       67 SETTABLEKS                       R12 R11 K18 ["TextColor3"]
       69 GETUPVAL                         R12 1
       70 GETTABLEKS                       R12 R12 K19 ["Change"]
       72 GETTABLEKS                       R12 R12 K16 ["Text"]
       74 SETTABLE                         R6 R11 R12
       75 CALL                             R9 2 1
       76 GETTABLEKS                       R10 R0 K20 ["children"]
       78 CALL                             R7 3 -1
       79 RETURN                           R7 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onChange"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["onChange"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Color"]
        8 GETTABLEKS                       R2 R2 K3 ["Content"]
       10 GETTABLEKS                       R2 R2 K4 ["Emphasis"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K5 ["useCallback"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R5 0 1
       19 GETTABLEKS                       R6 R0 K6 ["onChange"]
       21 SETLIST                          R5 R6 1 [1]
       23 CALL                             R3 2 1
       24 GETTABLEKS                       R4 R0 K7 ["definition"]
       26 GETTABLEKS                       R4 R4 K8 ["options"]
       28 JUMPIF                           R4 ; [+2]
       29 NEWTABLE                         R4 0 0
       31 GETUPVAL                         R5 2
       32 GETUPVAL                         R6 3
       33 DUPTABLE                         R7 K11 [{"tag", "LayoutOrder"}]
       34 LOADK                            R8 K12 ["row size-full-full radius-small gap-xsmall bg-shift-200"]
       35 SETTABLEKS                       R8 R7 K9 ["tag"]
       37 GETTABLEKS                       R8 R0 K10 ["LayoutOrder"]
       39 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
       41 DUPTABLE                         R8 K15 [{"NumberTextBox", "UIPadding"}]
       42 GETUPVAL                         R9 2
       43 GETUPVAL                         R10 4
       44 DUPTABLE                         R11 K22 [{"initialText", "onValueChange", "maxLength", "min", "max", "native"}]
       45 GETTABLEKS                       R14 R0 K24 ["value"]
       47 FASTCALL1                        TOSTRING R14 ; [+2]
       48 GETIMPORT                        R13 K26 [tostring]
       50 CALL                             R13 1 1
       51 ORK                              R12 R13 K23 [""]
       52 SETTABLEKS                       R12 R11 K16 ["initialText"]
       54 SETTABLEKS                       R3 R11 K17 ["onValueChange"]
       56 LOADN                            R12 10
       57 SETTABLEKS                       R12 R11 K18 ["maxLength"]
       59 GETTABLEKS                       R12 R4 K19 ["min"]
       61 SETTABLEKS                       R12 R11 K19 ["min"]
       63 GETTABLEKS                       R12 R4 K20 ["max"]
       65 SETTABLEKS                       R12 R11 K20 ["max"]
       67 DUPTABLE                         R12 K39 [{"Size", "BackgroundTransparency", "PlaceholderText", "TextColor3", "TextTransparency", "FontFace", "TextSize", "LineHeight", "Interactable", "ClearTextOnFocus", "TextEditable", "TextXAlignment"}]
       68 GETIMPORT                        R13 K42 [UDim2.fromScale]
       70 LOADN                            R14 1
       71 LOADN                            R15 1
       72 CALL                             R13 2 1
       73 SETTABLEKS                       R13 R12 K27 ["Size"]
       75 LOADN                            R13 1
       76 SETTABLEKS                       R13 R12 K28 ["BackgroundTransparency"]
       78 GETTABLEKS                       R14 R4 K19 ["min"]
       80 JUMPIFNOT                        R14 ; [+13]
       81 GETTABLEKS                       R14 R4 K20 ["max"]
       83 JUMPIFNOT                        R14 ; [+10]
       84 LOADK                            R14 K43 ["%* - %*"]
       85 GETTABLEKS                       R16 R4 K19 ["min"]
       87 GETTABLEKS                       R17 R4 K20 ["max"]
       89 NAMECALL                         R14 R14 K44 ["format"]
       91 CALL                             R14 3 1
       92 MOVE                             R13 R14
       93 JUMP                             ; [+1]
       94 LOADNIL                          R13
       95 SETTABLEKS                       R13 R12 K29 ["PlaceholderText"]
       97 GETTABLEKS                       R13 R2 K45 ["Color3"]
       99 SETTABLEKS                       R13 R12 K30 ["TextColor3"]
      101 GETTABLEKS                       R13 R2 K46 ["Transparency"]
      103 SETTABLEKS                       R13 R12 K31 ["TextTransparency"]
      105 GETUPVAL                         R13 5
      106 SETTABLEKS                       R13 R12 K32 ["FontFace"]
      108 GETTABLEKS                       R13 R1 K47 ["FontSize"]
      110 GETTABLEKS                       R13 R13 K48 ["FontSize_300"]
      112 SETTABLEKS                       R13 R12 K33 ["TextSize"]
      114 GETTABLEKS                       R13 R1 K34 ["LineHeight"]
      116 GETTABLEKS                       R13 R13 K49 ["LineHeight_140"]
      118 SETTABLEKS                       R13 R12 K34 ["LineHeight"]
      120 GETTABLEKS                       R14 R0 K50 ["isDisabled"]
      122 NOT                              R13 R14
      123 SETTABLEKS                       R13 R12 K35 ["Interactable"]
      125 LOADB                            R13 0
      126 SETTABLEKS                       R13 R12 K36 ["ClearTextOnFocus"]
      128 GETTABLEKS                       R14 R0 K50 ["isDisabled"]
      130 NOT                              R13 R14
      131 SETTABLEKS                       R13 R12 K37 ["TextEditable"]
      133 GETIMPORT                        R13 K53 [Enum.TextXAlignment.Left]
      135 SETTABLEKS                       R13 R12 K38 ["TextXAlignment"]
      137 SETTABLEKS                       R12 R11 K21 ["native"]
      139 CALL                             R9 2 1
      140 SETTABLEKS                       R9 R8 K13 ["NumberTextBox"]
      142 GETUPVAL                         R9 2
      143 LOADK                            R10 K14 ["UIPadding"]
      144 DUPTABLE                         R11 K55 [{"PaddingLeft"}]
      145 GETIMPORT                        R12 K58 [UDim.new]
      147 LOADN                            R13 0
      148 GETTABLEKS                       R14 R1 K27 ["Size"]
      150 GETTABLEKS                       R14 R14 K59 ["Size_150"]
      152 CALL                             R12 2 1
      153 SETTABLEKS                       R12 R11 K54 ["PaddingLeft"]
      155 CALL                             R9 2 1
      156 SETTABLEKS                       R9 R8 K14 ["UIPadding"]
      158 CALL                             R5 3 -1
      159 RETURN                           R5 -1

PROTO_5:
        0 DUPTABLE                         R1 K5 [{"type", "label", "prop", "initialValue", "options"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K6 ["ROW_TYPES"]
        4 GETTABLEKS                       R2 R2 K7 ["Number"]
        6 SETTABLEKS                       R2 R1 K0 ["type"]
        8 GETTABLEKS                       R2 R0 K1 ["label"]
       10 SETTABLEKS                       R2 R1 K1 ["label"]
       12 GETTABLEKS                       R2 R0 K2 ["prop"]
       14 SETTABLEKS                       R2 R1 K2 ["prop"]
       16 GETTABLEKS                       R2 R0 K3 ["initialValue"]
       18 SETTABLEKS                       R2 R1 K3 ["initialValue"]
       20 GETTABLEKS                       R2 R0 K4 ["options"]
       22 SETTABLEKS                       R2 R1 K4 ["options"]
       24 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K10 ["PropertyRowTypes"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K11 ["View"]
       39 GETTABLEKS                       R6 R3 K12 ["createElement"]
       41 DUPCLOSURE                       R7 K13 [PROTO_2]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R1
       46 GETIMPORT                        R8 K16 [Font.new]
       48 LOADK                            R9 K17 ["rbxasset://fonts/families/BuilderMono.json"]
       49 GETIMPORT                        R10 K21 [Enum.FontWeight.Regular]
       51 GETIMPORT                        R11 K24 [Enum.FontStyle.Normal]
       53 CALL                             R8 3 1
       54 DUPCLOSURE                       R9 K25 [PROTO_4]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R8
       61 DUPCLOSURE                       R10 K26 [PROTO_5]
       62 CAPTURE                          VAL R4
       63 DUPTABLE                         R11 K29 [{"NumberPropertyRow", "createRowDefinition"}]
       64 SETTABLEKS                       R9 R11 K27 ["NumberPropertyRow"]
       66 SETTABLEKS                       R10 R11 K28 ["createRowDefinition"]
       68 RETURN                           R11 1
