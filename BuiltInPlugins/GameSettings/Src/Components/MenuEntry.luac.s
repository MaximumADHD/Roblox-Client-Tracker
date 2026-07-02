PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R3 R2 K1 ["Mouse"]
        5 LOADK                            R5 K2 ["PointingHand"]
        6 NAMECALL                         R3 R3 K3 ["__pushCursor"]
        8 CALL                             R3 2 0
        9 JUMP                             ; [+5]
       10 GETTABLEKS                       R3 R2 K1 ["Mouse"]
       12 NAMECALL                         R3 R3 K4 ["__resetCursor"]
       14 CALL                             R3 1 0
       15 DUPTABLE                         R5 K6 [{"Hovering"}]
       16 SETTABLEKS                       R1 R5 K5 ["Hovering"]
       18 NAMECALL                         R3 R0 K7 ["setState"]
       20 CALL                             R3 2 0
       21 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnClicked"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["Index"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R0 K2 ["state"]
        6 GETTABLEKS                       R3 R3 K3 ["Hovering"]
        8 GETTABLEKS                       R4 R0 K0 ["props"]
       10 GETTABLEKS                       R4 R4 K4 ["Selected"]
       12 OR                               R5 R3 R4
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K5 ["createElement"]
       16 LOADK                            R7 K6 ["Frame"]
       17 NEWTABLE                         R8 8 0
       19 GETIMPORT                        R9 K9 [UDim2.new]
       21 LOADN                            R10 1
       22 LOADN                            R11 0
       23 LOADN                            R12 0
       24 GETUPVAL                         R13 1
       25 GETTABLEKS                       R13 R13 K10 ["MENU_ENTRY_HEIGHT"]
       27 CALL                             R9 4 1
       28 SETTABLEKS                       R9 R8 K11 ["Size"]
       30 JUMPIFNOT                        R5 ; [+5]
       31 GETTABLEKS                       R9 R2 K12 ["menuEntry"]
       33 GETTABLEKS                       R9 R9 K13 ["hover"]
       35 JUMPIF                           R9 ; [+4]
       36 GETTABLEKS                       R9 R2 K14 ["menuBar"]
       38 GETTABLEKS                       R9 R9 K15 ["backgroundColor"]
       40 SETTABLEKS                       R9 R8 K16 ["BackgroundColor3"]
       42 LOADN                            R9 0
       43 SETTABLEKS                       R9 R8 K17 ["BorderSizePixel"]
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R9 R9 K18 ["Event"]
       48 GETTABLEKS                       R9 R9 K19 ["MouseEnter"]
       50 NEWCLOSURE                       R10 P0
       51 CAPTURE                          VAL R0
       52 SETTABLE                         R10 R8 R9
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R9 R9 K18 ["Event"]
       56 GETTABLEKS                       R9 R9 K20 ["MouseLeave"]
       58 NEWCLOSURE                       R10 P1
       59 CAPTURE                          VAL R0
       60 SETTABLE                         R10 R8 R9
       61 DUPTABLE                         R9 K24 [{"Highlight", "Title", "Error"}]
       62 GETUPVAL                         R10 0
       63 GETTABLEKS                       R10 R10 K5 ["createElement"]
       65 LOADK                            R11 K6 ["Frame"]
       66 DUPTABLE                         R12 K29 [{["ZIndex"] = 1, ["Size"], ["BorderSizePixel"] = 0, ["BackgroundColor3"], ["BackgroundTransparency"]}]
       67 GETIMPORT                        R13 K9 [UDim2.new]
       69 LOADN                            R14 1
       70 LOADN                            R15 0
       71 LOADN                            R16 1
       72 LOADN                            R17 0
       73 CALL                             R13 4 1
       74 SETTABLEKS                       R13 R12 K11 ["Size"]
       76 GETTABLEKS                       R13 R2 K12 ["menuEntry"]
       78 GETTABLEKS                       R13 R13 K30 ["highlight"]
       80 SETTABLEKS                       R13 R12 K16 ["BackgroundColor3"]
       82 JUMPIFNOT                        R4 ; [+2]
       83 LOADN                            R13 0
       84 JUMP                             ; [+1]
       85 LOADN                            R13 1
       86 SETTABLEKS                       R13 R12 K28 ["BackgroundTransparency"]
       88 CALL                             R10 2 1
       89 SETTABLEKS                       R10 R9 K21 ["Highlight"]
       91 GETUPVAL                         R10 0
       92 GETTABLEKS                       R10 R10 K5 ["createElement"]
       94 LOADK                            R11 K31 ["TextButton"]
       95 GETUPVAL                         R12 2
       96 GETTABLEKS                       R12 R12 K32 ["Dictionary"]
       98 GETTABLEKS                       R12 R12 K33 ["join"]
      100 GETTABLEKS                       R13 R2 K34 ["fontStyle"]
      102 GETTABLEKS                       R13 R13 K22 ["Title"]
      104 NEWTABLE                         R14 16 0
      106 LOADN                            R15 2
      107 SETTABLEKS                       R15 R14 K25 ["ZIndex"]
      109 GETIMPORT                        R15 K9 [UDim2.new]
      111 LOADN                            R16 1
      112 LOADN                            R17 -15
      113 LOADN                            R18 1
      114 LOADN                            R19 0
      115 CALL                             R15 4 1
      116 SETTABLEKS                       R15 R14 K11 ["Size"]
      118 GETIMPORT                        R15 K9 [UDim2.new]
      120 LOADN                            R16 0
      121 LOADN                            R17 15
      122 LOADN                            R18 0
      123 LOADN                            R19 0
      124 CALL                             R15 4 1
      125 SETTABLEKS                       R15 R14 K35 ["Position"]
      127 LOADN                            R15 1
      128 SETTABLEKS                       R15 R14 K28 ["BackgroundTransparency"]
      130 LOADN                            R15 0
      131 SETTABLEKS                       R15 R14 K17 ["BorderSizePixel"]
      133 GETIMPORT                        R15 K39 [Enum.TextXAlignment.Left]
      135 SETTABLEKS                       R15 R14 K37 ["TextXAlignment"]
      137 GETIMPORT                        R15 K42 [Enum.TextYAlignment.Center]
      139 SETTABLEKS                       R15 R14 K40 ["TextYAlignment"]
      141 GETUPVAL                         R16 3
      142 JUMPIFNOT                        R16 ; [+6]
      143 JUMPIFNOT                        R4 ; [+5]
      144 GETTABLEKS                       R15 R2 K12 ["menuEntry"]
      146 GETTABLEKS                       R15 R15 K43 ["text"]
      148 JUMP                             ; [+1]
      149 LOADNIL                          R15
      150 SETTABLEKS                       R15 R14 K44 ["TextColor3"]
      152 GETTABLEKS                       R15 R0 K0 ["props"]
      154 GETTABLEKS                       R15 R15 K22 ["Title"]
      156 SETTABLEKS                       R15 R14 K45 ["Text"]
      158 JUMPIFNOT                        R4 ; [+3]
      159 GETIMPORT                        R15 K48 [Enum.Font.SourceSansSemibold]
      161 JUMPIF                           R15 ; [+2]
      162 GETIMPORT                        R15 K50 [Enum.Font.SourceSans]
      164 SETTABLEKS                       R15 R14 K46 ["Font"]
      166 GETUPVAL                         R15 0
      167 GETTABLEKS                       R15 R15 K18 ["Event"]
      169 GETTABLEKS                       R15 R15 K51 ["Activated"]
      171 NEWCLOSURE                       R16 P2
      172 CAPTURE                          VAL R0
      173 SETTABLE                         R16 R14 R15
      174 CALL                             R12 2 -1
      175 CALL                             R10 -1 1
      176 SETTABLEKS                       R10 R9 K22 ["Title"]
      178 GETUPVAL                         R10 0
      179 GETTABLEKS                       R10 R10 K5 ["createElement"]
      181 LOADK                            R11 K52 ["ImageLabel"]
      182 DUPTABLE                         R12 K57 [{["ZIndex"] = 3, ["Visible"], ["Size"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Image"]}]
      183 GETTABLEKS                       R13 R0 K0 ["props"]
      185 GETTABLEKS                       R13 R13 K23 ["Error"]
      187 JUMPIF                           R13 ; [+6]
      188 GETTABLEKS                       R13 R0 K0 ["props"]
      190 GETTABLEKS                       R13 R13 K58 ["Warning"]
      192 JUMPIF                           R13 ; [+1]
      193 LOADB                            R13 0
      194 SETTABLEKS                       R13 R12 K54 ["Visible"]
      196 GETIMPORT                        R13 K9 [UDim2.new]
      198 LOADN                            R14 0
      199 LOADN                            R15 18
      200 LOADN                            R16 0
      201 LOADN                            R17 18
      202 CALL                             R13 4 1
      203 SETTABLEKS                       R13 R12 K11 ["Size"]
      205 GETIMPORT                        R13 K9 [UDim2.new]
      207 LOADN                            R14 1
      208 LOADN                            R15 -12
      209 LOADK                            R16 K59 [0.5]
      210 LOADN                            R17 0
      211 CALL                             R13 4 1
      212 SETTABLEKS                       R13 R12 K35 ["Position"]
      214 GETIMPORT                        R13 K61 [Vector2.new]
      216 LOADN                            R14 1
      217 LOADK                            R15 K59 [0.5]
      218 CALL                             R13 2 1
      219 SETTABLEKS                       R13 R12 K55 ["AnchorPoint"]
      221 GETTABLEKS                       R14 R0 K0 ["props"]
      223 GETTABLEKS                       R14 R14 K23 ["Error"]
      225 JUMPIFNOT                        R14 ; [+4]
      226 GETUPVAL                         R13 1
      227 GETTABLEKS                       R13 R13 K62 ["ERROR_IMAGE"]
      229 JUMPIF                           R13 ; [+3]
      230 GETUPVAL                         R13 1
      231 GETTABLEKS                       R13 R13 K63 ["WARNING_IMAGE"]
      233 SETTABLEKS                       R13 R12 K56 ["Image"]
      235 CALL                             R10 2 1
      236 SETTABLEKS                       R10 R9 K23 ["Error"]
      238 CALL                             R6 3 -1
      239 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagGameSettingsFixMoreLayoutIssues"]
       17 CALL                             R1 1 1
       18 CALL                             R1 0 1
       19 GETIMPORT                        R2 K4 [require]
       21 GETTABLEKS                       R3 R0 K8 ["Packages"]
       23 GETTABLEKS                       R3 R3 K9 ["Roact"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K4 [require]
       28 GETTABLEKS                       R4 R0 K8 ["Packages"]
       30 GETTABLEKS                       R4 R4 K10 ["Framework"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K4 [require]
       35 GETTABLEKS                       R5 R0 K8 ["Packages"]
       37 GETTABLEKS                       R5 R5 K11 ["Cryo"]
       39 CALL                             R4 1 1
       40 GETTABLEKS                       R5 R3 K12 ["ContextServices"]
       42 GETTABLEKS                       R6 R5 K13 ["withContext"]
       44 GETIMPORT                        R7 K4 [require]
       46 GETTABLEKS                       R8 R0 K5 ["Src"]
       48 GETTABLEKS                       R8 R8 K14 ["Util"]
       50 GETTABLEKS                       R8 R8 K15 ["DEPRECATED_Constants"]
       52 CALL                             R7 1 1
       53 GETTABLEKS                       R8 R2 K16 ["PureComponent"]
       55 LOADK                            R10 K17 ["MenuEntry"]
       56 NAMECALL                         R8 R8 K18 ["extend"]
       58 CALL                             R8 2 1
       59 DUPCLOSURE                       R9 K19 [PROTO_0]
       60 SETTABLEKS                       R9 R8 K20 ["mouseHoverChanged"]
       62 DUPCLOSURE                       R9 K21 [PROTO_4]
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R1
       67 SETTABLEKS                       R9 R8 K22 ["render"]
       69 MOVE                             R9 R6
       70 DUPTABLE                         R10 K25 [{"Stylizer", "Mouse"}]
       71 GETTABLEKS                       R11 R5 K23 ["Stylizer"]
       73 SETTABLEKS                       R11 R10 K23 ["Stylizer"]
       75 GETTABLEKS                       R11 R5 K24 ["Mouse"]
       77 SETTABLEKS                       R11 R10 K24 ["Mouse"]
       79 CALL                             R9 1 1
       80 MOVE                             R10 R8
       81 CALL                             R9 1 1
       82 MOVE                             R8 R9
       83 RETURN                           R8 1
