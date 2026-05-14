PROTO_0:
        0 DUPTABLE                         R4 K1 [{"hovering"}]
        1 SETTABLEKS                       R1 R4 K0 ["hovering"]
        3 NAMECALL                         R2 R0 K2 ["setState"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 1
        2 NAMECALL                         R0 R0 K0 ["mouseHoverChanged"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["mouseHoverChanged"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R0 K2 ["state"]
        6 GETTABLEKS                       R2 R2 K3 ["hovering"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K4 ["OnClicked"]
       12 GETTABLEKS                       R4 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R4 K5 ["Title"]
       16 GETTABLEKS                       R5 R0 K0 ["props"]
       18 GETTABLEKS                       R5 R5 K6 ["ShowError"]
       20 GETTABLEKS                       R6 R0 K0 ["props"]
       22 GETTABLEKS                       R6 R6 K7 ["ShowWarning"]
       24 GETTABLEKS                       R7 R0 K0 ["props"]
       26 GETTABLEKS                       R7 R7 K8 ["Selected"]
       28 OR                               R8 R2 R7
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R9 R9 K9 ["createElement"]
       32 LOADK                            R10 K10 ["Frame"]
       33 NEWTABLE                         R11 8 0
       35 GETIMPORT                        R12 K13 [UDim2.new]
       37 LOADN                            R13 1
       38 LOADN                            R14 0
       39 LOADN                            R15 0
       40 LOADN                            R16 42
       41 CALL                             R12 4 1
       42 SETTABLEKS                       R12 R11 K14 ["Size"]
       44 JUMPIFNOT                        R8 ; [+5]
       45 GETTABLEKS                       R12 R1 K15 ["menuEntry"]
       47 GETTABLEKS                       R12 R12 K16 ["hover"]
       49 JUMPIF                           R12 ; [+4]
       50 GETTABLEKS                       R12 R1 K17 ["menuBar"]
       52 GETTABLEKS                       R12 R12 K18 ["backgroundColor"]
       54 SETTABLEKS                       R12 R11 K19 ["BackgroundColor3"]
       56 LOADN                            R12 0
       57 SETTABLEKS                       R12 R11 K20 ["BorderSizePixel"]
       59 GETUPVAL                         R12 0
       60 GETTABLEKS                       R12 R12 K21 ["Event"]
       62 GETTABLEKS                       R12 R12 K22 ["MouseEnter"]
       64 NEWCLOSURE                       R13 P0
       65 CAPTURE                          VAL R0
       66 SETTABLE                         R13 R11 R12
       67 GETUPVAL                         R12 0
       68 GETTABLEKS                       R12 R12 K21 ["Event"]
       70 GETTABLEKS                       R12 R12 K23 ["MouseLeave"]
       72 NEWCLOSURE                       R13 P1
       73 CAPTURE                          VAL R0
       74 SETTABLE                         R13 R11 R12
       75 DUPTABLE                         R12 K26 [{"Highlight", "Title", "Error"}]
       76 GETUPVAL                         R13 0
       77 GETTABLEKS                       R13 R13 K9 ["createElement"]
       79 LOADK                            R14 K10 ["Frame"]
       80 DUPTABLE                         R15 K29 [{"ZIndex", "Size", "BorderSizePixel", "BackgroundColor3", "BackgroundTransparency"}]
       81 LOADN                            R16 1
       82 SETTABLEKS                       R16 R15 K27 ["ZIndex"]
       84 GETIMPORT                        R16 K13 [UDim2.new]
       86 LOADN                            R17 1
       87 LOADN                            R18 0
       88 LOADN                            R19 1
       89 LOADN                            R20 0
       90 CALL                             R16 4 1
       91 SETTABLEKS                       R16 R15 K14 ["Size"]
       93 LOADN                            R16 0
       94 SETTABLEKS                       R16 R15 K20 ["BorderSizePixel"]
       96 GETTABLEKS                       R16 R1 K15 ["menuEntry"]
       98 GETTABLEKS                       R16 R16 K30 ["highlight"]
      100 SETTABLEKS                       R16 R15 K19 ["BackgroundColor3"]
      102 JUMPIFNOT                        R7 ; [+2]
      103 LOADN                            R16 0
      104 JUMP                             ; [+1]
      105 LOADN                            R16 1
      106 SETTABLEKS                       R16 R15 K28 ["BackgroundTransparency"]
      108 CALL                             R13 2 1
      109 SETTABLEKS                       R13 R12 K24 ["Highlight"]
      111 GETUPVAL                         R13 0
      112 GETTABLEKS                       R13 R13 K9 ["createElement"]
      114 LOADK                            R14 K31 ["TextButton"]
      115 NEWTABLE                         R15 16 0
      117 LOADN                            R16 2
      118 SETTABLEKS                       R16 R15 K27 ["ZIndex"]
      120 GETIMPORT                        R16 K13 [UDim2.new]
      122 LOADN                            R17 1
      123 LOADN                            R18 241
      124 LOADN                            R19 1
      125 LOADN                            R20 0
      126 CALL                             R16 4 1
      127 SETTABLEKS                       R16 R15 K14 ["Size"]
      129 GETIMPORT                        R16 K13 [UDim2.new]
      131 LOADN                            R17 0
      132 LOADN                            R18 15
      133 LOADN                            R19 0
      134 LOADN                            R20 0
      135 CALL                             R16 4 1
      136 SETTABLEKS                       R16 R15 K32 ["Position"]
      138 LOADN                            R16 1
      139 SETTABLEKS                       R16 R15 K28 ["BackgroundTransparency"]
      141 LOADN                            R16 0
      142 SETTABLEKS                       R16 R15 K20 ["BorderSizePixel"]
      144 GETIMPORT                        R16 K36 [Enum.TextXAlignment.Left]
      146 SETTABLEKS                       R16 R15 K34 ["TextXAlignment"]
      148 GETIMPORT                        R16 K39 [Enum.TextYAlignment.Center]
      150 SETTABLEKS                       R16 R15 K37 ["TextYAlignment"]
      152 SETTABLEKS                       R4 R15 K40 ["Text"]
      154 JUMPIFNOT                        R7 ; [+7]
      155 GETTABLEKS                       R16 R1 K15 ["menuEntry"]
      157 GETTABLEKS                       R16 R16 K41 ["font"]
      159 GETTABLEKS                       R16 R16 K42 ["selected"]
      161 JUMPIF                           R16 ; [+6]
      162 GETTABLEKS                       R16 R1 K15 ["menuEntry"]
      164 GETTABLEKS                       R16 R16 K41 ["font"]
      166 GETTABLEKS                       R16 R16 K43 ["unselected"]
      168 SETTABLEKS                       R16 R15 K44 ["Font"]
      170 LOADN                            R16 24
      171 SETTABLEKS                       R16 R15 K45 ["TextSize"]
      173 GETTABLEKS                       R16 R1 K15 ["menuEntry"]
      175 GETTABLEKS                       R16 R16 K46 ["text"]
      177 SETTABLEKS                       R16 R15 K47 ["TextColor3"]
      179 GETUPVAL                         R16 0
      180 GETTABLEKS                       R16 R16 K21 ["Event"]
      182 GETTABLEKS                       R16 R16 K48 ["Activated"]
      184 SETTABLE                         R3 R15 R16
      185 CALL                             R13 2 1
      186 SETTABLEKS                       R13 R12 K5 ["Title"]
      188 GETUPVAL                         R13 0
      189 GETTABLEKS                       R13 R13 K9 ["createElement"]
      191 LOADK                            R14 K49 ["ImageLabel"]
      192 DUPTABLE                         R15 K53 [{"ZIndex", "Visible", "Size", "Position", "AnchorPoint", "BackgroundTransparency", "Image"}]
      193 LOADN                            R16 3
      194 SETTABLEKS                       R16 R15 K27 ["ZIndex"]
      196 MOVE                             R16 R5
      197 JUMPIF                           R16 ; [+3]
      198 MOVE                             R16 R6
      199 JUMPIF                           R16 ; [+1]
      200 LOADB                            R16 0
      201 SETTABLEKS                       R16 R15 K50 ["Visible"]
      203 GETIMPORT                        R16 K13 [UDim2.new]
      205 LOADN                            R17 0
      206 LOADN                            R18 18
      207 LOADN                            R19 0
      208 LOADN                            R20 18
      209 CALL                             R16 4 1
      210 SETTABLEKS                       R16 R15 K14 ["Size"]
      212 GETIMPORT                        R16 K13 [UDim2.new]
      214 LOADN                            R17 1
      215 LOADN                            R18 244
      216 LOADK                            R19 K54 [0.5]
      217 LOADN                            R20 0
      218 CALL                             R16 4 1
      219 SETTABLEKS                       R16 R15 K32 ["Position"]
      221 GETIMPORT                        R16 K56 [Vector2.new]
      223 LOADN                            R17 1
      224 LOADK                            R18 K54 [0.5]
      225 CALL                             R16 2 1
      226 SETTABLEKS                       R16 R15 K51 ["AnchorPoint"]
      228 LOADN                            R16 1
      229 SETTABLEKS                       R16 R15 K28 ["BackgroundTransparency"]
      231 JUMPIFNOT                        R5 ; [+2]
      232 LOADK                            R16 K57 ["rbxasset://textures/GameSettings/ErrorIcon.png"]
      233 JUMP                             ; [+1]
      234 LOADK                            R16 K58 ["rbxasset://textures/GameSettings/Warning.png"]
      235 SETTABLEKS                       R16 R15 K52 ["Image"]
      237 CALL                             R13 2 1
      238 SETTABLEKS                       R13 R12 K25 ["Error"]
      240 CALL                             R9 3 -1
      241 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       27 GETTABLEKS                       R4 R3 K9 ["withContext"]
       29 GETTABLEKS                       R5 R1 K10 ["PureComponent"]
       31 LOADK                            R7 K11 ["MenuEntry"]
       32 NAMECALL                         R5 R5 K12 ["extend"]
       34 CALL                             R5 2 1
       35 DUPCLOSURE                       R6 K13 [PROTO_0]
       36 SETTABLEKS                       R6 R5 K14 ["mouseHoverChanged"]
       38 DUPCLOSURE                       R6 K15 [PROTO_3]
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R6 R5 K16 ["render"]
       42 MOVE                             R6 R4
       43 DUPTABLE                         R7 K18 [{"Stylizer"}]
       44 GETTABLEKS                       R8 R3 K17 ["Stylizer"]
       46 SETTABLEKS                       R8 R7 K17 ["Stylizer"]
       48 CALL                             R6 1 1
       49 MOVE                             R7 R5
       50 CALL                             R6 1 1
       51 MOVE                             R5 R6
       52 RETURN                           R5 1
