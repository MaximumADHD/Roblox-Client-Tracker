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
       11 GETTABLEKS                       R3 R0 K3 ["disabled"]
       13 GETTABLEKS                       R5 R0 K5 ["action"]
       15 GETTABLEKS                       R5 R5 K6 ["defaultPlayerScript"]
       17 ORK                              R4 R5 K4 []
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R6 R0 K7 ["bindings"]
       21 GETTABLEKS                       R7 R0 K8 ["isRoot"]
       23 GETTABLEKS                       R8 R0 K9 ["onBindingEditCommand"]
       25 GETTABLEKS                       R9 R0 K10 ["onBindingCreateCommand"]
       27 GETTABLEKS                       R10 R0 K5 ["action"]
       29 GETTABLEKS                       R10 R10 K11 ["uuid"]
       31 GETTABLEKS                       R11 R0 K12 ["LayoutOrder"]
       33 LOADK                            R12 K13 ["Keycode"]
       34 CALL                             R5 7 1
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K14 ["useMemo"]
       38 NEWCLOSURE                       R7 P0
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R0
       41 NEWTABLE                         R8 0 2
       43 GETTABLEKS                       R9 R0 K7 ["bindings"]
       45 MOVE                             R10 R4
       46 SETLIST                          R8 R9 2 [1]
       48 CALL                             R6 2 1
       49 GETUPVAL                         R7 0
       50 GETTABLEKS                       R7 R7 K14 ["useMemo"]
       52 NEWCLOSURE                       R8 P1
       53 CAPTURE                          VAL R4
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R0
       57 NEWTABLE                         R9 0 9
       59 MOVE                             R10 R1
       60 GETTABLEKS                       R11 R0 K15 ["onCreated"]
       62 GETTABLEKS                       R12 R0 K5 ["action"]
       64 GETTABLEKS                       R12 R12 K16 ["type"]
       66 GETTABLEKS                       R13 R0 K5 ["action"]
       68 GETTABLEKS                       R13 R13 K17 ["enabled"]
       70 GETTABLEKS                       R14 R0 K18 ["context"]
       72 GETTABLEKS                       R14 R14 K17 ["enabled"]
       74 GETTABLEKS                       R15 R0 K8 ["isRoot"]
       76 GETTABLEKS                       R16 R0 K7 ["bindings"]
       78 GETTABLEKS                       R17 R0 K19 ["scriptableBinding"]
       80 MOVE                             R18 R4
       81 SETLIST                          R9 R10 9 [1]
       83 CALL                             R7 2 1
       84 GETUPVAL                         R8 0
       85 GETTABLEKS                       R8 R8 K14 ["useMemo"]
       87 NEWCLOSURE                       R9 P2
       88 CAPTURE                          VAL R4
       89 CAPTURE                          UPVAL U5
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R0
       92 NEWTABLE                         R10 0 4
       94 MOVE                             R11 R1
       95 GETTABLEKS                       R12 R0 K20 ["createMenu"]
       97 GETTABLEKS                       R13 R0 K7 ["bindings"]
       99 MOVE                             R14 R4
      100 SETLIST                          R10 R11 4 [1]
      102 CALL                             R8 2 1
      103 GETUPVAL                         R9 0
      104 GETTABLEKS                       R9 R9 K14 ["useMemo"]
      106 NEWCLOSURE                       R10 P3
      107 CAPTURE                          VAL R0
      108 NEWTABLE                         R11 0 1
      110 GETTABLEKS                       R12 R0 K21 ["name"]
      112 SETLIST                          R11 R12 1 [1]
      114 CALL                             R9 2 1
      115 GETTABLEKS                       R10 R5 K22 ["showPrimaryModifier"]
      117 JUMPIF                           R10 ; [+2]
      118 GETTABLEKS                       R10 R5 K23 ["showSecondaryModifier"]
      120 NEWTABLE                         R11 4 0
      122 JUMPIFNOT                        R4 ; [+48]
      123 GETUPVAL                         R12 0
      124 GETTABLEKS                       R12 R12 K24 ["createElement"]
      126 GETUPVAL                         R13 6
      127 DUPTABLE                         R14 K27 [{"bindings", "LayoutOrder", "nodeProps", "previousBindings"}]
      128 SETTABLEKS                       R6 R14 K7 ["bindings"]
      130 MOVE                             R15 R2
      131 CALL                             R15 0 1
      132 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
      134 DUPTABLE                         R15 K30 [{"action", "depth", "disabled", "icon", "name"}]
      135 GETTABLEKS                       R16 R0 K5 ["action"]
      137 SETTABLEKS                       R16 R15 K5 ["action"]
      139 SETTABLEKS                       R9 R15 K28 ["depth"]
      141 SETTABLEKS                       R3 R15 K3 ["disabled"]
      143 GETTABLEKS                       R17 R0 K21 ["name"]
      145 JUMPIFNOT                        R17 ; [+2]
      146 LOADK                            R16 K31 ["InputAction"]
      147 JUMP                             ; [+1]
      148 LOADK                            R16 K32 ["InputBinding"]
      149 SETTABLEKS                       R16 R15 K29 ["icon"]
      151 GETTABLEKS                       R16 R0 K21 ["name"]
      153 JUMPIF                           R16 ; [+5]
      154 LOADK                            R18 K33 ["Binding"]
      155 LOADK                            R19 K13 ["Keycode"]
      156 NAMECALL                         R16 R1 K34 ["getText"]
      158 CALL                             R16 3 1
      159 SETTABLEKS                       R16 R15 K21 ["name"]
      161 SETTABLEKS                       R15 R14 K25 ["nodeProps"]
      163 GETTABLEKS                       R15 R0 K26 ["previousBindings"]
      165 SETTABLEKS                       R15 R14 K26 ["previousBindings"]
      167 CALL                             R12 2 1
      168 SETTABLEKS                       R12 R11 K35 ["header"]
      170 JUMP                             ; [+91]
      171 GETUPVAL                         R12 0
      172 GETTABLEKS                       R12 R12 K24 ["createElement"]
      174 GETUPVAL                         R13 7
      175 DUPTABLE                         R14 K40 [{["bindings"], ["index"], ["LayoutOrder"], ["nodeProps"], ["onCreated"], ["previousBindings"], ["property"] = "keyCode", ["validBindingsBySchema"]}]
      176 GETTABLEKS                       R15 R0 K7 ["bindings"]
      178 SETTABLEKS                       R15 R14 K7 ["bindings"]
      180 GETTABLEKS                       R15 R0 K36 ["index"]
      182 SETTABLEKS                       R15 R14 K36 ["index"]
      184 MOVE                             R15 R2
      185 CALL                             R15 0 1
      186 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
      188 DUPTABLE                         R15 K47 [{"action", "anchorRef", "createMenu", "depth", "disabled", "editMenu", "expanded", "onEditMenuItemSelected", "setExpanded", "icon", "name", "onCreateMenuItemSelected"}]
      189 GETTABLEKS                       R16 R0 K5 ["action"]
      191 SETTABLEKS                       R16 R15 K5 ["action"]
      193 GETTABLEKS                       R16 R0 K41 ["anchorRef"]
      195 SETTABLEKS                       R16 R15 K41 ["anchorRef"]
      197 SETTABLEKS                       R8 R15 K20 ["createMenu"]
      199 SETTABLEKS                       R9 R15 K28 ["depth"]
      201 SETTABLEKS                       R3 R15 K3 ["disabled"]
      203 SETTABLEKS                       R7 R15 K42 ["editMenu"]
      205 JUMPIFNOT                        R10 ; [+3]
      206 GETTABLEKS                       R16 R5 K43 ["expanded"]
      208 JUMP                             ; [+1]
      209 LOADNIL                          R16
      210 SETTABLEKS                       R16 R15 K43 ["expanded"]
      212 GETTABLEKS                       R16 R5 K44 ["onEditMenuItemSelected"]
      214 SETTABLEKS                       R16 R15 K44 ["onEditMenuItemSelected"]
      216 JUMPIFNOT                        R10 ; [+3]
      217 GETTABLEKS                       R16 R5 K45 ["setExpanded"]
      219 JUMP                             ; [+1]
      220 LOADNIL                          R16
      221 SETTABLEKS                       R16 R15 K45 ["setExpanded"]
      223 GETTABLEKS                       R17 R0 K21 ["name"]
      225 JUMPIFNOT                        R17 ; [+2]
      226 LOADK                            R16 K31 ["InputAction"]
      227 JUMP                             ; [+1]
      228 LOADK                            R16 K32 ["InputBinding"]
      229 SETTABLEKS                       R16 R15 K29 ["icon"]
      231 GETTABLEKS                       R16 R0 K21 ["name"]
      233 JUMPIF                           R16 ; [+5]
      234 LOADK                            R18 K33 ["Binding"]
      235 LOADK                            R19 K13 ["Keycode"]
      236 NAMECALL                         R16 R1 K34 ["getText"]
      238 CALL                             R16 3 1
      239 SETTABLEKS                       R16 R15 K21 ["name"]
      241 GETTABLEKS                       R16 R5 K46 ["onCreateMenuItemSelected"]
      243 SETTABLEKS                       R16 R15 K46 ["onCreateMenuItemSelected"]
      245 SETTABLEKS                       R15 R14 K25 ["nodeProps"]
      247 GETTABLEKS                       R15 R0 K15 ["onCreated"]
      249 SETTABLEKS                       R15 R14 K15 ["onCreated"]
      251 GETTABLEKS                       R15 R0 K26 ["previousBindings"]
      253 SETTABLEKS                       R15 R14 K26 ["previousBindings"]
      255 GETTABLEKS                       R15 R0 K39 ["validBindingsBySchema"]
      257 SETTABLEKS                       R15 R14 K39 ["validBindingsBySchema"]
      259 CALL                             R12 2 1
      260 SETTABLEKS                       R12 R11 K35 ["header"]
      262 JUMPIF                           R4 ; [+121]
      263 GETTABLEKS                       R12 R5 K43 ["expanded"]
      265 JUMPIFEQKB                       R12 FALSE ; [+118]
      267 JUMPIFNOT                        R10 ; [+116]
      268 GETTABLEKS                       R12 R5 K22 ["showPrimaryModifier"]
      270 JUMPIFNOT                        R12 ; [+55]
      271 GETUPVAL                         R12 0
      272 GETTABLEKS                       R12 R12 K24 ["createElement"]
      274 GETUPVAL                         R13 7
      275 DUPTABLE                         R14 K49 [{["bindings"], ["index"], ["LayoutOrder"], ["nodeProps"], ["previousBindings"], ["property"] = "primaryModifier", ["validBindingsBySchema"]}]
      276 GETTABLEKS                       R15 R0 K7 ["bindings"]
      278 SETTABLEKS                       R15 R14 K7 ["bindings"]
      280 GETTABLEKS                       R15 R0 K36 ["index"]
      282 SETTABLEKS                       R15 R14 K36 ["index"]
      284 MOVE                             R15 R2
      285 CALL                             R15 0 1
      286 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
      288 DUPTABLE                         R15 K50 [{["action"], ["depth"], ["disabled"], ["editMenu"], ["icon"] = "InputBinding", ["name"], ["onEditMenuItemSelected"]}]
      289 GETTABLEKS                       R16 R0 K5 ["action"]
      291 SETTABLEKS                       R16 R15 K5 ["action"]
      293 ADDK                             R16 R9 K51 [1]
      294 SETTABLEKS                       R16 R15 K28 ["depth"]
      296 SETTABLEKS                       R3 R15 K3 ["disabled"]
      298 GETTABLEKS                       R16 R5 K52 ["primaryModifierMenu"]
      300 SETTABLEKS                       R16 R15 K42 ["editMenu"]
      302 LOADK                            R18 K33 ["Binding"]
      303 LOADK                            R19 K53 ["PrimaryModifier"]
      304 NAMECALL                         R16 R1 K34 ["getText"]
      306 CALL                             R16 3 1
      307 SETTABLEKS                       R16 R15 K21 ["name"]
      309 GETTABLEKS                       R16 R5 K54 ["onPrimaryModifierMenuItemSelected"]
      311 SETTABLEKS                       R16 R15 K44 ["onEditMenuItemSelected"]
      313 SETTABLEKS                       R15 R14 K25 ["nodeProps"]
      315 GETTABLEKS                       R15 R0 K26 ["previousBindings"]
      317 SETTABLEKS                       R15 R14 K26 ["previousBindings"]
      319 GETTABLEKS                       R15 R0 K39 ["validBindingsBySchema"]
      321 SETTABLEKS                       R15 R14 K39 ["validBindingsBySchema"]
      323 CALL                             R12 2 1
      324 SETTABLEKS                       R12 R11 K48 ["primaryModifier"]
      326 GETTABLEKS                       R12 R5 K23 ["showSecondaryModifier"]
      328 JUMPIFNOT                        R12 ; [+55]
      329 GETUPVAL                         R12 0
      330 GETTABLEKS                       R12 R12 K24 ["createElement"]
      332 GETUPVAL                         R13 7
      333 DUPTABLE                         R14 K56 [{["bindings"], ["index"], ["LayoutOrder"], ["nodeProps"], ["previousBindings"], ["property"] = "secondaryModifier", ["validBindingsBySchema"]}]
      334 GETTABLEKS                       R15 R0 K7 ["bindings"]
      336 SETTABLEKS                       R15 R14 K7 ["bindings"]
      338 GETTABLEKS                       R15 R0 K36 ["index"]
      340 SETTABLEKS                       R15 R14 K36 ["index"]
      342 MOVE                             R15 R2
      343 CALL                             R15 0 1
      344 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
      346 DUPTABLE                         R15 K50 [{["action"], ["depth"], ["disabled"], ["editMenu"], ["icon"] = "InputBinding", ["name"], ["onEditMenuItemSelected"]}]
      347 GETTABLEKS                       R16 R0 K5 ["action"]
      349 SETTABLEKS                       R16 R15 K5 ["action"]
      351 ADDK                             R16 R9 K51 [1]
      352 SETTABLEKS                       R16 R15 K28 ["depth"]
      354 SETTABLEKS                       R3 R15 K3 ["disabled"]
      356 GETTABLEKS                       R16 R5 K57 ["secondaryModifierMenu"]
      358 SETTABLEKS                       R16 R15 K42 ["editMenu"]
      360 LOADK                            R18 K33 ["Binding"]
      361 LOADK                            R19 K58 ["SecondaryModifier"]
      362 NAMECALL                         R16 R1 K34 ["getText"]
      364 CALL                             R16 3 1
      365 SETTABLEKS                       R16 R15 K21 ["name"]
      367 GETTABLEKS                       R16 R5 K59 ["onSecondaryModifierMenuItemSelected"]
      369 SETTABLEKS                       R16 R15 K44 ["onEditMenuItemSelected"]
      371 SETTABLEKS                       R15 R14 K25 ["nodeProps"]
      373 GETTABLEKS                       R15 R0 K26 ["previousBindings"]
      375 SETTABLEKS                       R15 R14 K26 ["previousBindings"]
      377 GETTABLEKS                       R15 R0 K39 ["validBindingsBySchema"]
      379 SETTABLEKS                       R15 R14 K39 ["validBindingsBySchema"]
      381 CALL                             R12 2 1
      382 SETTABLEKS                       R12 R11 K55 ["secondaryModifier"]
      384 GETUPVAL                         R12 0
      385 GETTABLEKS                       R12 R12 K24 ["createElement"]
      387 GETUPVAL                         R13 8
      388 DUPTABLE                         R14 K63 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      389 GETTABLEKS                       R15 R0 K12 ["LayoutOrder"]
      391 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
      393 LOADK                            R15 K64 ["keycode-binding-%*"]
      394 GETTABLEKS                       R17 R0 K36 ["index"]
      396 NAMECALL                         R15 R15 K65 ["format"]
      398 CALL                             R15 2 1
      399 SETTABLEKS                       R15 R14 K62 ["testId"]
      401 MOVE                             R15 R11
      402 CALL                             R12 3 -1
      403 RETURN                           R12 -1

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
      107 DUPCLOSURE                       R13 K28 [PROTO_4]
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R6
      117 RETURN                           R13 1
