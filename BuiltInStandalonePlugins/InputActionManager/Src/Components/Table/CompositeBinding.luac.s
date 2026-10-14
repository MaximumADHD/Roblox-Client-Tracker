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
        1 JUMPIFNOT                        R0 ; [+3]
        2 NEWTABLE                         R0 0 0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R3 3
        8 GETTABLEKS                       R3 R3 K0 ["isRoot"]
       10 JUMPIFNOTEQKB                    R3 TRUE ; [+7]
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K1 ["action"]
       15 GETTABLEKS                       R2 R2 K2 ["type"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K3 ["bindings"]
       22 LOADK                            R4 K4 ["Composite"]
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R6 R6 K5 ["onCreated"]
       26 JUMPIFNOTEQKNIL                  R6 ; [+2]
       28 LOADB                            R5 0 +1
       29 LOADB                            R5 1
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R6 R6 K1 ["action"]
       33 GETTABLEKS                       R6 R6 K6 ["enabled"]
       35 GETUPVAL                         R7 3
       36 GETTABLEKS                       R7 R7 K7 ["context"]
       38 GETTABLEKS                       R7 R7 K6 ["enabled"]
       40 GETUPVAL                         R9 3
       41 GETTABLEKS                       R9 R9 K0 ["isRoot"]
       43 JUMPIFNOTEQKB                    R9 TRUE ; [+5]
       45 GETUPVAL                         R8 3
       46 GETTABLEKS                       R8 R8 K8 ["scriptableBinding"]
       48 JUMP                             ; [+1]
       49 LOADNIL                          R8
       50 CALL                             R0 8 -1
       51 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 GETTABLEKS                       R2 R2 K0 ["createMenu"]
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R3 R3 K1 ["bindings"]
       12 CALL                             R0 3 -1
       13 RETURN                           R0 -1

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
       18 GETUPVAL                         R5 4
       19 CALL                             R5 0 1
       20 JUMPIFNOT                        R5 ; [+5]
       21 GETTABLEKS                       R4 R0 K4 ["action"]
       23 GETTABLEKS                       R4 R4 K5 ["defaultPlayerScript"]
       25 JUMPIF                           R4 ; [+1]
       26 LOADNIL                          R4
       27 GETUPVAL                         R5 5
       28 GETTABLEKS                       R6 R0 K6 ["bindings"]
       30 GETTABLEKS                       R7 R0 K7 ["isRoot"]
       32 GETTABLEKS                       R8 R0 K8 ["onBindingEditCommand"]
       34 GETTABLEKS                       R9 R0 K9 ["onBindingCreateCommand"]
       36 GETTABLEKS                       R10 R0 K4 ["action"]
       38 GETTABLEKS                       R10 R10 K10 ["uuid"]
       40 GETTABLEKS                       R11 R0 K11 ["LayoutOrder"]
       42 LOADK                            R12 K12 ["Composite"]
       43 CALL                             R5 7 1
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R6 R6 K13 ["useMemo"]
       47 NEWCLOSURE                       R7 P0
       48 CAPTURE                          VAL R0
       49 NEWTABLE                         R8 0 1
       51 GETTABLEKS                       R9 R0 K6 ["bindings"]
       53 SETLIST                          R8 R9 1 [1]
       55 CALL                             R6 2 1
       56 GETUPVAL                         R7 0
       57 GETTABLEKS                       R7 R7 K13 ["useMemo"]
       59 NEWCLOSURE                       R8 P1
       60 CAPTURE                          VAL R0
       61 NEWTABLE                         R9 0 1
       63 GETTABLEKS                       R10 R0 K14 ["name"]
       65 SETLIST                          R9 R10 1 [1]
       67 CALL                             R7 2 1
       68 GETUPVAL                         R8 0
       69 GETTABLEKS                       R8 R8 K13 ["useMemo"]
       71 NEWCLOSURE                       R9 P2
       72 CAPTURE                          UPVAL U6
       73 CAPTURE                          VAL R0
       74 NEWTABLE                         R10 0 1
       76 GETTABLEKS                       R11 R0 K4 ["action"]
       78 GETTABLEKS                       R11 R11 K15 ["type"]
       80 SETLIST                          R10 R11 1 [1]
       82 CALL                             R8 2 1
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R9 R9 K13 ["useMemo"]
       86 NEWCLOSURE                       R10 P3
       87 CAPTURE                          VAL R4
       88 CAPTURE                          UPVAL U7
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R0
       91 NEWTABLE                         R11 0 9
       93 MOVE                             R12 R1
       94 GETTABLEKS                       R13 R0 K16 ["onCreated"]
       96 GETTABLEKS                       R14 R0 K4 ["action"]
       98 GETTABLEKS                       R14 R14 K15 ["type"]
      100 GETTABLEKS                       R15 R0 K4 ["action"]
      102 GETTABLEKS                       R15 R15 K17 ["enabled"]
      104 GETTABLEKS                       R16 R0 K18 ["context"]
      106 GETTABLEKS                       R16 R16 K17 ["enabled"]
      108 GETTABLEKS                       R17 R0 K7 ["isRoot"]
      110 GETTABLEKS                       R18 R0 K6 ["bindings"]
      112 MOVE                             R19 R4
      113 GETTABLEKS                       R20 R0 K19 ["scriptableBinding"]
      115 SETLIST                          R11 R12 9 [1]
      117 CALL                             R9 2 1
      118 GETUPVAL                         R10 0
      119 GETTABLEKS                       R10 R10 K13 ["useMemo"]
      121 NEWCLOSURE                       R11 P4
      122 CAPTURE                          VAL R4
      123 CAPTURE                          UPVAL U8
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R0
      126 NEWTABLE                         R12 0 4
      128 MOVE                             R13 R1
      129 GETTABLEKS                       R14 R0 K20 ["createMenu"]
      131 GETTABLEKS                       R15 R0 K6 ["bindings"]
      133 MOVE                             R16 R4
      134 SETLIST                          R12 R13 4 [1]
      136 CALL                             R10 2 1
      137 NEWTABLE                         R11 4 0
      139 GETUPVAL                         R12 0
      140 GETTABLEKS                       R12 R12 K21 ["createElement"]
      142 GETUPVAL                         R13 9
      143 DUPTABLE                         R14 K24 [{"bindings", "LayoutOrder", "nodeProps", "previousBindings"}]
      144 SETTABLEKS                       R6 R14 K6 ["bindings"]
      146 MOVE                             R15 R2
      147 CALL                             R15 0 1
      148 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      150 DUPTABLE                         R15 K33 [{"action", "anchorRef", "createMenu", "depth", "disabled", "editMenu", "expanded", "icon", "name", "onCreateMenuItemSelected", "onEditMenuItemSelected", "setExpanded"}]
      151 GETTABLEKS                       R16 R0 K4 ["action"]
      153 SETTABLEKS                       R16 R15 K4 ["action"]
      155 GETTABLEKS                       R16 R0 K25 ["anchorRef"]
      157 SETTABLEKS                       R16 R15 K25 ["anchorRef"]
      159 SETTABLEKS                       R10 R15 K20 ["createMenu"]
      161 SETTABLEKS                       R7 R15 K26 ["depth"]
      163 SETTABLEKS                       R3 R15 K3 ["disabled"]
      165 SETTABLEKS                       R9 R15 K27 ["editMenu"]
      167 JUMPIFNOT                        R4 ; [+2]
      168 LOADNIL                          R16
      169 JUMP                             ; [+7]
      170 LOADB                            R16 1
      171 GETTABLEKS                       R17 R0 K16 ["onCreated"]
      173 JUMPIFNOTEQKNIL                  R17 ; [+3]
      175 GETTABLEKS                       R16 R5 K28 ["expanded"]
      177 SETTABLEKS                       R16 R15 K28 ["expanded"]
      179 GETTABLEKS                       R17 R0 K14 ["name"]
      181 JUMPIFNOT                        R17 ; [+2]
      182 LOADK                            R16 K34 ["InputAction"]
      183 JUMP                             ; [+1]
      184 LOADK                            R16 K35 ["InputBinding"]
      185 SETTABLEKS                       R16 R15 K29 ["icon"]
      187 GETTABLEKS                       R16 R0 K14 ["name"]
      189 JUMPIF                           R16 ; [+5]
      190 LOADK                            R18 K36 ["Binding"]
      191 LOADK                            R19 K12 ["Composite"]
      192 NAMECALL                         R16 R1 K37 ["getText"]
      194 CALL                             R16 3 1
      195 SETTABLEKS                       R16 R15 K14 ["name"]
      197 JUMPIFNOT                        R4 ; [+2]
      198 LOADNIL                          R16
      199 JUMP                             ; [+2]
      200 GETTABLEKS                       R16 R5 K30 ["onCreateMenuItemSelected"]
      202 SETTABLEKS                       R16 R15 K30 ["onCreateMenuItemSelected"]
      204 JUMPIFNOT                        R4 ; [+2]
      205 LOADNIL                          R16
      206 JUMP                             ; [+2]
      207 GETTABLEKS                       R16 R5 K31 ["onEditMenuItemSelected"]
      209 SETTABLEKS                       R16 R15 K31 ["onEditMenuItemSelected"]
      211 JUMPIF                           R4 ; [+4]
      212 GETTABLEKS                       R17 R0 K16 ["onCreated"]
      214 JUMPIFEQKNIL                     R17 ; [+3]
      216 LOADNIL                          R16
      217 JUMP                             ; [+2]
      218 GETTABLEKS                       R16 R5 K32 ["setExpanded"]
      220 SETTABLEKS                       R16 R15 K32 ["setExpanded"]
      222 SETTABLEKS                       R15 R14 K22 ["nodeProps"]
      224 GETTABLEKS                       R15 R0 K23 ["previousBindings"]
      226 SETTABLEKS                       R15 R14 K23 ["previousBindings"]
      228 CALL                             R12 2 1
      229 SETTABLEKS                       R12 R11 K38 ["header"]
      231 JUMPIF                           R4 ; [+189]
      232 GETTABLEKS                       R12 R5 K28 ["expanded"]
      234 JUMPIF                           R12 ; [+3]
      235 GETTABLEKS                       R12 R0 K16 ["onCreated"]
      237 JUMPIFNOT                        R12 ; [+183]
      238 GETTABLEKS                       R12 R5 K39 ["showPrimaryModifier"]
      240 JUMPIFNOT                        R12 ; [+59]
      241 GETUPVAL                         R12 0
      242 GETTABLEKS                       R12 R12 K21 ["createElement"]
      244 GETUPVAL                         R13 10
      245 DUPTABLE                         R14 K44 [{["bindings"], ["index"], ["LayoutOrder"], ["nodeProps"], ["onCreated"], ["previousBindings"], ["property"] = "primaryModifier", ["validBindingsBySchema"]}]
      246 GETTABLEKS                       R15 R0 K6 ["bindings"]
      248 SETTABLEKS                       R15 R14 K6 ["bindings"]
      250 GETTABLEKS                       R15 R0 K40 ["index"]
      252 SETTABLEKS                       R15 R14 K40 ["index"]
      254 MOVE                             R15 R2
      255 CALL                             R15 0 1
      256 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      258 DUPTABLE                         R15 K45 [{["action"], ["depth"], ["disabled"], ["editMenu"], ["icon"] = "InputBinding", ["name"], ["onEditMenuItemSelected"]}]
      259 GETTABLEKS                       R16 R0 K4 ["action"]
      261 SETTABLEKS                       R16 R15 K4 ["action"]
      263 ADDK                             R16 R7 K46 [1]
      264 SETTABLEKS                       R16 R15 K26 ["depth"]
      266 SETTABLEKS                       R3 R15 K3 ["disabled"]
      268 GETTABLEKS                       R16 R5 K47 ["primaryModifierMenu"]
      270 SETTABLEKS                       R16 R15 K27 ["editMenu"]
      272 LOADK                            R18 K36 ["Binding"]
      273 LOADK                            R19 K48 ["PrimaryModifier"]
      274 NAMECALL                         R16 R1 K37 ["getText"]
      276 CALL                             R16 3 1
      277 SETTABLEKS                       R16 R15 K14 ["name"]
      279 GETTABLEKS                       R16 R5 K49 ["onPrimaryModifierMenuItemSelected"]
      281 SETTABLEKS                       R16 R15 K31 ["onEditMenuItemSelected"]
      283 SETTABLEKS                       R15 R14 K22 ["nodeProps"]
      285 GETTABLEKS                       R15 R0 K16 ["onCreated"]
      287 SETTABLEKS                       R15 R14 K16 ["onCreated"]
      289 GETTABLEKS                       R15 R0 K23 ["previousBindings"]
      291 SETTABLEKS                       R15 R14 K23 ["previousBindings"]
      293 GETTABLEKS                       R15 R0 K43 ["validBindingsBySchema"]
      295 SETTABLEKS                       R15 R14 K43 ["validBindingsBySchema"]
      297 CALL                             R12 2 1
      298 SETTABLEKS                       R12 R11 K42 ["primaryModifier"]
      300 GETTABLEKS                       R12 R5 K50 ["showSecondaryModifier"]
      302 JUMPIFNOT                        R12 ; [+59]
      303 GETUPVAL                         R12 0
      304 GETTABLEKS                       R12 R12 K21 ["createElement"]
      306 GETUPVAL                         R13 10
      307 DUPTABLE                         R14 K52 [{["bindings"], ["index"], ["LayoutOrder"], ["nodeProps"], ["onCreated"], ["previousBindings"], ["property"] = "secondaryModifier", ["validBindingsBySchema"]}]
      308 GETTABLEKS                       R15 R0 K6 ["bindings"]
      310 SETTABLEKS                       R15 R14 K6 ["bindings"]
      312 GETTABLEKS                       R15 R0 K40 ["index"]
      314 SETTABLEKS                       R15 R14 K40 ["index"]
      316 MOVE                             R15 R2
      317 CALL                             R15 0 1
      318 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      320 DUPTABLE                         R15 K45 [{["action"], ["depth"], ["disabled"], ["editMenu"], ["icon"] = "InputBinding", ["name"], ["onEditMenuItemSelected"]}]
      321 GETTABLEKS                       R16 R0 K4 ["action"]
      323 SETTABLEKS                       R16 R15 K4 ["action"]
      325 ADDK                             R16 R7 K46 [1]
      326 SETTABLEKS                       R16 R15 K26 ["depth"]
      328 SETTABLEKS                       R3 R15 K3 ["disabled"]
      330 GETTABLEKS                       R16 R5 K53 ["secondaryModifierMenu"]
      332 SETTABLEKS                       R16 R15 K27 ["editMenu"]
      334 LOADK                            R18 K36 ["Binding"]
      335 LOADK                            R19 K54 ["SecondaryModifier"]
      336 NAMECALL                         R16 R1 K37 ["getText"]
      338 CALL                             R16 3 1
      339 SETTABLEKS                       R16 R15 K14 ["name"]
      341 GETTABLEKS                       R16 R5 K55 ["onSecondaryModifierMenuItemSelected"]
      343 SETTABLEKS                       R16 R15 K31 ["onEditMenuItemSelected"]
      345 SETTABLEKS                       R15 R14 K22 ["nodeProps"]
      347 GETTABLEKS                       R15 R0 K16 ["onCreated"]
      349 SETTABLEKS                       R15 R14 K16 ["onCreated"]
      351 GETTABLEKS                       R15 R0 K23 ["previousBindings"]
      353 SETTABLEKS                       R15 R14 K23 ["previousBindings"]
      355 GETTABLEKS                       R15 R0 K43 ["validBindingsBySchema"]
      357 SETTABLEKS                       R15 R14 K43 ["validBindingsBySchema"]
      359 CALL                             R12 2 1
      360 SETTABLEKS                       R12 R11 K51 ["secondaryModifier"]
      362 MOVE                             R12 R8
      363 LOADNIL                          R13
      364 LOADNIL                          R14
      365 FORGPREP                         R12
      366 GETUPVAL                         R17 0
      367 GETTABLEKS                       R17 R17 K21 ["createElement"]
      369 GETUPVAL                         R18 10
      370 DUPTABLE                         R19 K56 [{"bindings", "index", "LayoutOrder", "nodeProps", "onCreated", "previousBindings", "property", "validBindingsBySchema"}]
      371 GETTABLEKS                       R20 R0 K6 ["bindings"]
      373 SETTABLEKS                       R20 R19 K6 ["bindings"]
      375 GETTABLEKS                       R20 R0 K40 ["index"]
      377 SETTABLEKS                       R20 R19 K40 ["index"]
      379 MOVE                             R20 R2
      380 CALL                             R20 0 1
      381 SETTABLEKS                       R20 R19 K11 ["LayoutOrder"]
      383 DUPTABLE                         R20 K57 [{["action"], ["depth"], ["disabled"], ["icon"] = "InputBinding", ["name"]}]
      384 GETTABLEKS                       R21 R0 K4 ["action"]
      386 SETTABLEKS                       R21 R20 K4 ["action"]
      388 ADDK                             R21 R7 K46 [1]
      389 SETTABLEKS                       R21 R20 K26 ["depth"]
      391 SETTABLEKS                       R3 R20 K3 ["disabled"]
      393 LOADK                            R23 K36 ["Binding"]
      394 GETUPVAL                         R25 11
      395 GETTABLE                         R24 R25 R16
      396 NAMECALL                         R21 R1 K37 ["getText"]
      398 CALL                             R21 3 1
      399 SETTABLEKS                       R21 R20 K14 ["name"]
      401 SETTABLEKS                       R20 R19 K22 ["nodeProps"]
      403 GETTABLEKS                       R20 R0 K16 ["onCreated"]
      405 SETTABLEKS                       R20 R19 K16 ["onCreated"]
      407 GETTABLEKS                       R20 R0 K23 ["previousBindings"]
      409 SETTABLEKS                       R20 R19 K23 ["previousBindings"]
      411 SETTABLEKS                       R16 R19 K41 ["property"]
      413 GETTABLEKS                       R20 R0 K43 ["validBindingsBySchema"]
      415 SETTABLEKS                       R20 R19 K43 ["validBindingsBySchema"]
      417 CALL                             R17 2 1
      418 SETTABLE                         R17 R11 R16
      419 FORGLOOP                         R12 2 ; [-54]
      421 GETUPVAL                         R12 0
      422 GETTABLEKS                       R12 R12 K21 ["createElement"]
      424 GETUPVAL                         R13 12
      425 DUPTABLE                         R14 K61 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      426 GETTABLEKS                       R15 R0 K11 ["LayoutOrder"]
      428 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      430 LOADK                            R15 K62 ["composite-binding-%*"]
      431 GETTABLEKS                       R17 R0 K40 ["index"]
      433 NAMECALL                         R15 R15 K63 ["format"]
      435 CALL                             R15 2 1
      436 SETTABLEKS                       R15 R14 K60 ["testId"]
      438 MOVE                             R15 R11
      439 CALL                             R12 3 -1
      440 RETURN                           R12 -1

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
      133 GETTABLEKS                       R17 R15 K32 ["getFFlagIAMPlayerScripts"]
      135 CALL                             R16 1 1
      136 DUPTABLE                         R17 K45 [{["up"] = "Up", ["left"] = "Left", ["forward"] = "Forward", ["down"] = "Down", ["right"] = "Right", ["backward"] = "Backward"}]
      137 DUPCLOSURE                       R18 K46 [PROTO_5]
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R10
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R7
      149 CAPTURE                          VAL R17
      150 CAPTURE                          VAL R6
      151 RETURN                           R18 1
