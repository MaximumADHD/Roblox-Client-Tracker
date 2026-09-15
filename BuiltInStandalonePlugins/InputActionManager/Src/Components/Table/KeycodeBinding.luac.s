PROTO_0:
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
       17 LOADK                            R4 K4 ["Keycode"]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K5 ["onCreated"]
       21 JUMPIFNOTEQKNIL                  R6 ; [+2]
       23 LOADB                            R5 0 +1
       24 LOADB                            R5 1
       25 CALL                             R0 5 -1
       26 RETURN                           R0 -1

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["name"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADN                            R0 1
        5 RETURN                           R0 1
        6 LOADN                            R0 2
        7 RETURN                           R0 1

PROTO_3:
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
       18 GETTABLEKS                       R7 R0 K6 ["onBindingCreateCommand"]
       20 GETTABLEKS                       R8 R0 K7 ["action"]
       22 GETTABLEKS                       R8 R8 K8 ["uuid"]
       24 GETTABLEKS                       R9 R0 K9 ["LayoutOrder"]
       26 LOADK                            R10 K10 ["Keycode"]
       27 CALL                             R3 7 1
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K11 ["useMemo"]
       31 NEWCLOSURE                       R5 P0
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R0
       35 NEWTABLE                         R6 0 5
       37 MOVE                             R7 R1
       38 GETTABLEKS                       R8 R0 K12 ["onCreated"]
       40 GETTABLEKS                       R9 R0 K7 ["action"]
       42 GETTABLEKS                       R9 R9 K13 ["type"]
       44 GETTABLEKS                       R10 R0 K4 ["isRoot"]
       46 GETTABLEKS                       R11 R0 K3 ["bindings"]
       48 SETLIST                          R6 R7 5 [1]
       50 CALL                             R4 2 1
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R5 R5 K11 ["useMemo"]
       54 NEWCLOSURE                       R6 P1
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          VAL R1
       59 NEWTABLE                         R7 0 3
       61 MOVE                             R8 R1
       62 GETTABLEKS                       R9 R0 K14 ["createMenu"]
       64 GETTABLEKS                       R10 R0 K3 ["bindings"]
       66 SETLIST                          R7 R8 3 [1]
       68 CALL                             R5 2 1
       69 GETUPVAL                         R6 0
       70 GETTABLEKS                       R6 R6 K11 ["useMemo"]
       72 NEWCLOSURE                       R7 P2
       73 CAPTURE                          VAL R0
       74 NEWTABLE                         R8 0 1
       76 GETTABLEKS                       R9 R0 K15 ["name"]
       78 SETLIST                          R8 R9 1 [1]
       80 CALL                             R6 2 1
       81 GETTABLEKS                       R7 R3 K16 ["showPrimaryModifier"]
       83 JUMPIF                           R7 ; [+2]
       84 GETTABLEKS                       R7 R3 K17 ["showSecondaryModifier"]
       86 NEWTABLE                         R8 4 0
       88 GETUPVAL                         R9 0
       89 GETTABLEKS                       R9 R9 K18 ["createElement"]
       91 GETUPVAL                         R10 7
       92 DUPTABLE                         R11 K25 [{["bindings"], ["index"], ["LayoutOrder"], ["nodeProps"], ["onCreated"], ["previousBindings"], ["property"] = "keyCode", ["validBindingsBySchema"]}]
       93 GETTABLEKS                       R12 R0 K3 ["bindings"]
       95 SETTABLEKS                       R12 R11 K3 ["bindings"]
       97 GETTABLEKS                       R12 R0 K19 ["index"]
       99 SETTABLEKS                       R12 R11 K19 ["index"]
      101 MOVE                             R12 R2
      102 CALL                             R12 0 1
      103 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
      105 DUPTABLE                         R12 K33 [{"action", "createMenu", "depth", "editMenu", "expanded", "onEditMenuItemSelected", "setExpanded", "icon", "name", "onCreateMenuItemSelected"}]
      106 GETTABLEKS                       R13 R0 K7 ["action"]
      108 SETTABLEKS                       R13 R12 K7 ["action"]
      110 SETTABLEKS                       R5 R12 K14 ["createMenu"]
      112 SETTABLEKS                       R6 R12 K26 ["depth"]
      114 SETTABLEKS                       R4 R12 K27 ["editMenu"]
      116 JUMPIFNOT                        R7 ; [+3]
      117 GETTABLEKS                       R13 R3 K28 ["expanded"]
      119 JUMP                             ; [+1]
      120 LOADNIL                          R13
      121 SETTABLEKS                       R13 R12 K28 ["expanded"]
      123 GETTABLEKS                       R13 R3 K29 ["onEditMenuItemSelected"]
      125 SETTABLEKS                       R13 R12 K29 ["onEditMenuItemSelected"]
      127 JUMPIFNOT                        R7 ; [+3]
      128 GETTABLEKS                       R13 R3 K30 ["setExpanded"]
      130 JUMP                             ; [+1]
      131 LOADNIL                          R13
      132 SETTABLEKS                       R13 R12 K30 ["setExpanded"]
      134 GETTABLEKS                       R14 R0 K15 ["name"]
      136 JUMPIFNOT                        R14 ; [+2]
      137 LOADK                            R13 K34 ["InputAction"]
      138 JUMP                             ; [+1]
      139 LOADK                            R13 K35 ["InputBinding"]
      140 SETTABLEKS                       R13 R12 K31 ["icon"]
      142 GETTABLEKS                       R13 R0 K15 ["name"]
      144 JUMPIF                           R13 ; [+5]
      145 LOADK                            R15 K36 ["Binding"]
      146 LOADK                            R16 K10 ["Keycode"]
      147 NAMECALL                         R13 R1 K37 ["getText"]
      149 CALL                             R13 3 1
      150 SETTABLEKS                       R13 R12 K15 ["name"]
      152 GETUPVAL                         R14 5
      153 CALL                             R14 0 1
      154 JUMPIFNOT                        R14 ; [+3]
      155 GETTABLEKS                       R13 R3 K32 ["onCreateMenuItemSelected"]
      157 JUMP                             ; [+2]
      158 GETTABLEKS                       R13 R0 K6 ["onBindingCreateCommand"]
      160 SETTABLEKS                       R13 R12 K32 ["onCreateMenuItemSelected"]
      162 SETTABLEKS                       R12 R11 K20 ["nodeProps"]
      164 GETTABLEKS                       R12 R0 K12 ["onCreated"]
      166 SETTABLEKS                       R12 R11 K12 ["onCreated"]
      168 GETTABLEKS                       R12 R0 K21 ["previousBindings"]
      170 SETTABLEKS                       R12 R11 K21 ["previousBindings"]
      172 GETTABLEKS                       R12 R0 K24 ["validBindingsBySchema"]
      174 SETTABLEKS                       R12 R11 K24 ["validBindingsBySchema"]
      176 CALL                             R9 2 1
      177 SETTABLEKS                       R9 R8 K38 ["header"]
      179 GETTABLEKS                       R9 R3 K28 ["expanded"]
      181 JUMPIFEQKB                       R9 FALSE ; [+114]
      183 JUMPIFNOT                        R7 ; [+112]
      184 GETTABLEKS                       R9 R3 K16 ["showPrimaryModifier"]
      186 JUMPIFNOT                        R9 ; [+53]
      187 GETUPVAL                         R9 0
      188 GETTABLEKS                       R9 R9 K18 ["createElement"]
      190 GETUPVAL                         R10 7
      191 DUPTABLE                         R11 K40 [{["bindings"], ["index"], ["LayoutOrder"], ["nodeProps"], ["previousBindings"], ["property"] = "primaryModifier", ["validBindingsBySchema"]}]
      192 GETTABLEKS                       R12 R0 K3 ["bindings"]
      194 SETTABLEKS                       R12 R11 K3 ["bindings"]
      196 GETTABLEKS                       R12 R0 K19 ["index"]
      198 SETTABLEKS                       R12 R11 K19 ["index"]
      200 MOVE                             R12 R2
      201 CALL                             R12 0 1
      202 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
      204 DUPTABLE                         R12 K41 [{["action"], ["depth"], ["editMenu"], ["icon"] = "InputBinding", ["name"], ["onEditMenuItemSelected"]}]
      205 GETTABLEKS                       R13 R0 K7 ["action"]
      207 SETTABLEKS                       R13 R12 K7 ["action"]
      209 ADDK                             R13 R6 K42 [1]
      210 SETTABLEKS                       R13 R12 K26 ["depth"]
      212 GETTABLEKS                       R13 R3 K43 ["primaryModifierMenu"]
      214 SETTABLEKS                       R13 R12 K27 ["editMenu"]
      216 LOADK                            R15 K36 ["Binding"]
      217 LOADK                            R16 K44 ["PrimaryModifier"]
      218 NAMECALL                         R13 R1 K37 ["getText"]
      220 CALL                             R13 3 1
      221 SETTABLEKS                       R13 R12 K15 ["name"]
      223 GETTABLEKS                       R13 R3 K45 ["onPrimaryModifierMenuItemSelected"]
      225 SETTABLEKS                       R13 R12 K29 ["onEditMenuItemSelected"]
      227 SETTABLEKS                       R12 R11 K20 ["nodeProps"]
      229 GETTABLEKS                       R12 R0 K21 ["previousBindings"]
      231 SETTABLEKS                       R12 R11 K21 ["previousBindings"]
      233 GETTABLEKS                       R12 R0 K24 ["validBindingsBySchema"]
      235 SETTABLEKS                       R12 R11 K24 ["validBindingsBySchema"]
      237 CALL                             R9 2 1
      238 SETTABLEKS                       R9 R8 K39 ["primaryModifier"]
      240 GETTABLEKS                       R9 R3 K17 ["showSecondaryModifier"]
      242 JUMPIFNOT                        R9 ; [+53]
      243 GETUPVAL                         R9 0
      244 GETTABLEKS                       R9 R9 K18 ["createElement"]
      246 GETUPVAL                         R10 7
      247 DUPTABLE                         R11 K47 [{["bindings"], ["index"], ["LayoutOrder"], ["nodeProps"], ["previousBindings"], ["property"] = "secondaryModifier", ["validBindingsBySchema"]}]
      248 GETTABLEKS                       R12 R0 K3 ["bindings"]
      250 SETTABLEKS                       R12 R11 K3 ["bindings"]
      252 GETTABLEKS                       R12 R0 K19 ["index"]
      254 SETTABLEKS                       R12 R11 K19 ["index"]
      256 MOVE                             R12 R2
      257 CALL                             R12 0 1
      258 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
      260 DUPTABLE                         R12 K41 [{["action"], ["depth"], ["editMenu"], ["icon"] = "InputBinding", ["name"], ["onEditMenuItemSelected"]}]
      261 GETTABLEKS                       R13 R0 K7 ["action"]
      263 SETTABLEKS                       R13 R12 K7 ["action"]
      265 ADDK                             R13 R6 K42 [1]
      266 SETTABLEKS                       R13 R12 K26 ["depth"]
      268 GETTABLEKS                       R13 R3 K48 ["secondaryModifierMenu"]
      270 SETTABLEKS                       R13 R12 K27 ["editMenu"]
      272 LOADK                            R15 K36 ["Binding"]
      273 LOADK                            R16 K49 ["SecondaryModifier"]
      274 NAMECALL                         R13 R1 K37 ["getText"]
      276 CALL                             R13 3 1
      277 SETTABLEKS                       R13 R12 K15 ["name"]
      279 GETTABLEKS                       R13 R3 K50 ["onSecondaryModifierMenuItemSelected"]
      281 SETTABLEKS                       R13 R12 K29 ["onEditMenuItemSelected"]
      283 SETTABLEKS                       R12 R11 K20 ["nodeProps"]
      285 GETTABLEKS                       R12 R0 K21 ["previousBindings"]
      287 SETTABLEKS                       R12 R11 K21 ["previousBindings"]
      289 GETTABLEKS                       R12 R0 K24 ["validBindingsBySchema"]
      291 SETTABLEKS                       R12 R11 K24 ["validBindingsBySchema"]
      293 CALL                             R9 2 1
      294 SETTABLEKS                       R9 R8 K46 ["secondaryModifier"]
      296 GETUPVAL                         R9 0
      297 GETTABLEKS                       R9 R9 K18 ["createElement"]
      299 GETUPVAL                         R10 8
      300 DUPTABLE                         R11 K54 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      301 GETTABLEKS                       R12 R0 K9 ["LayoutOrder"]
      303 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
      305 LOADK                            R12 K55 ["keycode-binding-%*"]
      306 GETTABLEKS                       R14 R0 K19 ["index"]
      308 NAMECALL                         R12 R12 K56 ["format"]
      310 CALL                             R12 2 1
      311 SETTABLEKS                       R12 R11 K53 ["testId"]
      313 MOVE                             R12 R8
      314 CALL                             R9 3 -1
      315 RETURN                           R9 -1

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
       58 GETTABLEKS                       R9 R9 K19 ["Types"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K14 ["Src"]
       65 GETTABLEKS                       R10 R10 K20 ["Util"]
       67 GETTABLEKS                       R10 R10 K21 ["Menus"]
       69 GETTABLEKS                       R10 R10 K22 ["getCreateModifierMenu"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K14 ["Src"]
       76 GETTABLEKS                       R11 R11 K20 ["Util"]
       78 GETTABLEKS                       R11 R11 K21 ["Menus"]
       80 GETTABLEKS                       R11 R11 K23 ["getEditMenu"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K14 ["Src"]
       87 GETTABLEKS                       R12 R12 K24 ["Hooks"]
       89 GETTABLEKS                       R12 R12 K25 ["Binding"]
       91 GETTABLEKS                       R12 R12 K26 ["useBinding"]
       93 CALL                             R11 1 1
       94 GETTABLEKS                       R12 R0 K14 ["Src"]
       96 GETTABLEKS                       R12 R12 K27 ["Flags"]
       98 GETIMPORT                        R13 K5 [require]
      100 GETTABLEKS                       R14 R12 K28 ["getFFlagIAMImprovedModifierMenu"]
      102 CALL                             R13 1 1
      103 DUPCLOSURE                       R14 K29 [PROTO_3]
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R6
      113 RETURN                           R14 1
