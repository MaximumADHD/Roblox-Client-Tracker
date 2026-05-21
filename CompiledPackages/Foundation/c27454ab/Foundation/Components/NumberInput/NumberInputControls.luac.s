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
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R6 R6 K1 ["FoundationNumberInputFixControlSizes"]
        9 JUMPIFNOT                        R6 ; [+3]
       10 GETTABLEKS                       R5 R0 K2 ["variant"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R5
       14 CALL                             R2 3 1
       15 GETTABLEKS                       R3 R1 K3 ["Stroke"]
       17 GETTABLEKS                       R3 R3 K4 ["Standard"]
       19 FASTCALL1                        MATH_CEIL R3 ; [+3]
       20 MOVE                             R6 R3
       21 GETIMPORT                        R5 K8 [math.ceil]
       23 CALL                             R5 1 1
       24 MULK                             R4 R5 K5 [2]
       25 GETIMPORT                        R5 K11 [UDim2.fromOffset]
       27 GETTABLEKS                       R7 R2 K12 ["splitButton"]
       29 GETTABLEKS                       R7 R7 K0 ["size"]
       31 SUB                              R6 R7 R4
       32 GETTABLEKS                       R8 R2 K12 ["splitButton"]
       34 GETTABLEKS                       R8 R8 K0 ["size"]
       36 SUB                              R7 R8 R4
       37 CALL                             R5 2 1
       38 GETUPVAL                         R6 3
       39 GETTABLEKS                       R6 R6 K13 ["createElement"]
       41 GETUPVAL                         R7 3
       42 GETTABLEKS                       R7 R7 K14 ["Fragment"]
       44 NEWTABLE                         R8 0 0
       46 DUPTABLE                         R9 K17 [{"ControlIncrement", "ControlDecrement"}]
       47 GETUPVAL                         R10 3
       48 GETTABLEKS                       R10 R10 K13 ["createElement"]
       50 GETUPVAL                         R11 4
       51 DUPTABLE                         R12 K27 [{"onActivated", "isDisabled", "padding", "Size", "stroke", "tag", "LayoutOrder", "GroupTransparency", "testId"}]
       52 GETTABLEKS                       R13 R0 K28 ["increment"]
       54 GETTABLEKS                       R13 R13 K29 ["onClick"]
       56 SETTABLEKS                       R13 R12 K18 ["onActivated"]
       58 GETTABLEKS                       R13 R0 K28 ["increment"]
       60 GETTABLEKS                       R13 R13 K19 ["isDisabled"]
       62 SETTABLEKS                       R13 R12 K19 ["isDisabled"]
       64 GETTABLEKS                       R13 R2 K30 ["button"]
       66 GETTABLEKS                       R13 R13 K20 ["padding"]
       68 SETTABLEKS                       R13 R12 K20 ["padding"]
       70 SETTABLEKS                       R5 R12 K21 ["Size"]
       72 DUPTABLE                         R13 K34 [{"Color", "Transparency", "Thickness"}]
       73 GETTABLEKS                       R14 R1 K31 ["Color"]
       75 GETTABLEKS                       R14 R14 K3 ["Stroke"]
       77 GETTABLEKS                       R14 R14 K35 ["Emphasis"]
       79 GETTABLEKS                       R14 R14 K36 ["Color3"]
       81 SETTABLEKS                       R14 R13 K31 ["Color"]
       83 GETTABLEKS                       R15 R1 K31 ["Color"]
       85 GETTABLEKS                       R15 R15 K3 ["Stroke"]
       87 GETTABLEKS                       R15 R15 K35 ["Emphasis"]
       89 GETTABLEKS                       R15 R15 K32 ["Transparency"]
       91 LOADN                            R16 1
       92 GETTABLEKS                       R18 R0 K28 ["increment"]
       94 GETTABLEKS                       R18 R18 K19 ["isDisabled"]
       96 JUMPIFNOT                        R18 ; [+4]
       97 GETUPVAL                         R17 5
       98 GETTABLEKS                       R17 R17 K37 ["DISABLED_TRANSPARENCY"]
      100 JUMP                             ; [+1]
      101 LOADN                            R17 0
      102 FASTCALL                         MATH_LERP ; [+2]
      103 GETIMPORT                        R14 K39 [math.lerp]
      105 CALL                             R14 3 1
      106 SETTABLEKS                       R14 R13 K32 ["Transparency"]
      108 GETTABLEKS                       R14 R1 K3 ["Stroke"]
      110 GETTABLEKS                       R14 R14 K4 ["Standard"]
      112 SETTABLEKS                       R14 R13 K33 ["Thickness"]
      114 SETTABLEKS                       R13 R12 K22 ["stroke"]
      116 GETTABLEKS                       R13 R2 K12 ["splitButton"]
      118 GETTABLEKS                       R13 R13 K23 ["tag"]
      120 SETTABLEKS                       R13 R12 K23 ["tag"]
      122 LOADN                            R13 1
      123 SETTABLEKS                       R13 R12 K24 ["LayoutOrder"]
      125 GETTABLEKS                       R14 R0 K28 ["increment"]
      127 GETTABLEKS                       R14 R14 K19 ["isDisabled"]
      129 JUMPIFNOT                        R14 ; [+4]
      130 GETUPVAL                         R13 5
      131 GETTABLEKS                       R13 R13 K37 ["DISABLED_TRANSPARENCY"]
      133 JUMP                             ; [+1]
      134 LOADNIL                          R13
      135 SETTABLEKS                       R13 R12 K25 ["GroupTransparency"]
      137 LOADK                            R14 K40 ["%*--increment"]
      138 GETTABLEKS                       R16 R0 K26 ["testId"]
      140 NAMECALL                         R14 R14 K41 ["format"]
      142 CALL                             R14 2 1
      143 MOVE                             R13 R14
      144 SETTABLEKS                       R13 R12 K26 ["testId"]
      146 DUPTABLE                         R13 K43 [{"Icon"}]
      147 GETUPVAL                         R14 3
      148 GETTABLEKS                       R14 R14 K13 ["createElement"]
      150 GETUPVAL                         R15 6
      151 DUPTABLE                         R16 K47 [{"name", "size", "AnchorPoint", "Position", "testId"}]
      152 GETUPVAL                         R17 7
      153 GETTABLEKS                       R17 R17 K42 ["Icon"]
      155 GETTABLEKS                       R17 R17 K48 ["PlusSmall"]
      157 SETTABLEKS                       R17 R16 K44 ["name"]
      159 GETUPVAL                         R18 2
      160 GETTABLEKS                       R18 R18 K1 ["FoundationNumberInputFixControlSizes"]
      162 JUMPIFNOT                        R18 ; [+3]
      163 GETTABLEKS                       R17 R0 K0 ["size"]
      165 JUMP                             ; [+1]
      166 LOADNIL                          R17
      167 SETTABLEKS                       R17 R16 K0 ["size"]
      169 GETIMPORT                        R17 K51 [Vector2.new]
      171 LOADK                            R18 K52 [0.5]
      172 LOADK                            R19 K52 [0.5]
      173 CALL                             R17 2 1
      174 SETTABLEKS                       R17 R16 K45 ["AnchorPoint"]
      176 GETIMPORT                        R17 K54 [UDim2.fromScale]
      178 LOADK                            R18 K52 [0.5]
      179 LOADK                            R19 K52 [0.5]
      180 CALL                             R17 2 1
      181 SETTABLEKS                       R17 R16 K46 ["Position"]
      183 LOADK                            R18 K55 ["%*--increment-icon"]
      184 GETTABLEKS                       R20 R0 K26 ["testId"]
      186 NAMECALL                         R18 R18 K41 ["format"]
      188 CALL                             R18 2 1
      189 MOVE                             R17 R18
      190 SETTABLEKS                       R17 R16 K26 ["testId"]
      192 CALL                             R14 2 1
      193 SETTABLEKS                       R14 R13 K42 ["Icon"]
      195 CALL                             R10 3 1
      196 SETTABLEKS                       R10 R9 K15 ["ControlIncrement"]
      198 GETUPVAL                         R10 3
      199 GETTABLEKS                       R10 R10 K13 ["createElement"]
      201 GETUPVAL                         R11 4
      202 DUPTABLE                         R12 K27 [{"onActivated", "isDisabled", "padding", "Size", "stroke", "tag", "LayoutOrder", "GroupTransparency", "testId"}]
      203 GETTABLEKS                       R13 R0 K56 ["decrement"]
      205 GETTABLEKS                       R13 R13 K29 ["onClick"]
      207 SETTABLEKS                       R13 R12 K18 ["onActivated"]
      209 GETTABLEKS                       R13 R0 K56 ["decrement"]
      211 GETTABLEKS                       R13 R13 K19 ["isDisabled"]
      213 SETTABLEKS                       R13 R12 K19 ["isDisabled"]
      215 GETTABLEKS                       R13 R2 K30 ["button"]
      217 GETTABLEKS                       R13 R13 K20 ["padding"]
      219 SETTABLEKS                       R13 R12 K20 ["padding"]
      221 SETTABLEKS                       R5 R12 K21 ["Size"]
      223 DUPTABLE                         R13 K34 [{"Color", "Transparency", "Thickness"}]
      224 GETTABLEKS                       R14 R1 K31 ["Color"]
      226 GETTABLEKS                       R14 R14 K3 ["Stroke"]
      228 GETTABLEKS                       R14 R14 K35 ["Emphasis"]
      230 GETTABLEKS                       R14 R14 K36 ["Color3"]
      232 SETTABLEKS                       R14 R13 K31 ["Color"]
      234 GETTABLEKS                       R15 R1 K31 ["Color"]
      236 GETTABLEKS                       R15 R15 K3 ["Stroke"]
      238 GETTABLEKS                       R15 R15 K35 ["Emphasis"]
      240 GETTABLEKS                       R15 R15 K32 ["Transparency"]
      242 LOADN                            R16 1
      243 GETTABLEKS                       R18 R0 K56 ["decrement"]
      245 GETTABLEKS                       R18 R18 K19 ["isDisabled"]
      247 JUMPIFNOT                        R18 ; [+4]
      248 GETUPVAL                         R17 5
      249 GETTABLEKS                       R17 R17 K37 ["DISABLED_TRANSPARENCY"]
      251 JUMP                             ; [+1]
      252 LOADN                            R17 0
      253 FASTCALL                         MATH_LERP ; [+2]
      254 GETIMPORT                        R14 K39 [math.lerp]
      256 CALL                             R14 3 1
      257 SETTABLEKS                       R14 R13 K32 ["Transparency"]
      259 GETTABLEKS                       R14 R1 K3 ["Stroke"]
      261 GETTABLEKS                       R14 R14 K4 ["Standard"]
      263 SETTABLEKS                       R14 R13 K33 ["Thickness"]
      265 SETTABLEKS                       R13 R12 K22 ["stroke"]
      267 GETTABLEKS                       R13 R2 K12 ["splitButton"]
      269 GETTABLEKS                       R13 R13 K23 ["tag"]
      271 SETTABLEKS                       R13 R12 K23 ["tag"]
      273 LOADN                            R13 255
      274 SETTABLEKS                       R13 R12 K24 ["LayoutOrder"]
      276 GETTABLEKS                       R14 R0 K56 ["decrement"]
      278 GETTABLEKS                       R14 R14 K19 ["isDisabled"]
      280 JUMPIFNOT                        R14 ; [+4]
      281 GETUPVAL                         R13 5
      282 GETTABLEKS                       R13 R13 K37 ["DISABLED_TRANSPARENCY"]
      284 JUMP                             ; [+1]
      285 LOADNIL                          R13
      286 SETTABLEKS                       R13 R12 K25 ["GroupTransparency"]
      288 LOADK                            R14 K57 ["%*--decrement"]
      289 GETTABLEKS                       R16 R0 K26 ["testId"]
      291 NAMECALL                         R14 R14 K41 ["format"]
      293 CALL                             R14 2 1
      294 MOVE                             R13 R14
      295 SETTABLEKS                       R13 R12 K26 ["testId"]
      297 DUPTABLE                         R13 K43 [{"Icon"}]
      298 GETUPVAL                         R14 3
      299 GETTABLEKS                       R14 R14 K13 ["createElement"]
      301 GETUPVAL                         R15 6
      302 DUPTABLE                         R16 K47 [{"name", "size", "AnchorPoint", "Position", "testId"}]
      303 GETUPVAL                         R17 7
      304 GETTABLEKS                       R17 R17 K42 ["Icon"]
      306 GETTABLEKS                       R17 R17 K58 ["MinusSmall"]
      308 SETTABLEKS                       R17 R16 K44 ["name"]
      310 GETUPVAL                         R18 2
      311 GETTABLEKS                       R18 R18 K1 ["FoundationNumberInputFixControlSizes"]
      313 JUMPIFNOT                        R18 ; [+3]
      314 GETTABLEKS                       R17 R0 K0 ["size"]
      316 JUMP                             ; [+1]
      317 LOADNIL                          R17
      318 SETTABLEKS                       R17 R16 K0 ["size"]
      320 GETIMPORT                        R17 K51 [Vector2.new]
      322 LOADK                            R18 K52 [0.5]
      323 LOADK                            R19 K52 [0.5]
      324 CALL                             R17 2 1
      325 SETTABLEKS                       R17 R16 K45 ["AnchorPoint"]
      327 GETIMPORT                        R17 K54 [UDim2.fromScale]
      329 LOADK                            R18 K52 [0.5]
      330 LOADK                            R19 K52 [0.5]
      331 CALL                             R17 2 1
      332 SETTABLEKS                       R17 R16 K46 ["Position"]
      334 LOADK                            R18 K59 ["%*--decrement-icon"]
      335 GETTABLEKS                       R20 R0 K26 ["testId"]
      337 NAMECALL                         R18 R18 K41 ["format"]
      339 CALL                             R18 2 1
      340 MOVE                             R17 R18
      341 SETTABLEKS                       R17 R16 K26 ["testId"]
      343 CALL                             R14 2 1
      344 SETTABLEKS                       R14 R13 K42 ["Icon"]
      346 CALL                             R10 3 1
      347 SETTABLEKS                       R10 R9 K16 ["ControlDecrement"]
      349 CALL                             R6 3 -1
      350 RETURN                           R6 -1

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
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R6 R6 K1 ["FoundationNumberInputFixControlSizes"]
        9 JUMPIFNOT                        R6 ; [+3]
       10 GETTABLEKS                       R5 R0 K2 ["variant"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R5
       14 CALL                             R2 3 1
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K3 ["useMemo"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U4
       22 NEWTABLE                         R5 0 2
       24 MOVE                             R6 R1
       25 GETTABLEKS                       R7 R0 K4 ["increment"]
       27 GETTABLEKS                       R7 R7 K5 ["isDisabled"]
       29 SETLIST                          R5 R6 2 [1]
       31 CALL                             R3 2 1
       32 GETUPVAL                         R4 3
       33 GETTABLEKS                       R4 R4 K3 ["useMemo"]
       35 NEWCLOSURE                       R5 P1
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U4
       39 NEWTABLE                         R6 0 2
       41 MOVE                             R7 R1
       42 GETTABLEKS                       R8 R0 K6 ["decrement"]
       44 GETTABLEKS                       R8 R8 K5 ["isDisabled"]
       46 SETLIST                          R6 R7 2 [1]
       48 CALL                             R4 2 1
       49 GETUPVAL                         R5 3
       50 GETTABLEKS                       R5 R5 K7 ["createElement"]
       52 GETUPVAL                         R6 5
       53 DUPTABLE                         R7 K11 [{"tag", "Size", "LayoutOrder"}]
       54 LOADK                            R8 K12 ["col"]
       55 SETTABLEKS                       R8 R7 K8 ["tag"]
       57 GETIMPORT                        R8 K15 [UDim2.new]
       59 LOADN                            R9 0
       60 GETTABLEKS                       R10 R2 K16 ["button"]
       62 GETTABLEKS                       R10 R10 K17 ["width"]
       64 LOADN                            R11 1
       65 LOADN                            R12 0
       66 CALL                             R8 4 1
       67 SETTABLEKS                       R8 R7 K9 ["Size"]
       69 GETTABLEKS                       R8 R0 K10 ["LayoutOrder"]
       71 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
       73 DUPTABLE                         R8 K20 [{"ControlIncrement", "ControlDecrement"}]
       74 GETUPVAL                         R9 3
       75 GETTABLEKS                       R9 R9 K7 ["createElement"]
       77 GETUPVAL                         R10 6
       78 DUPTABLE                         R11 K24 [{"onActivated", "isDisabled", "padding", "tag", "testId"}]
       79 GETTABLEKS                       R12 R0 K4 ["increment"]
       81 GETTABLEKS                       R12 R12 K25 ["onClick"]
       83 SETTABLEKS                       R12 R11 K21 ["onActivated"]
       85 GETTABLEKS                       R12 R0 K4 ["increment"]
       87 GETTABLEKS                       R12 R12 K5 ["isDisabled"]
       89 SETTABLEKS                       R12 R11 K5 ["isDisabled"]
       91 GETTABLEKS                       R12 R2 K16 ["button"]
       93 GETTABLEKS                       R12 R12 K22 ["padding"]
       95 SETTABLEKS                       R12 R11 K22 ["padding"]
       97 GETTABLEKS                       R12 R2 K26 ["upButton"]
       99 GETTABLEKS                       R12 R12 K8 ["tag"]
      101 SETTABLEKS                       R12 R11 K8 ["tag"]
      103 LOADK                            R13 K27 ["%*--increment"]
      104 GETTABLEKS                       R15 R0 K23 ["testId"]
      106 NAMECALL                         R13 R13 K28 ["format"]
      108 CALL                             R13 2 1
      109 MOVE                             R12 R13
      110 SETTABLEKS                       R12 R11 K23 ["testId"]
      112 DUPTABLE                         R12 K30 [{"Icon"}]
      113 GETUPVAL                         R13 3
      114 GETTABLEKS                       R13 R13 K7 ["createElement"]
      116 GETUPVAL                         R14 7
      117 DUPTABLE                         R15 K33 [{"Image", "imageStyle", "tag", "testId"}]
      118 LOADK                            R16 K34 ["component_assets/triangleUp_16"]
      119 SETTABLEKS                       R16 R15 K31 ["Image"]
      121 SETTABLEKS                       R3 R15 K32 ["imageStyle"]
      123 GETTABLEKS                       R16 R2 K35 ["icon"]
      125 GETTABLEKS                       R16 R16 K8 ["tag"]
      127 SETTABLEKS                       R16 R15 K8 ["tag"]
      129 LOADK                            R17 K36 ["%*--increment-icon"]
      130 GETTABLEKS                       R19 R0 K23 ["testId"]
      132 NAMECALL                         R17 R17 K28 ["format"]
      134 CALL                             R17 2 1
      135 MOVE                             R16 R17
      136 SETTABLEKS                       R16 R15 K23 ["testId"]
      138 CALL                             R13 2 1
      139 SETTABLEKS                       R13 R12 K29 ["Icon"]
      141 CALL                             R9 3 1
      142 SETTABLEKS                       R9 R8 K18 ["ControlIncrement"]
      144 GETUPVAL                         R9 3
      145 GETTABLEKS                       R9 R9 K7 ["createElement"]
      147 GETUPVAL                         R10 6
      148 DUPTABLE                         R11 K37 [{"tag", "onActivated", "isDisabled", "padding", "testId"}]
      149 GETTABLEKS                       R12 R2 K38 ["downButton"]
      151 GETTABLEKS                       R12 R12 K8 ["tag"]
      153 SETTABLEKS                       R12 R11 K8 ["tag"]
      155 GETTABLEKS                       R12 R0 K6 ["decrement"]
      157 GETTABLEKS                       R12 R12 K25 ["onClick"]
      159 SETTABLEKS                       R12 R11 K21 ["onActivated"]
      161 GETTABLEKS                       R12 R0 K6 ["decrement"]
      163 GETTABLEKS                       R12 R12 K5 ["isDisabled"]
      165 SETTABLEKS                       R12 R11 K5 ["isDisabled"]
      167 GETTABLEKS                       R12 R2 K16 ["button"]
      169 GETTABLEKS                       R12 R12 K22 ["padding"]
      171 SETTABLEKS                       R12 R11 K22 ["padding"]
      173 LOADK                            R13 K39 ["%*--decrement"]
      174 GETTABLEKS                       R15 R0 K23 ["testId"]
      176 NAMECALL                         R13 R13 K28 ["format"]
      178 CALL                             R13 2 1
      179 MOVE                             R12 R13
      180 SETTABLEKS                       R12 R11 K23 ["testId"]
      182 DUPTABLE                         R12 K30 [{"Icon"}]
      183 GETUPVAL                         R13 3
      184 GETTABLEKS                       R13 R13 K7 ["createElement"]
      186 GETUPVAL                         R14 7
      187 DUPTABLE                         R15 K33 [{"Image", "imageStyle", "tag", "testId"}]
      188 LOADK                            R16 K40 ["component_assets/triangleDown_16"]
      189 SETTABLEKS                       R16 R15 K31 ["Image"]
      191 SETTABLEKS                       R4 R15 K32 ["imageStyle"]
      193 GETTABLEKS                       R16 R2 K35 ["icon"]
      195 GETTABLEKS                       R16 R16 K8 ["tag"]
      197 SETTABLEKS                       R16 R15 K8 ["tag"]
      199 LOADK                            R17 K41 ["%*--decrement-icon"]
      200 GETTABLEKS                       R19 R0 K23 ["testId"]
      202 NAMECALL                         R17 R17 K28 ["format"]
      204 CALL                             R17 2 1
      205 MOVE                             R16 R17
      206 SETTABLEKS                       R16 R15 K23 ["testId"]
      208 CALL                             R13 2 1
      209 SETTABLEKS                       R13 R12 K29 ["Icon"]
      211 CALL                             R9 3 1
      212 SETTABLEKS                       R9 R8 K19 ["ControlDecrement"]
      214 CALL                             R5 3 -1
      215 RETURN                           R5 -1

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
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Providers"]
       23 GETTABLEKS                       R5 R5 K10 ["Style"]
       25 GETTABLEKS                       R5 R5 K11 ["useTokens"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R0 K12 ["Components"]
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R7 R0 K13 ["Utility"]
       34 GETTABLEKS                       R7 R7 K14 ["Flags"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R8 R0 K15 ["Constants"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K6 [require]
       44 GETTABLEKS                       R9 R5 K16 ["Icon"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K6 [require]
       49 GETTABLEKS                       R10 R5 K17 ["Image"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K6 [require]
       54 GETTABLEKS                       R11 R0 K12 ["Components"]
       56 GETTABLEKS                       R11 R11 K18 ["Types"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K6 [require]
       61 GETTABLEKS                       R12 R5 K19 ["View"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K6 [require]
       66 GETTABLEKS                       R13 R0 K13 ["Utility"]
       68 GETTABLEKS                       R13 R13 K20 ["withCommonProps"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K6 [require]
       73 GETTABLEKS                       R14 R0 K21 ["Enums"]
       75 GETTABLEKS                       R14 R14 K22 ["NumberInputControlsVariant"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K6 [require]
       80 GETTABLEKS                       R15 R0 K21 ["Enums"]
       82 GETTABLEKS                       R15 R15 K23 ["InputSize"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K6 [require]
       87 GETIMPORT                        R16 K1 [script]
       89 GETTABLEKS                       R16 R16 K4 ["Parent"]
       91 GETTABLEKS                       R16 R16 K24 ["useNumberInputVariants"]
       93 CALL                             R15 1 1
       94 DUPCLOSURE                       R16 K25 [PROTO_1]
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R12
       99 DUPCLOSURE                       R17 K26 [PROTO_2]
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R15
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R2
      108 DUPCLOSURE                       R18 K27 [PROTO_5]
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R15
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R16
      116 CAPTURE                          VAL R9
      117 DUPCLOSURE                       R19 K28 [PROTO_6]
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R18
      121 CAPTURE                          VAL R17
      122 RETURN                           R19 1
