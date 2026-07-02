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
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_2:
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
       33 GETUPVAL                         R10 4
       34 GETTABLEKS                       R10 R10 K15 ["isBinding"]
       36 GETTABLEKS                       R11 R0 K8 ["isDisabled"]
       38 CALL                             R10 1 1
       39 JUMPIFNOT                        R10 ; [+2]
       40 LOADB                            R9 0
       41 JUMP                             ; [+2]
       42 GETTABLEKS                       R9 R0 K8 ["isDisabled"]
       44 SETTABLEKS                       R9 R8 K8 ["isDisabled"]
       46 DUPTABLE                         R9 K17 [{"Selectable"}]
       47 GETUPVAL                         R10 5
       48 GETTABLEKS                       R11 R0 K8 ["isDisabled"]
       50 DUPCLOSURE                       R12 K18 [PROTO_1]
       51 CALL                             R10 2 1
       52 SETTABLEKS                       R10 R9 K16 ["Selectable"]
       54 SETTABLEKS                       R9 R8 K9 ["selection"]
       56 SETTABLEKS                       R3 R8 K10 ["cursor"]
       58 GETTABLEKS                       R9 R0 K11 ["padding"]
       60 SETTABLEKS                       R9 R8 K11 ["padding"]
       62 SETTABLEKS                       R2 R8 K12 ["cornerRadius"]
       64 GETTABLEKS                       R9 R0 K13 ["tag"]
       66 SETTABLEKS                       R9 R8 K13 ["tag"]
       68 CALL                             R6 2 1
       69 GETTABLEKS                       R7 R0 K19 ["children"]
       71 CALL                             R4 3 -1
       72 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["bgStyle"]
        3 JUMPIFNOT                        R2 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["bgStyle"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 1
       10 RETURN                           R1 1
       11 LOADNIL                          R1
       12 RETURN                           R1 1

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+11]
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["strokeStyle"]
        5 GETTABLEKS                       R2 R2 K1 ["Transparency"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["DISABLED_TRANSPARENCY"]
       10 CALL                             R1 2 1
       11 RETURN                           R1 1
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K0 ["strokeStyle"]
       15 GETTABLEKS                       R1 R1 K1 ["Transparency"]
       17 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["strokeStyle"]
        3 JUMPIFNOT                        R2 ; [+31]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["strokeThickness"]
        7 JUMPIFNOT                        R2 ; [+27]
        8 DUPTABLE                         R1 K6 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["strokeStyle"]
       12 GETTABLEKS                       R2 R2 K7 ["Color3"]
       14 SETTABLEKS                       R2 R1 K2 ["Color"]
       16 GETUPVAL                         R2 1
       17 MOVE                             R3 R0
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U3
       22 CALL                             R2 2 1
       23 SETTABLEKS                       R2 R1 K3 ["Transparency"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K1 ["strokeThickness"]
       28 SETTABLEKS                       R2 R1 K4 ["Thickness"]
       30 GETIMPORT                        R2 K10 [Enum.BorderStrokePosition.Inner]
       32 SETTABLEKS                       R2 R1 K5 ["BorderStrokePosition"]
       34 RETURN                           R1 1
       35 LOADNIL                          R1
       36 RETURN                           R1 1

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["None"]
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["Background"]
        8 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_8:
        0 DUPTABLE                         R1 K3 [{[1] = , ["Transparency"]}]
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K4 ["DISABLED_TRANSPARENCY"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R2
        7 SETTABLEKS                       R2 R1 K2 ["Transparency"]
        9 RETURN                           R1 1

PROTO_9:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["None"]
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["Background"]
        8 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_11:
        0 DUPTABLE                         R1 K3 [{[1] = , ["Transparency"]}]
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K4 ["DISABLED_TRANSPARENCY"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R2
        7 SETTABLEKS                       R2 R1 K2 ["Transparency"]
        9 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R1
        4 GETTABLEKS                       R4 R0 K0 ["size"]
        6 GETTABLEKS                       R5 R0 K1 ["controlsVariant"]
        8 CALL                             R2 3 1
        9 GETUPVAL                         R3 2
       10 MOVE                             R4 R1
       11 GETTABLEKS                       R5 R0 K0 ["size"]
       13 GETTABLEKS                       R6 R0 K2 ["variant"]
       15 CALL                             R3 3 1
       16 GETTABLEKS                       R4 R3 K3 ["container"]
       18 GETTABLEKS                       R5 R1 K4 ["Stroke"]
       20 GETTABLEKS                       R5 R5 K5 ["Standard"]
       22 FASTCALL1                        MATH_CEIL R5 ; [+3]
       23 MOVE                             R8 R5
       24 GETIMPORT                        R7 K9 [math.ceil]
       26 CALL                             R7 1 1
       27 MULK                             R6 R7 K6 [2]
       28 GETIMPORT                        R7 K12 [UDim2.fromOffset]
       30 GETTABLEKS                       R9 R2 K13 ["splitButton"]
       32 GETTABLEKS                       R9 R9 K0 ["size"]
       34 SUB                              R8 R9 R6
       35 GETTABLEKS                       R10 R2 K13 ["splitButton"]
       37 GETTABLEKS                       R10 R10 K0 ["size"]
       39 SUB                              R9 R10 R6
       40 CALL                             R7 2 1
       41 GETUPVAL                         R8 3
       42 GETTABLEKS                       R8 R8 K14 ["useCallback"]
       44 NEWCLOSURE                       R9 P0
       45 CAPTURE                          VAL R4
       46 CAPTURE                          UPVAL U4
       47 NEWTABLE                         R10 0 1
       49 GETTABLEKS                       R11 R4 K15 ["bgStyle"]
       51 SETLIST                          R10 R11 1 [1]
       53 CALL                             R8 2 1
       54 GETUPVAL                         R9 3
       55 GETTABLEKS                       R9 R9 K14 ["useCallback"]
       57 NEWCLOSURE                       R10 P1
       58 CAPTURE                          VAL R4
       59 CAPTURE                          UPVAL U5
       60 CAPTURE                          UPVAL U6
       61 CAPTURE                          UPVAL U7
       62 NEWTABLE                         R11 0 2
       64 GETTABLEKS                       R12 R4 K16 ["strokeStyle"]
       66 GETTABLEKS                       R13 R4 K17 ["strokeThickness"]
       68 SETLIST                          R11 R12 2 [1]
       70 CALL                             R9 2 1
       71 GETUPVAL                         R10 3
       72 GETTABLEKS                       R10 R10 K18 ["createElement"]
       74 GETUPVAL                         R11 3
       75 GETTABLEKS                       R11 R11 K19 ["Fragment"]
       77 NEWTABLE                         R12 0 0
       79 DUPTABLE                         R13 K22 [{"ControlIncrement", "ControlDecrement"}]
       80 GETUPVAL                         R14 3
       81 GETTABLEKS                       R14 R14 K18 ["createElement"]
       83 GETUPVAL                         R15 8
       84 DUPTABLE                         R16 K34 [{["onActivated"], ["isDisabled"], ["stateLayer"], ["padding"], ["Size"], ["backgroundStyle"], ["stroke"], ["tag"], ["LayoutOrder"] = 1, ["testId"]}]
       85 GETTABLEKS                       R17 R0 K35 ["increment"]
       87 GETTABLEKS                       R17 R17 K36 ["onClick"]
       89 SETTABLEKS                       R17 R16 K23 ["onActivated"]
       91 GETUPVAL                         R18 9
       92 GETTABLEKS                       R18 R18 K37 ["isBinding"]
       94 GETTABLEKS                       R19 R0 K35 ["increment"]
       96 GETTABLEKS                       R19 R19 K24 ["isDisabled"]
       98 CALL                             R18 1 1
       99 JUMPIFNOT                        R18 ; [+2]
      100 LOADB                            R17 0
      101 JUMP                             ; [+4]
      102 GETTABLEKS                       R17 R0 K35 ["increment"]
      104 GETTABLEKS                       R17 R17 K24 ["isDisabled"]
      106 SETTABLEKS                       R17 R16 K24 ["isDisabled"]
      108 DUPTABLE                         R17 K39 [{"affordance"}]
      109 GETUPVAL                         R18 5
      110 GETTABLEKS                       R19 R0 K35 ["increment"]
      112 GETTABLEKS                       R19 R19 K24 ["isDisabled"]
      114 DUPCLOSURE                       R20 K40 [PROTO_6]
      115 CAPTURE                          UPVAL U10
      116 CALL                             R18 2 1
      117 SETTABLEKS                       R18 R17 K38 ["affordance"]
      119 SETTABLEKS                       R17 R16 K25 ["stateLayer"]
      121 GETTABLEKS                       R17 R2 K41 ["button"]
      123 GETTABLEKS                       R17 R17 K26 ["padding"]
      125 SETTABLEKS                       R17 R16 K26 ["padding"]
      127 SETTABLEKS                       R7 R16 K27 ["Size"]
      129 GETUPVAL                         R18 11
      130 GETTABLEKS                       R18 R18 K42 ["FoundationTextInputRemoveBackgroundStyle"]
      132 JUMPIFNOT                        R18 ; [+2]
      133 LOADNIL                          R17
      134 JUMP                             ; [+8]
      135 GETUPVAL                         R17 5
      136 GETTABLEKS                       R18 R0 K35 ["increment"]
      138 GETTABLEKS                       R18 R18 K24 ["isDisabled"]
      140 NEWCLOSURE                       R19 P3
      141 CAPTURE                          VAL R8
      142 CALL                             R17 2 1
      143 SETTABLEKS                       R17 R16 K28 ["backgroundStyle"]
      145 MOVE                             R17 R9
      146 GETTABLEKS                       R18 R0 K35 ["increment"]
      148 GETTABLEKS                       R18 R18 K24 ["isDisabled"]
      150 CALL                             R17 1 1
      151 SETTABLEKS                       R17 R16 K29 ["stroke"]
      153 GETTABLEKS                       R17 R2 K13 ["splitButton"]
      155 GETTABLEKS                       R17 R17 K30 ["tag"]
      157 SETTABLEKS                       R17 R16 K30 ["tag"]
      159 LOADK                            R18 K43 ["%*--increment"]
      160 GETTABLEKS                       R20 R0 K33 ["testId"]
      162 NAMECALL                         R18 R18 K44 ["format"]
      164 CALL                             R18 2 1
      165 MOVE                             R17 R18
      166 SETTABLEKS                       R17 R16 K33 ["testId"]
      168 DUPTABLE                         R17 K46 [{"Icon"}]
      169 GETUPVAL                         R18 3
      170 GETTABLEKS                       R18 R18 K18 ["createElement"]
      172 GETUPVAL                         R19 12
      173 DUPTABLE                         R20 K51 [{"name", "size", "style", "AnchorPoint", "Position", "testId"}]
      174 GETUPVAL                         R21 13
      175 GETTABLEKS                       R21 R21 K45 ["Icon"]
      177 GETTABLEKS                       R21 R21 K52 ["PlusSmall"]
      179 SETTABLEKS                       R21 R20 K47 ["name"]
      181 GETTABLEKS                       R21 R0 K0 ["size"]
      183 SETTABLEKS                       R21 R20 K0 ["size"]
      185 GETUPVAL                         R21 5
      186 GETTABLEKS                       R22 R0 K35 ["increment"]
      188 GETTABLEKS                       R22 R22 K24 ["isDisabled"]
      190 DUPCLOSURE                       R23 K53 [PROTO_8]
      191 CAPTURE                          UPVAL U7
      192 CALL                             R21 2 1
      193 SETTABLEKS                       R21 R20 K48 ["style"]
      195 GETIMPORT                        R21 K56 [Vector2.new]
      197 LOADK                            R22 K57 [0.5]
      198 LOADK                            R23 K57 [0.5]
      199 CALL                             R21 2 1
      200 SETTABLEKS                       R21 R20 K49 ["AnchorPoint"]
      202 GETIMPORT                        R21 K59 [UDim2.fromScale]
      204 LOADK                            R22 K57 [0.5]
      205 LOADK                            R23 K57 [0.5]
      206 CALL                             R21 2 1
      207 SETTABLEKS                       R21 R20 K50 ["Position"]
      209 LOADK                            R22 K60 ["%*--increment-icon"]
      210 GETTABLEKS                       R24 R0 K33 ["testId"]
      212 NAMECALL                         R22 R22 K44 ["format"]
      214 CALL                             R22 2 1
      215 MOVE                             R21 R22
      216 SETTABLEKS                       R21 R20 K33 ["testId"]
      218 CALL                             R18 2 1
      219 SETTABLEKS                       R18 R17 K45 ["Icon"]
      221 CALL                             R14 3 1
      222 SETTABLEKS                       R14 R13 K20 ["ControlIncrement"]
      224 GETUPVAL                         R14 3
      225 GETTABLEKS                       R14 R14 K18 ["createElement"]
      227 GETUPVAL                         R15 8
      228 DUPTABLE                         R16 K62 [{["onActivated"], ["isDisabled"], ["stateLayer"], ["padding"], ["Size"], ["backgroundStyle"], ["stroke"], ["tag"], ["LayoutOrder"] = -1, ["testId"]}]
      229 GETTABLEKS                       R17 R0 K63 ["decrement"]
      231 GETTABLEKS                       R17 R17 K36 ["onClick"]
      233 SETTABLEKS                       R17 R16 K23 ["onActivated"]
      235 GETUPVAL                         R18 9
      236 GETTABLEKS                       R18 R18 K37 ["isBinding"]
      238 GETTABLEKS                       R19 R0 K63 ["decrement"]
      240 GETTABLEKS                       R19 R19 K24 ["isDisabled"]
      242 CALL                             R18 1 1
      243 JUMPIFNOT                        R18 ; [+2]
      244 LOADB                            R17 0
      245 JUMP                             ; [+4]
      246 GETTABLEKS                       R17 R0 K63 ["decrement"]
      248 GETTABLEKS                       R17 R17 K24 ["isDisabled"]
      250 SETTABLEKS                       R17 R16 K24 ["isDisabled"]
      252 DUPTABLE                         R17 K39 [{"affordance"}]
      253 GETUPVAL                         R18 5
      254 GETTABLEKS                       R19 R0 K63 ["decrement"]
      256 GETTABLEKS                       R19 R19 K24 ["isDisabled"]
      258 DUPCLOSURE                       R20 K64 [PROTO_9]
      259 CAPTURE                          UPVAL U10
      260 CALL                             R18 2 1
      261 SETTABLEKS                       R18 R17 K38 ["affordance"]
      263 SETTABLEKS                       R17 R16 K25 ["stateLayer"]
      265 GETTABLEKS                       R17 R2 K41 ["button"]
      267 GETTABLEKS                       R17 R17 K26 ["padding"]
      269 SETTABLEKS                       R17 R16 K26 ["padding"]
      271 SETTABLEKS                       R7 R16 K27 ["Size"]
      273 GETUPVAL                         R18 11
      274 GETTABLEKS                       R18 R18 K42 ["FoundationTextInputRemoveBackgroundStyle"]
      276 JUMPIFNOT                        R18 ; [+2]
      277 LOADNIL                          R17
      278 JUMP                             ; [+8]
      279 GETUPVAL                         R17 5
      280 GETTABLEKS                       R18 R0 K63 ["decrement"]
      282 GETTABLEKS                       R18 R18 K24 ["isDisabled"]
      284 NEWCLOSURE                       R19 P6
      285 CAPTURE                          VAL R8
      286 CALL                             R17 2 1
      287 SETTABLEKS                       R17 R16 K28 ["backgroundStyle"]
      289 MOVE                             R17 R9
      290 GETTABLEKS                       R18 R0 K63 ["decrement"]
      292 GETTABLEKS                       R18 R18 K24 ["isDisabled"]
      294 CALL                             R17 1 1
      295 SETTABLEKS                       R17 R16 K29 ["stroke"]
      297 GETTABLEKS                       R17 R2 K13 ["splitButton"]
      299 GETTABLEKS                       R17 R17 K30 ["tag"]
      301 SETTABLEKS                       R17 R16 K30 ["tag"]
      303 LOADK                            R18 K65 ["%*--decrement"]
      304 GETTABLEKS                       R20 R0 K33 ["testId"]
      306 NAMECALL                         R18 R18 K44 ["format"]
      308 CALL                             R18 2 1
      309 MOVE                             R17 R18
      310 SETTABLEKS                       R17 R16 K33 ["testId"]
      312 DUPTABLE                         R17 K46 [{"Icon"}]
      313 GETUPVAL                         R18 3
      314 GETTABLEKS                       R18 R18 K18 ["createElement"]
      316 GETUPVAL                         R19 12
      317 DUPTABLE                         R20 K51 [{"name", "size", "style", "AnchorPoint", "Position", "testId"}]
      318 GETUPVAL                         R21 13
      319 GETTABLEKS                       R21 R21 K45 ["Icon"]
      321 GETTABLEKS                       R21 R21 K66 ["MinusSmall"]
      323 SETTABLEKS                       R21 R20 K47 ["name"]
      325 GETTABLEKS                       R21 R0 K0 ["size"]
      327 SETTABLEKS                       R21 R20 K0 ["size"]
      329 GETUPVAL                         R21 5
      330 GETTABLEKS                       R22 R0 K63 ["decrement"]
      332 GETTABLEKS                       R22 R22 K24 ["isDisabled"]
      334 DUPCLOSURE                       R23 K67 [PROTO_11]
      335 CAPTURE                          UPVAL U7
      336 CALL                             R21 2 1
      337 SETTABLEKS                       R21 R20 K48 ["style"]
      339 GETIMPORT                        R21 K56 [Vector2.new]
      341 LOADK                            R22 K57 [0.5]
      342 LOADK                            R23 K57 [0.5]
      343 CALL                             R21 2 1
      344 SETTABLEKS                       R21 R20 K49 ["AnchorPoint"]
      346 GETIMPORT                        R21 K59 [UDim2.fromScale]
      348 LOADK                            R22 K57 [0.5]
      349 LOADK                            R23 K57 [0.5]
      350 CALL                             R21 2 1
      351 SETTABLEKS                       R21 R20 K50 ["Position"]
      353 LOADK                            R22 K68 ["%*--decrement-icon"]
      354 GETTABLEKS                       R24 R0 K33 ["testId"]
      356 NAMECALL                         R22 R22 K44 ["format"]
      358 CALL                             R22 2 1
      359 MOVE                             R21 R22
      360 SETTABLEKS                       R21 R20 K33 ["testId"]
      362 CALL                             R18 2 1
      363 SETTABLEKS                       R18 R17 K45 ["Icon"]
      365 CALL                             R14 3 1
      366 SETTABLEKS                       R14 R13 K21 ["ControlDecrement"]
      368 CALL                             R10 3 -1
      369 RETURN                           R10 -1

PROTO_13:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["Color"]
        4 GETTABLEKS                       R2 R2 K4 ["Stroke"]
        6 GETTABLEKS                       R2 R2 K5 ["Emphasis"]
        8 GETTABLEKS                       R2 R2 K0 ["Color3"]
       10 SETTABLEKS                       R2 R1 K0 ["Color3"]
       12 JUMPIFNOT                        R0 ; [+4]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K6 ["DISABLED_TRANSPARENCY"]
       16 JUMP                             ; [+1]
       17 LOADN                            R2 0
       18 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       20 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["increment"]
        4 GETTABLEKS                       R1 R1 K1 ["isDisabled"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_15:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["Color"]
        4 GETTABLEKS                       R2 R2 K4 ["Stroke"]
        6 GETTABLEKS                       R2 R2 K5 ["Emphasis"]
        8 GETTABLEKS                       R2 R2 K0 ["Color3"]
       10 SETTABLEKS                       R2 R1 K0 ["Color3"]
       12 JUMPIFNOT                        R0 ; [+4]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K6 ["DISABLED_TRANSPARENCY"]
       16 JUMP                             ; [+1]
       17 LOADN                            R2 0
       18 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       20 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["decrement"]
        4 GETTABLEKS                       R1 R1 K1 ["isDisabled"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R1
        4 GETTABLEKS                       R4 R0 K0 ["size"]
        6 GETTABLEKS                       R5 R0 K1 ["controlsVariant"]
        8 CALL                             R2 3 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U4
       17 NEWTABLE                         R5 0 2
       19 MOVE                             R6 R1
       20 GETTABLEKS                       R7 R0 K3 ["increment"]
       22 GETTABLEKS                       R7 R7 K4 ["isDisabled"]
       24 SETLIST                          R5 R6 2 [1]
       26 CALL                             R3 2 1
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       30 NEWCLOSURE                       R5 P1
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U4
       35 NEWTABLE                         R6 0 2
       37 MOVE                             R7 R1
       38 GETTABLEKS                       R8 R0 K5 ["decrement"]
       40 GETTABLEKS                       R8 R8 K4 ["isDisabled"]
       42 SETLIST                          R6 R7 2 [1]
       44 CALL                             R4 2 1
       45 GETUPVAL                         R5 2
       46 GETTABLEKS                       R5 R5 K6 ["createElement"]
       48 GETUPVAL                         R6 5
       49 DUPTABLE                         R7 K11 [{["tag"] = "col", ["Size"], ["LayoutOrder"]}]
       50 GETIMPORT                        R8 K14 [UDim2.new]
       52 LOADN                            R9 0
       53 GETTABLEKS                       R10 R2 K15 ["button"]
       55 GETTABLEKS                       R10 R10 K16 ["width"]
       57 LOADN                            R11 1
       58 LOADN                            R12 0
       59 CALL                             R8 4 1
       60 SETTABLEKS                       R8 R7 K9 ["Size"]
       62 GETTABLEKS                       R8 R0 K10 ["LayoutOrder"]
       64 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
       66 DUPTABLE                         R8 K19 [{"ControlIncrement", "ControlDecrement"}]
       67 GETUPVAL                         R9 2
       68 GETTABLEKS                       R9 R9 K6 ["createElement"]
       70 GETUPVAL                         R10 6
       71 DUPTABLE                         R11 K23 [{"onActivated", "isDisabled", "padding", "tag", "testId"}]
       72 GETTABLEKS                       R12 R0 K3 ["increment"]
       74 GETTABLEKS                       R12 R12 K24 ["onClick"]
       76 SETTABLEKS                       R12 R11 K20 ["onActivated"]
       78 GETUPVAL                         R13 7
       79 GETTABLEKS                       R13 R13 K25 ["isBinding"]
       81 GETTABLEKS                       R14 R0 K3 ["increment"]
       83 GETTABLEKS                       R14 R14 K4 ["isDisabled"]
       85 CALL                             R13 1 1
       86 JUMPIFNOT                        R13 ; [+2]
       87 LOADB                            R12 0
       88 JUMP                             ; [+4]
       89 GETTABLEKS                       R12 R0 K3 ["increment"]
       91 GETTABLEKS                       R12 R12 K4 ["isDisabled"]
       93 SETTABLEKS                       R12 R11 K4 ["isDisabled"]
       95 GETTABLEKS                       R12 R2 K15 ["button"]
       97 GETTABLEKS                       R12 R12 K21 ["padding"]
       99 SETTABLEKS                       R12 R11 K21 ["padding"]
      101 GETTABLEKS                       R12 R2 K26 ["upButton"]
      103 GETTABLEKS                       R12 R12 K7 ["tag"]
      105 SETTABLEKS                       R12 R11 K7 ["tag"]
      107 LOADK                            R13 K27 ["%*--increment"]
      108 GETTABLEKS                       R15 R0 K22 ["testId"]
      110 NAMECALL                         R13 R13 K28 ["format"]
      112 CALL                             R13 2 1
      113 MOVE                             R12 R13
      114 SETTABLEKS                       R12 R11 K22 ["testId"]
      116 DUPTABLE                         R12 K30 [{"Icon"}]
      117 GETUPVAL                         R13 2
      118 GETTABLEKS                       R13 R13 K6 ["createElement"]
      120 GETUPVAL                         R14 8
      121 DUPTABLE                         R15 K34 [{["Image"] = "component_assets/triangleUp_16", ["imageStyle"], ["tag"], ["testId"]}]
      122 SETTABLEKS                       R3 R15 K33 ["imageStyle"]
      124 GETTABLEKS                       R16 R2 K35 ["icon"]
      126 GETTABLEKS                       R16 R16 K7 ["tag"]
      128 SETTABLEKS                       R16 R15 K7 ["tag"]
      130 LOADK                            R17 K36 ["%*--increment-icon"]
      131 GETTABLEKS                       R19 R0 K22 ["testId"]
      133 NAMECALL                         R17 R17 K28 ["format"]
      135 CALL                             R17 2 1
      136 MOVE                             R16 R17
      137 SETTABLEKS                       R16 R15 K22 ["testId"]
      139 CALL                             R13 2 1
      140 SETTABLEKS                       R13 R12 K29 ["Icon"]
      142 CALL                             R9 3 1
      143 SETTABLEKS                       R9 R8 K17 ["ControlIncrement"]
      145 GETUPVAL                         R9 2
      146 GETTABLEKS                       R9 R9 K6 ["createElement"]
      148 GETUPVAL                         R10 6
      149 DUPTABLE                         R11 K37 [{"tag", "onActivated", "isDisabled", "padding", "testId"}]
      150 GETTABLEKS                       R12 R2 K38 ["downButton"]
      152 GETTABLEKS                       R12 R12 K7 ["tag"]
      154 SETTABLEKS                       R12 R11 K7 ["tag"]
      156 GETTABLEKS                       R12 R0 K5 ["decrement"]
      158 GETTABLEKS                       R12 R12 K24 ["onClick"]
      160 SETTABLEKS                       R12 R11 K20 ["onActivated"]
      162 GETUPVAL                         R13 7
      163 GETTABLEKS                       R13 R13 K25 ["isBinding"]
      165 GETTABLEKS                       R14 R0 K5 ["decrement"]
      167 GETTABLEKS                       R14 R14 K4 ["isDisabled"]
      169 CALL                             R13 1 1
      170 JUMPIFNOT                        R13 ; [+2]
      171 LOADB                            R12 0
      172 JUMP                             ; [+4]
      173 GETTABLEKS                       R12 R0 K5 ["decrement"]
      175 GETTABLEKS                       R12 R12 K4 ["isDisabled"]
      177 SETTABLEKS                       R12 R11 K4 ["isDisabled"]
      179 GETTABLEKS                       R12 R2 K15 ["button"]
      181 GETTABLEKS                       R12 R12 K21 ["padding"]
      183 SETTABLEKS                       R12 R11 K21 ["padding"]
      185 LOADK                            R13 K39 ["%*--decrement"]
      186 GETTABLEKS                       R15 R0 K22 ["testId"]
      188 NAMECALL                         R13 R13 K28 ["format"]
      190 CALL                             R13 2 1
      191 MOVE                             R12 R13
      192 SETTABLEKS                       R12 R11 K22 ["testId"]
      194 DUPTABLE                         R12 K30 [{"Icon"}]
      195 GETUPVAL                         R13 2
      196 GETTABLEKS                       R13 R13 K6 ["createElement"]
      198 GETUPVAL                         R14 8
      199 DUPTABLE                         R15 K41 [{["Image"] = "component_assets/triangleDown_16", ["imageStyle"], ["tag"], ["testId"]}]
      200 SETTABLEKS                       R4 R15 K33 ["imageStyle"]
      202 GETTABLEKS                       R16 R2 K35 ["icon"]
      204 GETTABLEKS                       R16 R16 K7 ["tag"]
      206 SETTABLEKS                       R16 R15 K7 ["tag"]
      208 LOADK                            R17 K42 ["%*--decrement-icon"]
      209 GETTABLEKS                       R19 R0 K22 ["testId"]
      211 NAMECALL                         R17 R17 K28 ["format"]
      213 CALL                             R17 2 1
      214 MOVE                             R16 R17
      215 SETTABLEKS                       R16 R15 K22 ["testId"]
      217 CALL                             R13 2 1
      218 SETTABLEKS                       R13 R12 K29 ["Icon"]
      220 CALL                             R9 3 1
      221 SETTABLEKS                       R9 R8 K18 ["ControlDecrement"]
      223 CALL                             R5 3 -1
      224 RETURN                           R5 -1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["controlsVariant"]
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
       21 GETTABLEKS                       R5 R1 K9 ["ReactIs"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Providers"]
       28 GETTABLEKS                       R6 R6 K11 ["Style"]
       30 GETTABLEKS                       R6 R6 K12 ["useTokens"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R6 R0 K13 ["Components"]
       35 GETIMPORT                        R7 K6 [require]
       37 GETTABLEKS                       R8 R0 K14 ["Utility"]
       39 GETTABLEKS                       R8 R8 K15 ["Flags"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K6 [require]
       44 GETTABLEKS                       R9 R0 K16 ["Constants"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K6 [require]
       49 GETTABLEKS                       R10 R6 K17 ["Icon"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K6 [require]
       54 GETTABLEKS                       R11 R6 K18 ["Image"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K6 [require]
       59 GETTABLEKS                       R12 R0 K13 ["Components"]
       61 GETTABLEKS                       R12 R12 K19 ["Types"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K6 [require]
       66 GETTABLEKS                       R13 R6 K20 ["View"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K6 [require]
       71 GETTABLEKS                       R14 R0 K14 ["Utility"]
       73 GETTABLEKS                       R14 R14 K21 ["blendTransparencies"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K6 [require]
       78 GETTABLEKS                       R15 R0 K14 ["Utility"]
       80 GETTABLEKS                       R15 R15 K22 ["getDisabledStyle"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K6 [require]
       85 GETTABLEKS                       R16 R0 K14 ["Utility"]
       87 GETTABLEKS                       R16 R16 K23 ["mapBindable"]
       89 CALL                             R15 1 1
       90 GETIMPORT                        R16 K6 [require]
       92 GETTABLEKS                       R17 R0 K14 ["Utility"]
       94 GETTABLEKS                       R17 R17 K24 ["withCommonProps"]
       96 CALL                             R16 1 1
       97 GETIMPORT                        R17 K6 [require]
       99 GETTABLEKS                       R18 R6 K25 ["NumberInput"]
      101 GETTABLEKS                       R18 R18 K26 ["useNumberInputVariants"]
      103 CALL                             R17 1 1
      104 GETIMPORT                        R18 K6 [require]
      106 GETTABLEKS                       R19 R6 K27 ["TextInput"]
      108 GETTABLEKS                       R19 R19 K28 ["useTextInputVariants"]
      110 CALL                             R18 1 1
      111 GETIMPORT                        R19 K6 [require]
      113 GETTABLEKS                       R20 R0 K29 ["Enums"]
      115 GETTABLEKS                       R20 R20 K30 ["InputSize"]
      117 CALL                             R19 1 1
      118 GETIMPORT                        R20 K6 [require]
      120 GETTABLEKS                       R21 R0 K29 ["Enums"]
      122 GETTABLEKS                       R21 R21 K31 ["InputVariant"]
      124 CALL                             R20 1 1
      125 GETIMPORT                        R21 K6 [require]
      127 GETTABLEKS                       R22 R0 K29 ["Enums"]
      129 GETTABLEKS                       R22 R22 K32 ["NumberInputControlsVariant"]
      131 CALL                             R21 1 1
      132 GETIMPORT                        R22 K6 [require]
      134 GETTABLEKS                       R23 R0 K29 ["Enums"]
      136 GETTABLEKS                       R23 R23 K33 ["StateLayerAffordance"]
      138 CALL                             R22 1 1
      139 DUPCLOSURE                       R23 K34 [PROTO_2]
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R4
      145 CAPTURE                          VAL R15
      146 DUPCLOSURE                       R24 K35 [PROTO_12]
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R18
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R13
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R22
      158 CAPTURE                          VAL R7
      159 CAPTURE                          VAL R9
      160 CAPTURE                          VAL R2
      161 DUPCLOSURE                       R25 K36 [PROTO_17]
      162 CAPTURE                          VAL R5
      163 CAPTURE                          VAL R17
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R15
      166 CAPTURE                          VAL R8
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R23
      169 CAPTURE                          VAL R4
      170 CAPTURE                          VAL R10
      171 DUPCLOSURE                       R26 K37 [PROTO_18]
      172 CAPTURE                          VAL R21
      173 CAPTURE                          VAL R3
      174 CAPTURE                          VAL R25
      175 CAPTURE                          VAL R24
      176 RETURN                           R26 1
