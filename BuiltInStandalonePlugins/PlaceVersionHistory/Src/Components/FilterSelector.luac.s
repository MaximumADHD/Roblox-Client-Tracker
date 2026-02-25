PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onSaveTypeChanged"]
        3 JUMPIFEQKS                       R0 K1 ["All"] ; [+3]
        5 MOVE                             R2 R0
        6 JUMP                             ; [+1]
        7 LOADNIL                          R2
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onIsPublishedChanged"]
        3 ORK                              R2 R0 K1 []
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onHasNotesChanged"]
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
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R4 R5 K3 ["useCallback"]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R0
       18 NEWTABLE                         R6 0 0
       20 CALL                             R4 2 1
       21 GETTABLEKS                       R6 R0 K4 ["isPublished"]
       23 JUMPIFNOT                        R6 ; [+3]
       24 GETTABLEKS                       R5 R0 K4 ["isPublished"]
       26 JUMP                             ; [+1]
       27 LOADB                            R5 0
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R6 R7 K3 ["useCallback"]
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          VAL R0
       33 NEWTABLE                         R8 0 0
       35 CALL                             R6 2 1
       36 GETTABLEKS                       R8 R0 K5 ["hasNotes"]
       38 JUMPIFNOT                        R8 ; [+3]
       39 GETTABLEKS                       R7 R0 K5 ["hasNotes"]
       41 JUMP                             ; [+1]
       42 LOADB                            R7 0
       43 GETUPVAL                         R9 2
       44 GETTABLEKS                       R8 R9 K3 ["useCallback"]
       46 NEWCLOSURE                       R9 P2
       47 CAPTURE                          VAL R0
       48 NEWTABLE                         R10 0 0
       50 CALL                             R8 2 1
       51 GETUPVAL                         R10 2
       52 GETTABLEKS                       R9 R10 K6 ["createElement"]
       54 GETUPVAL                         R11 3
       55 GETTABLEKS                       R10 R11 K7 ["View"]
       57 DUPTABLE                         R11 K11 [{"tag", "testId", "LayoutOrder"}]
       58 LOADK                            R12 K12 ["size-3000-0 auto-y col"]
       59 SETTABLEKS                       R12 R11 K8 ["tag"]
       61 LOADK                            R12 K13 ["--filter-list"]
       62 SETTABLEKS                       R12 R11 K9 ["testId"]
       64 GETTABLEKS                       R12 R0 K10 ["LayoutOrder"]
       66 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
       68 DUPTABLE                         R12 K17 [{"Header", "Divider", "Footer"}]
       69 GETUPVAL                         R14 2
       70 GETTABLEKS                       R13 R14 K6 ["createElement"]
       72 GETUPVAL                         R15 3
       73 GETTABLEKS                       R14 R15 K7 ["View"]
       75 DUPTABLE                         R15 K18 [{"tag", "LayoutOrder"}]
       76 LOADK                            R16 K19 ["size-0-0 auto-xy col align-x-left padding-small gap-small"]
       77 SETTABLEKS                       R16 R15 K8 ["tag"]
       79 MOVE                             R16 R1
       80 CALL                             R16 0 1
       81 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
       83 DUPTABLE                         R16 K21 [{"SaveType"}]
       84 GETUPVAL                         R18 2
       85 GETTABLEKS                       R17 R18 K6 ["createElement"]
       87 GETUPVAL                         R20 3
       88 GETTABLEKS                       R19 R20 K22 ["RadioGroup"]
       90 GETTABLEKS                       R18 R19 K23 ["Root"]
       92 DUPTABLE                         R19 K26 [{"value", "onValueChanged", "LayoutOrder"}]
       93 SETTABLEKS                       R3 R19 K24 ["value"]
       95 SETTABLEKS                       R4 R19 K25 ["onValueChanged"]
       97 MOVE                             R20 R1
       98 CALL                             R20 0 1
       99 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      101 DUPTABLE                         R20 K29 [{"Manual", "Auto", "All"}]
      102 GETUPVAL                         R22 2
      103 GETTABLEKS                       R21 R22 K6 ["createElement"]
      105 GETUPVAL                         R24 3
      106 GETTABLEKS                       R23 R24 K22 ["RadioGroup"]
      108 GETTABLEKS                       R22 R23 K30 ["Item"]
      110 DUPTABLE                         R23 K33 [{"value", "label", "size", "LayoutOrder"}]
      111 LOADK                            R24 K27 ["Manual"]
      112 SETTABLEKS                       R24 R23 K24 ["value"]
      114 LOADK                            R26 K34 ["Option"]
      115 LOADK                            R27 K35 ["ManualSaves"]
      116 NAMECALL                         R24 R2 K36 ["getText"]
      118 CALL                             R24 3 1
      119 SETTABLEKS                       R24 R23 K31 ["label"]
      121 GETUPVAL                         R27 3
      122 GETTABLEKS                       R26 R27 K37 ["Enums"]
      124 GETTABLEKS                       R25 R26 K38 ["InputSize"]
      126 GETTABLEKS                       R24 R25 K39 ["XSmall"]
      128 SETTABLEKS                       R24 R23 K32 ["size"]
      130 MOVE                             R24 R1
      131 CALL                             R24 0 1
      132 SETTABLEKS                       R24 R23 K10 ["LayoutOrder"]
      134 CALL                             R21 2 1
      135 SETTABLEKS                       R21 R20 K27 ["Manual"]
      137 GETUPVAL                         R22 2
      138 GETTABLEKS                       R21 R22 K6 ["createElement"]
      140 GETUPVAL                         R24 3
      141 GETTABLEKS                       R23 R24 K22 ["RadioGroup"]
      143 GETTABLEKS                       R22 R23 K30 ["Item"]
      145 DUPTABLE                         R23 K33 [{"value", "label", "size", "LayoutOrder"}]
      146 LOADK                            R24 K28 ["Auto"]
      147 SETTABLEKS                       R24 R23 K24 ["value"]
      149 LOADK                            R26 K34 ["Option"]
      150 LOADK                            R27 K40 ["AutoSaves"]
      151 NAMECALL                         R24 R2 K36 ["getText"]
      153 CALL                             R24 3 1
      154 SETTABLEKS                       R24 R23 K31 ["label"]
      156 GETUPVAL                         R27 3
      157 GETTABLEKS                       R26 R27 K37 ["Enums"]
      159 GETTABLEKS                       R25 R26 K38 ["InputSize"]
      161 GETTABLEKS                       R24 R25 K39 ["XSmall"]
      163 SETTABLEKS                       R24 R23 K32 ["size"]
      165 MOVE                             R24 R1
      166 CALL                             R24 0 1
      167 SETTABLEKS                       R24 R23 K10 ["LayoutOrder"]
      169 CALL                             R21 2 1
      170 SETTABLEKS                       R21 R20 K28 ["Auto"]
      172 GETUPVAL                         R22 2
      173 GETTABLEKS                       R21 R22 K6 ["createElement"]
      175 GETUPVAL                         R24 3
      176 GETTABLEKS                       R23 R24 K22 ["RadioGroup"]
      178 GETTABLEKS                       R22 R23 K30 ["Item"]
      180 DUPTABLE                         R23 K33 [{"value", "label", "size", "LayoutOrder"}]
      181 LOADK                            R24 K2 ["All"]
      182 SETTABLEKS                       R24 R23 K24 ["value"]
      184 LOADK                            R26 K34 ["Option"]
      185 LOADK                            R27 K41 ["AllSaves"]
      186 NAMECALL                         R24 R2 K36 ["getText"]
      188 CALL                             R24 3 1
      189 SETTABLEKS                       R24 R23 K31 ["label"]
      191 GETUPVAL                         R27 3
      192 GETTABLEKS                       R26 R27 K37 ["Enums"]
      194 GETTABLEKS                       R25 R26 K38 ["InputSize"]
      196 GETTABLEKS                       R24 R25 K39 ["XSmall"]
      198 SETTABLEKS                       R24 R23 K32 ["size"]
      200 MOVE                             R24 R1
      201 CALL                             R24 0 1
      202 SETTABLEKS                       R24 R23 K10 ["LayoutOrder"]
      204 CALL                             R21 2 1
      205 SETTABLEKS                       R21 R20 K2 ["All"]
      207 CALL                             R17 3 1
      208 SETTABLEKS                       R17 R16 K20 ["SaveType"]
      210 CALL                             R13 3 1
      211 SETTABLEKS                       R13 R12 K14 ["Header"]
      213 GETUPVAL                         R14 2
      214 GETTABLEKS                       R13 R14 K6 ["createElement"]
      216 GETUPVAL                         R15 3
      217 GETTABLEKS                       R14 R15 K15 ["Divider"]
      219 DUPTABLE                         R15 K42 [{"LayoutOrder"}]
      220 MOVE                             R16 R1
      221 CALL                             R16 0 1
      222 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
      224 CALL                             R13 2 1
      225 SETTABLEKS                       R13 R12 K15 ["Divider"]
      227 GETUPVAL                         R14 2
      228 GETTABLEKS                       R13 R14 K6 ["createElement"]
      230 GETUPVAL                         R15 3
      231 GETTABLEKS                       R14 R15 K7 ["View"]
      233 DUPTABLE                         R15 K18 [{"tag", "LayoutOrder"}]
      234 LOADK                            R16 K43 ["size-0-0 auto-xy col align-x-left padding-small gap-medium"]
      235 SETTABLEKS                       R16 R15 K8 ["tag"]
      237 MOVE                             R16 R1
      238 CALL                             R16 0 1
      239 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
      241 DUPTABLE                         R16 K46 [{"PublishedCheckbox", "HasNotesCheckbox"}]
      242 GETUPVAL                         R18 2
      243 GETTABLEKS                       R17 R18 K6 ["createElement"]
      245 GETUPVAL                         R19 3
      246 GETTABLEKS                       R18 R19 K47 ["Checkbox"]
      248 DUPTABLE                         R19 K50 [{"label", "isChecked", "onActivated", "size", "LayoutOrder"}]
      249 LOADK                            R22 K34 ["Option"]
      250 LOADK                            R23 K51 ["Published"]
      251 NAMECALL                         R20 R2 K36 ["getText"]
      253 CALL                             R20 3 1
      254 SETTABLEKS                       R20 R19 K31 ["label"]
      256 SETTABLEKS                       R5 R19 K48 ["isChecked"]
      258 SETTABLEKS                       R6 R19 K49 ["onActivated"]
      260 GETUPVAL                         R23 3
      261 GETTABLEKS                       R22 R23 K37 ["Enums"]
      263 GETTABLEKS                       R21 R22 K38 ["InputSize"]
      265 GETTABLEKS                       R20 R21 K39 ["XSmall"]
      267 SETTABLEKS                       R20 R19 K32 ["size"]
      269 MOVE                             R20 R1
      270 CALL                             R20 0 1
      271 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      273 CALL                             R17 2 1
      274 SETTABLEKS                       R17 R16 K44 ["PublishedCheckbox"]
      276 GETUPVAL                         R18 2
      277 GETTABLEKS                       R17 R18 K6 ["createElement"]
      279 GETUPVAL                         R19 3
      280 GETTABLEKS                       R18 R19 K47 ["Checkbox"]
      282 DUPTABLE                         R19 K50 [{"label", "isChecked", "onActivated", "size", "LayoutOrder"}]
      283 LOADK                            R22 K34 ["Option"]
      284 LOADK                            R23 K52 ["HasNotes"]
      285 NAMECALL                         R20 R2 K36 ["getText"]
      287 CALL                             R20 3 1
      288 SETTABLEKS                       R20 R19 K31 ["label"]
      290 SETTABLEKS                       R7 R19 K48 ["isChecked"]
      292 SETTABLEKS                       R8 R19 K49 ["onActivated"]
      294 GETUPVAL                         R23 3
      295 GETTABLEKS                       R22 R23 K37 ["Enums"]
      297 GETTABLEKS                       R21 R22 K38 ["InputSize"]
      299 GETTABLEKS                       R20 R21 K39 ["XSmall"]
      301 SETTABLEKS                       R20 R19 K32 ["size"]
      303 MOVE                             R20 R1
      304 CALL                             R20 0 1
      305 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      307 CALL                             R17 2 1
      308 SETTABLEKS                       R17 R16 K45 ["HasNotesCheckbox"]
      310 CALL                             R13 3 1
      311 SETTABLEKS                       R13 R12 K16 ["Footer"]
      313 CALL                             R9 3 -1
      314 RETURN                           R9 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["createElement"]
        7 GETUPVAL                         R4 3
        8 DUPTABLE                         R5 K5 [{"toggle", "side", "align", "LayoutOrder"}]
        9 SETTABLEKS                       R2 R5 K1 ["toggle"]
       11 GETUPVAL                         R9 4
       12 GETTABLEKS                       R8 R9 K6 ["Enums"]
       14 GETTABLEKS                       R7 R8 K7 ["PopoverSide"]
       16 GETTABLEKS                       R6 R7 K8 ["Bottom"]
       18 SETTABLEKS                       R6 R5 K2 ["side"]
       20 GETUPVAL                         R9 4
       21 GETTABLEKS                       R8 R9 K6 ["Enums"]
       23 GETTABLEKS                       R7 R8 K9 ["PopoverAlign"]
       25 GETTABLEKS                       R6 R7 K10 ["End"]
       27 SETTABLEKS                       R6 R5 K3 ["align"]
       29 GETTABLEKS                       R6 R0 K4 ["LayoutOrder"]
       31 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       33 DUPTABLE                         R6 K13 [{"Anchor", "Content"}]
       34 GETUPVAL                         R8 2
       35 GETTABLEKS                       R7 R8 K0 ["createElement"]
       37 GETUPVAL                         R9 4
       38 GETTABLEKS                       R8 R9 K14 ["IconButton"]
       40 DUPTABLE                         R9 K19 [{"icon", "size", "testId", "onActivated"}]
       41 GETUPVAL                         R13 4
       42 GETTABLEKS                       R12 R13 K6 ["Enums"]
       44 GETTABLEKS                       R11 R12 K20 ["IconName"]
       46 GETTABLEKS                       R10 R11 K21 ["ThreeSlidersHorizontal"]
       48 SETTABLEKS                       R10 R9 K15 ["icon"]
       50 GETUPVAL                         R13 4
       51 GETTABLEKS                       R12 R13 K6 ["Enums"]
       53 GETTABLEKS                       R11 R12 K22 ["InputSize"]
       55 GETTABLEKS                       R10 R11 K23 ["XSmall"]
       57 SETTABLEKS                       R10 R9 K16 ["size"]
       59 LOADK                            R10 K24 ["--filter-button"]
       60 SETTABLEKS                       R10 R9 K17 ["testId"]
       62 GETTABLEKS                       R10 R2 K1 ["toggle"]
       64 SETTABLEKS                       R10 R9 K18 ["onActivated"]
       66 CALL                             R7 2 1
       67 SETTABLEKS                       R7 R6 K11 ["Anchor"]
       69 GETUPVAL                         R8 2
       70 GETTABLEKS                       R7 R8 K0 ["createElement"]
       72 GETUPVAL                         R8 5
       73 DUPTABLE                         R9 K31 [{"saveType", "onSaveTypeChanged", "isPublished", "onIsPublishedChanged", "hasNotes", "onHasNotesChanged", "LayoutOrder"}]
       74 GETTABLEKS                       R10 R0 K25 ["saveType"]
       76 SETTABLEKS                       R10 R9 K25 ["saveType"]
       78 GETTABLEKS                       R10 R0 K26 ["onSaveTypeChanged"]
       80 SETTABLEKS                       R10 R9 K26 ["onSaveTypeChanged"]
       82 GETTABLEKS                       R10 R0 K27 ["isPublished"]
       84 SETTABLEKS                       R10 R9 K27 ["isPublished"]
       86 GETTABLEKS                       R10 R0 K28 ["onIsPublishedChanged"]
       88 SETTABLEKS                       R10 R9 K28 ["onIsPublishedChanged"]
       90 GETTABLEKS                       R10 R0 K29 ["hasNotes"]
       92 SETTABLEKS                       R10 R9 K29 ["hasNotes"]
       94 GETTABLEKS                       R10 R0 K30 ["onHasNotesChanged"]
       96 SETTABLEKS                       R10 R9 K30 ["onHasNotesChanged"]
       98 MOVE                             R10 R1
       99 CALL                             R10 0 1
      100 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
      102 CALL                             R7 2 1
      103 SETTABLEKS                       R7 R6 K12 ["Content"]
      105 CALL                             R3 3 -1
      106 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETTABLEKS                       R7 R2 K13 ["createNextOrder"]
       41 GETTABLEKS                       R8 R2 K14 ["useToggleState"]
       43 GETTABLEKS                       R10 R0 K15 ["Src"]
       45 GETTABLEKS                       R9 R10 K16 ["Components"]
       47 GETIMPORT                        R10 K5 [require]
       49 GETTABLEKS                       R11 R9 K17 ["Popover"]
       51 CALL                             R10 1 1
       52 GETIMPORT                        R11 K5 [require]
       54 GETTABLEKS                       R13 R0 K15 ["Src"]
       56 GETTABLEKS                       R12 R13 K18 ["Types"]
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
