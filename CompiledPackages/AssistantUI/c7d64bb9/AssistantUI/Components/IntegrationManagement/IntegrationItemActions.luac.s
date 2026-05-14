PROTO_0:
        0 DUPTABLE                         R0 K3 [{"Edit", "Delete", "LogOut"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["SettingsDialog"]
        3 LOADK                            R4 K0 ["Edit"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Edit"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K6 ["Settings"]
       11 LOADK                            R4 K1 ["Delete"]
       12 NAMECALL                         R1 R1 K5 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Delete"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K7 ["IntegrationManagement"]
       19 LOADK                            R4 K2 ["LogOut"]
       20 NAMECALL                         R1 R1 K5 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["LogOut"]
       25 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["onEdit"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["onDelete"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["onLogOut"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K0 ["onLogOut"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["locale"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K3 ["useState"]
       16 LOADB                            R3 0
       17 CALL                             R2 1 2
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R2
       24 NEWTABLE                         R6 0 2
       26 MOVE                             R7 R3
       27 MOVE                             R8 R2
       28 SETLIST                          R6 R7 2 [1]
       30 CALL                             R4 2 1
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       34 NEWCLOSURE                       R6 P2
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R0
       37 NEWTABLE                         R7 0 1
       39 GETTABLEKS                       R8 R0 K5 ["onEdit"]
       41 SETLIST                          R7 R8 1 [1]
       43 CALL                             R5 2 1
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       47 NEWCLOSURE                       R7 P3
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R0
       50 NEWTABLE                         R8 0 1
       52 GETTABLEKS                       R9 R0 K6 ["onDelete"]
       54 SETLIST                          R8 R9 1 [1]
       56 CALL                             R6 2 1
       57 GETUPVAL                         R7 0
       58 GETTABLEKS                       R7 R7 K4 ["useCallback"]
       60 NEWCLOSURE                       R8 P4
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R0
       63 NEWTABLE                         R9 0 1
       65 GETTABLEKS                       R10 R0 K7 ["onLogOut"]
       67 SETLIST                          R9 R10 1 [1]
       69 CALL                             R7 2 1
       70 GETUPVAL                         R8 2
       71 CALL                             R8 0 1
       72 GETUPVAL                         R9 3
       73 GETUPVAL                         R10 4
       74 DUPTABLE                         R11 K10 [{"tag", "LayoutOrder"}]
       75 LOADK                            R12 K11 ["row auto-xy gap-large padding-small align-y-center"]
       76 SETTABLEKS                       R12 R11 K8 ["tag"]
       78 GETTABLEKS                       R12 R0 K9 ["LayoutOrder"]
       80 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
       82 DUPTABLE                         R12 K14 [{"ToggleButton", "Overflow"}]
       83 GETUPVAL                         R13 3
       84 GETUPVAL                         R14 5
       85 DUPTABLE                         R15 K20 [{"testId", "LayoutOrder", "label", "isChecked", "onActivated", "size"}]
       86 GETUPVAL                         R16 6
       87 GETTABLEKS                       R16 R16 K21 ["IntegrationItem"]
       89 GETTABLEKS                       R16 R16 K22 ["Actions"]
       91 GETTABLEKS                       R16 R16 K23 ["Toggle"]
       93 SETTABLEKS                       R16 R15 K15 ["testId"]
       95 MOVE                             R16 R8
       96 CALL                             R16 0 1
       97 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
       99 LOADK                            R16 K24 [""]
      100 SETTABLEKS                       R16 R15 K16 ["label"]
      102 GETTABLEKS                       R16 R0 K17 ["isChecked"]
      104 SETTABLEKS                       R16 R15 K17 ["isChecked"]
      106 GETTABLEKS                       R16 R0 K25 ["onStatusChange"]
      108 SETTABLEKS                       R16 R15 K18 ["onActivated"]
      110 GETUPVAL                         R16 7
      111 GETTABLEKS                       R16 R16 K26 ["XSmall"]
      113 SETTABLEKS                       R16 R15 K19 ["size"]
      115 CALL                             R13 2 1
      116 SETTABLEKS                       R13 R12 K12 ["ToggleButton"]
      118 GETUPVAL                         R13 3
      119 GETUPVAL                         R14 4
      120 DUPTABLE                         R15 K10 [{"tag", "LayoutOrder"}]
      121 LOADK                            R16 K27 ["auto-xy"]
      122 SETTABLEKS                       R16 R15 K8 ["tag"]
      124 MOVE                             R16 R8
      125 CALL                             R16 0 1
      126 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
      128 DUPTABLE                         R16 K29 [{"OverflowContent"}]
      129 GETUPVAL                         R17 3
      130 GETUPVAL                         R18 8
      131 GETTABLEKS                       R18 R18 K30 ["Root"]
      133 DUPTABLE                         R19 K32 [{"isOpen"}]
      134 SETTABLEKS                       R2 R19 K31 ["isOpen"]
      136 DUPTABLE                         R20 K35 [{"Anchor", "Content"}]
      137 GETUPVAL                         R21 3
      138 GETUPVAL                         R22 8
      139 GETTABLEKS                       R22 R22 K33 ["Anchor"]
      141 LOADNIL                          R23
      142 DUPTABLE                         R24 K37 [{"Button"}]
      143 GETUPVAL                         R25 3
      144 GETUPVAL                         R26 9
      145 DUPTABLE                         R27 K41 [{"testId", "icon", "tag", "iconRotation", "iconTag", "LayoutOrder", "onActivated"}]
      146 GETUPVAL                         R28 6
      147 GETTABLEKS                       R28 R28 K21 ["IntegrationItem"]
      149 GETTABLEKS                       R28 R28 K22 ["Actions"]
      151 GETTABLEKS                       R28 R28 K42 ["OverflowButton"]
      153 SETTABLEKS                       R28 R27 K15 ["testId"]
      155 LOADK                            R28 K43 ["icons/actions/overflow"]
      156 SETTABLEKS                       R28 R27 K38 ["icon"]
      158 LOADK                            R28 K44 ["size-600-600 align-x-center align-y-center"]
      159 SETTABLEKS                       R28 R27 K8 ["tag"]
      161 LOADN                            R28 90
      162 SETTABLEKS                       R28 R27 K39 ["iconRotation"]
      164 LOADK                            R28 K45 ["size-600-600 content-emphasis"]
      165 SETTABLEKS                       R28 R27 K40 ["iconTag"]
      167 MOVE                             R28 R8
      168 CALL                             R28 0 1
      169 SETTABLEKS                       R28 R27 K9 ["LayoutOrder"]
      171 SETTABLEKS                       R4 R27 K18 ["onActivated"]
      173 CALL                             R25 2 1
      174 SETTABLEKS                       R25 R24 K36 ["Button"]
      176 CALL                             R21 3 1
      177 SETTABLEKS                       R21 R20 K33 ["Anchor"]
      179 GETUPVAL                         R21 3
      180 GETUPVAL                         R22 8
      181 GETTABLEKS                       R22 R22 K34 ["Content"]
      183 DUPTABLE                         R23 K49 [{"side", "hasArrow", "onPressedOutside"}]
      184 GETUPVAL                         R24 10
      185 GETTABLEKS                       R24 R24 K50 ["Enums"]
      187 GETTABLEKS                       R24 R24 K51 ["PopoverSide"]
      189 GETTABLEKS                       R24 R24 K52 ["Left"]
      191 SETTABLEKS                       R24 R23 K46 ["side"]
      193 LOADB                            R24 0
      194 SETTABLEKS                       R24 R23 K47 ["hasArrow"]
      196 SETTABLEKS                       R4 R23 K48 ["onPressedOutside"]
      198 DUPTABLE                         R24 K53 [{"Content"}]
      199 GETUPVAL                         R25 3
      200 GETUPVAL                         R26 4
      201 DUPTABLE                         R27 K54 [{"LayoutOrder", "testId", "tag"}]
      202 MOVE                             R28 R8
      203 CALL                             R28 0 1
      204 SETTABLEKS                       R28 R27 K9 ["LayoutOrder"]
      206 GETUPVAL                         R28 6
      207 GETTABLEKS                       R28 R28 K21 ["IntegrationItem"]
      209 GETTABLEKS                       R28 R28 K22 ["Actions"]
      211 GETTABLEKS                       R28 R28 K28 ["OverflowContent"]
      213 SETTABLEKS                       R28 R27 K15 ["testId"]
      215 LOADK                            R28 K55 ["col size-full-0 auto-y gap-small padding-small"]
      216 SETTABLEKS                       R28 R27 K8 ["tag"]
      218 DUPTABLE                         R28 K59 [{"LogOutButton", "EditButton", "DeleteButton"}]
      219 GETTABLEKS                       R30 R0 K7 ["onLogOut"]
      221 JUMPIFNOT                        R30 ; [+25]
      222 GETUPVAL                         R29 3
      223 GETUPVAL                         R30 11
      224 DUPTABLE                         R31 K62 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      225 MOVE                             R32 R8
      226 CALL                             R32 0 1
      227 SETTABLEKS                       R32 R31 K9 ["LayoutOrder"]
      229 GETTABLEKS                       R32 R1 K63 ["LogOut"]
      231 SETTABLEKS                       R32 R31 K60 ["text"]
      233 GETUPVAL                         R32 12
      234 GETTABLEKS                       R32 R32 K26 ["XSmall"]
      236 SETTABLEKS                       R32 R31 K19 ["size"]
      238 GETUPVAL                         R32 13
      239 GETTABLEKS                       R32 R32 K64 ["Text"]
      241 SETTABLEKS                       R32 R31 K61 ["variant"]
      243 SETTABLEKS                       R7 R31 K18 ["onActivated"]
      245 CALL                             R29 2 1
      246 JUMP                             ; [+1]
      247 LOADNIL                          R29
      248 SETTABLEKS                       R29 R28 K56 ["LogOutButton"]
      250 GETUPVAL                         R29 3
      251 GETUPVAL                         R30 11
      252 DUPTABLE                         R31 K62 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      253 MOVE                             R32 R8
      254 CALL                             R32 0 1
      255 SETTABLEKS                       R32 R31 K9 ["LayoutOrder"]
      257 GETTABLEKS                       R32 R1 K65 ["Edit"]
      259 SETTABLEKS                       R32 R31 K60 ["text"]
      261 GETUPVAL                         R32 12
      262 GETTABLEKS                       R32 R32 K26 ["XSmall"]
      264 SETTABLEKS                       R32 R31 K19 ["size"]
      266 GETUPVAL                         R32 13
      267 GETTABLEKS                       R32 R32 K64 ["Text"]
      269 SETTABLEKS                       R32 R31 K61 ["variant"]
      271 SETTABLEKS                       R5 R31 K18 ["onActivated"]
      273 CALL                             R29 2 1
      274 SETTABLEKS                       R29 R28 K57 ["EditButton"]
      276 GETUPVAL                         R29 3
      277 GETUPVAL                         R30 11
      278 DUPTABLE                         R31 K62 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      279 MOVE                             R32 R8
      280 CALL                             R32 0 1
      281 SETTABLEKS                       R32 R31 K9 ["LayoutOrder"]
      283 GETTABLEKS                       R32 R1 K66 ["Delete"]
      285 SETTABLEKS                       R32 R31 K60 ["text"]
      287 GETUPVAL                         R32 12
      288 GETTABLEKS                       R32 R32 K26 ["XSmall"]
      290 SETTABLEKS                       R32 R31 K19 ["size"]
      292 GETUPVAL                         R32 13
      293 GETTABLEKS                       R32 R32 K64 ["Text"]
      295 SETTABLEKS                       R32 R31 K61 ["variant"]
      297 SETTABLEKS                       R6 R31 K18 ["onActivated"]
      299 CALL                             R29 2 1
      300 SETTABLEKS                       R29 R28 K58 ["DeleteButton"]
      302 CALL                             R25 3 1
      303 SETTABLEKS                       R25 R24 K34 ["Content"]
      305 CALL                             R21 3 1
      306 SETTABLEKS                       R21 R20 K34 ["Content"]
      308 CALL                             R17 3 1
      309 SETTABLEKS                       R17 R16 K28 ["OverflowContent"]
      311 CALL                             R13 3 1
      312 SETTABLEKS                       R13 R12 K13 ["Overflow"]
      314 CALL                             R9 3 -1
      315 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CustomIconButton"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Util"]
       39 GETTABLEKS                       R6 R6 K13 ["TestIds"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Resources"]
       46 GETTABLEKS                       R7 R7 K15 ["Localization"]
       48 GETTABLEKS                       R7 R7 K16 ["Translator"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R2 K17 ["View"]
       53 GETTABLEKS                       R8 R2 K18 ["Enums"]
       55 GETTABLEKS                       R8 R8 K19 ["InputSize"]
       57 GETTABLEKS                       R9 R2 K20 ["Toggle"]
       59 GETTABLEKS                       R10 R2 K21 ["Button"]
       61 GETTABLEKS                       R11 R2 K18 ["Enums"]
       63 GETTABLEKS                       R11 R11 K22 ["ButtonSize"]
       65 GETTABLEKS                       R12 R2 K18 ["Enums"]
       67 GETTABLEKS                       R12 R12 K23 ["ButtonVariant"]
       69 GETTABLEKS                       R13 R2 K24 ["Popover"]
       71 GETTABLEKS                       R14 R4 K25 ["createNextOrder"]
       73 GETTABLEKS                       R15 R3 K26 ["createElement"]
       75 DUPCLOSURE                       R16 K27 [PROTO_5]
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R14
       79 CAPTURE                          VAL R15
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R13
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R12
       90 GETTABLEKS                       R17 R3 K28 ["memo"]
       92 MOVE                             R18 R16
       93 CALL                             R17 1 -1
       94 RETURN                           R17 -1
