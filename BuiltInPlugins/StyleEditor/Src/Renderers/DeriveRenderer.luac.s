PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 NEWTABLE                         R3 8 0
        6 GETTABLEKS                       R4 R0 K1 ["LayoutOrder"]
        8 SETTABLEKS                       R4 R3 K1 ["LayoutOrder"]
       10 GETTABLEKS                       R4 R0 K2 ["Icon"]
       12 SETTABLEKS                       R4 R3 K3 ["LeftIcon"]
       14 LOADK                            R4 K4 ["PointingHand"]
       15 SETTABLEKS                       R4 R3 K5 ["Cursor"]
       17 GETTABLEKS                       R4 R0 K6 ["OnClick"]
       19 SETTABLEKS                       R4 R3 K6 ["OnClick"]
       21 LOADK                            R4 K7 ["X-Fit"]
       22 SETTABLEKS                       R4 R3 K8 ["PaneTags"]
       24 LOADK                            R4 K7 ["X-Fit"]
       25 SETTABLEKS                       R4 R3 K9 ["OverrideTags"]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K10 ["Tag"]
       30 GETUPVAL                         R5 2
       31 NEWTABLE                         R6 4 0
       33 LOADB                            R7 1
       34 SETTABLEKS                       R7 R6 K7 ["X-Fit"]
       36 LOADB                            R7 1
       37 SETTABLEKS                       R7 R6 K11 ["IconOnly"]
       39 LOADB                            R7 1
       40 SETTABLEKS                       R7 R6 K12 ["Compact"]
       42 CALL                             R5 1 1
       43 SETTABLE                         R5 R3 R4
       44 CALL                             R1 2 -1
       45 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Schema"]
        3 GETTABLEKS                       R0 R0 K1 ["OnMoveUp"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["Schema"]
        9 GETTABLEKS                       R0 R0 K1 ["OnMoveUp"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Schema"]
        3 GETTABLEKS                       R0 R0 K1 ["OnMoveDown"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["Schema"]
        9 GETTABLEKS                       R0 R0 K1 ["OnMoveDown"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnClick"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["Value"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnClick"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["Value"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R0
        8 NEWTABLE                         R5 0 1
       10 GETTABLEKS                       R6 R0 K1 ["Schema"]
       12 GETTABLEKS                       R6 R6 K2 ["OnMoveUp"]
       14 SETLIST                          R5 R6 1 [1]
       16 CALL                             R3 2 1
       17 GETUPVAL                         R4 1
       18 NEWCLOSURE                       R5 P1
       19 CAPTURE                          VAL R0
       20 NEWTABLE                         R6 0 1
       22 GETTABLEKS                       R7 R0 K1 ["Schema"]
       24 GETTABLEKS                       R7 R7 K3 ["OnMoveDown"]
       26 SETLIST                          R6 R7 1 [1]
       28 CALL                             R4 2 1
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K4 ["createElement"]
       32 GETUPVAL                         R6 2
       33 NEWTABLE                         R7 4 0
       35 GETTABLEKS                       R8 R0 K5 ["Size"]
       37 SETTABLEKS                       R8 R7 K5 ["Size"]
       39 GETUPVAL                         R8 0
       40 GETTABLEKS                       R8 R8 K6 ["Tag"]
       42 GETUPVAL                         R10 3
       43 JUMPIFNOT                        R10 ; [+2]
       44 LOADK                            R9 K7 ["DeriveRenderer data-testid=DeriveRenderer"]
       45 JUMP                             ; [+1]
       46 LOADK                            R9 K8 ["DeriveRenderer"]
       47 SETTABLE                         R9 R7 R8
       48 GETUPVAL                         R8 0
       49 GETTABLEKS                       R8 R8 K9 ["Event"]
       51 GETTABLEKS                       R8 R8 K10 ["MouseEnter"]
       53 NEWCLOSURE                       R9 P2
       54 CAPTURE                          VAL R2
       55 SETTABLE                         R9 R7 R8
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R8 R8 K9 ["Event"]
       59 GETTABLEKS                       R8 R8 K11 ["MouseLeave"]
       61 NEWCLOSURE                       R9 P3
       62 CAPTURE                          VAL R2
       63 SETTABLE                         R9 R7 R8
       64 DUPTABLE                         R8 K15 [{"Name", "XButton", "Buttons"}]
       65 GETUPVAL                         R9 0
       66 GETTABLEKS                       R9 R9 K4 ["createElement"]
       68 GETUPVAL                         R10 4
       69 DUPTABLE                         R11 K18 [{"Text", "TextXAlignment"}]
       70 GETTABLEKS                       R12 R0 K19 ["Value"]
       72 GETTABLEKS                       R12 R12 K12 ["Name"]
       74 SETTABLEKS                       R12 R11 K16 ["Text"]
       76 GETIMPORT                        R12 K22 [Enum.TextXAlignment.Left]
       78 SETTABLEKS                       R12 R11 K17 ["TextXAlignment"]
       80 CALL                             R9 2 1
       81 SETTABLEKS                       R9 R8 K12 ["Name"]
       83 GETUPVAL                         R10 3
       84 JUMPIF                           R10 ; [+10]
       85 GETTABLEKS                       R10 R0 K19 ["Value"]
       87 GETUPVAL                         R11 5
       88 GETTABLEKS                       R11 R11 K23 ["getStudioDefaultStyleSheet"]
       90 CALL                             R11 0 1
       91 JUMPIFNOTEQ                      R10 R11 ; [+3]
       93 LOADNIL                          R9
       94 JUMP                             ; [+46]
       95 GETUPVAL                         R9 0
       96 GETTABLEKS                       R9 R9 K4 ["createElement"]
       98 GETUPVAL                         R10 6
       99 NEWTABLE                         R11 8 0
      101 GETIMPORT                        R12 K26 [Vector2.new]
      103 LOADN                            R13 0
      104 LOADK                            R14 K27 [0.5]
      105 CALL                             R12 2 1
      106 SETTABLEKS                       R12 R11 K28 ["AnchorPoint"]
      108 GETUPVAL                         R12 7
      109 GETTABLEKS                       R12 R12 K29 ["close"]
      111 CALL                             R12 0 1
      112 SETTABLEKS                       R12 R11 K30 ["LeftIcon"]
      114 LOADK                            R12 K31 ["PointingHand"]
      115 SETTABLEKS                       R12 R11 K32 ["Cursor"]
      117 NEWCLOSURE                       R12 P4
      118 CAPTURE                          VAL R0
      119 SETTABLEKS                       R12 R11 K33 ["OnClick"]
      121 GETUPVAL                         R12 0
      122 GETTABLEKS                       R12 R12 K6 ["Tag"]
      124 LOADK                            R13 K34 ["IconOnly"]
      125 SETTABLE                         R13 R11 R12
      126 GETIMPORT                        R12 K36 [UDim2.new]
      128 LOADN                            R13 1
      129 GETUPVAL                         R15 8
      130 GETTABLEKS                       R15 R15 K37 ["X"]
      132 GETTABLEKS                       R15 R15 K38 ["Offset"]
      134 MINUS                            R14 R15
      135 LOADK                            R15 K27 [0.5]
      136 LOADN                            R16 0
      137 CALL                             R12 4 1
      138 SETTABLEKS                       R12 R11 K39 ["Position"]
      140 CALL                             R9 2 1
      141 SETTABLEKS                       R9 R8 K13 ["XButton"]
      143 GETUPVAL                         R10 3
      144 JUMPIFNOT                        R10 ; [+65]
      145 JUMPIFNOT                        R1 ; [+64]
      146 GETUPVAL                         R9 0
      147 GETTABLEKS                       R9 R9 K4 ["createElement"]
      149 GETUPVAL                         R10 2
      150 NEWTABLE                         R11 1 0
      152 GETUPVAL                         R12 0
      153 GETTABLEKS                       R12 R12 K6 ["Tag"]
      155 LOADK                            R13 K40 ["RowButtons"]
      156 SETTABLE                         R13 R11 R12
      157 DUPTABLE                         R12 K43 [{"ArrowUp", "ArrowDown", "XButton"}]
      158 GETUPVAL                         R13 0
      159 GETTABLEKS                       R13 R13 K4 ["createElement"]
      161 GETUPVAL                         R14 9
      162 DUPTABLE                         R15 K47 [{["LayoutOrder"] = 0, ["Icon"], ["OnClick"]}]
      163 GETUPVAL                         R16 7
      164 GETTABLEKS                       R16 R16 K48 ["arrowUp"]
      166 CALL                             R16 0 1
      167 SETTABLEKS                       R16 R15 K46 ["Icon"]
      169 SETTABLEKS                       R3 R15 K33 ["OnClick"]
      171 CALL                             R13 2 1
      172 SETTABLEKS                       R13 R12 K41 ["ArrowUp"]
      174 GETUPVAL                         R13 0
      175 GETTABLEKS                       R13 R13 K4 ["createElement"]
      177 GETUPVAL                         R14 9
      178 DUPTABLE                         R15 K50 [{["LayoutOrder"] = 1, ["Icon"], ["OnClick"]}]
      179 GETUPVAL                         R16 7
      180 GETTABLEKS                       R16 R16 K51 ["arrowDown"]
      182 CALL                             R16 0 1
      183 SETTABLEKS                       R16 R15 K46 ["Icon"]
      185 SETTABLEKS                       R4 R15 K33 ["OnClick"]
      187 CALL                             R13 2 1
      188 SETTABLEKS                       R13 R12 K42 ["ArrowDown"]
      190 GETUPVAL                         R13 0
      191 GETTABLEKS                       R13 R13 K4 ["createElement"]
      193 GETUPVAL                         R14 9
      194 DUPTABLE                         R15 K53 [{["LayoutOrder"] = 2, ["Icon"], ["OnClick"]}]
      195 GETUPVAL                         R16 7
      196 GETTABLEKS                       R16 R16 K29 ["close"]
      198 CALL                             R16 0 1
      199 SETTABLEKS                       R16 R15 K46 ["Icon"]
      201 NEWCLOSURE                       R16 P5
      202 CAPTURE                          VAL R0
      203 SETTABLEKS                       R16 R15 K33 ["OnClick"]
      205 CALL                             R13 2 1
      206 SETTABLEKS                       R13 R12 K13 ["XButton"]
      208 CALL                             R9 3 1
      209 JUMP                             ; [+1]
      210 LOADNIL                          R9
      211 SETTABLEKS                       R9 R8 K14 ["Buttons"]
      213 CALL                             R5 3 -1
      214 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["useCallback"]
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R4 R4 K8 ["Framework"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K9 ["Styling"]
       27 GETTABLEKS                       R4 R4 K10 ["joinTags"]
       29 GETTABLEKS                       R5 R3 K11 ["UI"]
       31 GETTABLEKS                       R6 R5 K12 ["IconButton"]
       33 GETTABLEKS                       R7 R5 K13 ["Pane"]
       35 GETTABLEKS                       R8 R5 K14 ["TextLabel"]
       37 GETIMPORT                        R9 K4 [require]
       39 GETTABLEKS                       R10 R0 K15 ["Src"]
       41 GETTABLEKS                       R10 R10 K16 ["Resources"]
       43 GETTABLEKS                       R10 R10 K17 ["ModernIcons"]
       45 CALL                             R9 1 1
       46 GETIMPORT                        R10 K4 [require]
       48 GETTABLEKS                       R11 R0 K15 ["Src"]
       50 GETTABLEKS                       R11 R11 K16 ["Resources"]
       52 GETTABLEKS                       R11 R11 K18 ["PluginStyles"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K4 [require]
       57 GETTABLEKS                       R12 R0 K15 ["Src"]
       59 GETTABLEKS                       R12 R12 K19 ["Util"]
       61 GETTABLEKS                       R12 R12 K20 ["DesignHelpers"]
       63 CALL                             R11 1 1
       64 LOADK                            R14 K21 ["Icon16"]
       65 NAMECALL                         R12 R10 K22 ["GetAttribute"]
       67 CALL                             R12 2 1
       68 GETIMPORT                        R13 K4 [require]
       70 GETTABLEKS                       R14 R0 K15 ["Src"]
       72 GETTABLEKS                       R14 R14 K23 ["Flags"]
       74 GETTABLEKS                       R14 R14 K24 ["getFFlagStyleEditorFixDerivesOrdering"]
       76 CALL                             R13 1 1
       77 CALL                             R13 0 1
       78 GETIMPORT                        R14 K4 [require]
       80 GETTABLEKS                       R15 R0 K15 ["Src"]
       82 GETTABLEKS                       R15 R15 K25 ["Renderers"]
       84 GETTABLEKS                       R15 R15 K26 ["RendererTypes"]
       86 CALL                             R14 1 1
       87 DUPCLOSURE                       R15 K27 [PROTO_0]
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R4
       91 DUPCLOSURE                       R16 K28 [PROTO_7]
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R15
      102 RETURN                           R16 1
