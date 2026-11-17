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
       83 GETUPVAL                         R10 5
       84 JUMPIFNOT                        R10 ; [+4]
       85 GETUPVAL                         R10 3
       86 JUMPIFNOT                        R10 ; [+2]
       87 LOADNIL                          R9
       88 JUMP                             ; [+58]
       89 GETUPVAL                         R10 3
       90 JUMPIF                           R10 ; [+10]
       91 GETTABLEKS                       R10 R0 K19 ["Value"]
       93 GETUPVAL                         R11 6
       94 GETTABLEKS                       R11 R11 K23 ["getStudioDefaultStyleSheet"]
       96 CALL                             R11 0 1
       97 JUMPIFNOTEQ                      R10 R11 ; [+3]
       99 LOADNIL                          R9
      100 JUMP                             ; [+46]
      101 GETUPVAL                         R9 0
      102 GETTABLEKS                       R9 R9 K4 ["createElement"]
      104 GETUPVAL                         R10 7
      105 NEWTABLE                         R11 8 0
      107 GETIMPORT                        R12 K26 [Vector2.new]
      109 LOADN                            R13 0
      110 LOADK                            R14 K27 [0.5]
      111 CALL                             R12 2 1
      112 SETTABLEKS                       R12 R11 K28 ["AnchorPoint"]
      114 GETUPVAL                         R12 8
      115 GETTABLEKS                       R12 R12 K29 ["close"]
      117 CALL                             R12 0 1
      118 SETTABLEKS                       R12 R11 K30 ["LeftIcon"]
      120 LOADK                            R12 K31 ["PointingHand"]
      121 SETTABLEKS                       R12 R11 K32 ["Cursor"]
      123 NEWCLOSURE                       R12 P4
      124 CAPTURE                          VAL R0
      125 SETTABLEKS                       R12 R11 K33 ["OnClick"]
      127 GETUPVAL                         R12 0
      128 GETTABLEKS                       R12 R12 K6 ["Tag"]
      130 LOADK                            R13 K34 ["IconOnly"]
      131 SETTABLE                         R13 R11 R12
      132 GETIMPORT                        R12 K36 [UDim2.new]
      134 LOADN                            R13 1
      135 GETUPVAL                         R15 9
      136 GETTABLEKS                       R15 R15 K37 ["X"]
      138 GETTABLEKS                       R15 R15 K38 ["Offset"]
      140 MINUS                            R14 R15
      141 LOADK                            R15 K27 [0.5]
      142 LOADN                            R16 0
      143 CALL                             R12 4 1
      144 SETTABLEKS                       R12 R11 K39 ["Position"]
      146 CALL                             R9 2 1
      147 SETTABLEKS                       R9 R8 K13 ["XButton"]
      149 GETUPVAL                         R10 3
      150 JUMPIFNOT                        R10 ; [+65]
      151 JUMPIFNOT                        R1 ; [+64]
      152 GETUPVAL                         R9 0
      153 GETTABLEKS                       R9 R9 K4 ["createElement"]
      155 GETUPVAL                         R10 2
      156 NEWTABLE                         R11 1 0
      158 GETUPVAL                         R12 0
      159 GETTABLEKS                       R12 R12 K6 ["Tag"]
      161 LOADK                            R13 K40 ["RowButtons"]
      162 SETTABLE                         R13 R11 R12
      163 DUPTABLE                         R12 K43 [{"ArrowUp", "ArrowDown", "XButton"}]
      164 GETUPVAL                         R13 0
      165 GETTABLEKS                       R13 R13 K4 ["createElement"]
      167 GETUPVAL                         R14 10
      168 DUPTABLE                         R15 K47 [{["LayoutOrder"] = 0, ["Icon"], ["OnClick"]}]
      169 GETUPVAL                         R16 8
      170 GETTABLEKS                       R16 R16 K48 ["arrowUp"]
      172 CALL                             R16 0 1
      173 SETTABLEKS                       R16 R15 K46 ["Icon"]
      175 SETTABLEKS                       R3 R15 K33 ["OnClick"]
      177 CALL                             R13 2 1
      178 SETTABLEKS                       R13 R12 K41 ["ArrowUp"]
      180 GETUPVAL                         R13 0
      181 GETTABLEKS                       R13 R13 K4 ["createElement"]
      183 GETUPVAL                         R14 10
      184 DUPTABLE                         R15 K50 [{["LayoutOrder"] = 1, ["Icon"], ["OnClick"]}]
      185 GETUPVAL                         R16 8
      186 GETTABLEKS                       R16 R16 K51 ["arrowDown"]
      188 CALL                             R16 0 1
      189 SETTABLEKS                       R16 R15 K46 ["Icon"]
      191 SETTABLEKS                       R4 R15 K33 ["OnClick"]
      193 CALL                             R13 2 1
      194 SETTABLEKS                       R13 R12 K42 ["ArrowDown"]
      196 GETUPVAL                         R13 0
      197 GETTABLEKS                       R13 R13 K4 ["createElement"]
      199 GETUPVAL                         R14 10
      200 DUPTABLE                         R15 K53 [{["LayoutOrder"] = 2, ["Icon"], ["OnClick"]}]
      201 GETUPVAL                         R16 8
      202 GETTABLEKS                       R16 R16 K29 ["close"]
      204 CALL                             R16 0 1
      205 SETTABLEKS                       R16 R15 K46 ["Icon"]
      207 NEWCLOSURE                       R16 P5
      208 CAPTURE                          VAL R0
      209 SETTABLEKS                       R16 R15 K33 ["OnClick"]
      211 CALL                             R13 2 1
      212 SETTABLEKS                       R13 R12 K13 ["XButton"]
      214 CALL                             R9 3 1
      215 JUMP                             ; [+1]
      216 LOADNIL                          R9
      217 SETTABLEKS                       R9 R8 K14 ["Buttons"]
      219 CALL                             R5 3 -1
      220 RETURN                           R5 -1

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
       82 GETTABLEKS                       R15 R15 K23 ["Flags"]
       84 GETTABLEKS                       R15 R15 K25 ["getFFlagStyleEditorFixDuplicateDeriveXButton"]
       86 CALL                             R14 1 1
       87 CALL                             R14 0 1
       88 GETIMPORT                        R15 K4 [require]
       90 GETTABLEKS                       R16 R0 K15 ["Src"]
       92 GETTABLEKS                       R16 R16 K26 ["Renderers"]
       94 GETTABLEKS                       R16 R16 K27 ["RendererTypes"]
       96 CALL                             R15 1 1
       97 DUPCLOSURE                       R16 K28 [PROTO_0]
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R4
      101 DUPCLOSURE                       R17 K29 [PROTO_7]
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R14
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R16
      113 RETURN                           R17 1
