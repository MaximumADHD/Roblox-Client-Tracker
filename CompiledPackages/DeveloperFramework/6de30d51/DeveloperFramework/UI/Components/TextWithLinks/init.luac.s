PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 NEWTABLE                         R2 0 0
        4 SETTABLEKS                       R2 R0 K1 ["lines"]
        6 GETTABLEKS                       R3 R1 K2 ["AbsoluteSize"]
        8 JUMPIFNOT                        R3 ; [+5]
        9 GETTABLEKS                       R2 R1 K2 ["AbsoluteSize"]
       11 GETTABLEKS                       R2 R2 K3 ["X"]
       13 JUMP                             ; [+1]
       14 LOADN                            R2 0
       15 SETTABLEKS                       R2 R0 K4 ["maxWidth"]
       17 LOADN                            R2 1
       18 SETTABLEKS                       R2 R0 K5 ["currentColumnIndex"]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K6 ["new"]
       23 CALL                             R2 0 1
       24 SETTABLEKS                       R2 R0 K7 ["lineOrder"]
       26 LOADN                            R2 0
       27 SETTABLEKS                       R2 R0 K8 ["frameHeight"]
       29 LOADNIL                          R2
       30 SETTABLEKS                       R2 R0 K9 ["previousLineWrapped"]
       32 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["TextProps"]
        4 GETTABLEKS                       R3 R0 K2 ["maxWidth"]
        6 GETTABLEKS                       R4 R0 K3 ["lines"]
        8 GETTABLEKS                       R5 R0 K4 ["previousLineWrapped"]
       10 GETUPVAL                         R6 0
       11 MOVE                             R8 R1
       12 GETTABLEKS                       R9 R2 K5 ["TextSize"]
       14 GETTABLEKS                       R10 R2 K6 ["Font"]
       16 GETIMPORT                        R11 K9 [Vector2.new]
       18 MOVE                             R12 R3
       19 LOADK                            R13 K10 [∞]
       20 CALL                             R11 2 -1
       21 NAMECALL                         R6 R6 K11 ["GetTextSize"]
       23 CALL                             R6 -1 1
       24 GETIMPORT                        R7 K9 [Vector2.new]
       26 LOADN                            R8 1
       27 LOADN                            R9 0
       28 CALL                             R7 2 1
       29 ADD                              R6 R6 R7
       30 GETTABLEKS                       R8 R6 K12 ["Y"]
       32 GETTABLEKS                       R9 R2 K5 ["TextSize"]
       34 JUMPIFLT                         R9 R8 ; [+2]
       36 LOADB                            R7 0 +1
       37 LOADB                            R7 1
       38 LOADN                            R8 0
       39 LENGTH                           R9 R4
       40 LOADN                            R10 0
       41 JUMPIFNOTLT                      R10 R9 ; [+5]
       43 LENGTH                           R10 R4
       44 GETTABLE                         R9 R4 R10
       45 GETTABLEKS                       R8 R9 K13 ["width"]
       47 GETTABLEKS                       R11 R6 K14 ["X"]
       49 ADD                              R10 R8 R11
       50 JUMPIFLT                         R3 R10 ; [+2]
       52 LOADB                            R9 0 +1
       53 LOADB                            R9 1
       54 JUMPIF                           R5 ; [+5]
       55 LENGTH                           R10 R4
       56 JUMPIFEQKN                       R10 K15 [0] ; [+3]
       58 JUMPIF                           R7 ; [+1]
       59 JUMPIFNOT                        R9 ; [+38]
       60 JUMPIFNOT                        R7 ; [+3]
       61 GETTABLEKS                       R10 R6 K12 ["Y"]
       63 JUMPIF                           R10 ; [+2]
       64 GETTABLEKS                       R10 R2 K5 ["TextSize"]
       66 DUPTABLE                         R13 K18 [{"width", "height", "items"}]
       67 GETTABLEKS                       R14 R6 K14 ["X"]
       69 SETTABLEKS                       R14 R13 K13 ["width"]
       71 SETTABLEKS                       R10 R13 K16 ["height"]
       73 NEWTABLE                         R14 0 0
       75 SETTABLEKS                       R14 R13 K17 ["items"]
       77 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
       79 MOVE                             R12 R4
       80 GETIMPORT                        R11 K21 [table.insert]
       82 CALL                             R11 2 0
       83 GETTABLEKS                       R11 R0 K22 ["frameHeight"]
       85 GETUPVAL                         R12 1
       86 GETTABLEKS                       R12 R12 K8 ["new"]
       88 CALL                             R12 0 1
       89 SETTABLEKS                       R12 R0 K23 ["lineOrder"]
       91 ADDK                             R12 R11 K24 [1]
       92 SETTABLEKS                       R12 R0 K22 ["frameHeight"]
       94 LOADN                            R12 1
       95 SETTABLEKS                       R12 R0 K25 ["currentColumnIndex"]
       97 JUMP                             ; [+7]
       98 LENGTH                           R11 R4
       99 GETTABLE                         R10 R4 R11
      100 GETTABLEKS                       R12 R6 K14 ["X"]
      102 ADD                              R11 R8 R12
      103 SETTABLEKS                       R11 R10 K13 ["width"]
      105 MOVE                             R5 R7
      106 RETURN                           R6 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["lines"]
        2 LENGTH                           R4 R2
        3 GETTABLE                         R3 R2 R4
        4 GETTABLEKS                       R5 R0 K1 ["currentColumnIndex"]
        6 FASTCALL1                        TOSTRING R5 ; [+2]
        7 GETIMPORT                        R4 K3 [tostring]
        9 CALL                             R4 1 1
       10 GETTABLEKS                       R5 R3 K4 ["items"]
       12 SETTABLE                         R1 R5 R4
       13 GETTABLEKS                       R6 R0 K1 ["currentColumnIndex"]
       15 ADDK                             R5 R6 K5 [1]
       16 SETTABLEKS                       R5 R0 K1 ["currentColumnIndex"]
       18 RETURN                           R0 0

PROTO_3:
        0 LENGTH                           R2 R1
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R0 K1 ["measureAndBreakLineIfNeeded"]
        7 CALL                             R2 2 1
        8 GETTABLEKS                       R3 R0 K2 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["TextProps"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K4 ["createElement"]
       15 GETUPVAL                         R7 1
       16 GETUPVAL                         R8 2
       17 GETTABLEKS                       R8 R8 K5 ["Dictionary"]
       19 GETTABLEKS                       R8 R8 K6 ["join"]
       21 DUPTABLE                         R9 K11 [{"Text", "Size", "LayoutOrder", "TextWrapped"}]
       22 SETTABLEKS                       R1 R9 K7 ["Text"]
       24 GETIMPORT                        R10 K14 [UDim2.new]
       26 LOADN                            R11 0
       27 GETTABLEKS                       R12 R2 K15 ["X"]
       29 LOADN                            R13 0
       30 GETTABLEKS                       R14 R2 K16 ["Y"]
       32 CALL                             R10 4 1
       33 SETTABLEKS                       R10 R9 K8 ["Size"]
       35 GETTABLEKS                       R10 R0 K17 ["lineOrder"]
       37 NAMECALL                         R10 R10 K18 ["getNextOrder"]
       39 CALL                             R10 1 1
       40 SETTABLEKS                       R10 R9 K9 ["LayoutOrder"]
       42 LOADB                            R10 1
       43 SETTABLEKS                       R10 R9 K10 ["TextWrapped"]
       45 MOVE                             R10 R3
       46 CALL                             R8 2 -1
       47 CALL                             R6 -1 -1
       48 NAMECALL                         R4 R0 K19 ["appendToLine"]
       50 CALL                             R4 -1 0
       51 RETURN                           R0 0

PROTO_4:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["measureAndBreakLineIfNeeded"]
        3 CALL                             R3 2 1
        4 GETTABLEKS                       R4 R0 K1 ["props"]
        6 GETTABLEKS                       R4 R4 K2 ["TextProps"]
        8 GETTABLEKS                       R5 R0 K1 ["props"]
       10 GETTABLEKS                       R5 R5 K3 ["Stylizer"]
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R8 R8 K4 ["createElement"]
       15 GETUPVAL                         R9 1
       16 DUPTABLE                         R10 K11 [{"Size", "TextTruncate", "LayoutOrder", "OnClick", "Text", "Style"}]
       17 GETIMPORT                        R11 K14 [UDim2.new]
       19 LOADN                            R12 0
       20 GETTABLEKS                       R13 R3 K15 ["X"]
       22 LOADN                            R14 0
       23 GETTABLEKS                       R15 R4 K16 ["TextSize"]
       25 CALL                             R11 4 1
       26 SETTABLEKS                       R11 R10 K5 ["Size"]
       28 GETIMPORT                        R11 K19 [Enum.TextTruncate.AtEnd]
       30 SETTABLEKS                       R11 R10 K6 ["TextTruncate"]
       32 GETTABLEKS                       R11 R0 K20 ["lineOrder"]
       34 NAMECALL                         R11 R11 K21 ["getNextOrder"]
       36 CALL                             R11 1 1
       37 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       39 SETTABLEKS                       R2 R10 K8 ["OnClick"]
       41 SETTABLEKS                       R1 R10 K9 ["Text"]
       43 DUPTABLE                         R11 K24 [{"TextColor", "TextSize", "Font"}]
       44 GETTABLEKS                       R12 R5 K22 ["TextColor"]
       46 SETTABLEKS                       R12 R11 K22 ["TextColor"]
       48 GETTABLEKS                       R12 R4 K16 ["TextSize"]
       50 SETTABLEKS                       R12 R11 K16 ["TextSize"]
       52 GETTABLEKS                       R12 R4 K23 ["Font"]
       54 SETTABLEKS                       R12 R11 K23 ["Font"]
       56 SETTABLEKS                       R11 R10 K10 ["Style"]
       58 CALL                             R8 2 -1
       59 NAMECALL                         R6 R0 K25 ["appendToLine"]
       61 CALL                             R6 -1 0
       62 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Text"]
        4 GETTABLEKS                       R3 R1 K2 ["LinkMap"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R5 R1 K4 ["HorizontalAlignment"]
       10 GETTABLEKS                       R6 R1 K5 ["WrapperProps"]
       12 NEWTABLE                         R7 0 0
       14 SETTABLEKS                       R7 R0 K6 ["lines"]
       16 GETTABLEKS                       R8 R1 K7 ["AbsoluteSize"]
       18 JUMPIFNOT                        R8 ; [+5]
       19 GETTABLEKS                       R7 R1 K7 ["AbsoluteSize"]
       21 GETTABLEKS                       R7 R7 K8 ["X"]
       23 JUMP                             ; [+1]
       24 LOADN                            R7 0
       25 SETTABLEKS                       R7 R0 K9 ["maxWidth"]
       27 LOADN                            R7 1
       28 SETTABLEKS                       R7 R0 K10 ["currentColumnIndex"]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K11 ["new"]
       33 CALL                             R7 0 1
       34 SETTABLEKS                       R7 R0 K12 ["lineOrder"]
       36 LOADN                            R7 0
       37 SETTABLEKS                       R7 R0 K13 ["frameHeight"]
       39 LOADNIL                          R7
       40 SETTABLEKS                       R7 R0 K14 ["previousLineWrapped"]
       42 LOADN                            R7 1
       43 LOADNIL                          R8
       44 LOADNIL                          R9
       45 LOADNIL                          R10
       46 LOADNIL                          R11
       47 GETIMPORT                        R12 K16 [pairs]
       49 MOVE                             R13 R3
       50 CALL                             R12 1 3
       51 FORGPREP_NEXT                    R12
       52 GETTABLEKS                       R17 R16 K17 ["LinkText"]
       54 GETTABLEKS                       R18 R16 K18 ["LinkCallback"]
       56 LOADNIL                          R19
       57 LOADNIL                          R20
       58 GETIMPORT                        R21 K21 [string.find]
       60 MOVE                             R22 R2
       61 MOVE                             R23 R15
       62 MOVE                             R24 R7
       63 LOADB                            R25 1
       64 CALL                             R21 4 2
       65 MOVE                             R19 R21
       66 MOVE                             R20 R22
       67 JUMPIFNOTEQKNIL                  R8 ; [+6]
       69 MOVE                             R8 R19
       70 MOVE                             R9 R20
       71 MOVE                             R10 R17
       72 MOVE                             R11 R18
       73 JUMP                             ; [+7]
       74 JUMPIFNOT                        R19 ; [+6]
       75 JUMPIFNOTLT                      R19 R8 ; [+5]
       77 MOVE                             R8 R19
       78 MOVE                             R9 R20
       79 MOVE                             R10 R17
       80 MOVE                             R11 R18
       81 FORGLOOP                         R12 2 ; [-30]
       83 JUMPIFEQKNIL                     R8 ; [+19]
       85 SUBK                             R17 R8 K22 [1]
       86 FASTCALL3                        STRING_SUB R2 R7 R17
       88 MOVE                             R15 R2
       89 MOVE                             R16 R7
       90 GETIMPORT                        R14 K24 [string.sub]
       92 CALL                             R14 3 1
       93 NAMECALL                         R12 R0 K25 ["appendTextLabel"]
       95 CALL                             R12 2 0
       96 MOVE                             R14 R10
       97 MOVE                             R15 R11
       98 NAMECALL                         R12 R0 K26 ["appendLink"]
      100 CALL                             R12 3 0
      101 ADDK                             R7 R9 K22 [1]
      102 JUMPBACK                         ; [-60]
      103 LENGTH                           R13 R2
      104 FASTCALL3                        STRING_SUB R2 R7 R13
      106 MOVE                             R11 R2
      107 MOVE                             R12 R7
      108 GETIMPORT                        R10 K24 [string.sub]
      110 CALL                             R10 3 1
      111 NAMECALL                         R8 R0 K25 ["appendTextLabel"]
      113 CALL                             R8 2 0
      114 NEWTABLE                         R8 0 0
      116 GETUPVAL                         R9 0
      117 GETTABLEKS                       R9 R9 K11 ["new"]
      119 CALL                             R9 0 1
      120 GETIMPORT                        R10 K28 [ipairs]
      122 GETTABLEKS                       R11 R0 K6 ["lines"]
      124 CALL                             R10 1 3
      125 FORGPREP_INEXT                   R10
      126 FASTCALL1                        TOSTRING R13 ; [+3]
      127 MOVE                             R16 R13
      128 GETIMPORT                        R15 K30 [tostring]
      130 CALL                             R15 1 1
      131 GETUPVAL                         R16 1
      132 GETTABLEKS                       R16 R16 K31 ["createElement"]
      134 GETUPVAL                         R17 2
      135 DUPTABLE                         R18 K34 [{"Layout", "LayoutOrder", "AutomaticSize", "HorizontalAlignment"}]
      136 GETIMPORT                        R19 K38 [Enum.FillDirection.Horizontal]
      138 SETTABLEKS                       R19 R18 K32 ["Layout"]
      140 NAMECALL                         R19 R9 K39 ["getNextOrder"]
      142 CALL                             R19 1 1
      143 SETTABLEKS                       R19 R18 K3 ["LayoutOrder"]
      145 GETIMPORT                        R19 K41 [Enum.AutomaticSize.Y]
      147 SETTABLEKS                       R19 R18 K33 ["AutomaticSize"]
      149 SETTABLEKS                       R5 R18 K4 ["HorizontalAlignment"]
      151 GETTABLEKS                       R19 R14 K42 ["items"]
      153 CALL                             R16 3 1
      154 SETTABLE                         R16 R8 R15
      155 FORGLOOP                         R10 2 [inext] ; [-30]
      157 GETUPVAL                         R10 1
      158 GETTABLEKS                       R10 R10 K31 ["createElement"]
      160 GETUPVAL                         R11 2
      161 GETUPVAL                         R12 3
      162 GETTABLEKS                       R12 R12 K43 ["join"]
      164 DUPTABLE                         R13 K45 [{"Layout", "AutomaticSize", "LayoutOrder", "HorizontalAlignment", "Size"}]
      165 GETIMPORT                        R14 K47 [Enum.FillDirection.Vertical]
      167 SETTABLEKS                       R14 R13 K32 ["Layout"]
      169 GETIMPORT                        R14 K41 [Enum.AutomaticSize.Y]
      171 SETTABLEKS                       R14 R13 K33 ["AutomaticSize"]
      173 SETTABLEKS                       R4 R13 K3 ["LayoutOrder"]
      175 SETTABLEKS                       R5 R13 K4 ["HorizontalAlignment"]
      177 GETTABLEKS                       R14 R1 K44 ["Size"]
      179 SETTABLEKS                       R14 R13 K44 ["Size"]
      181 MOVE                             R14 R6
      182 CALL                             R12 2 1
      183 MOVE                             R13 R8
      184 CALL                             R10 3 -1
      185 RETURN                           R10 -1

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
       31 GETTABLEKS                       R5 R1 K8 ["Parent"]
       33 GETTABLEKS                       R5 R5 K13 ["Dash"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K10 [require]
       38 GETTABLEKS                       R6 R1 K14 ["Wrappers"]
       40 GETTABLEKS                       R6 R6 K15 ["withAbsoluteSize"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K10 [require]
       45 GETTABLEKS                       R7 R1 K16 ["Types"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K10 [require]
       50 GETTABLEKS                       R8 R1 K6 ["UI"]
       52 GETTABLEKS                       R8 R8 K17 ["ContextServices"]
       54 CALL                             R7 1 1
       55 GETTABLEKS                       R8 R7 K18 ["withContext"]
       57 GETIMPORT                        R9 K10 [require]
       59 GETTABLEKS                       R10 R1 K6 ["UI"]
       61 GETTABLEKS                       R10 R10 K19 ["Components"]
       63 GETTABLEKS                       R10 R10 K20 ["LinkText"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K10 [require]
       68 GETTABLEKS                       R11 R1 K6 ["UI"]
       70 GETTABLEKS                       R11 R11 K19 ["Components"]
       72 GETTABLEKS                       R11 R11 K21 ["Pane"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K10 [require]
       77 GETTABLEKS                       R12 R1 K6 ["UI"]
       79 GETTABLEKS                       R12 R12 K19 ["Components"]
       81 GETTABLEKS                       R12 R12 K22 ["TextLabel"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K10 [require]
       86 GETTABLEKS                       R13 R1 K23 ["Util"]
       88 GETTABLEKS                       R13 R13 K24 ["LayoutOrderIterator"]
       90 CALL                             R12 1 1
       91 GETTABLEKS                       R13 R2 K25 ["PureComponent"]
       93 LOADK                            R15 K26 ["TextWithLinks"]
       94 NAMECALL                         R13 R13 K27 ["extend"]
       96 CALL                             R13 2 1
       97 DUPCLOSURE                       R14 K28 [PROTO_0]
       98 CAPTURE                          VAL R12
       99 SETTABLEKS                       R14 R13 K29 ["init"]
      101 DUPCLOSURE                       R14 K30 [PROTO_1]
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R12
      104 SETTABLEKS                       R14 R13 K31 ["measureAndBreakLineIfNeeded"]
      106 DUPCLOSURE                       R14 K32 [PROTO_2]
      107 SETTABLEKS                       R14 R13 K33 ["appendToLine"]
      109 DUPCLOSURE                       R14 K34 [PROTO_3]
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R3
      113 SETTABLEKS                       R14 R13 K35 ["appendTextLabel"]
      115 DUPCLOSURE                       R14 K36 [PROTO_4]
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R9
      118 SETTABLEKS                       R14 R13 K37 ["appendLink"]
      120 DUPCLOSURE                       R14 K38 [PROTO_5]
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R4
      125 SETTABLEKS                       R14 R13 K39 ["render"]
      127 MOVE                             R14 R8
      128 DUPTABLE                         R15 K41 [{"Stylizer"}]
      129 GETTABLEKS                       R16 R7 K40 ["Stylizer"]
      131 SETTABLEKS                       R16 R15 K40 ["Stylizer"]
      133 CALL                             R14 1 1
      134 MOVE                             R15 R13
      135 CALL                             R14 1 1
      136 MOVE                             R13 R14
      137 MOVE                             R14 R5
      138 MOVE                             R15 R13
      139 CALL                             R14 1 -1
      140 RETURN                           R14 -1
