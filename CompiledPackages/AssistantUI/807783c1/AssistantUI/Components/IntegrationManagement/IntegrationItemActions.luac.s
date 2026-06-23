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
      143 GETUPVAL                         R26 9
      144 CALL                             R26 0 1
      145 JUMPIFNOT                        R26 ; [+47]
      146 GETUPVAL                         R25 3
      147 GETUPVAL                         R26 10
      148 DUPTABLE                         R27 K40 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      149 GETUPVAL                         R28 11
      150 GETTABLEKS                       R28 R28 K41 ["Enums"]
      152 GETTABLEKS                       R28 R28 K42 ["IconName"]
      154 GETTABLEKS                       R28 R28 K43 ["ThreeDotsVertical"]
      156 SETTABLEKS                       R28 R27 K38 ["icon"]
      158 GETUPVAL                         R28 11
      159 GETTABLEKS                       R28 R28 K41 ["Enums"]
      161 GETTABLEKS                       R28 R28 K44 ["InputSize"]
      163 GETTABLEKS                       R28 R28 K26 ["XSmall"]
      165 SETTABLEKS                       R28 R27 K19 ["size"]
      167 GETUPVAL                         R28 11
      168 GETTABLEKS                       R28 R28 K41 ["Enums"]
      170 GETTABLEKS                       R28 R28 K45 ["ButtonVariant"]
      172 GETTABLEKS                       R28 R28 K46 ["Utility"]
      174 SETTABLEKS                       R28 R27 K39 ["variant"]
      176 SETTABLEKS                       R4 R27 K18 ["onActivated"]
      178 MOVE                             R28 R8
      179 CALL                             R28 0 1
      180 SETTABLEKS                       R28 R27 K9 ["LayoutOrder"]
      182 GETUPVAL                         R28 6
      183 GETTABLEKS                       R28 R28 K21 ["IntegrationItem"]
      185 GETTABLEKS                       R28 R28 K22 ["Actions"]
      187 GETTABLEKS                       R28 R28 K47 ["OverflowButton"]
      189 SETTABLEKS                       R28 R27 K15 ["testId"]
      191 CALL                             R25 2 1
      192 JUMP                             ; [+31]
      193 GETUPVAL                         R25 3
      194 GETUPVAL                         R26 12
      195 DUPTABLE                         R27 K50 [{"testId", "icon", "tag", "iconRotation", "iconTag", "LayoutOrder", "onActivated"}]
      196 GETUPVAL                         R28 6
      197 GETTABLEKS                       R28 R28 K21 ["IntegrationItem"]
      199 GETTABLEKS                       R28 R28 K22 ["Actions"]
      201 GETTABLEKS                       R28 R28 K47 ["OverflowButton"]
      203 SETTABLEKS                       R28 R27 K15 ["testId"]
      205 LOADK                            R28 K51 ["icons/actions/overflow"]
      206 SETTABLEKS                       R28 R27 K38 ["icon"]
      208 LOADK                            R28 K52 ["size-600-600 align-x-center align-y-center"]
      209 SETTABLEKS                       R28 R27 K8 ["tag"]
      211 LOADN                            R28 90
      212 SETTABLEKS                       R28 R27 K48 ["iconRotation"]
      214 LOADK                            R28 K53 ["size-600-600 content-emphasis"]
      215 SETTABLEKS                       R28 R27 K49 ["iconTag"]
      217 MOVE                             R28 R8
      218 CALL                             R28 0 1
      219 SETTABLEKS                       R28 R27 K9 ["LayoutOrder"]
      221 SETTABLEKS                       R4 R27 K18 ["onActivated"]
      223 CALL                             R25 2 1
      224 SETTABLEKS                       R25 R24 K36 ["Button"]
      226 CALL                             R21 3 1
      227 SETTABLEKS                       R21 R20 K33 ["Anchor"]
      229 GETUPVAL                         R21 3
      230 GETUPVAL                         R22 8
      231 GETTABLEKS                       R22 R22 K34 ["Content"]
      233 DUPTABLE                         R23 K57 [{"side", "hasArrow", "onPressedOutside"}]
      234 GETUPVAL                         R24 11
      235 GETTABLEKS                       R24 R24 K41 ["Enums"]
      237 GETTABLEKS                       R24 R24 K58 ["PopoverSide"]
      239 GETTABLEKS                       R24 R24 K59 ["Left"]
      241 SETTABLEKS                       R24 R23 K54 ["side"]
      243 LOADB                            R24 0
      244 SETTABLEKS                       R24 R23 K55 ["hasArrow"]
      246 SETTABLEKS                       R4 R23 K56 ["onPressedOutside"]
      248 DUPTABLE                         R24 K60 [{"Content"}]
      249 GETUPVAL                         R25 3
      250 GETUPVAL                         R26 4
      251 DUPTABLE                         R27 K61 [{"LayoutOrder", "testId", "tag"}]
      252 MOVE                             R28 R8
      253 CALL                             R28 0 1
      254 SETTABLEKS                       R28 R27 K9 ["LayoutOrder"]
      256 GETUPVAL                         R28 6
      257 GETTABLEKS                       R28 R28 K21 ["IntegrationItem"]
      259 GETTABLEKS                       R28 R28 K22 ["Actions"]
      261 GETTABLEKS                       R28 R28 K28 ["OverflowContent"]
      263 SETTABLEKS                       R28 R27 K15 ["testId"]
      265 LOADK                            R28 K62 ["col size-full-0 auto-y gap-small padding-small"]
      266 SETTABLEKS                       R28 R27 K8 ["tag"]
      268 DUPTABLE                         R28 K66 [{"LogOutButton", "EditButton", "DeleteButton"}]
      269 GETTABLEKS                       R30 R0 K7 ["onLogOut"]
      271 JUMPIFNOT                        R30 ; [+25]
      272 GETUPVAL                         R29 3
      273 GETUPVAL                         R30 13
      274 DUPTABLE                         R31 K68 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      275 MOVE                             R32 R8
      276 CALL                             R32 0 1
      277 SETTABLEKS                       R32 R31 K9 ["LayoutOrder"]
      279 GETTABLEKS                       R32 R1 K69 ["LogOut"]
      281 SETTABLEKS                       R32 R31 K67 ["text"]
      283 GETUPVAL                         R32 14
      284 GETTABLEKS                       R32 R32 K26 ["XSmall"]
      286 SETTABLEKS                       R32 R31 K19 ["size"]
      288 GETUPVAL                         R32 15
      289 GETTABLEKS                       R32 R32 K70 ["Text"]
      291 SETTABLEKS                       R32 R31 K39 ["variant"]
      293 SETTABLEKS                       R7 R31 K18 ["onActivated"]
      295 CALL                             R29 2 1
      296 JUMP                             ; [+1]
      297 LOADNIL                          R29
      298 SETTABLEKS                       R29 R28 K63 ["LogOutButton"]
      300 GETUPVAL                         R29 3
      301 GETUPVAL                         R30 13
      302 DUPTABLE                         R31 K68 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      303 MOVE                             R32 R8
      304 CALL                             R32 0 1
      305 SETTABLEKS                       R32 R31 K9 ["LayoutOrder"]
      307 GETTABLEKS                       R32 R1 K71 ["Edit"]
      309 SETTABLEKS                       R32 R31 K67 ["text"]
      311 GETUPVAL                         R32 14
      312 GETTABLEKS                       R32 R32 K26 ["XSmall"]
      314 SETTABLEKS                       R32 R31 K19 ["size"]
      316 GETUPVAL                         R32 15
      317 GETTABLEKS                       R32 R32 K70 ["Text"]
      319 SETTABLEKS                       R32 R31 K39 ["variant"]
      321 SETTABLEKS                       R5 R31 K18 ["onActivated"]
      323 CALL                             R29 2 1
      324 SETTABLEKS                       R29 R28 K64 ["EditButton"]
      326 GETUPVAL                         R29 3
      327 GETUPVAL                         R30 13
      328 DUPTABLE                         R31 K68 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      329 MOVE                             R32 R8
      330 CALL                             R32 0 1
      331 SETTABLEKS                       R32 R31 K9 ["LayoutOrder"]
      333 GETTABLEKS                       R32 R1 K72 ["Delete"]
      335 SETTABLEKS                       R32 R31 K67 ["text"]
      337 GETUPVAL                         R32 14
      338 GETTABLEKS                       R32 R32 K26 ["XSmall"]
      340 SETTABLEKS                       R32 R31 K19 ["size"]
      342 GETUPVAL                         R32 15
      343 GETTABLEKS                       R32 R32 K70 ["Text"]
      345 SETTABLEKS                       R32 R31 K39 ["variant"]
      347 SETTABLEKS                       R6 R31 K18 ["onActivated"]
      349 CALL                             R29 2 1
      350 SETTABLEKS                       R29 R28 K65 ["DeleteButton"]
      352 CALL                             R25 3 1
      353 SETTABLEKS                       R25 R24 K34 ["Content"]
      355 CALL                             R21 3 1
      356 SETTABLEKS                       R21 R20 K34 ["Content"]
      358 CALL                             R17 3 1
      359 SETTABLEKS                       R17 R16 K28 ["OverflowContent"]
      361 CALL                             R13 3 1
      362 SETTABLEKS                       R13 R12 K13 ["Overflow"]
      364 CALL                             R9 3 -1
      365 RETURN                           R9 -1

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
