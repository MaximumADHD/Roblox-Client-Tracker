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
      135 GETTABLEKS                       R26 R26 K39 ["FFlagAssistantUseBuilderIcons"]
      137 JUMPIFNOT                        R26 ; [+47]
      138 GETUPVAL                         R25 3
      139 GETUPVAL                         R26 10
      140 DUPTABLE                         R27 K42 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      141 GETUPVAL                         R28 11
      142 GETTABLEKS                       R28 R28 K43 ["Enums"]
      144 GETTABLEKS                       R28 R28 K44 ["IconName"]
      146 GETTABLEKS                       R28 R28 K45 ["ThreeDotsVertical"]
      148 SETTABLEKS                       R28 R27 K40 ["icon"]
      150 GETUPVAL                         R28 11
      151 GETTABLEKS                       R28 R28 K43 ["Enums"]
      153 GETTABLEKS                       R28 R28 K46 ["InputSize"]
      155 GETTABLEKS                       R28 R28 K26 ["XSmall"]
      157 SETTABLEKS                       R28 R27 K20 ["size"]
      159 GETUPVAL                         R28 11
      160 GETTABLEKS                       R28 R28 K43 ["Enums"]
      162 GETTABLEKS                       R28 R28 K47 ["ButtonVariant"]
      164 GETTABLEKS                       R28 R28 K48 ["Utility"]
      166 SETTABLEKS                       R28 R27 K41 ["variant"]
      168 SETTABLEKS                       R4 R27 K19 ["onActivated"]
      170 MOVE                             R28 R8
      171 CALL                             R28 0 1
      172 SETTABLEKS                       R28 R27 K10 ["LayoutOrder"]
      174 GETUPVAL                         R28 6
      175 GETTABLEKS                       R28 R28 K22 ["IntegrationItem"]
      177 GETTABLEKS                       R28 R28 K23 ["Actions"]
      179 GETTABLEKS                       R28 R28 K49 ["OverflowButton"]
      181 SETTABLEKS                       R28 R27 K15 ["testId"]
      183 CALL                             R25 2 1
      184 JUMP                             ; [+19]
      185 GETUPVAL                         R25 3
      186 GETUPVAL                         R26 12
      187 DUPTABLE                         R27 K56 [{["testId"], ["icon"] = "icons/actions/overflow", ["tag"] = "align-x-center align-y-center size-600-600", ["iconRotation"] = 90, ["iconTag"] = "size-600-600 content-emphasis", ["LayoutOrder"], ["onActivated"]}]
      188 GETUPVAL                         R28 6
      189 GETTABLEKS                       R28 R28 K22 ["IntegrationItem"]
      191 GETTABLEKS                       R28 R28 K23 ["Actions"]
      193 GETTABLEKS                       R28 R28 K49 ["OverflowButton"]
      195 SETTABLEKS                       R28 R27 K15 ["testId"]
      197 MOVE                             R28 R8
      198 CALL                             R28 0 1
      199 SETTABLEKS                       R28 R27 K10 ["LayoutOrder"]
      201 SETTABLEKS                       R4 R27 K19 ["onActivated"]
      203 CALL                             R25 2 1
      204 SETTABLEKS                       R25 R24 K37 ["Button"]
      206 CALL                             R21 3 1
      207 SETTABLEKS                       R21 R20 K34 ["Anchor"]
      209 GETUPVAL                         R21 3
      210 GETUPVAL                         R22 8
      211 GETTABLEKS                       R22 R22 K35 ["Content"]
      213 DUPTABLE                         R23 K61 [{["side"], ["hasArrow"] = False, ["onPressedOutside"]}]
      214 GETUPVAL                         R24 11
      215 GETTABLEKS                       R24 R24 K43 ["Enums"]
      217 GETTABLEKS                       R24 R24 K62 ["PopoverSide"]
      219 GETTABLEKS                       R24 R24 K63 ["Left"]
      221 SETTABLEKS                       R24 R23 K57 ["side"]
      223 SETTABLEKS                       R4 R23 K60 ["onPressedOutside"]
      225 DUPTABLE                         R24 K64 [{"Content"}]
      226 GETUPVAL                         R25 3
      227 GETUPVAL                         R26 4
      228 DUPTABLE                         R27 K66 [{["LayoutOrder"], ["testId"], ["tag"] = "col gap-small size-full-0 auto-y padding-small"}]
      229 MOVE                             R28 R8
      230 CALL                             R28 0 1
      231 SETTABLEKS                       R28 R27 K10 ["LayoutOrder"]
      233 GETUPVAL                         R28 6
      234 GETTABLEKS                       R28 R28 K22 ["IntegrationItem"]
      236 GETTABLEKS                       R28 R28 K23 ["Actions"]
      238 GETTABLEKS                       R28 R28 K29 ["OverflowContent"]
      240 SETTABLEKS                       R28 R27 K15 ["testId"]
      242 DUPTABLE                         R28 K70 [{"LogOutButton", "EditButton", "DeleteButton"}]
      243 GETTABLEKS                       R30 R0 K7 ["onLogOut"]
      245 JUMPIFNOT                        R30 ; [+25]
      246 GETUPVAL                         R29 3
      247 GETUPVAL                         R30 13
      248 DUPTABLE                         R31 K72 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      249 MOVE                             R32 R8
      250 CALL                             R32 0 1
      251 SETTABLEKS                       R32 R31 K10 ["LayoutOrder"]
      253 GETTABLEKS                       R32 R1 K73 ["LogOut"]
      255 SETTABLEKS                       R32 R31 K71 ["text"]
      257 GETUPVAL                         R32 14
      258 GETTABLEKS                       R32 R32 K26 ["XSmall"]
      260 SETTABLEKS                       R32 R31 K20 ["size"]
      262 GETUPVAL                         R32 15
      263 GETTABLEKS                       R32 R32 K74 ["Text"]
      265 SETTABLEKS                       R32 R31 K41 ["variant"]
      267 SETTABLEKS                       R7 R31 K19 ["onActivated"]
      269 CALL                             R29 2 1
      270 JUMP                             ; [+1]
      271 LOADNIL                          R29
      272 SETTABLEKS                       R29 R28 K67 ["LogOutButton"]
      274 GETUPVAL                         R29 3
      275 GETUPVAL                         R30 13
      276 DUPTABLE                         R31 K72 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      277 MOVE                             R32 R8
      278 CALL                             R32 0 1
      279 SETTABLEKS                       R32 R31 K10 ["LayoutOrder"]
      281 GETTABLEKS                       R32 R1 K75 ["Edit"]
      283 SETTABLEKS                       R32 R31 K71 ["text"]
      285 GETUPVAL                         R32 14
      286 GETTABLEKS                       R32 R32 K26 ["XSmall"]
      288 SETTABLEKS                       R32 R31 K20 ["size"]
      290 GETUPVAL                         R32 15
      291 GETTABLEKS                       R32 R32 K74 ["Text"]
      293 SETTABLEKS                       R32 R31 K41 ["variant"]
      295 SETTABLEKS                       R5 R31 K19 ["onActivated"]
      297 CALL                             R29 2 1
      298 SETTABLEKS                       R29 R28 K68 ["EditButton"]
      300 GETUPVAL                         R29 3
      301 GETUPVAL                         R30 13
      302 DUPTABLE                         R31 K72 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      303 MOVE                             R32 R8
      304 CALL                             R32 0 1
      305 SETTABLEKS                       R32 R31 K10 ["LayoutOrder"]
      307 GETTABLEKS                       R32 R1 K76 ["Delete"]
      309 SETTABLEKS                       R32 R31 K71 ["text"]
      311 GETUPVAL                         R32 14
      312 GETTABLEKS                       R32 R32 K26 ["XSmall"]
      314 SETTABLEKS                       R32 R31 K20 ["size"]
      316 GETUPVAL                         R32 15
      317 GETTABLEKS                       R32 R32 K74 ["Text"]
      319 SETTABLEKS                       R32 R31 K41 ["variant"]
      321 SETTABLEKS                       R6 R31 K19 ["onActivated"]
      323 CALL                             R29 2 1
      324 SETTABLEKS                       R29 R28 K69 ["DeleteButton"]
      326 CALL                             R25 3 1
      327 SETTABLEKS                       R25 R24 K35 ["Content"]
      329 CALL                             R21 3 1
      330 SETTABLEKS                       R21 R20 K35 ["Content"]
      332 CALL                             R17 3 1
      333 SETTABLEKS                       R17 R16 K29 ["OverflowContent"]
      335 CALL                             R13 3 1
      336 SETTABLEKS                       R13 R12 K13 ["Overflow"]
      338 CALL                             R9 3 -1
      339 RETURN                           R9 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K9 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Util"]
       44 GETTABLEKS                       R7 R7 K14 ["TestIds"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K15 ["Resources"]
       51 GETTABLEKS                       R8 R8 K16 ["Localization"]
       53 GETTABLEKS                       R8 R8 K17 ["Translator"]
       55 CALL                             R7 1 1
       56 GETTABLEKS                       R8 R3 K18 ["Button"]
       58 GETTABLEKS                       R9 R3 K19 ["IconButton"]
       60 GETTABLEKS                       R10 R3 K20 ["Popover"]
       62 GETTABLEKS                       R11 R3 K21 ["Toggle"]
       64 GETTABLEKS                       R12 R3 K22 ["View"]
       66 GETTABLEKS                       R13 R3 K23 ["Enums"]
       68 GETTABLEKS                       R13 R13 K24 ["ButtonSize"]
       70 GETTABLEKS                       R14 R3 K23 ["Enums"]
       72 GETTABLEKS                       R14 R14 K25 ["ButtonVariant"]
       74 GETTABLEKS                       R15 R3 K23 ["Enums"]
       76 GETTABLEKS                       R15 R15 K26 ["InputSize"]
       78 GETTABLEKS                       R16 R5 K27 ["createNextOrder"]
       80 GETTABLEKS                       R17 R4 K28 ["createElement"]
       82 DUPCLOSURE                       R18 K29 [PROTO_5]
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R16
       86 CAPTURE                          VAL R17
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R15
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R14
       99 GETTABLEKS                       R19 R4 K30 ["memo"]
      101 MOVE                             R20 R18
      102 CALL                             R19 1 -1
      103 RETURN                           R19 -1
