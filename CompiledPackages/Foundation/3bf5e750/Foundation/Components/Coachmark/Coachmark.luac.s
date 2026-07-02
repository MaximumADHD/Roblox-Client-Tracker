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
       51 GETUPVAL                         R7 4
       52 GETTABLEKS                       R7 R7 K12 ["union"]
       54 MOVE                             R8 R5
       55 MOVE                             R9 R6
       56 CALL                             R7 2 1
       57 LOADK                            R9 K13 ["CoachmarkButton"]
       58 MOVE                             R10 R4
       59 CONCAT                           R8 R9 R10
       60 GETUPVAL                         R9 5
       61 GETTABLEKS                       R9 R9 K14 ["createElement"]
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
        7 LOADN                            R5 320
        8 CALL                             R4 1 1
        9 GETTABLEKS                       R6 R2 K0 ["onClose"]
       11 JUMPIFNOT                        R6 ; [+13]
       12 DUPTABLE                         R5 K2 [{"MaxSize"}]
       13 GETIMPORT                        R6 K5 [Vector2.new]
       15 GETTABLEKS                       R8 R3 K6 ["Size"]
       17 GETTABLEKS                       R8 R8 K7 ["Size_1200"]
       19 SUB                              R7 R4 R8
       20 LOADK                            R8 K8 [∞]
       21 CALL                             R6 2 1
       22 SETTABLEKS                       R6 R5 K1 ["MaxSize"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R5
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R6 R6 K9 ["useMemo"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          VAL R2
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          UPVAL U7
       34 CAPTURE                          UPVAL U8
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U9
       37 NEWTABLE                         R8 0 1
       39 GETTABLEKS                       R9 R2 K10 ["actions"]
       41 SETLIST                          R8 R9 1 [1]
       43 CALL                             R6 2 1
       44 GETUPVAL                         R7 4
       45 GETTABLEKS                       R7 R7 K11 ["createElement"]
       47 GETUPVAL                         R8 10
       48 GETTABLEKS                       R8 R8 K12 ["Root"]
       50 DUPTABLE                         R9 K15 [{"isOpen", "testId"}]
       51 GETTABLEKS                       R10 R2 K13 ["isOpen"]
       53 SETTABLEKS                       R10 R9 K13 ["isOpen"]
       55 GETTABLEKS                       R10 R2 K14 ["testId"]
       57 SETTABLEKS                       R10 R9 K14 ["testId"]
       59 DUPTABLE                         R10 K18 [{"Anchor", "Content"}]
       60 GETUPVAL                         R11 4
       61 GETTABLEKS                       R11 R11 K11 ["createElement"]
       63 GETUPVAL                         R12 10
       64 GETTABLEKS                       R12 R12 K16 ["Anchor"]
       66 GETUPVAL                         R13 11
       67 MOVE                             R14 R2
       68 DUPTABLE                         R15 K20 [{"anchorRef"}]
       69 GETTABLEKS                       R16 R2 K19 ["anchorRef"]
       71 SETTABLEKS                       R16 R15 K19 ["anchorRef"]
       73 CALL                             R13 2 1
       74 GETTABLEKS                       R14 R2 K21 ["children"]
       76 CALL                             R11 3 1
       77 SETTABLEKS                       R11 R10 K16 ["Anchor"]
       79 GETUPVAL                         R11 4
       80 GETTABLEKS                       R11 R11 K11 ["createElement"]
       82 GETUPVAL                         R12 10
       83 GETTABLEKS                       R12 R12 K17 ["Content"]
       85 DUPTABLE                         R13 K31 [{["hasArrow"] = True, ["align"], ["side"], ["radius"], ["backgroundStyle"], ["selection"], ["selectionGroup"], ["ref"]}]
       86 GETTABLEKS                       R14 R2 K24 ["align"]
       88 SETTABLEKS                       R14 R13 K24 ["align"]
       90 DUPTABLE                         R14 K34 [{"position", "offset"}]
       91 GETTABLEKS                       R15 R2 K25 ["side"]
       93 SETTABLEKS                       R15 R14 K32 ["position"]
       95 GETTABLEKS                       R15 R3 K6 ["Size"]
       97 GETTABLEKS                       R15 R15 K35 ["Size_200"]
       99 SETTABLEKS                       R15 R14 K33 ["offset"]
      101 SETTABLEKS                       R14 R13 K25 ["side"]
      103 GETUPVAL                         R14 12
      104 GETTABLEKS                       R14 R14 K36 ["Medium"]
      106 SETTABLEKS                       R14 R13 K26 ["radius"]
      108 GETTABLEKS                       R14 R3 K37 ["Inverse"]
      110 GETTABLEKS                       R14 R14 K38 ["Surface"]
      112 GETTABLEKS                       R14 R14 K39 ["Surface_0"]
      114 SETTABLEKS                       R14 R13 K27 ["backgroundStyle"]
      116 GETTABLEKS                       R14 R2 K28 ["selection"]
      118 SETTABLEKS                       R14 R13 K28 ["selection"]
      120 GETTABLEKS                       R14 R2 K29 ["selectionGroup"]
      122 SETTABLEKS                       R14 R13 K29 ["selectionGroup"]
      124 SETTABLEKS                       R1 R13 K30 ["ref"]
      126 GETUPVAL                         R14 4
      127 GETTABLEKS                       R14 R14 K11 ["createElement"]
      129 GETUPVAL                         R15 13
      130 GETTABLEKS                       R15 R15 K40 ["Provider"]
      132 DUPTABLE                         R16 K42 [{"value"}]
      133 DUPTABLE                         R17 K44 [{"colorMode"}]
      134 GETUPVAL                         R18 14
      135 GETTABLEKS                       R18 R18 K37 ["Inverse"]
      137 SETTABLEKS                       R18 R17 K43 ["colorMode"]
      139 SETTABLEKS                       R17 R16 K41 ["value"]
      141 GETUPVAL                         R17 4
      142 GETTABLEKS                       R17 R17 K11 ["createElement"]
      144 GETUPVAL                         R18 15
      145 DUPTABLE                         R19 K48 [{["tag"] = "col auto-xy gap-medium padding-bottom-medium", ["sizeConstraint"]}]
      146 DUPTABLE                         R20 K2 [{"MaxSize"}]
      147 GETIMPORT                        R21 K5 [Vector2.new]
      149 MOVE                             R22 R4
      150 LOADK                            R23 K8 [∞]
      151 CALL                             R21 2 1
      152 SETTABLEKS                       R21 R20 K1 ["MaxSize"]
      154 SETTABLEKS                       R20 R19 K47 ["sizeConstraint"]
      156 DUPTABLE                         R20 K53 [{"CloseAffordanceContainer", "Media", "ContentSection", "Actions"}]
      157 GETTABLEKS                       R22 R2 K0 ["onClose"]
      159 JUMPIFNOT                        R22 ; [+63]
      160 GETUPVAL                         R21 4
      161 GETTABLEKS                       R21 R21 K11 ["createElement"]
      163 LOADK                            R22 K54 ["Folder"]
      164 NEWTABLE                         R23 0 0
      166 DUPTABLE                         R24 K56 [{"CloseAffordance"}]
      167 GETUPVAL                         R25 4
      168 GETTABLEKS                       R25 R25 K11 ["createElement"]
      170 GETUPVAL                         R26 16
      171 DUPTABLE                         R27 K62 [{"onActivated", "size", "variant", "Position", "AnchorPoint", "testId"}]
      172 GETTABLEKS                       R28 R2 K0 ["onClose"]
      174 SETTABLEKS                       R28 R27 K57 ["onActivated"]
      176 GETUPVAL                         R28 6
      177 GETTABLEKS                       R28 R28 K63 ["Small"]
      179 SETTABLEKS                       R28 R27 K58 ["size"]
      181 GETUPVAL                         R28 17
      182 GETTABLEKS                       R28 R28 K64 ["Utility"]
      184 SETTABLEKS                       R28 R27 K59 ["variant"]
      186 GETIMPORT                        R28 K66 [UDim2.new]
      188 LOADN                            R29 1
      189 GETTABLEKS                       R31 R3 K67 ["Padding"]
      191 GETTABLEKS                       R31 R31 K63 ["Small"]
      193 MINUS                            R30 R31
      194 LOADN                            R31 0
      195 GETTABLEKS                       R32 R3 K67 ["Padding"]
      197 GETTABLEKS                       R32 R32 K63 ["Small"]
      199 CALL                             R28 4 1
      200 SETTABLEKS                       R28 R27 K60 ["Position"]
      202 GETIMPORT                        R28 K5 [Vector2.new]
      204 LOADN                            R29 1
      205 LOADN                            R30 0
      206 CALL                             R28 2 1
      207 SETTABLEKS                       R28 R27 K61 ["AnchorPoint"]
      209 LOADK                            R29 K68 ["%*--close-affordance"]
      210 GETTABLEKS                       R31 R2 K14 ["testId"]
      212 NAMECALL                         R29 R29 K69 ["format"]
      214 CALL                             R29 2 1
      215 MOVE                             R28 R29
      216 SETTABLEKS                       R28 R27 K14 ["testId"]
      218 CALL                             R25 2 1
      219 SETTABLEKS                       R25 R24 K55 ["CloseAffordance"]
      221 CALL                             R21 3 1
      222 JUMP                             ; [+1]
      223 LOADNIL                          R21
      224 SETTABLEKS                       R21 R20 K49 ["CloseAffordanceContainer"]
      226 GETTABLEKS                       R22 R2 K70 ["media"]
      228 JUMPIFNOT                        R22 ; [+9]
      229 GETUPVAL                         R21 4
      230 GETTABLEKS                       R21 R21 K11 ["createElement"]
      232 GETUPVAL                         R22 15
      233 DUPTABLE                         R23 K74 [{["LayoutOrder"] = 1, ["tag"] = "size-full-0 auto-y"}]
      234 GETTABLEKS                       R24 R2 K70 ["media"]
      236 CALL                             R21 3 1
      237 JUMP                             ; [+1]
      238 LOADNIL                          R21
      239 SETTABLEKS                       R21 R20 K50 ["Media"]
      241 GETUPVAL                         R21 4
      242 GETTABLEKS                       R21 R21 K11 ["createElement"]
      244 GETUPVAL                         R22 15
      245 DUPTABLE                         R23 K77 [{["LayoutOrder"] = 2, ["tag"] = "col gap-xsmall auto-xy padding-top-medium padding-x-medium padding-bottom-xsmall"}]
      246 DUPTABLE                         R24 K81 [{"StepIndicator", "Header", "Text"}]
      247 GETTABLEKS                       R26 R2 K82 ["steps"]
      249 JUMPIFNOT                        R26 ; [+39]
      250 GETUPVAL                         R25 4
      251 GETTABLEKS                       R25 R25 K11 ["createElement"]
      253 GETUPVAL                         R26 18
      254 DUPTABLE                         R27 K84 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-xy text-label-small text-align-x-left content-inverse-default text-truncate-end", ["sizeConstraint"], ["testId"]}]
      255 GETTABLEKS                       R29 R2 K82 ["steps"]
      257 GETTABLEKS                       R29 R29 K85 ["current"]
      259 GETTABLEKS                       R30 R2 K82 ["steps"]
      261 GETTABLEKS                       R30 R30 K86 ["total"]
      263 GETUPVAL                         R31 19
      264 LOADK                            R33 K87 ["CommonUI.Controls.Label.PageCount"]
      265 DUPTABLE                         R34 K88 [{"current", "total"}]
      266 SETTABLEKS                       R29 R34 K85 ["current"]
      268 SETTABLEKS                       R30 R34 K86 ["total"]
      270 NAMECALL                         R31 R31 K89 ["FormatByKey"]
      272 CALL                             R31 3 1
      273 MOVE                             R28 R31
      274 SETTABLEKS                       R28 R27 K80 ["Text"]
      276 SETTABLEKS                       R5 R27 K47 ["sizeConstraint"]
      278 LOADK                            R29 K90 ["%*--step-indicator"]
      279 GETTABLEKS                       R31 R2 K14 ["testId"]
      281 NAMECALL                         R29 R29 K69 ["format"]
      283 CALL                             R29 2 1
      284 MOVE                             R28 R29
      285 SETTABLEKS                       R28 R27 K14 ["testId"]
      287 CALL                             R25 2 1
      288 JUMP                             ; [+1]
      289 LOADNIL                          R25
      290 SETTABLEKS                       R25 R24 K78 ["StepIndicator"]
      292 GETUPVAL                         R25 4
      293 GETTABLEKS                       R25 R25 K11 ["createElement"]
      295 GETUPVAL                         R26 18
      296 DUPTABLE                         R27 K92 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "auto-xy text-title-large text-align-x-left content-inverse-emphasis text-truncate-split", ["sizeConstraint"], ["testId"]}]
      297 GETTABLEKS                       R28 R2 K93 ["title"]
      299 SETTABLEKS                       R28 R27 K80 ["Text"]
      301 SETTABLEKS                       R5 R27 K47 ["sizeConstraint"]
      303 LOADK                            R29 K94 ["%*--header"]
      304 GETTABLEKS                       R31 R2 K14 ["testId"]
      306 NAMECALL                         R29 R29 K69 ["format"]
      308 CALL                             R29 2 1
      309 MOVE                             R28 R29
      310 SETTABLEKS                       R28 R27 K14 ["testId"]
      312 CALL                             R25 2 1
      313 SETTABLEKS                       R25 R24 K79 ["Header"]
      315 GETTABLEKS                       R26 R2 K95 ["text"]
      317 JUMPIFNOT                        R26 ; [+24]
      318 GETTABLEKS                       R26 R2 K95 ["text"]
      320 JUMPIFEQKS                       R26 K96 [""] ; [+21]
      322 GETUPVAL                         R25 4
      323 GETTABLEKS                       R25 R25 K11 ["createElement"]
      325 GETUPVAL                         R26 18
      326 DUPTABLE                         R27 K99 [{["LayoutOrder"] = 3, ["Text"], ["tag"] = "size-full-0 auto-y text-wrap text-align-x-left text-body-medium content-inverse-default", ["testId"]}]
      327 GETTABLEKS                       R28 R2 K95 ["text"]
      329 SETTABLEKS                       R28 R27 K80 ["Text"]
      331 LOADK                            R29 K100 ["%*--text"]
      332 GETTABLEKS                       R31 R2 K14 ["testId"]
      334 NAMECALL                         R29 R29 K69 ["format"]
      336 CALL                             R29 2 1
      337 MOVE                             R28 R29
      338 SETTABLEKS                       R28 R27 K14 ["testId"]
      340 CALL                             R25 2 1
      341 JUMP                             ; [+1]
      342 LOADNIL                          R25
      343 SETTABLEKS                       R25 R24 K80 ["Text"]
      345 CALL                             R21 3 1
      346 SETTABLEKS                       R21 R20 K51 ["ContentSection"]
      348 GETTABLEKS                       R22 R2 K10 ["actions"]
      350 JUMPIFNOT                        R22 ; [+14]
      351 GETTABLEKS                       R23 R2 K10 ["actions"]
      353 LENGTH                           R22 R23
      354 LOADN                            R23 0
      355 JUMPIFNOTLT                      R23 R22 ; [+9]
      357 GETUPVAL                         R21 4
      358 GETTABLEKS                       R21 R21 K11 ["createElement"]
      360 GETUPVAL                         R22 15
      361 DUPTABLE                         R23 K102 [{["LayoutOrder"] = 3, ["tag"] = "row gap-small auto-y padding-x-medium size-full-0"}]
      362 MOVE                             R24 R6
      363 CALL                             R21 3 1
      364 JUMP                             ; [+1]
      365 LOADNIL                          R21
      366 SETTABLEKS                       R21 R20 K52 ["Actions"]
      368 CALL                             R17 3 -1
      369 CALL                             R14 -1 -1
      370 CALL                             R11 -1 1
      371 SETTABLEKS                       R11 R10 K17 ["Content"]
      373 CALL                             R7 3 -1
      374 RETURN                           R7 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Button"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["CloseAffordance"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Enums"]
       37 GETTABLEKS                       R7 R7 K13 ["CloseAffordanceVariant"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K12 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["ColorMode"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K12 ["Enums"]
       51 GETTABLEKS                       R9 R9 K15 ["FillBehavior"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K12 ["Enums"]
       58 GETTABLEKS                       R10 R10 K16 ["InputSize"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K17 ["Utility"]
       65 GETTABLEKS                       R11 R11 K18 ["Logger"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K12 ["Enums"]
       72 GETTABLEKS                       R12 R12 K19 ["PopoverAlign"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K12 ["Enums"]
       79 GETTABLEKS                       R13 R13 K20 ["PopoverSide"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K21 ["Providers"]
       86 GETTABLEKS                       R14 R14 K22 ["Style"]
       88 GETTABLEKS                       R14 R14 K23 ["PresentationContext"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R15 R0 K12 ["Enums"]
       95 GETTABLEKS                       R15 R15 K24 ["Radius"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETTABLEKS                       R16 R0 K9 ["Components"]
      102 GETTABLEKS                       R16 R16 K25 ["Text"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K6 [require]
      107 GETTABLEKS                       R17 R0 K17 ["Utility"]
      109 GETTABLEKS                       R17 R17 K26 ["Localization"]
      111 GETTABLEKS                       R17 R17 K27 ["Translator"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K6 [require]
      116 GETTABLEKS                       R18 R0 K9 ["Components"]
      118 GETTABLEKS                       R18 R18 K28 ["Types"]
      120 CALL                             R17 1 1
      121 GETIMPORT                        R18 K6 [require]
      123 GETTABLEKS                       R19 R0 K9 ["Components"]
      125 GETTABLEKS                       R19 R19 K29 ["View"]
      127 CALL                             R18 1 1
      128 GETIMPORT                        R19 K6 [require]
      130 GETTABLEKS                       R20 R0 K17 ["Utility"]
      132 GETTABLEKS                       R20 R20 K30 ["useScaledValue"]
      134 CALL                             R19 1 1
      135 GETIMPORT                        R20 K6 [require]
      137 GETTABLEKS                       R21 R0 K21 ["Providers"]
      139 GETTABLEKS                       R21 R21 K22 ["Style"]
      141 GETTABLEKS                       R21 R21 K31 ["useTokens"]
      143 CALL                             R20 1 1
      144 GETIMPORT                        R21 K6 [require]
      146 GETTABLEKS                       R22 R0 K17 ["Utility"]
      148 GETTABLEKS                       R22 R22 K32 ["withCommonProps"]
      150 CALL                             R21 1 1
      151 GETIMPORT                        R22 K6 [require]
      153 GETTABLEKS                       R23 R0 K17 ["Utility"]
      155 GETTABLEKS                       R23 R23 K33 ["withDefaults"]
      157 CALL                             R22 1 1
      158 GETIMPORT                        R23 K6 [require]
      160 GETTABLEKS                       R24 R0 K9 ["Components"]
      162 GETTABLEKS                       R24 R24 K34 ["Popover"]
      164 CALL                             R23 1 1
      165 DUPTABLE                         R24 K41 [{["isOpen"] = False, ["align"], ["side"], ["testId"] = "--foundation-coachmark"}]
      166 GETTABLEKS                       R25 R11 K42 ["Start"]
      168 SETTABLEKS                       R25 R24 K37 ["align"]
      170 GETTABLEKS                       R25 R12 K43 ["Right"]
      172 SETTABLEKS                       R25 R24 K38 ["side"]
      174 DUPCLOSURE                       R25 K44 [PROTO_0]
      175 CAPTURE                          VAL R16
      176 DUPCLOSURE                       R26 K45 [PROTO_2]
      177 CAPTURE                          VAL R22
      178 CAPTURE                          VAL R24
      179 CAPTURE                          VAL R20
      180 CAPTURE                          VAL R19
      181 CAPTURE                          VAL R3
      182 CAPTURE                          VAL R10
      183 CAPTURE                          VAL R9
      184 CAPTURE                          VAL R8
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R4
      187 CAPTURE                          VAL R23
      188 CAPTURE                          VAL R21
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R13
      191 CAPTURE                          VAL R7
      192 CAPTURE                          VAL R18
      193 CAPTURE                          VAL R5
      194 CAPTURE                          VAL R6
      195 CAPTURE                          VAL R15
      196 CAPTURE                          VAL R16
      197 GETTABLEKS                       R27 R3 K46 ["memo"]
      199 GETTABLEKS                       R28 R3 K47 ["forwardRef"]
      201 MOVE                             R29 R26
      202 CALL                             R28 1 -1
      203 CALL                             R27 -1 -1
      204 RETURN                           R27 -1
