PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onSaveTypeChanged"]
        3 JUMPIFEQKS                       R0 K1 ["All"] ; [+3]
        5 MOVE                             R2 R0
        6 JUMP                             ; [+1]
        7 LOADNIL                          R2
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onIsPublishedChanged"]
        3 ORK                              R2 R0 K1 []
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onHasNotesChanged"]
        3 ORK                              R2 R0 K1 []
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K0 ["use"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R4 R0 K1 ["saveType"]
        8 JUMPIFNOT                        R4 ; [+3]
        9 GETTABLEKS                       R3 R0 K1 ["saveType"]
       11 JUMP                             ; [+1]
       12 LOADK                            R3 K2 ["All"]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R0
       18 NEWTABLE                         R6 0 0
       20 CALL                             R4 2 1
       21 GETTABLEKS                       R6 R0 K4 ["isPublished"]
       23 JUMPIFNOT                        R6 ; [+3]
       24 GETTABLEKS                       R5 R0 K4 ["isPublished"]
       26 JUMP                             ; [+1]
       27 LOADB                            R5 0
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          VAL R0
       33 NEWTABLE                         R8 0 0
       35 CALL                             R6 2 1
       36 GETTABLEKS                       R8 R0 K5 ["hasNotes"]
       38 JUMPIFNOT                        R8 ; [+3]
       39 GETTABLEKS                       R7 R0 K5 ["hasNotes"]
       41 JUMP                             ; [+1]
       42 LOADB                            R7 0
       43 GETUPVAL                         R8 2
       44 GETTABLEKS                       R8 R8 K3 ["useCallback"]
       46 NEWCLOSURE                       R9 P2
       47 CAPTURE                          VAL R0
       48 NEWTABLE                         R10 0 0
       50 CALL                             R8 2 1
       51 GETUPVAL                         R9 2
       52 GETTABLEKS                       R9 R9 K6 ["createElement"]
       54 GETUPVAL                         R10 3
       55 GETTABLEKS                       R10 R10 K7 ["View"]
       57 DUPTABLE                         R11 K13 [{["tag"] = "col size-3000-0 auto-y", ["testId"] = "--filter-list", ["LayoutOrder"]}]
       58 GETTABLEKS                       R12 R0 K12 ["LayoutOrder"]
       60 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
       62 DUPTABLE                         R12 K17 [{"Header", "Divider", "Footer"}]
       63 GETUPVAL                         R13 2
       64 GETTABLEKS                       R13 R13 K6 ["createElement"]
       66 GETUPVAL                         R14 3
       67 GETTABLEKS                       R14 R14 K7 ["View"]
       69 DUPTABLE                         R15 K19 [{["tag"] = "col align-x-left gap-small size-0-0 auto-xy padding-small", ["LayoutOrder"]}]
       70 MOVE                             R16 R1
       71 CALL                             R16 0 1
       72 SETTABLEKS                       R16 R15 K12 ["LayoutOrder"]
       74 DUPTABLE                         R16 K21 [{"SaveType"}]
       75 GETUPVAL                         R17 2
       76 GETTABLEKS                       R17 R17 K6 ["createElement"]
       78 GETUPVAL                         R18 3
       79 GETTABLEKS                       R18 R18 K22 ["RadioGroup"]
       81 GETTABLEKS                       R18 R18 K23 ["Root"]
       83 DUPTABLE                         R19 K26 [{"value", "onValueChanged", "LayoutOrder"}]
       84 SETTABLEKS                       R3 R19 K24 ["value"]
       86 SETTABLEKS                       R4 R19 K25 ["onValueChanged"]
       88 MOVE                             R20 R1
       89 CALL                             R20 0 1
       90 SETTABLEKS                       R20 R19 K12 ["LayoutOrder"]
       92 DUPTABLE                         R20 K29 [{"Manual", "Auto", "All"}]
       93 GETUPVAL                         R21 2
       94 GETTABLEKS                       R21 R21 K6 ["createElement"]
       96 GETUPVAL                         R22 3
       97 GETTABLEKS                       R22 R22 K22 ["RadioGroup"]
       99 GETTABLEKS                       R22 R22 K30 ["Item"]
      101 DUPTABLE                         R23 K33 [{["value"] = "Manual", ["label"], ["size"], ["LayoutOrder"]}]
      102 LOADK                            R26 K34 ["Option"]
      103 LOADK                            R27 K35 ["ManualSaves"]
      104 NAMECALL                         R24 R2 K36 ["getText"]
      106 CALL                             R24 3 1
      107 SETTABLEKS                       R24 R23 K31 ["label"]
      109 GETUPVAL                         R24 3
      110 GETTABLEKS                       R24 R24 K37 ["Enums"]
      112 GETTABLEKS                       R24 R24 K38 ["InputSize"]
      114 GETTABLEKS                       R24 R24 K39 ["XSmall"]
      116 SETTABLEKS                       R24 R23 K32 ["size"]
      118 MOVE                             R24 R1
      119 CALL                             R24 0 1
      120 SETTABLEKS                       R24 R23 K12 ["LayoutOrder"]
      122 CALL                             R21 2 1
      123 SETTABLEKS                       R21 R20 K27 ["Manual"]
      125 GETUPVAL                         R21 2
      126 GETTABLEKS                       R21 R21 K6 ["createElement"]
      128 GETUPVAL                         R22 3
      129 GETTABLEKS                       R22 R22 K22 ["RadioGroup"]
      131 GETTABLEKS                       R22 R22 K30 ["Item"]
      133 DUPTABLE                         R23 K40 [{["value"] = "Auto", ["label"], ["size"], ["LayoutOrder"]}]
      134 LOADK                            R26 K34 ["Option"]
      135 LOADK                            R27 K41 ["AutoSaves"]
      136 NAMECALL                         R24 R2 K36 ["getText"]
      138 CALL                             R24 3 1
      139 SETTABLEKS                       R24 R23 K31 ["label"]
      141 GETUPVAL                         R24 3
      142 GETTABLEKS                       R24 R24 K37 ["Enums"]
      144 GETTABLEKS                       R24 R24 K38 ["InputSize"]
      146 GETTABLEKS                       R24 R24 K39 ["XSmall"]
      148 SETTABLEKS                       R24 R23 K32 ["size"]
      150 MOVE                             R24 R1
      151 CALL                             R24 0 1
      152 SETTABLEKS                       R24 R23 K12 ["LayoutOrder"]
      154 CALL                             R21 2 1
      155 SETTABLEKS                       R21 R20 K28 ["Auto"]
      157 GETUPVAL                         R21 2
      158 GETTABLEKS                       R21 R21 K6 ["createElement"]
      160 GETUPVAL                         R22 3
      161 GETTABLEKS                       R22 R22 K22 ["RadioGroup"]
      163 GETTABLEKS                       R22 R22 K30 ["Item"]
      165 DUPTABLE                         R23 K42 [{["value"] = "All", ["label"], ["size"], ["LayoutOrder"]}]
      166 LOADK                            R26 K34 ["Option"]
      167 LOADK                            R27 K43 ["AllSaves"]
      168 NAMECALL                         R24 R2 K36 ["getText"]
      170 CALL                             R24 3 1
      171 SETTABLEKS                       R24 R23 K31 ["label"]
      173 GETUPVAL                         R24 3
      174 GETTABLEKS                       R24 R24 K37 ["Enums"]
      176 GETTABLEKS                       R24 R24 K38 ["InputSize"]
      178 GETTABLEKS                       R24 R24 K39 ["XSmall"]
      180 SETTABLEKS                       R24 R23 K32 ["size"]
      182 MOVE                             R24 R1
      183 CALL                             R24 0 1
      184 SETTABLEKS                       R24 R23 K12 ["LayoutOrder"]
      186 CALL                             R21 2 1
      187 SETTABLEKS                       R21 R20 K2 ["All"]
      189 CALL                             R17 3 1
      190 SETTABLEKS                       R17 R16 K20 ["SaveType"]
      192 CALL                             R13 3 1
      193 SETTABLEKS                       R13 R12 K14 ["Header"]
      195 GETUPVAL                         R13 2
      196 GETTABLEKS                       R13 R13 K6 ["createElement"]
      198 GETUPVAL                         R14 3
      199 GETTABLEKS                       R14 R14 K15 ["Divider"]
      201 DUPTABLE                         R15 K44 [{"LayoutOrder"}]
      202 MOVE                             R16 R1
      203 CALL                             R16 0 1
      204 SETTABLEKS                       R16 R15 K12 ["LayoutOrder"]
      206 CALL                             R13 2 1
      207 SETTABLEKS                       R13 R12 K15 ["Divider"]
      209 GETUPVAL                         R13 2
      210 GETTABLEKS                       R13 R13 K6 ["createElement"]
      212 GETUPVAL                         R14 3
      213 GETTABLEKS                       R14 R14 K7 ["View"]
      215 DUPTABLE                         R15 K46 [{["tag"] = "col align-x-left gap-medium size-0-0 auto-xy padding-small", ["LayoutOrder"]}]
      216 MOVE                             R16 R1
      217 CALL                             R16 0 1
      218 SETTABLEKS                       R16 R15 K12 ["LayoutOrder"]
      220 DUPTABLE                         R16 K49 [{"PublishedCheckbox", "HasNotesCheckbox"}]
      221 GETUPVAL                         R17 2
      222 GETTABLEKS                       R17 R17 K6 ["createElement"]
      224 GETUPVAL                         R18 3
      225 GETTABLEKS                       R18 R18 K50 ["Checkbox"]
      227 DUPTABLE                         R19 K53 [{"label", "isChecked", "onActivated", "size", "LayoutOrder"}]
      228 LOADK                            R22 K34 ["Option"]
      229 LOADK                            R23 K54 ["Published"]
      230 NAMECALL                         R20 R2 K36 ["getText"]
      232 CALL                             R20 3 1
      233 SETTABLEKS                       R20 R19 K31 ["label"]
      235 SETTABLEKS                       R5 R19 K51 ["isChecked"]
      237 SETTABLEKS                       R6 R19 K52 ["onActivated"]
      239 GETUPVAL                         R20 3
      240 GETTABLEKS                       R20 R20 K37 ["Enums"]
      242 GETTABLEKS                       R20 R20 K38 ["InputSize"]
      244 GETTABLEKS                       R20 R20 K39 ["XSmall"]
      246 SETTABLEKS                       R20 R19 K32 ["size"]
      248 MOVE                             R20 R1
      249 CALL                             R20 0 1
      250 SETTABLEKS                       R20 R19 K12 ["LayoutOrder"]
      252 CALL                             R17 2 1
      253 SETTABLEKS                       R17 R16 K47 ["PublishedCheckbox"]
      255 GETUPVAL                         R17 2
      256 GETTABLEKS                       R17 R17 K6 ["createElement"]
      258 GETUPVAL                         R18 3
      259 GETTABLEKS                       R18 R18 K50 ["Checkbox"]
      261 DUPTABLE                         R19 K53 [{"label", "isChecked", "onActivated", "size", "LayoutOrder"}]
      262 LOADK                            R22 K34 ["Option"]
      263 LOADK                            R23 K55 ["HasNotes"]
      264 NAMECALL                         R20 R2 K36 ["getText"]
      266 CALL                             R20 3 1
      267 SETTABLEKS                       R20 R19 K31 ["label"]
      269 SETTABLEKS                       R7 R19 K51 ["isChecked"]
      271 SETTABLEKS                       R8 R19 K52 ["onActivated"]
      273 GETUPVAL                         R20 3
      274 GETTABLEKS                       R20 R20 K37 ["Enums"]
      276 GETTABLEKS                       R20 R20 K38 ["InputSize"]
      278 GETTABLEKS                       R20 R20 K39 ["XSmall"]
      280 SETTABLEKS                       R20 R19 K32 ["size"]
      282 MOVE                             R20 R1
      283 CALL                             R20 0 1
      284 SETTABLEKS                       R20 R19 K12 ["LayoutOrder"]
      286 CALL                             R17 2 1
      287 SETTABLEKS                       R17 R16 K48 ["HasNotesCheckbox"]
      289 CALL                             R13 3 1
      290 SETTABLEKS                       R13 R12 K16 ["Footer"]
      292 CALL                             R9 3 -1
      293 RETURN                           R9 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["createElement"]
        7 GETUPVAL                         R4 3
        8 DUPTABLE                         R5 K5 [{"toggle", "side", "align", "LayoutOrder"}]
        9 SETTABLEKS                       R2 R5 K1 ["toggle"]
       11 GETUPVAL                         R6 4
       12 GETTABLEKS                       R6 R6 K6 ["Enums"]
       14 GETTABLEKS                       R6 R6 K7 ["PopoverSide"]
       16 GETTABLEKS                       R6 R6 K8 ["Bottom"]
       18 SETTABLEKS                       R6 R5 K2 ["side"]
       20 GETUPVAL                         R6 4
       21 GETTABLEKS                       R6 R6 K6 ["Enums"]
       23 GETTABLEKS                       R6 R6 K9 ["PopoverAlign"]
       25 GETTABLEKS                       R6 R6 K10 ["End"]
       27 SETTABLEKS                       R6 R5 K3 ["align"]
       29 GETTABLEKS                       R6 R0 K4 ["LayoutOrder"]
       31 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       33 DUPTABLE                         R6 K13 [{"Anchor", "Content"}]
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R7 R7 K0 ["createElement"]
       37 GETUPVAL                         R8 4
       38 GETTABLEKS                       R8 R8 K14 ["IconButton"]
       40 DUPTABLE                         R9 K20 [{["icon"], ["size"], ["testId"] = "--filter-button", ["onActivated"]}]
       41 GETUPVAL                         R10 4
       42 GETTABLEKS                       R10 R10 K6 ["Enums"]
       44 GETTABLEKS                       R10 R10 K21 ["IconName"]
       46 GETTABLEKS                       R10 R10 K22 ["ThreeSlidersHorizontal"]
       48 SETTABLEKS                       R10 R9 K15 ["icon"]
       50 GETUPVAL                         R10 4
       51 GETTABLEKS                       R10 R10 K6 ["Enums"]
       53 GETTABLEKS                       R10 R10 K23 ["InputSize"]
       55 GETTABLEKS                       R10 R10 K24 ["XSmall"]
       57 SETTABLEKS                       R10 R9 K16 ["size"]
       59 GETTABLEKS                       R10 R2 K1 ["toggle"]
       61 SETTABLEKS                       R10 R9 K19 ["onActivated"]
       63 CALL                             R7 2 1
       64 SETTABLEKS                       R7 R6 K11 ["Anchor"]
       66 GETUPVAL                         R7 2
       67 GETTABLEKS                       R7 R7 K0 ["createElement"]
       69 GETUPVAL                         R8 5
       70 DUPTABLE                         R9 K31 [{"saveType", "onSaveTypeChanged", "isPublished", "onIsPublishedChanged", "hasNotes", "onHasNotesChanged", "LayoutOrder"}]
       71 GETTABLEKS                       R10 R0 K25 ["saveType"]
       73 SETTABLEKS                       R10 R9 K25 ["saveType"]
       75 GETTABLEKS                       R10 R0 K26 ["onSaveTypeChanged"]
       77 SETTABLEKS                       R10 R9 K26 ["onSaveTypeChanged"]
       79 GETTABLEKS                       R10 R0 K27 ["isPublished"]
       81 SETTABLEKS                       R10 R9 K27 ["isPublished"]
       83 GETTABLEKS                       R10 R0 K28 ["onIsPublishedChanged"]
       85 SETTABLEKS                       R10 R9 K28 ["onIsPublishedChanged"]
       87 GETTABLEKS                       R10 R0 K29 ["hasNotes"]
       89 SETTABLEKS                       R10 R9 K29 ["hasNotes"]
       91 GETTABLEKS                       R10 R0 K30 ["onHasNotesChanged"]
       93 SETTABLEKS                       R10 R9 K30 ["onHasNotesChanged"]
       95 MOVE                             R10 R1
       96 CALL                             R10 0 1
       97 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       99 CALL                             R7 2 1
      100 SETTABLEKS                       R7 R6 K12 ["Content"]
      102 CALL                             R3 3 -1
      103 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
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
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETTABLEKS                       R7 R2 K13 ["createNextOrder"]
       41 GETTABLEKS                       R8 R2 K14 ["useToggleState"]
       43 GETTABLEKS                       R9 R0 K15 ["Src"]
       45 GETTABLEKS                       R9 R9 K16 ["Components"]
       47 GETIMPORT                        R10 K5 [require]
       49 GETTABLEKS                       R11 R9 K17 ["Popover"]
       51 CALL                             R10 1 1
       52 GETIMPORT                        R11 K5 [require]
       54 GETTABLEKS                       R12 R0 K15 ["Src"]
       56 GETTABLEKS                       R12 R12 K18 ["Types"]
       58 CALL                             R11 1 1
       59 DUPCLOSURE                       R12 K19 [PROTO_3]
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R3
       64 DUPCLOSURE                       R13 K20 [PROTO_4]
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R12
       71 RETURN                           R13 1
