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
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["actions"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["actions"]
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
       27 DUPTABLE                         R6 K8 [{"LayoutOrder", "size", "fillBehavior", "testId"}]
       28 SETTABLEKS                       R4 R6 K4 ["LayoutOrder"]
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K9 ["Medium"]
       33 SETTABLEKS                       R7 R6 K5 ["size"]
       35 GETUPVAL                         R7 3
       36 GETTABLEKS                       R7 R7 K10 ["Fill"]
       38 SETTABLEKS                       R7 R6 K6 ["fillBehavior"]
       40 LOADK                            R8 K11 ["%*--action-%*"]
       41 GETUPVAL                         R10 0
       42 GETTABLEKS                       R10 R10 K7 ["testId"]
       44 MOVE                             R11 R4
       45 NAMECALL                         R8 R8 K2 ["format"]
       47 CALL                             R8 3 1
       48 MOVE                             R7 R8
       49 SETTABLEKS                       R7 R6 K7 ["testId"]
       51 GETUPVAL                         R8 4
       52 GETTABLEKS                       R8 R8 K12 ["FoundationMigrateCryoToDash"]
       54 JUMPIFNOT                        R8 ; [+7]
       55 GETUPVAL                         R7 5
       56 GETTABLEKS                       R7 R7 K13 ["union"]
       58 MOVE                             R8 R5
       59 MOVE                             R9 R6
       60 CALL                             R7 2 1
       61 JUMP                             ; [+8]
       62 GETUPVAL                         R7 6
       63 GETTABLEKS                       R7 R7 K14 ["Dictionary"]
       65 GETTABLEKS                       R7 R7 K13 ["union"]
       67 MOVE                             R8 R5
       68 MOVE                             R9 R6
       69 CALL                             R7 2 1
       70 LOADK                            R9 K15 ["CoachmarkButton"]
       71 MOVE                             R10 R4
       72 CONCAT                           R8 R9 R10
       73 GETUPVAL                         R9 7
       74 GETTABLEKS                       R9 R9 K16 ["createElement"]
       76 GETUPVAL                         R10 8
       77 MOVE                             R11 R7
       78 CALL                             R9 2 1
       79 SETTABLE                         R9 R0 R8
       80 FORGLOOP                         R1 2 ; [-68]
       82 RETURN                           R0 1

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
       15 GETTABLEKS                       R7 R2 K6 ["Size"]
       17 GETTABLEKS                       R7 R7 K7 ["Size_1200"]
       19 SUB                              R6 R3 R7
       20 LOADK                            R7 K8 [∞]
       21 CALL                             R5 2 1
       22 SETTABLEKS                       R5 R4 K1 ["MaxSize"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R4
       26 GETUPVAL                         R5 4
       27 GETTABLEKS                       R5 R5 K9 ["useMemo"]
       29 NEWCLOSURE                       R6 P0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          UPVAL U7
       34 CAPTURE                          UPVAL U8
       35 CAPTURE                          UPVAL U9
       36 CAPTURE                          UPVAL U10
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          UPVAL U11
       39 NEWTABLE                         R7 0 1
       41 GETTABLEKS                       R8 R1 K10 ["actions"]
       43 SETLIST                          R7 R8 1 [1]
       45 CALL                             R5 2 1
       46 GETUPVAL                         R6 4
       47 GETTABLEKS                       R6 R6 K11 ["createElement"]
       49 GETUPVAL                         R7 12
       50 GETTABLEKS                       R7 R7 K12 ["Root"]
       52 DUPTABLE                         R8 K15 [{"isOpen", "testId"}]
       53 GETTABLEKS                       R9 R1 K13 ["isOpen"]
       55 SETTABLEKS                       R9 R8 K13 ["isOpen"]
       57 GETTABLEKS                       R9 R1 K14 ["testId"]
       59 SETTABLEKS                       R9 R8 K14 ["testId"]
       61 DUPTABLE                         R9 K18 [{"Anchor", "Content"}]
       62 GETUPVAL                         R10 4
       63 GETTABLEKS                       R10 R10 K11 ["createElement"]
       65 GETUPVAL                         R11 12
       66 GETTABLEKS                       R11 R11 K16 ["Anchor"]
       68 GETUPVAL                         R12 13
       69 MOVE                             R13 R1
       70 DUPTABLE                         R14 K20 [{"anchorRef"}]
       71 GETTABLEKS                       R15 R1 K19 ["anchorRef"]
       73 SETTABLEKS                       R15 R14 K19 ["anchorRef"]
       75 CALL                             R12 2 1
       76 GETTABLEKS                       R13 R1 K21 ["children"]
       78 CALL                             R10 3 1
       79 SETTABLEKS                       R10 R9 K16 ["Anchor"]
       81 GETUPVAL                         R10 4
       82 GETTABLEKS                       R10 R10 K11 ["createElement"]
       84 GETUPVAL                         R11 12
       85 GETTABLEKS                       R11 R11 K17 ["Content"]
       87 DUPTABLE                         R12 K29 [{"hasArrow", "align", "side", "radius", "backgroundStyle", "selection", "selectionGroup"}]
       88 LOADB                            R13 1
       89 SETTABLEKS                       R13 R12 K22 ["hasArrow"]
       91 GETTABLEKS                       R13 R1 K23 ["align"]
       93 SETTABLEKS                       R13 R12 K23 ["align"]
       95 DUPTABLE                         R13 K32 [{"position", "offset"}]
       96 GETTABLEKS                       R14 R1 K24 ["side"]
       98 SETTABLEKS                       R14 R13 K30 ["position"]
      100 GETTABLEKS                       R14 R2 K6 ["Size"]
      102 GETTABLEKS                       R14 R14 K33 ["Size_200"]
      104 SETTABLEKS                       R14 R13 K31 ["offset"]
      106 SETTABLEKS                       R13 R12 K24 ["side"]
      108 GETUPVAL                         R13 14
      109 GETTABLEKS                       R13 R13 K34 ["Medium"]
      111 SETTABLEKS                       R13 R12 K25 ["radius"]
      113 GETTABLEKS                       R13 R2 K35 ["Inverse"]
      115 GETTABLEKS                       R13 R13 K36 ["Surface"]
      117 GETTABLEKS                       R13 R13 K37 ["Surface_0"]
      119 SETTABLEKS                       R13 R12 K26 ["backgroundStyle"]
      121 GETTABLEKS                       R13 R1 K27 ["selection"]
      123 SETTABLEKS                       R13 R12 K27 ["selection"]
      125 GETTABLEKS                       R13 R1 K28 ["selectionGroup"]
      127 SETTABLEKS                       R13 R12 K28 ["selectionGroup"]
      129 GETUPVAL                         R13 4
      130 GETTABLEKS                       R13 R13 K11 ["createElement"]
      132 GETUPVAL                         R14 15
      133 GETTABLEKS                       R14 R14 K38 ["Provider"]
      135 DUPTABLE                         R15 K40 [{"value"}]
      136 DUPTABLE                         R16 K42 [{"colorMode"}]
      137 GETUPVAL                         R17 16
      138 GETTABLEKS                       R17 R17 K35 ["Inverse"]
      140 SETTABLEKS                       R17 R16 K41 ["colorMode"]
      142 SETTABLEKS                       R16 R15 K39 ["value"]
      144 GETUPVAL                         R16 4
      145 GETTABLEKS                       R16 R16 K11 ["createElement"]
      147 GETUPVAL                         R17 17
      148 DUPTABLE                         R18 K45 [{"tag", "sizeConstraint"}]
      149 LOADK                            R19 K46 ["col auto-xy gap-medium padding-bottom-medium"]
      150 SETTABLEKS                       R19 R18 K43 ["tag"]
      152 DUPTABLE                         R19 K2 [{"MaxSize"}]
      153 GETIMPORT                        R20 K5 [Vector2.new]
      155 MOVE                             R21 R3
      156 LOADK                            R22 K8 [∞]
      157 CALL                             R20 2 1
      158 SETTABLEKS                       R20 R19 K1 ["MaxSize"]
      160 SETTABLEKS                       R19 R18 K44 ["sizeConstraint"]
      162 DUPTABLE                         R19 K51 [{"CloseAffordanceContainer", "Media", "ContentSection", "Actions"}]
      163 GETTABLEKS                       R21 R1 K0 ["onClose"]
      165 JUMPIFNOT                        R21 ; [+63]
      166 GETUPVAL                         R20 4
      167 GETTABLEKS                       R20 R20 K11 ["createElement"]
      169 LOADK                            R21 K52 ["Folder"]
      170 NEWTABLE                         R22 0 0
      172 DUPTABLE                         R23 K54 [{"CloseAffordance"}]
      173 GETUPVAL                         R24 4
      174 GETTABLEKS                       R24 R24 K11 ["createElement"]
      176 GETUPVAL                         R25 18
      177 DUPTABLE                         R26 K60 [{"onActivated", "size", "variant", "Position", "AnchorPoint", "testId"}]
      178 GETTABLEKS                       R27 R1 K0 ["onClose"]
      180 SETTABLEKS                       R27 R26 K55 ["onActivated"]
      182 GETUPVAL                         R27 6
      183 GETTABLEKS                       R27 R27 K61 ["Small"]
      185 SETTABLEKS                       R27 R26 K56 ["size"]
      187 GETUPVAL                         R27 19
      188 GETTABLEKS                       R27 R27 K62 ["Utility"]
      190 SETTABLEKS                       R27 R26 K57 ["variant"]
      192 GETIMPORT                        R27 K64 [UDim2.new]
      194 LOADN                            R28 1
      195 GETTABLEKS                       R30 R2 K65 ["Padding"]
      197 GETTABLEKS                       R30 R30 K61 ["Small"]
      199 MINUS                            R29 R30
      200 LOADN                            R30 0
      201 GETTABLEKS                       R31 R2 K65 ["Padding"]
      203 GETTABLEKS                       R31 R31 K61 ["Small"]
      205 CALL                             R27 4 1
      206 SETTABLEKS                       R27 R26 K58 ["Position"]
      208 GETIMPORT                        R27 K5 [Vector2.new]
      210 LOADN                            R28 1
      211 LOADN                            R29 0
      212 CALL                             R27 2 1
      213 SETTABLEKS                       R27 R26 K59 ["AnchorPoint"]
      215 LOADK                            R28 K66 ["%*--close-affordance"]
      216 GETTABLEKS                       R30 R1 K14 ["testId"]
      218 NAMECALL                         R28 R28 K67 ["format"]
      220 CALL                             R28 2 1
      221 MOVE                             R27 R28
      222 SETTABLEKS                       R27 R26 K14 ["testId"]
      224 CALL                             R24 2 1
      225 SETTABLEKS                       R24 R23 K53 ["CloseAffordance"]
      227 CALL                             R20 3 1
      228 JUMP                             ; [+1]
      229 LOADNIL                          R20
      230 SETTABLEKS                       R20 R19 K47 ["CloseAffordanceContainer"]
      232 GETTABLEKS                       R21 R1 K68 ["media"]
      234 JUMPIFNOT                        R21 ; [+15]
      235 GETUPVAL                         R20 4
      236 GETTABLEKS                       R20 R20 K11 ["createElement"]
      238 GETUPVAL                         R21 17
      239 DUPTABLE                         R22 K70 [{"LayoutOrder", "tag"}]
      240 LOADN                            R23 1
      241 SETTABLEKS                       R23 R22 K69 ["LayoutOrder"]
      243 LOADK                            R23 K71 ["size-full-0 auto-y"]
      244 SETTABLEKS                       R23 R22 K43 ["tag"]
      246 GETTABLEKS                       R23 R1 K68 ["media"]
      248 CALL                             R20 3 1
      249 JUMP                             ; [+1]
      250 LOADNIL                          R20
      251 SETTABLEKS                       R20 R19 K48 ["Media"]
      253 GETUPVAL                         R20 4
      254 GETTABLEKS                       R20 R20 K11 ["createElement"]
      256 GETUPVAL                         R21 17
      257 DUPTABLE                         R22 K70 [{"LayoutOrder", "tag"}]
      258 LOADN                            R23 2
      259 SETTABLEKS                       R23 R22 K69 ["LayoutOrder"]
      261 LOADK                            R23 K72 ["col gap-xsmall auto-xy padding-top-medium padding-x-medium padding-bottom-xsmall"]
      262 SETTABLEKS                       R23 R22 K43 ["tag"]
      264 DUPTABLE                         R23 K76 [{"StepIndicator", "Header", "Text"}]
      265 GETTABLEKS                       R25 R1 K77 ["steps"]
      267 JUMPIFNOT                        R25 ; [+45]
      268 GETUPVAL                         R24 4
      269 GETTABLEKS                       R24 R24 K11 ["createElement"]
      271 GETUPVAL                         R25 20
      272 DUPTABLE                         R26 K78 [{"LayoutOrder", "Text", "tag", "sizeConstraint", "testId"}]
      273 LOADN                            R27 1
      274 SETTABLEKS                       R27 R26 K69 ["LayoutOrder"]
      276 GETTABLEKS                       R28 R1 K77 ["steps"]
      278 GETTABLEKS                       R28 R28 K79 ["current"]
      280 GETTABLEKS                       R29 R1 K77 ["steps"]
      282 GETTABLEKS                       R29 R29 K80 ["total"]
      284 GETUPVAL                         R30 21
      285 LOADK                            R32 K81 ["CommonUI.Controls.Label.PageCount"]
      286 DUPTABLE                         R33 K82 [{"current", "total"}]
      287 SETTABLEKS                       R28 R33 K79 ["current"]
      289 SETTABLEKS                       R29 R33 K80 ["total"]
      291 NAMECALL                         R30 R30 K83 ["FormatByKey"]
      293 CALL                             R30 3 1
      294 MOVE                             R27 R30
      295 SETTABLEKS                       R27 R26 K75 ["Text"]
      297 LOADK                            R27 K84 ["auto-xy text-label-small text-align-x-left content-inverse-default text-truncate-end"]
      298 SETTABLEKS                       R27 R26 K43 ["tag"]
      300 SETTABLEKS                       R4 R26 K44 ["sizeConstraint"]
      302 LOADK                            R28 K85 ["%*--step-indicator"]
      303 GETTABLEKS                       R30 R1 K14 ["testId"]
      305 NAMECALL                         R28 R28 K67 ["format"]
      307 CALL                             R28 2 1
      308 MOVE                             R27 R28
      309 SETTABLEKS                       R27 R26 K14 ["testId"]
      311 CALL                             R24 2 1
      312 JUMP                             ; [+1]
      313 LOADNIL                          R24
      314 SETTABLEKS                       R24 R23 K73 ["StepIndicator"]
      316 GETUPVAL                         R24 4
      317 GETTABLEKS                       R24 R24 K11 ["createElement"]
      319 GETUPVAL                         R25 20
      320 DUPTABLE                         R26 K78 [{"LayoutOrder", "Text", "tag", "sizeConstraint", "testId"}]
      321 LOADN                            R27 2
      322 SETTABLEKS                       R27 R26 K69 ["LayoutOrder"]
      324 GETTABLEKS                       R27 R1 K86 ["title"]
      326 SETTABLEKS                       R27 R26 K75 ["Text"]
      328 LOADK                            R27 K87 ["auto-xy text-title-large text-align-x-left content-inverse-emphasis text-truncate-split"]
      329 SETTABLEKS                       R27 R26 K43 ["tag"]
      331 SETTABLEKS                       R4 R26 K44 ["sizeConstraint"]
      333 LOADK                            R28 K88 ["%*--header"]
      334 GETTABLEKS                       R30 R1 K14 ["testId"]
      336 NAMECALL                         R28 R28 K67 ["format"]
      338 CALL                             R28 2 1
      339 MOVE                             R27 R28
      340 SETTABLEKS                       R27 R26 K14 ["testId"]
      342 CALL                             R24 2 1
      343 SETTABLEKS                       R24 R23 K74 ["Header"]
      345 GETTABLEKS                       R25 R1 K89 ["text"]
      347 JUMPIFNOT                        R25 ; [+30]
      348 GETTABLEKS                       R25 R1 K89 ["text"]
      350 JUMPIFEQKS                       R25 K90 [""] ; [+27]
      352 GETUPVAL                         R24 4
      353 GETTABLEKS                       R24 R24 K11 ["createElement"]
      355 GETUPVAL                         R25 20
      356 DUPTABLE                         R26 K91 [{"LayoutOrder", "Text", "tag", "testId"}]
      357 LOADN                            R27 3
      358 SETTABLEKS                       R27 R26 K69 ["LayoutOrder"]
      360 GETTABLEKS                       R27 R1 K89 ["text"]
      362 SETTABLEKS                       R27 R26 K75 ["Text"]
      364 LOADK                            R27 K92 ["size-full-0 auto-y text-wrap text-align-x-left text-body-medium content-inverse-default"]
      365 SETTABLEKS                       R27 R26 K43 ["tag"]
      367 LOADK                            R28 K93 ["%*--text"]
      368 GETTABLEKS                       R30 R1 K14 ["testId"]
      370 NAMECALL                         R28 R28 K67 ["format"]
      372 CALL                             R28 2 1
      373 MOVE                             R27 R28
      374 SETTABLEKS                       R27 R26 K14 ["testId"]
      376 CALL                             R24 2 1
      377 JUMP                             ; [+1]
      378 LOADNIL                          R24
      379 SETTABLEKS                       R24 R23 K75 ["Text"]
      381 CALL                             R20 3 1
      382 SETTABLEKS                       R20 R19 K49 ["ContentSection"]
      384 GETTABLEKS                       R21 R1 K10 ["actions"]
      386 JUMPIFNOT                        R21 ; [+20]
      387 GETTABLEKS                       R22 R1 K10 ["actions"]
      389 LENGTH                           R21 R22
      390 LOADN                            R22 0
      391 JUMPIFNOTLT                      R22 R21 ; [+15]
      393 GETUPVAL                         R20 4
      394 GETTABLEKS                       R20 R20 K11 ["createElement"]
      396 GETUPVAL                         R21 17
      397 DUPTABLE                         R22 K70 [{"LayoutOrder", "tag"}]
      398 LOADN                            R23 3
      399 SETTABLEKS                       R23 R22 K69 ["LayoutOrder"]
      401 LOADK                            R23 K94 ["row gap-small auto-y padding-x-medium size-full-0"]
      402 SETTABLEKS                       R23 R22 K43 ["tag"]
      404 MOVE                             R23 R5
      405 CALL                             R20 3 1
      406 JUMP                             ; [+1]
      407 LOADNIL                          R20
      408 SETTABLEKS                       R20 R19 K50 ["Actions"]
      410 CALL                             R16 3 -1
      411 CALL                             R13 -1 -1
      412 CALL                             R10 -1 1
      413 SETTABLEKS                       R10 R9 K17 ["Content"]
      415 CALL                             R6 3 -1
      416 RETURN                           R6 -1

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
       21 GETTABLEKS                       R5 R1 K9 ["Dash"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R6 K11 ["Types"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K10 ["Components"]
       35 GETTABLEKS                       R7 R7 K12 ["View"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K10 ["Components"]
       42 GETTABLEKS                       R8 R8 K13 ["Text"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K10 ["Components"]
       49 GETTABLEKS                       R9 R9 K14 ["Button"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R10 R0 K10 ["Components"]
       56 GETTABLEKS                       R10 R10 K15 ["CloseAffordance"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R0 K16 ["Utility"]
       63 GETTABLEKS                       R11 R11 K17 ["withDefaults"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R12 R0 K16 ["Utility"]
       70 GETTABLEKS                       R12 R12 K18 ["withCommonProps"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETTABLEKS                       R13 R0 K19 ["Providers"]
       77 GETTABLEKS                       R13 R13 K20 ["Style"]
       79 GETTABLEKS                       R13 R13 K21 ["useTokens"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K19 ["Providers"]
       86 GETTABLEKS                       R14 R14 K20 ["Style"]
       88 GETTABLEKS                       R14 R14 K22 ["PresentationContext"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R15 R0 K23 ["Enums"]
       95 GETTABLEKS                       R15 R15 K24 ["ColorMode"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETTABLEKS                       R16 R0 K23 ["Enums"]
      102 GETTABLEKS                       R16 R16 K25 ["PopoverSide"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K6 [require]
      107 GETTABLEKS                       R17 R0 K23 ["Enums"]
      109 GETTABLEKS                       R17 R17 K26 ["PopoverAlign"]
      111 CALL                             R16 1 1
      112 GETIMPORT                        R17 K6 [require]
      114 GETTABLEKS                       R18 R0 K23 ["Enums"]
      116 GETTABLEKS                       R18 R18 K27 ["Radius"]
      118 CALL                             R17 1 1
      119 GETIMPORT                        R18 K6 [require]
      121 GETTABLEKS                       R19 R0 K23 ["Enums"]
      123 GETTABLEKS                       R19 R19 K28 ["InputSize"]
      125 CALL                             R18 1 1
      126 GETIMPORT                        R19 K6 [require]
      128 GETTABLEKS                       R20 R0 K23 ["Enums"]
      130 GETTABLEKS                       R20 R20 K29 ["FillBehavior"]
      132 CALL                             R19 1 1
      133 GETIMPORT                        R20 K6 [require]
      135 GETTABLEKS                       R21 R0 K23 ["Enums"]
      137 GETTABLEKS                       R21 R21 K30 ["CloseAffordanceVariant"]
      139 CALL                             R20 1 1
      140 GETIMPORT                        R21 K6 [require]
      142 GETTABLEKS                       R22 R0 K16 ["Utility"]
      144 GETTABLEKS                       R22 R22 K31 ["useScaledValue"]
      146 CALL                             R21 1 1
      147 GETIMPORT                        R22 K6 [require]
      149 GETTABLEKS                       R23 R0 K16 ["Utility"]
      151 GETTABLEKS                       R23 R23 K32 ["Logger"]
      153 CALL                             R22 1 1
      154 GETIMPORT                        R23 K6 [require]
      156 GETTABLEKS                       R24 R0 K16 ["Utility"]
      158 GETTABLEKS                       R24 R24 K33 ["Localization"]
      160 GETTABLEKS                       R24 R24 K34 ["Translator"]
      162 CALL                             R23 1 1
      163 GETIMPORT                        R24 K6 [require]
      165 GETTABLEKS                       R25 R0 K16 ["Utility"]
      167 GETTABLEKS                       R25 R25 K35 ["Flags"]
      169 CALL                             R24 1 1
      170 GETIMPORT                        R25 K6 [require]
      172 GETTABLEKS                       R26 R0 K10 ["Components"]
      174 GETTABLEKS                       R26 R26 K36 ["Popover"]
      176 CALL                             R25 1 1
      177 DUPTABLE                         R26 K41 [{"isOpen", "align", "side", "testId"}]
      178 LOADB                            R27 0
      179 SETTABLEKS                       R27 R26 K37 ["isOpen"]
      181 GETTABLEKS                       R27 R16 K42 ["Start"]
      183 SETTABLEKS                       R27 R26 K38 ["align"]
      185 GETTABLEKS                       R27 R15 K43 ["Right"]
      187 SETTABLEKS                       R27 R26 K39 ["side"]
      189 LOADK                            R27 K44 ["--foundation-coachmark"]
      190 SETTABLEKS                       R27 R26 K40 ["testId"]
      192 DUPCLOSURE                       R27 K45 [PROTO_0]
      193 CAPTURE                          VAL R23
      194 DUPCLOSURE                       R28 K46 [PROTO_2]
      195 CAPTURE                          VAL R10
      196 CAPTURE                          VAL R26
      197 CAPTURE                          VAL R12
      198 CAPTURE                          VAL R21
      199 CAPTURE                          VAL R2
      200 CAPTURE                          VAL R22
      201 CAPTURE                          VAL R18
      202 CAPTURE                          VAL R19
      203 CAPTURE                          VAL R24
      204 CAPTURE                          VAL R4
      205 CAPTURE                          VAL R3
      206 CAPTURE                          VAL R8
      207 CAPTURE                          VAL R25
      208 CAPTURE                          VAL R11
      209 CAPTURE                          VAL R17
      210 CAPTURE                          VAL R13
      211 CAPTURE                          VAL R14
      212 CAPTURE                          VAL R6
      213 CAPTURE                          VAL R9
      214 CAPTURE                          VAL R20
      215 CAPTURE                          VAL R7
      216 CAPTURE                          VAL R23
      217 GETTABLEKS                       R29 R2 K47 ["memo"]
      219 MOVE                             R30 R28
      220 CALL                             R29 1 -1
      221 RETURN                           R29 -1
