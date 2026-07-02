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
        7 LOADN                            R4 320
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
       87 DUPTABLE                         R12 K30 [{["hasArrow"] = True, ["align"], ["side"], ["radius"], ["backgroundStyle"], ["selection"], ["selectionGroup"]}]
       88 GETTABLEKS                       R13 R1 K24 ["align"]
       90 SETTABLEKS                       R13 R12 K24 ["align"]
       92 DUPTABLE                         R13 K33 [{"position", "offset"}]
       93 GETTABLEKS                       R14 R1 K25 ["side"]
       95 SETTABLEKS                       R14 R13 K31 ["position"]
       97 GETTABLEKS                       R14 R2 K6 ["Size"]
       99 GETTABLEKS                       R14 R14 K34 ["Size_200"]
      101 SETTABLEKS                       R14 R13 K32 ["offset"]
      103 SETTABLEKS                       R13 R12 K25 ["side"]
      105 GETUPVAL                         R13 14
      106 GETTABLEKS                       R13 R13 K35 ["Medium"]
      108 SETTABLEKS                       R13 R12 K26 ["radius"]
      110 GETTABLEKS                       R13 R2 K36 ["Inverse"]
      112 GETTABLEKS                       R13 R13 K37 ["Surface"]
      114 GETTABLEKS                       R13 R13 K38 ["Surface_0"]
      116 SETTABLEKS                       R13 R12 K27 ["backgroundStyle"]
      118 GETTABLEKS                       R13 R1 K28 ["selection"]
      120 SETTABLEKS                       R13 R12 K28 ["selection"]
      122 GETTABLEKS                       R13 R1 K29 ["selectionGroup"]
      124 SETTABLEKS                       R13 R12 K29 ["selectionGroup"]
      126 GETUPVAL                         R13 4
      127 GETTABLEKS                       R13 R13 K11 ["createElement"]
      129 GETUPVAL                         R14 15
      130 GETTABLEKS                       R14 R14 K39 ["Provider"]
      132 DUPTABLE                         R15 K41 [{"value"}]
      133 DUPTABLE                         R16 K43 [{"colorMode"}]
      134 GETUPVAL                         R17 16
      135 GETTABLEKS                       R17 R17 K36 ["Inverse"]
      137 SETTABLEKS                       R17 R16 K42 ["colorMode"]
      139 SETTABLEKS                       R16 R15 K40 ["value"]
      141 GETUPVAL                         R16 4
      142 GETTABLEKS                       R16 R16 K11 ["createElement"]
      144 GETUPVAL                         R17 17
      145 DUPTABLE                         R18 K47 [{["tag"] = "col auto-xy gap-medium padding-bottom-medium", ["sizeConstraint"]}]
      146 DUPTABLE                         R19 K2 [{"MaxSize"}]
      147 GETIMPORT                        R20 K5 [Vector2.new]
      149 MOVE                             R21 R3
      150 LOADK                            R22 K8 [∞]
      151 CALL                             R20 2 1
      152 SETTABLEKS                       R20 R19 K1 ["MaxSize"]
      154 SETTABLEKS                       R19 R18 K46 ["sizeConstraint"]
      156 DUPTABLE                         R19 K52 [{"CloseAffordanceContainer", "Media", "ContentSection", "Actions"}]
      157 GETTABLEKS                       R21 R1 K0 ["onClose"]
      159 JUMPIFNOT                        R21 ; [+63]
      160 GETUPVAL                         R20 4
      161 GETTABLEKS                       R20 R20 K11 ["createElement"]
      163 LOADK                            R21 K53 ["Folder"]
      164 NEWTABLE                         R22 0 0
      166 DUPTABLE                         R23 K55 [{"CloseAffordance"}]
      167 GETUPVAL                         R24 4
      168 GETTABLEKS                       R24 R24 K11 ["createElement"]
      170 GETUPVAL                         R25 18
      171 DUPTABLE                         R26 K61 [{"onActivated", "size", "variant", "Position", "AnchorPoint", "testId"}]
      172 GETTABLEKS                       R27 R1 K0 ["onClose"]
      174 SETTABLEKS                       R27 R26 K56 ["onActivated"]
      176 GETUPVAL                         R27 6
      177 GETTABLEKS                       R27 R27 K62 ["Small"]
      179 SETTABLEKS                       R27 R26 K57 ["size"]
      181 GETUPVAL                         R27 19
      182 GETTABLEKS                       R27 R27 K63 ["Utility"]
      184 SETTABLEKS                       R27 R26 K58 ["variant"]
      186 GETIMPORT                        R27 K65 [UDim2.new]
      188 LOADN                            R28 1
      189 GETTABLEKS                       R30 R2 K66 ["Padding"]
      191 GETTABLEKS                       R30 R30 K62 ["Small"]
      193 MINUS                            R29 R30
      194 LOADN                            R30 0
      195 GETTABLEKS                       R31 R2 K66 ["Padding"]
      197 GETTABLEKS                       R31 R31 K62 ["Small"]
      199 CALL                             R27 4 1
      200 SETTABLEKS                       R27 R26 K59 ["Position"]
      202 GETIMPORT                        R27 K5 [Vector2.new]
      204 LOADN                            R28 1
      205 LOADN                            R29 0
      206 CALL                             R27 2 1
      207 SETTABLEKS                       R27 R26 K60 ["AnchorPoint"]
      209 LOADK                            R28 K67 ["%*--close-affordance"]
      210 GETTABLEKS                       R30 R1 K14 ["testId"]
      212 NAMECALL                         R28 R28 K68 ["format"]
      214 CALL                             R28 2 1
      215 MOVE                             R27 R28
      216 SETTABLEKS                       R27 R26 K14 ["testId"]
      218 CALL                             R24 2 1
      219 SETTABLEKS                       R24 R23 K54 ["CloseAffordance"]
      221 CALL                             R20 3 1
      222 JUMP                             ; [+1]
      223 LOADNIL                          R20
      224 SETTABLEKS                       R20 R19 K48 ["CloseAffordanceContainer"]
      226 GETTABLEKS                       R21 R1 K69 ["media"]
      228 JUMPIFNOT                        R21 ; [+9]
      229 GETUPVAL                         R20 4
      230 GETTABLEKS                       R20 R20 K11 ["createElement"]
      232 GETUPVAL                         R21 17
      233 DUPTABLE                         R22 K73 [{["LayoutOrder"] = 1, ["tag"] = "size-full-0 auto-y"}]
      234 GETTABLEKS                       R23 R1 K69 ["media"]
      236 CALL                             R20 3 1
      237 JUMP                             ; [+1]
      238 LOADNIL                          R20
      239 SETTABLEKS                       R20 R19 K49 ["Media"]
      241 GETUPVAL                         R20 4
      242 GETTABLEKS                       R20 R20 K11 ["createElement"]
      244 GETUPVAL                         R21 17
      245 DUPTABLE                         R22 K76 [{["LayoutOrder"] = 2, ["tag"] = "col gap-xsmall auto-xy padding-top-medium padding-x-medium padding-bottom-xsmall"}]
      246 DUPTABLE                         R23 K80 [{"StepIndicator", "Header", "Text"}]
      247 GETTABLEKS                       R25 R1 K81 ["steps"]
      249 JUMPIFNOT                        R25 ; [+39]
      250 GETUPVAL                         R24 4
      251 GETTABLEKS                       R24 R24 K11 ["createElement"]
      253 GETUPVAL                         R25 20
      254 DUPTABLE                         R26 K83 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-xy text-label-small text-align-x-left content-inverse-default text-truncate-end", ["sizeConstraint"], ["testId"]}]
      255 GETTABLEKS                       R28 R1 K81 ["steps"]
      257 GETTABLEKS                       R28 R28 K84 ["current"]
      259 GETTABLEKS                       R29 R1 K81 ["steps"]
      261 GETTABLEKS                       R29 R29 K85 ["total"]
      263 GETUPVAL                         R30 21
      264 LOADK                            R32 K86 ["CommonUI.Controls.Label.PageCount"]
      265 DUPTABLE                         R33 K87 [{"current", "total"}]
      266 SETTABLEKS                       R28 R33 K84 ["current"]
      268 SETTABLEKS                       R29 R33 K85 ["total"]
      270 NAMECALL                         R30 R30 K88 ["FormatByKey"]
      272 CALL                             R30 3 1
      273 MOVE                             R27 R30
      274 SETTABLEKS                       R27 R26 K79 ["Text"]
      276 SETTABLEKS                       R4 R26 K46 ["sizeConstraint"]
      278 LOADK                            R28 K89 ["%*--step-indicator"]
      279 GETTABLEKS                       R30 R1 K14 ["testId"]
      281 NAMECALL                         R28 R28 K68 ["format"]
      283 CALL                             R28 2 1
      284 MOVE                             R27 R28
      285 SETTABLEKS                       R27 R26 K14 ["testId"]
      287 CALL                             R24 2 1
      288 JUMP                             ; [+1]
      289 LOADNIL                          R24
      290 SETTABLEKS                       R24 R23 K77 ["StepIndicator"]
      292 GETUPVAL                         R24 4
      293 GETTABLEKS                       R24 R24 K11 ["createElement"]
      295 GETUPVAL                         R25 20
      296 DUPTABLE                         R26 K91 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "auto-xy text-title-large text-align-x-left content-inverse-emphasis text-truncate-split", ["sizeConstraint"], ["testId"]}]
      297 GETTABLEKS                       R27 R1 K92 ["title"]
      299 SETTABLEKS                       R27 R26 K79 ["Text"]
      301 SETTABLEKS                       R4 R26 K46 ["sizeConstraint"]
      303 LOADK                            R28 K93 ["%*--header"]
      304 GETTABLEKS                       R30 R1 K14 ["testId"]
      306 NAMECALL                         R28 R28 K68 ["format"]
      308 CALL                             R28 2 1
      309 MOVE                             R27 R28
      310 SETTABLEKS                       R27 R26 K14 ["testId"]
      312 CALL                             R24 2 1
      313 SETTABLEKS                       R24 R23 K78 ["Header"]
      315 GETTABLEKS                       R25 R1 K94 ["text"]
      317 JUMPIFNOT                        R25 ; [+24]
      318 GETTABLEKS                       R25 R1 K94 ["text"]
      320 JUMPIFEQKS                       R25 K95 [""] ; [+21]
      322 GETUPVAL                         R24 4
      323 GETTABLEKS                       R24 R24 K11 ["createElement"]
      325 GETUPVAL                         R25 20
      326 DUPTABLE                         R26 K98 [{["LayoutOrder"] = 3, ["Text"], ["tag"] = "size-full-0 auto-y text-wrap text-align-x-left text-body-medium content-inverse-default", ["testId"]}]
      327 GETTABLEKS                       R27 R1 K94 ["text"]
      329 SETTABLEKS                       R27 R26 K79 ["Text"]
      331 LOADK                            R28 K99 ["%*--text"]
      332 GETTABLEKS                       R30 R1 K14 ["testId"]
      334 NAMECALL                         R28 R28 K68 ["format"]
      336 CALL                             R28 2 1
      337 MOVE                             R27 R28
      338 SETTABLEKS                       R27 R26 K14 ["testId"]
      340 CALL                             R24 2 1
      341 JUMP                             ; [+1]
      342 LOADNIL                          R24
      343 SETTABLEKS                       R24 R23 K79 ["Text"]
      345 CALL                             R20 3 1
      346 SETTABLEKS                       R20 R19 K50 ["ContentSection"]
      348 GETTABLEKS                       R21 R1 K10 ["actions"]
      350 JUMPIFNOT                        R21 ; [+14]
      351 GETTABLEKS                       R22 R1 K10 ["actions"]
      353 LENGTH                           R21 R22
      354 LOADN                            R22 0
      355 JUMPIFNOTLT                      R22 R21 ; [+9]
      357 GETUPVAL                         R20 4
      358 GETTABLEKS                       R20 R20 K11 ["createElement"]
      360 GETUPVAL                         R21 17
      361 DUPTABLE                         R22 K101 [{["LayoutOrder"] = 3, ["tag"] = "row gap-small auto-y padding-x-medium size-full-0"}]
      362 MOVE                             R23 R5
      363 CALL                             R20 3 1
      364 JUMP                             ; [+1]
      365 LOADNIL                          R20
      366 SETTABLEKS                       R20 R19 K51 ["Actions"]
      368 CALL                             R16 3 -1
      369 CALL                             R13 -1 -1
      370 CALL                             R10 -1 1
      371 SETTABLEKS                       R10 R9 K17 ["Content"]
      373 CALL                             R6 3 -1
      374 RETURN                           R6 -1

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
      177 DUPTABLE                         R26 K43 [{["isOpen"] = False, ["align"], ["side"], ["testId"] = "--foundation-coachmark"}]
      178 GETTABLEKS                       R27 R16 K44 ["Start"]
      180 SETTABLEKS                       R27 R26 K39 ["align"]
      182 GETTABLEKS                       R27 R15 K45 ["Right"]
      184 SETTABLEKS                       R27 R26 K40 ["side"]
      186 DUPCLOSURE                       R27 K46 [PROTO_0]
      187 CAPTURE                          VAL R23
      188 DUPCLOSURE                       R28 K47 [PROTO_2]
      189 CAPTURE                          VAL R10
      190 CAPTURE                          VAL R26
      191 CAPTURE                          VAL R12
      192 CAPTURE                          VAL R21
      193 CAPTURE                          VAL R2
      194 CAPTURE                          VAL R22
      195 CAPTURE                          VAL R18
      196 CAPTURE                          VAL R19
      197 CAPTURE                          VAL R24
      198 CAPTURE                          VAL R4
      199 CAPTURE                          VAL R3
      200 CAPTURE                          VAL R8
      201 CAPTURE                          VAL R25
      202 CAPTURE                          VAL R11
      203 CAPTURE                          VAL R17
      204 CAPTURE                          VAL R13
      205 CAPTURE                          VAL R14
      206 CAPTURE                          VAL R6
      207 CAPTURE                          VAL R9
      208 CAPTURE                          VAL R20
      209 CAPTURE                          VAL R7
      210 CAPTURE                          VAL R23
      211 GETTABLEKS                       R29 R2 K48 ["memo"]
      213 MOVE                             R30 R28
      214 CALL                             R29 1 -1
      215 RETURN                           R29 -1
