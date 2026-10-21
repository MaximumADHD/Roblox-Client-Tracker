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
       74 DUPTABLE                         R11 K11 [{["tag"] = "row align-y-center gap-large auto-xy padding-small", ["LayoutOrder"]}]
       75 GETTABLEKS                       R12 R0 K10 ["LayoutOrder"]
       77 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
       79 DUPTABLE                         R12 K14 [{"ToggleButton", "Overflow"}]
       80 GETUPVAL                         R13 3
       81 GETUPVAL                         R14 5
       82 DUPTABLE                         R15 K21 [{["testId"], ["LayoutOrder"], ["label"] = "", ["isChecked"], ["onActivated"], ["size"]}]
       83 GETUPVAL                         R16 6
       84 GETTABLEKS                       R16 R16 K22 ["IntegrationItem"]
       86 GETTABLEKS                       R16 R16 K23 ["Actions"]
       88 GETTABLEKS                       R16 R16 K24 ["Toggle"]
       90 SETTABLEKS                       R16 R15 K15 ["testId"]
       92 MOVE                             R16 R8
       93 CALL                             R16 0 1
       94 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
       96 GETTABLEKS                       R16 R0 K18 ["isChecked"]
       98 SETTABLEKS                       R16 R15 K18 ["isChecked"]
      100 GETTABLEKS                       R16 R0 K25 ["onStatusChange"]
      102 SETTABLEKS                       R16 R15 K19 ["onActivated"]
      104 GETUPVAL                         R16 7
      105 GETTABLEKS                       R16 R16 K26 ["XSmall"]
      107 SETTABLEKS                       R16 R15 K20 ["size"]
      109 CALL                             R13 2 1
      110 SETTABLEKS                       R13 R12 K12 ["ToggleButton"]
      112 GETUPVAL                         R13 3
      113 GETUPVAL                         R14 4
      114 DUPTABLE                         R15 K28 [{["tag"] = "auto-xy", ["LayoutOrder"]}]
      115 MOVE                             R16 R8
      116 CALL                             R16 0 1
      117 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
      119 DUPTABLE                         R16 K30 [{"OverflowContent"}]
      120 GETUPVAL                         R17 3
      121 GETUPVAL                         R18 8
      122 GETTABLEKS                       R18 R18 K31 ["Root"]
      124 DUPTABLE                         R19 K33 [{"isOpen"}]
      125 SETTABLEKS                       R2 R19 K32 ["isOpen"]
      127 DUPTABLE                         R20 K36 [{"Anchor", "Content"}]
      128 GETUPVAL                         R21 3
      129 GETUPVAL                         R22 8
      130 GETTABLEKS                       R22 R22 K34 ["Anchor"]
      132 LOADNIL                          R23
      133 DUPTABLE                         R24 K38 [{"Button"}]
      134 GETUPVAL                         R25 3
      135 GETUPVAL                         R26 9
      136 DUPTABLE                         R27 K41 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      137 GETUPVAL                         R28 10
      138 GETTABLEKS                       R28 R28 K42 ["Enums"]
      140 GETTABLEKS                       R28 R28 K43 ["IconName"]
      142 GETTABLEKS                       R28 R28 K44 ["ThreeDotsVertical"]
      144 SETTABLEKS                       R28 R27 K39 ["icon"]
      146 GETUPVAL                         R28 10
      147 GETTABLEKS                       R28 R28 K42 ["Enums"]
      149 GETTABLEKS                       R28 R28 K45 ["InputSize"]
      151 GETTABLEKS                       R28 R28 K26 ["XSmall"]
      153 SETTABLEKS                       R28 R27 K20 ["size"]
      155 GETUPVAL                         R28 10
      156 GETTABLEKS                       R28 R28 K42 ["Enums"]
      158 GETTABLEKS                       R28 R28 K46 ["ButtonVariant"]
      160 GETTABLEKS                       R28 R28 K47 ["Utility"]
      162 SETTABLEKS                       R28 R27 K40 ["variant"]
      164 SETTABLEKS                       R4 R27 K19 ["onActivated"]
      166 MOVE                             R28 R8
      167 CALL                             R28 0 1
      168 SETTABLEKS                       R28 R27 K10 ["LayoutOrder"]
      170 GETUPVAL                         R28 6
      171 GETTABLEKS                       R28 R28 K22 ["IntegrationItem"]
      173 GETTABLEKS                       R28 R28 K23 ["Actions"]
      175 GETTABLEKS                       R28 R28 K48 ["OverflowButton"]
      177 SETTABLEKS                       R28 R27 K15 ["testId"]
      179 CALL                             R25 2 1
      180 SETTABLEKS                       R25 R24 K37 ["Button"]
      182 CALL                             R21 3 1
      183 SETTABLEKS                       R21 R20 K34 ["Anchor"]
      185 GETUPVAL                         R21 3
      186 GETUPVAL                         R22 8
      187 GETTABLEKS                       R22 R22 K35 ["Content"]
      189 DUPTABLE                         R23 K53 [{["side"], ["hasArrow"] = False, ["onPressedOutside"]}]
      190 GETUPVAL                         R24 10
      191 GETTABLEKS                       R24 R24 K42 ["Enums"]
      193 GETTABLEKS                       R24 R24 K54 ["PopoverSide"]
      195 GETTABLEKS                       R24 R24 K55 ["Left"]
      197 SETTABLEKS                       R24 R23 K49 ["side"]
      199 SETTABLEKS                       R4 R23 K52 ["onPressedOutside"]
      201 DUPTABLE                         R24 K56 [{"Content"}]
      202 GETUPVAL                         R25 3
      203 GETUPVAL                         R26 4
      204 DUPTABLE                         R27 K58 [{["LayoutOrder"], ["testId"], ["tag"] = "col gap-small size-full-0 auto-y padding-small"}]
      205 MOVE                             R28 R8
      206 CALL                             R28 0 1
      207 SETTABLEKS                       R28 R27 K10 ["LayoutOrder"]
      209 GETUPVAL                         R28 6
      210 GETTABLEKS                       R28 R28 K22 ["IntegrationItem"]
      212 GETTABLEKS                       R28 R28 K23 ["Actions"]
      214 GETTABLEKS                       R28 R28 K29 ["OverflowContent"]
      216 SETTABLEKS                       R28 R27 K15 ["testId"]
      218 DUPTABLE                         R28 K62 [{"LogOutButton", "EditButton", "DeleteButton"}]
      219 GETTABLEKS                       R30 R0 K7 ["onLogOut"]
      221 JUMPIFNOT                        R30 ; [+25]
      222 GETUPVAL                         R29 3
      223 GETUPVAL                         R30 11
      224 DUPTABLE                         R31 K64 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      225 MOVE                             R32 R8
      226 CALL                             R32 0 1
      227 SETTABLEKS                       R32 R31 K10 ["LayoutOrder"]
      229 GETTABLEKS                       R32 R1 K65 ["LogOut"]
      231 SETTABLEKS                       R32 R31 K63 ["text"]
      233 GETUPVAL                         R32 12
      234 GETTABLEKS                       R32 R32 K26 ["XSmall"]
      236 SETTABLEKS                       R32 R31 K20 ["size"]
      238 GETUPVAL                         R32 13
      239 GETTABLEKS                       R32 R32 K66 ["Text"]
      241 SETTABLEKS                       R32 R31 K40 ["variant"]
      243 SETTABLEKS                       R7 R31 K19 ["onActivated"]
      245 CALL                             R29 2 1
      246 JUMP                             ; [+1]
      247 LOADNIL                          R29
      248 SETTABLEKS                       R29 R28 K59 ["LogOutButton"]
      250 GETUPVAL                         R29 3
      251 GETUPVAL                         R30 11
      252 DUPTABLE                         R31 K64 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      253 MOVE                             R32 R8
      254 CALL                             R32 0 1
      255 SETTABLEKS                       R32 R31 K10 ["LayoutOrder"]
      257 GETTABLEKS                       R32 R1 K67 ["Edit"]
      259 SETTABLEKS                       R32 R31 K63 ["text"]
      261 GETUPVAL                         R32 12
      262 GETTABLEKS                       R32 R32 K26 ["XSmall"]
      264 SETTABLEKS                       R32 R31 K20 ["size"]
      266 GETUPVAL                         R32 13
      267 GETTABLEKS                       R32 R32 K66 ["Text"]
      269 SETTABLEKS                       R32 R31 K40 ["variant"]
      271 SETTABLEKS                       R5 R31 K19 ["onActivated"]
      273 CALL                             R29 2 1
      274 SETTABLEKS                       R29 R28 K60 ["EditButton"]
      276 GETUPVAL                         R29 3
      277 GETUPVAL                         R30 11
      278 DUPTABLE                         R31 K64 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      279 MOVE                             R32 R8
      280 CALL                             R32 0 1
      281 SETTABLEKS                       R32 R31 K10 ["LayoutOrder"]
      283 GETTABLEKS                       R32 R1 K68 ["Delete"]
      285 SETTABLEKS                       R32 R31 K63 ["text"]
      287 GETUPVAL                         R32 12
      288 GETTABLEKS                       R32 R32 K26 ["XSmall"]
      290 SETTABLEKS                       R32 R31 K20 ["size"]
      292 GETUPVAL                         R32 13
      293 GETTABLEKS                       R32 R32 K66 ["Text"]
      295 SETTABLEKS                       R32 R31 K40 ["variant"]
      297 SETTABLEKS                       R6 R31 K19 ["onActivated"]
      299 CALL                             R29 2 1
      300 SETTABLEKS                       R29 R28 K61 ["DeleteButton"]
      302 CALL                             R25 3 1
      303 SETTABLEKS                       R25 R24 K35 ["Content"]
      305 CALL                             R21 3 1
      306 SETTABLEKS                       R21 R20 K35 ["Content"]
      308 CALL                             R17 3 1
      309 SETTABLEKS                       R17 R16 K29 ["OverflowContent"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Util"]
       32 GETTABLEKS                       R5 R5 K11 ["TestIds"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Resources"]
       39 GETTABLEKS                       R6 R6 K13 ["Localization"]
       41 GETTABLEKS                       R6 R6 K14 ["Translator"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R1 K15 ["Button"]
       46 GETTABLEKS                       R7 R1 K16 ["IconButton"]
       48 GETTABLEKS                       R8 R1 K17 ["Popover"]
       50 GETTABLEKS                       R9 R1 K18 ["Toggle"]
       52 GETTABLEKS                       R10 R1 K19 ["View"]
       54 GETTABLEKS                       R11 R1 K20 ["Enums"]
       56 GETTABLEKS                       R11 R11 K21 ["ButtonSize"]
       58 GETTABLEKS                       R12 R1 K20 ["Enums"]
       60 GETTABLEKS                       R12 R12 K22 ["ButtonVariant"]
       62 GETTABLEKS                       R13 R1 K20 ["Enums"]
       64 GETTABLEKS                       R13 R13 K23 ["InputSize"]
       66 GETTABLEKS                       R14 R3 K24 ["createNextOrder"]
       68 GETTABLEKS                       R15 R2 K25 ["createElement"]
       70 DUPCLOSURE                       R16 K26 [PROTO_5]
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R14
       74 CAPTURE                          VAL R15
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R13
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R12
       85 GETTABLEKS                       R17 R2 K27 ["memo"]
       87 MOVE                             R18 R16
       88 CALL                             R17 1 -1
       89 RETURN                           R17 -1
