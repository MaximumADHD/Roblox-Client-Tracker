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
       25 CALL                             R0 5 -1
       26 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["createNextOrder"]
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R4 R0 K3 ["bindings"]
       14 GETTABLEKS                       R5 R0 K4 ["isRoot"]
       16 GETTABLEKS                       R6 R0 K5 ["onBindingEditCommand"]
       18 GETTABLEKS                       R7 R0 K6 ["action"]
       20 GETTABLEKS                       R7 R7 K7 ["uuid"]
       22 GETTABLEKS                       R8 R0 K8 ["LayoutOrder"]
       24 LOADK                            R9 K9 ["Composite"]
       25 CALL                             R3 6 1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K10 ["useMemo"]
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          VAL R0
       31 NEWTABLE                         R6 0 1
       33 GETTABLEKS                       R7 R0 K3 ["bindings"]
       35 SETLIST                          R6 R7 1 [1]
       37 CALL                             R4 2 1
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K10 ["useMemo"]
       41 NEWCLOSURE                       R6 P1
       42 CAPTURE                          VAL R0
       43 NEWTABLE                         R7 0 1
       45 GETTABLEKS                       R8 R0 K11 ["name"]
       47 SETLIST                          R7 R8 1 [1]
       49 CALL                             R5 2 1
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R6 R6 K10 ["useMemo"]
       53 NEWCLOSURE                       R7 P2
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          VAL R0
       56 NEWTABLE                         R8 0 1
       58 GETTABLEKS                       R9 R0 K6 ["action"]
       60 GETTABLEKS                       R9 R9 K12 ["type"]
       62 SETLIST                          R8 R9 1 [1]
       64 CALL                             R6 2 1
       65 GETUPVAL                         R7 0
       66 GETTABLEKS                       R7 R7 K10 ["useMemo"]
       68 NEWCLOSURE                       R8 P3
       69 CAPTURE                          UPVAL U5
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R0
       72 NEWTABLE                         R9 0 5
       74 MOVE                             R10 R1
       75 GETTABLEKS                       R11 R0 K13 ["onCreated"]
       77 GETTABLEKS                       R12 R0 K6 ["action"]
       79 GETTABLEKS                       R12 R12 K12 ["type"]
       81 GETTABLEKS                       R13 R0 K4 ["isRoot"]
       83 GETTABLEKS                       R14 R0 K3 ["bindings"]
       85 SETLIST                          R9 R10 5 [1]
       87 CALL                             R7 2 1
       88 NEWTABLE                         R8 4 0
       90 GETUPVAL                         R9 0
       91 GETTABLEKS                       R9 R9 K14 ["createElement"]
       93 GETUPVAL                         R10 6
       94 DUPTABLE                         R11 K17 [{"bindings", "LayoutOrder", "nodeProps", "previousBindings"}]
       95 SETTABLEKS                       R4 R11 K3 ["bindings"]
       97 MOVE                             R12 R2
       98 CALL                             R12 0 1
       99 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
      101 DUPTABLE                         R12 K26 [{"action", "createMenu", "depth", "editMenu", "expanded", "icon", "name", "onCreateMenuItemSelected", "onEditMenuItemSelected", "setExpanded"}]
      102 GETTABLEKS                       R13 R0 K6 ["action"]
      104 SETTABLEKS                       R13 R12 K6 ["action"]
      106 GETTABLEKS                       R13 R0 K18 ["createMenu"]
      108 SETTABLEKS                       R13 R12 K18 ["createMenu"]
      110 SETTABLEKS                       R5 R12 K19 ["depth"]
      112 SETTABLEKS                       R7 R12 K20 ["editMenu"]
      114 LOADB                            R13 1
      115 GETTABLEKS                       R14 R0 K13 ["onCreated"]
      117 JUMPIFNOTEQKNIL                  R14 ; [+3]
      119 GETTABLEKS                       R13 R3 K21 ["expanded"]
      121 SETTABLEKS                       R13 R12 K21 ["expanded"]
      123 GETTABLEKS                       R14 R0 K11 ["name"]
      125 JUMPIFNOT                        R14 ; [+2]
      126 LOADK                            R13 K27 ["InputAction"]
      127 JUMP                             ; [+1]
      128 LOADK                            R13 K28 ["InputBinding"]
      129 SETTABLEKS                       R13 R12 K22 ["icon"]
      131 GETTABLEKS                       R13 R0 K11 ["name"]
      133 JUMPIF                           R13 ; [+5]
      134 LOADK                            R15 K29 ["Binding"]
      135 LOADK                            R16 K9 ["Composite"]
      136 NAMECALL                         R13 R1 K30 ["getText"]
      138 CALL                             R13 3 1
      139 SETTABLEKS                       R13 R12 K11 ["name"]
      141 GETTABLEKS                       R13 R0 K23 ["onCreateMenuItemSelected"]
      143 SETTABLEKS                       R13 R12 K23 ["onCreateMenuItemSelected"]
      145 GETTABLEKS                       R13 R3 K24 ["onEditMenuItemSelected"]
      147 SETTABLEKS                       R13 R12 K24 ["onEditMenuItemSelected"]
      149 GETTABLEKS                       R14 R0 K13 ["onCreated"]
      151 JUMPIFNOTEQKNIL                  R14 ; [+4]
      153 GETTABLEKS                       R13 R3 K25 ["setExpanded"]
      155 JUMP                             ; [+1]
      156 LOADNIL                          R13
      157 SETTABLEKS                       R13 R12 K25 ["setExpanded"]
      159 SETTABLEKS                       R12 R11 K15 ["nodeProps"]
      161 GETTABLEKS                       R12 R0 K16 ["previousBindings"]
      163 SETTABLEKS                       R12 R11 K16 ["previousBindings"]
      165 CALL                             R9 2 1
      166 SETTABLEKS                       R9 R8 K31 ["header"]
      168 GETTABLEKS                       R9 R3 K21 ["expanded"]
      170 JUMPIF                           R9 ; [+3]
      171 GETTABLEKS                       R9 R0 K13 ["onCreated"]
      173 JUMPIFNOT                        R9 ; [+177]
      174 GETTABLEKS                       R9 R3 K32 ["showPrimaryModifier"]
      176 JUMPIFNOT                        R9 ; [+57]
      177 GETUPVAL                         R9 0
      178 GETTABLEKS                       R9 R9 K14 ["createElement"]
      180 GETUPVAL                         R10 7
      181 DUPTABLE                         R11 K37 [{["bindings"], ["index"], ["LayoutOrder"], ["nodeProps"], ["onCreated"], ["previousBindings"], ["property"] = "primaryModifier", ["validBindingsBySchema"]}]
      182 GETTABLEKS                       R12 R0 K3 ["bindings"]
      184 SETTABLEKS                       R12 R11 K3 ["bindings"]
      186 GETTABLEKS                       R12 R0 K33 ["index"]
      188 SETTABLEKS                       R12 R11 K33 ["index"]
      190 MOVE                             R12 R2
      191 CALL                             R12 0 1
      192 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
      194 DUPTABLE                         R12 K38 [{["action"], ["depth"], ["editMenu"], ["icon"] = "InputBinding", ["name"], ["onEditMenuItemSelected"]}]
      195 GETTABLEKS                       R13 R0 K6 ["action"]
      197 SETTABLEKS                       R13 R12 K6 ["action"]
      199 ADDK                             R13 R5 K39 [1]
      200 SETTABLEKS                       R13 R12 K19 ["depth"]
      202 GETTABLEKS                       R13 R3 K40 ["primaryModifierMenu"]
      204 SETTABLEKS                       R13 R12 K20 ["editMenu"]
      206 LOADK                            R15 K29 ["Binding"]
      207 LOADK                            R16 K41 ["PrimaryModifier"]
      208 NAMECALL                         R13 R1 K30 ["getText"]
      210 CALL                             R13 3 1
      211 SETTABLEKS                       R13 R12 K11 ["name"]
      213 GETTABLEKS                       R13 R3 K42 ["onPrimaryModifierMenuItemSelected"]
      215 SETTABLEKS                       R13 R12 K24 ["onEditMenuItemSelected"]
      217 SETTABLEKS                       R12 R11 K15 ["nodeProps"]
      219 GETTABLEKS                       R12 R0 K13 ["onCreated"]
      221 SETTABLEKS                       R12 R11 K13 ["onCreated"]
      223 GETTABLEKS                       R12 R0 K16 ["previousBindings"]
      225 SETTABLEKS                       R12 R11 K16 ["previousBindings"]
      227 GETTABLEKS                       R12 R0 K36 ["validBindingsBySchema"]
      229 SETTABLEKS                       R12 R11 K36 ["validBindingsBySchema"]
      231 CALL                             R9 2 1
      232 SETTABLEKS                       R9 R8 K35 ["primaryModifier"]
      234 GETTABLEKS                       R9 R3 K43 ["showSecondaryModifier"]
      236 JUMPIFNOT                        R9 ; [+57]
      237 GETUPVAL                         R9 0
      238 GETTABLEKS                       R9 R9 K14 ["createElement"]
      240 GETUPVAL                         R10 7
      241 DUPTABLE                         R11 K45 [{["bindings"], ["index"], ["LayoutOrder"], ["nodeProps"], ["onCreated"], ["previousBindings"], ["property"] = "secondaryModifier", ["validBindingsBySchema"]}]
      242 GETTABLEKS                       R12 R0 K3 ["bindings"]
      244 SETTABLEKS                       R12 R11 K3 ["bindings"]
      246 GETTABLEKS                       R12 R0 K33 ["index"]
      248 SETTABLEKS                       R12 R11 K33 ["index"]
      250 MOVE                             R12 R2
      251 CALL                             R12 0 1
      252 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
      254 DUPTABLE                         R12 K38 [{["action"], ["depth"], ["editMenu"], ["icon"] = "InputBinding", ["name"], ["onEditMenuItemSelected"]}]
      255 GETTABLEKS                       R13 R0 K6 ["action"]
      257 SETTABLEKS                       R13 R12 K6 ["action"]
      259 ADDK                             R13 R5 K39 [1]
      260 SETTABLEKS                       R13 R12 K19 ["depth"]
      262 GETTABLEKS                       R13 R3 K46 ["secondaryModifierMenu"]
      264 SETTABLEKS                       R13 R12 K20 ["editMenu"]
      266 LOADK                            R15 K29 ["Binding"]
      267 LOADK                            R16 K47 ["SecondaryModifier"]
      268 NAMECALL                         R13 R1 K30 ["getText"]
      270 CALL                             R13 3 1
      271 SETTABLEKS                       R13 R12 K11 ["name"]
      273 GETTABLEKS                       R13 R3 K48 ["onSecondaryModifierMenuItemSelected"]
      275 SETTABLEKS                       R13 R12 K24 ["onEditMenuItemSelected"]
      277 SETTABLEKS                       R12 R11 K15 ["nodeProps"]
      279 GETTABLEKS                       R12 R0 K13 ["onCreated"]
      281 SETTABLEKS                       R12 R11 K13 ["onCreated"]
      283 GETTABLEKS                       R12 R0 K16 ["previousBindings"]
      285 SETTABLEKS                       R12 R11 K16 ["previousBindings"]
      287 GETTABLEKS                       R12 R0 K36 ["validBindingsBySchema"]
      289 SETTABLEKS                       R12 R11 K36 ["validBindingsBySchema"]
      291 CALL                             R9 2 1
      292 SETTABLEKS                       R9 R8 K44 ["secondaryModifier"]
      294 MOVE                             R9 R6
      295 LOADNIL                          R10
      296 LOADNIL                          R11
      297 FORGPREP                         R9
      298 GETUPVAL                         R14 0
      299 GETTABLEKS                       R14 R14 K14 ["createElement"]
      301 GETUPVAL                         R15 7
      302 DUPTABLE                         R16 K49 [{"bindings", "index", "LayoutOrder", "nodeProps", "onCreated", "previousBindings", "property", "validBindingsBySchema"}]
      303 GETTABLEKS                       R17 R0 K3 ["bindings"]
      305 SETTABLEKS                       R17 R16 K3 ["bindings"]
      307 GETTABLEKS                       R17 R0 K33 ["index"]
      309 SETTABLEKS                       R17 R16 K33 ["index"]
      311 MOVE                             R17 R2
      312 CALL                             R17 0 1
      313 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      315 DUPTABLE                         R17 K50 [{["action"], ["depth"], ["icon"] = "InputBinding", ["name"]}]
      316 GETTABLEKS                       R18 R0 K6 ["action"]
      318 SETTABLEKS                       R18 R17 K6 ["action"]
      320 ADDK                             R18 R5 K39 [1]
      321 SETTABLEKS                       R18 R17 K19 ["depth"]
      323 LOADK                            R20 K29 ["Binding"]
      324 GETUPVAL                         R22 8
      325 GETTABLE                         R21 R22 R13
      326 NAMECALL                         R18 R1 K30 ["getText"]
      328 CALL                             R18 3 1
      329 SETTABLEKS                       R18 R17 K11 ["name"]
      331 SETTABLEKS                       R17 R16 K15 ["nodeProps"]
      333 GETTABLEKS                       R17 R0 K13 ["onCreated"]
      335 SETTABLEKS                       R17 R16 K13 ["onCreated"]
      337 GETTABLEKS                       R17 R0 K16 ["previousBindings"]
      339 SETTABLEKS                       R17 R16 K16 ["previousBindings"]
      341 SETTABLEKS                       R13 R16 K34 ["property"]
      343 GETTABLEKS                       R17 R0 K36 ["validBindingsBySchema"]
      345 SETTABLEKS                       R17 R16 K36 ["validBindingsBySchema"]
      347 CALL                             R14 2 1
      348 SETTABLE                         R14 R8 R13
      349 FORGLOOP                         R9 2 ; [-52]
      351 GETUPVAL                         R9 0
      352 GETTABLEKS                       R9 R9 K14 ["createElement"]
      354 GETUPVAL                         R10 9
      355 DUPTABLE                         R11 K54 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      356 GETTABLEKS                       R12 R0 K8 ["LayoutOrder"]
      358 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
      360 LOADK                            R13 K55 ["composite-binding-%*"]
      361 GETTABLEKS                       R15 R0 K33 ["index"]
      363 NAMECALL                         R13 R13 K56 ["format"]
      365 CALL                             R13 2 1
      366 MOVE                             R12 R13
      367 SETTABLEKS                       R12 R11 K53 ["testId"]
      369 MOVE                             R12 R8
      370 CALL                             R9 3 -1
      371 RETURN                           R9 -1

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
       93 GETTABLEKS                       R12 R12 K25 ["getEditMenu"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R13 R0 K14 ["Src"]
      100 GETTABLEKS                       R13 R13 K26 ["Hooks"]
      102 GETTABLEKS                       R13 R13 K27 ["Binding"]
      104 GETTABLEKS                       R13 R13 K28 ["useBinding"]
      106 CALL                             R12 1 1
      107 DUPTABLE                         R13 K41 [{["up"] = "Up", ["left"] = "Left", ["forward"] = "Forward", ["down"] = "Down", ["right"] = "Right", ["backward"] = "Backward"}]
      108 DUPCLOSURE                       R14 K42 [PROTO_4]
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R6
      119 RETURN                           R14 1
