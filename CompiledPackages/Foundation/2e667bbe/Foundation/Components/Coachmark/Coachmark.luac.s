PROTO_0:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["CommonUI.Controls.Label.PageCount"]
        2 DUPTABLE                         R5 K3 [{"current", "total"}]
        3 SETTABLEKS                       R0 R5 K1 ["current"]
        5 SETTABLEKS                       R1 R5 K2 ["total"]
        7 NAMECALL                         R2 R2 K4 ["FormatByKey"]
        9 CALL                             R2 3 -1
       10 RETURN                           R2 -1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["actions"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R1 R4 K0 ["actions"]
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 FORGPREP                         R1
       13 LOADN                            R6 2
       14 JUMPIFNOTLT                      R6 R4 ; [+12]
       16 GETUPVAL                         R6 1
       17 LOADK                            R9 K1 ["Coachmark only supports up to %* actions"]
       18 LOADN                            R11 2
       19 NAMECALL                         R9 R9 K2 ["format"]
       21 CALL                             R9 2 1
       22 MOVE                             R8 R9
       23 NAMECALL                         R6 R6 K3 ["warning"]
       25 CALL                             R6 2 0
       26 RETURN                           R0 1
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R7 R8 K4 ["Dictionary"]
       30 GETTABLEKS                       R6 R7 K5 ["union"]
       32 MOVE                             R7 R5
       33 DUPTABLE                         R8 K10 [{"LayoutOrder", "size", "fillBehavior", "testId"}]
       34 SETTABLEKS                       R4 R8 K6 ["LayoutOrder"]
       36 GETUPVAL                         R10 3
       37 GETTABLEKS                       R9 R10 K11 ["Medium"]
       39 SETTABLEKS                       R9 R8 K7 ["size"]
       41 GETUPVAL                         R10 4
       42 GETTABLEKS                       R9 R10 K12 ["Fill"]
       44 SETTABLEKS                       R9 R8 K8 ["fillBehavior"]
       46 LOADK                            R10 K13 ["%*--action-%*"]
       47 GETUPVAL                         R13 0
       48 GETTABLEKS                       R12 R13 K9 ["testId"]
       50 MOVE                             R13 R4
       51 NAMECALL                         R10 R10 K2 ["format"]
       53 CALL                             R10 3 1
       54 MOVE                             R9 R10
       55 SETTABLEKS                       R9 R8 K9 ["testId"]
       57 CALL                             R6 2 1
       58 LOADK                            R8 K14 ["CoachmarkButton"]
       59 MOVE                             R9 R4
       60 CONCAT                           R7 R8 R9
       61 GETUPVAL                         R9 5
       62 GETTABLEKS                       R8 R9 K15 ["createElement"]
       64 GETUPVAL                         R9 6
       65 MOVE                             R10 R6
       66 CALL                             R8 2 1
       67 SETTABLE                         R8 R0 R7
       68 FORGLOOP                         R1 2 ; [-56]
       70 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 3
        7 LOADN                            R4 64
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R5 R1 K0 ["onClose"]
       11 JUMPIFNOT                        R5 ; [+13]
       12 DUPTABLE                         R4 K2 [{"MaxSize"}]
       13 GETIMPORT                        R5 K5 [Vector2.new]
       15 GETTABLEKS                       R8 R2 K6 ["Size"]
       17 GETTABLEKS                       R7 R8 K7 ["Size_1200"]
       19 SUB                              R6 R3 R7
       20 LOADK                            R7 K8 [∞]
       21 CALL                             R5 2 1
       22 SETTABLEKS                       R5 R4 K1 ["MaxSize"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R4
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R5 R6 K9 ["useMemo"]
       29 NEWCLOSURE                       R6 P0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          UPVAL U7
       34 CAPTURE                          UPVAL U8
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U9
       37 NEWTABLE                         R7 0 1
       39 GETTABLEKS                       R8 R1 K10 ["actions"]
       41 SETLIST                          R7 R8 1 [1]
       43 CALL                             R5 2 1
       44 GETUPVAL                         R7 4
       45 GETTABLEKS                       R6 R7 K11 ["createElement"]
       47 GETUPVAL                         R8 10
       48 GETTABLEKS                       R7 R8 K12 ["Root"]
       50 DUPTABLE                         R8 K15 [{"isOpen", "testId"}]
       51 GETTABLEKS                       R9 R1 K13 ["isOpen"]
       53 SETTABLEKS                       R9 R8 K13 ["isOpen"]
       55 GETTABLEKS                       R9 R1 K14 ["testId"]
       57 SETTABLEKS                       R9 R8 K14 ["testId"]
       59 DUPTABLE                         R9 K18 [{"Anchor", "Content"}]
       60 GETUPVAL                         R11 4
       61 GETTABLEKS                       R10 R11 K11 ["createElement"]
       63 GETUPVAL                         R12 10
       64 GETTABLEKS                       R11 R12 K16 ["Anchor"]
       66 GETUPVAL                         R12 11
       67 MOVE                             R13 R1
       68 NEWTABLE                         R14 0 0
       70 CALL                             R12 2 1
       71 GETTABLEKS                       R13 R1 K19 ["children"]
       73 CALL                             R10 3 1
       74 SETTABLEKS                       R10 R9 K16 ["Anchor"]
       76 GETUPVAL                         R11 4
       77 GETTABLEKS                       R10 R11 K11 ["createElement"]
       79 GETUPVAL                         R12 10
       80 GETTABLEKS                       R11 R12 K17 ["Content"]
       82 DUPTABLE                         R12 K25 [{"hasArrow", "align", "side", "radius", "backgroundStyle"}]
       83 LOADB                            R13 1
       84 SETTABLEKS                       R13 R12 K20 ["hasArrow"]
       86 GETTABLEKS                       R13 R1 K21 ["align"]
       88 SETTABLEKS                       R13 R12 K21 ["align"]
       90 DUPTABLE                         R13 K28 [{"position", "offset"}]
       91 GETTABLEKS                       R14 R1 K22 ["side"]
       93 SETTABLEKS                       R14 R13 K26 ["position"]
       95 GETTABLEKS                       R15 R2 K6 ["Size"]
       97 GETTABLEKS                       R14 R15 K29 ["Size_200"]
       99 SETTABLEKS                       R14 R13 K27 ["offset"]
      101 SETTABLEKS                       R13 R12 K22 ["side"]
      103 GETUPVAL                         R14 12
      104 GETTABLEKS                       R13 R14 K30 ["Medium"]
      106 SETTABLEKS                       R13 R12 K23 ["radius"]
      108 GETTABLEKS                       R15 R2 K31 ["Inverse"]
      110 GETTABLEKS                       R14 R15 K32 ["Surface"]
      112 GETTABLEKS                       R13 R14 K33 ["Surface_0"]
      114 SETTABLEKS                       R13 R12 K24 ["backgroundStyle"]
      116 GETUPVAL                         R14 4
      117 GETTABLEKS                       R13 R14 K11 ["createElement"]
      119 GETUPVAL                         R15 13
      120 GETTABLEKS                       R14 R15 K34 ["Provider"]
      122 DUPTABLE                         R15 K36 [{"value"}]
      123 DUPTABLE                         R16 K38 [{"isInverse"}]
      124 LOADB                            R17 1
      125 SETTABLEKS                       R17 R16 K37 ["isInverse"]
      127 SETTABLEKS                       R16 R15 K35 ["value"]
      129 GETUPVAL                         R17 4
      130 GETTABLEKS                       R16 R17 K11 ["createElement"]
      132 GETUPVAL                         R17 14
      133 DUPTABLE                         R18 K41 [{"tag", "sizeConstraint"}]
      134 LOADK                            R19 K42 ["col auto-xy gap-medium padding-bottom-medium"]
      135 SETTABLEKS                       R19 R18 K39 ["tag"]
      137 DUPTABLE                         R19 K2 [{"MaxSize"}]
      138 GETIMPORT                        R20 K5 [Vector2.new]
      140 MOVE                             R21 R3
      141 LOADK                            R22 K8 [∞]
      142 CALL                             R20 2 1
      143 SETTABLEKS                       R20 R19 K1 ["MaxSize"]
      145 SETTABLEKS                       R19 R18 K40 ["sizeConstraint"]
      147 DUPTABLE                         R19 K47 [{"CloseAffordanceContainer", "Media", "ContentSection", "Actions"}]
      148 GETTABLEKS                       R21 R1 K0 ["onClose"]
      150 JUMPIFNOT                        R21 ; [+63]
      151 GETUPVAL                         R21 4
      152 GETTABLEKS                       R20 R21 K11 ["createElement"]
      154 LOADK                            R21 K48 ["Folder"]
      155 NEWTABLE                         R22 0 0
      157 DUPTABLE                         R23 K50 [{"CloseAffordance"}]
      158 GETUPVAL                         R25 4
      159 GETTABLEKS                       R24 R25 K11 ["createElement"]
      161 GETUPVAL                         R25 15
      162 DUPTABLE                         R26 K56 [{"onActivated", "size", "variant", "Position", "AnchorPoint", "testId"}]
      163 GETTABLEKS                       R27 R1 K0 ["onClose"]
      165 SETTABLEKS                       R27 R26 K51 ["onActivated"]
      167 GETUPVAL                         R28 7
      168 GETTABLEKS                       R27 R28 K57 ["Small"]
      170 SETTABLEKS                       R27 R26 K52 ["size"]
      172 GETUPVAL                         R28 16
      173 GETTABLEKS                       R27 R28 K58 ["Utility"]
      175 SETTABLEKS                       R27 R26 K53 ["variant"]
      177 GETIMPORT                        R27 K60 [UDim2.new]
      179 LOADN                            R28 1
      180 GETTABLEKS                       R31 R2 K61 ["Padding"]
      182 GETTABLEKS                       R30 R31 K57 ["Small"]
      184 MINUS                            R29 R30
      185 LOADN                            R30 0
      186 GETTABLEKS                       R32 R2 K61 ["Padding"]
      188 GETTABLEKS                       R31 R32 K57 ["Small"]
      190 CALL                             R27 4 1
      191 SETTABLEKS                       R27 R26 K54 ["Position"]
      193 GETIMPORT                        R27 K5 [Vector2.new]
      195 LOADN                            R28 1
      196 LOADN                            R29 0
      197 CALL                             R27 2 1
      198 SETTABLEKS                       R27 R26 K55 ["AnchorPoint"]
      200 LOADK                            R28 K62 ["%*--close-affordance"]
      201 GETTABLEKS                       R30 R1 K14 ["testId"]
      203 NAMECALL                         R28 R28 K63 ["format"]
      205 CALL                             R28 2 1
      206 MOVE                             R27 R28
      207 SETTABLEKS                       R27 R26 K14 ["testId"]
      209 CALL                             R24 2 1
      210 SETTABLEKS                       R24 R23 K49 ["CloseAffordance"]
      212 CALL                             R20 3 1
      213 JUMP                             ; [+1]
      214 LOADNIL                          R20
      215 SETTABLEKS                       R20 R19 K43 ["CloseAffordanceContainer"]
      217 GETTABLEKS                       R21 R1 K64 ["media"]
      219 JUMPIFNOT                        R21 ; [+15]
      220 GETUPVAL                         R21 4
      221 GETTABLEKS                       R20 R21 K11 ["createElement"]
      223 GETUPVAL                         R21 14
      224 DUPTABLE                         R22 K66 [{"LayoutOrder", "tag"}]
      225 LOADN                            R23 1
      226 SETTABLEKS                       R23 R22 K65 ["LayoutOrder"]
      228 LOADK                            R23 K67 ["size-full-0 auto-y"]
      229 SETTABLEKS                       R23 R22 K39 ["tag"]
      231 GETTABLEKS                       R23 R1 K64 ["media"]
      233 CALL                             R20 3 1
      234 JUMP                             ; [+1]
      235 LOADNIL                          R20
      236 SETTABLEKS                       R20 R19 K44 ["Media"]
      238 GETUPVAL                         R21 4
      239 GETTABLEKS                       R20 R21 K11 ["createElement"]
      241 GETUPVAL                         R21 14
      242 DUPTABLE                         R22 K66 [{"LayoutOrder", "tag"}]
      243 LOADN                            R23 2
      244 SETTABLEKS                       R23 R22 K65 ["LayoutOrder"]
      246 LOADK                            R23 K68 ["col gap-xsmall auto-xy padding-top-medium padding-x-medium padding-bottom-xsmall"]
      247 SETTABLEKS                       R23 R22 K39 ["tag"]
      249 DUPTABLE                         R23 K72 [{"StepIndicator", "Header", "Text"}]
      250 GETTABLEKS                       R25 R1 K73 ["steps"]
      252 JUMPIFNOT                        R25 ; [+45]
      253 GETUPVAL                         R25 4
      254 GETTABLEKS                       R24 R25 K11 ["createElement"]
      256 GETUPVAL                         R25 17
      257 DUPTABLE                         R26 K74 [{"LayoutOrder", "Text", "tag", "sizeConstraint", "testId"}]
      258 LOADN                            R27 1
      259 SETTABLEKS                       R27 R26 K65 ["LayoutOrder"]
      261 GETTABLEKS                       R29 R1 K73 ["steps"]
      263 GETTABLEKS                       R28 R29 K75 ["current"]
      265 GETTABLEKS                       R30 R1 K73 ["steps"]
      267 GETTABLEKS                       R29 R30 K76 ["total"]
      269 GETUPVAL                         R30 18
      270 LOADK                            R32 K77 ["CommonUI.Controls.Label.PageCount"]
      271 DUPTABLE                         R33 K78 [{"current", "total"}]
      272 SETTABLEKS                       R28 R33 K75 ["current"]
      274 SETTABLEKS                       R29 R33 K76 ["total"]
      276 NAMECALL                         R30 R30 K79 ["FormatByKey"]
      278 CALL                             R30 3 1
      279 MOVE                             R27 R30
      280 SETTABLEKS                       R27 R26 K71 ["Text"]
      282 LOADK                            R27 K80 ["auto-xy text-label-small text-align-x-left content-inverse-default text-truncate-end"]
      283 SETTABLEKS                       R27 R26 K39 ["tag"]
      285 SETTABLEKS                       R4 R26 K40 ["sizeConstraint"]
      287 LOADK                            R28 K81 ["%*--step-indicator"]
      288 GETTABLEKS                       R30 R1 K14 ["testId"]
      290 NAMECALL                         R28 R28 K63 ["format"]
      292 CALL                             R28 2 1
      293 MOVE                             R27 R28
      294 SETTABLEKS                       R27 R26 K14 ["testId"]
      296 CALL                             R24 2 1
      297 JUMP                             ; [+1]
      298 LOADNIL                          R24
      299 SETTABLEKS                       R24 R23 K69 ["StepIndicator"]
      301 GETUPVAL                         R25 4
      302 GETTABLEKS                       R24 R25 K11 ["createElement"]
      304 GETUPVAL                         R25 17
      305 DUPTABLE                         R26 K74 [{"LayoutOrder", "Text", "tag", "sizeConstraint", "testId"}]
      306 LOADN                            R27 2
      307 SETTABLEKS                       R27 R26 K65 ["LayoutOrder"]
      309 GETTABLEKS                       R27 R1 K82 ["title"]
      311 SETTABLEKS                       R27 R26 K71 ["Text"]
      313 LOADK                            R27 K83 ["auto-xy text-title-large text-align-x-left content-inverse-emphasis text-truncate-split"]
      314 SETTABLEKS                       R27 R26 K39 ["tag"]
      316 SETTABLEKS                       R4 R26 K40 ["sizeConstraint"]
      318 LOADK                            R28 K84 ["%*--header"]
      319 GETTABLEKS                       R30 R1 K14 ["testId"]
      321 NAMECALL                         R28 R28 K63 ["format"]
      323 CALL                             R28 2 1
      324 MOVE                             R27 R28
      325 SETTABLEKS                       R27 R26 K14 ["testId"]
      327 CALL                             R24 2 1
      328 SETTABLEKS                       R24 R23 K70 ["Header"]
      330 GETTABLEKS                       R25 R1 K85 ["text"]
      332 JUMPIFNOT                        R25 ; [+30]
      333 GETTABLEKS                       R25 R1 K85 ["text"]
      335 JUMPIFEQKS                       R25 K86 [""] ; [+27]
      337 GETUPVAL                         R25 4
      338 GETTABLEKS                       R24 R25 K11 ["createElement"]
      340 GETUPVAL                         R25 17
      341 DUPTABLE                         R26 K87 [{"LayoutOrder", "Text", "tag", "testId"}]
      342 LOADN                            R27 3
      343 SETTABLEKS                       R27 R26 K65 ["LayoutOrder"]
      345 GETTABLEKS                       R27 R1 K85 ["text"]
      347 SETTABLEKS                       R27 R26 K71 ["Text"]
      349 LOADK                            R27 K88 ["size-full-0 auto-y text-wrap text-align-x-left text-body-medium content-inverse-default"]
      350 SETTABLEKS                       R27 R26 K39 ["tag"]
      352 LOADK                            R28 K89 ["%*--text"]
      353 GETTABLEKS                       R30 R1 K14 ["testId"]
      355 NAMECALL                         R28 R28 K63 ["format"]
      357 CALL                             R28 2 1
      358 MOVE                             R27 R28
      359 SETTABLEKS                       R27 R26 K14 ["testId"]
      361 CALL                             R24 2 1
      362 JUMP                             ; [+1]
      363 LOADNIL                          R24
      364 SETTABLEKS                       R24 R23 K71 ["Text"]
      366 CALL                             R20 3 1
      367 SETTABLEKS                       R20 R19 K45 ["ContentSection"]
      369 GETTABLEKS                       R21 R1 K10 ["actions"]
      371 JUMPIFNOT                        R21 ; [+20]
      372 GETTABLEKS                       R22 R1 K10 ["actions"]
      374 LENGTH                           R21 R22
      375 LOADN                            R22 0
      376 JUMPIFNOTLT                      R22 R21 ; [+15]
      378 GETUPVAL                         R21 4
      379 GETTABLEKS                       R20 R21 K11 ["createElement"]
      381 GETUPVAL                         R21 14
      382 DUPTABLE                         R22 K66 [{"LayoutOrder", "tag"}]
      383 LOADN                            R23 3
      384 SETTABLEKS                       R23 R22 K65 ["LayoutOrder"]
      386 LOADK                            R23 K90 ["row gap-small auto-y padding-x-medium size-full-0"]
      387 SETTABLEKS                       R23 R22 K39 ["tag"]
      389 MOVE                             R23 R5
      390 CALL                             R20 3 1
      391 JUMP                             ; [+1]
      392 LOADNIL                          R20
      393 SETTABLEKS                       R20 R19 K46 ["Actions"]
      395 CALL                             R16 3 -1
      396 CALL                             R13 -1 -1
      397 CALL                             R10 -1 1
      398 SETTABLEKS                       R10 R9 K17 ["Content"]
      400 CALL                             R6 3 -1
      401 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Cryo"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R8 K12 ["Text"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R9 K13 ["Button"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K9 ["Components"]
       51 GETTABLEKS                       R9 R10 K14 ["CloseAffordance"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R11 R0 K15 ["Utility"]
       58 GETTABLEKS                       R10 R11 K16 ["withDefaults"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R12 R0 K15 ["Utility"]
       65 GETTABLEKS                       R11 R12 K17 ["withCommonProps"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R14 R0 K18 ["Providers"]
       72 GETTABLEKS                       R13 R14 K19 ["Style"]
       74 GETTABLEKS                       R12 R13 K20 ["useTokens"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R15 R0 K18 ["Providers"]
       81 GETTABLEKS                       R14 R15 K19 ["Style"]
       83 GETTABLEKS                       R13 R14 K21 ["PresentationContext"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R15 R0 K22 ["Enums"]
       90 GETTABLEKS                       R14 R15 K23 ["PopoverSide"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETTABLEKS                       R16 R0 K22 ["Enums"]
       97 GETTABLEKS                       R15 R16 K24 ["PopoverAlign"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K6 [require]
      102 GETTABLEKS                       R17 R0 K22 ["Enums"]
      104 GETTABLEKS                       R16 R17 K25 ["Radius"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K6 [require]
      109 GETTABLEKS                       R18 R0 K22 ["Enums"]
      111 GETTABLEKS                       R17 R18 K26 ["InputSize"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K6 [require]
      116 GETTABLEKS                       R19 R0 K22 ["Enums"]
      118 GETTABLEKS                       R18 R19 K27 ["FillBehavior"]
      120 CALL                             R17 1 1
      121 GETIMPORT                        R18 K6 [require]
      123 GETTABLEKS                       R20 R0 K22 ["Enums"]
      125 GETTABLEKS                       R19 R20 K28 ["CloseAffordanceVariant"]
      127 CALL                             R18 1 1
      128 GETIMPORT                        R19 K6 [require]
      130 GETTABLEKS                       R21 R0 K15 ["Utility"]
      132 GETTABLEKS                       R20 R21 K29 ["useScaledValue"]
      134 CALL                             R19 1 1
      135 GETIMPORT                        R20 K6 [require]
      137 GETTABLEKS                       R22 R0 K15 ["Utility"]
      139 GETTABLEKS                       R21 R22 K30 ["Logger"]
      141 CALL                             R20 1 1
      142 GETIMPORT                        R21 K6 [require]
      144 GETTABLEKS                       R24 R0 K15 ["Utility"]
      146 GETTABLEKS                       R23 R24 K31 ["Localization"]
      148 GETTABLEKS                       R22 R23 K32 ["Translator"]
      150 CALL                             R21 1 1
      151 GETIMPORT                        R22 K6 [require]
      153 GETTABLEKS                       R24 R0 K9 ["Components"]
      155 GETTABLEKS                       R23 R24 K33 ["Popover"]
      157 CALL                             R22 1 1
      158 DUPTABLE                         R23 K38 [{"isOpen", "align", "side", "testId"}]
      159 LOADB                            R24 0
      160 SETTABLEKS                       R24 R23 K34 ["isOpen"]
      162 GETTABLEKS                       R24 R14 K39 ["Start"]
      164 SETTABLEKS                       R24 R23 K35 ["align"]
      166 GETTABLEKS                       R24 R13 K40 ["Right"]
      168 SETTABLEKS                       R24 R23 K36 ["side"]
      170 LOADK                            R24 K41 ["--foundation-coachmark"]
      171 SETTABLEKS                       R24 R23 K37 ["testId"]
      173 DUPCLOSURE                       R24 K42 [PROTO_0]
      174 CAPTURE                          VAL R21
      175 DUPCLOSURE                       R25 K43 [PROTO_2]
      176 CAPTURE                          VAL R9
      177 CAPTURE                          VAL R23
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R19
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R20
      182 CAPTURE                          VAL R3
      183 CAPTURE                          VAL R16
      184 CAPTURE                          VAL R17
      185 CAPTURE                          VAL R7
      186 CAPTURE                          VAL R22
      187 CAPTURE                          VAL R10
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R12
      190 CAPTURE                          VAL R5
      191 CAPTURE                          VAL R8
      192 CAPTURE                          VAL R18
      193 CAPTURE                          VAL R6
      194 CAPTURE                          VAL R21
      195 GETTABLEKS                       R26 R2 K44 ["memo"]
      197 MOVE                             R27 R25
      198 CALL                             R26 1 -1
      199 RETURN                           R26 -1
