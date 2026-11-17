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
       11 GETTABLEKS                       R3 R0 K3 ["disabled"]
       13 GETTABLEKS                       R4 R0 K4 ["action"]
       15 GETTABLEKS                       R4 R4 K5 ["defaultPlayerScript"]
       17 GETUPVAL                         R6 3
       18 CALL                             R6 0 1
       19 NOT                              R5 R6
       20 JUMPIFNOT                        R5 ; [+4]
       21 JUMPIFEQKB                       R4 TRUE ; [+2]
       23 LOADB                            R5 0 +1
       24 LOADB                            R5 1
       25 GETUPVAL                         R6 4
       26 GETTABLEKS                       R7 R0 K6 ["bindings"]
       28 GETTABLEKS                       R8 R0 K7 ["isRoot"]
       30 GETTABLEKS                       R9 R0 K8 ["onBindingEditCommand"]
       32 GETTABLEKS                       R10 R0 K9 ["onBindingCreateCommand"]
       34 GETTABLEKS                       R11 R0 K4 ["action"]
       36 GETTABLEKS                       R11 R11 K10 ["uuid"]
       38 GETTABLEKS                       R12 R0 K11 ["LayoutOrder"]
       40 LOADK                            R13 K12 ["Composite"]
       41 CALL                             R6 7 1
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R7 R7 K13 ["useMemo"]
       45 NEWCLOSURE                       R8 P0
       46 CAPTURE                          VAL R0
       47 NEWTABLE                         R9 0 1
       49 GETTABLEKS                       R10 R0 K6 ["bindings"]
       51 SETLIST                          R9 R10 1 [1]
       53 CALL                             R7 2 1
       54 GETUPVAL                         R8 0
       55 GETTABLEKS                       R8 R8 K13 ["useMemo"]
       57 NEWCLOSURE                       R9 P1
       58 CAPTURE                          VAL R0
       59 NEWTABLE                         R10 0 1
       61 GETTABLEKS                       R11 R0 K14 ["name"]
       63 SETLIST                          R10 R11 1 [1]
       65 CALL                             R8 2 1
       66 GETUPVAL                         R9 0
       67 GETTABLEKS                       R9 R9 K13 ["useMemo"]
       69 NEWCLOSURE                       R10 P2
       70 CAPTURE                          UPVAL U5
       71 CAPTURE                          VAL R0
       72 NEWTABLE                         R11 0 1
       74 GETTABLEKS                       R12 R0 K4 ["action"]
       76 GETTABLEKS                       R12 R12 K15 ["type"]
       78 SETLIST                          R11 R12 1 [1]
       80 CALL                             R9 2 1
       81 GETUPVAL                         R10 0
       82 GETTABLEKS                       R10 R10 K13 ["useMemo"]
       84 NEWCLOSURE                       R11 P3
       85 CAPTURE                          VAL R5
       86 CAPTURE                          UPVAL U6
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R0
       89 NEWTABLE                         R12 0 9
       91 MOVE                             R13 R1
       92 GETTABLEKS                       R14 R0 K16 ["onCreated"]
       94 GETTABLEKS                       R15 R0 K4 ["action"]
       96 GETTABLEKS                       R15 R15 K15 ["type"]
       98 GETTABLEKS                       R16 R0 K4 ["action"]
      100 GETTABLEKS                       R16 R16 K17 ["enabled"]
      102 GETTABLEKS                       R17 R0 K18 ["context"]
      104 GETTABLEKS                       R17 R17 K17 ["enabled"]
      106 GETTABLEKS                       R18 R0 K7 ["isRoot"]
      108 GETTABLEKS                       R19 R0 K6 ["bindings"]
      110 MOVE                             R20 R5
      111 GETTABLEKS                       R21 R0 K19 ["scriptableBinding"]
      113 SETLIST                          R12 R13 9 [1]
      115 CALL                             R10 2 1
      116 GETUPVAL                         R11 0
      117 GETTABLEKS                       R11 R11 K13 ["useMemo"]
      119 NEWCLOSURE                       R12 P4
      120 CAPTURE                          VAL R5
      121 CAPTURE                          UPVAL U7
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R0
      124 NEWTABLE                         R13 0 4
      126 MOVE                             R14 R1
      127 GETTABLEKS                       R15 R0 K20 ["createMenu"]
      129 GETTABLEKS                       R16 R0 K6 ["bindings"]
      131 MOVE                             R17 R5
      132 SETLIST                          R13 R14 4 [1]
      134 CALL                             R11 2 1
      135 NEWTABLE                         R12 4 0
      137 GETUPVAL                         R13 0
      138 GETTABLEKS                       R13 R13 K21 ["createElement"]
      140 GETUPVAL                         R14 8
      141 DUPTABLE                         R15 K24 [{"bindings", "LayoutOrder", "nodeProps", "previousBindings"}]
      142 SETTABLEKS                       R7 R15 K6 ["bindings"]
      144 MOVE                             R16 R2
      145 CALL                             R16 0 1
      146 SETTABLEKS                       R16 R15 K11 ["LayoutOrder"]
      148 DUPTABLE                         R16 K33 [{"action", "anchorRef", "createMenu", "defaultPlayerScript", "depth", "disabled", "editMenu", "expanded", "icon", "name", "onCreateMenuItemSelected", "onEditMenuItemSelected", "setExpanded"}]
      149 GETTABLEKS                       R17 R0 K4 ["action"]
      151 SETTABLEKS                       R17 R16 K4 ["action"]
      153 GETTABLEKS                       R17 R0 K25 ["anchorRef"]
      155 SETTABLEKS                       R17 R16 K25 ["anchorRef"]
      157 SETTABLEKS                       R11 R16 K20 ["createMenu"]
      159 SETTABLEKS                       R4 R16 K5 ["defaultPlayerScript"]
      161 SETTABLEKS                       R8 R16 K26 ["depth"]
      163 SETTABLEKS                       R3 R16 K3 ["disabled"]
      165 SETTABLEKS                       R10 R16 K27 ["editMenu"]
      167 JUMPIFNOT                        R4 ; [+2]
      168 LOADNIL                          R17
      169 JUMP                             ; [+7]
      170 LOADB                            R17 1
      171 GETTABLEKS                       R18 R0 K16 ["onCreated"]
      173 JUMPIFNOTEQKNIL                  R18 ; [+3]
      175 GETTABLEKS                       R17 R6 K28 ["expanded"]
      177 SETTABLEKS                       R17 R16 K28 ["expanded"]
      179 GETTABLEKS                       R18 R0 K14 ["name"]
      181 JUMPIFNOT                        R18 ; [+2]
      182 LOADK                            R17 K34 ["InputAction"]
      183 JUMP                             ; [+1]
      184 LOADK                            R17 K35 ["InputBinding"]
      185 SETTABLEKS                       R17 R16 K29 ["icon"]
      187 GETTABLEKS                       R17 R0 K14 ["name"]
      189 JUMPIF                           R17 ; [+5]
      190 LOADK                            R19 K36 ["Binding"]
      191 LOADK                            R20 K12 ["Composite"]
      192 NAMECALL                         R17 R1 K37 ["getText"]
      194 CALL                             R17 3 1
      195 SETTABLEKS                       R17 R16 K14 ["name"]
      197 JUMPIFNOT                        R5 ; [+2]
      198 LOADNIL                          R17
      199 JUMP                             ; [+2]
      200 GETTABLEKS                       R17 R6 K30 ["onCreateMenuItemSelected"]
      202 SETTABLEKS                       R17 R16 K30 ["onCreateMenuItemSelected"]
      204 JUMPIFNOT                        R5 ; [+2]
      205 LOADNIL                          R17
      206 JUMP                             ; [+2]
      207 GETTABLEKS                       R17 R6 K31 ["onEditMenuItemSelected"]
      209 SETTABLEKS                       R17 R16 K31 ["onEditMenuItemSelected"]
      211 JUMPIF                           R4 ; [+4]
      212 GETTABLEKS                       R18 R0 K16 ["onCreated"]
      214 JUMPIFEQKNIL                     R18 ; [+3]
      216 LOADNIL                          R17
      217 JUMP                             ; [+2]
      218 GETTABLEKS                       R17 R6 K32 ["setExpanded"]
      220 SETTABLEKS                       R17 R16 K32 ["setExpanded"]
      222 SETTABLEKS                       R16 R15 K22 ["nodeProps"]
      224 GETTABLEKS                       R16 R0 K23 ["previousBindings"]
      226 SETTABLEKS                       R16 R15 K23 ["previousBindings"]
      228 CALL                             R13 2 1
      229 SETTABLEKS                       R13 R12 K38 ["header"]
      231 JUMPIF                           R4 ; [+189]
      232 GETTABLEKS                       R13 R6 K28 ["expanded"]
      234 JUMPIF                           R13 ; [+3]
      235 GETTABLEKS                       R13 R0 K16 ["onCreated"]
      237 JUMPIFNOT                        R13 ; [+183]
      238 GETTABLEKS                       R13 R6 K39 ["showPrimaryModifier"]
      240 JUMPIFNOT                        R13 ; [+59]
      241 GETUPVAL                         R13 0
      242 GETTABLEKS                       R13 R13 K21 ["createElement"]
      244 GETUPVAL                         R14 9
      245 DUPTABLE                         R15 K44 [{["bindings"], ["index"], ["LayoutOrder"], ["nodeProps"], ["onCreated"], ["previousBindings"], ["property"] = "primaryModifier", ["validBindingsBySchema"]}]
      246 GETTABLEKS                       R16 R0 K6 ["bindings"]
      248 SETTABLEKS                       R16 R15 K6 ["bindings"]
      250 GETTABLEKS                       R16 R0 K40 ["index"]
      252 SETTABLEKS                       R16 R15 K40 ["index"]
      254 MOVE                             R16 R2
      255 CALL                             R16 0 1
      256 SETTABLEKS                       R16 R15 K11 ["LayoutOrder"]
      258 DUPTABLE                         R16 K45 [{["action"], ["depth"], ["disabled"], ["editMenu"], ["icon"] = "InputBinding", ["name"], ["onEditMenuItemSelected"]}]
      259 GETTABLEKS                       R17 R0 K4 ["action"]
      261 SETTABLEKS                       R17 R16 K4 ["action"]
      263 ADDK                             R17 R8 K46 [1]
      264 SETTABLEKS                       R17 R16 K26 ["depth"]
      266 SETTABLEKS                       R3 R16 K3 ["disabled"]
      268 GETTABLEKS                       R17 R6 K47 ["primaryModifierMenu"]
      270 SETTABLEKS                       R17 R16 K27 ["editMenu"]
      272 LOADK                            R19 K36 ["Binding"]
      273 LOADK                            R20 K48 ["PrimaryModifier"]
      274 NAMECALL                         R17 R1 K37 ["getText"]
      276 CALL                             R17 3 1
      277 SETTABLEKS                       R17 R16 K14 ["name"]
      279 GETTABLEKS                       R17 R6 K49 ["onPrimaryModifierMenuItemSelected"]
      281 SETTABLEKS                       R17 R16 K31 ["onEditMenuItemSelected"]
      283 SETTABLEKS                       R16 R15 K22 ["nodeProps"]
      285 GETTABLEKS                       R16 R0 K16 ["onCreated"]
      287 SETTABLEKS                       R16 R15 K16 ["onCreated"]
      289 GETTABLEKS                       R16 R0 K23 ["previousBindings"]
      291 SETTABLEKS                       R16 R15 K23 ["previousBindings"]
      293 GETTABLEKS                       R16 R0 K43 ["validBindingsBySchema"]
      295 SETTABLEKS                       R16 R15 K43 ["validBindingsBySchema"]
      297 CALL                             R13 2 1
      298 SETTABLEKS                       R13 R12 K42 ["primaryModifier"]
      300 GETTABLEKS                       R13 R6 K50 ["showSecondaryModifier"]
      302 JUMPIFNOT                        R13 ; [+59]
      303 GETUPVAL                         R13 0
      304 GETTABLEKS                       R13 R13 K21 ["createElement"]
      306 GETUPVAL                         R14 9
      307 DUPTABLE                         R15 K52 [{["bindings"], ["index"], ["LayoutOrder"], ["nodeProps"], ["onCreated"], ["previousBindings"], ["property"] = "secondaryModifier", ["validBindingsBySchema"]}]
      308 GETTABLEKS                       R16 R0 K6 ["bindings"]
      310 SETTABLEKS                       R16 R15 K6 ["bindings"]
      312 GETTABLEKS                       R16 R0 K40 ["index"]
      314 SETTABLEKS                       R16 R15 K40 ["index"]
      316 MOVE                             R16 R2
      317 CALL                             R16 0 1
      318 SETTABLEKS                       R16 R15 K11 ["LayoutOrder"]
      320 DUPTABLE                         R16 K45 [{["action"], ["depth"], ["disabled"], ["editMenu"], ["icon"] = "InputBinding", ["name"], ["onEditMenuItemSelected"]}]
      321 GETTABLEKS                       R17 R0 K4 ["action"]
      323 SETTABLEKS                       R17 R16 K4 ["action"]
      325 ADDK                             R17 R8 K46 [1]
      326 SETTABLEKS                       R17 R16 K26 ["depth"]
      328 SETTABLEKS                       R3 R16 K3 ["disabled"]
      330 GETTABLEKS                       R17 R6 K53 ["secondaryModifierMenu"]
      332 SETTABLEKS                       R17 R16 K27 ["editMenu"]
      334 LOADK                            R19 K36 ["Binding"]
      335 LOADK                            R20 K54 ["SecondaryModifier"]
      336 NAMECALL                         R17 R1 K37 ["getText"]
      338 CALL                             R17 3 1
      339 SETTABLEKS                       R17 R16 K14 ["name"]
      341 GETTABLEKS                       R17 R6 K55 ["onSecondaryModifierMenuItemSelected"]
      343 SETTABLEKS                       R17 R16 K31 ["onEditMenuItemSelected"]
      345 SETTABLEKS                       R16 R15 K22 ["nodeProps"]
      347 GETTABLEKS                       R16 R0 K16 ["onCreated"]
      349 SETTABLEKS                       R16 R15 K16 ["onCreated"]
      351 GETTABLEKS                       R16 R0 K23 ["previousBindings"]
      353 SETTABLEKS                       R16 R15 K23 ["previousBindings"]
      355 GETTABLEKS                       R16 R0 K43 ["validBindingsBySchema"]
      357 SETTABLEKS                       R16 R15 K43 ["validBindingsBySchema"]
      359 CALL                             R13 2 1
      360 SETTABLEKS                       R13 R12 K51 ["secondaryModifier"]
      362 MOVE                             R13 R9
      363 LOADNIL                          R14
      364 LOADNIL                          R15
      365 FORGPREP                         R13
      366 GETUPVAL                         R18 0
      367 GETTABLEKS                       R18 R18 K21 ["createElement"]
      369 GETUPVAL                         R19 9
      370 DUPTABLE                         R20 K56 [{"bindings", "index", "LayoutOrder", "nodeProps", "onCreated", "previousBindings", "property", "validBindingsBySchema"}]
      371 GETTABLEKS                       R21 R0 K6 ["bindings"]
      373 SETTABLEKS                       R21 R20 K6 ["bindings"]
      375 GETTABLEKS                       R21 R0 K40 ["index"]
      377 SETTABLEKS                       R21 R20 K40 ["index"]
      379 MOVE                             R21 R2
      380 CALL                             R21 0 1
      381 SETTABLEKS                       R21 R20 K11 ["LayoutOrder"]
      383 DUPTABLE                         R21 K57 [{["action"], ["depth"], ["disabled"], ["icon"] = "InputBinding", ["name"]}]
      384 GETTABLEKS                       R22 R0 K4 ["action"]
      386 SETTABLEKS                       R22 R21 K4 ["action"]
      388 ADDK                             R22 R8 K46 [1]
      389 SETTABLEKS                       R22 R21 K26 ["depth"]
      391 SETTABLEKS                       R3 R21 K3 ["disabled"]
      393 LOADK                            R24 K36 ["Binding"]
      394 GETUPVAL                         R26 10
      395 GETTABLE                         R25 R26 R17
      396 NAMECALL                         R22 R1 K37 ["getText"]
      398 CALL                             R22 3 1
      399 SETTABLEKS                       R22 R21 K14 ["name"]
      401 SETTABLEKS                       R21 R20 K22 ["nodeProps"]
      403 GETTABLEKS                       R21 R0 K16 ["onCreated"]
      405 SETTABLEKS                       R21 R20 K16 ["onCreated"]
      407 GETTABLEKS                       R21 R0 K23 ["previousBindings"]
      409 SETTABLEKS                       R21 R20 K23 ["previousBindings"]
      411 SETTABLEKS                       R17 R20 K41 ["property"]
      413 GETTABLEKS                       R21 R0 K43 ["validBindingsBySchema"]
      415 SETTABLEKS                       R21 R20 K43 ["validBindingsBySchema"]
      417 CALL                             R18 2 1
      418 SETTABLE                         R18 R12 R17
      419 FORGLOOP                         R13 2 ; [-54]
      421 GETUPVAL                         R13 0
      422 GETTABLEKS                       R13 R13 K21 ["createElement"]
      424 GETUPVAL                         R14 11
      425 DUPTABLE                         R15 K61 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      426 GETTABLEKS                       R16 R0 K11 ["LayoutOrder"]
      428 SETTABLEKS                       R16 R15 K11 ["LayoutOrder"]
      430 LOADK                            R16 K62 ["composite-binding-%*"]
      431 GETTABLEKS                       R18 R0 K40 ["index"]
      433 NAMECALL                         R16 R16 K63 ["format"]
      435 CALL                             R16 2 1
      436 SETTABLEKS                       R16 R15 K60 ["testId"]
      438 MOVE                             R16 R12
      439 CALL                             R13 3 -1
      440 RETURN                           R13 -1

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
      111 GETTABLEKS                       R14 R14 K27 ["Flags"]
      113 GETTABLEKS                       R14 R14 K28 ["getFFlagIAMEditOnlyInEditDatamodel"]
      115 CALL                             R13 1 1
      116 GETIMPORT                        R14 K5 [require]
      118 GETTABLEKS                       R15 R0 K14 ["Src"]
      120 GETTABLEKS                       R15 R15 K29 ["Hooks"]
      122 GETTABLEKS                       R15 R15 K30 ["Binding"]
      124 GETTABLEKS                       R15 R15 K31 ["useBinding"]
      126 CALL                             R14 1 1
      127 DUPTABLE                         R15 K44 [{["up"] = "Up", ["left"] = "Left", ["forward"] = "Forward", ["down"] = "Down", ["right"] = "Right", ["backward"] = "Backward"}]
      128 DUPCLOSURE                       R16 K45 [PROTO_5]
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R14
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R6
      141 RETURN                           R16 1
