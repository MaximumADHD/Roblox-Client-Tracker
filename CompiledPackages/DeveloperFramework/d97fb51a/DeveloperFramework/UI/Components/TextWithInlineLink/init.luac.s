PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["interface"]
        5 DUPTABLE                         R4 K7 [{"Text", "OnLinkClicked", "LinkText", "LinkPlaceholder", "TextProps"}]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K8 ["string"]
        9 SETTABLEKS                       R5 R4 K2 ["Text"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K9 ["callback"]
       14 SETTABLEKS                       R5 R4 K3 ["OnLinkClicked"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K8 ["string"]
       19 SETTABLEKS                       R5 R4 K4 ["LinkText"]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K8 ["string"]
       24 SETTABLEKS                       R5 R4 K5 ["LinkPlaceholder"]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K1 ["interface"]
       29 DUPTABLE                         R6 K12 [{"TextSize", "Font"}]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K13 ["integer"]
       33 SETTABLEKS                       R7 R6 K10 ["TextSize"]
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K14 ["enum"]
       38 GETIMPORT                        R8 K16 [Enum.Font]
       40 CALL                             R7 1 1
       41 SETTABLEKS                       R7 R6 K11 ["Font"]
       43 CALL                             R5 1 1
       44 SETTABLEKS                       R5 R4 K6 ["TextProps"]
       46 CALL                             R3 1 1
       47 MOVE                             R4 R1
       48 CALL                             R3 1 -1
       49 FASTCALL                         ASSERT ; [+2]
       50 GETIMPORT                        R2 K18 [assert]
       52 CALL                             R2 -1 0
       53 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["TextSize"]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K1 ["Font"]
        8 GETIMPORT                        R6 K4 [Vector2.new]
       10 GETUPVAL                         R7 2
       11 LOADK                            R8 K5 [∞]
       12 CALL                             R6 2 -1
       13 NAMECALL                         R1 R1 K6 ["GetTextSize"]
       15 CALL                             R1 -1 1
       16 GETIMPORT                        R2 K4 [Vector2.new]
       18 LOADN                            R3 1
       19 LOADN                            R4 0
       20 CALL                             R2 2 1
       21 ADD                              R1 R1 R2
       22 GETTABLEKS                       R3 R1 K7 ["Y"]
       24 GETUPVAL                         R4 3
       25 JUMPIFLT                         R4 R3 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 LOADN                            R3 0
       30 GETUPVAL                         R5 4
       31 LENGTH                           R4 R5
       32 LOADN                            R5 0
       33 JUMPIFNOTLT                      R5 R4 ; [+7]
       35 GETUPVAL                         R5 4
       36 GETUPVAL                         R7 4
       37 LENGTH                           R6 R7
       38 GETTABLE                         R4 R5 R6
       39 GETTABLEKS                       R3 R4 K8 ["width"]
       41 GETTABLEKS                       R6 R1 K9 ["X"]
       43 ADD                              R5 R3 R6
       44 GETUPVAL                         R6 2
       45 JUMPIFLT                         R6 R5 ; [+2]
       47 LOADB                            R4 0 +1
       48 LOADB                            R4 1
       49 GETUPVAL                         R5 5
       50 JUMPIF                           R5 ; [+6]
       51 GETUPVAL                         R6 4
       52 LENGTH                           R5 R6
       53 JUMPIFEQKN                       R5 K10 [0] ; [+3]
       55 JUMPIF                           R2 ; [+1]
       56 JUMPIFNOT                        R4 ; [+31]
       57 JUMPIFNOT                        R2 ; [+3]
       58 GETTABLEKS                       R5 R1 K7 ["Y"]
       60 JUMPIF                           R5 ; [+1]
       61 GETUPVAL                         R5 3
       62 GETUPVAL                         R7 4
       63 DUPTABLE                         R8 K13 [{"width", "height", "items"}]
       64 GETTABLEKS                       R9 R1 K9 ["X"]
       66 SETTABLEKS                       R9 R8 K8 ["width"]
       68 SETTABLEKS                       R5 R8 K11 ["height"]
       70 NEWTABLE                         R9 0 0
       72 SETTABLEKS                       R9 R8 K12 ["items"]
       74 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       76 GETIMPORT                        R6 K16 [table.insert]
       78 CALL                             R6 2 0
       79 GETUPVAL                         R6 7
       80 GETTABLEKS                       R6 R6 K3 ["new"]
       82 CALL                             R6 0 1
       83 SETUPVAL                         R6 6
       84 GETUPVAL                         R7 8
       85 ADD                              R6 R7 R5
       86 SETUPVAL                         R6 8
       87 JUMP                             ; [+9]
       88 GETUPVAL                         R6 4
       89 GETUPVAL                         R8 4
       90 LENGTH                           R7 R8
       91 GETTABLE                         R5 R6 R7
       92 GETTABLEKS                       R7 R1 K9 ["X"]
       94 ADD                              R6 R3 R7
       95 SETTABLEKS                       R6 R5 K8 ["width"]
       97 SETUPVAL                         R2 5
       98 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 0
        2 LENGTH                           R3 R4
        3 GETTABLE                         R1 R2 R3
        4 GETTABLEKS                       R3 R1 K0 ["items"]
        6 FASTCALL2                        TABLE_INSERT R3 R0 ; [+4]
        8 MOVE                             R4 R0
        9 GETIMPORT                        R2 K3 [table.insert]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_3:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R2 R2 K1 ["getNextOrder"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K2 ["createElement"]
       14 GETUPVAL                         R4 3
       15 GETUPVAL                         R5 4
       16 GETTABLEKS                       R5 R5 K3 ["Dictionary"]
       18 GETTABLEKS                       R5 R5 K4 ["join"]
       20 DUPTABLE                         R6 K10 [{"key", "Text", "Size", "LayoutOrder", "TextWrapped"}]
       21 GETUPVAL                         R8 5
       22 JUMPIFNOT                        R8 ; [+6]
       23 FASTCALL1                        TOSTRING R2 ; [+3]
       24 MOVE                             R8 R2
       25 GETIMPORT                        R7 K12 [tostring]
       27 CALL                             R7 1 1
       28 JUMP                             ; [+1]
       29 LOADNIL                          R7
       30 SETTABLEKS                       R7 R6 K5 ["key"]
       32 SETTABLEKS                       R0 R6 K6 ["Text"]
       34 GETIMPORT                        R7 K15 [UDim2.new]
       36 LOADN                            R8 0
       37 GETTABLEKS                       R9 R1 K16 ["X"]
       39 LOADN                            R10 0
       40 GETTABLEKS                       R11 R1 K17 ["Y"]
       42 CALL                             R7 4 1
       43 SETTABLEKS                       R7 R6 K7 ["Size"]
       45 SETTABLEKS                       R2 R6 K8 ["LayoutOrder"]
       47 LOADB                            R7 1
       48 SETTABLEKS                       R7 R6 K9 ["TextWrapped"]
       50 GETUPVAL                         R7 6
       51 CALL                             R5 2 -1
       52 CALL                             R3 -1 1
       53 GETUPVAL                         R5 7
       54 GETUPVAL                         R7 7
       55 LENGTH                           R6 R7
       56 GETTABLE                         R4 R5 R6
       57 GETTABLEKS                       R6 R4 K18 ["items"]
       59 FASTCALL2                        TABLE_INSERT R6 R3 ; [+4]
       61 MOVE                             R7 R3
       62 GETIMPORT                        R5 K21 [table.insert]
       64 CALL                             R5 2 0
       65 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 NAMECALL                         R1 R1 K0 ["getNextOrder"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R2 R2 K1 ["createElement"]
       10 GETUPVAL                         R3 4
       11 DUPTABLE                         R4 K9 [{"key", "Size", "TextTruncate", "LayoutOrder", "OnClick", "Text", "Style"}]
       12 GETUPVAL                         R6 5
       13 JUMPIFNOT                        R6 ; [+8]
       14 GETUPVAL                         R6 6
       15 JUMPIFNOT                        R6 ; [+6]
       16 FASTCALL1                        TOSTRING R1 ; [+3]
       17 MOVE                             R6 R1
       18 GETIMPORT                        R5 K11 [tostring]
       20 CALL                             R5 1 1
       21 JUMP                             ; [+1]
       22 LOADNIL                          R5
       23 SETTABLEKS                       R5 R4 K2 ["key"]
       25 GETIMPORT                        R5 K14 [UDim2.new]
       27 LOADN                            R6 0
       28 GETTABLEKS                       R7 R0 K15 ["X"]
       30 LOADN                            R8 0
       31 GETUPVAL                         R9 7
       32 CALL                             R5 4 1
       33 SETTABLEKS                       R5 R4 K3 ["Size"]
       35 GETIMPORT                        R5 K18 [Enum.TextTruncate.AtEnd]
       37 SETTABLEKS                       R5 R4 K4 ["TextTruncate"]
       39 SETTABLEKS                       R1 R4 K5 ["LayoutOrder"]
       41 GETUPVAL                         R5 8
       42 GETTABLEKS                       R5 R5 K19 ["OnLinkClicked"]
       44 SETTABLEKS                       R5 R4 K6 ["OnClick"]
       46 GETUPVAL                         R5 1
       47 SETTABLEKS                       R5 R4 K7 ["Text"]
       49 DUPTABLE                         R5 K23 [{"TextColor", "TextSize", "Font"}]
       50 GETUPVAL                         R6 9
       51 GETTABLEKS                       R6 R6 K20 ["TextColor"]
       53 SETTABLEKS                       R6 R5 K20 ["TextColor"]
       55 GETUPVAL                         R6 10
       56 GETTABLEKS                       R6 R6 K21 ["TextSize"]
       58 SETTABLEKS                       R6 R5 K21 ["TextSize"]
       60 GETUPVAL                         R6 10
       61 GETTABLEKS                       R6 R6 K22 ["Font"]
       63 SETTABLEKS                       R6 R5 K22 ["Font"]
       65 SETTABLEKS                       R5 R4 K8 ["Style"]
       67 CALL                             R2 2 1
       68 GETUPVAL                         R4 11
       69 GETUPVAL                         R6 11
       70 LENGTH                           R5 R6
       71 GETTABLE                         R3 R4 R5
       72 GETTABLEKS                       R5 R3 K24 ["items"]
       74 FASTCALL2                        TABLE_INSERT R5 R2 ; [+4]
       76 MOVE                             R6 R2
       77 GETIMPORT                        R4 K27 [table.insert]
       79 CALL                             R4 2 0
       80 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["TextProps"]
        6 GETTABLEKS                       R4 R1 K3 ["Text"]
        8 GETTABLEKS                       R5 R1 K4 ["LinkText"]
       10 GETTABLEKS                       R6 R1 K5 ["MaxWidth"]
       12 GETTABLEKS                       R7 R3 K6 ["TextSize"]
       14 GETTABLEKS                       R8 R1 K7 ["LayoutOrder"]
       16 GETTABLEKS                       R9 R1 K8 ["HorizontalAlignment"]
       18 NEWTABLE                         R10 0 0
       20 LOADNIL                          R11
       21 LOADNIL                          R12
       22 LOADN                            R13 0
       23 NEWCLOSURE                       R14 P0
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R6
       27 CAPTURE                          VAL R7
       28 CAPTURE                          VAL R10
       29 CAPTURE                          REF R12
       30 CAPTURE                          REF R11
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          REF R13
       33 NEWCLOSURE                       R15 P1
       34 CAPTURE                          VAL R10
       35 NEWCLOSURE                       R16 P2
       36 CAPTURE                          VAL R14
       37 CAPTURE                          REF R11
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R10
       44 NEWCLOSURE                       R17 P3
       45 CAPTURE                          VAL R14
       46 CAPTURE                          VAL R5
       47 CAPTURE                          REF R11
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          UPVAL U7
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R10
       57 LOADN                            R18 1
       58 LOADNIL                          R19
       59 LOADNIL                          R20
       60 GETIMPORT                        R21 K11 [string.find]
       62 MOVE                             R22 R4
       63 GETTABLEKS                       R23 R1 K12 ["LinkPlaceholder"]
       65 MOVE                             R24 R18
       66 LOADB                            R25 1
       67 CALL                             R21 4 2
       68 MOVE                             R19 R21
       69 MOVE                             R20 R22
       70 JUMPIFEQKNIL                     R19 ; [+15]
       72 MOVE                             R21 R16
       73 SUBK                             R25 R19 K13 [1]
       74 FASTCALL3                        STRING_SUB R4 R18 R25
       76 MOVE                             R23 R4
       77 MOVE                             R24 R18
       78 GETIMPORT                        R22 K15 [string.sub]
       80 CALL                             R22 3 1
       81 CALL                             R21 1 0
       82 MOVE                             R21 R17
       83 CALL                             R21 0 0
       84 ADDK                             R18 R20 K13 [1]
       85 JUMPBACK                         ; [-28]
       86 MOVE                             R19 R16
       87 LENGTH                           R23 R4
       88 FASTCALL3                        STRING_SUB R4 R18 R23
       90 MOVE                             R21 R4
       91 MOVE                             R22 R18
       92 GETIMPORT                        R20 K15 [string.sub]
       94 CALL                             R20 3 1
       95 CALL                             R19 1 0
       96 NEWTABLE                         R19 0 0
       98 GETIMPORT                        R20 K17 [ipairs]
      100 MOVE                             R21 R10
      101 CALL                             R20 1 3
      102 FORGPREP_INEXT                   R20
      103 LOADK                            R26 K18 ["line_"]
      104 MOVE                             R27 R23
      105 CONCAT                           R25 R26 R27
      106 GETUPVAL                         R26 2
      107 GETTABLEKS                       R26 R26 K19 ["createElement"]
      109 GETUPVAL                         R27 8
      110 DUPTABLE                         R28 K22 [{"Layout", "AutomaticSize", "HorizontalAlignment"}]
      111 GETIMPORT                        R29 K26 [Enum.FillDirection.Horizontal]
      113 SETTABLEKS                       R29 R28 K20 ["Layout"]
      115 GETIMPORT                        R29 K28 [Enum.AutomaticSize.Y]
      117 SETTABLEKS                       R29 R28 K21 ["AutomaticSize"]
      119 SETTABLEKS                       R9 R28 K8 ["HorizontalAlignment"]
      121 GETTABLEKS                       R29 R24 K29 ["items"]
      123 CALL                             R26 3 1
      124 SETTABLE                         R26 R19 R25
      125 FORGLOOP                         R20 2 [inext] ; [-23]
      127 GETUPVAL                         R20 2
      128 GETTABLEKS                       R20 R20 K19 ["createElement"]
      130 GETUPVAL                         R21 8
      131 DUPTABLE                         R22 K30 [{"Layout", "AutomaticSize", "LayoutOrder", "HorizontalAlignment"}]
      132 GETIMPORT                        R23 K32 [Enum.FillDirection.Vertical]
      134 SETTABLEKS                       R23 R22 K20 ["Layout"]
      136 GETIMPORT                        R23 K28 [Enum.AutomaticSize.Y]
      138 SETTABLEKS                       R23 R22 K21 ["AutomaticSize"]
      140 SETTABLEKS                       R8 R22 K7 ["LayoutOrder"]
      142 SETTABLEKS                       R9 R22 K8 ["HorizontalAlignment"]
      144 MOVE                             R23 R19
      145 CALL                             R20 3 -1
      146 CLOSEUPVALS                      R11
      147 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["UI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R1 R1 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R3 R1 K8 ["Parent"]
       19 GETTABLEKS                       R3 R3 K11 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K10 [require]
       24 GETTABLEKS                       R4 R1 K8 ["Parent"]
       26 GETTABLEKS                       R4 R4 K12 ["Cryo"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K10 [require]
       31 GETTABLEKS                       R5 R1 K6 ["UI"]
       33 GETTABLEKS                       R5 R5 K13 ["ContextServices"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R4 K14 ["withContext"]
       38 GETIMPORT                        R6 K10 [require]
       40 GETTABLEKS                       R7 R1 K6 ["UI"]
       42 GETTABLEKS                       R7 R7 K15 ["Components"]
       44 GETTABLEKS                       R7 R7 K16 ["LinkText"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETTABLEKS                       R8 R1 K6 ["UI"]
       51 GETTABLEKS                       R8 R8 K15 ["Components"]
       53 GETTABLEKS                       R8 R8 K17 ["Pane"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETTABLEKS                       R9 R1 K6 ["UI"]
       60 GETTABLEKS                       R9 R9 K15 ["Components"]
       62 GETTABLEKS                       R9 R9 K18 ["TextLabel"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K10 [require]
       67 GETTABLEKS                       R10 R1 K19 ["Util"]
       69 GETTABLEKS                       R10 R10 K20 ["Typecheck"]
       71 GETTABLEKS                       R10 R10 K21 ["t"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K10 [require]
       76 GETTABLEKS                       R11 R1 K19 ["Util"]
       78 GETTABLEKS                       R11 R11 K22 ["LayoutOrderIterator"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K10 [require]
       83 GETTABLEKS                       R12 R1 K23 ["SharedFlags"]
       85 GETTABLEKS                       R12 R12 K24 ["getFFlagDevFrameworkFixMissingKeyErrors"]
       87 CALL                             R11 1 1
       88 CALL                             R11 0 1
       89 GETIMPORT                        R12 K10 [require]
       91 GETTABLEKS                       R13 R1 K19 ["Util"]
       93 GETTABLEKS                       R13 R13 K25 ["isRoact17"]
       95 CALL                             R12 1 1
       96 MOVE                             R13 R2
       97 CALL                             R12 1 1
       98 GETTABLEKS                       R13 R2 K26 ["PureComponent"]
      100 LOADK                            R15 K27 ["TextWithInlineLink"]
      101 NAMECALL                         R13 R13 K28 ["extend"]
      103 CALL                             R13 2 1
      104 DUPCLOSURE                       R14 K29 [PROTO_0]
      105 CAPTURE                          VAL R9
      106 SETTABLEKS                       R14 R13 K30 ["init"]
      108 DUPCLOSURE                       R14 K31 [PROTO_5]
      109 CAPTURE                          VAL R0
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R7
      118 SETTABLEKS                       R14 R13 K32 ["render"]
      120 MOVE                             R14 R5
      121 DUPTABLE                         R15 K34 [{"Stylizer"}]
      122 GETTABLEKS                       R16 R4 K33 ["Stylizer"]
      124 SETTABLEKS                       R16 R15 K33 ["Stylizer"]
      126 CALL                             R14 1 1
      127 MOVE                             R15 R13
      128 CALL                             R14 1 1
      129 MOVE                             R13 R14
      130 RETURN                           R13 1
