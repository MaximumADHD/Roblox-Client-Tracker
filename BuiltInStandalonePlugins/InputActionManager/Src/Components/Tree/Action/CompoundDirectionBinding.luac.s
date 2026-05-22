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
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["isRoot"]
        4 JUMPIFNOTEQKB                    R2 TRUE ; [+7]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["action"]
        9 GETTABLEKS                       R1 R1 K2 ["type"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R1
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K3 ["bindings"]
       16 LOADK                            R3 K4 ["CompoundDirection"]
       17 CALL                             R0 3 -1
       18 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R3 R0 K1 ["bindings"]
        7 GETTABLEKS                       R4 R0 K2 ["isRoot"]
        9 GETTABLEKS                       R5 R0 K3 ["onBindingEditCommand"]
       11 GETTABLEKS                       R6 R0 K4 ["action"]
       13 GETTABLEKS                       R6 R6 K5 ["uuid"]
       15 GETTABLEKS                       R7 R0 K6 ["LayoutOrder"]
       17 LOADK                            R8 K7 ["CompoundDirection"]
       18 CALL                             R2 6 1
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K8 ["useMemo"]
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          VAL R0
       24 NEWTABLE                         R5 0 1
       26 GETTABLEKS                       R6 R0 K1 ["bindings"]
       28 SETLIST                          R5 R6 1 [1]
       30 CALL                             R3 2 1
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R4 R4 K8 ["useMemo"]
       34 NEWCLOSURE                       R5 P1
       35 CAPTURE                          VAL R0
       36 NEWTABLE                         R6 0 1
       38 GETTABLEKS                       R7 R0 K9 ["name"]
       40 SETLIST                          R6 R7 1 [1]
       42 CALL                             R4 2 1
       43 GETUPVAL                         R5 2
       44 GETTABLEKS                       R5 R5 K8 ["useMemo"]
       46 NEWCLOSURE                       R6 P2
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R0
       49 NEWTABLE                         R7 0 1
       51 GETTABLEKS                       R8 R0 K4 ["action"]
       53 GETTABLEKS                       R8 R8 K10 ["type"]
       55 SETLIST                          R7 R8 1 [1]
       57 CALL                             R5 2 1
       58 GETUPVAL                         R6 2
       59 GETTABLEKS                       R6 R6 K8 ["useMemo"]
       61 NEWCLOSURE                       R7 P3
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          VAL R0
       64 NEWTABLE                         R8 0 3
       66 GETTABLEKS                       R9 R0 K4 ["action"]
       68 GETTABLEKS                       R9 R9 K10 ["type"]
       70 GETTABLEKS                       R10 R0 K2 ["isRoot"]
       72 GETTABLEKS                       R11 R0 K1 ["bindings"]
       74 SETLIST                          R8 R9 3 [1]
       76 CALL                             R6 2 1
       77 NEWTABLE                         R7 4 0
       79 GETUPVAL                         R8 2
       80 GETTABLEKS                       R8 R8 K11 ["createElement"]
       82 GETUPVAL                         R9 5
       83 DUPTABLE                         R10 K13 [{"bindings", "LayoutOrder", "nodeProps"}]
       84 SETTABLEKS                       R3 R10 K1 ["bindings"]
       86 MOVE                             R11 R1
       87 CALL                             R11 0 1
       88 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
       90 DUPTABLE                         R11 K22 [{"action", "createMenu", "depth", "editMenu", "expanded", "icon", "name", "onCreateMenuItemSelected", "onEditMenuItemSelected", "setExpanded"}]
       91 GETTABLEKS                       R12 R0 K4 ["action"]
       93 SETTABLEKS                       R12 R11 K4 ["action"]
       95 GETTABLEKS                       R12 R0 K14 ["createMenu"]
       97 SETTABLEKS                       R12 R11 K14 ["createMenu"]
       99 SETTABLEKS                       R4 R11 K15 ["depth"]
      101 SETTABLEKS                       R6 R11 K16 ["editMenu"]
      103 GETTABLEKS                       R12 R2 K17 ["expanded"]
      105 SETTABLEKS                       R12 R11 K17 ["expanded"]
      107 GETTABLEKS                       R13 R0 K9 ["name"]
      109 JUMPIFNOT                        R13 ; [+2]
      110 LOADK                            R12 K23 ["InputAction"]
      111 JUMP                             ; [+1]
      112 LOADK                            R12 K24 ["InputBinding"]
      113 SETTABLEKS                       R12 R11 K18 ["icon"]
      115 GETTABLEKS                       R13 R0 K9 ["name"]
      117 ORK                              R12 R13 K25 ["Compound Direction"]
      118 SETTABLEKS                       R12 R11 K9 ["name"]
      120 GETTABLEKS                       R12 R0 K19 ["onCreateMenuItemSelected"]
      122 SETTABLEKS                       R12 R11 K19 ["onCreateMenuItemSelected"]
      124 GETTABLEKS                       R12 R2 K20 ["onEditMenuItemSelected"]
      126 SETTABLEKS                       R12 R11 K20 ["onEditMenuItemSelected"]
      128 GETTABLEKS                       R12 R2 K21 ["setExpanded"]
      130 SETTABLEKS                       R12 R11 K21 ["setExpanded"]
      132 SETTABLEKS                       R11 R10 K12 ["nodeProps"]
      134 CALL                             R8 2 1
      135 SETTABLEKS                       R8 R7 K26 ["header"]
      137 GETTABLEKS                       R8 R2 K17 ["expanded"]
      139 JUMPIF                           R8 ; [+3]
      140 GETTABLEKS                       R8 R0 K27 ["onCreated"]
      142 JUMPIFNOT                        R8 ; [+128]
      143 GETTABLEKS                       R8 R2 K28 ["showPrimaryModifier"]
      145 JUMPIFNOT                        R8 ; [+39]
      146 GETUPVAL                         R8 2
      147 GETTABLEKS                       R8 R8 K11 ["createElement"]
      149 GETUPVAL                         R9 6
      150 DUPTABLE                         R10 K30 [{"bindings", "LayoutOrder", "nodeProps", "onCreated", "property"}]
      151 GETTABLEKS                       R11 R0 K1 ["bindings"]
      153 SETTABLEKS                       R11 R10 K1 ["bindings"]
      155 MOVE                             R11 R1
      156 CALL                             R11 0 1
      157 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      159 DUPTABLE                         R11 K31 [{"action", "depth", "icon", "name"}]
      160 GETTABLEKS                       R12 R0 K4 ["action"]
      162 SETTABLEKS                       R12 R11 K4 ["action"]
      164 ADDK                             R12 R4 K32 [1]
      165 SETTABLEKS                       R12 R11 K15 ["depth"]
      167 LOADK                            R12 K24 ["InputBinding"]
      168 SETTABLEKS                       R12 R11 K18 ["icon"]
      170 LOADK                            R12 K33 ["Primary Modifier"]
      171 SETTABLEKS                       R12 R11 K9 ["name"]
      173 SETTABLEKS                       R11 R10 K12 ["nodeProps"]
      175 GETTABLEKS                       R11 R0 K27 ["onCreated"]
      177 SETTABLEKS                       R11 R10 K27 ["onCreated"]
      179 LOADK                            R11 K34 ["primaryModifier"]
      180 SETTABLEKS                       R11 R10 K29 ["property"]
      182 CALL                             R8 2 1
      183 SETTABLEKS                       R8 R7 K34 ["primaryModifier"]
      185 GETTABLEKS                       R8 R2 K35 ["showSecondaryModifier"]
      187 JUMPIFNOT                        R8 ; [+39]
      188 GETUPVAL                         R8 2
      189 GETTABLEKS                       R8 R8 K11 ["createElement"]
      191 GETUPVAL                         R9 6
      192 DUPTABLE                         R10 K30 [{"bindings", "LayoutOrder", "nodeProps", "onCreated", "property"}]
      193 GETTABLEKS                       R11 R0 K1 ["bindings"]
      195 SETTABLEKS                       R11 R10 K1 ["bindings"]
      197 MOVE                             R11 R1
      198 CALL                             R11 0 1
      199 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      201 DUPTABLE                         R11 K31 [{"action", "depth", "icon", "name"}]
      202 GETTABLEKS                       R12 R0 K4 ["action"]
      204 SETTABLEKS                       R12 R11 K4 ["action"]
      206 ADDK                             R12 R4 K32 [1]
      207 SETTABLEKS                       R12 R11 K15 ["depth"]
      209 LOADK                            R12 K24 ["InputBinding"]
      210 SETTABLEKS                       R12 R11 K18 ["icon"]
      212 LOADK                            R12 K36 ["Secondary Modifier"]
      213 SETTABLEKS                       R12 R11 K9 ["name"]
      215 SETTABLEKS                       R11 R10 K12 ["nodeProps"]
      217 GETTABLEKS                       R11 R0 K27 ["onCreated"]
      219 SETTABLEKS                       R11 R10 K27 ["onCreated"]
      221 LOADK                            R11 K37 ["secondaryModifier"]
      222 SETTABLEKS                       R11 R10 K29 ["property"]
      224 CALL                             R8 2 1
      225 SETTABLEKS                       R8 R7 K37 ["secondaryModifier"]
      227 MOVE                             R8 R5
      228 LOADNIL                          R9
      229 LOADNIL                          R10
      230 FORGPREP                         R8
      231 GETUPVAL                         R13 2
      232 GETTABLEKS                       R13 R13 K11 ["createElement"]
      234 GETUPVAL                         R14 6
      235 DUPTABLE                         R15 K30 [{"bindings", "LayoutOrder", "nodeProps", "onCreated", "property"}]
      236 GETTABLEKS                       R16 R0 K1 ["bindings"]
      238 SETTABLEKS                       R16 R15 K1 ["bindings"]
      240 MOVE                             R16 R1
      241 CALL                             R16 0 1
      242 SETTABLEKS                       R16 R15 K6 ["LayoutOrder"]
      244 DUPTABLE                         R16 K31 [{"action", "depth", "icon", "name"}]
      245 GETTABLEKS                       R17 R0 K4 ["action"]
      247 SETTABLEKS                       R17 R16 K4 ["action"]
      249 ADDK                             R17 R4 K32 [1]
      250 SETTABLEKS                       R17 R16 K15 ["depth"]
      252 LOADK                            R17 K24 ["InputBinding"]
      253 SETTABLEKS                       R17 R16 K18 ["icon"]
      255 GETUPVAL                         R18 7
      256 GETTABLE                         R17 R18 R12
      257 SETTABLEKS                       R17 R16 K9 ["name"]
      259 SETTABLEKS                       R16 R15 K12 ["nodeProps"]
      261 GETTABLEKS                       R16 R0 K27 ["onCreated"]
      263 SETTABLEKS                       R16 R15 K27 ["onCreated"]
      265 SETTABLEKS                       R12 R15 K29 ["property"]
      267 CALL                             R13 2 1
      268 SETTABLE                         R13 R7 R12
      269 FORGLOOP                         R8 2 ; [-39]
      271 GETUPVAL                         R8 2
      272 GETTABLEKS                       R8 R8 K11 ["createElement"]
      274 GETUPVAL                         R9 8
      275 DUPTABLE                         R10 K40 [{"LayoutOrder", "tag", "testId"}]
      276 GETTABLEKS                       R11 R0 K6 ["LayoutOrder"]
      278 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      280 LOADK                            R11 K41 ["size-full-0 auto-y col"]
      281 SETTABLEKS                       R11 R10 K38 ["tag"]
      283 LOADK                            R12 K42 ["compound-direction-binding-%*"]
      284 GETTABLEKS                       R14 R0 K43 ["index"]
      286 NAMECALL                         R12 R12 K44 ["format"]
      288 CALL                             R12 2 1
      289 MOVE                             R11 R12
      290 SETTABLEKS                       R11 R10 K39 ["testId"]
      292 MOVE                             R11 R7
      293 CALL                             R8 3 -1
      294 RETURN                           R8 -1

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
       28 GETTABLEKS                       R4 R3 K10 ["View"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Components"]
       36 GETTABLEKS                       R6 R6 K13 ["Tree"]
       38 GETTABLEKS                       R6 R6 K14 ["Action"]
       40 GETTABLEKS                       R6 R6 K15 ["EditableRow"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R0 K11 ["Src"]
       47 GETTABLEKS                       R7 R7 K12 ["Components"]
       49 GETTABLEKS                       R7 R7 K13 ["Tree"]
       51 GETTABLEKS                       R7 R7 K14 ["Action"]
       53 GETTABLEKS                       R7 R7 K16 ["SummaryRow"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K5 [require]
       58 GETTABLEKS                       R8 R0 K11 ["Src"]
       60 GETTABLEKS                       R8 R8 K17 ["Types"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K5 [require]
       65 GETTABLEKS                       R9 R0 K11 ["Src"]
       67 GETTABLEKS                       R9 R9 K18 ["Util"]
       69 GETTABLEKS                       R9 R9 K19 ["getEditMenu"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K5 [require]
       74 GETTABLEKS                       R10 R0 K11 ["Src"]
       76 GETTABLEKS                       R10 R10 K20 ["Hooks"]
       78 GETTABLEKS                       R10 R10 K21 ["useBinding"]
       80 CALL                             R9 1 1
       81 NEWTABLE                         R10 4 0
       83 GETIMPORT                        R11 K25 [Enum.InputActionType.Direction1D]
       85 NEWTABLE                         R12 0 2
       87 LOADK                            R13 K26 ["up"]
       88 LOADK                            R14 K27 ["down"]
       89 SETLIST                          R12 R13 2 [1]
       91 SETTABLE                         R12 R10 R11
       92 GETIMPORT                        R11 K29 [Enum.InputActionType.Direction2D]
       94 NEWTABLE                         R12 0 4
       96 LOADK                            R13 K26 ["up"]
       97 LOADK                            R14 K30 ["left"]
       98 LOADK                            R15 K27 ["down"]
       99 LOADK                            R16 K31 ["right"]
      100 SETLIST                          R12 R13 4 [1]
      102 SETTABLE                         R12 R10 R11
      103 GETIMPORT                        R11 K33 [Enum.InputActionType.Direction3D]
      105 NEWTABLE                         R12 0 6
      107 LOADK                            R13 K26 ["up"]
      108 LOADK                            R14 K30 ["left"]
      109 LOADK                            R15 K34 ["forward"]
      110 LOADK                            R16 K27 ["down"]
      111 LOADK                            R17 K31 ["right"]
      112 LOADK                            R18 K35 ["backward"]
      113 SETLIST                          R12 R13 6 [1]
      115 SETTABLE                         R12 R10 R11
      116 DUPTABLE                         R11 K36 [{"up", "left", "forward", "down", "right", "backward"}]
      117 LOADK                            R12 K37 ["Up"]
      118 SETTABLEKS                       R12 R11 K26 ["up"]
      120 LOADK                            R12 K38 ["Left"]
      121 SETTABLEKS                       R12 R11 K30 ["left"]
      123 LOADK                            R12 K39 ["Forward"]
      124 SETTABLEKS                       R12 R11 K34 ["forward"]
      126 LOADK                            R12 K40 ["Down"]
      127 SETTABLEKS                       R12 R11 K27 ["down"]
      129 LOADK                            R12 K41 ["Right"]
      130 SETTABLEKS                       R12 R11 K31 ["right"]
      132 LOADK                            R12 K42 ["Backward"]
      133 SETTABLEKS                       R12 R11 K35 ["backward"]
      135 DUPCLOSURE                       R12 K43 [PROTO_4]
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R4
      145 RETURN                           R12 1
