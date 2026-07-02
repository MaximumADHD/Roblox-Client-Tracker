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
       51 DUPTABLE                         R12 K28 [{["onActivated"], ["isDisabled"], ["padding"], ["Size"], ["stroke"], ["tag"], ["LayoutOrder"] = 1, ["GroupTransparency"], ["testId"]}]
       52 GETTABLEKS                       R13 R0 K29 ["increment"]
       54 GETTABLEKS                       R13 R13 K30 ["onClick"]
       56 SETTABLEKS                       R13 R12 K18 ["onActivated"]
       58 GETTABLEKS                       R13 R0 K29 ["increment"]
       60 GETTABLEKS                       R13 R13 K19 ["isDisabled"]
       62 SETTABLEKS                       R13 R12 K19 ["isDisabled"]
       64 GETTABLEKS                       R13 R2 K31 ["button"]
       66 GETTABLEKS                       R13 R13 K20 ["padding"]
       68 SETTABLEKS                       R13 R12 K20 ["padding"]
       70 SETTABLEKS                       R5 R12 K21 ["Size"]
       72 DUPTABLE                         R13 K35 [{"Color", "Transparency", "Thickness"}]
       73 GETTABLEKS                       R14 R1 K32 ["Color"]
       75 GETTABLEKS                       R14 R14 K3 ["Stroke"]
       77 GETTABLEKS                       R14 R14 K36 ["Emphasis"]
       79 GETTABLEKS                       R14 R14 K37 ["Color3"]
       81 SETTABLEKS                       R14 R13 K32 ["Color"]
       83 GETTABLEKS                       R15 R1 K32 ["Color"]
       85 GETTABLEKS                       R15 R15 K3 ["Stroke"]
       87 GETTABLEKS                       R15 R15 K36 ["Emphasis"]
       89 GETTABLEKS                       R15 R15 K33 ["Transparency"]
       91 LOADN                            R16 1
       92 GETTABLEKS                       R18 R0 K29 ["increment"]
       94 GETTABLEKS                       R18 R18 K19 ["isDisabled"]
       96 JUMPIFNOT                        R18 ; [+4]
       97 GETUPVAL                         R17 5
       98 GETTABLEKS                       R17 R17 K38 ["DISABLED_TRANSPARENCY"]
      100 JUMP                             ; [+1]
      101 LOADN                            R17 0
      102 FASTCALL                         MATH_LERP ; [+2]
      103 GETIMPORT                        R14 K40 [math.lerp]
      105 CALL                             R14 3 1
      106 SETTABLEKS                       R14 R13 K33 ["Transparency"]
      108 GETTABLEKS                       R14 R1 K3 ["Stroke"]
      110 GETTABLEKS                       R14 R14 K4 ["Standard"]
      112 SETTABLEKS                       R14 R13 K34 ["Thickness"]
      114 SETTABLEKS                       R13 R12 K22 ["stroke"]
      116 GETTABLEKS                       R13 R2 K12 ["splitButton"]
      118 GETTABLEKS                       R13 R13 K23 ["tag"]
      120 SETTABLEKS                       R13 R12 K23 ["tag"]
      122 GETTABLEKS                       R14 R0 K29 ["increment"]
      124 GETTABLEKS                       R14 R14 K19 ["isDisabled"]
      126 JUMPIFNOT                        R14 ; [+4]
      127 GETUPVAL                         R13 5
      128 GETTABLEKS                       R13 R13 K38 ["DISABLED_TRANSPARENCY"]
      130 JUMP                             ; [+1]
      131 LOADNIL                          R13
      132 SETTABLEKS                       R13 R12 K26 ["GroupTransparency"]
      134 LOADK                            R14 K41 ["%*--increment"]
      135 GETTABLEKS                       R16 R0 K27 ["testId"]
      137 NAMECALL                         R14 R14 K42 ["format"]
      139 CALL                             R14 2 1
      140 MOVE                             R13 R14
      141 SETTABLEKS                       R13 R12 K27 ["testId"]
      143 DUPTABLE                         R13 K44 [{"Icon"}]
      144 GETUPVAL                         R14 3
      145 GETTABLEKS                       R14 R14 K13 ["createElement"]
      147 GETUPVAL                         R15 6
      148 DUPTABLE                         R16 K48 [{"name", "size", "AnchorPoint", "Position", "testId"}]
      149 GETUPVAL                         R17 7
      150 GETTABLEKS                       R17 R17 K43 ["Icon"]
      152 GETTABLEKS                       R17 R17 K49 ["PlusSmall"]
      154 SETTABLEKS                       R17 R16 K45 ["name"]
      156 GETUPVAL                         R18 2
      157 GETTABLEKS                       R18 R18 K1 ["FoundationNumberInputFixControlSizes"]
      159 JUMPIFNOT                        R18 ; [+3]
      160 GETTABLEKS                       R17 R0 K0 ["size"]
      162 JUMP                             ; [+1]
      163 LOADNIL                          R17
      164 SETTABLEKS                       R17 R16 K0 ["size"]
      166 GETIMPORT                        R17 K52 [Vector2.new]
      168 LOADK                            R18 K53 [0.5]
      169 LOADK                            R19 K53 [0.5]
      170 CALL                             R17 2 1
      171 SETTABLEKS                       R17 R16 K46 ["AnchorPoint"]
      173 GETIMPORT                        R17 K55 [UDim2.fromScale]
      175 LOADK                            R18 K53 [0.5]
      176 LOADK                            R19 K53 [0.5]
      177 CALL                             R17 2 1
      178 SETTABLEKS                       R17 R16 K47 ["Position"]
      180 LOADK                            R18 K56 ["%*--increment-icon"]
      181 GETTABLEKS                       R20 R0 K27 ["testId"]
      183 NAMECALL                         R18 R18 K42 ["format"]
      185 CALL                             R18 2 1
      186 MOVE                             R17 R18
      187 SETTABLEKS                       R17 R16 K27 ["testId"]
      189 CALL                             R14 2 1
      190 SETTABLEKS                       R14 R13 K43 ["Icon"]
      192 CALL                             R10 3 1
      193 SETTABLEKS                       R10 R9 K15 ["ControlIncrement"]
      195 GETUPVAL                         R10 3
      196 GETTABLEKS                       R10 R10 K13 ["createElement"]
      198 GETUPVAL                         R11 4
      199 DUPTABLE                         R12 K58 [{["onActivated"], ["isDisabled"], ["padding"], ["Size"], ["stroke"], ["tag"], ["LayoutOrder"] = -1, ["GroupTransparency"], ["testId"]}]
      200 GETTABLEKS                       R13 R0 K59 ["decrement"]
      202 GETTABLEKS                       R13 R13 K30 ["onClick"]
      204 SETTABLEKS                       R13 R12 K18 ["onActivated"]
      206 GETTABLEKS                       R13 R0 K59 ["decrement"]
      208 GETTABLEKS                       R13 R13 K19 ["isDisabled"]
      210 SETTABLEKS                       R13 R12 K19 ["isDisabled"]
      212 GETTABLEKS                       R13 R2 K31 ["button"]
      214 GETTABLEKS                       R13 R13 K20 ["padding"]
      216 SETTABLEKS                       R13 R12 K20 ["padding"]
      218 SETTABLEKS                       R5 R12 K21 ["Size"]
      220 DUPTABLE                         R13 K35 [{"Color", "Transparency", "Thickness"}]
      221 GETTABLEKS                       R14 R1 K32 ["Color"]
      223 GETTABLEKS                       R14 R14 K3 ["Stroke"]
      225 GETTABLEKS                       R14 R14 K36 ["Emphasis"]
      227 GETTABLEKS                       R14 R14 K37 ["Color3"]
      229 SETTABLEKS                       R14 R13 K32 ["Color"]
      231 GETTABLEKS                       R15 R1 K32 ["Color"]
      233 GETTABLEKS                       R15 R15 K3 ["Stroke"]
      235 GETTABLEKS                       R15 R15 K36 ["Emphasis"]
      237 GETTABLEKS                       R15 R15 K33 ["Transparency"]
      239 LOADN                            R16 1
      240 GETTABLEKS                       R18 R0 K59 ["decrement"]
      242 GETTABLEKS                       R18 R18 K19 ["isDisabled"]
      244 JUMPIFNOT                        R18 ; [+4]
      245 GETUPVAL                         R17 5
      246 GETTABLEKS                       R17 R17 K38 ["DISABLED_TRANSPARENCY"]
      248 JUMP                             ; [+1]
      249 LOADN                            R17 0
      250 FASTCALL                         MATH_LERP ; [+2]
      251 GETIMPORT                        R14 K40 [math.lerp]
      253 CALL                             R14 3 1
      254 SETTABLEKS                       R14 R13 K33 ["Transparency"]
      256 GETTABLEKS                       R14 R1 K3 ["Stroke"]
      258 GETTABLEKS                       R14 R14 K4 ["Standard"]
      260 SETTABLEKS                       R14 R13 K34 ["Thickness"]
      262 SETTABLEKS                       R13 R12 K22 ["stroke"]
      264 GETTABLEKS                       R13 R2 K12 ["splitButton"]
      266 GETTABLEKS                       R13 R13 K23 ["tag"]
      268 SETTABLEKS                       R13 R12 K23 ["tag"]
      270 GETTABLEKS                       R14 R0 K59 ["decrement"]
      272 GETTABLEKS                       R14 R14 K19 ["isDisabled"]
      274 JUMPIFNOT                        R14 ; [+4]
      275 GETUPVAL                         R13 5
      276 GETTABLEKS                       R13 R13 K38 ["DISABLED_TRANSPARENCY"]
      278 JUMP                             ; [+1]
      279 LOADNIL                          R13
      280 SETTABLEKS                       R13 R12 K26 ["GroupTransparency"]
      282 LOADK                            R14 K60 ["%*--decrement"]
      283 GETTABLEKS                       R16 R0 K27 ["testId"]
      285 NAMECALL                         R14 R14 K42 ["format"]
      287 CALL                             R14 2 1
      288 MOVE                             R13 R14
      289 SETTABLEKS                       R13 R12 K27 ["testId"]
      291 DUPTABLE                         R13 K44 [{"Icon"}]
      292 GETUPVAL                         R14 3
      293 GETTABLEKS                       R14 R14 K13 ["createElement"]
      295 GETUPVAL                         R15 6
      296 DUPTABLE                         R16 K48 [{"name", "size", "AnchorPoint", "Position", "testId"}]
      297 GETUPVAL                         R17 7
      298 GETTABLEKS                       R17 R17 K43 ["Icon"]
      300 GETTABLEKS                       R17 R17 K61 ["MinusSmall"]
      302 SETTABLEKS                       R17 R16 K45 ["name"]
      304 GETUPVAL                         R18 2
      305 GETTABLEKS                       R18 R18 K1 ["FoundationNumberInputFixControlSizes"]
      307 JUMPIFNOT                        R18 ; [+3]
      308 GETTABLEKS                       R17 R0 K0 ["size"]
      310 JUMP                             ; [+1]
      311 LOADNIL                          R17
      312 SETTABLEKS                       R17 R16 K0 ["size"]
      314 GETIMPORT                        R17 K52 [Vector2.new]
      316 LOADK                            R18 K53 [0.5]
      317 LOADK                            R19 K53 [0.5]
      318 CALL                             R17 2 1
      319 SETTABLEKS                       R17 R16 K46 ["AnchorPoint"]
      321 GETIMPORT                        R17 K55 [UDim2.fromScale]
      323 LOADK                            R18 K53 [0.5]
      324 LOADK                            R19 K53 [0.5]
      325 CALL                             R17 2 1
      326 SETTABLEKS                       R17 R16 K47 ["Position"]
      328 LOADK                            R18 K62 ["%*--decrement-icon"]
      329 GETTABLEKS                       R20 R0 K27 ["testId"]
      331 NAMECALL                         R18 R18 K42 ["format"]
      333 CALL                             R18 2 1
      334 MOVE                             R17 R18
      335 SETTABLEKS                       R17 R16 K27 ["testId"]
      337 CALL                             R14 2 1
      338 SETTABLEKS                       R14 R13 K43 ["Icon"]
      340 CALL                             R10 3 1
      341 SETTABLEKS                       R10 R9 K16 ["ControlDecrement"]
      343 CALL                             R6 3 -1
      344 RETURN                           R6 -1

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
       53 DUPTABLE                         R7 K12 [{["tag"] = "col", ["Size"], ["LayoutOrder"]}]
       54 GETIMPORT                        R8 K15 [UDim2.new]
       56 LOADN                            R9 0
       57 GETTABLEKS                       R10 R2 K16 ["button"]
       59 GETTABLEKS                       R10 R10 K17 ["width"]
       61 LOADN                            R11 1
       62 LOADN                            R12 0
       63 CALL                             R8 4 1
       64 SETTABLEKS                       R8 R7 K10 ["Size"]
       66 GETTABLEKS                       R8 R0 K11 ["LayoutOrder"]
       68 SETTABLEKS                       R8 R7 K11 ["LayoutOrder"]
       70 DUPTABLE                         R8 K20 [{"ControlIncrement", "ControlDecrement"}]
       71 GETUPVAL                         R9 3
       72 GETTABLEKS                       R9 R9 K7 ["createElement"]
       74 GETUPVAL                         R10 6
       75 DUPTABLE                         R11 K24 [{"onActivated", "isDisabled", "padding", "tag", "testId"}]
       76 GETTABLEKS                       R12 R0 K4 ["increment"]
       78 GETTABLEKS                       R12 R12 K25 ["onClick"]
       80 SETTABLEKS                       R12 R11 K21 ["onActivated"]
       82 GETTABLEKS                       R12 R0 K4 ["increment"]
       84 GETTABLEKS                       R12 R12 K5 ["isDisabled"]
       86 SETTABLEKS                       R12 R11 K5 ["isDisabled"]
       88 GETTABLEKS                       R12 R2 K16 ["button"]
       90 GETTABLEKS                       R12 R12 K22 ["padding"]
       92 SETTABLEKS                       R12 R11 K22 ["padding"]
       94 GETTABLEKS                       R12 R2 K26 ["upButton"]
       96 GETTABLEKS                       R12 R12 K8 ["tag"]
       98 SETTABLEKS                       R12 R11 K8 ["tag"]
      100 LOADK                            R13 K27 ["%*--increment"]
      101 GETTABLEKS                       R15 R0 K23 ["testId"]
      103 NAMECALL                         R13 R13 K28 ["format"]
      105 CALL                             R13 2 1
      106 MOVE                             R12 R13
      107 SETTABLEKS                       R12 R11 K23 ["testId"]
      109 DUPTABLE                         R12 K30 [{"Icon"}]
      110 GETUPVAL                         R13 3
      111 GETTABLEKS                       R13 R13 K7 ["createElement"]
      113 GETUPVAL                         R14 7
      114 DUPTABLE                         R15 K34 [{["Image"] = "component_assets/triangleUp_16", ["imageStyle"], ["tag"], ["testId"]}]
      115 SETTABLEKS                       R3 R15 K33 ["imageStyle"]
      117 GETTABLEKS                       R16 R2 K35 ["icon"]
      119 GETTABLEKS                       R16 R16 K8 ["tag"]
      121 SETTABLEKS                       R16 R15 K8 ["tag"]
      123 LOADK                            R17 K36 ["%*--increment-icon"]
      124 GETTABLEKS                       R19 R0 K23 ["testId"]
      126 NAMECALL                         R17 R17 K28 ["format"]
      128 CALL                             R17 2 1
      129 MOVE                             R16 R17
      130 SETTABLEKS                       R16 R15 K23 ["testId"]
      132 CALL                             R13 2 1
      133 SETTABLEKS                       R13 R12 K29 ["Icon"]
      135 CALL                             R9 3 1
      136 SETTABLEKS                       R9 R8 K18 ["ControlIncrement"]
      138 GETUPVAL                         R9 3
      139 GETTABLEKS                       R9 R9 K7 ["createElement"]
      141 GETUPVAL                         R10 6
      142 DUPTABLE                         R11 K37 [{"tag", "onActivated", "isDisabled", "padding", "testId"}]
      143 GETTABLEKS                       R12 R2 K38 ["downButton"]
      145 GETTABLEKS                       R12 R12 K8 ["tag"]
      147 SETTABLEKS                       R12 R11 K8 ["tag"]
      149 GETTABLEKS                       R12 R0 K6 ["decrement"]
      151 GETTABLEKS                       R12 R12 K25 ["onClick"]
      153 SETTABLEKS                       R12 R11 K21 ["onActivated"]
      155 GETTABLEKS                       R12 R0 K6 ["decrement"]
      157 GETTABLEKS                       R12 R12 K5 ["isDisabled"]
      159 SETTABLEKS                       R12 R11 K5 ["isDisabled"]
      161 GETTABLEKS                       R12 R2 K16 ["button"]
      163 GETTABLEKS                       R12 R12 K22 ["padding"]
      165 SETTABLEKS                       R12 R11 K22 ["padding"]
      167 LOADK                            R13 K39 ["%*--decrement"]
      168 GETTABLEKS                       R15 R0 K23 ["testId"]
      170 NAMECALL                         R13 R13 K28 ["format"]
      172 CALL                             R13 2 1
      173 MOVE                             R12 R13
      174 SETTABLEKS                       R12 R11 K23 ["testId"]
      176 DUPTABLE                         R12 K30 [{"Icon"}]
      177 GETUPVAL                         R13 3
      178 GETTABLEKS                       R13 R13 K7 ["createElement"]
      180 GETUPVAL                         R14 7
      181 DUPTABLE                         R15 K41 [{["Image"] = "component_assets/triangleDown_16", ["imageStyle"], ["tag"], ["testId"]}]
      182 SETTABLEKS                       R4 R15 K33 ["imageStyle"]
      184 GETTABLEKS                       R16 R2 K35 ["icon"]
      186 GETTABLEKS                       R16 R16 K8 ["tag"]
      188 SETTABLEKS                       R16 R15 K8 ["tag"]
      190 LOADK                            R17 K42 ["%*--decrement-icon"]
      191 GETTABLEKS                       R19 R0 K23 ["testId"]
      193 NAMECALL                         R17 R17 K28 ["format"]
      195 CALL                             R17 2 1
      196 MOVE                             R16 R17
      197 SETTABLEKS                       R16 R15 K23 ["testId"]
      199 CALL                             R13 2 1
      200 SETTABLEKS                       R13 R12 K29 ["Icon"]
      202 CALL                             R9 3 1
      203 SETTABLEKS                       R9 R8 K19 ["ControlDecrement"]
      205 CALL                             R5 3 -1
      206 RETURN                           R5 -1

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
