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
       18 CALL                             R0 4 -1
       19 RETURN                           R0 -1

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
       33 NEWTABLE                         R6 0 4
       35 MOVE                             R7 R1
       36 GETTABLEKS                       R8 R0 K6 ["action"]
       38 GETTABLEKS                       R8 R8 K11 ["type"]
       40 GETTABLEKS                       R9 R0 K4 ["isRoot"]
       42 GETTABLEKS                       R10 R0 K3 ["bindings"]
       44 SETLIST                          R6 R7 4 [1]
       46 CALL                             R4 2 1
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R5 R5 K10 ["useMemo"]
       50 NEWCLOSURE                       R6 P1
       51 CAPTURE                          VAL R0
       52 NEWTABLE                         R7 0 1
       54 GETTABLEKS                       R8 R0 K12 ["name"]
       56 SETLIST                          R7 R8 1 [1]
       58 CALL                             R5 2 1
       59 GETTABLEKS                       R6 R3 K13 ["showPrimaryModifier"]
       61 JUMPIF                           R6 ; [+2]
       62 GETTABLEKS                       R6 R3 K14 ["showSecondaryModifier"]
       64 NEWTABLE                         R7 4 0
       66 GETUPVAL                         R8 0
       67 GETTABLEKS                       R8 R8 K15 ["createElement"]
       69 GETUPVAL                         R9 5
       70 DUPTABLE                         R10 K21 [{"bindings", "index", "LayoutOrder", "nodeProps", "onCreated", "previousBindings", "property"}]
       71 GETTABLEKS                       R11 R0 K3 ["bindings"]
       73 SETTABLEKS                       R11 R10 K3 ["bindings"]
       75 GETTABLEKS                       R11 R0 K16 ["index"]
       77 SETTABLEKS                       R11 R10 K16 ["index"]
       79 MOVE                             R11 R2
       80 CALL                             R11 0 1
       81 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       83 DUPTABLE                         R11 K30 [{"action", "createMenu", "depth", "editMenu", "expanded", "onEditMenuItemSelected", "setExpanded", "icon", "name", "onCreateMenuItemSelected"}]
       84 GETTABLEKS                       R12 R0 K6 ["action"]
       86 SETTABLEKS                       R12 R11 K6 ["action"]
       88 GETTABLEKS                       R12 R0 K22 ["createMenu"]
       90 SETTABLEKS                       R12 R11 K22 ["createMenu"]
       92 SETTABLEKS                       R5 R11 K23 ["depth"]
       94 SETTABLEKS                       R4 R11 K24 ["editMenu"]
       96 JUMPIFNOT                        R6 ; [+3]
       97 GETTABLEKS                       R12 R3 K25 ["expanded"]
       99 JUMP                             ; [+1]
      100 LOADNIL                          R12
      101 SETTABLEKS                       R12 R11 K25 ["expanded"]
      103 GETTABLEKS                       R12 R3 K26 ["onEditMenuItemSelected"]
      105 SETTABLEKS                       R12 R11 K26 ["onEditMenuItemSelected"]
      107 JUMPIFNOT                        R6 ; [+3]
      108 GETTABLEKS                       R12 R3 K27 ["setExpanded"]
      110 JUMP                             ; [+1]
      111 LOADNIL                          R12
      112 SETTABLEKS                       R12 R11 K27 ["setExpanded"]
      114 GETTABLEKS                       R13 R0 K12 ["name"]
      116 JUMPIFNOT                        R13 ; [+2]
      117 LOADK                            R12 K31 ["InputAction"]
      118 JUMP                             ; [+1]
      119 LOADK                            R12 K32 ["InputBinding"]
      120 SETTABLEKS                       R12 R11 K28 ["icon"]
      122 GETTABLEKS                       R12 R0 K12 ["name"]
      124 JUMPIF                           R12 ; [+5]
      125 LOADK                            R14 K33 ["Binding"]
      126 LOADK                            R15 K9 ["Keycode"]
      127 NAMECALL                         R12 R1 K34 ["getText"]
      129 CALL                             R12 3 1
      130 SETTABLEKS                       R12 R11 K12 ["name"]
      132 GETTABLEKS                       R12 R0 K29 ["onCreateMenuItemSelected"]
      134 SETTABLEKS                       R12 R11 K29 ["onCreateMenuItemSelected"]
      136 SETTABLEKS                       R11 R10 K17 ["nodeProps"]
      138 GETTABLEKS                       R11 R0 K18 ["onCreated"]
      140 SETTABLEKS                       R11 R10 K18 ["onCreated"]
      142 GETTABLEKS                       R11 R0 K19 ["previousBindings"]
      144 SETTABLEKS                       R11 R10 K19 ["previousBindings"]
      146 LOADK                            R11 K35 ["keyCode"]
      147 SETTABLEKS                       R11 R10 K20 ["property"]
      149 CALL                             R8 2 1
      150 SETTABLEKS                       R8 R7 K36 ["header"]
      152 GETTABLEKS                       R8 R3 K25 ["expanded"]
      154 JUMPIFEQKB                       R8 FALSE ; [+102]
      156 JUMPIFNOT                        R6 ; [+100]
      157 GETTABLEKS                       R8 R3 K13 ["showPrimaryModifier"]
      159 JUMPIFNOT                        R8 ; [+47]
      160 GETUPVAL                         R8 0
      161 GETTABLEKS                       R8 R8 K15 ["createElement"]
      163 GETUPVAL                         R9 5
      164 DUPTABLE                         R10 K37 [{"bindings", "index", "LayoutOrder", "nodeProps", "previousBindings", "property"}]
      165 GETTABLEKS                       R11 R0 K3 ["bindings"]
      167 SETTABLEKS                       R11 R10 K3 ["bindings"]
      169 GETTABLEKS                       R11 R0 K16 ["index"]
      171 SETTABLEKS                       R11 R10 K16 ["index"]
      173 MOVE                             R11 R2
      174 CALL                             R11 0 1
      175 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
      177 DUPTABLE                         R11 K38 [{"action", "depth", "icon", "name"}]
      178 GETTABLEKS                       R12 R0 K6 ["action"]
      180 SETTABLEKS                       R12 R11 K6 ["action"]
      182 ADDK                             R12 R5 K39 [1]
      183 SETTABLEKS                       R12 R11 K23 ["depth"]
      185 LOADK                            R12 K32 ["InputBinding"]
      186 SETTABLEKS                       R12 R11 K28 ["icon"]
      188 LOADK                            R14 K33 ["Binding"]
      189 LOADK                            R15 K40 ["PrimaryModifier"]
      190 NAMECALL                         R12 R1 K34 ["getText"]
      192 CALL                             R12 3 1
      193 SETTABLEKS                       R12 R11 K12 ["name"]
      195 SETTABLEKS                       R11 R10 K17 ["nodeProps"]
      197 GETTABLEKS                       R11 R0 K19 ["previousBindings"]
      199 SETTABLEKS                       R11 R10 K19 ["previousBindings"]
      201 LOADK                            R11 K41 ["primaryModifier"]
      202 SETTABLEKS                       R11 R10 K20 ["property"]
      204 CALL                             R8 2 1
      205 SETTABLEKS                       R8 R7 K41 ["primaryModifier"]
      207 GETTABLEKS                       R8 R3 K14 ["showSecondaryModifier"]
      209 JUMPIFNOT                        R8 ; [+47]
      210 GETUPVAL                         R8 0
      211 GETTABLEKS                       R8 R8 K15 ["createElement"]
      213 GETUPVAL                         R9 5
      214 DUPTABLE                         R10 K37 [{"bindings", "index", "LayoutOrder", "nodeProps", "previousBindings", "property"}]
      215 GETTABLEKS                       R11 R0 K3 ["bindings"]
      217 SETTABLEKS                       R11 R10 K3 ["bindings"]
      219 GETTABLEKS                       R11 R0 K16 ["index"]
      221 SETTABLEKS                       R11 R10 K16 ["index"]
      223 MOVE                             R11 R2
      224 CALL                             R11 0 1
      225 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
      227 DUPTABLE                         R11 K38 [{"action", "depth", "icon", "name"}]
      228 GETTABLEKS                       R12 R0 K6 ["action"]
      230 SETTABLEKS                       R12 R11 K6 ["action"]
      232 ADDK                             R12 R5 K39 [1]
      233 SETTABLEKS                       R12 R11 K23 ["depth"]
      235 LOADK                            R12 K32 ["InputBinding"]
      236 SETTABLEKS                       R12 R11 K28 ["icon"]
      238 LOADK                            R14 K33 ["Binding"]
      239 LOADK                            R15 K42 ["SecondaryModifier"]
      240 NAMECALL                         R12 R1 K34 ["getText"]
      242 CALL                             R12 3 1
      243 SETTABLEKS                       R12 R11 K12 ["name"]
      245 SETTABLEKS                       R11 R10 K17 ["nodeProps"]
      247 GETTABLEKS                       R11 R0 K19 ["previousBindings"]
      249 SETTABLEKS                       R11 R10 K19 ["previousBindings"]
      251 LOADK                            R11 K43 ["secondaryModifier"]
      252 SETTABLEKS                       R11 R10 K20 ["property"]
      254 CALL                             R8 2 1
      255 SETTABLEKS                       R8 R7 K43 ["secondaryModifier"]
      257 GETUPVAL                         R8 0
      258 GETTABLEKS                       R8 R8 K15 ["createElement"]
      260 GETUPVAL                         R9 6
      261 DUPTABLE                         R10 K46 [{"LayoutOrder", "tag", "testId"}]
      262 GETTABLEKS                       R11 R0 K8 ["LayoutOrder"]
      264 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
      266 LOADK                            R11 K47 ["size-full-0 auto-y col"]
      267 SETTABLEKS                       R11 R10 K44 ["tag"]
      269 LOADK                            R12 K48 ["keycode-binding-%*"]
      270 GETTABLEKS                       R14 R0 K16 ["index"]
      272 NAMECALL                         R12 R12 K49 ["format"]
      274 CALL                             R12 2 1
      275 MOVE                             R11 R12
      276 SETTABLEKS                       R11 R10 K45 ["testId"]
      278 MOVE                             R11 R7
      279 CALL                             R8 3 -1
      280 RETURN                           R8 -1

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
