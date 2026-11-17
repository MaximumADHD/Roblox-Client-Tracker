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
       80 DUPTABLE                         R15 K31 [{["ZIndex"] = 1, ["Size"], ["BorderSizePixel"] = 0, ["BackgroundColor3"], ["BackgroundTransparency"]}]
       81 GETIMPORT                        R16 K13 [UDim2.new]
       83 LOADN                            R17 1
       84 LOADN                            R18 0
       85 LOADN                            R19 1
       86 LOADN                            R20 0
       87 CALL                             R16 4 1
       88 SETTABLEKS                       R16 R15 K14 ["Size"]
       90 GETTABLEKS                       R16 R1 K15 ["menuEntry"]
       92 GETTABLEKS                       R16 R16 K32 ["highlight"]
       94 SETTABLEKS                       R16 R15 K19 ["BackgroundColor3"]
       96 JUMPIFNOT                        R7 ; [+2]
       97 LOADN                            R16 0
       98 JUMP                             ; [+1]
       99 LOADN                            R16 1
      100 SETTABLEKS                       R16 R15 K30 ["BackgroundTransparency"]
      102 CALL                             R13 2 1
      103 SETTABLEKS                       R13 R12 K24 ["Highlight"]
      105 GETUPVAL                         R13 0
      106 GETTABLEKS                       R13 R13 K9 ["createElement"]
      108 LOADK                            R14 K33 ["TextButton"]
      109 NEWTABLE                         R15 16 0
      111 LOADN                            R16 2
      112 SETTABLEKS                       R16 R15 K27 ["ZIndex"]
      114 GETIMPORT                        R16 K13 [UDim2.new]
      116 LOADN                            R17 1
      117 LOADN                            R18 -15
      118 LOADN                            R19 1
      119 LOADN                            R20 0
      120 CALL                             R16 4 1
      121 SETTABLEKS                       R16 R15 K14 ["Size"]
      123 GETIMPORT                        R16 K13 [UDim2.new]
      125 LOADN                            R17 0
      126 LOADN                            R18 15
      127 LOADN                            R19 0
      128 LOADN                            R20 0
      129 CALL                             R16 4 1
      130 SETTABLEKS                       R16 R15 K34 ["Position"]
      132 LOADN                            R16 1
      133 SETTABLEKS                       R16 R15 K30 ["BackgroundTransparency"]
      135 LOADN                            R16 0
      136 SETTABLEKS                       R16 R15 K20 ["BorderSizePixel"]
      138 GETIMPORT                        R16 K38 [Enum.TextXAlignment.Left]
      140 SETTABLEKS                       R16 R15 K36 ["TextXAlignment"]
      142 GETIMPORT                        R16 K41 [Enum.TextYAlignment.Center]
      144 SETTABLEKS                       R16 R15 K39 ["TextYAlignment"]
      146 SETTABLEKS                       R4 R15 K42 ["Text"]
      148 JUMPIFNOT                        R7 ; [+7]
      149 GETTABLEKS                       R16 R1 K15 ["menuEntry"]
      151 GETTABLEKS                       R16 R16 K43 ["font"]
      153 GETTABLEKS                       R16 R16 K44 ["selected"]
      155 JUMPIF                           R16 ; [+6]
      156 GETTABLEKS                       R16 R1 K15 ["menuEntry"]
      158 GETTABLEKS                       R16 R16 K43 ["font"]
      160 GETTABLEKS                       R16 R16 K45 ["unselected"]
      162 SETTABLEKS                       R16 R15 K46 ["Font"]
      164 LOADN                            R16 24
      165 SETTABLEKS                       R16 R15 K47 ["TextSize"]
      167 GETTABLEKS                       R16 R1 K15 ["menuEntry"]
      169 GETTABLEKS                       R16 R16 K48 ["text"]
      171 SETTABLEKS                       R16 R15 K49 ["TextColor3"]
      173 GETUPVAL                         R16 0
      174 GETTABLEKS                       R16 R16 K21 ["Event"]
      176 GETTABLEKS                       R16 R16 K50 ["Activated"]
      178 SETTABLE                         R3 R15 R16
      179 CALL                             R13 2 1
      180 SETTABLEKS                       R13 R12 K5 ["Title"]
      182 GETUPVAL                         R13 0
      183 GETTABLEKS                       R13 R13 K9 ["createElement"]
      185 LOADK                            R14 K51 ["ImageLabel"]
      186 DUPTABLE                         R15 K56 [{["ZIndex"] = 3, ["Visible"], ["Size"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Image"]}]
      187 MOVE                             R16 R5
      188 JUMPIF                           R16 ; [+3]
      189 MOVE                             R16 R6
      190 JUMPIF                           R16 ; [+1]
      191 LOADB                            R16 0
      192 SETTABLEKS                       R16 R15 K53 ["Visible"]
      194 GETIMPORT                        R16 K13 [UDim2.new]
      196 LOADN                            R17 0
      197 LOADN                            R18 18
      198 LOADN                            R19 0
      199 LOADN                            R20 18
      200 CALL                             R16 4 1
      201 SETTABLEKS                       R16 R15 K14 ["Size"]
      203 GETIMPORT                        R16 K13 [UDim2.new]
      205 LOADN                            R17 1
      206 LOADN                            R18 -12
      207 LOADK                            R19 K57 [0.5]
      208 LOADN                            R20 0
      209 CALL                             R16 4 1
      210 SETTABLEKS                       R16 R15 K34 ["Position"]
      212 GETIMPORT                        R16 K59 [Vector2.new]
      214 LOADN                            R17 1
      215 LOADK                            R18 K57 [0.5]
      216 CALL                             R16 2 1
      217 SETTABLEKS                       R16 R15 K54 ["AnchorPoint"]
      219 JUMPIFNOT                        R5 ; [+2]
      220 LOADK                            R16 K60 ["rbxasset://textures/GameSettings/ErrorIcon.png"]
      221 JUMP                             ; [+1]
      222 LOADK                            R16 K61 ["rbxasset://textures/GameSettings/Warning.png"]
      223 SETTABLEKS                       R16 R15 K55 ["Image"]
      225 CALL                             R13 2 1
      226 SETTABLEKS                       R13 R12 K25 ["Error"]
      228 CALL                             R9 3 -1
      229 RETURN                           R9 -1

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
