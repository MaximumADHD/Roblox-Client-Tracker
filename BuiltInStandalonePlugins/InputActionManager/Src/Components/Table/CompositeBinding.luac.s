PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["bindings"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 NEWTABLE                         R6 0 1
       10 MOVE                             R7 R5
       11 SETLIST                          R6 R7 1 [1]
       13 SETTABLE                         R6 R0 R4
       14 FORGLOOP                         R1 2 ; [-7]
       16 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["name"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADN                            R0 1
        5 RETURN                           R0 1
        6 LOADN                            R0 2
        7 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["action"]
        4 GETTABLEKS                       R2 R2 K1 ["type"]
        6 GETTABLE                         R0 R1 R2
        7 JUMPIF                           R0 ; [+2]
        8 NEWTABLE                         R0 0 0
       10 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["isRoot"]
        5 JUMPIFNOTEQKB                    R3 TRUE ; [+7]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K1 ["action"]
       10 GETTABLEKS                       R2 R2 K2 ["type"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R2
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K3 ["bindings"]
       17 LOADK                            R4 K4 ["Composite"]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K5 ["onCreated"]
       21 JUMPIFNOTEQKNIL                  R6 ; [+2]
       23 LOADB                            R5 0 +1
       24 LOADB                            R5 1
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K1 ["action"]
       28 GETTABLEKS                       R6 R6 K6 ["enabled"]
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K7 ["context"]
       33 GETTABLEKS                       R7 R7 K6 ["enabled"]
       35 CALL                             R0 7 -1
       36 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["createMenu"]
        6 RETURN                           R0 1
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R1 3
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K0 ["createMenu"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K1 ["bindings"]
       15 CALL                             R0 3 -1
       16 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["createNextOrder"]
       10 CALL                             R2 0 1
       11 GETUPVAL                         R4 3
       12 CALL                             R4 0 1
       13 JUMPIFNOT                        R4 ; [+3]
       14 GETTABLEKS                       R3 R0 K3 ["disabled"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R3
       18 GETUPVAL                         R4 4
       19 GETTABLEKS                       R5 R0 K4 ["bindings"]
       21 GETTABLEKS                       R6 R0 K5 ["isRoot"]
       23 GETTABLEKS                       R7 R0 K6 ["onBindingEditCommand"]
       25 GETTABLEKS                       R8 R0 K7 ["onBindingCreateCommand"]
       27 GETTABLEKS                       R9 R0 K8 ["action"]
       29 GETTABLEKS                       R9 R9 K9 ["uuid"]
       31 GETTABLEKS                       R10 R0 K10 ["LayoutOrder"]
       33 LOADK                            R11 K11 ["Composite"]
       34 CALL                             R4 7 1
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K12 ["useMemo"]
       38 NEWCLOSURE                       R6 P0
       39 CAPTURE                          VAL R0
       40 NEWTABLE                         R7 0 1
       42 GETTABLEKS                       R8 R0 K4 ["bindings"]
       44 SETLIST                          R7 R8 1 [1]
       46 CALL                             R5 2 1
       47 GETUPVAL                         R6 0
       48 GETTABLEKS                       R6 R6 K12 ["useMemo"]
       50 NEWCLOSURE                       R7 P1
       51 CAPTURE                          VAL R0
       52 NEWTABLE                         R8 0 1
       54 GETTABLEKS                       R9 R0 K13 ["name"]
       56 SETLIST                          R8 R9 1 [1]
       58 CALL                             R6 2 1
       59 GETUPVAL                         R7 0
       60 GETTABLEKS                       R7 R7 K12 ["useMemo"]
       62 NEWCLOSURE                       R8 P2
       63 CAPTURE                          UPVAL U5
       64 CAPTURE                          VAL R0
       65 NEWTABLE                         R9 0 1
       67 GETTABLEKS                       R10 R0 K8 ["action"]
       69 GETTABLEKS                       R10 R10 K14 ["type"]
       71 SETLIST                          R9 R10 1 [1]
       73 CALL                             R7 2 1
       74 GETUPVAL                         R8 0
       75 GETTABLEKS                       R8 R8 K12 ["useMemo"]
       77 NEWCLOSURE                       R9 P3
       78 CAPTURE                          UPVAL U6
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R0
       81 NEWTABLE                         R10 0 7
       83 MOVE                             R11 R1
       84 GETTABLEKS                       R12 R0 K15 ["onCreated"]
       86 GETTABLEKS                       R13 R0 K8 ["action"]
       88 GETTABLEKS                       R13 R13 K14 ["type"]
       90 GETTABLEKS                       R14 R0 K8 ["action"]
       92 GETTABLEKS                       R14 R14 K16 ["enabled"]
       94 GETTABLEKS                       R15 R0 K17 ["context"]
       96 GETTABLEKS                       R15 R15 K16 ["enabled"]
       98 GETTABLEKS                       R16 R0 K5 ["isRoot"]
      100 GETTABLEKS                       R17 R0 K4 ["bindings"]
      102 SETLIST                          R10 R11 7 [1]
      104 CALL                             R8 2 1
      105 GETUPVAL                         R9 0
      106 GETTABLEKS                       R9 R9 K12 ["useMemo"]
      108 NEWCLOSURE                       R10 P4
      109 CAPTURE                          UPVAL U7
      110 CAPTURE                          VAL R0
      111 CAPTURE                          UPVAL U8
      112 CAPTURE                          VAL R1
      113 NEWTABLE                         R11 0 3
      115 MOVE                             R12 R1
      116 GETTABLEKS                       R13 R0 K18 ["createMenu"]
      118 GETTABLEKS                       R14 R0 K4 ["bindings"]
      120 SETLIST                          R11 R12 3 [1]
      122 CALL                             R9 2 1
      123 NEWTABLE                         R10 4 0
      125 GETUPVAL                         R11 0
      126 GETTABLEKS                       R11 R11 K19 ["createElement"]
      128 GETUPVAL                         R12 9
      129 DUPTABLE                         R13 K22 [{"bindings", "LayoutOrder", "nodeProps", "previousBindings"}]
      130 SETTABLEKS                       R5 R13 K4 ["bindings"]
      132 MOVE                             R14 R2
      133 CALL                             R14 0 1
      134 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
      136 DUPTABLE                         R14 K30 [{"action", "createMenu", "depth", "disabled", "editMenu", "expanded", "icon", "name", "onCreateMenuItemSelected", "onEditMenuItemSelected", "setExpanded"}]
      137 GETTABLEKS                       R15 R0 K8 ["action"]
      139 SETTABLEKS                       R15 R14 K8 ["action"]
      141 SETTABLEKS                       R9 R14 K18 ["createMenu"]
      143 SETTABLEKS                       R6 R14 K23 ["depth"]
      145 SETTABLEKS                       R3 R14 K3 ["disabled"]
      147 SETTABLEKS                       R8 R14 K24 ["editMenu"]
      149 LOADB                            R15 1
      150 GETTABLEKS                       R16 R0 K15 ["onCreated"]
      152 JUMPIFNOTEQKNIL                  R16 ; [+3]
      154 GETTABLEKS                       R15 R4 K25 ["expanded"]
      156 SETTABLEKS                       R15 R14 K25 ["expanded"]
      158 GETTABLEKS                       R16 R0 K13 ["name"]
      160 JUMPIFNOT                        R16 ; [+2]
      161 LOADK                            R15 K31 ["InputAction"]
      162 JUMP                             ; [+1]
      163 LOADK                            R15 K32 ["InputBinding"]
      164 SETTABLEKS                       R15 R14 K26 ["icon"]
      166 GETTABLEKS                       R15 R0 K13 ["name"]
      168 JUMPIF                           R15 ; [+5]
      169 LOADK                            R17 K33 ["Binding"]
      170 LOADK                            R18 K11 ["Composite"]
      171 NAMECALL                         R15 R1 K34 ["getText"]
      173 CALL                             R15 3 1
      174 SETTABLEKS                       R15 R14 K13 ["name"]
      176 GETUPVAL                         R16 7
      177 CALL                             R16 0 1
      178 JUMPIFNOT                        R16 ; [+3]
      179 GETTABLEKS                       R15 R4 K27 ["onCreateMenuItemSelected"]
      181 JUMP                             ; [+2]
      182 GETTABLEKS                       R15 R0 K7 ["onBindingCreateCommand"]
      184 SETTABLEKS                       R15 R14 K27 ["onCreateMenuItemSelected"]
      186 GETTABLEKS                       R15 R4 K28 ["onEditMenuItemSelected"]
      188 SETTABLEKS                       R15 R14 K28 ["onEditMenuItemSelected"]
      190 GETTABLEKS                       R16 R0 K15 ["onCreated"]
      192 JUMPIFNOTEQKNIL                  R16 ; [+4]
      194 GETTABLEKS                       R15 R4 K29 ["setExpanded"]
      196 JUMP                             ; [+1]
      197 LOADNIL                          R15
      198 SETTABLEKS                       R15 R14 K29 ["setExpanded"]
      200 SETTABLEKS                       R14 R13 K20 ["nodeProps"]
      202 GETTABLEKS                       R14 R0 K21 ["previousBindings"]
      204 SETTABLEKS                       R14 R13 K21 ["previousBindings"]
      206 CALL                             R11 2 1
      207 SETTABLEKS                       R11 R10 K35 ["header"]
      209 GETTABLEKS                       R11 R4 K25 ["expanded"]
      211 JUMPIF                           R11 ; [+3]
      212 GETTABLEKS                       R11 R0 K15 ["onCreated"]
      214 JUMPIFNOT                        R11 ; [+183]
      215 GETTABLEKS                       R11 R4 K36 ["showPrimaryModifier"]
      217 JUMPIFNOT                        R11 ; [+59]
      218 GETUPVAL                         R11 0
      219 GETTABLEKS                       R11 R11 K19 ["createElement"]
      221 GETUPVAL                         R12 10
      222 DUPTABLE                         R13 K41 [{["bindings"], ["index"], ["LayoutOrder"], ["nodeProps"], ["onCreated"], ["previousBindings"], ["property"] = "primaryModifier", ["validBindingsBySchema"]}]
      223 GETTABLEKS                       R14 R0 K4 ["bindings"]
      225 SETTABLEKS                       R14 R13 K4 ["bindings"]
      227 GETTABLEKS                       R14 R0 K37 ["index"]
      229 SETTABLEKS                       R14 R13 K37 ["index"]
      231 MOVE                             R14 R2
      232 CALL                             R14 0 1
      233 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
      235 DUPTABLE                         R14 K42 [{["action"], ["depth"], ["disabled"], ["editMenu"], ["icon"] = "InputBinding", ["name"], ["onEditMenuItemSelected"]}]
      236 GETTABLEKS                       R15 R0 K8 ["action"]
      238 SETTABLEKS                       R15 R14 K8 ["action"]
      240 ADDK                             R15 R6 K43 [1]
      241 SETTABLEKS                       R15 R14 K23 ["depth"]
      243 SETTABLEKS                       R3 R14 K3 ["disabled"]
      245 GETTABLEKS                       R15 R4 K44 ["primaryModifierMenu"]
      247 SETTABLEKS                       R15 R14 K24 ["editMenu"]
      249 LOADK                            R17 K33 ["Binding"]
      250 LOADK                            R18 K45 ["PrimaryModifier"]
      251 NAMECALL                         R15 R1 K34 ["getText"]
      253 CALL                             R15 3 1
      254 SETTABLEKS                       R15 R14 K13 ["name"]
      256 GETTABLEKS                       R15 R4 K46 ["onPrimaryModifierMenuItemSelected"]
      258 SETTABLEKS                       R15 R14 K28 ["onEditMenuItemSelected"]
      260 SETTABLEKS                       R14 R13 K20 ["nodeProps"]
      262 GETTABLEKS                       R14 R0 K15 ["onCreated"]
      264 SETTABLEKS                       R14 R13 K15 ["onCreated"]
      266 GETTABLEKS                       R14 R0 K21 ["previousBindings"]
      268 SETTABLEKS                       R14 R13 K21 ["previousBindings"]
      270 GETTABLEKS                       R14 R0 K40 ["validBindingsBySchema"]
      272 SETTABLEKS                       R14 R13 K40 ["validBindingsBySchema"]
      274 CALL                             R11 2 1
      275 SETTABLEKS                       R11 R10 K39 ["primaryModifier"]
      277 GETTABLEKS                       R11 R4 K47 ["showSecondaryModifier"]
      279 JUMPIFNOT                        R11 ; [+59]
      280 GETUPVAL                         R11 0
      281 GETTABLEKS                       R11 R11 K19 ["createElement"]
      283 GETUPVAL                         R12 10
      284 DUPTABLE                         R13 K49 [{["bindings"], ["index"], ["LayoutOrder"], ["nodeProps"], ["onCreated"], ["previousBindings"], ["property"] = "secondaryModifier", ["validBindingsBySchema"]}]
      285 GETTABLEKS                       R14 R0 K4 ["bindings"]
      287 SETTABLEKS                       R14 R13 K4 ["bindings"]
      289 GETTABLEKS                       R14 R0 K37 ["index"]
      291 SETTABLEKS                       R14 R13 K37 ["index"]
      293 MOVE                             R14 R2
      294 CALL                             R14 0 1
      295 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
      297 DUPTABLE                         R14 K42 [{["action"], ["depth"], ["disabled"], ["editMenu"], ["icon"] = "InputBinding", ["name"], ["onEditMenuItemSelected"]}]
      298 GETTABLEKS                       R15 R0 K8 ["action"]
      300 SETTABLEKS                       R15 R14 K8 ["action"]
      302 ADDK                             R15 R6 K43 [1]
      303 SETTABLEKS                       R15 R14 K23 ["depth"]
      305 SETTABLEKS                       R3 R14 K3 ["disabled"]
      307 GETTABLEKS                       R15 R4 K50 ["secondaryModifierMenu"]
      309 SETTABLEKS                       R15 R14 K24 ["editMenu"]
      311 LOADK                            R17 K33 ["Binding"]
      312 LOADK                            R18 K51 ["SecondaryModifier"]
      313 NAMECALL                         R15 R1 K34 ["getText"]
      315 CALL                             R15 3 1
      316 SETTABLEKS                       R15 R14 K13 ["name"]
      318 GETTABLEKS                       R15 R4 K52 ["onSecondaryModifierMenuItemSelected"]
      320 SETTABLEKS                       R15 R14 K28 ["onEditMenuItemSelected"]
      322 SETTABLEKS                       R14 R13 K20 ["nodeProps"]
      324 GETTABLEKS                       R14 R0 K15 ["onCreated"]
      326 SETTABLEKS                       R14 R13 K15 ["onCreated"]
      328 GETTABLEKS                       R14 R0 K21 ["previousBindings"]
      330 SETTABLEKS                       R14 R13 K21 ["previousBindings"]
      332 GETTABLEKS                       R14 R0 K40 ["validBindingsBySchema"]
      334 SETTABLEKS                       R14 R13 K40 ["validBindingsBySchema"]
      336 CALL                             R11 2 1
      337 SETTABLEKS                       R11 R10 K48 ["secondaryModifier"]
      339 MOVE                             R11 R7
      340 LOADNIL                          R12
      341 LOADNIL                          R13
      342 FORGPREP                         R11
      343 GETUPVAL                         R16 0
      344 GETTABLEKS                       R16 R16 K19 ["createElement"]
      346 GETUPVAL                         R17 10
      347 DUPTABLE                         R18 K53 [{"bindings", "index", "LayoutOrder", "nodeProps", "onCreated", "previousBindings", "property", "validBindingsBySchema"}]
      348 GETTABLEKS                       R19 R0 K4 ["bindings"]
      350 SETTABLEKS                       R19 R18 K4 ["bindings"]
      352 GETTABLEKS                       R19 R0 K37 ["index"]
      354 SETTABLEKS                       R19 R18 K37 ["index"]
      356 MOVE                             R19 R2
      357 CALL                             R19 0 1
      358 SETTABLEKS                       R19 R18 K10 ["LayoutOrder"]
      360 DUPTABLE                         R19 K54 [{["action"], ["depth"], ["disabled"], ["icon"] = "InputBinding", ["name"]}]
      361 GETTABLEKS                       R20 R0 K8 ["action"]
      363 SETTABLEKS                       R20 R19 K8 ["action"]
      365 ADDK                             R20 R6 K43 [1]
      366 SETTABLEKS                       R20 R19 K23 ["depth"]
      368 SETTABLEKS                       R3 R19 K3 ["disabled"]
      370 LOADK                            R22 K33 ["Binding"]
      371 GETUPVAL                         R24 11
      372 GETTABLE                         R23 R24 R15
      373 NAMECALL                         R20 R1 K34 ["getText"]
      375 CALL                             R20 3 1
      376 SETTABLEKS                       R20 R19 K13 ["name"]
      378 SETTABLEKS                       R19 R18 K20 ["nodeProps"]
      380 GETTABLEKS                       R19 R0 K15 ["onCreated"]
      382 SETTABLEKS                       R19 R18 K15 ["onCreated"]
      384 GETTABLEKS                       R19 R0 K21 ["previousBindings"]
      386 SETTABLEKS                       R19 R18 K21 ["previousBindings"]
      388 SETTABLEKS                       R15 R18 K38 ["property"]
      390 GETTABLEKS                       R19 R0 K40 ["validBindingsBySchema"]
      392 SETTABLEKS                       R19 R18 K40 ["validBindingsBySchema"]
      394 CALL                             R16 2 1
      395 SETTABLE                         R16 R10 R15
      396 FORGLOOP                         R11 2 ; [-54]
      398 GETUPVAL                         R11 0
      399 GETTABLEKS                       R11 R11 K19 ["createElement"]
      401 GETUPVAL                         R12 12
      402 DUPTABLE                         R13 K58 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      403 GETTABLEKS                       R14 R0 K10 ["LayoutOrder"]
      405 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
      407 LOADK                            R14 K59 ["composite-binding-%*"]
      408 GETTABLEKS                       R16 R0 K37 ["index"]
      410 NAMECALL                         R14 R14 K60 ["format"]
      412 CALL                             R14 2 1
      413 SETTABLEKS                       R14 R13 K57 ["testId"]
      415 MOVE                             R14 R10
      416 CALL                             R11 3 -1
      417 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Contexts"]
       37 GETTABLEKS                       R5 R5 K12 ["Localization"]
       39 GETTABLEKS                       R6 R3 K13 ["View"]
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K14 ["Src"]
       45 GETTABLEKS                       R8 R8 K15 ["Components"]
       47 GETTABLEKS                       R8 R8 K16 ["Table"]
       49 GETTABLEKS                       R8 R8 K17 ["Row"]
       51 GETTABLEKS                       R8 R8 K18 ["Standard"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K14 ["Src"]
       58 GETTABLEKS                       R9 R9 K15 ["Components"]
       60 GETTABLEKS                       R9 R9 K16 ["Table"]
       62 GETTABLEKS                       R9 R9 K17 ["Row"]
       64 GETTABLEKS                       R9 R9 K19 ["Summary"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K14 ["Src"]
       71 GETTABLEKS                       R10 R10 K20 ["Types"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K14 ["Src"]
       78 GETTABLEKS                       R11 R11 K21 ["Util"]
       80 GETTABLEKS                       R11 R11 K22 ["Constants"]
       82 GETTABLEKS                       R11 R11 K23 ["DirectionPropertyNames"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K14 ["Src"]
       89 GETTABLEKS                       R12 R12 K21 ["Util"]
       91 GETTABLEKS                       R12 R12 K24 ["Menus"]
       93 GETTABLEKS                       R12 R12 K25 ["getCreateModifierMenu"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R13 R0 K14 ["Src"]
      100 GETTABLEKS                       R13 R13 K21 ["Util"]
      102 GETTABLEKS                       R13 R13 K24 ["Menus"]
      104 GETTABLEKS                       R13 R13 K26 ["getEditMenu"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K14 ["Src"]
      111 GETTABLEKS                       R14 R14 K27 ["Hooks"]
      113 GETTABLEKS                       R14 R14 K28 ["Binding"]
      115 GETTABLEKS                       R14 R14 K29 ["useBinding"]
      117 CALL                             R13 1 1
      118 GETIMPORT                        R14 K5 [require]
      120 GETTABLEKS                       R15 R0 K14 ["Src"]
      122 GETTABLEKS                       R15 R15 K30 ["Flags"]
      124 GETTABLEKS                       R15 R15 K31 ["getFFlagIAMBooleanProperties"]
      126 CALL                             R14 1 1
      127 GETTABLEKS                       R15 R0 K14 ["Src"]
      129 GETTABLEKS                       R15 R15 K30 ["Flags"]
      131 GETIMPORT                        R16 K5 [require]
      133 GETTABLEKS                       R17 R15 K32 ["getFFlagIAMImprovedModifierMenu"]
      135 CALL                             R16 1 1
      136 DUPTABLE                         R17 K45 [{["up"] = "Up", ["left"] = "Left", ["forward"] = "Forward", ["down"] = "Down", ["right"] = "Right", ["backward"] = "Backward"}]
      137 DUPCLOSURE                       R18 K46 [PROTO_5]
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R7
      149 CAPTURE                          VAL R17
      150 CAPTURE                          VAL R6
      151 RETURN                           R18 1
