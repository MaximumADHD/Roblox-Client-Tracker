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
       27 DUPTABLE                         R6 K8 [{"LayoutOrder", "size", "fillBehavior", "testId"}]
       28 SETTABLEKS                       R4 R6 K4 ["LayoutOrder"]
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R7 R8 K9 ["Medium"]
       33 SETTABLEKS                       R7 R6 K5 ["size"]
       35 GETUPVAL                         R8 3
       36 GETTABLEKS                       R7 R8 K10 ["Fill"]
       38 SETTABLEKS                       R7 R6 K6 ["fillBehavior"]
       40 LOADK                            R8 K11 ["%*--action-%*"]
       41 GETUPVAL                         R11 0
       42 GETTABLEKS                       R10 R11 K7 ["testId"]
       44 MOVE                             R11 R4
       45 NAMECALL                         R8 R8 K2 ["format"]
       47 CALL                             R8 3 1
       48 MOVE                             R7 R8
       49 SETTABLEKS                       R7 R6 K7 ["testId"]
       51 GETUPVAL                         R8 4
       52 GETTABLEKS                       R7 R8 K12 ["union"]
       54 MOVE                             R8 R5
       55 MOVE                             R9 R6
       56 CALL                             R7 2 1
       57 LOADK                            R9 K13 ["CoachmarkButton"]
       58 MOVE                             R10 R4
       59 CONCAT                           R8 R9 R10
       60 GETUPVAL                         R10 5
       61 GETTABLEKS                       R9 R10 K14 ["createElement"]
       63 GETUPVAL                         R10 6
       64 MOVE                             R11 R7
       65 CALL                             R9 2 1
       66 SETTABLE                         R9 R0 R8
       67 FORGLOOP                         R1 2 ; [-55]
       69 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 LOADN                            R5 64
        8 CALL                             R4 1 1
        9 GETTABLEKS                       R6 R2 K0 ["onClose"]
       11 JUMPIFNOT                        R6 ; [+13]
       12 DUPTABLE                         R5 K2 [{"MaxSize"}]
       13 GETIMPORT                        R6 K5 [Vector2.new]
       15 GETTABLEKS                       R9 R3 K6 ["Size"]
       17 GETTABLEKS                       R8 R9 K7 ["Size_1200"]
       19 SUB                              R7 R4 R8
       20 LOADK                            R8 K8 [∞]
       21 CALL                             R6 2 1
       22 SETTABLEKS                       R6 R5 K1 ["MaxSize"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R5
       26 GETUPVAL                         R7 4
       27 GETTABLEKS                       R6 R7 K9 ["useMemo"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          VAL R2
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          UPVAL U7
       34 CAPTURE                          UPVAL U8
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U9
       37 NEWTABLE                         R8 0 2
       39 GETTABLEKS                       R9 R2 K10 ["actions"]
       41 GETTABLEKS                       R10 R2 K11 ["testId"]
       43 SETLIST                          R8 R9 2 [1]
       45 CALL                             R6 2 1
       46 GETUPVAL                         R8 4
       47 GETTABLEKS                       R7 R8 K12 ["createElement"]
       49 GETUPVAL                         R9 10
       50 GETTABLEKS                       R8 R9 K13 ["Root"]
       52 DUPTABLE                         R9 K15 [{"isOpen", "testId"}]
       53 GETTABLEKS                       R10 R2 K14 ["isOpen"]
       55 SETTABLEKS                       R10 R9 K14 ["isOpen"]
       57 GETTABLEKS                       R10 R2 K11 ["testId"]
       59 SETTABLEKS                       R10 R9 K11 ["testId"]
       61 DUPTABLE                         R10 K18 [{"Anchor", "Content"}]
       62 GETUPVAL                         R12 4
       63 GETTABLEKS                       R11 R12 K12 ["createElement"]
       65 GETUPVAL                         R13 10
       66 GETTABLEKS                       R12 R13 K16 ["Anchor"]
       68 GETUPVAL                         R13 11
       69 MOVE                             R14 R2
       70 DUPTABLE                         R15 K20 [{"anchorRef"}]
       71 GETTABLEKS                       R16 R2 K19 ["anchorRef"]
       73 SETTABLEKS                       R16 R15 K19 ["anchorRef"]
       75 CALL                             R13 2 1
       76 GETTABLEKS                       R14 R2 K21 ["children"]
       78 CALL                             R11 3 1
       79 SETTABLEKS                       R11 R10 K16 ["Anchor"]
       81 GETUPVAL                         R12 4
       82 GETTABLEKS                       R11 R12 K12 ["createElement"]
       84 GETUPVAL                         R13 10
       85 GETTABLEKS                       R12 R13 K17 ["Content"]
       87 DUPTABLE                         R13 K30 [{"hasArrow", "align", "side", "radius", "backgroundStyle", "selection", "selectionGroup", "ref"}]
       88 LOADB                            R14 1
       89 SETTABLEKS                       R14 R13 K22 ["hasArrow"]
       91 GETTABLEKS                       R14 R2 K23 ["align"]
       93 SETTABLEKS                       R14 R13 K23 ["align"]
       95 DUPTABLE                         R14 K33 [{"position", "offset"}]
       96 GETTABLEKS                       R15 R2 K24 ["side"]
       98 SETTABLEKS                       R15 R14 K31 ["position"]
      100 GETTABLEKS                       R16 R3 K6 ["Size"]
      102 GETTABLEKS                       R15 R16 K34 ["Size_200"]
      104 SETTABLEKS                       R15 R14 K32 ["offset"]
      106 SETTABLEKS                       R14 R13 K24 ["side"]
      108 GETUPVAL                         R15 12
      109 GETTABLEKS                       R14 R15 K35 ["Medium"]
      111 SETTABLEKS                       R14 R13 K25 ["radius"]
      113 GETTABLEKS                       R16 R3 K36 ["Inverse"]
      115 GETTABLEKS                       R15 R16 K37 ["Surface"]
      117 GETTABLEKS                       R14 R15 K38 ["Surface_0"]
      119 SETTABLEKS                       R14 R13 K26 ["backgroundStyle"]
      121 GETTABLEKS                       R14 R2 K27 ["selection"]
      123 SETTABLEKS                       R14 R13 K27 ["selection"]
      125 GETTABLEKS                       R14 R2 K28 ["selectionGroup"]
      127 SETTABLEKS                       R14 R13 K28 ["selectionGroup"]
      129 SETTABLEKS                       R1 R13 K29 ["ref"]
      131 GETUPVAL                         R15 4
      132 GETTABLEKS                       R14 R15 K12 ["createElement"]
      134 GETUPVAL                         R16 13
      135 GETTABLEKS                       R15 R16 K39 ["Provider"]
      137 DUPTABLE                         R16 K41 [{"value"}]
      138 DUPTABLE                         R17 K43 [{"colorMode"}]
      139 GETUPVAL                         R19 14
      140 GETTABLEKS                       R18 R19 K36 ["Inverse"]
      142 SETTABLEKS                       R18 R17 K42 ["colorMode"]
      144 SETTABLEKS                       R17 R16 K40 ["value"]
      146 GETUPVAL                         R18 4
      147 GETTABLEKS                       R17 R18 K12 ["createElement"]
      149 GETUPVAL                         R18 15
      150 DUPTABLE                         R19 K46 [{"tag", "sizeConstraint"}]
      151 LOADK                            R20 K47 ["col gap-medium auto-xy padding-bottom-medium"]
      152 SETTABLEKS                       R20 R19 K44 ["tag"]
      154 DUPTABLE                         R20 K2 [{"MaxSize"}]
      155 GETIMPORT                        R21 K5 [Vector2.new]
      157 MOVE                             R22 R4
      158 LOADK                            R23 K8 [∞]
      159 CALL                             R21 2 1
      160 SETTABLEKS                       R21 R20 K1 ["MaxSize"]
      162 SETTABLEKS                       R20 R19 K45 ["sizeConstraint"]
      164 DUPTABLE                         R20 K52 [{"CloseAffordanceContainer", "Media", "ContentSection", "Actions"}]
      165 GETTABLEKS                       R22 R2 K0 ["onClose"]
      167 JUMPIFNOT                        R22 ; [+63]
      168 GETUPVAL                         R22 4
      169 GETTABLEKS                       R21 R22 K12 ["createElement"]
      171 LOADK                            R22 K53 ["Folder"]
      172 NEWTABLE                         R23 0 0
      174 DUPTABLE                         R24 K55 [{"CloseAffordance"}]
      175 GETUPVAL                         R26 4
      176 GETTABLEKS                       R25 R26 K12 ["createElement"]
      178 GETUPVAL                         R26 16
      179 DUPTABLE                         R27 K61 [{"onActivated", "size", "variant", "Position", "AnchorPoint", "testId"}]
      180 GETTABLEKS                       R28 R2 K0 ["onClose"]
      182 SETTABLEKS                       R28 R27 K56 ["onActivated"]
      184 GETUPVAL                         R29 6
      185 GETTABLEKS                       R28 R29 K62 ["Small"]
      187 SETTABLEKS                       R28 R27 K57 ["size"]
      189 GETUPVAL                         R29 17
      190 GETTABLEKS                       R28 R29 K63 ["Utility"]
      192 SETTABLEKS                       R28 R27 K58 ["variant"]
      194 GETIMPORT                        R28 K65 [UDim2.new]
      196 LOADN                            R29 1
      197 GETTABLEKS                       R32 R3 K66 ["Padding"]
      199 GETTABLEKS                       R31 R32 K62 ["Small"]
      201 MINUS                            R30 R31
      202 LOADN                            R31 0
      203 GETTABLEKS                       R33 R3 K66 ["Padding"]
      205 GETTABLEKS                       R32 R33 K62 ["Small"]
      207 CALL                             R28 4 1
      208 SETTABLEKS                       R28 R27 K59 ["Position"]
      210 GETIMPORT                        R28 K5 [Vector2.new]
      212 LOADN                            R29 1
      213 LOADN                            R30 0
      214 CALL                             R28 2 1
      215 SETTABLEKS                       R28 R27 K60 ["AnchorPoint"]
      217 LOADK                            R29 K67 ["%*--close-affordance"]
      218 GETTABLEKS                       R31 R2 K11 ["testId"]
      220 NAMECALL                         R29 R29 K68 ["format"]
      222 CALL                             R29 2 1
      223 MOVE                             R28 R29
      224 SETTABLEKS                       R28 R27 K11 ["testId"]
      226 CALL                             R25 2 1
      227 SETTABLEKS                       R25 R24 K54 ["CloseAffordance"]
      229 CALL                             R21 3 1
      230 JUMP                             ; [+1]
      231 LOADNIL                          R21
      232 SETTABLEKS                       R21 R20 K48 ["CloseAffordanceContainer"]
      234 GETTABLEKS                       R22 R2 K69 ["media"]
      236 JUMPIFNOT                        R22 ; [+15]
      237 GETUPVAL                         R22 4
      238 GETTABLEKS                       R21 R22 K12 ["createElement"]
      240 GETUPVAL                         R22 15
      241 DUPTABLE                         R23 K71 [{"LayoutOrder", "tag"}]
      242 LOADN                            R24 1
      243 SETTABLEKS                       R24 R23 K70 ["LayoutOrder"]
      245 LOADK                            R24 K72 ["size-full-0 auto-y"]
      246 SETTABLEKS                       R24 R23 K44 ["tag"]
      248 GETTABLEKS                       R24 R2 K69 ["media"]
      250 CALL                             R21 3 1
      251 JUMP                             ; [+1]
      252 LOADNIL                          R21
      253 SETTABLEKS                       R21 R20 K49 ["Media"]
      255 GETUPVAL                         R22 4
      256 GETTABLEKS                       R21 R22 K12 ["createElement"]
      258 GETUPVAL                         R22 15
      259 DUPTABLE                         R23 K71 [{"LayoutOrder", "tag"}]
      260 LOADN                            R24 2
      261 SETTABLEKS                       R24 R23 K70 ["LayoutOrder"]
      263 LOADK                            R24 K73 ["col gap-xsmall auto-xy padding-x-medium padding-bottom-xsmall padding-top-medium"]
      264 SETTABLEKS                       R24 R23 K44 ["tag"]
      266 DUPTABLE                         R24 K77 [{"StepIndicator", "Header", "Text"}]
      267 GETTABLEKS                       R26 R2 K78 ["steps"]
      269 JUMPIFNOT                        R26 ; [+45]
      270 GETUPVAL                         R26 4
      271 GETTABLEKS                       R25 R26 K12 ["createElement"]
      273 GETUPVAL                         R26 18
      274 DUPTABLE                         R27 K79 [{"LayoutOrder", "Text", "tag", "sizeConstraint", "testId"}]
      275 LOADN                            R28 1
      276 SETTABLEKS                       R28 R27 K70 ["LayoutOrder"]
      278 GETTABLEKS                       R30 R2 K78 ["steps"]
      280 GETTABLEKS                       R29 R30 K80 ["current"]
      282 GETTABLEKS                       R31 R2 K78 ["steps"]
      284 GETTABLEKS                       R30 R31 K81 ["total"]
      286 GETUPVAL                         R31 19
      287 LOADK                            R33 K82 ["CommonUI.Controls.Label.PageCount"]
      288 DUPTABLE                         R34 K83 [{"current", "total"}]
      289 SETTABLEKS                       R29 R34 K80 ["current"]
      291 SETTABLEKS                       R30 R34 K81 ["total"]
      293 NAMECALL                         R31 R31 K84 ["FormatByKey"]
      295 CALL                             R31 3 1
      296 MOVE                             R28 R31
      297 SETTABLEKS                       R28 R27 K76 ["Text"]
      299 LOADK                            R28 K85 ["auto-xy text-label-small text-align-x-left text-truncate-end content-inverse-default"]
      300 SETTABLEKS                       R28 R27 K44 ["tag"]
      302 SETTABLEKS                       R5 R27 K45 ["sizeConstraint"]
      304 LOADK                            R29 K86 ["%*--step-indicator"]
      305 GETTABLEKS                       R31 R2 K11 ["testId"]
      307 NAMECALL                         R29 R29 K68 ["format"]
      309 CALL                             R29 2 1
      310 MOVE                             R28 R29
      311 SETTABLEKS                       R28 R27 K11 ["testId"]
      313 CALL                             R25 2 1
      314 JUMP                             ; [+1]
      315 LOADNIL                          R25
      316 SETTABLEKS                       R25 R24 K74 ["StepIndicator"]
      318 GETTABLEKS                       R26 R2 K87 ["title"]
      320 JUMPIFEQKS                       R26 K88 [""] ; [+29]
      322 GETUPVAL                         R26 4
      323 GETTABLEKS                       R25 R26 K12 ["createElement"]
      325 GETUPVAL                         R26 18
      326 DUPTABLE                         R27 K79 [{"LayoutOrder", "Text", "tag", "sizeConstraint", "testId"}]
      327 LOADN                            R28 2
      328 SETTABLEKS                       R28 R27 K70 ["LayoutOrder"]
      330 GETTABLEKS                       R28 R2 K87 ["title"]
      332 SETTABLEKS                       R28 R27 K76 ["Text"]
      334 LOADK                            R28 K89 ["auto-xy text-title-large text-align-x-left text-truncate-split content-inverse-emphasis"]
      335 SETTABLEKS                       R28 R27 K44 ["tag"]
      337 SETTABLEKS                       R5 R27 K45 ["sizeConstraint"]
      339 LOADK                            R29 K90 ["%*--header"]
      340 GETTABLEKS                       R31 R2 K11 ["testId"]
      342 NAMECALL                         R29 R29 K68 ["format"]
      344 CALL                             R29 2 1
      345 MOVE                             R28 R29
      346 SETTABLEKS                       R28 R27 K11 ["testId"]
      348 CALL                             R25 2 1
      349 JUMP                             ; [+1]
      350 LOADNIL                          R25
      351 SETTABLEKS                       R25 R24 K75 ["Header"]
      353 GETTABLEKS                       R26 R2 K91 ["text"]
      355 JUMPIFNOT                        R26 ; [+30]
      356 GETTABLEKS                       R26 R2 K91 ["text"]
      358 JUMPIFEQKS                       R26 K88 [""] ; [+27]
      360 GETUPVAL                         R26 4
      361 GETTABLEKS                       R25 R26 K12 ["createElement"]
      363 GETUPVAL                         R26 18
      364 DUPTABLE                         R27 K92 [{"LayoutOrder", "Text", "tag", "testId"}]
      365 LOADN                            R28 3
      366 SETTABLEKS                       R28 R27 K70 ["LayoutOrder"]
      368 GETTABLEKS                       R28 R2 K91 ["text"]
      370 SETTABLEKS                       R28 R27 K76 ["Text"]
      372 LOADK                            R28 K93 ["size-full-0 auto-y text-body-medium text-wrap text-align-x-left content-inverse-default"]
      373 SETTABLEKS                       R28 R27 K44 ["tag"]
      375 LOADK                            R29 K94 ["%*--text"]
      376 GETTABLEKS                       R31 R2 K11 ["testId"]
      378 NAMECALL                         R29 R29 K68 ["format"]
      380 CALL                             R29 2 1
      381 MOVE                             R28 R29
      382 SETTABLEKS                       R28 R27 K11 ["testId"]
      384 CALL                             R25 2 1
      385 JUMP                             ; [+1]
      386 LOADNIL                          R25
      387 SETTABLEKS                       R25 R24 K76 ["Text"]
      389 CALL                             R21 3 1
      390 SETTABLEKS                       R21 R20 K50 ["ContentSection"]
      392 GETTABLEKS                       R22 R2 K10 ["actions"]
      394 JUMPIFNOT                        R22 ; [+20]
      395 GETTABLEKS                       R23 R2 K10 ["actions"]
      397 LENGTH                           R22 R23
      398 LOADN                            R23 0
      399 JUMPIFNOTLT                      R23 R22 ; [+15]
      401 GETUPVAL                         R22 4
      402 GETTABLEKS                       R21 R22 K12 ["createElement"]
      404 GETUPVAL                         R22 15
      405 DUPTABLE                         R23 K71 [{"LayoutOrder", "tag"}]
      406 LOADN                            R24 3
      407 SETTABLEKS                       R24 R23 K70 ["LayoutOrder"]
      409 LOADK                            R24 K95 ["row gap-small size-full-0 auto-y padding-x-medium"]
      410 SETTABLEKS                       R24 R23 K44 ["tag"]
      412 MOVE                             R24 R6
      413 CALL                             R21 3 1
      414 JUMP                             ; [+1]
      415 LOADNIL                          R21
      416 SETTABLEKS                       R21 R20 K51 ["Actions"]
      418 CALL                             R17 3 -1
      419 CALL                             R14 -1 -1
      420 CALL                             R11 -1 1
      421 SETTABLEKS                       R11 R10 K17 ["Content"]
      423 CALL                             R7 3 -1
      424 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Button"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["CloseAffordance"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K12 ["Enums"]
       37 GETTABLEKS                       R7 R8 K13 ["CloseAffordanceVariant"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K12 ["Enums"]
       44 GETTABLEKS                       R8 R9 K14 ["ColorMode"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K12 ["Enums"]
       51 GETTABLEKS                       R9 R10 K15 ["FillBehavior"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R11 R0 K12 ["Enums"]
       58 GETTABLEKS                       R10 R11 K16 ["InputSize"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R12 R0 K17 ["Utility"]
       65 GETTABLEKS                       R11 R12 K18 ["Logger"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R13 R0 K12 ["Enums"]
       72 GETTABLEKS                       R12 R13 K19 ["PopoverAlign"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R14 R0 K12 ["Enums"]
       79 GETTABLEKS                       R13 R14 K20 ["PopoverSide"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R16 R0 K21 ["Providers"]
       86 GETTABLEKS                       R15 R16 K22 ["Style"]
       88 GETTABLEKS                       R14 R15 K23 ["PresentationContext"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R16 R0 K12 ["Enums"]
       95 GETTABLEKS                       R15 R16 K24 ["Radius"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETTABLEKS                       R17 R0 K9 ["Components"]
      102 GETTABLEKS                       R16 R17 K25 ["Text"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K6 [require]
      107 GETTABLEKS                       R19 R0 K17 ["Utility"]
      109 GETTABLEKS                       R18 R19 K26 ["Localization"]
      111 GETTABLEKS                       R17 R18 K27 ["Translator"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K6 [require]
      116 GETTABLEKS                       R19 R0 K9 ["Components"]
      118 GETTABLEKS                       R18 R19 K28 ["Types"]
      120 CALL                             R17 1 1
      121 GETIMPORT                        R18 K6 [require]
      123 GETTABLEKS                       R20 R0 K9 ["Components"]
      125 GETTABLEKS                       R19 R20 K29 ["View"]
      127 CALL                             R18 1 1
      128 GETIMPORT                        R19 K6 [require]
      130 GETTABLEKS                       R21 R0 K17 ["Utility"]
      132 GETTABLEKS                       R20 R21 K30 ["useScaledValue"]
      134 CALL                             R19 1 1
      135 GETIMPORT                        R20 K6 [require]
      137 GETTABLEKS                       R23 R0 K21 ["Providers"]
      139 GETTABLEKS                       R22 R23 K22 ["Style"]
      141 GETTABLEKS                       R21 R22 K31 ["useTokens"]
      143 CALL                             R20 1 1
      144 GETIMPORT                        R21 K6 [require]
      146 GETTABLEKS                       R23 R0 K17 ["Utility"]
      148 GETTABLEKS                       R22 R23 K32 ["withCommonProps"]
      150 CALL                             R21 1 1
      151 GETIMPORT                        R22 K6 [require]
      153 GETTABLEKS                       R24 R0 K17 ["Utility"]
      155 GETTABLEKS                       R23 R24 K33 ["withDefaults"]
      157 CALL                             R22 1 1
      158 GETIMPORT                        R23 K6 [require]
      160 GETTABLEKS                       R25 R0 K9 ["Components"]
      162 GETTABLEKS                       R24 R25 K34 ["Popover"]
      164 CALL                             R23 1 1
      165 DUPTABLE                         R24 K39 [{"isOpen", "align", "side", "testId"}]
      166 LOADB                            R25 0
      167 SETTABLEKS                       R25 R24 K35 ["isOpen"]
      169 GETTABLEKS                       R25 R11 K40 ["Start"]
      171 SETTABLEKS                       R25 R24 K36 ["align"]
      173 GETTABLEKS                       R25 R12 K41 ["Right"]
      175 SETTABLEKS                       R25 R24 K37 ["side"]
      177 LOADK                            R25 K42 ["--foundation-coachmark"]
      178 SETTABLEKS                       R25 R24 K38 ["testId"]
      180 DUPCLOSURE                       R25 K43 [PROTO_0]
      181 CAPTURE                          VAL R16
      182 DUPCLOSURE                       R26 K44 [PROTO_2]
      183 CAPTURE                          VAL R22
      184 CAPTURE                          VAL R24
      185 CAPTURE                          VAL R20
      186 CAPTURE                          VAL R19
      187 CAPTURE                          VAL R3
      188 CAPTURE                          VAL R10
      189 CAPTURE                          VAL R9
      190 CAPTURE                          VAL R8
      191 CAPTURE                          VAL R2
      192 CAPTURE                          VAL R4
      193 CAPTURE                          VAL R23
      194 CAPTURE                          VAL R21
      195 CAPTURE                          VAL R14
      196 CAPTURE                          VAL R13
      197 CAPTURE                          VAL R7
      198 CAPTURE                          VAL R18
      199 CAPTURE                          VAL R5
      200 CAPTURE                          VAL R6
      201 CAPTURE                          VAL R15
      202 CAPTURE                          VAL R16
      203 GETTABLEKS                       R27 R3 K45 ["memo"]
      205 GETTABLEKS                       R28 R3 K46 ["forwardRef"]
      207 MOVE                             R29 R26
      208 CALL                             R28 1 -1
      209 CALL                             R27 -1 -1
      210 RETURN                           R27 -1
