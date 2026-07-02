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
       37 NEWTABLE                         R8 0 2
       39 GETTABLEKS                       R9 R2 K10 ["actions"]
       41 GETTABLEKS                       R10 R2 K11 ["testId"]
       43 SETLIST                          R8 R9 2 [1]
       45 CALL                             R6 2 1
       46 GETUPVAL                         R7 4
       47 GETTABLEKS                       R7 R7 K12 ["createElement"]
       49 GETUPVAL                         R8 10
       50 GETTABLEKS                       R8 R8 K13 ["Root"]
       52 DUPTABLE                         R9 K15 [{"isOpen", "testId"}]
       53 GETTABLEKS                       R10 R2 K14 ["isOpen"]
       55 SETTABLEKS                       R10 R9 K14 ["isOpen"]
       57 GETTABLEKS                       R10 R2 K11 ["testId"]
       59 SETTABLEKS                       R10 R9 K11 ["testId"]
       61 DUPTABLE                         R10 K18 [{"Anchor", "Content"}]
       62 GETUPVAL                         R11 4
       63 GETTABLEKS                       R11 R11 K12 ["createElement"]
       65 GETUPVAL                         R12 10
       66 GETTABLEKS                       R12 R12 K16 ["Anchor"]
       68 GETUPVAL                         R13 11
       69 MOVE                             R14 R2
       70 DUPTABLE                         R15 K20 [{"anchorRef"}]
       71 GETTABLEKS                       R16 R2 K19 ["anchorRef"]
       73 SETTABLEKS                       R16 R15 K19 ["anchorRef"]
       75 CALL                             R13 2 1
       76 GETTABLEKS                       R14 R2 K21 ["children"]
       78 CALL                             R11 3 1
       79 SETTABLEKS                       R11 R10 K16 ["Anchor"]
       81 GETUPVAL                         R11 4
       82 GETTABLEKS                       R11 R11 K12 ["createElement"]
       84 GETUPVAL                         R12 10
       85 GETTABLEKS                       R12 R12 K17 ["Content"]
       87 DUPTABLE                         R13 K32 [{["hasArrow"] = True, ["align"], ["DO_NOT_USE_hasContentInputSink"], ["side"], ["radius"], ["backgroundStyle"], ["selection"], ["selectionGroup"], ["ref"]}]
       88 GETTABLEKS                       R14 R2 K24 ["align"]
       90 SETTABLEKS                       R14 R13 K24 ["align"]
       92 GETUPVAL                         R14 12
       93 GETTABLEKS                       R14 R14 K33 ["FoundationCoachmarkInteractionFixes"]
       95 SETTABLEKS                       R14 R13 K25 ["DO_NOT_USE_hasContentInputSink"]
       97 DUPTABLE                         R14 K36 [{"position", "offset"}]
       98 GETTABLEKS                       R15 R2 K26 ["side"]
      100 SETTABLEKS                       R15 R14 K34 ["position"]
      102 GETTABLEKS                       R15 R3 K6 ["Size"]
      104 GETTABLEKS                       R15 R15 K37 ["Size_200"]
      106 SETTABLEKS                       R15 R14 K35 ["offset"]
      108 SETTABLEKS                       R14 R13 K26 ["side"]
      110 GETUPVAL                         R14 13
      111 GETTABLEKS                       R14 R14 K38 ["Medium"]
      113 SETTABLEKS                       R14 R13 K27 ["radius"]
      115 GETTABLEKS                       R14 R3 K39 ["Inverse"]
      117 GETTABLEKS                       R14 R14 K40 ["Surface"]
      119 GETTABLEKS                       R14 R14 K41 ["Surface_0"]
      121 SETTABLEKS                       R14 R13 K28 ["backgroundStyle"]
      123 GETTABLEKS                       R14 R2 K29 ["selection"]
      125 SETTABLEKS                       R14 R13 K29 ["selection"]
      127 GETTABLEKS                       R14 R2 K30 ["selectionGroup"]
      129 SETTABLEKS                       R14 R13 K30 ["selectionGroup"]
      131 SETTABLEKS                       R1 R13 K31 ["ref"]
      133 GETUPVAL                         R14 4
      134 GETTABLEKS                       R14 R14 K12 ["createElement"]
      136 GETUPVAL                         R15 14
      137 GETTABLEKS                       R15 R15 K42 ["Provider"]
      139 DUPTABLE                         R16 K44 [{"value"}]
      140 DUPTABLE                         R17 K46 [{"colorMode"}]
      141 GETUPVAL                         R18 15
      142 GETTABLEKS                       R18 R18 K39 ["Inverse"]
      144 SETTABLEKS                       R18 R17 K45 ["colorMode"]
      146 SETTABLEKS                       R17 R16 K43 ["value"]
      148 GETUPVAL                         R17 4
      149 GETTABLEKS                       R17 R17 K12 ["createElement"]
      151 GETUPVAL                         R18 16
      152 DUPTABLE                         R19 K50 [{["tag"] = "col gap-medium auto-xy padding-bottom-medium", ["sizeConstraint"]}]
      153 DUPTABLE                         R20 K2 [{"MaxSize"}]
      154 GETIMPORT                        R21 K5 [Vector2.new]
      156 MOVE                             R22 R4
      157 LOADK                            R23 K8 [∞]
      158 CALL                             R21 2 1
      159 SETTABLEKS                       R21 R20 K1 ["MaxSize"]
      161 SETTABLEKS                       R20 R19 K49 ["sizeConstraint"]
      163 DUPTABLE                         R20 K55 [{"CloseAffordanceContainer", "Media", "ContentSection", "Actions"}]
      164 GETTABLEKS                       R22 R2 K0 ["onClose"]
      166 JUMPIFNOT                        R22 ; [+72]
      167 GETUPVAL                         R21 4
      168 GETTABLEKS                       R21 R21 K12 ["createElement"]
      170 LOADK                            R22 K56 ["Folder"]
      171 NEWTABLE                         R23 0 0
      173 DUPTABLE                         R24 K58 [{"CloseAffordance"}]
      174 GETUPVAL                         R25 4
      175 GETTABLEKS                       R25 R25 K12 ["createElement"]
      177 GETUPVAL                         R26 17
      178 DUPTABLE                         R27 K65 [{"onActivated", "size", "variant", "Position", "AnchorPoint", "ZIndex", "testId"}]
      179 GETTABLEKS                       R28 R2 K0 ["onClose"]
      181 SETTABLEKS                       R28 R27 K59 ["onActivated"]
      183 GETUPVAL                         R28 6
      184 GETTABLEKS                       R28 R28 K66 ["Small"]
      186 SETTABLEKS                       R28 R27 K60 ["size"]
      188 GETUPVAL                         R28 18
      189 GETTABLEKS                       R28 R28 K67 ["Utility"]
      191 SETTABLEKS                       R28 R27 K61 ["variant"]
      193 GETIMPORT                        R28 K69 [UDim2.new]
      195 LOADN                            R29 1
      196 GETTABLEKS                       R31 R3 K70 ["Padding"]
      198 GETTABLEKS                       R31 R31 K66 ["Small"]
      200 MINUS                            R30 R31
      201 LOADN                            R31 0
      202 GETTABLEKS                       R32 R3 K70 ["Padding"]
      204 GETTABLEKS                       R32 R32 K66 ["Small"]
      206 CALL                             R28 4 1
      207 SETTABLEKS                       R28 R27 K62 ["Position"]
      209 GETIMPORT                        R28 K5 [Vector2.new]
      211 LOADN                            R29 1
      212 LOADN                            R30 0
      213 CALL                             R28 2 1
      214 SETTABLEKS                       R28 R27 K63 ["AnchorPoint"]
      216 GETUPVAL                         R29 12
      217 GETTABLEKS                       R29 R29 K33 ["FoundationCoachmarkInteractionFixes"]
      219 JUMPIFNOT                        R29 ; [+2]
      220 LOADN                            R28 2
      221 JUMP                             ; [+1]
      222 LOADNIL                          R28
      223 SETTABLEKS                       R28 R27 K64 ["ZIndex"]
      225 LOADK                            R29 K71 ["%*--close-affordance"]
      226 GETTABLEKS                       R31 R2 K11 ["testId"]
      228 NAMECALL                         R29 R29 K72 ["format"]
      230 CALL                             R29 2 1
      231 MOVE                             R28 R29
      232 SETTABLEKS                       R28 R27 K11 ["testId"]
      234 CALL                             R25 2 1
      235 SETTABLEKS                       R25 R24 K57 ["CloseAffordance"]
      237 CALL                             R21 3 1
      238 JUMP                             ; [+1]
      239 LOADNIL                          R21
      240 SETTABLEKS                       R21 R20 K51 ["CloseAffordanceContainer"]
      242 GETTABLEKS                       R22 R2 K73 ["media"]
      244 JUMPIFNOT                        R22 ; [+9]
      245 GETUPVAL                         R21 4
      246 GETTABLEKS                       R21 R21 K12 ["createElement"]
      248 GETUPVAL                         R22 16
      249 DUPTABLE                         R23 K77 [{["LayoutOrder"] = 1, ["tag"] = "size-full-0 auto-y"}]
      250 GETTABLEKS                       R24 R2 K73 ["media"]
      252 CALL                             R21 3 1
      253 JUMP                             ; [+1]
      254 LOADNIL                          R21
      255 SETTABLEKS                       R21 R20 K52 ["Media"]
      257 GETUPVAL                         R21 4
      258 GETTABLEKS                       R21 R21 K12 ["createElement"]
      260 GETUPVAL                         R22 16
      261 DUPTABLE                         R23 K80 [{["LayoutOrder"] = 2, ["tag"] = "col gap-xsmall auto-xy padding-x-medium padding-bottom-xsmall padding-top-medium"}]
      262 DUPTABLE                         R24 K84 [{"StepIndicator", "Header", "Text"}]
      263 GETTABLEKS                       R26 R2 K85 ["steps"]
      265 JUMPIFNOT                        R26 ; [+39]
      266 GETUPVAL                         R25 4
      267 GETTABLEKS                       R25 R25 K12 ["createElement"]
      269 GETUPVAL                         R26 19
      270 DUPTABLE                         R27 K87 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-xy text-label-small text-align-x-left text-truncate-end content-inverse-default", ["sizeConstraint"], ["testId"]}]
      271 GETTABLEKS                       R29 R2 K85 ["steps"]
      273 GETTABLEKS                       R29 R29 K88 ["current"]
      275 GETTABLEKS                       R30 R2 K85 ["steps"]
      277 GETTABLEKS                       R30 R30 K89 ["total"]
      279 GETUPVAL                         R31 20
      280 LOADK                            R33 K90 ["CommonUI.Controls.Label.PageCount"]
      281 DUPTABLE                         R34 K91 [{"current", "total"}]
      282 SETTABLEKS                       R29 R34 K88 ["current"]
      284 SETTABLEKS                       R30 R34 K89 ["total"]
      286 NAMECALL                         R31 R31 K92 ["FormatByKey"]
      288 CALL                             R31 3 1
      289 MOVE                             R28 R31
      290 SETTABLEKS                       R28 R27 K83 ["Text"]
      292 SETTABLEKS                       R5 R27 K49 ["sizeConstraint"]
      294 LOADK                            R29 K93 ["%*--step-indicator"]
      295 GETTABLEKS                       R31 R2 K11 ["testId"]
      297 NAMECALL                         R29 R29 K72 ["format"]
      299 CALL                             R29 2 1
      300 MOVE                             R28 R29
      301 SETTABLEKS                       R28 R27 K11 ["testId"]
      303 CALL                             R25 2 1
      304 JUMP                             ; [+1]
      305 LOADNIL                          R25
      306 SETTABLEKS                       R25 R24 K81 ["StepIndicator"]
      308 GETTABLEKS                       R26 R2 K94 ["title"]
      310 JUMPIFEQKS                       R26 K95 [""] ; [+23]
      312 GETUPVAL                         R25 4
      313 GETTABLEKS                       R25 R25 K12 ["createElement"]
      315 GETUPVAL                         R26 19
      316 DUPTABLE                         R27 K97 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "auto-xy text-title-large text-align-x-left text-truncate-split content-inverse-emphasis", ["sizeConstraint"], ["testId"]}]
      317 GETTABLEKS                       R28 R2 K94 ["title"]
      319 SETTABLEKS                       R28 R27 K83 ["Text"]
      321 SETTABLEKS                       R5 R27 K49 ["sizeConstraint"]
      323 LOADK                            R29 K98 ["%*--header"]
      324 GETTABLEKS                       R31 R2 K11 ["testId"]
      326 NAMECALL                         R29 R29 K72 ["format"]
      328 CALL                             R29 2 1
      329 MOVE                             R28 R29
      330 SETTABLEKS                       R28 R27 K11 ["testId"]
      332 CALL                             R25 2 1
      333 JUMP                             ; [+1]
      334 LOADNIL                          R25
      335 SETTABLEKS                       R25 R24 K82 ["Header"]
      337 GETTABLEKS                       R26 R2 K99 ["text"]
      339 JUMPIFNOT                        R26 ; [+24]
      340 GETTABLEKS                       R26 R2 K99 ["text"]
      342 JUMPIFEQKS                       R26 K95 [""] ; [+21]
      344 GETUPVAL                         R25 4
      345 GETTABLEKS                       R25 R25 K12 ["createElement"]
      347 GETUPVAL                         R26 19
      348 DUPTABLE                         R27 K102 [{["LayoutOrder"] = 3, ["Text"], ["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left content-inverse-default", ["testId"]}]
      349 GETTABLEKS                       R28 R2 K99 ["text"]
      351 SETTABLEKS                       R28 R27 K83 ["Text"]
      353 LOADK                            R29 K103 ["%*--text"]
      354 GETTABLEKS                       R31 R2 K11 ["testId"]
      356 NAMECALL                         R29 R29 K72 ["format"]
      358 CALL                             R29 2 1
      359 MOVE                             R28 R29
      360 SETTABLEKS                       R28 R27 K11 ["testId"]
      362 CALL                             R25 2 1
      363 JUMP                             ; [+1]
      364 LOADNIL                          R25
      365 SETTABLEKS                       R25 R24 K83 ["Text"]
      367 CALL                             R21 3 1
      368 SETTABLEKS                       R21 R20 K53 ["ContentSection"]
      370 GETTABLEKS                       R22 R2 K10 ["actions"]
      372 JUMPIFNOT                        R22 ; [+14]
      373 GETTABLEKS                       R23 R2 K10 ["actions"]
      375 LENGTH                           R22 R23
      376 LOADN                            R23 0
      377 JUMPIFNOTLT                      R23 R22 ; [+9]
      379 GETUPVAL                         R21 4
      380 GETTABLEKS                       R21 R21 K12 ["createElement"]
      382 GETUPVAL                         R22 16
      383 DUPTABLE                         R23 K105 [{["LayoutOrder"] = 3, ["tag"] = "row gap-small size-full-0 auto-y padding-x-medium"}]
      384 MOVE                             R24 R6
      385 CALL                             R21 3 1
      386 JUMP                             ; [+1]
      387 LOADNIL                          R21
      388 SETTABLEKS                       R21 R20 K54 ["Actions"]
      390 CALL                             R17 3 -1
      391 CALL                             R14 -1 -1
      392 CALL                             R11 -1 1
      393 SETTABLEKS                       R11 R10 K17 ["Content"]
      395 CALL                             R7 3 -1
      396 RETURN                           R7 -1

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
       56 GETTABLEKS                       R10 R0 K16 ["Utility"]
       58 GETTABLEKS                       R10 R10 K17 ["Flags"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K12 ["Enums"]
       65 GETTABLEKS                       R11 R11 K18 ["InputSize"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K16 ["Utility"]
       72 GETTABLEKS                       R12 R12 K19 ["Logger"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K12 ["Enums"]
       79 GETTABLEKS                       R13 R13 K20 ["PopoverAlign"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K12 ["Enums"]
       86 GETTABLEKS                       R14 R14 K21 ["PopoverSide"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R15 R0 K22 ["Providers"]
       93 GETTABLEKS                       R15 R15 K23 ["Style"]
       95 GETTABLEKS                       R15 R15 K24 ["PresentationContext"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETTABLEKS                       R16 R0 K12 ["Enums"]
      102 GETTABLEKS                       R16 R16 K25 ["Radius"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K6 [require]
      107 GETTABLEKS                       R17 R0 K9 ["Components"]
      109 GETTABLEKS                       R17 R17 K26 ["Text"]
      111 CALL                             R16 1 1
      112 GETIMPORT                        R17 K6 [require]
      114 GETTABLEKS                       R18 R0 K16 ["Utility"]
      116 GETTABLEKS                       R18 R18 K27 ["Localization"]
      118 GETTABLEKS                       R18 R18 K28 ["Translator"]
      120 CALL                             R17 1 1
      121 GETIMPORT                        R18 K6 [require]
      123 GETTABLEKS                       R19 R0 K9 ["Components"]
      125 GETTABLEKS                       R19 R19 K29 ["Types"]
      127 CALL                             R18 1 1
      128 GETIMPORT                        R19 K6 [require]
      130 GETTABLEKS                       R20 R0 K9 ["Components"]
      132 GETTABLEKS                       R20 R20 K30 ["View"]
      134 CALL                             R19 1 1
      135 GETIMPORT                        R20 K6 [require]
      137 GETTABLEKS                       R21 R0 K16 ["Utility"]
      139 GETTABLEKS                       R21 R21 K31 ["useScaledValue"]
      141 CALL                             R20 1 1
      142 GETIMPORT                        R21 K6 [require]
      144 GETTABLEKS                       R22 R0 K22 ["Providers"]
      146 GETTABLEKS                       R22 R22 K23 ["Style"]
      148 GETTABLEKS                       R22 R22 K32 ["useTokens"]
      150 CALL                             R21 1 1
      151 GETIMPORT                        R22 K6 [require]
      153 GETTABLEKS                       R23 R0 K16 ["Utility"]
      155 GETTABLEKS                       R23 R23 K33 ["withCommonProps"]
      157 CALL                             R22 1 1
      158 GETIMPORT                        R23 K6 [require]
      160 GETTABLEKS                       R24 R0 K16 ["Utility"]
      162 GETTABLEKS                       R24 R24 K34 ["withDefaults"]
      164 CALL                             R23 1 1
      165 GETIMPORT                        R24 K6 [require]
      167 GETTABLEKS                       R25 R0 K9 ["Components"]
      169 GETTABLEKS                       R25 R25 K35 ["Popover"]
      171 CALL                             R24 1 1
      172 DUPTABLE                         R25 K42 [{["isOpen"] = False, ["align"], ["side"], ["testId"] = "--foundation-coachmark"}]
      173 GETTABLEKS                       R26 R12 K43 ["Start"]
      175 SETTABLEKS                       R26 R25 K38 ["align"]
      177 GETTABLEKS                       R26 R13 K44 ["Right"]
      179 SETTABLEKS                       R26 R25 K39 ["side"]
      181 DUPCLOSURE                       R26 K45 [PROTO_0]
      182 CAPTURE                          VAL R17
      183 DUPCLOSURE                       R27 K46 [PROTO_2]
      184 CAPTURE                          VAL R23
      185 CAPTURE                          VAL R25
      186 CAPTURE                          VAL R21
      187 CAPTURE                          VAL R20
      188 CAPTURE                          VAL R3
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R10
      191 CAPTURE                          VAL R8
      192 CAPTURE                          VAL R2
      193 CAPTURE                          VAL R4
      194 CAPTURE                          VAL R24
      195 CAPTURE                          VAL R22
      196 CAPTURE                          VAL R9
      197 CAPTURE                          VAL R15
      198 CAPTURE                          VAL R14
      199 CAPTURE                          VAL R7
      200 CAPTURE                          VAL R19
      201 CAPTURE                          VAL R5
      202 CAPTURE                          VAL R6
      203 CAPTURE                          VAL R16
      204 CAPTURE                          VAL R17
      205 GETTABLEKS                       R28 R3 K47 ["memo"]
      207 GETTABLEKS                       R29 R3 K48 ["forwardRef"]
      209 MOVE                             R30 R27
      210 CALL                             R29 1 -1
      211 CALL                             R28 -1 -1
      212 RETURN                           R28 -1
