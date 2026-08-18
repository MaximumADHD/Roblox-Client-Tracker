PROTO_0:
        0 DUPTABLE                         R1 K4 [{"AuthorId", "Contents", "CreationTimeUnix", "TaggedUsers"}]
        1 GETTABLEKS                       R2 R0 K0 ["AuthorId"]
        3 SETTABLEKS                       R2 R1 K0 ["AuthorId"]
        5 GETTABLEKS                       R2 R0 K1 ["Contents"]
        7 SETTABLEKS                       R2 R1 K1 ["Contents"]
        9 GETTABLEKS                       R2 R0 K2 ["CreationTimeUnix"]
       11 SETTABLEKS                       R2 R1 K2 ["CreationTimeUnix"]
       13 GETTABLEKS                       R2 R0 K3 ["TaggedUsers"]
       15 SETTABLEKS                       R2 R1 K3 ["TaggedUsers"]
       17 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["TargetComment"]
        4 JUMPIFNOT                        R2 ; [+21]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["TargetComment"]
        8 DUPTABLE                         R1 K5 [{"AuthorId", "Contents", "CreationTimeUnix", "TaggedUsers"}]
        9 GETTABLEKS                       R3 R2 K1 ["AuthorId"]
       11 SETTABLEKS                       R3 R1 K1 ["AuthorId"]
       13 GETTABLEKS                       R3 R2 K2 ["Contents"]
       15 SETTABLEKS                       R3 R1 K2 ["Contents"]
       17 GETTABLEKS                       R3 R2 K3 ["CreationTimeUnix"]
       19 SETTABLEKS                       R3 R1 K3 ["CreationTimeUnix"]
       21 GETTABLEKS                       R3 R2 K4 ["TaggedUsers"]
       23 SETTABLEKS                       R3 R1 K4 ["TaggedUsers"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R1
       27 CALL                             R0 1 0
       28 GETUPVAL                         R0 2
       29 LOADNIL                          R1
       30 CALL                             R0 1 0
       31 GETUPVAL                         R0 3
       32 LOADK                            R1 K6 [""]
       33 CALL                             R0 1 0
       34 GETUPVAL                         R0 4
       35 LOADK                            R1 K6 [""]
       36 CALL                             R0 1 0
       37 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSubmit"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLE                         R1 R2 R3
        6 GETUPVAL                         R2 3
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["OnSelectComment"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Hooks"]
        7 GETTABLEKS                       R2 R2 K2 ["useTokens"]
        9 CALL                             R2 0 1
       10 GETTABLEKS                       R4 R0 K3 ["IsSubmitting"]
       12 JUMPIFEQKB                       R4 TRUE ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K4 ["useState"]
       19 GETTABLEKS                       R6 R0 K5 ["TargetComment"]
       21 JUMPIFNOT                        R6 ; [+20]
       22 GETTABLEKS                       R6 R0 K5 ["TargetComment"]
       24 DUPTABLE                         R5 K10 [{"AuthorId", "Contents", "CreationTimeUnix", "TaggedUsers"}]
       25 GETTABLEKS                       R7 R6 K6 ["AuthorId"]
       27 SETTABLEKS                       R7 R5 K6 ["AuthorId"]
       29 GETTABLEKS                       R7 R6 K7 ["Contents"]
       31 SETTABLEKS                       R7 R5 K7 ["Contents"]
       33 GETTABLEKS                       R7 R6 K8 ["CreationTimeUnix"]
       35 SETTABLEKS                       R7 R5 K8 ["CreationTimeUnix"]
       37 GETTABLEKS                       R7 R6 K9 ["TaggedUsers"]
       39 SETTABLEKS                       R7 R5 K9 ["TaggedUsers"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R5
       43 CALL                             R4 1 2
       44 GETUPVAL                         R6 2
       45 GETTABLEKS                       R6 R6 K4 ["useState"]
       47 LOADNIL                          R7
       48 CALL                             R6 1 2
       49 GETUPVAL                         R8 2
       50 GETTABLEKS                       R8 R8 K4 ["useState"]
       52 LOADK                            R9 K11 [""]
       53 CALL                             R8 1 2
       54 GETUPVAL                         R10 2
       55 GETTABLEKS                       R10 R10 K4 ["useState"]
       57 LOADK                            R11 K11 [""]
       58 CALL                             R10 1 2
       59 GETUPVAL                         R12 2
       60 GETTABLEKS                       R12 R12 K12 ["useEffect"]
       62 NEWCLOSURE                       R13 P0
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R11
       68 NEWTABLE                         R14 0 1
       70 GETTABLEKS                       R15 R0 K5 ["TargetComment"]
       72 SETLIST                          R14 R15 1 [1]
       74 CALL                             R12 2 0
       75 LOADNIL                          R12
       76 LOADB                            R13 1
       77 NEWCLOSURE                       R14 P1
       78 CAPTURE                          VAL R0
       79 CAPTURE                          UPVAL U3
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R10
       82 GETTABLEKS                       R15 R0 K13 ["Step"]
       84 GETUPVAL                         R16 4
       85 GETTABLEKS                       R16 R16 K14 ["CommentPicker"]
       87 JUMPIFNOTEQ                      R15 R16 ; [+28]
       89 GETUPVAL                         R15 2
       90 GETTABLEKS                       R15 R15 K15 ["createElement"]
       92 GETUPVAL                         R16 5
       93 GETTABLEKS                       R16 R16 K14 ["CommentPicker"]
       95 DUPTABLE                         R17 K19 [{"Thread", "SelectedComment", "OnSelectedCommentChanged"}]
       96 GETTABLEKS                       R18 R0 K16 ["Thread"]
       98 SETTABLEKS                       R18 R17 K16 ["Thread"]
      100 SETTABLEKS                       R6 R17 K17 ["SelectedComment"]
      102 NEWCLOSURE                       R18 P2
      103 CAPTURE                          VAL R7
      104 SETTABLEKS                       R18 R17 K18 ["OnSelectedCommentChanged"]
      106 CALL                             R15 2 1
      107 MOVE                             R12 R15
      108 JUMPIFNOTEQKNIL                  R6 ; [+2]
      110 LOADB                            R13 0 +1
      111 LOADB                            R13 1
      112 NEWCLOSURE                       R14 P3
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R0
      115 JUMP                             ; [+73]
      116 GETTABLEKS                       R15 R0 K13 ["Step"]
      118 GETUPVAL                         R16 4
      119 GETTABLEKS                       R16 R16 K20 ["Category"]
      121 JUMPIFNOTEQ                      R15 R16 ; [+25]
      123 GETUPVAL                         R15 2
      124 GETTABLEKS                       R15 R15 K15 ["createElement"]
      126 GETUPVAL                         R16 5
      127 GETTABLEKS                       R16 R16 K20 ["Category"]
      129 DUPTABLE                         R17 K23 [{"TargetComment", "SelectedCategory", "OnSelectedCategoryChanged"}]
      130 SETTABLEKS                       R4 R17 K5 ["TargetComment"]
      132 SETTABLEKS                       R8 R17 K21 ["SelectedCategory"]
      134 NEWCLOSURE                       R18 P4
      135 CAPTURE                          VAL R9
      136 SETTABLEKS                       R18 R17 K22 ["OnSelectedCategoryChanged"]
      138 CALL                             R15 2 1
      139 MOVE                             R12 R15
      140 JUMPIFNOTEQKS                    R8 K11 [""] ; [+2]
      142 LOADB                            R13 0 +1
      143 LOADB                            R13 1
      144 GETTABLEKS                       R14 R0 K24 ["OnContinueCategory"]
      146 JUMP                             ; [+42]
      147 GETTABLEKS                       R15 R0 K13 ["Step"]
      149 GETUPVAL                         R16 4
      150 GETTABLEKS                       R16 R16 K25 ["Details"]
      152 JUMPIFNOTEQ                      R15 R16 ; [+19]
      154 GETUPVAL                         R15 2
      155 GETTABLEKS                       R15 R15 K15 ["createElement"]
      157 GETUPVAL                         R16 5
      158 GETTABLEKS                       R16 R16 K25 ["Details"]
      160 DUPTABLE                         R17 K27 [{"TargetComment", "Details", "OnDetailsChanged"}]
      161 SETTABLEKS                       R4 R17 K5 ["TargetComment"]
      163 SETTABLEKS                       R10 R17 K25 ["Details"]
      165 NEWCLOSURE                       R18 P5
      166 CAPTURE                          VAL R11
      167 SETTABLEKS                       R18 R17 K26 ["OnDetailsChanged"]
      169 CALL                             R15 2 1
      170 MOVE                             R12 R15
      171 JUMP                             ; [+17]
      172 GETTABLEKS                       R15 R0 K13 ["Step"]
      174 GETUPVAL                         R16 4
      175 GETTABLEKS                       R16 R16 K28 ["Confirmed"]
      177 JUMPIFNOTEQ                      R15 R16 ; [+11]
      179 GETUPVAL                         R15 2
      180 GETTABLEKS                       R15 R15 K15 ["createElement"]
      182 GETUPVAL                         R16 5
      183 GETTABLEKS                       R16 R16 K28 ["Confirmed"]
      185 CALL                             R15 1 1
      186 MOVE                             R12 R15
      187 GETTABLEKS                       R14 R0 K29 ["OnDone"]
      189 GETTABLEKS                       R16 R0 K13 ["Step"]
      191 GETUPVAL                         R17 4
      192 GETTABLEKS                       R17 R17 K14 ["CommentPicker"]
      194 JUMPIFNOTEQ                      R16 R17 ; [+3]
      196 LOADK                            R15 K30 [0.25]
      197 JUMP                             ; [+19]
      198 GETTABLEKS                       R16 R0 K13 ["Step"]
      200 GETUPVAL                         R17 4
      201 GETTABLEKS                       R17 R17 K20 ["Category"]
      203 JUMPIFNOTEQ                      R16 R17 ; [+3]
      205 LOADK                            R15 K31 [0.5]
      206 JUMP                             ; [+10]
      207 GETTABLEKS                       R16 R0 K13 ["Step"]
      209 GETUPVAL                         R17 4
      210 GETTABLEKS                       R17 R17 K25 ["Details"]
      212 JUMPIFNOTEQ                      R16 R17 ; [+3]
      214 LOADK                            R15 K32 [0.75]
      215 JUMP                             ; [+1]
      216 LOADN                            R15 1
      217 GETUPVAL                         R16 2
      218 GETTABLEKS                       R16 R16 K15 ["createElement"]
      220 GETUPVAL                         R17 1
      221 GETTABLEKS                       R17 R17 K33 ["View"]
      223 DUPTABLE                         R18 K36 [{["tag"] = "col gap-medium size-full padding-xlarge bg-surface-100"}]
      224 DUPTABLE                         R19 K39 [{"Content", "Actions"}]
      225 GETUPVAL                         R20 2
      226 GETTABLEKS                       R20 R20 K15 ["createElement"]
      228 GETUPVAL                         R21 1
      229 GETTABLEKS                       R21 R21 K33 ["View"]
      231 DUPTABLE                         R22 K43 [{["LayoutOrder"] = 1, ["tag"] = "fill size-full-0"}]
      232 DUPTABLE                         R23 K45 [{"Body"}]
      233 GETUPVAL                         R24 2
      234 GETTABLEKS                       R24 R24 K15 ["createElement"]
      236 GETUPVAL                         R25 1
      237 GETTABLEKS                       R25 R25 K33 ["View"]
      239 DUPTABLE                         R26 K48 [{["tag"] = "col gap-small", ["Size"]}]
      240 GETIMPORT                        R27 K51 [UDim2.new]
      242 LOADN                            R28 1
      243 LOADN                            R29 0
      244 LOADN                            R30 0
      245 LOADN                            R31 560
      246 CALL                             R27 4 1
      247 SETTABLEKS                       R27 R26 K47 ["Size"]
      249 DUPTABLE                         R27 K53 [{"Progress", "Content"}]
      250 GETUPVAL                         R28 2
      251 GETTABLEKS                       R28 R28 K15 ["createElement"]
      253 GETUPVAL                         R29 1
      254 GETTABLEKS                       R29 R29 K33 ["View"]
      256 DUPTABLE                         R30 K55 [{["LayoutOrder"] = 1, ["Size"], ["tag"] = "radius-small clip bg-shift-400"}]
      257 GETIMPORT                        R31 K51 [UDim2.new]
      259 LOADN                            R32 1
      260 LOADN                            R33 0
      261 LOADN                            R34 0
      262 LOADN                            R35 4
      263 CALL                             R31 4 1
      264 SETTABLEKS                       R31 R30 K47 ["Size"]
      266 DUPTABLE                         R31 K57 [{"Fill"}]
      267 GETUPVAL                         R32 2
      268 GETTABLEKS                       R32 R32 K15 ["createElement"]
      270 GETUPVAL                         R33 1
      271 GETTABLEKS                       R33 R33 K33 ["View"]
      273 DUPTABLE                         R34 K60 [{["Size"], ["tag"] = "radius-small", ["backgroundStyle"]}]
      274 GETIMPORT                        R35 K51 [UDim2.new]
      276 MOVE                             R36 R15
      277 LOADN                            R37 0
      278 LOADN                            R38 1
      279 LOADN                            R39 0
      280 CALL                             R35 4 1
      281 SETTABLEKS                       R35 R34 K47 ["Size"]
      283 GETTABLEKS                       R35 R2 K61 ["Color"]
      285 GETTABLEKS                       R35 R35 K37 ["Content"]
      287 GETTABLEKS                       R35 R35 K62 ["Emphasis"]
      289 SETTABLEKS                       R35 R34 K59 ["backgroundStyle"]
      291 CALL                             R32 2 1
      292 SETTABLEKS                       R32 R31 K56 ["Fill"]
      294 CALL                             R28 3 1
      295 SETTABLEKS                       R28 R27 K52 ["Progress"]
      297 GETUPVAL                         R28 2
      298 GETTABLEKS                       R28 R28 K15 ["createElement"]
      300 GETUPVAL                         R29 1
      301 GETTABLEKS                       R29 R29 K33 ["View"]
      303 DUPTABLE                         R30 K65 [{["LayoutOrder"] = 2, ["tag"] = "size-full-0 auto-y"}]
      304 DUPTABLE                         R31 K45 [{"Body"}]
      305 SETTABLEKS                       R12 R31 K44 ["Body"]
      307 CALL                             R28 3 1
      308 SETTABLEKS                       R28 R27 K37 ["Content"]
      310 CALL                             R24 3 1
      311 SETTABLEKS                       R24 R23 K44 ["Body"]
      313 CALL                             R20 3 1
      314 SETTABLEKS                       R20 R19 K37 ["Content"]
      316 GETUPVAL                         R20 2
      317 GETTABLEKS                       R20 R20 K15 ["createElement"]
      319 GETUPVAL                         R21 1
      320 GETTABLEKS                       R21 R21 K33 ["View"]
      322 DUPTABLE                         R22 K67 [{["LayoutOrder"] = 2, ["tag"] = "row gap-small size-full-0 auto-y"}]
      323 DUPTABLE                         R23 K71 [{"Spacer", "Cancel", "Continue"}]
      324 GETUPVAL                         R24 2
      325 GETTABLEKS                       R24 R24 K15 ["createElement"]
      327 GETUPVAL                         R25 1
      328 GETTABLEKS                       R25 R25 K33 ["View"]
      330 DUPTABLE                         R26 K73 [{["LayoutOrder"] = 1, ["tag"] = "fill"}]
      331 CALL                             R24 2 1
      332 SETTABLEKS                       R24 R23 K68 ["Spacer"]
      334 LOADB                            R24 0
      335 GETTABLEKS                       R25 R0 K13 ["Step"]
      337 GETUPVAL                         R26 4
      338 GETTABLEKS                       R26 R26 K28 ["Confirmed"]
      340 JUMPIFEQ                         R25 R26 ; [+31]
      342 GETUPVAL                         R24 2
      343 GETTABLEKS                       R24 R24 K15 ["createElement"]
      345 GETUPVAL                         R25 1
      346 GETTABLEKS                       R25 R25 K74 ["Button"]
      348 DUPTABLE                         R26 K79 [{["LayoutOrder"] = 2, ["text"], ["size"], ["isDisabled"], ["onActivated"]}]
      349 LOADK                            R29 K80 ["AddAnnotation"]
      350 LOADK                            R30 K69 ["Cancel"]
      351 NAMECALL                         R27 R1 K81 ["getText"]
      353 CALL                             R27 3 1
      354 SETTABLEKS                       R27 R26 K75 ["text"]
      356 GETUPVAL                         R27 1
      357 GETTABLEKS                       R27 R27 K82 ["Enums"]
      359 GETTABLEKS                       R27 R27 K83 ["ButtonSize"]
      361 GETTABLEKS                       R27 R27 K84 ["Small"]
      363 SETTABLEKS                       R27 R26 K76 ["size"]
      365 SETTABLEKS                       R3 R26 K77 ["isDisabled"]
      367 GETTABLEKS                       R27 R0 K85 ["OnCancel"]
      369 SETTABLEKS                       R27 R26 K78 ["onActivated"]
      371 CALL                             R24 2 1
      372 SETTABLEKS                       R24 R23 K69 ["Cancel"]
      374 GETUPVAL                         R24 2
      375 GETTABLEKS                       R24 R24 K15 ["createElement"]
      377 GETUPVAL                         R25 1
      378 GETTABLEKS                       R25 R25 K74 ["Button"]
      380 DUPTABLE                         R26 K89 [{["LayoutOrder"] = 3, ["text"], ["isDisabled"], ["isLoading"], ["variant"], ["size"], ["onActivated"]}]
      381 GETTABLEKS                       R28 R0 K13 ["Step"]
      383 GETUPVAL                         R29 4
      384 GETTABLEKS                       R29 R29 K25 ["Details"]
      386 JUMPIFNOTEQ                      R28 R29 ; [+7]
      388 LOADK                            R29 K80 ["AddAnnotation"]
      389 LOADK                            R30 K90 ["Submit"]
      390 NAMECALL                         R27 R1 K81 ["getText"]
      392 CALL                             R27 3 1
      393 JUMP                             ; [+14]
      394 LOADK                            R29 K91 ["Report"]
      395 GETTABLEKS                       R31 R0 K13 ["Step"]
      397 GETUPVAL                         R32 4
      398 GETTABLEKS                       R32 R32 K28 ["Confirmed"]
      400 JUMPIFNOTEQ                      R31 R32 ; [+3]
      402 LOADK                            R30 K92 ["Done"]
      403 JUMP                             ; [+1]
      404 LOADK                            R30 K70 ["Continue"]
      405 NAMECALL                         R27 R1 K81 ["getText"]
      407 CALL                             R27 3 1
      408 SETTABLEKS                       R27 R26 K75 ["text"]
      410 NOT                              R28 R13
      411 OR                               R27 R28 R3
      412 SETTABLEKS                       R27 R26 K77 ["isDisabled"]
      414 SETTABLEKS                       R3 R26 K87 ["isLoading"]
      416 GETUPVAL                         R27 1
      417 GETTABLEKS                       R27 R27 K82 ["Enums"]
      419 GETTABLEKS                       R27 R27 K93 ["ButtonVariant"]
      421 GETTABLEKS                       R27 R27 K62 ["Emphasis"]
      423 SETTABLEKS                       R27 R26 K88 ["variant"]
      425 GETUPVAL                         R27 1
      426 GETTABLEKS                       R27 R27 K82 ["Enums"]
      428 GETTABLEKS                       R27 R27 K83 ["ButtonSize"]
      430 GETTABLEKS                       R27 R27 K84 ["Small"]
      432 SETTABLEKS                       R27 R26 K76 ["size"]
      434 SETTABLEKS                       R14 R26 K78 ["onActivated"]
      436 CALL                             R24 2 1
      437 SETTABLEKS                       R24 R23 K70 ["Continue"]
      439 CALL                             R20 3 1
      440 SETTABLEKS                       R20 R19 K38 ["Actions"]
      442 CALL                             R16 3 -1
      443 RETURN                           R16 -1

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["fflagStudioUserReportingComments"]
        7 JUMPIF                           R2 ; [+2]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["createElement"]
       13 GETUPVAL                         R3 3
       14 DUPTABLE                         R4 K11 [{["Title"], ["Modal"] = True, ["Resizable"] = False, ["Enabled"] = True, ["OnClose"], ["Size"]}]
       15 LOADK                            R7 K12 ["Dropdown"]
       16 LOADK                            R8 K13 ["Report"]
       17 NAMECALL                         R5 R1 K14 ["getText"]
       19 CALL                             R5 3 1
       20 SETTABLEKS                       R5 R4 K3 ["Title"]
       22 GETTABLEKS                       R6 R0 K15 ["IsSubmitting"]
       24 JUMPIFNOT                        R6 ; [+2]
       25 DUPCLOSURE                       R5 K16 [PROTO_8]
       26 JUMP                             ; [+2]
       27 GETTABLEKS                       R5 R0 K17 ["OnCancel"]
       29 SETTABLEKS                       R5 R4 K9 ["OnClose"]
       31 GETIMPORT                        R5 K20 [Vector2.new]
       33 LOADN                            R6 600
       34 LOADN                            R7 720
       35 CALL                             R5 2 1
       36 SETTABLEKS                       R5 R4 K10 ["Size"]
       38 DUPTABLE                         R5 K22 [{"Foundation"}]
       39 GETUPVAL                         R6 2
       40 GETTABLEKS                       R6 R6 K2 ["createElement"]
       42 GETUPVAL                         R7 4
       43 LOADNIL                          R8
       44 DUPTABLE                         R9 K24 [{"Contents"}]
       45 GETUPVAL                         R10 2
       46 GETTABLEKS                       R10 R10 K2 ["createElement"]
       48 GETUPVAL                         R11 5
       49 MOVE                             R12 R0
       50 CALL                             R10 2 1
       51 SETTABLEKS                       R10 R9 K23 ["Contents"]
       53 CALL                             R6 3 1
       54 SETTABLEKS                       R6 R5 K21 ["Foundation"]
       56 CALL                             R2 3 -1
       57 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K11 ["ContextServices"]
       37 GETTABLEKS                       R5 R5 K12 ["Localization"]
       39 GETTABLEKS                       R6 R2 K13 ["UI"]
       41 GETTABLEKS                       R6 R6 K14 ["Dialog"]
       43 GETTABLEKS                       R7 R4 K15 ["Components"]
       45 GETTABLEKS                       R7 R7 K16 ["FoundationProviderAdapter"]
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R9 R0 K17 ["Src"]
       51 GETTABLEKS                       R9 R9 K18 ["Util"]
       53 GETTABLEKS                       R9 R9 K19 ["ReportCategoryToAbuseCategory"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R10 R0 K17 ["Src"]
       60 GETTABLEKS                       R10 R10 K20 ["Enums"]
       62 GETTABLEKS                       R10 R10 K21 ["ReportStep"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K5 [require]
       67 GETTABLEKS                       R11 R0 K22 ["Bin"]
       69 GETTABLEKS                       R11 R11 K23 ["Common"]
       71 GETTABLEKS                       R11 R11 K24 ["defineLuaFlags"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K5 [require]
       76 GETTABLEKS                       R12 R0 K17 ["Src"]
       78 GETTABLEKS                       R12 R12 K15 ["Components"]
       80 GETTABLEKS                       R12 R12 K25 ["ReportDialog"]
       82 GETTABLEKS                       R12 R12 K26 ["Steps"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K5 [require]
       87 GETTABLEKS                       R13 R0 K17 ["Src"]
       89 GETTABLEKS                       R13 R13 K27 ["Types"]
       91 CALL                             R12 1 1
       92 DUPCLOSURE                       R13 K28 [PROTO_0]
       93 DUPCLOSURE                       R14 K29 [PROTO_7]
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R11
      100 DUPCLOSURE                       R15 K30 [PROTO_9]
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R14
      107 RETURN                           R15 1
