PROTO_0:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["radius"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K4 ["Size"]
        7 GETTABLEKS                       R1 R1 K5 ["Size_150"]
        9 SETTABLEKS                       R1 R0 K1 ["offset"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K6 ["Stroke"]
       14 GETTABLEKS                       R1 R1 K7 ["Thicker"]
       16 SETTABLEKS                       R1 R0 K2 ["borderWidth"]
       18 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETIMPORT                        R2 K2 [UDim.new]
        4 LOADN                            R3 0
        5 GETTABLEKS                       R4 R1 K3 ["Radius"]
        7 GETTABLEKS                       R4 R4 K4 ["Medium"]
        9 CALL                             R2 2 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K5 ["useMemo"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R1
       16 NEWTABLE                         R5 0 1
       18 MOVE                             R6 R1
       19 SETLIST                          R5 R6 1 [1]
       21 CALL                             R3 2 1
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K6 ["createElement"]
       25 GETUPVAL                         R5 2
       26 GETUPVAL                         R6 3
       27 MOVE                             R7 R0
       28 DUPTABLE                         R8 K14 [{"onActivated", "isDisabled", "selection", "cursor", "padding", "cornerRadius", "tag"}]
       29 GETTABLEKS                       R9 R0 K7 ["onActivated"]
       31 SETTABLEKS                       R9 R8 K7 ["onActivated"]
       33 GETTABLEKS                       R9 R0 K8 ["isDisabled"]
       35 SETTABLEKS                       R9 R8 K8 ["isDisabled"]
       37 DUPTABLE                         R9 K16 [{"Selectable"}]
       38 GETTABLEKS                       R11 R0 K8 ["isDisabled"]
       40 NOT                              R10 R11
       41 SETTABLEKS                       R10 R9 K15 ["Selectable"]
       43 SETTABLEKS                       R9 R8 K9 ["selection"]
       45 SETTABLEKS                       R3 R8 K10 ["cursor"]
       47 GETTABLEKS                       R9 R0 K11 ["padding"]
       49 SETTABLEKS                       R9 R8 K11 ["padding"]
       51 SETTABLEKS                       R2 R8 K12 ["cornerRadius"]
       53 GETTABLEKS                       R9 R0 K13 ["tag"]
       55 SETTABLEKS                       R9 R8 K13 ["tag"]
       57 CALL                             R6 2 1
       58 GETTABLEKS                       R7 R0 K17 ["children"]
       60 CALL                             R4 3 -1
       61 RETURN                           R4 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R1
        4 GETTABLEKS                       R4 R0 K0 ["size"]
        6 CALL                             R2 2 1
        7 GETTABLEKS                       R3 R1 K1 ["Stroke"]
        9 GETTABLEKS                       R3 R3 K2 ["Standard"]
       11 FASTCALL1                        MATH_CEIL R3 ; [+3]
       12 MOVE                             R6 R3
       13 GETIMPORT                        R5 K6 [math.ceil]
       15 CALL                             R5 1 1
       16 MULK                             R4 R5 K3 [2]
       17 GETIMPORT                        R5 K9 [UDim2.fromOffset]
       19 GETTABLEKS                       R7 R2 K10 ["splitButton"]
       21 GETTABLEKS                       R7 R7 K0 ["size"]
       23 SUB                              R6 R7 R4
       24 GETTABLEKS                       R8 R2 K10 ["splitButton"]
       26 GETTABLEKS                       R8 R8 K0 ["size"]
       28 SUB                              R7 R8 R4
       29 CALL                             R5 2 1
       30 GETUPVAL                         R6 2
       31 GETTABLEKS                       R6 R6 K11 ["createElement"]
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R7 R7 K12 ["Fragment"]
       36 NEWTABLE                         R8 0 0
       38 DUPTABLE                         R9 K15 [{"ControlIncrement", "ControlDecrement"}]
       39 GETUPVAL                         R10 2
       40 GETTABLEKS                       R10 R10 K11 ["createElement"]
       42 GETUPVAL                         R11 3
       43 DUPTABLE                         R12 K26 [{["onActivated"], ["isDisabled"], ["padding"], ["Size"], ["stroke"], ["tag"], ["LayoutOrder"] = 1, ["GroupTransparency"], ["testId"]}]
       44 GETTABLEKS                       R13 R0 K27 ["increment"]
       46 GETTABLEKS                       R13 R13 K28 ["onClick"]
       48 SETTABLEKS                       R13 R12 K16 ["onActivated"]
       50 GETTABLEKS                       R13 R0 K27 ["increment"]
       52 GETTABLEKS                       R13 R13 K17 ["isDisabled"]
       54 SETTABLEKS                       R13 R12 K17 ["isDisabled"]
       56 GETTABLEKS                       R13 R2 K29 ["button"]
       58 GETTABLEKS                       R13 R13 K18 ["padding"]
       60 SETTABLEKS                       R13 R12 K18 ["padding"]
       62 SETTABLEKS                       R5 R12 K19 ["Size"]
       64 DUPTABLE                         R13 K33 [{"Color", "Transparency", "Thickness"}]
       65 GETTABLEKS                       R14 R1 K30 ["Color"]
       67 GETTABLEKS                       R14 R14 K1 ["Stroke"]
       69 GETTABLEKS                       R14 R14 K34 ["Emphasis"]
       71 GETTABLEKS                       R14 R14 K35 ["Color3"]
       73 SETTABLEKS                       R14 R13 K30 ["Color"]
       75 GETTABLEKS                       R15 R1 K30 ["Color"]
       77 GETTABLEKS                       R15 R15 K1 ["Stroke"]
       79 GETTABLEKS                       R15 R15 K34 ["Emphasis"]
       81 GETTABLEKS                       R15 R15 K31 ["Transparency"]
       83 LOADN                            R16 1
       84 GETTABLEKS                       R18 R0 K27 ["increment"]
       86 GETTABLEKS                       R18 R18 K17 ["isDisabled"]
       88 JUMPIFNOT                        R18 ; [+4]
       89 GETUPVAL                         R17 4
       90 GETTABLEKS                       R17 R17 K36 ["DISABLED_TRANSPARENCY"]
       92 JUMP                             ; [+1]
       93 LOADN                            R17 0
       94 FASTCALL                         MATH_LERP ; [+2]
       95 GETIMPORT                        R14 K38 [math.lerp]
       97 CALL                             R14 3 1
       98 SETTABLEKS                       R14 R13 K31 ["Transparency"]
      100 GETTABLEKS                       R14 R1 K1 ["Stroke"]
      102 GETTABLEKS                       R14 R14 K2 ["Standard"]
      104 SETTABLEKS                       R14 R13 K32 ["Thickness"]
      106 SETTABLEKS                       R13 R12 K20 ["stroke"]
      108 GETTABLEKS                       R13 R2 K10 ["splitButton"]
      110 GETTABLEKS                       R13 R13 K21 ["tag"]
      112 SETTABLEKS                       R13 R12 K21 ["tag"]
      114 GETTABLEKS                       R14 R0 K27 ["increment"]
      116 GETTABLEKS                       R14 R14 K17 ["isDisabled"]
      118 JUMPIFNOT                        R14 ; [+4]
      119 GETUPVAL                         R13 4
      120 GETTABLEKS                       R13 R13 K36 ["DISABLED_TRANSPARENCY"]
      122 JUMP                             ; [+1]
      123 LOADNIL                          R13
      124 SETTABLEKS                       R13 R12 K24 ["GroupTransparency"]
      126 LOADK                            R14 K39 ["%*--increment"]
      127 GETTABLEKS                       R16 R0 K25 ["testId"]
      129 NAMECALL                         R14 R14 K40 ["format"]
      131 CALL                             R14 2 1
      132 MOVE                             R13 R14
      133 SETTABLEKS                       R13 R12 K25 ["testId"]
      135 DUPTABLE                         R13 K42 [{"Icon"}]
      136 GETUPVAL                         R14 2
      137 GETTABLEKS                       R14 R14 K11 ["createElement"]
      139 GETUPVAL                         R15 5
      140 DUPTABLE                         R16 K46 [{"name", "AnchorPoint", "Position", "testId"}]
      141 GETUPVAL                         R17 6
      142 GETTABLEKS                       R17 R17 K41 ["Icon"]
      144 GETTABLEKS                       R17 R17 K47 ["PlusSmall"]
      146 SETTABLEKS                       R17 R16 K43 ["name"]
      148 GETIMPORT                        R17 K50 [Vector2.new]
      150 LOADK                            R18 K51 [0.5]
      151 LOADK                            R19 K51 [0.5]
      152 CALL                             R17 2 1
      153 SETTABLEKS                       R17 R16 K44 ["AnchorPoint"]
      155 GETIMPORT                        R17 K53 [UDim2.fromScale]
      157 LOADK                            R18 K51 [0.5]
      158 LOADK                            R19 K51 [0.5]
      159 CALL                             R17 2 1
      160 SETTABLEKS                       R17 R16 K45 ["Position"]
      162 LOADK                            R18 K54 ["%*--increment-icon"]
      163 GETTABLEKS                       R20 R0 K25 ["testId"]
      165 NAMECALL                         R18 R18 K40 ["format"]
      167 CALL                             R18 2 1
      168 MOVE                             R17 R18
      169 SETTABLEKS                       R17 R16 K25 ["testId"]
      171 CALL                             R14 2 1
      172 SETTABLEKS                       R14 R13 K41 ["Icon"]
      174 CALL                             R10 3 1
      175 SETTABLEKS                       R10 R9 K13 ["ControlIncrement"]
      177 GETUPVAL                         R10 2
      178 GETTABLEKS                       R10 R10 K11 ["createElement"]
      180 GETUPVAL                         R11 3
      181 DUPTABLE                         R12 K56 [{["onActivated"], ["isDisabled"], ["padding"], ["Size"], ["stroke"], ["tag"], ["LayoutOrder"] = -1, ["GroupTransparency"], ["testId"]}]
      182 GETTABLEKS                       R13 R0 K57 ["decrement"]
      184 GETTABLEKS                       R13 R13 K28 ["onClick"]
      186 SETTABLEKS                       R13 R12 K16 ["onActivated"]
      188 GETTABLEKS                       R13 R0 K57 ["decrement"]
      190 GETTABLEKS                       R13 R13 K17 ["isDisabled"]
      192 SETTABLEKS                       R13 R12 K17 ["isDisabled"]
      194 GETTABLEKS                       R13 R2 K29 ["button"]
      196 GETTABLEKS                       R13 R13 K18 ["padding"]
      198 SETTABLEKS                       R13 R12 K18 ["padding"]
      200 SETTABLEKS                       R5 R12 K19 ["Size"]
      202 DUPTABLE                         R13 K33 [{"Color", "Transparency", "Thickness"}]
      203 GETTABLEKS                       R14 R1 K30 ["Color"]
      205 GETTABLEKS                       R14 R14 K1 ["Stroke"]
      207 GETTABLEKS                       R14 R14 K34 ["Emphasis"]
      209 GETTABLEKS                       R14 R14 K35 ["Color3"]
      211 SETTABLEKS                       R14 R13 K30 ["Color"]
      213 GETTABLEKS                       R15 R1 K30 ["Color"]
      215 GETTABLEKS                       R15 R15 K1 ["Stroke"]
      217 GETTABLEKS                       R15 R15 K34 ["Emphasis"]
      219 GETTABLEKS                       R15 R15 K31 ["Transparency"]
      221 LOADN                            R16 1
      222 GETTABLEKS                       R18 R0 K57 ["decrement"]
      224 GETTABLEKS                       R18 R18 K17 ["isDisabled"]
      226 JUMPIFNOT                        R18 ; [+4]
      227 GETUPVAL                         R17 4
      228 GETTABLEKS                       R17 R17 K36 ["DISABLED_TRANSPARENCY"]
      230 JUMP                             ; [+1]
      231 LOADN                            R17 0
      232 FASTCALL                         MATH_LERP ; [+2]
      233 GETIMPORT                        R14 K38 [math.lerp]
      235 CALL                             R14 3 1
      236 SETTABLEKS                       R14 R13 K31 ["Transparency"]
      238 GETTABLEKS                       R14 R1 K1 ["Stroke"]
      240 GETTABLEKS                       R14 R14 K2 ["Standard"]
      242 SETTABLEKS                       R14 R13 K32 ["Thickness"]
      244 SETTABLEKS                       R13 R12 K20 ["stroke"]
      246 GETTABLEKS                       R13 R2 K10 ["splitButton"]
      248 GETTABLEKS                       R13 R13 K21 ["tag"]
      250 SETTABLEKS                       R13 R12 K21 ["tag"]
      252 GETTABLEKS                       R14 R0 K57 ["decrement"]
      254 GETTABLEKS                       R14 R14 K17 ["isDisabled"]
      256 JUMPIFNOT                        R14 ; [+4]
      257 GETUPVAL                         R13 4
      258 GETTABLEKS                       R13 R13 K36 ["DISABLED_TRANSPARENCY"]
      260 JUMP                             ; [+1]
      261 LOADNIL                          R13
      262 SETTABLEKS                       R13 R12 K24 ["GroupTransparency"]
      264 LOADK                            R14 K58 ["%*--decrement"]
      265 GETTABLEKS                       R16 R0 K25 ["testId"]
      267 NAMECALL                         R14 R14 K40 ["format"]
      269 CALL                             R14 2 1
      270 MOVE                             R13 R14
      271 SETTABLEKS                       R13 R12 K25 ["testId"]
      273 DUPTABLE                         R13 K42 [{"Icon"}]
      274 GETUPVAL                         R14 2
      275 GETTABLEKS                       R14 R14 K11 ["createElement"]
      277 GETUPVAL                         R15 5
      278 DUPTABLE                         R16 K46 [{"name", "AnchorPoint", "Position", "testId"}]
      279 GETUPVAL                         R17 6
      280 GETTABLEKS                       R17 R17 K41 ["Icon"]
      282 GETTABLEKS                       R17 R17 K59 ["MinusSmall"]
      284 SETTABLEKS                       R17 R16 K43 ["name"]
      286 GETIMPORT                        R17 K50 [Vector2.new]
      288 LOADK                            R18 K51 [0.5]
      289 LOADK                            R19 K51 [0.5]
      290 CALL                             R17 2 1
      291 SETTABLEKS                       R17 R16 K44 ["AnchorPoint"]
      293 GETIMPORT                        R17 K53 [UDim2.fromScale]
      295 LOADK                            R18 K51 [0.5]
      296 LOADK                            R19 K51 [0.5]
      297 CALL                             R17 2 1
      298 SETTABLEKS                       R17 R16 K45 ["Position"]
      300 LOADK                            R18 K60 ["%*--decrement-icon"]
      301 GETTABLEKS                       R20 R0 K25 ["testId"]
      303 NAMECALL                         R18 R18 K40 ["format"]
      305 CALL                             R18 2 1
      306 MOVE                             R17 R18
      307 SETTABLEKS                       R17 R16 K25 ["testId"]
      309 CALL                             R14 2 1
      310 SETTABLEKS                       R14 R13 K41 ["Icon"]
      312 CALL                             R10 3 1
      313 SETTABLEKS                       R10 R9 K14 ["ControlDecrement"]
      315 CALL                             R6 3 -1
      316 RETURN                           R6 -1

PROTO_3:
        0 DUPTABLE                         R0 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Color"]
        4 GETTABLEKS                       R1 R1 K4 ["Stroke"]
        6 GETTABLEKS                       R1 R1 K5 ["Emphasis"]
        8 GETTABLEKS                       R1 R1 K0 ["Color3"]
       10 SETTABLEKS                       R1 R0 K0 ["Color3"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K6 ["increment"]
       15 GETTABLEKS                       R2 R2 K7 ["isDisabled"]
       17 JUMPIFNOT                        R2 ; [+4]
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K8 ["DISABLED_TRANSPARENCY"]
       21 JUMP                             ; [+1]
       22 LOADN                            R1 0
       23 SETTABLEKS                       R1 R0 K1 ["Transparency"]
       25 RETURN                           R0 1

PROTO_4:
        0 DUPTABLE                         R0 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Color"]
        4 GETTABLEKS                       R1 R1 K4 ["Stroke"]
        6 GETTABLEKS                       R1 R1 K5 ["Emphasis"]
        8 GETTABLEKS                       R1 R1 K0 ["Color3"]
       10 SETTABLEKS                       R1 R0 K0 ["Color3"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K6 ["decrement"]
       15 GETTABLEKS                       R2 R2 K7 ["isDisabled"]
       17 JUMPIFNOT                        R2 ; [+4]
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K8 ["DISABLED_TRANSPARENCY"]
       21 JUMP                             ; [+1]
       22 LOADN                            R1 0
       23 SETTABLEKS                       R1 R0 K1 ["Transparency"]
       25 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R1
        4 GETTABLEKS                       R4 R0 K0 ["size"]
        6 CALL                             R2 2 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["useMemo"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U3
       14 NEWTABLE                         R5 0 2
       16 MOVE                             R6 R1
       17 GETTABLEKS                       R7 R0 K2 ["increment"]
       19 GETTABLEKS                       R7 R7 K3 ["isDisabled"]
       21 SETLIST                          R5 R6 2 [1]
       23 CALL                             R3 2 1
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K1 ["useMemo"]
       27 NEWCLOSURE                       R5 P1
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U3
       31 NEWTABLE                         R6 0 2
       33 MOVE                             R7 R1
       34 GETTABLEKS                       R8 R0 K4 ["decrement"]
       36 GETTABLEKS                       R8 R8 K3 ["isDisabled"]
       38 SETLIST                          R6 R7 2 [1]
       40 CALL                             R4 2 1
       41 GETUPVAL                         R5 2
       42 GETTABLEKS                       R5 R5 K5 ["createElement"]
       44 GETUPVAL                         R6 4
       45 DUPTABLE                         R7 K10 [{["tag"] = "col", ["Size"], ["LayoutOrder"]}]
       46 GETIMPORT                        R8 K13 [UDim2.new]
       48 LOADN                            R9 0
       49 GETTABLEKS                       R10 R2 K14 ["button"]
       51 GETTABLEKS                       R10 R10 K15 ["width"]
       53 LOADN                            R11 1
       54 LOADN                            R12 0
       55 CALL                             R8 4 1
       56 SETTABLEKS                       R8 R7 K8 ["Size"]
       58 GETTABLEKS                       R8 R0 K9 ["LayoutOrder"]
       60 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       62 DUPTABLE                         R8 K18 [{"ControlIncrement", "ControlDecrement"}]
       63 GETUPVAL                         R9 2
       64 GETTABLEKS                       R9 R9 K5 ["createElement"]
       66 GETUPVAL                         R10 5
       67 DUPTABLE                         R11 K22 [{"onActivated", "isDisabled", "padding", "tag", "testId"}]
       68 GETTABLEKS                       R12 R0 K2 ["increment"]
       70 GETTABLEKS                       R12 R12 K23 ["onClick"]
       72 SETTABLEKS                       R12 R11 K19 ["onActivated"]
       74 GETTABLEKS                       R12 R0 K2 ["increment"]
       76 GETTABLEKS                       R12 R12 K3 ["isDisabled"]
       78 SETTABLEKS                       R12 R11 K3 ["isDisabled"]
       80 GETTABLEKS                       R12 R2 K14 ["button"]
       82 GETTABLEKS                       R12 R12 K20 ["padding"]
       84 SETTABLEKS                       R12 R11 K20 ["padding"]
       86 GETTABLEKS                       R12 R2 K24 ["upButton"]
       88 GETTABLEKS                       R12 R12 K6 ["tag"]
       90 SETTABLEKS                       R12 R11 K6 ["tag"]
       92 LOADK                            R13 K25 ["%*--increment"]
       93 GETTABLEKS                       R15 R0 K21 ["testId"]
       95 NAMECALL                         R13 R13 K26 ["format"]
       97 CALL                             R13 2 1
       98 MOVE                             R12 R13
       99 SETTABLEKS                       R12 R11 K21 ["testId"]
      101 DUPTABLE                         R12 K28 [{"Icon"}]
      102 GETUPVAL                         R13 2
      103 GETTABLEKS                       R13 R13 K5 ["createElement"]
      105 GETUPVAL                         R14 6
      106 DUPTABLE                         R15 K32 [{["Image"] = "component_assets/triangleUp_16", ["imageStyle"], ["tag"], ["testId"]}]
      107 SETTABLEKS                       R3 R15 K31 ["imageStyle"]
      109 GETTABLEKS                       R16 R2 K33 ["icon"]
      111 GETTABLEKS                       R16 R16 K6 ["tag"]
      113 SETTABLEKS                       R16 R15 K6 ["tag"]
      115 LOADK                            R17 K34 ["%*--increment-icon"]
      116 GETTABLEKS                       R19 R0 K21 ["testId"]
      118 NAMECALL                         R17 R17 K26 ["format"]
      120 CALL                             R17 2 1
      121 MOVE                             R16 R17
      122 SETTABLEKS                       R16 R15 K21 ["testId"]
      124 CALL                             R13 2 1
      125 SETTABLEKS                       R13 R12 K27 ["Icon"]
      127 CALL                             R9 3 1
      128 SETTABLEKS                       R9 R8 K16 ["ControlIncrement"]
      130 GETUPVAL                         R9 2
      131 GETTABLEKS                       R9 R9 K5 ["createElement"]
      133 GETUPVAL                         R10 5
      134 DUPTABLE                         R11 K35 [{"tag", "onActivated", "isDisabled", "padding", "testId"}]
      135 GETTABLEKS                       R12 R2 K36 ["downButton"]
      137 GETTABLEKS                       R12 R12 K6 ["tag"]
      139 SETTABLEKS                       R12 R11 K6 ["tag"]
      141 GETTABLEKS                       R12 R0 K4 ["decrement"]
      143 GETTABLEKS                       R12 R12 K23 ["onClick"]
      145 SETTABLEKS                       R12 R11 K19 ["onActivated"]
      147 GETTABLEKS                       R12 R0 K4 ["decrement"]
      149 GETTABLEKS                       R12 R12 K3 ["isDisabled"]
      151 SETTABLEKS                       R12 R11 K3 ["isDisabled"]
      153 GETTABLEKS                       R12 R2 K14 ["button"]
      155 GETTABLEKS                       R12 R12 K20 ["padding"]
      157 SETTABLEKS                       R12 R11 K20 ["padding"]
      159 LOADK                            R13 K37 ["%*--decrement"]
      160 GETTABLEKS                       R15 R0 K21 ["testId"]
      162 NAMECALL                         R13 R13 K26 ["format"]
      164 CALL                             R13 2 1
      165 MOVE                             R12 R13
      166 SETTABLEKS                       R12 R11 K21 ["testId"]
      168 DUPTABLE                         R12 K28 [{"Icon"}]
      169 GETUPVAL                         R13 2
      170 GETTABLEKS                       R13 R13 K5 ["createElement"]
      172 GETUPVAL                         R14 6
      173 DUPTABLE                         R15 K39 [{["Image"] = "component_assets/triangleDown_16", ["imageStyle"], ["tag"], ["testId"]}]
      174 SETTABLEKS                       R4 R15 K31 ["imageStyle"]
      176 GETTABLEKS                       R16 R2 K33 ["icon"]
      178 GETTABLEKS                       R16 R16 K6 ["tag"]
      180 SETTABLEKS                       R16 R15 K6 ["tag"]
      182 LOADK                            R17 K40 ["%*--decrement-icon"]
      183 GETTABLEKS                       R19 R0 K21 ["testId"]
      185 NAMECALL                         R17 R17 K26 ["format"]
      187 CALL                             R17 2 1
      188 MOVE                             R16 R17
      189 SETTABLEKS                       R16 R15 K21 ["testId"]
      191 CALL                             R13 2 1
      192 SETTABLEKS                       R13 R12 K27 ["Icon"]
      194 CALL                             R9 3 1
      195 SETTABLEKS                       R9 R8 K17 ["ControlDecrement"]
      197 CALL                             R5 3 -1
      198 RETURN                           R5 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["variant"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Stacked"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+8]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["createElement"]
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R0
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K2 ["createElement"]
       17 GETUPVAL                         R2 3
       18 MOVE                             R3 R0
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["BuilderIcons"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Providers"]
       23 GETTABLEKS                       R5 R5 K10 ["Style"]
       25 GETTABLEKS                       R5 R5 K11 ["useTokens"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R0 K12 ["Components"]
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R7 R5 K13 ["View"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K6 [require]
       37 GETTABLEKS                       R8 R5 K14 ["Image"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R9 R5 K15 ["Icon"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K6 [require]
       47 GETTABLEKS                       R10 R0 K16 ["Constants"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K6 [require]
       52 GETTABLEKS                       R11 R0 K17 ["Utility"]
       54 GETTABLEKS                       R11 R11 K18 ["withCommonProps"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K6 [require]
       59 GETTABLEKS                       R12 R0 K12 ["Components"]
       61 GETTABLEKS                       R12 R12 K19 ["Types"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K6 [require]
       66 GETTABLEKS                       R13 R0 K20 ["Enums"]
       68 GETTABLEKS                       R13 R13 K21 ["NumberInputControlsVariant"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K6 [require]
       73 GETIMPORT                        R14 K1 [script]
       75 GETTABLEKS                       R14 R14 K4 ["Parent"]
       77 GETTABLEKS                       R14 R14 K22 ["useNumberInputVariants"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K6 [require]
       82 GETTABLEKS                       R15 R0 K20 ["Enums"]
       84 GETTABLEKS                       R15 R15 K23 ["InputSize"]
       86 CALL                             R14 1 1
       87 DUPCLOSURE                       R15 K24 [PROTO_1]
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R10
       92 DUPCLOSURE                       R16 K25 [PROTO_2]
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R13
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R3
      100 DUPCLOSURE                       R17 K26 [PROTO_5]
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R15
      107 CAPTURE                          VAL R7
      108 DUPCLOSURE                       R18 K27 [PROTO_6]
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R17
      112 CAPTURE                          VAL R16
      113 RETURN                           R18 1
