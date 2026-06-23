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
       18 CALL                             R0 4 -1
       19 RETURN                           R0 -1

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
       72 NEWTABLE                         R9 0 4
       74 MOVE                             R10 R1
       75 GETTABLEKS                       R11 R0 K6 ["action"]
       77 GETTABLEKS                       R11 R11 K12 ["type"]
       79 GETTABLEKS                       R12 R0 K4 ["isRoot"]
       81 GETTABLEKS                       R13 R0 K3 ["bindings"]
       83 SETLIST                          R9 R10 4 [1]
       85 CALL                             R7 2 1
       86 NEWTABLE                         R8 4 0
       88 GETUPVAL                         R9 0
       89 GETTABLEKS                       R9 R9 K13 ["createElement"]
       91 GETUPVAL                         R10 6
       92 DUPTABLE                         R11 K16 [{"bindings", "LayoutOrder", "nodeProps", "previousBindings"}]
       93 SETTABLEKS                       R4 R11 K3 ["bindings"]
       95 MOVE                             R12 R2
       96 CALL                             R12 0 1
       97 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       99 DUPTABLE                         R12 K25 [{"action", "createMenu", "depth", "editMenu", "expanded", "icon", "name", "onCreateMenuItemSelected", "onEditMenuItemSelected", "setExpanded"}]
      100 GETTABLEKS                       R13 R0 K6 ["action"]
      102 SETTABLEKS                       R13 R12 K6 ["action"]
      104 GETTABLEKS                       R13 R0 K17 ["createMenu"]
      106 SETTABLEKS                       R13 R12 K17 ["createMenu"]
      108 SETTABLEKS                       R5 R12 K18 ["depth"]
      110 SETTABLEKS                       R7 R12 K19 ["editMenu"]
      112 GETTABLEKS                       R13 R3 K20 ["expanded"]
      114 SETTABLEKS                       R13 R12 K20 ["expanded"]
      116 GETTABLEKS                       R14 R0 K11 ["name"]
      118 JUMPIFNOT                        R14 ; [+2]
      119 LOADK                            R13 K26 ["InputAction"]
      120 JUMP                             ; [+1]
      121 LOADK                            R13 K27 ["InputBinding"]
      122 SETTABLEKS                       R13 R12 K21 ["icon"]
      124 GETTABLEKS                       R13 R0 K11 ["name"]
      126 JUMPIF                           R13 ; [+5]
      127 LOADK                            R15 K28 ["Binding"]
      128 LOADK                            R16 K9 ["Composite"]
      129 NAMECALL                         R13 R1 K29 ["getText"]
      131 CALL                             R13 3 1
      132 SETTABLEKS                       R13 R12 K11 ["name"]
      134 GETTABLEKS                       R13 R0 K22 ["onCreateMenuItemSelected"]
      136 SETTABLEKS                       R13 R12 K22 ["onCreateMenuItemSelected"]
      138 GETTABLEKS                       R13 R3 K23 ["onEditMenuItemSelected"]
      140 SETTABLEKS                       R13 R12 K23 ["onEditMenuItemSelected"]
      142 GETTABLEKS                       R13 R3 K24 ["setExpanded"]
      144 SETTABLEKS                       R13 R12 K24 ["setExpanded"]
      146 SETTABLEKS                       R12 R11 K14 ["nodeProps"]
      148 GETTABLEKS                       R12 R0 K15 ["previousBindings"]
      150 SETTABLEKS                       R12 R11 K15 ["previousBindings"]
      152 CALL                             R9 2 1
      153 SETTABLEKS                       R9 R8 K30 ["header"]
      155 GETTABLEKS                       R9 R3 K20 ["expanded"]
      157 JUMPIF                           R9 ; [+3]
      158 GETTABLEKS                       R9 R0 K31 ["onCreated"]
      160 JUMPIFNOT                        R9 ; [+164]
      161 GETTABLEKS                       R9 R3 K32 ["showPrimaryModifier"]
      163 JUMPIFNOT                        R9 ; [+51]
      164 GETUPVAL                         R9 0
      165 GETTABLEKS                       R9 R9 K13 ["createElement"]
      167 GETUPVAL                         R10 7
      168 DUPTABLE                         R11 K35 [{"bindings", "index", "LayoutOrder", "nodeProps", "onCreated", "previousBindings", "property"}]
      169 GETTABLEKS                       R12 R0 K3 ["bindings"]
      171 SETTABLEKS                       R12 R11 K3 ["bindings"]
      173 GETTABLEKS                       R12 R0 K33 ["index"]
      175 SETTABLEKS                       R12 R11 K33 ["index"]
      177 MOVE                             R12 R2
      178 CALL                             R12 0 1
      179 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
      181 DUPTABLE                         R12 K36 [{"action", "depth", "icon", "name"}]
      182 GETTABLEKS                       R13 R0 K6 ["action"]
      184 SETTABLEKS                       R13 R12 K6 ["action"]
      186 ADDK                             R13 R5 K37 [1]
      187 SETTABLEKS                       R13 R12 K18 ["depth"]
      189 LOADK                            R13 K27 ["InputBinding"]
      190 SETTABLEKS                       R13 R12 K21 ["icon"]
      192 LOADK                            R15 K28 ["Binding"]
      193 LOADK                            R16 K38 ["PrimaryModifier"]
      194 NAMECALL                         R13 R1 K29 ["getText"]
      196 CALL                             R13 3 1
      197 SETTABLEKS                       R13 R12 K11 ["name"]
      199 SETTABLEKS                       R12 R11 K14 ["nodeProps"]
      201 GETTABLEKS                       R12 R0 K31 ["onCreated"]
      203 SETTABLEKS                       R12 R11 K31 ["onCreated"]
      205 GETTABLEKS                       R12 R0 K15 ["previousBindings"]
      207 SETTABLEKS                       R12 R11 K15 ["previousBindings"]
      209 LOADK                            R12 K39 ["primaryModifier"]
      210 SETTABLEKS                       R12 R11 K34 ["property"]
      212 CALL                             R9 2 1
      213 SETTABLEKS                       R9 R8 K39 ["primaryModifier"]
      215 GETTABLEKS                       R9 R3 K40 ["showSecondaryModifier"]
      217 JUMPIFNOT                        R9 ; [+51]
      218 GETUPVAL                         R9 0
      219 GETTABLEKS                       R9 R9 K13 ["createElement"]
      221 GETUPVAL                         R10 7
      222 DUPTABLE                         R11 K35 [{"bindings", "index", "LayoutOrder", "nodeProps", "onCreated", "previousBindings", "property"}]
      223 GETTABLEKS                       R12 R0 K3 ["bindings"]
      225 SETTABLEKS                       R12 R11 K3 ["bindings"]
      227 GETTABLEKS                       R12 R0 K33 ["index"]
      229 SETTABLEKS                       R12 R11 K33 ["index"]
      231 MOVE                             R12 R2
      232 CALL                             R12 0 1
      233 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
      235 DUPTABLE                         R12 K36 [{"action", "depth", "icon", "name"}]
      236 GETTABLEKS                       R13 R0 K6 ["action"]
      238 SETTABLEKS                       R13 R12 K6 ["action"]
      240 ADDK                             R13 R5 K37 [1]
      241 SETTABLEKS                       R13 R12 K18 ["depth"]
      243 LOADK                            R13 K27 ["InputBinding"]
      244 SETTABLEKS                       R13 R12 K21 ["icon"]
      246 LOADK                            R15 K28 ["Binding"]
      247 LOADK                            R16 K41 ["SecondaryModifier"]
      248 NAMECALL                         R13 R1 K29 ["getText"]
      250 CALL                             R13 3 1
      251 SETTABLEKS                       R13 R12 K11 ["name"]
      253 SETTABLEKS                       R12 R11 K14 ["nodeProps"]
      255 GETTABLEKS                       R12 R0 K31 ["onCreated"]
      257 SETTABLEKS                       R12 R11 K31 ["onCreated"]
      259 GETTABLEKS                       R12 R0 K15 ["previousBindings"]
      261 SETTABLEKS                       R12 R11 K15 ["previousBindings"]
      263 LOADK                            R12 K42 ["secondaryModifier"]
      264 SETTABLEKS                       R12 R11 K34 ["property"]
      266 CALL                             R9 2 1
      267 SETTABLEKS                       R9 R8 K42 ["secondaryModifier"]
      269 MOVE                             R9 R6
      270 LOADNIL                          R10
      271 LOADNIL                          R11
      272 FORGPREP                         R9
      273 GETUPVAL                         R14 0
      274 GETTABLEKS                       R14 R14 K13 ["createElement"]
      276 GETUPVAL                         R15 7
      277 DUPTABLE                         R16 K35 [{"bindings", "index", "LayoutOrder", "nodeProps", "onCreated", "previousBindings", "property"}]
      278 GETTABLEKS                       R17 R0 K3 ["bindings"]
      280 SETTABLEKS                       R17 R16 K3 ["bindings"]
      282 GETTABLEKS                       R17 R0 K33 ["index"]
      284 SETTABLEKS                       R17 R16 K33 ["index"]
      286 MOVE                             R17 R2
      287 CALL                             R17 0 1
      288 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      290 DUPTABLE                         R17 K36 [{"action", "depth", "icon", "name"}]
      291 GETTABLEKS                       R18 R0 K6 ["action"]
      293 SETTABLEKS                       R18 R17 K6 ["action"]
      295 ADDK                             R18 R5 K37 [1]
      296 SETTABLEKS                       R18 R17 K18 ["depth"]
      298 LOADK                            R18 K27 ["InputBinding"]
      299 SETTABLEKS                       R18 R17 K21 ["icon"]
      301 LOADK                            R20 K28 ["Binding"]
      302 GETUPVAL                         R22 8
      303 GETTABLE                         R21 R22 R13
      304 NAMECALL                         R18 R1 K29 ["getText"]
      306 CALL                             R18 3 1
      307 SETTABLEKS                       R18 R17 K11 ["name"]
      309 SETTABLEKS                       R17 R16 K14 ["nodeProps"]
      311 GETTABLEKS                       R17 R0 K31 ["onCreated"]
      313 SETTABLEKS                       R17 R16 K31 ["onCreated"]
      315 GETTABLEKS                       R17 R0 K15 ["previousBindings"]
      317 SETTABLEKS                       R17 R16 K15 ["previousBindings"]
      319 SETTABLEKS                       R13 R16 K34 ["property"]
      321 CALL                             R14 2 1
      322 SETTABLE                         R14 R8 R13
      323 FORGLOOP                         R9 2 ; [-51]
      325 GETUPVAL                         R9 0
      326 GETTABLEKS                       R9 R9 K13 ["createElement"]
      328 GETUPVAL                         R10 9
      329 DUPTABLE                         R11 K45 [{"LayoutOrder", "tag", "testId"}]
      330 GETTABLEKS                       R12 R0 K8 ["LayoutOrder"]
      332 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
      334 LOADK                            R12 K46 ["size-full-0 auto-y col"]
      335 SETTABLEKS                       R12 R11 K43 ["tag"]
      337 LOADK                            R13 K47 ["composite-binding-%*"]
      338 GETTABLEKS                       R15 R0 K33 ["index"]
      340 NAMECALL                         R13 R13 K48 ["format"]
      342 CALL                             R13 2 1
      343 MOVE                             R12 R13
      344 SETTABLEKS                       R12 R11 K44 ["testId"]
      346 MOVE                             R12 R8
      347 CALL                             R9 3 -1
      348 RETURN                           R9 -1

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
       82 GETTABLEKS                       R11 R11 K23 ["getEditMenu"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K14 ["Src"]
       89 GETTABLEKS                       R12 R12 K24 ["Hooks"]
       91 GETTABLEKS                       R12 R12 K25 ["Binding"]
       93 GETTABLEKS                       R12 R12 K26 ["useBinding"]
       95 CALL                             R11 1 1
       96 NEWTABLE                         R12 4 0
       98 GETIMPORT                        R13 K30 [Enum.InputActionType.Direction1D]
      100 NEWTABLE                         R14 0 2
      102 LOADK                            R15 K31 ["up"]
      103 LOADK                            R16 K32 ["down"]
      104 SETLIST                          R14 R15 2 [1]
      106 SETTABLE                         R14 R12 R13
      107 GETIMPORT                        R13 K34 [Enum.InputActionType.Direction2D]
      109 NEWTABLE                         R14 0 4
      111 LOADK                            R15 K31 ["up"]
      112 LOADK                            R16 K35 ["left"]
      113 LOADK                            R17 K32 ["down"]
      114 LOADK                            R18 K36 ["right"]
      115 SETLIST                          R14 R15 4 [1]
      117 SETTABLE                         R14 R12 R13
      118 GETIMPORT                        R13 K38 [Enum.InputActionType.Direction3D]
      120 NEWTABLE                         R14 0 6
      122 LOADK                            R15 K31 ["up"]
      123 LOADK                            R16 K35 ["left"]
      124 LOADK                            R17 K39 ["forward"]
      125 LOADK                            R18 K32 ["down"]
      126 LOADK                            R19 K36 ["right"]
      127 LOADK                            R20 K40 ["backward"]
      128 SETLIST                          R14 R15 6 [1]
      130 SETTABLE                         R14 R12 R13
      131 DUPTABLE                         R13 K41 [{"up", "left", "forward", "down", "right", "backward"}]
      132 LOADK                            R14 K42 ["Up"]
      133 SETTABLEKS                       R14 R13 K31 ["up"]
      135 LOADK                            R14 K43 ["Left"]
      136 SETTABLEKS                       R14 R13 K35 ["left"]
      138 LOADK                            R14 K44 ["Forward"]
      139 SETTABLEKS                       R14 R13 K39 ["forward"]
      141 LOADK                            R14 K45 ["Down"]
      142 SETTABLEKS                       R14 R13 K32 ["down"]
      144 LOADK                            R14 K46 ["Right"]
      145 SETTABLEKS                       R14 R13 K36 ["right"]
      147 LOADK                            R14 K47 ["Backward"]
      148 SETTABLEKS                       R14 R13 K40 ["backward"]
      150 DUPCLOSURE                       R14 K48 [PROTO_4]
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R10
      157 CAPTURE                          VAL R8
      158 CAPTURE                          VAL R7
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R6
      161 RETURN                           R14 1
