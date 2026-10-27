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
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R6 R0 K6 ["bindings"]
       20 GETTABLEKS                       R7 R0 K7 ["isRoot"]
       22 GETTABLEKS                       R8 R0 K8 ["onBindingEditCommand"]
       24 GETTABLEKS                       R9 R0 K9 ["onBindingCreateCommand"]
       26 GETTABLEKS                       R10 R0 K4 ["action"]
       28 GETTABLEKS                       R10 R10 K10 ["uuid"]
       30 GETTABLEKS                       R11 R0 K11 ["LayoutOrder"]
       32 LOADK                            R12 K12 ["Composite"]
       33 CALL                             R5 7 1
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K13 ["useMemo"]
       37 NEWCLOSURE                       R7 P0
       38 CAPTURE                          VAL R0
       39 NEWTABLE                         R8 0 1
       41 GETTABLEKS                       R9 R0 K6 ["bindings"]
       43 SETLIST                          R8 R9 1 [1]
       45 CALL                             R6 2 1
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K13 ["useMemo"]
       49 NEWCLOSURE                       R8 P1
       50 CAPTURE                          VAL R0
       51 NEWTABLE                         R9 0 1
       53 GETTABLEKS                       R10 R0 K14 ["name"]
       55 SETLIST                          R9 R10 1 [1]
       57 CALL                             R7 2 1
       58 GETUPVAL                         R8 0
       59 GETTABLEKS                       R8 R8 K13 ["useMemo"]
       61 NEWCLOSURE                       R9 P2
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          VAL R0
       64 NEWTABLE                         R10 0 1
       66 GETTABLEKS                       R11 R0 K4 ["action"]
       68 GETTABLEKS                       R11 R11 K15 ["type"]
       70 SETLIST                          R10 R11 1 [1]
       72 CALL                             R8 2 1
       73 GETUPVAL                         R9 0
       74 GETTABLEKS                       R9 R9 K13 ["useMemo"]
       76 NEWCLOSURE                       R10 P3
       77 CAPTURE                          VAL R4
       78 CAPTURE                          UPVAL U5
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R0
       81 NEWTABLE                         R11 0 9
       83 MOVE                             R12 R1
       84 GETTABLEKS                       R13 R0 K16 ["onCreated"]
       86 GETTABLEKS                       R14 R0 K4 ["action"]
       88 GETTABLEKS                       R14 R14 K15 ["type"]
       90 GETTABLEKS                       R15 R0 K4 ["action"]
       92 GETTABLEKS                       R15 R15 K17 ["enabled"]
       94 GETTABLEKS                       R16 R0 K18 ["context"]
       96 GETTABLEKS                       R16 R16 K17 ["enabled"]
       98 GETTABLEKS                       R17 R0 K7 ["isRoot"]
      100 GETTABLEKS                       R18 R0 K6 ["bindings"]
      102 MOVE                             R19 R4
      103 GETTABLEKS                       R20 R0 K19 ["scriptableBinding"]
      105 SETLIST                          R11 R12 9 [1]
      107 CALL                             R9 2 1
      108 GETUPVAL                         R10 0
      109 GETTABLEKS                       R10 R10 K13 ["useMemo"]
      111 NEWCLOSURE                       R11 P4
      112 CAPTURE                          VAL R4
      113 CAPTURE                          UPVAL U6
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R0
      116 NEWTABLE                         R12 0 4
      118 MOVE                             R13 R1
      119 GETTABLEKS                       R14 R0 K20 ["createMenu"]
      121 GETTABLEKS                       R15 R0 K6 ["bindings"]
      123 MOVE                             R16 R4
      124 SETLIST                          R12 R13 4 [1]
      126 CALL                             R10 2 1
      127 NEWTABLE                         R11 4 0
      129 GETUPVAL                         R12 0
      130 GETTABLEKS                       R12 R12 K21 ["createElement"]
      132 GETUPVAL                         R13 7
      133 DUPTABLE                         R14 K24 [{"bindings", "LayoutOrder", "nodeProps", "previousBindings"}]
      134 SETTABLEKS                       R6 R14 K6 ["bindings"]
      136 MOVE                             R15 R2
      137 CALL                             R15 0 1
      138 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      140 DUPTABLE                         R15 K33 [{"action", "anchorRef", "createMenu", "depth", "disabled", "editMenu", "expanded", "icon", "name", "onCreateMenuItemSelected", "onEditMenuItemSelected", "setExpanded"}]
      141 GETTABLEKS                       R16 R0 K4 ["action"]
      143 SETTABLEKS                       R16 R15 K4 ["action"]
      145 GETTABLEKS                       R16 R0 K25 ["anchorRef"]
      147 SETTABLEKS                       R16 R15 K25 ["anchorRef"]
      149 SETTABLEKS                       R10 R15 K20 ["createMenu"]
      151 SETTABLEKS                       R7 R15 K26 ["depth"]
      153 SETTABLEKS                       R3 R15 K3 ["disabled"]
      155 SETTABLEKS                       R9 R15 K27 ["editMenu"]
      157 JUMPIFNOT                        R4 ; [+2]
      158 LOADNIL                          R16
      159 JUMP                             ; [+7]
      160 LOADB                            R16 1
      161 GETTABLEKS                       R17 R0 K16 ["onCreated"]
      163 JUMPIFNOTEQKNIL                  R17 ; [+3]
      165 GETTABLEKS                       R16 R5 K28 ["expanded"]
      167 SETTABLEKS                       R16 R15 K28 ["expanded"]
      169 GETTABLEKS                       R17 R0 K14 ["name"]
      171 JUMPIFNOT                        R17 ; [+2]
      172 LOADK                            R16 K34 ["InputAction"]
      173 JUMP                             ; [+1]
      174 LOADK                            R16 K35 ["InputBinding"]
      175 SETTABLEKS                       R16 R15 K29 ["icon"]
      177 GETTABLEKS                       R16 R0 K14 ["name"]
      179 JUMPIF                           R16 ; [+5]
      180 LOADK                            R18 K36 ["Binding"]
      181 LOADK                            R19 K12 ["Composite"]
      182 NAMECALL                         R16 R1 K37 ["getText"]
      184 CALL                             R16 3 1
      185 SETTABLEKS                       R16 R15 K14 ["name"]
      187 JUMPIFNOT                        R4 ; [+2]
      188 LOADNIL                          R16
      189 JUMP                             ; [+2]
      190 GETTABLEKS                       R16 R5 K30 ["onCreateMenuItemSelected"]
      192 SETTABLEKS                       R16 R15 K30 ["onCreateMenuItemSelected"]
      194 JUMPIFNOT                        R4 ; [+2]
      195 LOADNIL                          R16
      196 JUMP                             ; [+2]
      197 GETTABLEKS                       R16 R5 K31 ["onEditMenuItemSelected"]
      199 SETTABLEKS                       R16 R15 K31 ["onEditMenuItemSelected"]
      201 JUMPIF                           R4 ; [+4]
      202 GETTABLEKS                       R17 R0 K16 ["onCreated"]
      204 JUMPIFEQKNIL                     R17 ; [+3]
      206 LOADNIL                          R16
      207 JUMP                             ; [+2]
      208 GETTABLEKS                       R16 R5 K32 ["setExpanded"]
      210 SETTABLEKS                       R16 R15 K32 ["setExpanded"]
      212 SETTABLEKS                       R15 R14 K22 ["nodeProps"]
      214 GETTABLEKS                       R15 R0 K23 ["previousBindings"]
      216 SETTABLEKS                       R15 R14 K23 ["previousBindings"]
      218 CALL                             R12 2 1
      219 SETTABLEKS                       R12 R11 K38 ["header"]
      221 JUMPIF                           R4 ; [+189]
      222 GETTABLEKS                       R12 R5 K28 ["expanded"]
      224 JUMPIF                           R12 ; [+3]
      225 GETTABLEKS                       R12 R0 K16 ["onCreated"]
      227 JUMPIFNOT                        R12 ; [+183]
      228 GETTABLEKS                       R12 R5 K39 ["showPrimaryModifier"]
      230 JUMPIFNOT                        R12 ; [+59]
      231 GETUPVAL                         R12 0
      232 GETTABLEKS                       R12 R12 K21 ["createElement"]
      234 GETUPVAL                         R13 8
      235 DUPTABLE                         R14 K44 [{["bindings"], ["index"], ["LayoutOrder"], ["nodeProps"], ["onCreated"], ["previousBindings"], ["property"] = "primaryModifier", ["validBindingsBySchema"]}]
      236 GETTABLEKS                       R15 R0 K6 ["bindings"]
      238 SETTABLEKS                       R15 R14 K6 ["bindings"]
      240 GETTABLEKS                       R15 R0 K40 ["index"]
      242 SETTABLEKS                       R15 R14 K40 ["index"]
      244 MOVE                             R15 R2
      245 CALL                             R15 0 1
      246 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      248 DUPTABLE                         R15 K45 [{["action"], ["depth"], ["disabled"], ["editMenu"], ["icon"] = "InputBinding", ["name"], ["onEditMenuItemSelected"]}]
      249 GETTABLEKS                       R16 R0 K4 ["action"]
      251 SETTABLEKS                       R16 R15 K4 ["action"]
      253 ADDK                             R16 R7 K46 [1]
      254 SETTABLEKS                       R16 R15 K26 ["depth"]
      256 SETTABLEKS                       R3 R15 K3 ["disabled"]
      258 GETTABLEKS                       R16 R5 K47 ["primaryModifierMenu"]
      260 SETTABLEKS                       R16 R15 K27 ["editMenu"]
      262 LOADK                            R18 K36 ["Binding"]
      263 LOADK                            R19 K48 ["PrimaryModifier"]
      264 NAMECALL                         R16 R1 K37 ["getText"]
      266 CALL                             R16 3 1
      267 SETTABLEKS                       R16 R15 K14 ["name"]
      269 GETTABLEKS                       R16 R5 K49 ["onPrimaryModifierMenuItemSelected"]
      271 SETTABLEKS                       R16 R15 K31 ["onEditMenuItemSelected"]
      273 SETTABLEKS                       R15 R14 K22 ["nodeProps"]
      275 GETTABLEKS                       R15 R0 K16 ["onCreated"]
      277 SETTABLEKS                       R15 R14 K16 ["onCreated"]
      279 GETTABLEKS                       R15 R0 K23 ["previousBindings"]
      281 SETTABLEKS                       R15 R14 K23 ["previousBindings"]
      283 GETTABLEKS                       R15 R0 K43 ["validBindingsBySchema"]
      285 SETTABLEKS                       R15 R14 K43 ["validBindingsBySchema"]
      287 CALL                             R12 2 1
      288 SETTABLEKS                       R12 R11 K42 ["primaryModifier"]
      290 GETTABLEKS                       R12 R5 K50 ["showSecondaryModifier"]
      292 JUMPIFNOT                        R12 ; [+59]
      293 GETUPVAL                         R12 0
      294 GETTABLEKS                       R12 R12 K21 ["createElement"]
      296 GETUPVAL                         R13 8
      297 DUPTABLE                         R14 K52 [{["bindings"], ["index"], ["LayoutOrder"], ["nodeProps"], ["onCreated"], ["previousBindings"], ["property"] = "secondaryModifier", ["validBindingsBySchema"]}]
      298 GETTABLEKS                       R15 R0 K6 ["bindings"]
      300 SETTABLEKS                       R15 R14 K6 ["bindings"]
      302 GETTABLEKS                       R15 R0 K40 ["index"]
      304 SETTABLEKS                       R15 R14 K40 ["index"]
      306 MOVE                             R15 R2
      307 CALL                             R15 0 1
      308 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      310 DUPTABLE                         R15 K45 [{["action"], ["depth"], ["disabled"], ["editMenu"], ["icon"] = "InputBinding", ["name"], ["onEditMenuItemSelected"]}]
      311 GETTABLEKS                       R16 R0 K4 ["action"]
      313 SETTABLEKS                       R16 R15 K4 ["action"]
      315 ADDK                             R16 R7 K46 [1]
      316 SETTABLEKS                       R16 R15 K26 ["depth"]
      318 SETTABLEKS                       R3 R15 K3 ["disabled"]
      320 GETTABLEKS                       R16 R5 K53 ["secondaryModifierMenu"]
      322 SETTABLEKS                       R16 R15 K27 ["editMenu"]
      324 LOADK                            R18 K36 ["Binding"]
      325 LOADK                            R19 K54 ["SecondaryModifier"]
      326 NAMECALL                         R16 R1 K37 ["getText"]
      328 CALL                             R16 3 1
      329 SETTABLEKS                       R16 R15 K14 ["name"]
      331 GETTABLEKS                       R16 R5 K55 ["onSecondaryModifierMenuItemSelected"]
      333 SETTABLEKS                       R16 R15 K31 ["onEditMenuItemSelected"]
      335 SETTABLEKS                       R15 R14 K22 ["nodeProps"]
      337 GETTABLEKS                       R15 R0 K16 ["onCreated"]
      339 SETTABLEKS                       R15 R14 K16 ["onCreated"]
      341 GETTABLEKS                       R15 R0 K23 ["previousBindings"]
      343 SETTABLEKS                       R15 R14 K23 ["previousBindings"]
      345 GETTABLEKS                       R15 R0 K43 ["validBindingsBySchema"]
      347 SETTABLEKS                       R15 R14 K43 ["validBindingsBySchema"]
      349 CALL                             R12 2 1
      350 SETTABLEKS                       R12 R11 K51 ["secondaryModifier"]
      352 MOVE                             R12 R8
      353 LOADNIL                          R13
      354 LOADNIL                          R14
      355 FORGPREP                         R12
      356 GETUPVAL                         R17 0
      357 GETTABLEKS                       R17 R17 K21 ["createElement"]
      359 GETUPVAL                         R18 8
      360 DUPTABLE                         R19 K56 [{"bindings", "index", "LayoutOrder", "nodeProps", "onCreated", "previousBindings", "property", "validBindingsBySchema"}]
      361 GETTABLEKS                       R20 R0 K6 ["bindings"]
      363 SETTABLEKS                       R20 R19 K6 ["bindings"]
      365 GETTABLEKS                       R20 R0 K40 ["index"]
      367 SETTABLEKS                       R20 R19 K40 ["index"]
      369 MOVE                             R20 R2
      370 CALL                             R20 0 1
      371 SETTABLEKS                       R20 R19 K11 ["LayoutOrder"]
      373 DUPTABLE                         R20 K57 [{["action"], ["depth"], ["disabled"], ["icon"] = "InputBinding", ["name"]}]
      374 GETTABLEKS                       R21 R0 K4 ["action"]
      376 SETTABLEKS                       R21 R20 K4 ["action"]
      378 ADDK                             R21 R7 K46 [1]
      379 SETTABLEKS                       R21 R20 K26 ["depth"]
      381 SETTABLEKS                       R3 R20 K3 ["disabled"]
      383 LOADK                            R23 K36 ["Binding"]
      384 GETUPVAL                         R25 9
      385 GETTABLE                         R24 R25 R16
      386 NAMECALL                         R21 R1 K37 ["getText"]
      388 CALL                             R21 3 1
      389 SETTABLEKS                       R21 R20 K14 ["name"]
      391 SETTABLEKS                       R20 R19 K22 ["nodeProps"]
      393 GETTABLEKS                       R20 R0 K16 ["onCreated"]
      395 SETTABLEKS                       R20 R19 K16 ["onCreated"]
      397 GETTABLEKS                       R20 R0 K23 ["previousBindings"]
      399 SETTABLEKS                       R20 R19 K23 ["previousBindings"]
      401 SETTABLEKS                       R16 R19 K41 ["property"]
      403 GETTABLEKS                       R20 R0 K43 ["validBindingsBySchema"]
      405 SETTABLEKS                       R20 R19 K43 ["validBindingsBySchema"]
      407 CALL                             R17 2 1
      408 SETTABLE                         R17 R11 R16
      409 FORGLOOP                         R12 2 ; [-54]
      411 GETUPVAL                         R12 0
      412 GETTABLEKS                       R12 R12 K21 ["createElement"]
      414 GETUPVAL                         R13 10
      415 DUPTABLE                         R14 K61 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      416 GETTABLEKS                       R15 R0 K11 ["LayoutOrder"]
      418 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      420 LOADK                            R15 K62 ["composite-binding-%*"]
      421 GETTABLEKS                       R17 R0 K40 ["index"]
      423 NAMECALL                         R15 R15 K63 ["format"]
      425 CALL                             R15 2 1
      426 SETTABLEKS                       R15 R14 K60 ["testId"]
      428 MOVE                             R15 R11
      429 CALL                             R12 3 -1
      430 RETURN                           R12 -1

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
      118 DUPTABLE                         R14 K42 [{["up"] = "Up", ["left"] = "Left", ["forward"] = "Forward", ["down"] = "Down", ["right"] = "Right", ["backward"] = "Backward"}]
      119 DUPCLOSURE                       R15 K43 [PROTO_5]
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R14
      130 CAPTURE                          VAL R6
      131 RETURN                           R15 1
