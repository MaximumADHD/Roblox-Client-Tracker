PROTO_0:
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
       16 LOADK                            R3 K4 ["KeyCode"]
       17 CALL                             R0 3 -1
       18 RETURN                           R0 -1

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
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R3 R0 K1 ["bindings"]
        7 GETTABLEKS                       R4 R0 K2 ["isRoot"]
        9 GETTABLEKS                       R5 R0 K3 ["onBindingEditCommand"]
       11 GETTABLEKS                       R6 R0 K4 ["action"]
       13 GETTABLEKS                       R6 R6 K5 ["uuid"]
       15 GETTABLEKS                       R7 R0 K6 ["LayoutOrder"]
       17 LOADK                            R8 K7 ["KeyCode"]
       18 CALL                             R2 6 1
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K8 ["useMemo"]
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R0
       25 NEWTABLE                         R5 0 3
       27 GETTABLEKS                       R6 R0 K4 ["action"]
       29 GETTABLEKS                       R6 R6 K9 ["type"]
       31 GETTABLEKS                       R7 R0 K2 ["isRoot"]
       33 GETTABLEKS                       R8 R0 K1 ["bindings"]
       35 SETLIST                          R5 R6 3 [1]
       37 CALL                             R3 2 1
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R4 R4 K8 ["useMemo"]
       41 NEWCLOSURE                       R5 P1
       42 CAPTURE                          VAL R0
       43 NEWTABLE                         R6 0 1
       45 GETTABLEKS                       R7 R0 K10 ["name"]
       47 SETLIST                          R6 R7 1 [1]
       49 CALL                             R4 2 1
       50 GETTABLEKS                       R5 R2 K11 ["showPrimaryModifier"]
       52 JUMPIF                           R5 ; [+2]
       53 GETTABLEKS                       R5 R2 K12 ["showSecondaryModifier"]
       55 NEWTABLE                         R6 4 0
       57 GETUPVAL                         R7 2
       58 GETTABLEKS                       R7 R7 K13 ["createElement"]
       60 GETUPVAL                         R8 4
       61 DUPTABLE                         R9 K17 [{"bindings", "LayoutOrder", "nodeProps", "onCreated", "property"}]
       62 GETTABLEKS                       R10 R0 K1 ["bindings"]
       64 SETTABLEKS                       R10 R9 K1 ["bindings"]
       66 MOVE                             R10 R1
       67 CALL                             R10 0 1
       68 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       70 DUPTABLE                         R10 K26 [{"action", "createMenu", "depth", "editMenu", "expanded", "onEditMenuItemSelected", "setExpanded", "icon", "name", "onCreateMenuItemSelected"}]
       71 GETTABLEKS                       R11 R0 K4 ["action"]
       73 SETTABLEKS                       R11 R10 K4 ["action"]
       75 GETTABLEKS                       R11 R0 K18 ["createMenu"]
       77 SETTABLEKS                       R11 R10 K18 ["createMenu"]
       79 SETTABLEKS                       R4 R10 K19 ["depth"]
       81 SETTABLEKS                       R3 R10 K20 ["editMenu"]
       83 JUMPIFNOT                        R5 ; [+3]
       84 GETTABLEKS                       R11 R2 K21 ["expanded"]
       86 JUMP                             ; [+1]
       87 LOADNIL                          R11
       88 SETTABLEKS                       R11 R10 K21 ["expanded"]
       90 GETTABLEKS                       R11 R2 K22 ["onEditMenuItemSelected"]
       92 SETTABLEKS                       R11 R10 K22 ["onEditMenuItemSelected"]
       94 JUMPIFNOT                        R5 ; [+3]
       95 GETTABLEKS                       R11 R2 K23 ["setExpanded"]
       97 JUMP                             ; [+1]
       98 LOADNIL                          R11
       99 SETTABLEKS                       R11 R10 K23 ["setExpanded"]
      101 GETTABLEKS                       R12 R0 K10 ["name"]
      103 JUMPIFNOT                        R12 ; [+2]
      104 LOADK                            R11 K27 ["InputAction"]
      105 JUMP                             ; [+1]
      106 LOADK                            R11 K28 ["InputBinding"]
      107 SETTABLEKS                       R11 R10 K24 ["icon"]
      109 GETTABLEKS                       R12 R0 K10 ["name"]
      111 ORK                              R11 R12 K29 ["Keycode"]
      112 SETTABLEKS                       R11 R10 K10 ["name"]
      114 GETTABLEKS                       R11 R0 K25 ["onCreateMenuItemSelected"]
      116 SETTABLEKS                       R11 R10 K25 ["onCreateMenuItemSelected"]
      118 SETTABLEKS                       R10 R9 K14 ["nodeProps"]
      120 GETTABLEKS                       R10 R0 K15 ["onCreated"]
      122 SETTABLEKS                       R10 R9 K15 ["onCreated"]
      124 LOADK                            R10 K30 ["keyCode"]
      125 SETTABLEKS                       R10 R9 K16 ["property"]
      127 CALL                             R7 2 1
      128 SETTABLEKS                       R7 R6 K31 ["header"]
      130 GETTABLEKS                       R7 R2 K21 ["expanded"]
      132 JUMPIFEQKB                       R7 FALSE ; [+78]
      134 JUMPIFNOT                        R5 ; [+76]
      135 GETTABLEKS                       R7 R2 K11 ["showPrimaryModifier"]
      137 JUMPIFNOT                        R7 ; [+35]
      138 GETUPVAL                         R7 2
      139 GETTABLEKS                       R7 R7 K13 ["createElement"]
      141 GETUPVAL                         R8 4
      142 DUPTABLE                         R9 K32 [{"bindings", "LayoutOrder", "nodeProps", "property"}]
      143 GETTABLEKS                       R10 R0 K1 ["bindings"]
      145 SETTABLEKS                       R10 R9 K1 ["bindings"]
      147 MOVE                             R10 R1
      148 CALL                             R10 0 1
      149 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
      151 DUPTABLE                         R10 K33 [{"action", "depth", "icon", "name"}]
      152 GETTABLEKS                       R11 R0 K4 ["action"]
      154 SETTABLEKS                       R11 R10 K4 ["action"]
      156 ADDK                             R11 R4 K34 [1]
      157 SETTABLEKS                       R11 R10 K19 ["depth"]
      159 LOADK                            R11 K28 ["InputBinding"]
      160 SETTABLEKS                       R11 R10 K24 ["icon"]
      162 LOADK                            R11 K35 ["Primary Modifier"]
      163 SETTABLEKS                       R11 R10 K10 ["name"]
      165 SETTABLEKS                       R10 R9 K14 ["nodeProps"]
      167 LOADK                            R10 K36 ["primaryModifier"]
      168 SETTABLEKS                       R10 R9 K16 ["property"]
      170 CALL                             R7 2 1
      171 SETTABLEKS                       R7 R6 K36 ["primaryModifier"]
      173 GETTABLEKS                       R7 R2 K12 ["showSecondaryModifier"]
      175 JUMPIFNOT                        R7 ; [+35]
      176 GETUPVAL                         R7 2
      177 GETTABLEKS                       R7 R7 K13 ["createElement"]
      179 GETUPVAL                         R8 4
      180 DUPTABLE                         R9 K32 [{"bindings", "LayoutOrder", "nodeProps", "property"}]
      181 GETTABLEKS                       R10 R0 K1 ["bindings"]
      183 SETTABLEKS                       R10 R9 K1 ["bindings"]
      185 MOVE                             R10 R1
      186 CALL                             R10 0 1
      187 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
      189 DUPTABLE                         R10 K33 [{"action", "depth", "icon", "name"}]
      190 GETTABLEKS                       R11 R0 K4 ["action"]
      192 SETTABLEKS                       R11 R10 K4 ["action"]
      194 ADDK                             R11 R4 K34 [1]
      195 SETTABLEKS                       R11 R10 K19 ["depth"]
      197 LOADK                            R11 K28 ["InputBinding"]
      198 SETTABLEKS                       R11 R10 K24 ["icon"]
      200 LOADK                            R11 K37 ["Secondary Modifier"]
      201 SETTABLEKS                       R11 R10 K10 ["name"]
      203 SETTABLEKS                       R10 R9 K14 ["nodeProps"]
      205 LOADK                            R10 K38 ["secondaryModifier"]
      206 SETTABLEKS                       R10 R9 K16 ["property"]
      208 CALL                             R7 2 1
      209 SETTABLEKS                       R7 R6 K38 ["secondaryModifier"]
      211 GETUPVAL                         R7 2
      212 GETTABLEKS                       R7 R7 K13 ["createElement"]
      214 GETUPVAL                         R8 5
      215 DUPTABLE                         R9 K41 [{"LayoutOrder", "tag", "testId"}]
      216 GETTABLEKS                       R10 R0 K6 ["LayoutOrder"]
      218 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
      220 LOADK                            R10 K42 ["size-full-0 auto-y col"]
      221 SETTABLEKS                       R10 R9 K39 ["tag"]
      223 LOADK                            R11 K43 ["key-code-binding-%*"]
      224 GETTABLEKS                       R13 R0 K44 ["index"]
      226 NAMECALL                         R11 R11 K45 ["format"]
      228 CALL                             R11 2 1
      229 MOVE                             R10 R11
      230 SETTABLEKS                       R10 R9 K40 ["testId"]
      232 MOVE                             R10 R6
      233 CALL                             R7 3 -1
      234 RETURN                           R7 -1

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
       47 GETTABLEKS                       R7 R7 K16 ["Types"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K11 ["Src"]
       54 GETTABLEKS                       R8 R8 K17 ["Util"]
       56 GETTABLEKS                       R8 R8 K18 ["getEditMenu"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R9 R0 K11 ["Src"]
       63 GETTABLEKS                       R9 R9 K19 ["Hooks"]
       65 GETTABLEKS                       R9 R9 K20 ["useBinding"]
       67 CALL                             R8 1 1
       68 DUPCLOSURE                       R9 K21 [PROTO_2]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R4
       75 RETURN                           R9 1
