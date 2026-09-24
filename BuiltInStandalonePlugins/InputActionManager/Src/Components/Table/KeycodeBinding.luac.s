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
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K1 ["action"]
       28 GETTABLEKS                       R6 R6 K6 ["enabled"]
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K7 ["context"]
       33 GETTABLEKS                       R7 R7 K6 ["enabled"]
       35 CALL                             R0 7 -1
       36 RETURN                           R0 -1

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
       33 LOADK                            R11 K11 ["Keycode"]
       34 CALL                             R4 7 1
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K12 ["useMemo"]
       38 NEWCLOSURE                       R6 P0
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R0
       42 NEWTABLE                         R7 0 7
       44 MOVE                             R8 R1
       45 GETTABLEKS                       R9 R0 K13 ["onCreated"]
       47 GETTABLEKS                       R10 R0 K8 ["action"]
       49 GETTABLEKS                       R10 R10 K14 ["type"]
       51 GETTABLEKS                       R11 R0 K8 ["action"]
       53 GETTABLEKS                       R11 R11 K15 ["enabled"]
       55 GETTABLEKS                       R12 R0 K16 ["context"]
       57 GETTABLEKS                       R12 R12 K15 ["enabled"]
       59 GETTABLEKS                       R13 R0 K5 ["isRoot"]
       61 GETTABLEKS                       R14 R0 K4 ["bindings"]
       63 SETLIST                          R7 R8 7 [1]
       65 CALL                             R5 2 1
       66 GETUPVAL                         R6 0
       67 GETTABLEKS                       R6 R6 K12 ["useMemo"]
       69 NEWCLOSURE                       R7 P1
       70 CAPTURE                          UPVAL U6
       71 CAPTURE                          VAL R0
       72 CAPTURE                          UPVAL U7
       73 CAPTURE                          VAL R1
       74 NEWTABLE                         R8 0 3
       76 MOVE                             R9 R1
       77 GETTABLEKS                       R10 R0 K17 ["createMenu"]
       79 GETTABLEKS                       R11 R0 K4 ["bindings"]
       81 SETLIST                          R8 R9 3 [1]
       83 CALL                             R6 2 1
       84 GETUPVAL                         R7 0
       85 GETTABLEKS                       R7 R7 K12 ["useMemo"]
       87 NEWCLOSURE                       R8 P2
       88 CAPTURE                          VAL R0
       89 NEWTABLE                         R9 0 1
       91 GETTABLEKS                       R10 R0 K18 ["name"]
       93 SETLIST                          R9 R10 1 [1]
       95 CALL                             R7 2 1
       96 GETTABLEKS                       R8 R4 K19 ["showPrimaryModifier"]
       98 JUMPIF                           R8 ; [+2]
       99 GETTABLEKS                       R8 R4 K20 ["showSecondaryModifier"]
      101 NEWTABLE                         R9 4 0
      103 GETUPVAL                         R10 0
      104 GETTABLEKS                       R10 R10 K21 ["createElement"]
      106 GETUPVAL                         R11 8
      107 DUPTABLE                         R12 K28 [{["bindings"], ["index"], ["LayoutOrder"], ["nodeProps"], ["onCreated"], ["previousBindings"], ["property"] = "keyCode", ["validBindingsBySchema"]}]
      108 GETTABLEKS                       R13 R0 K4 ["bindings"]
      110 SETTABLEKS                       R13 R12 K4 ["bindings"]
      112 GETTABLEKS                       R13 R0 K22 ["index"]
      114 SETTABLEKS                       R13 R12 K22 ["index"]
      116 MOVE                             R13 R2
      117 CALL                             R13 0 1
      118 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
      120 DUPTABLE                         R13 K36 [{"action", "createMenu", "depth", "disabled", "editMenu", "expanded", "onEditMenuItemSelected", "setExpanded", "icon", "name", "onCreateMenuItemSelected"}]
      121 GETTABLEKS                       R14 R0 K8 ["action"]
      123 SETTABLEKS                       R14 R13 K8 ["action"]
      125 SETTABLEKS                       R6 R13 K17 ["createMenu"]
      127 SETTABLEKS                       R7 R13 K29 ["depth"]
      129 SETTABLEKS                       R3 R13 K3 ["disabled"]
      131 SETTABLEKS                       R5 R13 K30 ["editMenu"]
      133 JUMPIFNOT                        R8 ; [+3]
      134 GETTABLEKS                       R14 R4 K31 ["expanded"]
      136 JUMP                             ; [+1]
      137 LOADNIL                          R14
      138 SETTABLEKS                       R14 R13 K31 ["expanded"]
      140 GETTABLEKS                       R14 R4 K32 ["onEditMenuItemSelected"]
      142 SETTABLEKS                       R14 R13 K32 ["onEditMenuItemSelected"]
      144 JUMPIFNOT                        R8 ; [+3]
      145 GETTABLEKS                       R14 R4 K33 ["setExpanded"]
      147 JUMP                             ; [+1]
      148 LOADNIL                          R14
      149 SETTABLEKS                       R14 R13 K33 ["setExpanded"]
      151 GETTABLEKS                       R15 R0 K18 ["name"]
      153 JUMPIFNOT                        R15 ; [+2]
      154 LOADK                            R14 K37 ["InputAction"]
      155 JUMP                             ; [+1]
      156 LOADK                            R14 K38 ["InputBinding"]
      157 SETTABLEKS                       R14 R13 K34 ["icon"]
      159 GETTABLEKS                       R14 R0 K18 ["name"]
      161 JUMPIF                           R14 ; [+5]
      162 LOADK                            R16 K39 ["Binding"]
      163 LOADK                            R17 K11 ["Keycode"]
      164 NAMECALL                         R14 R1 K40 ["getText"]
      166 CALL                             R14 3 1
      167 SETTABLEKS                       R14 R13 K18 ["name"]
      169 GETUPVAL                         R15 6
      170 CALL                             R15 0 1
      171 JUMPIFNOT                        R15 ; [+3]
      172 GETTABLEKS                       R14 R4 K35 ["onCreateMenuItemSelected"]
      174 JUMP                             ; [+2]
      175 GETTABLEKS                       R14 R0 K7 ["onBindingCreateCommand"]
      177 SETTABLEKS                       R14 R13 K35 ["onCreateMenuItemSelected"]
      179 SETTABLEKS                       R13 R12 K23 ["nodeProps"]
      181 GETTABLEKS                       R13 R0 K13 ["onCreated"]
      183 SETTABLEKS                       R13 R12 K13 ["onCreated"]
      185 GETTABLEKS                       R13 R0 K24 ["previousBindings"]
      187 SETTABLEKS                       R13 R12 K24 ["previousBindings"]
      189 GETTABLEKS                       R13 R0 K27 ["validBindingsBySchema"]
      191 SETTABLEKS                       R13 R12 K27 ["validBindingsBySchema"]
      193 CALL                             R10 2 1
      194 SETTABLEKS                       R10 R9 K41 ["header"]
      196 GETTABLEKS                       R10 R4 K31 ["expanded"]
      198 JUMPIFEQKB                       R10 FALSE ; [+118]
      200 JUMPIFNOT                        R8 ; [+116]
      201 GETTABLEKS                       R10 R4 K19 ["showPrimaryModifier"]
      203 JUMPIFNOT                        R10 ; [+55]
      204 GETUPVAL                         R10 0
      205 GETTABLEKS                       R10 R10 K21 ["createElement"]
      207 GETUPVAL                         R11 8
      208 DUPTABLE                         R12 K43 [{["bindings"], ["index"], ["LayoutOrder"], ["nodeProps"], ["previousBindings"], ["property"] = "primaryModifier", ["validBindingsBySchema"]}]
      209 GETTABLEKS                       R13 R0 K4 ["bindings"]
      211 SETTABLEKS                       R13 R12 K4 ["bindings"]
      213 GETTABLEKS                       R13 R0 K22 ["index"]
      215 SETTABLEKS                       R13 R12 K22 ["index"]
      217 MOVE                             R13 R2
      218 CALL                             R13 0 1
      219 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
      221 DUPTABLE                         R13 K44 [{["action"], ["depth"], ["disabled"], ["editMenu"], ["icon"] = "InputBinding", ["name"], ["onEditMenuItemSelected"]}]
      222 GETTABLEKS                       R14 R0 K8 ["action"]
      224 SETTABLEKS                       R14 R13 K8 ["action"]
      226 ADDK                             R14 R7 K45 [1]
      227 SETTABLEKS                       R14 R13 K29 ["depth"]
      229 SETTABLEKS                       R3 R13 K3 ["disabled"]
      231 GETTABLEKS                       R14 R4 K46 ["primaryModifierMenu"]
      233 SETTABLEKS                       R14 R13 K30 ["editMenu"]
      235 LOADK                            R16 K39 ["Binding"]
      236 LOADK                            R17 K47 ["PrimaryModifier"]
      237 NAMECALL                         R14 R1 K40 ["getText"]
      239 CALL                             R14 3 1
      240 SETTABLEKS                       R14 R13 K18 ["name"]
      242 GETTABLEKS                       R14 R4 K48 ["onPrimaryModifierMenuItemSelected"]
      244 SETTABLEKS                       R14 R13 K32 ["onEditMenuItemSelected"]
      246 SETTABLEKS                       R13 R12 K23 ["nodeProps"]
      248 GETTABLEKS                       R13 R0 K24 ["previousBindings"]
      250 SETTABLEKS                       R13 R12 K24 ["previousBindings"]
      252 GETTABLEKS                       R13 R0 K27 ["validBindingsBySchema"]
      254 SETTABLEKS                       R13 R12 K27 ["validBindingsBySchema"]
      256 CALL                             R10 2 1
      257 SETTABLEKS                       R10 R9 K42 ["primaryModifier"]
      259 GETTABLEKS                       R10 R4 K20 ["showSecondaryModifier"]
      261 JUMPIFNOT                        R10 ; [+55]
      262 GETUPVAL                         R10 0
      263 GETTABLEKS                       R10 R10 K21 ["createElement"]
      265 GETUPVAL                         R11 8
      266 DUPTABLE                         R12 K50 [{["bindings"], ["index"], ["LayoutOrder"], ["nodeProps"], ["previousBindings"], ["property"] = "secondaryModifier", ["validBindingsBySchema"]}]
      267 GETTABLEKS                       R13 R0 K4 ["bindings"]
      269 SETTABLEKS                       R13 R12 K4 ["bindings"]
      271 GETTABLEKS                       R13 R0 K22 ["index"]
      273 SETTABLEKS                       R13 R12 K22 ["index"]
      275 MOVE                             R13 R2
      276 CALL                             R13 0 1
      277 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
      279 DUPTABLE                         R13 K44 [{["action"], ["depth"], ["disabled"], ["editMenu"], ["icon"] = "InputBinding", ["name"], ["onEditMenuItemSelected"]}]
      280 GETTABLEKS                       R14 R0 K8 ["action"]
      282 SETTABLEKS                       R14 R13 K8 ["action"]
      284 ADDK                             R14 R7 K45 [1]
      285 SETTABLEKS                       R14 R13 K29 ["depth"]
      287 SETTABLEKS                       R3 R13 K3 ["disabled"]
      289 GETTABLEKS                       R14 R4 K51 ["secondaryModifierMenu"]
      291 SETTABLEKS                       R14 R13 K30 ["editMenu"]
      293 LOADK                            R16 K39 ["Binding"]
      294 LOADK                            R17 K52 ["SecondaryModifier"]
      295 NAMECALL                         R14 R1 K40 ["getText"]
      297 CALL                             R14 3 1
      298 SETTABLEKS                       R14 R13 K18 ["name"]
      300 GETTABLEKS                       R14 R4 K53 ["onSecondaryModifierMenuItemSelected"]
      302 SETTABLEKS                       R14 R13 K32 ["onEditMenuItemSelected"]
      304 SETTABLEKS                       R13 R12 K23 ["nodeProps"]
      306 GETTABLEKS                       R13 R0 K24 ["previousBindings"]
      308 SETTABLEKS                       R13 R12 K24 ["previousBindings"]
      310 GETTABLEKS                       R13 R0 K27 ["validBindingsBySchema"]
      312 SETTABLEKS                       R13 R12 K27 ["validBindingsBySchema"]
      314 CALL                             R10 2 1
      315 SETTABLEKS                       R10 R9 K49 ["secondaryModifier"]
      317 GETUPVAL                         R10 0
      318 GETTABLEKS                       R10 R10 K21 ["createElement"]
      320 GETUPVAL                         R11 9
      321 DUPTABLE                         R12 K57 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      322 GETTABLEKS                       R13 R0 K10 ["LayoutOrder"]
      324 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
      326 LOADK                            R13 K58 ["keycode-binding-%*"]
      327 GETTABLEKS                       R15 R0 K22 ["index"]
      329 NAMECALL                         R13 R13 K59 ["format"]
      331 CALL                             R13 2 1
      332 SETTABLEKS                       R13 R12 K56 ["testId"]
      334 MOVE                             R13 R9
      335 CALL                             R10 3 -1
      336 RETURN                           R10 -1

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
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R13 R0 K14 ["Src"]
       98 GETTABLEKS                       R13 R13 K27 ["Flags"]
      100 GETTABLEKS                       R13 R13 K28 ["getFFlagIAMBooleanProperties"]
      102 CALL                             R12 1 1
      103 GETTABLEKS                       R13 R0 K14 ["Src"]
      105 GETTABLEKS                       R13 R13 K27 ["Flags"]
      107 GETIMPORT                        R14 K5 [require]
      109 GETTABLEKS                       R15 R13 K29 ["getFFlagIAMImprovedModifierMenu"]
      111 CALL                             R14 1 1
      112 DUPCLOSURE                       R15 K30 [PROTO_3]
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R6
      123 RETURN                           R15 1
