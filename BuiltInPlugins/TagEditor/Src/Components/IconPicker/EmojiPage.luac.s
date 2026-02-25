PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onSelect"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["modifier"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"Size", "LayoutOrder", "Style", "OnClick", "Layout"}]
        5 GETTABLEKS                       R4 R0 K1 ["Size"]
        7 SETTABLEKS                       R4 R3 K1 ["Size"]
        9 GETTABLEKS                       R5 R0 K8 ["modifier"]
       11 ORK                              R4 R5 K7 [0]
       12 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       14 GETTABLEKS                       R5 R0 K9 ["currentMod"]
       16 GETTABLEKS                       R6 R0 K8 ["modifier"]
       18 JUMPIFNOTEQ                      R5 R6 ; [+3]
       20 LOADK                            R4 K10 ["SubtleBorderBox"]
       21 JUMP                             ; [+1]
       22 LOADK                            R4 K11 ["None"]
       23 SETTABLEKS                       R4 R3 K3 ["Style"]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R4 R3 K4 ["OnClick"]
       29 GETIMPORT                        R4 K15 [Enum.FillDirection.Horizontal]
       31 SETTABLEKS                       R4 R3 K5 ["Layout"]
       33 DUPTABLE                         R4 K17 [{"Text"}]
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R5 R6 K0 ["createElement"]
       37 GETUPVAL                         R6 2
       38 DUPTABLE                         R7 K17 [{"Text"}]
       39 GETUPVAL                         R9 3
       40 GETTABLEKS                       R10 R0 K8 ["modifier"]
       42 GETTABLE                         R8 R9 R10
       43 JUMPIF                           R8 ; [+5]
       44 GETUPVAL                         R9 4
       45 GETTABLEKS                       R8 R9 K18 ["getNamedEmoji"]
       47 LOADK                            R9 K19 ["large-yellow-square"]
       48 CALL                             R8 1 1
       49 SETTABLEKS                       R8 R7 K16 ["Text"]
       51 CALL                             R5 2 1
       52 SETTABLEKS                       R5 R4 K16 ["Text"]
       54 CALL                             R1 3 -1
       55 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"modifier"}]
        2 MOVE                             R4 R0
        3 JUMPIF                           R4 ; [+3]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K2 ["None"]
        7 SETTABLEKS                       R4 R3 K0 ["modifier"]
        9 NAMECALL                         R1 R1 K3 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["_enteredButton"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["onHoverFunc"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K2 ["name"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_enteredButton"]
        3 JUMPIFNOTEQ                      R1 R0 ; [+10]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["onHoverFunc"]
        8 LOADNIL                          R2
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 0
       11 LOADNIL                          R2
       12 SETTABLEKS                       R2 R1 K0 ["_enteredButton"]
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Get"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["tagName"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K2 ["name"]
       10 NAMECALL                         R0 R0 K3 ["SetIcon"]
       12 CALL                             R0 3 0
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R0 R1 K4 ["closeFunc"]
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["props"]
        3 NEWTABLE                         R5 16 0
        5 SETTABLEKS                       R3 R5 K1 ["Size"]
        7 GETTABLEKS                       R6 R0 K2 ["text"]
        9 SETTABLEKS                       R6 R5 K3 ["Text"]
       11 LOADN                            R6 1
       12 SETTABLEKS                       R6 R5 K4 ["BackgroundTransparency"]
       14 LOADN                            R6 18
       15 SETTABLEKS                       R6 R5 K5 ["TextSize"]
       17 GETTABLEKS                       R6 R4 K6 ["TextScaled"]
       19 SETTABLEKS                       R6 R5 K6 ["TextScaled"]
       21 SETTABLEKS                       R2 R5 K7 ["Position"]
       23 GETUPVAL                         R8 1
       24 GETTABLEKS                       R7 R8 K8 ["Event"]
       26 GETTABLEKS                       R6 R7 K9 ["MouseEnter"]
       28 NEWCLOSURE                       R7 P0
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R0
       32 SETTABLE                         R7 R5 R6
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R7 R8 K8 ["Event"]
       36 GETTABLEKS                       R6 R7 K10 ["MouseLeave"]
       38 NEWCLOSURE                       R7 P1
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          VAL R4
       41 SETTABLE                         R7 R5 R6
       42 GETUPVAL                         R8 1
       43 GETTABLEKS                       R7 R8 K8 ["Event"]
       45 GETTABLEKS                       R6 R7 K11 ["MouseButton1Click"]
       47 NEWCLOSURE                       R7 P2
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R0
       51 SETTABLE                         R7 R5 R6
       52 RETURN                           R5 1

PROTO_7:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_enteredButton"]
        3 DUPTABLE                         R1 K2 [{"modifier"}]
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K1 ["modifier"]
        7 SETTABLEKS                       R1 R0 K3 ["state"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U0
       12 SETTABLEKS                       R1 R0 K4 ["_onSelect"]
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U1
       18 SETTABLEKS                       R1 R0 K5 ["GetIconProps"]
       20 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R3 K2 ["EmojiPage"]
        6 NEWTABLE                         R3 0 0
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K3 ["getCategories"]
       11 CALL                             R4 0 1
       12 GETTABLEKS                       R6 R0 K4 ["state"]
       14 GETTABLEKS                       R5 R6 K5 ["modifier"]
       16 LOADN                            R6 1
       17 LOADN                            R9 1
       18 LENGTH                           R7 R4
       19 LOADN                            R8 1
       20 FORNPREP                         R7
       21 GETIMPORT                        R10 K7 [pairs]
       23 GETTABLE                         R13 R4 R9
       24 GETTABLEKS                       R11 R13 K8 ["items"]
       26 CALL                             R10 1 3
       27 FORGPREP_NEXT                    R10
       28 GETTABLEKS                       R15 R1 K9 ["search"]
       30 JUMPIFNOT                        R15 ; [+8]
       31 GETTABLEKS                       R15 R14 K10 ["name"]
       33 GETTABLEKS                       R17 R1 K9 ["search"]
       35 NAMECALL                         R15 R15 K11 ["find"]
       37 CALL                             R15 2 1
       38 JUMPIFNOT                        R15 ; [+36]
       39 JUMPIFNOT                        R5 ; [+22]
       40 GETTABLEKS                       R15 R14 K12 ["alts"]
       42 JUMPIFNOT                        R15 ; [+19]
       43 GETTABLEKS                       R16 R14 K12 ["alts"]
       45 GETTABLE                         R15 R16 R5
       46 JUMPIFNOT                        R15 ; [+15]
       47 DUPTABLE                         R15 K14 [{"name", "text"}]
       48 LOADK                            R17 K15 ["emoji:"]
       49 GETTABLEKS                       R18 R14 K10 ["name"]
       51 MOVE                             R19 R5
       52 CONCAT                           R16 R17 R19
       53 SETTABLEKS                       R16 R15 K10 ["name"]
       55 GETTABLEKS                       R17 R14 K12 ["alts"]
       57 GETTABLE                         R16 R17 R5
       58 SETTABLEKS                       R16 R15 K13 ["text"]
       60 SETTABLE                         R15 R3 R6
       61 JUMP                             ; [+12]
       62 DUPTABLE                         R15 K14 [{"name", "text"}]
       63 LOADK                            R17 K15 ["emoji:"]
       64 GETTABLEKS                       R18 R14 K10 ["name"]
       66 CONCAT                           R16 R17 R18
       67 SETTABLEKS                       R16 R15 K10 ["name"]
       69 GETTABLEKS                       R16 R14 K16 ["base"]
       71 SETTABLEKS                       R16 R15 K13 ["text"]
       73 SETTABLE                         R15 R3 R6
       74 ADDK                             R6 R6 K17 [1]
       75 FORGLOOP                         R10 2 ; [-48]
       77 FORNLOOP                         R7
       78 NEWTABLE                         R7 0 1
       80 GETUPVAL                         R9 1
       81 GETTABLEKS                       R8 R9 K18 ["createElement"]
       83 GETUPVAL                         R9 2
       84 DUPTABLE                         R10 K22 [{"Size", "modifier", "currentMod", "onSelect"}]
       85 GETTABLEKS                       R11 R2 K23 ["SkinToneModifierButtonSize"]
       87 SETTABLEKS                       R11 R10 K19 ["Size"]
       89 LOADNIL                          R11
       90 SETTABLEKS                       R11 R10 K5 ["modifier"]
       92 SETTABLEKS                       R5 R10 K20 ["currentMod"]
       94 GETTABLEKS                       R11 R0 K24 ["_onSelect"]
       96 SETTABLEKS                       R11 R10 K21 ["onSelect"]
       98 CALL                             R8 2 1
       99 SETTABLEN                        R8 R7 1
      100 GETIMPORT                        R8 K7 [pairs]
      102 GETUPVAL                         R9 3
      103 CALL                             R8 1 3
      104 FORGPREP_NEXT                    R8
      105 GETUPVAL                         R14 1
      106 GETTABLEKS                       R13 R14 K18 ["createElement"]
      108 GETUPVAL                         R14 2
      109 DUPTABLE                         R15 K22 [{"Size", "modifier", "currentMod", "onSelect"}]
      110 GETTABLEKS                       R16 R2 K23 ["SkinToneModifierButtonSize"]
      112 SETTABLEKS                       R16 R15 K19 ["Size"]
      114 SETTABLEKS                       R11 R15 K5 ["modifier"]
      116 SETTABLEKS                       R5 R15 K20 ["currentMod"]
      118 GETTABLEKS                       R16 R0 K24 ["_onSelect"]
      120 SETTABLEKS                       R16 R15 K21 ["onSelect"]
      122 CALL                             R13 2 1
      123 SETTABLE                         R13 R7 R11
      124 FORGLOOP                         R8 2 ; [-20]
      126 GETUPVAL                         R9 1
      127 GETTABLEKS                       R8 R9 K18 ["createElement"]
      129 GETUPVAL                         R9 4
      130 DUPTABLE                         R10 K27 [{"Size", "LayoutOrder", "Padding"}]
      131 GETTABLEKS                       R11 R1 K19 ["Size"]
      133 SETTABLEKS                       R11 R10 K19 ["Size"]
      135 GETTABLEKS                       R11 R1 K25 ["LayoutOrder"]
      137 SETTABLEKS                       R11 R10 K25 ["LayoutOrder"]
      139 GETTABLEKS                       R11 R2 K26 ["Padding"]
      141 SETTABLEKS                       R11 R10 K26 ["Padding"]
      143 DUPTABLE                         R11 K30 [{"SkinToneModifierPane", "Grid"}]
      144 GETUPVAL                         R13 1
      145 GETTABLEKS                       R12 R13 K18 ["createElement"]
      147 GETUPVAL                         R13 4
      148 DUPTABLE                         R14 K32 [{"Size", "Layout"}]
      149 GETTABLEKS                       R15 R2 K33 ["SkinToneModifierPaneSize"]
      151 SETTABLEKS                       R15 R14 K19 ["Size"]
      153 GETIMPORT                        R15 K37 [Enum.FillDirection.Horizontal]
      155 SETTABLEKS                       R15 R14 K31 ["Layout"]
      157 MOVE                             R15 R7
      158 CALL                             R12 3 1
      159 SETTABLEKS                       R12 R11 K28 ["SkinToneModifierPane"]
      161 GETUPVAL                         R13 1
      162 GETTABLEKS                       R12 R13 K18 ["createElement"]
      164 GETUPVAL                         R13 5
      165 DUPTABLE                         R14 K43 [{"Size", "Position", "CellSize", "Cells", "CellComponent", "GetCellProps"}]
      166 GETTABLEKS                       R15 R2 K44 ["GridSize"]
      168 SETTABLEKS                       R15 R14 K19 ["Size"]
      170 GETTABLEKS                       R15 R2 K45 ["GridPosition"]
      172 SETTABLEKS                       R15 R14 K38 ["Position"]
      174 GETTABLEKS                       R15 R2 K46 ["GridCellSize"]
      176 SETTABLEKS                       R15 R14 K39 ["CellSize"]
      178 SETTABLEKS                       R3 R14 K40 ["Cells"]
      180 LOADK                            R15 K47 ["TextButton"]
      181 SETTABLEKS                       R15 R14 K41 ["CellComponent"]
      183 GETTABLEKS                       R15 R0 K48 ["GetIconProps"]
      185 SETTABLEKS                       R15 R14 K42 ["GetCellProps"]
      187 CALL                             R12 2 1
      188 SETTABLEKS                       R12 R11 K29 ["Grid"]
      190 CALL                             R8 3 -1
      191 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R5 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R5 K8 ["Emoji"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       34 GETTABLEKS                       R5 R4 K10 ["withContext"]
       36 GETTABLEKS                       R7 R2 K11 ["Style"]
       38 GETTABLEKS                       R6 R7 K12 ["Stylizer"]
       40 GETTABLEKS                       R7 R2 K13 ["UI"]
       42 GETTABLEKS                       R8 R7 K14 ["Grid"]
       44 GETTABLEKS                       R9 R7 K15 ["Pane"]
       46 GETTABLEKS                       R10 R7 K16 ["TextLabel"]
       48 GETIMPORT                        R11 K4 [require]
       50 GETTABLEKS                       R13 R0 K17 ["Src"]
       52 GETTABLEKS                       R12 R13 K18 ["TagManager"]
       54 CALL                             R11 1 1
       55 NEWTABLE                         R12 8 0
       57 GETTABLEKS                       R13 R3 K19 ["getNamedEmoji"]
       59 LOADK                            R14 K20 ["skin-tone-2"]
       60 CALL                             R13 1 1
       61 SETTABLEN                        R13 R12 2
       62 GETTABLEKS                       R13 R3 K19 ["getNamedEmoji"]
       64 LOADK                            R14 K21 ["skin-tone-3"]
       65 CALL                             R13 1 1
       66 SETTABLEN                        R13 R12 3
       67 GETTABLEKS                       R13 R3 K19 ["getNamedEmoji"]
       69 LOADK                            R14 K22 ["skin-tone-4"]
       70 CALL                             R13 1 1
       71 SETTABLEN                        R13 R12 4
       72 GETTABLEKS                       R13 R3 K19 ["getNamedEmoji"]
       74 LOADK                            R14 K23 ["skin-tone-5"]
       75 CALL                             R13 1 1
       76 SETTABLEN                        R13 R12 5
       77 GETTABLEKS                       R13 R3 K19 ["getNamedEmoji"]
       79 LOADK                            R14 K24 ["skin-tone-6"]
       80 CALL                             R13 1 1
       81 SETTABLEN                        R13 R12 6
       82 DUPCLOSURE                       R13 K25 [PROTO_1]
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R3
       88 GETTABLEKS                       R14 R1 K26 ["PureComponent"]
       90 LOADK                            R16 K27 ["EmojiPage"]
       91 NAMECALL                         R14 R14 K28 ["extend"]
       93 CALL                             R14 2 1
       94 DUPCLOSURE                       R15 K29 [PROTO_7]
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R11
       97 SETTABLEKS                       R15 R14 K30 ["init"]
       99 DUPCLOSURE                       R15 K31 [PROTO_8]
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R8
      106 SETTABLEKS                       R15 R14 K32 ["render"]
      108 MOVE                             R15 R5
      109 DUPTABLE                         R16 K33 [{"Stylizer"}]
      110 SETTABLEKS                       R6 R16 K12 ["Stylizer"]
      112 CALL                             R15 1 1
      113 MOVE                             R16 R14
      114 CALL                             R15 1 1
      115 MOVE                             R14 R15
      116 RETURN                           R14 1
