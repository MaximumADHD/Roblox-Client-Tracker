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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["name"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADN                            R0 1
        5 RETURN                           R0 1
        6 LOADN                            R0 2
        7 RETURN                           R0 1

PROTO_2:
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
       24 LOADK                            R9 K9 ["Keycode"]
       25 CALL                             R3 6 1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K10 ["useMemo"]
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R0
       33 NEWTABLE                         R6 0 5
       35 MOVE                             R7 R1
       36 GETTABLEKS                       R8 R0 K11 ["onCreated"]
       38 GETTABLEKS                       R9 R0 K6 ["action"]
       40 GETTABLEKS                       R9 R9 K12 ["type"]
       42 GETTABLEKS                       R10 R0 K4 ["isRoot"]
       44 GETTABLEKS                       R11 R0 K3 ["bindings"]
       46 SETLIST                          R6 R7 5 [1]
       48 CALL                             R4 2 1
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R5 R5 K10 ["useMemo"]
       52 NEWCLOSURE                       R6 P1
       53 CAPTURE                          VAL R0
       54 NEWTABLE                         R7 0 1
       56 GETTABLEKS                       R8 R0 K13 ["name"]
       58 SETLIST                          R7 R8 1 [1]
       60 CALL                             R5 2 1
       61 GETTABLEKS                       R6 R3 K14 ["showPrimaryModifier"]
       63 JUMPIF                           R6 ; [+2]
       64 GETTABLEKS                       R6 R3 K15 ["showSecondaryModifier"]
       66 NEWTABLE                         R7 4 0
       68 GETUPVAL                         R8 0
       69 GETTABLEKS                       R8 R8 K16 ["createElement"]
       71 GETUPVAL                         R9 5
       72 DUPTABLE                         R10 K23 [{["bindings"], ["index"], ["LayoutOrder"], ["nodeProps"], ["onCreated"], ["previousBindings"], ["property"] = "keyCode", ["validBindingsBySchema"]}]
       73 GETTABLEKS                       R11 R0 K3 ["bindings"]
       75 SETTABLEKS                       R11 R10 K3 ["bindings"]
       77 GETTABLEKS                       R11 R0 K17 ["index"]
       79 SETTABLEKS                       R11 R10 K17 ["index"]
       81 MOVE                             R11 R2
       82 CALL                             R11 0 1
       83 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       85 DUPTABLE                         R11 K32 [{"action", "createMenu", "depth", "editMenu", "expanded", "onEditMenuItemSelected", "setExpanded", "icon", "name", "onCreateMenuItemSelected"}]
       86 GETTABLEKS                       R12 R0 K6 ["action"]
       88 SETTABLEKS                       R12 R11 K6 ["action"]
       90 GETTABLEKS                       R12 R0 K24 ["createMenu"]
       92 SETTABLEKS                       R12 R11 K24 ["createMenu"]
       94 SETTABLEKS                       R5 R11 K25 ["depth"]
       96 SETTABLEKS                       R4 R11 K26 ["editMenu"]
       98 JUMPIFNOT                        R6 ; [+3]
       99 GETTABLEKS                       R12 R3 K27 ["expanded"]
      101 JUMP                             ; [+1]
      102 LOADNIL                          R12
      103 SETTABLEKS                       R12 R11 K27 ["expanded"]
      105 GETTABLEKS                       R12 R3 K28 ["onEditMenuItemSelected"]
      107 SETTABLEKS                       R12 R11 K28 ["onEditMenuItemSelected"]
      109 JUMPIFNOT                        R6 ; [+3]
      110 GETTABLEKS                       R12 R3 K29 ["setExpanded"]
      112 JUMP                             ; [+1]
      113 LOADNIL                          R12
      114 SETTABLEKS                       R12 R11 K29 ["setExpanded"]
      116 GETTABLEKS                       R13 R0 K13 ["name"]
      118 JUMPIFNOT                        R13 ; [+2]
      119 LOADK                            R12 K33 ["InputAction"]
      120 JUMP                             ; [+1]
      121 LOADK                            R12 K34 ["InputBinding"]
      122 SETTABLEKS                       R12 R11 K30 ["icon"]
      124 GETTABLEKS                       R12 R0 K13 ["name"]
      126 JUMPIF                           R12 ; [+5]
      127 LOADK                            R14 K35 ["Binding"]
      128 LOADK                            R15 K9 ["Keycode"]
      129 NAMECALL                         R12 R1 K36 ["getText"]
      131 CALL                             R12 3 1
      132 SETTABLEKS                       R12 R11 K13 ["name"]
      134 GETTABLEKS                       R12 R0 K31 ["onCreateMenuItemSelected"]
      136 SETTABLEKS                       R12 R11 K31 ["onCreateMenuItemSelected"]
      138 SETTABLEKS                       R11 R10 K18 ["nodeProps"]
      140 GETTABLEKS                       R11 R0 K11 ["onCreated"]
      142 SETTABLEKS                       R11 R10 K11 ["onCreated"]
      144 GETTABLEKS                       R11 R0 K19 ["previousBindings"]
      146 SETTABLEKS                       R11 R10 K19 ["previousBindings"]
      148 GETTABLEKS                       R11 R0 K22 ["validBindingsBySchema"]
      150 SETTABLEKS                       R11 R10 K22 ["validBindingsBySchema"]
      152 CALL                             R8 2 1
      153 SETTABLEKS                       R8 R7 K37 ["header"]
      155 GETTABLEKS                       R8 R3 K27 ["expanded"]
      157 JUMPIFEQKB                       R8 FALSE ; [+114]
      159 JUMPIFNOT                        R6 ; [+112]
      160 GETTABLEKS                       R8 R3 K14 ["showPrimaryModifier"]
      162 JUMPIFNOT                        R8 ; [+53]
      163 GETUPVAL                         R8 0
      164 GETTABLEKS                       R8 R8 K16 ["createElement"]
      166 GETUPVAL                         R9 5
      167 DUPTABLE                         R10 K39 [{["bindings"], ["index"], ["LayoutOrder"], ["nodeProps"], ["previousBindings"], ["property"] = "primaryModifier", ["validBindingsBySchema"]}]
      168 GETTABLEKS                       R11 R0 K3 ["bindings"]
      170 SETTABLEKS                       R11 R10 K3 ["bindings"]
      172 GETTABLEKS                       R11 R0 K17 ["index"]
      174 SETTABLEKS                       R11 R10 K17 ["index"]
      176 MOVE                             R11 R2
      177 CALL                             R11 0 1
      178 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
      180 DUPTABLE                         R11 K40 [{["action"], ["depth"], ["editMenu"], ["icon"] = "InputBinding", ["name"], ["onEditMenuItemSelected"]}]
      181 GETTABLEKS                       R12 R0 K6 ["action"]
      183 SETTABLEKS                       R12 R11 K6 ["action"]
      185 ADDK                             R12 R5 K41 [1]
      186 SETTABLEKS                       R12 R11 K25 ["depth"]
      188 GETTABLEKS                       R12 R3 K42 ["primaryModifierMenu"]
      190 SETTABLEKS                       R12 R11 K26 ["editMenu"]
      192 LOADK                            R14 K35 ["Binding"]
      193 LOADK                            R15 K43 ["PrimaryModifier"]
      194 NAMECALL                         R12 R1 K36 ["getText"]
      196 CALL                             R12 3 1
      197 SETTABLEKS                       R12 R11 K13 ["name"]
      199 GETTABLEKS                       R12 R3 K44 ["onPrimaryModifierMenuItemSelected"]
      201 SETTABLEKS                       R12 R11 K28 ["onEditMenuItemSelected"]
      203 SETTABLEKS                       R11 R10 K18 ["nodeProps"]
      205 GETTABLEKS                       R11 R0 K19 ["previousBindings"]
      207 SETTABLEKS                       R11 R10 K19 ["previousBindings"]
      209 GETTABLEKS                       R11 R0 K22 ["validBindingsBySchema"]
      211 SETTABLEKS                       R11 R10 K22 ["validBindingsBySchema"]
      213 CALL                             R8 2 1
      214 SETTABLEKS                       R8 R7 K38 ["primaryModifier"]
      216 GETTABLEKS                       R8 R3 K15 ["showSecondaryModifier"]
      218 JUMPIFNOT                        R8 ; [+53]
      219 GETUPVAL                         R8 0
      220 GETTABLEKS                       R8 R8 K16 ["createElement"]
      222 GETUPVAL                         R9 5
      223 DUPTABLE                         R10 K46 [{["bindings"], ["index"], ["LayoutOrder"], ["nodeProps"], ["previousBindings"], ["property"] = "secondaryModifier", ["validBindingsBySchema"]}]
      224 GETTABLEKS                       R11 R0 K3 ["bindings"]
      226 SETTABLEKS                       R11 R10 K3 ["bindings"]
      228 GETTABLEKS                       R11 R0 K17 ["index"]
      230 SETTABLEKS                       R11 R10 K17 ["index"]
      232 MOVE                             R11 R2
      233 CALL                             R11 0 1
      234 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
      236 DUPTABLE                         R11 K40 [{["action"], ["depth"], ["editMenu"], ["icon"] = "InputBinding", ["name"], ["onEditMenuItemSelected"]}]
      237 GETTABLEKS                       R12 R0 K6 ["action"]
      239 SETTABLEKS                       R12 R11 K6 ["action"]
      241 ADDK                             R12 R5 K41 [1]
      242 SETTABLEKS                       R12 R11 K25 ["depth"]
      244 GETTABLEKS                       R12 R3 K47 ["secondaryModifierMenu"]
      246 SETTABLEKS                       R12 R11 K26 ["editMenu"]
      248 LOADK                            R14 K35 ["Binding"]
      249 LOADK                            R15 K48 ["SecondaryModifier"]
      250 NAMECALL                         R12 R1 K36 ["getText"]
      252 CALL                             R12 3 1
      253 SETTABLEKS                       R12 R11 K13 ["name"]
      255 GETTABLEKS                       R12 R3 K49 ["onSecondaryModifierMenuItemSelected"]
      257 SETTABLEKS                       R12 R11 K28 ["onEditMenuItemSelected"]
      259 SETTABLEKS                       R11 R10 K18 ["nodeProps"]
      261 GETTABLEKS                       R11 R0 K19 ["previousBindings"]
      263 SETTABLEKS                       R11 R10 K19 ["previousBindings"]
      265 GETTABLEKS                       R11 R0 K22 ["validBindingsBySchema"]
      267 SETTABLEKS                       R11 R10 K22 ["validBindingsBySchema"]
      269 CALL                             R8 2 1
      270 SETTABLEKS                       R8 R7 K45 ["secondaryModifier"]
      272 GETUPVAL                         R8 0
      273 GETTABLEKS                       R8 R8 K16 ["createElement"]
      275 GETUPVAL                         R9 6
      276 DUPTABLE                         R10 K53 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      277 GETTABLEKS                       R11 R0 K8 ["LayoutOrder"]
      279 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
      281 LOADK                            R12 K54 ["keycode-binding-%*"]
      282 GETTABLEKS                       R14 R0 K17 ["index"]
      284 NAMECALL                         R12 R12 K55 ["format"]
      286 CALL                             R12 2 1
      287 MOVE                             R11 R12
      288 SETTABLEKS                       R11 R10 K52 ["testId"]
      290 MOVE                             R11 R7
      291 CALL                             R8 3 -1
      292 RETURN                           R8 -1

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
       69 GETTABLEKS                       R10 R10 K22 ["getEditMenu"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K14 ["Src"]
       76 GETTABLEKS                       R11 R11 K23 ["Hooks"]
       78 GETTABLEKS                       R11 R11 K24 ["Binding"]
       80 GETTABLEKS                       R11 R11 K25 ["useBinding"]
       82 CALL                             R10 1 1
       83 DUPCLOSURE                       R11 K26 [PROTO_2]
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R6
       91 RETURN                           R11 1
