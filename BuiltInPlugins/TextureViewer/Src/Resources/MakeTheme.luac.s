PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["mock"]
        5 CALL                             R2 0 1
        6 MOVE                             R1 R2
        7 JUMP                             ; [+5]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K1 ["new"]
       11 CALL                             R2 0 1
       12 MOVE                             R1 R2
       13 GETUPVAL                         R4 1
       14 NAMECALL                         R2 R1 K2 ["extend"]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Style"]
       18 GETTABLEKS                       R4 R2 K8 ["Themes"]
       20 GETTABLEKS                       R3 R4 K9 ["StudioTheme"]
       22 DUPTABLE                         R4 K14 [{"App", "TopPanel", "SearchBar", "TextureTable"}]
       23 DUPTABLE                         R5 K17 [{"Padding", "Spacing"}]
       24 LOADN                            R6 4
       25 SETTABLEKS                       R6 R5 K15 ["Padding"]
       27 LOADN                            R6 4
       28 SETTABLEKS                       R6 R5 K16 ["Spacing"]
       30 SETTABLEKS                       R5 R4 K10 ["App"]
       32 DUPTABLE                         R5 K21 [{"Size", "Padding", "AggregateStats", "Refresh"}]
       33 GETIMPORT                        R6 K24 [UDim2.new]
       35 LOADN                            R7 1
       36 LOADN                            R8 0
       37 LOADN                            R9 0
       38 LOADN                            R10 24
       39 CALL                             R6 4 1
       40 SETTABLEKS                       R6 R5 K18 ["Size"]
       42 LOADN                            R6 2
       43 SETTABLEKS                       R6 R5 K15 ["Padding"]
       45 DUPTABLE                         R6 K28 [{"TextSize", "NumTextures", "TotalMemory"}]
       46 LOADN                            R7 18
       47 SETTABLEKS                       R7 R6 K25 ["TextSize"]
       49 DUPTABLE                         R7 K29 [{"Size"}]
       50 GETIMPORT                        R8 K24 [UDim2.new]
       52 LOADK                            R9 K30 [0.333333333333333]
       53 LOADN                            R10 231
       54 LOADN                            R11 1
       55 LOADN                            R12 0
       56 CALL                             R8 4 1
       57 SETTABLEKS                       R8 R7 K18 ["Size"]
       59 SETTABLEKS                       R7 R6 K26 ["NumTextures"]
       61 DUPTABLE                         R7 K29 [{"Size"}]
       62 GETIMPORT                        R8 K32 [UDim2.fromScale]
       64 LOADK                            R9 K30 [0.333333333333333]
       65 LOADN                            R10 1
       66 CALL                             R8 2 1
       67 SETTABLEKS                       R8 R7 K18 ["Size"]
       69 SETTABLEKS                       R7 R6 K27 ["TotalMemory"]
       71 SETTABLEKS                       R6 R5 K19 ["AggregateStats"]
       73 DUPTABLE                         R6 K36 [{"Size", "AnchorPoint", "Position", "Button"}]
       74 GETIMPORT                        R7 K32 [UDim2.fromScale]
       76 LOADK                            R8 K30 [0.333333333333333]
       77 LOADN                            R9 1
       78 CALL                             R7 2 1
       79 SETTABLEKS                       R7 R6 K18 ["Size"]
       81 GETIMPORT                        R7 K38 [Vector2.new]
       83 LOADK                            R8 K39 [0.5]
       84 LOADN                            R9 0
       85 CALL                             R7 2 1
       86 SETTABLEKS                       R7 R6 K33 ["AnchorPoint"]
       88 GETIMPORT                        R7 K24 [UDim2.new]
       90 LOADK                            R8 K39 [0.5]
       91 LOADN                            R9 25
       92 LOADN                            R10 0
       93 LOADN                            R11 0
       94 CALL                             R7 4 1
       95 SETTABLEKS                       R7 R6 K34 ["Position"]
       97 DUPTABLE                         R7 K41 [{"Icon"}]
       98 LOADK                            R8 K42 ["rbxasset://textures/TextureViewer/refresh_dark_theme.png"]
       99 SETTABLEKS                       R8 R7 K40 ["Icon"]
      101 SETTABLEKS                       R7 R6 K35 ["Button"]
      103 SETTABLEKS                       R6 R5 K20 ["Refresh"]
      105 SETTABLEKS                       R5 R4 K11 ["TopPanel"]
      107 DUPTABLE                         R5 K29 [{"Size"}]
      108 GETIMPORT                        R6 K24 [UDim2.new]
      110 LOADN                            R7 1
      111 LOADN                            R8 0
      112 LOADN                            R9 0
      113 LOADN                            R10 32
      114 CALL                             R6 4 1
      115 SETTABLEKS                       R6 R5 K18 ["Size"]
      117 SETTABLEKS                       R5 R4 K12 ["SearchBar"]
      119 DUPTABLE                         R5 K45 [{"Size", "RowHeight", "TableCell"}]
      120 GETIMPORT                        R6 K24 [UDim2.new]
      122 LOADN                            R7 1
      123 LOADN                            R8 0
      124 LOADN                            R9 1
      125 LOADN                            R10 196
      126 CALL                             R6 4 1
      127 SETTABLEKS                       R6 R5 K18 ["Size"]
      129 LOADN                            R6 165
      130 SETTABLEKS                       R6 R5 K43 ["RowHeight"]
      132 DUPTABLE                         R6 K49 [{"Style", "BorderSizePixel", "IdCell", "FindSelectCell"}]
      133 LOADK                            R7 K50 ["Box"]
      134 SETTABLEKS                       R7 R6 K7 ["Style"]
      136 LOADN                            R7 1
      137 SETTABLEKS                       R7 R6 K46 ["BorderSizePixel"]
      139 DUPTABLE                         R7 K53 [{"TextInput", "Buttons"}]
      140 DUPTABLE                         R8 K29 [{"Size"}]
      141 GETIMPORT                        R9 K32 [UDim2.fromScale]
      143 LOADN                            R10 1
      144 LOADK                            R11 K30 [0.333333333333333]
      145 CALL                             R9 2 1
      146 SETTABLEKS                       R9 R8 K18 ["Size"]
      148 SETTABLEKS                       R8 R7 K51 ["TextInput"]
      150 DUPTABLE                         R8 K57 [{"ButtonsWrapper", "Padding", "CancelIcon", "ConfirmIcon"}]
      151 DUPTABLE                         R9 K29 [{"Size"}]
      152 GETIMPORT                        R10 K32 [UDim2.fromScale]
      154 LOADK                            R11 K58 [0.666666666666667]
      155 LOADK                            R12 K30 [0.333333333333333]
      156 CALL                             R10 2 1
      157 SETTABLEKS                       R10 R9 K18 ["Size"]
      159 SETTABLEKS                       R9 R8 K54 ["ButtonsWrapper"]
      161 LOADN                            R9 5
      162 SETTABLEKS                       R9 R8 K15 ["Padding"]
      164 LOADK                            R9 K59 ["rbxasset://textures/TextureViewer/cancel.png"]
      165 SETTABLEKS                       R9 R8 K55 ["CancelIcon"]
      167 LOADK                            R9 K60 ["rbxasset://textures/TextureViewer/confirm.png"]
      168 SETTABLEKS                       R9 R8 K56 ["ConfirmIcon"]
      170 SETTABLEKS                       R8 R7 K52 ["Buttons"]
      172 SETTABLEKS                       R7 R6 K47 ["IdCell"]
      174 DUPTABLE                         R7 K64 [{"ZoomText", "PrevButton", "NextButton"}]
      175 DUPTABLE                         R8 K65 [{"Padding", "TextSize"}]
      176 LOADN                            R9 5
      177 SETTABLEKS                       R9 R8 K15 ["Padding"]
      179 LOADN                            R9 18
      180 SETTABLEKS                       R9 R8 K25 ["TextSize"]
      182 SETTABLEKS                       R8 R7 K61 ["ZoomText"]
      184 DUPTABLE                         R8 K41 [{"Icon"}]
      185 LOADK                            R9 K66 ["rbxasset://textures/TextureViewer/arrowleft_black_16.png"]
      186 SETTABLEKS                       R9 R8 K40 ["Icon"]
      188 SETTABLEKS                       R8 R7 K62 ["PrevButton"]
      190 DUPTABLE                         R8 K41 [{"Icon"}]
      191 LOADK                            R9 K67 ["rbxasset://textures/TextureViewer/arrowright_black_16.png"]
      192 SETTABLEKS                       R9 R8 K40 ["Icon"]
      194 SETTABLEKS                       R8 R7 K63 ["NextButton"]
      196 SETTABLEKS                       R7 R6 K48 ["FindSelectCell"]
      198 SETTABLEKS                       R6 R5 K44 ["TableCell"]
      200 SETTABLEKS                       R5 R4 K13 ["TextureTable"]
      202 DUPCLOSURE                       R5 K68 [PROTO_0]
      203 CAPTURE                          VAL R3
      204 CAPTURE                          VAL R4
      205 RETURN                           R5 1
