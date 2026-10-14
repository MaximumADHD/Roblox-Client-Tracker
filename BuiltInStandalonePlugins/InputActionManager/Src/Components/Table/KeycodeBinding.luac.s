PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["bindings"]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 NEWTABLE                         R6 0 1
       13 MOVE                             R7 R5
       14 SETLIST                          R6 R7 1 [1]
       16 SETTABLE                         R6 R0 R4
       17 FORGLOOP                         R1 2 ; [-7]
       19 RETURN                           R0 1

PROTO_1:
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
       22 LOADK                            R4 K4 ["Keycode"]
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

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["name"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADN                            R0 1
        5 RETURN                           R0 1
        6 LOADN                            R0 2
        7 RETURN                           R0 1

PROTO_4:
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
       42 LOADK                            R12 K12 ["Keycode"]
       43 CALL                             R5 7 1
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R6 R6 K13 ["useMemo"]
       47 NEWCLOSURE                       R7 P0
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R0
       50 NEWTABLE                         R8 0 2
       52 GETTABLEKS                       R9 R0 K6 ["bindings"]
       54 MOVE                             R10 R4
       55 SETLIST                          R8 R9 2 [1]
       57 CALL                             R6 2 1
       58 GETUPVAL                         R7 0
       59 GETTABLEKS                       R7 R7 K13 ["useMemo"]
       61 NEWCLOSURE                       R8 P1
       62 CAPTURE                          VAL R4
       63 CAPTURE                          UPVAL U6
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R0
       66 NEWTABLE                         R9 0 9
       68 MOVE                             R10 R1
       69 GETTABLEKS                       R11 R0 K14 ["onCreated"]
       71 GETTABLEKS                       R12 R0 K4 ["action"]
       73 GETTABLEKS                       R12 R12 K15 ["type"]
       75 GETTABLEKS                       R13 R0 K4 ["action"]
       77 GETTABLEKS                       R13 R13 K16 ["enabled"]
       79 GETTABLEKS                       R14 R0 K17 ["context"]
       81 GETTABLEKS                       R14 R14 K16 ["enabled"]
       83 GETTABLEKS                       R15 R0 K7 ["isRoot"]
       85 GETTABLEKS                       R16 R0 K6 ["bindings"]
       87 GETTABLEKS                       R17 R0 K18 ["scriptableBinding"]
       89 MOVE                             R18 R4
       90 SETLIST                          R9 R10 9 [1]
       92 CALL                             R7 2 1
       93 GETUPVAL                         R8 0
       94 GETTABLEKS                       R8 R8 K13 ["useMemo"]
       96 NEWCLOSURE                       R9 P2
       97 CAPTURE                          VAL R4
       98 CAPTURE                          UPVAL U7
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R0
      101 NEWTABLE                         R10 0 4
      103 MOVE                             R11 R1
      104 GETTABLEKS                       R12 R0 K19 ["createMenu"]
      106 GETTABLEKS                       R13 R0 K6 ["bindings"]
      108 MOVE                             R14 R4
      109 SETLIST                          R10 R11 4 [1]
      111 CALL                             R8 2 1
      112 GETUPVAL                         R9 0
      113 GETTABLEKS                       R9 R9 K13 ["useMemo"]
      115 NEWCLOSURE                       R10 P3
      116 CAPTURE                          VAL R0
      117 NEWTABLE                         R11 0 1
      119 GETTABLEKS                       R12 R0 K20 ["name"]
      121 SETLIST                          R11 R12 1 [1]
      123 CALL                             R9 2 1
      124 GETTABLEKS                       R10 R5 K21 ["showPrimaryModifier"]
      126 JUMPIF                           R10 ; [+2]
      127 GETTABLEKS                       R10 R5 K22 ["showSecondaryModifier"]
      129 NEWTABLE                         R11 4 0
      131 JUMPIFNOT                        R4 ; [+48]
      132 GETUPVAL                         R12 0
      133 GETTABLEKS                       R12 R12 K23 ["createElement"]
      135 GETUPVAL                         R13 8
      136 DUPTABLE                         R14 K26 [{"bindings", "LayoutOrder", "nodeProps", "previousBindings"}]
      137 SETTABLEKS                       R6 R14 K6 ["bindings"]
      139 MOVE                             R15 R2
      140 CALL                             R15 0 1
      141 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      143 DUPTABLE                         R15 K29 [{"action", "depth", "disabled", "icon", "name"}]
      144 GETTABLEKS                       R16 R0 K4 ["action"]
      146 SETTABLEKS                       R16 R15 K4 ["action"]
      148 SETTABLEKS                       R9 R15 K27 ["depth"]
      150 SETTABLEKS                       R3 R15 K3 ["disabled"]
      152 GETTABLEKS                       R17 R0 K20 ["name"]
      154 JUMPIFNOT                        R17 ; [+2]
      155 LOADK                            R16 K30 ["InputAction"]
      156 JUMP                             ; [+1]
      157 LOADK                            R16 K31 ["InputBinding"]
      158 SETTABLEKS                       R16 R15 K28 ["icon"]
      160 GETTABLEKS                       R16 R0 K20 ["name"]
      162 JUMPIF                           R16 ; [+5]
      163 LOADK                            R18 K32 ["Binding"]
      164 LOADK                            R19 K12 ["Keycode"]
      165 NAMECALL                         R16 R1 K33 ["getText"]
      167 CALL                             R16 3 1
      168 SETTABLEKS                       R16 R15 K20 ["name"]
      170 SETTABLEKS                       R15 R14 K24 ["nodeProps"]
      172 GETTABLEKS                       R15 R0 K25 ["previousBindings"]
      174 SETTABLEKS                       R15 R14 K25 ["previousBindings"]
      176 CALL                             R12 2 1
      177 SETTABLEKS                       R12 R11 K34 ["header"]
      179 JUMP                             ; [+91]
      180 GETUPVAL                         R12 0
      181 GETTABLEKS                       R12 R12 K23 ["createElement"]
      183 GETUPVAL                         R13 9
      184 DUPTABLE                         R14 K39 [{["bindings"], ["index"], ["LayoutOrder"], ["nodeProps"], ["onCreated"], ["previousBindings"], ["property"] = "keyCode", ["validBindingsBySchema"]}]
      185 GETTABLEKS                       R15 R0 K6 ["bindings"]
      187 SETTABLEKS                       R15 R14 K6 ["bindings"]
      189 GETTABLEKS                       R15 R0 K35 ["index"]
      191 SETTABLEKS                       R15 R14 K35 ["index"]
      193 MOVE                             R15 R2
      194 CALL                             R15 0 1
      195 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      197 DUPTABLE                         R15 K46 [{"action", "anchorRef", "createMenu", "depth", "disabled", "editMenu", "expanded", "onEditMenuItemSelected", "setExpanded", "icon", "name", "onCreateMenuItemSelected"}]
      198 GETTABLEKS                       R16 R0 K4 ["action"]
      200 SETTABLEKS                       R16 R15 K4 ["action"]
      202 GETTABLEKS                       R16 R0 K40 ["anchorRef"]
      204 SETTABLEKS                       R16 R15 K40 ["anchorRef"]
      206 SETTABLEKS                       R8 R15 K19 ["createMenu"]
      208 SETTABLEKS                       R9 R15 K27 ["depth"]
      210 SETTABLEKS                       R3 R15 K3 ["disabled"]
      212 SETTABLEKS                       R7 R15 K41 ["editMenu"]
      214 JUMPIFNOT                        R10 ; [+3]
      215 GETTABLEKS                       R16 R5 K42 ["expanded"]
      217 JUMP                             ; [+1]
      218 LOADNIL                          R16
      219 SETTABLEKS                       R16 R15 K42 ["expanded"]
      221 GETTABLEKS                       R16 R5 K43 ["onEditMenuItemSelected"]
      223 SETTABLEKS                       R16 R15 K43 ["onEditMenuItemSelected"]
      225 JUMPIFNOT                        R10 ; [+3]
      226 GETTABLEKS                       R16 R5 K44 ["setExpanded"]
      228 JUMP                             ; [+1]
      229 LOADNIL                          R16
      230 SETTABLEKS                       R16 R15 K44 ["setExpanded"]
      232 GETTABLEKS                       R17 R0 K20 ["name"]
      234 JUMPIFNOT                        R17 ; [+2]
      235 LOADK                            R16 K30 ["InputAction"]
      236 JUMP                             ; [+1]
      237 LOADK                            R16 K31 ["InputBinding"]
      238 SETTABLEKS                       R16 R15 K28 ["icon"]
      240 GETTABLEKS                       R16 R0 K20 ["name"]
      242 JUMPIF                           R16 ; [+5]
      243 LOADK                            R18 K32 ["Binding"]
      244 LOADK                            R19 K12 ["Keycode"]
      245 NAMECALL                         R16 R1 K33 ["getText"]
      247 CALL                             R16 3 1
      248 SETTABLEKS                       R16 R15 K20 ["name"]
      250 GETTABLEKS                       R16 R5 K45 ["onCreateMenuItemSelected"]
      252 SETTABLEKS                       R16 R15 K45 ["onCreateMenuItemSelected"]
      254 SETTABLEKS                       R15 R14 K24 ["nodeProps"]
      256 GETTABLEKS                       R15 R0 K14 ["onCreated"]
      258 SETTABLEKS                       R15 R14 K14 ["onCreated"]
      260 GETTABLEKS                       R15 R0 K25 ["previousBindings"]
      262 SETTABLEKS                       R15 R14 K25 ["previousBindings"]
      264 GETTABLEKS                       R15 R0 K38 ["validBindingsBySchema"]
      266 SETTABLEKS                       R15 R14 K38 ["validBindingsBySchema"]
      268 CALL                             R12 2 1
      269 SETTABLEKS                       R12 R11 K34 ["header"]
      271 JUMPIF                           R4 ; [+121]
      272 GETTABLEKS                       R12 R5 K42 ["expanded"]
      274 JUMPIFEQKB                       R12 FALSE ; [+118]
      276 JUMPIFNOT                        R10 ; [+116]
      277 GETTABLEKS                       R12 R5 K21 ["showPrimaryModifier"]
      279 JUMPIFNOT                        R12 ; [+55]
      280 GETUPVAL                         R12 0
      281 GETTABLEKS                       R12 R12 K23 ["createElement"]
      283 GETUPVAL                         R13 9
      284 DUPTABLE                         R14 K48 [{["bindings"], ["index"], ["LayoutOrder"], ["nodeProps"], ["previousBindings"], ["property"] = "primaryModifier", ["validBindingsBySchema"]}]
      285 GETTABLEKS                       R15 R0 K6 ["bindings"]
      287 SETTABLEKS                       R15 R14 K6 ["bindings"]
      289 GETTABLEKS                       R15 R0 K35 ["index"]
      291 SETTABLEKS                       R15 R14 K35 ["index"]
      293 MOVE                             R15 R2
      294 CALL                             R15 0 1
      295 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      297 DUPTABLE                         R15 K49 [{["action"], ["depth"], ["disabled"], ["editMenu"], ["icon"] = "InputBinding", ["name"], ["onEditMenuItemSelected"]}]
      298 GETTABLEKS                       R16 R0 K4 ["action"]
      300 SETTABLEKS                       R16 R15 K4 ["action"]
      302 ADDK                             R16 R9 K50 [1]
      303 SETTABLEKS                       R16 R15 K27 ["depth"]
      305 SETTABLEKS                       R3 R15 K3 ["disabled"]
      307 GETTABLEKS                       R16 R5 K51 ["primaryModifierMenu"]
      309 SETTABLEKS                       R16 R15 K41 ["editMenu"]
      311 LOADK                            R18 K32 ["Binding"]
      312 LOADK                            R19 K52 ["PrimaryModifier"]
      313 NAMECALL                         R16 R1 K33 ["getText"]
      315 CALL                             R16 3 1
      316 SETTABLEKS                       R16 R15 K20 ["name"]
      318 GETTABLEKS                       R16 R5 K53 ["onPrimaryModifierMenuItemSelected"]
      320 SETTABLEKS                       R16 R15 K43 ["onEditMenuItemSelected"]
      322 SETTABLEKS                       R15 R14 K24 ["nodeProps"]
      324 GETTABLEKS                       R15 R0 K25 ["previousBindings"]
      326 SETTABLEKS                       R15 R14 K25 ["previousBindings"]
      328 GETTABLEKS                       R15 R0 K38 ["validBindingsBySchema"]
      330 SETTABLEKS                       R15 R14 K38 ["validBindingsBySchema"]
      332 CALL                             R12 2 1
      333 SETTABLEKS                       R12 R11 K47 ["primaryModifier"]
      335 GETTABLEKS                       R12 R5 K22 ["showSecondaryModifier"]
      337 JUMPIFNOT                        R12 ; [+55]
      338 GETUPVAL                         R12 0
      339 GETTABLEKS                       R12 R12 K23 ["createElement"]
      341 GETUPVAL                         R13 9
      342 DUPTABLE                         R14 K55 [{["bindings"], ["index"], ["LayoutOrder"], ["nodeProps"], ["previousBindings"], ["property"] = "secondaryModifier", ["validBindingsBySchema"]}]
      343 GETTABLEKS                       R15 R0 K6 ["bindings"]
      345 SETTABLEKS                       R15 R14 K6 ["bindings"]
      347 GETTABLEKS                       R15 R0 K35 ["index"]
      349 SETTABLEKS                       R15 R14 K35 ["index"]
      351 MOVE                             R15 R2
      352 CALL                             R15 0 1
      353 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      355 DUPTABLE                         R15 K49 [{["action"], ["depth"], ["disabled"], ["editMenu"], ["icon"] = "InputBinding", ["name"], ["onEditMenuItemSelected"]}]
      356 GETTABLEKS                       R16 R0 K4 ["action"]
      358 SETTABLEKS                       R16 R15 K4 ["action"]
      360 ADDK                             R16 R9 K50 [1]
      361 SETTABLEKS                       R16 R15 K27 ["depth"]
      363 SETTABLEKS                       R3 R15 K3 ["disabled"]
      365 GETTABLEKS                       R16 R5 K56 ["secondaryModifierMenu"]
      367 SETTABLEKS                       R16 R15 K41 ["editMenu"]
      369 LOADK                            R18 K32 ["Binding"]
      370 LOADK                            R19 K57 ["SecondaryModifier"]
      371 NAMECALL                         R16 R1 K33 ["getText"]
      373 CALL                             R16 3 1
      374 SETTABLEKS                       R16 R15 K20 ["name"]
      376 GETTABLEKS                       R16 R5 K58 ["onSecondaryModifierMenuItemSelected"]
      378 SETTABLEKS                       R16 R15 K43 ["onEditMenuItemSelected"]
      380 SETTABLEKS                       R15 R14 K24 ["nodeProps"]
      382 GETTABLEKS                       R15 R0 K25 ["previousBindings"]
      384 SETTABLEKS                       R15 R14 K25 ["previousBindings"]
      386 GETTABLEKS                       R15 R0 K38 ["validBindingsBySchema"]
      388 SETTABLEKS                       R15 R14 K38 ["validBindingsBySchema"]
      390 CALL                             R12 2 1
      391 SETTABLEKS                       R12 R11 K54 ["secondaryModifier"]
      393 GETUPVAL                         R12 0
      394 GETTABLEKS                       R12 R12 K23 ["createElement"]
      396 GETUPVAL                         R13 10
      397 DUPTABLE                         R14 K62 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      398 GETTABLEKS                       R15 R0 K11 ["LayoutOrder"]
      400 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      402 LOADK                            R15 K63 ["keycode-binding-%*"]
      403 GETTABLEKS                       R17 R0 K35 ["index"]
      405 NAMECALL                         R15 R15 K64 ["format"]
      407 CALL                             R15 2 1
      408 SETTABLEKS                       R15 R14 K61 ["testId"]
      410 MOVE                             R15 R11
      411 CALL                             R12 3 -1
      412 RETURN                           R12 -1

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
       80 GETTABLEKS                       R11 R11 K22 ["Menus"]
       82 GETTABLEKS                       R11 R11 K23 ["getCreateModifierMenu"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K14 ["Src"]
       89 GETTABLEKS                       R12 R12 K21 ["Util"]
       91 GETTABLEKS                       R12 R12 K22 ["Menus"]
       93 GETTABLEKS                       R12 R12 K24 ["getEditMenu"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R13 R0 K14 ["Src"]
      100 GETTABLEKS                       R13 R13 K25 ["Hooks"]
      102 GETTABLEKS                       R13 R13 K26 ["Binding"]
      104 GETTABLEKS                       R13 R13 K27 ["useBinding"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K14 ["Src"]
      111 GETTABLEKS                       R14 R14 K28 ["Flags"]
      113 GETTABLEKS                       R14 R14 K29 ["getFFlagIAMBooleanProperties"]
      115 CALL                             R13 1 1
      116 GETTABLEKS                       R14 R0 K14 ["Src"]
      118 GETTABLEKS                       R14 R14 K28 ["Flags"]
      120 GETIMPORT                        R15 K5 [require]
      122 GETTABLEKS                       R16 R14 K30 ["getFFlagIAMPlayerScripts"]
      124 CALL                             R15 1 1
      125 DUPCLOSURE                       R16 K31 [PROTO_4]
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R11
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R6
      137 RETURN                           R16 1
