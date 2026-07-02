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
      134 GETUPVAL                         R26 9
      135 CALL                             R26 0 1
      136 JUMPIFNOT                        R26 ; [+47]
      137 GETUPVAL                         R25 3
      138 GETUPVAL                         R26 10
      139 DUPTABLE                         R27 K41 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      140 GETUPVAL                         R28 11
      141 GETTABLEKS                       R28 R28 K42 ["Enums"]
      143 GETTABLEKS                       R28 R28 K43 ["IconName"]
      145 GETTABLEKS                       R28 R28 K44 ["ThreeDotsVertical"]
      147 SETTABLEKS                       R28 R27 K39 ["icon"]
      149 GETUPVAL                         R28 11
      150 GETTABLEKS                       R28 R28 K42 ["Enums"]
      152 GETTABLEKS                       R28 R28 K45 ["InputSize"]
      154 GETTABLEKS                       R28 R28 K26 ["XSmall"]
      156 SETTABLEKS                       R28 R27 K20 ["size"]
      158 GETUPVAL                         R28 11
      159 GETTABLEKS                       R28 R28 K42 ["Enums"]
      161 GETTABLEKS                       R28 R28 K46 ["ButtonVariant"]
      163 GETTABLEKS                       R28 R28 K47 ["Utility"]
      165 SETTABLEKS                       R28 R27 K40 ["variant"]
      167 SETTABLEKS                       R4 R27 K19 ["onActivated"]
      169 MOVE                             R28 R8
      170 CALL                             R28 0 1
      171 SETTABLEKS                       R28 R27 K10 ["LayoutOrder"]
      173 GETUPVAL                         R28 6
      174 GETTABLEKS                       R28 R28 K22 ["IntegrationItem"]
      176 GETTABLEKS                       R28 R28 K23 ["Actions"]
      178 GETTABLEKS                       R28 R28 K48 ["OverflowButton"]
      180 SETTABLEKS                       R28 R27 K15 ["testId"]
      182 CALL                             R25 2 1
      183 JUMP                             ; [+19]
      184 GETUPVAL                         R25 3
      185 GETUPVAL                         R26 12
      186 DUPTABLE                         R27 K55 [{["testId"], ["icon"] = "icons/actions/overflow", ["tag"] = "align-x-center align-y-center size-600-600", ["iconRotation"] = 90, ["iconTag"] = "size-600-600 content-emphasis", ["LayoutOrder"], ["onActivated"]}]
      187 GETUPVAL                         R28 6
      188 GETTABLEKS                       R28 R28 K22 ["IntegrationItem"]
      190 GETTABLEKS                       R28 R28 K23 ["Actions"]
      192 GETTABLEKS                       R28 R28 K48 ["OverflowButton"]
      194 SETTABLEKS                       R28 R27 K15 ["testId"]
      196 MOVE                             R28 R8
      197 CALL                             R28 0 1
      198 SETTABLEKS                       R28 R27 K10 ["LayoutOrder"]
      200 SETTABLEKS                       R4 R27 K19 ["onActivated"]
      202 CALL                             R25 2 1
      203 SETTABLEKS                       R25 R24 K37 ["Button"]
      205 CALL                             R21 3 1
      206 SETTABLEKS                       R21 R20 K34 ["Anchor"]
      208 GETUPVAL                         R21 3
      209 GETUPVAL                         R22 8
      210 GETTABLEKS                       R22 R22 K35 ["Content"]
      212 DUPTABLE                         R23 K60 [{["side"], ["hasArrow"] = False, ["onPressedOutside"]}]
      213 GETUPVAL                         R24 11
      214 GETTABLEKS                       R24 R24 K42 ["Enums"]
      216 GETTABLEKS                       R24 R24 K61 ["PopoverSide"]
      218 GETTABLEKS                       R24 R24 K62 ["Left"]
      220 SETTABLEKS                       R24 R23 K56 ["side"]
      222 SETTABLEKS                       R4 R23 K59 ["onPressedOutside"]
      224 DUPTABLE                         R24 K63 [{"Content"}]
      225 GETUPVAL                         R25 3
      226 GETUPVAL                         R26 4
      227 DUPTABLE                         R27 K65 [{["LayoutOrder"], ["testId"], ["tag"] = "col gap-small size-full-0 auto-y padding-small"}]
      228 MOVE                             R28 R8
      229 CALL                             R28 0 1
      230 SETTABLEKS                       R28 R27 K10 ["LayoutOrder"]
      232 GETUPVAL                         R28 6
      233 GETTABLEKS                       R28 R28 K22 ["IntegrationItem"]
      235 GETTABLEKS                       R28 R28 K23 ["Actions"]
      237 GETTABLEKS                       R28 R28 K29 ["OverflowContent"]
      239 SETTABLEKS                       R28 R27 K15 ["testId"]
      241 DUPTABLE                         R28 K69 [{"LogOutButton", "EditButton", "DeleteButton"}]
      242 GETTABLEKS                       R30 R0 K7 ["onLogOut"]
      244 JUMPIFNOT                        R30 ; [+25]
      245 GETUPVAL                         R29 3
      246 GETUPVAL                         R30 13
      247 DUPTABLE                         R31 K71 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      248 MOVE                             R32 R8
      249 CALL                             R32 0 1
      250 SETTABLEKS                       R32 R31 K10 ["LayoutOrder"]
      252 GETTABLEKS                       R32 R1 K72 ["LogOut"]
      254 SETTABLEKS                       R32 R31 K70 ["text"]
      256 GETUPVAL                         R32 14
      257 GETTABLEKS                       R32 R32 K26 ["XSmall"]
      259 SETTABLEKS                       R32 R31 K20 ["size"]
      261 GETUPVAL                         R32 15
      262 GETTABLEKS                       R32 R32 K73 ["Text"]
      264 SETTABLEKS                       R32 R31 K40 ["variant"]
      266 SETTABLEKS                       R7 R31 K19 ["onActivated"]
      268 CALL                             R29 2 1
      269 JUMP                             ; [+1]
      270 LOADNIL                          R29
      271 SETTABLEKS                       R29 R28 K66 ["LogOutButton"]
      273 GETUPVAL                         R29 3
      274 GETUPVAL                         R30 13
      275 DUPTABLE                         R31 K71 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      276 MOVE                             R32 R8
      277 CALL                             R32 0 1
      278 SETTABLEKS                       R32 R31 K10 ["LayoutOrder"]
      280 GETTABLEKS                       R32 R1 K74 ["Edit"]
      282 SETTABLEKS                       R32 R31 K70 ["text"]
      284 GETUPVAL                         R32 14
      285 GETTABLEKS                       R32 R32 K26 ["XSmall"]
      287 SETTABLEKS                       R32 R31 K20 ["size"]
      289 GETUPVAL                         R32 15
      290 GETTABLEKS                       R32 R32 K73 ["Text"]
      292 SETTABLEKS                       R32 R31 K40 ["variant"]
      294 SETTABLEKS                       R5 R31 K19 ["onActivated"]
      296 CALL                             R29 2 1
      297 SETTABLEKS                       R29 R28 K67 ["EditButton"]
      299 GETUPVAL                         R29 3
      300 GETUPVAL                         R30 13
      301 DUPTABLE                         R31 K71 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      302 MOVE                             R32 R8
      303 CALL                             R32 0 1
      304 SETTABLEKS                       R32 R31 K10 ["LayoutOrder"]
      306 GETTABLEKS                       R32 R1 K75 ["Delete"]
      308 SETTABLEKS                       R32 R31 K70 ["text"]
      310 GETUPVAL                         R32 14
      311 GETTABLEKS                       R32 R32 K26 ["XSmall"]
      313 SETTABLEKS                       R32 R31 K20 ["size"]
      315 GETUPVAL                         R32 15
      316 GETTABLEKS                       R32 R32 K73 ["Text"]
      318 SETTABLEKS                       R32 R31 K40 ["variant"]
      320 SETTABLEKS                       R6 R31 K19 ["onActivated"]
      322 CALL                             R29 2 1
      323 SETTABLEKS                       R29 R28 K68 ["DeleteButton"]
      325 CALL                             R25 3 1
      326 SETTABLEKS                       R25 R24 K35 ["Content"]
      328 CALL                             R21 3 1
      329 SETTABLEKS                       R21 R20 K35 ["Content"]
      331 CALL                             R17 3 1
      332 SETTABLEKS                       R17 R16 K29 ["OverflowContent"]
      334 CALL                             R13 3 1
      335 SETTABLEKS                       R13 R12 K13 ["Overflow"]
      337 CALL                             R9 3 -1
      338 RETURN                           R9 -1

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
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K17 ["Flags"]
       55 GETTABLEKS                       R8 R8 K18 ["FFlagAssistantUseBuilderIcons"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R8 R2 K19 ["Button"]
       60 GETTABLEKS                       R9 R2 K20 ["IconButton"]
       62 GETTABLEKS                       R10 R2 K21 ["Popover"]
       64 GETTABLEKS                       R11 R2 K22 ["Toggle"]
       66 GETTABLEKS                       R12 R2 K23 ["View"]
       68 GETTABLEKS                       R13 R2 K24 ["Enums"]
       70 GETTABLEKS                       R13 R13 K25 ["ButtonSize"]
       72 GETTABLEKS                       R14 R2 K24 ["Enums"]
       74 GETTABLEKS                       R14 R14 K26 ["ButtonVariant"]
       76 GETTABLEKS                       R15 R2 K24 ["Enums"]
       78 GETTABLEKS                       R15 R15 K27 ["InputSize"]
       80 GETTABLEKS                       R16 R4 K28 ["createNextOrder"]
       82 GETTABLEKS                       R17 R3 K29 ["createElement"]
       84 DUPCLOSURE                       R18 K30 [PROTO_5]
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R16
       88 CAPTURE                          VAL R17
       89 CAPTURE                          VAL R12
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R15
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R14
      101 GETTABLEKS                       R19 R3 K31 ["memo"]
      103 MOVE                             R20 R18
      104 CALL                             R19 1 -1
      105 RETURN                           R19 -1
