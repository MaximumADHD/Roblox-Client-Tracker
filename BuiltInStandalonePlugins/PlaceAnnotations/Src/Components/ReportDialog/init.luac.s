PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 [""]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 LOADK                            R1 K0 [""]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 LOADK                            R1 K0 [""]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["OnSelectComment"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fflagStudioUserReportingComments"]
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 1
        7 NAMECALL                         R1 R1 K1 ["use"]
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["Hooks"]
       13 GETTABLEKS                       R2 R2 K3 ["useTokens"]
       15 CALL                             R2 0 1
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K4 ["useState"]
       19 LOADNIL                          R4
       20 CALL                             R3 1 2
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R5 R5 K4 ["useState"]
       24 LOADK                            R6 K5 [""]
       25 CALL                             R5 1 2
       26 GETUPVAL                         R7 3
       27 GETTABLEKS                       R7 R7 K4 ["useState"]
       29 LOADK                            R8 K5 [""]
       30 CALL                             R7 1 2
       31 GETUPVAL                         R9 3
       32 GETTABLEKS                       R9 R9 K4 ["useState"]
       34 LOADK                            R10 K5 [""]
       35 CALL                             R9 1 2
       36 GETUPVAL                         R11 3
       37 GETTABLEKS                       R11 R11 K6 ["useEffect"]
       39 NEWCLOSURE                       R12 P0
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R8
       43 CAPTURE                          VAL R10
       44 NEWTABLE                         R13 0 1
       46 GETTABLEKS                       R14 R0 K7 ["TargetComment"]
       48 SETLIST                          R13 R14 1 [1]
       50 CALL                             R11 2 0
       51 LOADNIL                          R11
       52 LOADB                            R12 1
       53 GETTABLEKS                       R13 R0 K8 ["OnSubmit"]
       55 GETTABLEKS                       R14 R0 K9 ["Step"]
       57 GETUPVAL                         R15 4
       58 GETTABLEKS                       R15 R15 K10 ["CommentPicker"]
       60 JUMPIFNOTEQ                      R14 R15 ; [+28]
       62 GETUPVAL                         R14 3
       63 GETTABLEKS                       R14 R14 K11 ["createElement"]
       65 GETUPVAL                         R15 5
       66 GETTABLEKS                       R15 R15 K10 ["CommentPicker"]
       68 DUPTABLE                         R16 K15 [{"Thread", "SelectedComment", "OnSelectedCommentChanged"}]
       69 GETTABLEKS                       R17 R0 K12 ["Thread"]
       71 SETTABLEKS                       R17 R16 K12 ["Thread"]
       73 SETTABLEKS                       R3 R16 K13 ["SelectedComment"]
       75 NEWCLOSURE                       R17 P1
       76 CAPTURE                          VAL R4
       77 SETTABLEKS                       R17 R16 K14 ["OnSelectedCommentChanged"]
       79 CALL                             R14 2 1
       80 MOVE                             R11 R14
       81 JUMPIFNOTEQKNIL                  R3 ; [+2]
       83 LOADB                            R12 0 +1
       84 LOADB                            R12 1
       85 NEWCLOSURE                       R13 P2
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R0
       88 JUMP                             ; [+93]
       89 GETTABLEKS                       R14 R0 K9 ["Step"]
       91 GETUPVAL                         R15 4
       92 GETTABLEKS                       R15 R15 K16 ["Category"]
       94 JUMPIFNOTEQ                      R14 R15 ; [+43]
       96 GETUPVAL                         R14 3
       97 GETTABLEKS                       R14 R14 K11 ["createElement"]
       99 GETUPVAL                         R15 5
      100 GETTABLEKS                       R15 R15 K16 ["Category"]
      102 DUPTABLE                         R16 K21 [{"TargetComment", "SelectedCategory", "OtherReason", "OnSelectedCategoryChanged", "OnOtherReasonChanged"}]
      103 GETTABLEKS                       R17 R0 K7 ["TargetComment"]
      105 SETTABLEKS                       R17 R16 K7 ["TargetComment"]
      107 SETTABLEKS                       R5 R16 K17 ["SelectedCategory"]
      109 SETTABLEKS                       R7 R16 K18 ["OtherReason"]
      111 NEWCLOSURE                       R17 P3
      112 CAPTURE                          VAL R6
      113 SETTABLEKS                       R17 R16 K19 ["OnSelectedCategoryChanged"]
      115 NEWCLOSURE                       R17 P4
      116 CAPTURE                          VAL R8
      117 SETTABLEKS                       R17 R16 K20 ["OnOtherReasonChanged"]
      119 CALL                             R14 2 1
      120 MOVE                             R11 R14
      121 LOADB                            R14 0
      122 JUMPIFEQKS                       R5 K5 [""] ; [+11]
      124 LOADB                            R14 1
      125 GETUPVAL                         R15 6
      126 GETTABLEKS                       R15 R15 K22 ["Other"]
      128 JUMPIFNOTEQ                      R5 R15 ; [+5]
      130 JUMPIFNOTEQKS                    R7 K5 [""] ; [+2]
      132 LOADB                            R14 0 +1
      133 LOADB                            R14 1
      134 MOVE                             R12 R14
      135 GETTABLEKS                       R13 R0 K23 ["OnContinueCategory"]
      137 JUMP                             ; [+44]
      138 GETTABLEKS                       R14 R0 K9 ["Step"]
      140 GETUPVAL                         R15 4
      141 GETTABLEKS                       R15 R15 K24 ["Details"]
      143 JUMPIFNOTEQ                      R14 R15 ; [+21]
      145 GETUPVAL                         R14 3
      146 GETTABLEKS                       R14 R14 K11 ["createElement"]
      148 GETUPVAL                         R15 5
      149 GETTABLEKS                       R15 R15 K24 ["Details"]
      151 DUPTABLE                         R16 K26 [{"TargetComment", "Details", "OnDetailsChanged"}]
      152 GETTABLEKS                       R17 R0 K7 ["TargetComment"]
      154 SETTABLEKS                       R17 R16 K7 ["TargetComment"]
      156 SETTABLEKS                       R9 R16 K24 ["Details"]
      158 NEWCLOSURE                       R17 P5
      159 CAPTURE                          VAL R10
      160 SETTABLEKS                       R17 R16 K25 ["OnDetailsChanged"]
      162 CALL                             R14 2 1
      163 MOVE                             R11 R14
      164 JUMP                             ; [+17]
      165 GETTABLEKS                       R14 R0 K9 ["Step"]
      167 GETUPVAL                         R15 4
      168 GETTABLEKS                       R15 R15 K27 ["Confirmed"]
      170 JUMPIFNOTEQ                      R14 R15 ; [+11]
      172 GETUPVAL                         R14 3
      173 GETTABLEKS                       R14 R14 K11 ["createElement"]
      175 GETUPVAL                         R15 5
      176 GETTABLEKS                       R15 R15 K27 ["Confirmed"]
      178 CALL                             R14 1 1
      179 MOVE                             R11 R14
      180 GETTABLEKS                       R13 R0 K28 ["OnDone"]
      182 GETTABLEKS                       R15 R0 K9 ["Step"]
      184 GETUPVAL                         R16 4
      185 GETTABLEKS                       R16 R16 K10 ["CommentPicker"]
      187 JUMPIFNOTEQ                      R15 R16 ; [+3]
      189 LOADK                            R14 K29 [0.25]
      190 JUMP                             ; [+19]
      191 GETTABLEKS                       R15 R0 K9 ["Step"]
      193 GETUPVAL                         R16 4
      194 GETTABLEKS                       R16 R16 K16 ["Category"]
      196 JUMPIFNOTEQ                      R15 R16 ; [+3]
      198 LOADK                            R14 K30 [0.5]
      199 JUMP                             ; [+10]
      200 GETTABLEKS                       R15 R0 K9 ["Step"]
      202 GETUPVAL                         R16 4
      203 GETTABLEKS                       R16 R16 K24 ["Details"]
      205 JUMPIFNOTEQ                      R15 R16 ; [+3]
      207 LOADK                            R14 K31 [0.75]
      208 JUMP                             ; [+1]
      209 LOADN                            R14 1
      210 GETUPVAL                         R15 3
      211 GETTABLEKS                       R15 R15 K11 ["createElement"]
      213 GETUPVAL                         R16 2
      214 GETTABLEKS                       R16 R16 K32 ["Dialog"]
      216 GETTABLEKS                       R16 R16 K33 ["Root"]
      218 DUPTABLE                         R17 K38 [{["size"], ["hasBackdrop"] = True, ["onClose"]}]
      219 GETUPVAL                         R18 2
      220 GETTABLEKS                       R18 R18 K39 ["Enums"]
      222 GETTABLEKS                       R18 R18 K40 ["DialogSize"]
      224 GETTABLEKS                       R18 R18 K41 ["Medium"]
      226 SETTABLEKS                       R18 R17 K34 ["size"]
      228 GETTABLEKS                       R18 R0 K42 ["OnCancel"]
      230 SETTABLEKS                       R18 R17 K37 ["onClose"]
      232 DUPTABLE                         R18 K46 [{"Title", "Content", "Actions"}]
      233 GETUPVAL                         R19 3
      234 GETTABLEKS                       R19 R19 K11 ["createElement"]
      236 GETUPVAL                         R20 2
      237 GETTABLEKS                       R20 R20 K47 ["View"]
      239 DUPTABLE                         R21 K52 [{["LayoutOrder"] = 1, ["tag"] = "size-full-0 auto-y padding-right-xxlarge padding-top-xlarge"}]
      240 DUPTABLE                         R22 K54 [{"Text"}]
      241 GETUPVAL                         R23 3
      242 GETTABLEKS                       R23 R23 K11 ["createElement"]
      244 GETUPVAL                         R24 2
      245 GETTABLEKS                       R24 R24 K53 ["Text"]
      247 DUPTABLE                         R25 K57 [{["Text"], ["tag"] = "size-full-0 auto-y text-wrap text-align-x-left content-emphasis", ["fontStyle"]}]
      248 LOADK                            R28 K58 ["Dropdown"]
      249 LOADK                            R29 K59 ["Report"]
      250 NAMECALL                         R26 R1 K60 ["getText"]
      252 CALL                             R26 3 1
      253 SETTABLEKS                       R26 R25 K53 ["Text"]
      255 GETTABLEKS                       R26 R2 K61 ["Typography"]
      257 GETTABLEKS                       R26 R26 K62 ["TitleLarge"]
      259 SETTABLEKS                       R26 R25 K56 ["fontStyle"]
      261 CALL                             R23 2 1
      262 SETTABLEKS                       R23 R22 K53 ["Text"]
      264 CALL                             R19 3 1
      265 SETTABLEKS                       R19 R18 K43 ["Title"]
      267 GETUPVAL                         R19 3
      268 GETTABLEKS                       R19 R19 K11 ["createElement"]
      270 GETUPVAL                         R20 2
      271 GETTABLEKS                       R20 R20 K32 ["Dialog"]
      273 GETTABLEKS                       R20 R20 K44 ["Content"]
      275 DUPTABLE                         R21 K64 [{["LayoutOrder"] = 2}]
      276 DUPTABLE                         R22 K66 [{"Body"}]
      277 GETUPVAL                         R23 3
      278 GETTABLEKS                       R23 R23 K11 ["createElement"]
      280 GETUPVAL                         R24 2
      281 GETTABLEKS                       R24 R24 K47 ["View"]
      283 DUPTABLE                         R25 K69 [{["tag"] = "col gap-small", ["Size"]}]
      284 GETIMPORT                        R26 K72 [UDim2.new]
      286 LOADN                            R27 1
      287 LOADN                            R28 0
      288 LOADN                            R29 0
      289 LOADN                            R30 560
      290 CALL                             R26 4 1
      291 SETTABLEKS                       R26 R25 K68 ["Size"]
      293 DUPTABLE                         R26 K74 [{"Progress", "Content"}]
      294 GETUPVAL                         R27 3
      295 GETTABLEKS                       R27 R27 K11 ["createElement"]
      297 GETUPVAL                         R28 2
      298 GETTABLEKS                       R28 R28 K47 ["View"]
      300 DUPTABLE                         R29 K76 [{["LayoutOrder"] = 1, ["Size"], ["tag"] = "radius-small clip bg-shift-400"}]
      301 GETIMPORT                        R30 K72 [UDim2.new]
      303 LOADN                            R31 1
      304 LOADN                            R32 0
      305 LOADN                            R33 0
      306 LOADN                            R34 4
      307 CALL                             R30 4 1
      308 SETTABLEKS                       R30 R29 K68 ["Size"]
      310 DUPTABLE                         R30 K78 [{"Fill"}]
      311 GETUPVAL                         R31 3
      312 GETTABLEKS                       R31 R31 K11 ["createElement"]
      314 GETUPVAL                         R32 2
      315 GETTABLEKS                       R32 R32 K47 ["View"]
      317 DUPTABLE                         R33 K81 [{["Size"], ["tag"] = "radius-small", ["backgroundStyle"]}]
      318 GETIMPORT                        R34 K72 [UDim2.new]
      320 MOVE                             R35 R14
      321 LOADN                            R36 0
      322 LOADN                            R37 1
      323 LOADN                            R38 0
      324 CALL                             R34 4 1
      325 SETTABLEKS                       R34 R33 K68 ["Size"]
      327 GETTABLEKS                       R34 R2 K82 ["Color"]
      329 GETTABLEKS                       R34 R34 K44 ["Content"]
      331 GETTABLEKS                       R34 R34 K83 ["Emphasis"]
      333 SETTABLEKS                       R34 R33 K80 ["backgroundStyle"]
      335 CALL                             R31 2 1
      336 SETTABLEKS                       R31 R30 K77 ["Fill"]
      338 CALL                             R27 3 1
      339 SETTABLEKS                       R27 R26 K73 ["Progress"]
      341 GETUPVAL                         R27 3
      342 GETTABLEKS                       R27 R27 K11 ["createElement"]
      344 GETUPVAL                         R28 2
      345 GETTABLEKS                       R28 R28 K47 ["View"]
      347 DUPTABLE                         R29 K85 [{["LayoutOrder"] = 2, ["tag"] = "size-full-0 auto-y"}]
      348 DUPTABLE                         R30 K66 [{"Body"}]
      349 SETTABLEKS                       R11 R30 K65 ["Body"]
      351 CALL                             R27 3 1
      352 SETTABLEKS                       R27 R26 K44 ["Content"]
      354 CALL                             R23 3 1
      355 SETTABLEKS                       R23 R22 K65 ["Body"]
      357 CALL                             R19 3 1
      358 SETTABLEKS                       R19 R18 K44 ["Content"]
      360 GETUPVAL                         R19 3
      361 GETTABLEKS                       R19 R19 K11 ["createElement"]
      363 GETUPVAL                         R20 2
      364 GETTABLEKS                       R20 R20 K47 ["View"]
      366 DUPTABLE                         R21 K88 [{["LayoutOrder"] = 3, ["tag"] = "row gap-small size-full-0 auto-y"}]
      367 DUPTABLE                         R22 K92 [{"Spacer", "Cancel", "Continue"}]
      368 GETUPVAL                         R23 3
      369 GETTABLEKS                       R23 R23 K11 ["createElement"]
      371 GETUPVAL                         R24 2
      372 GETTABLEKS                       R24 R24 K47 ["View"]
      374 DUPTABLE                         R25 K94 [{["LayoutOrder"] = 1, ["tag"] = "fill"}]
      375 CALL                             R23 2 1
      376 SETTABLEKS                       R23 R22 K89 ["Spacer"]
      378 LOADB                            R23 0
      379 GETTABLEKS                       R24 R0 K9 ["Step"]
      381 GETUPVAL                         R25 4
      382 GETTABLEKS                       R25 R25 K27 ["Confirmed"]
      384 JUMPIFEQ                         R24 R25 ; [+29]
      386 GETUPVAL                         R23 3
      387 GETTABLEKS                       R23 R23 K11 ["createElement"]
      389 GETUPVAL                         R24 2
      390 GETTABLEKS                       R24 R24 K95 ["Button"]
      392 DUPTABLE                         R25 K98 [{["LayoutOrder"] = 2, ["text"], ["size"], ["onActivated"]}]
      393 LOADK                            R28 K99 ["AddAnnotation"]
      394 LOADK                            R29 K90 ["Cancel"]
      395 NAMECALL                         R26 R1 K60 ["getText"]
      397 CALL                             R26 3 1
      398 SETTABLEKS                       R26 R25 K96 ["text"]
      400 GETUPVAL                         R26 2
      401 GETTABLEKS                       R26 R26 K39 ["Enums"]
      403 GETTABLEKS                       R26 R26 K100 ["ButtonSize"]
      405 GETTABLEKS                       R26 R26 K101 ["Small"]
      407 SETTABLEKS                       R26 R25 K34 ["size"]
      409 GETTABLEKS                       R26 R0 K42 ["OnCancel"]
      411 SETTABLEKS                       R26 R25 K97 ["onActivated"]
      413 CALL                             R23 2 1
      414 SETTABLEKS                       R23 R22 K90 ["Cancel"]
      416 GETUPVAL                         R23 3
      417 GETTABLEKS                       R23 R23 K11 ["createElement"]
      419 GETUPVAL                         R24 2
      420 GETTABLEKS                       R24 R24 K95 ["Button"]
      422 DUPTABLE                         R25 K104 [{["LayoutOrder"] = 3, ["text"], ["isDisabled"], ["variant"], ["size"], ["onActivated"]}]
      423 GETTABLEKS                       R27 R0 K9 ["Step"]
      425 GETUPVAL                         R28 4
      426 GETTABLEKS                       R28 R28 K24 ["Details"]
      428 JUMPIFNOTEQ                      R27 R28 ; [+7]
      430 LOADK                            R28 K99 ["AddAnnotation"]
      431 LOADK                            R29 K105 ["Submit"]
      432 NAMECALL                         R26 R1 K60 ["getText"]
      434 CALL                             R26 3 1
      435 JUMP                             ; [+14]
      436 LOADK                            R28 K59 ["Report"]
      437 GETTABLEKS                       R30 R0 K9 ["Step"]
      439 GETUPVAL                         R31 4
      440 GETTABLEKS                       R31 R31 K27 ["Confirmed"]
      442 JUMPIFNOTEQ                      R30 R31 ; [+3]
      444 LOADK                            R29 K106 ["Done"]
      445 JUMP                             ; [+1]
      446 LOADK                            R29 K91 ["Continue"]
      447 NAMECALL                         R26 R1 K60 ["getText"]
      449 CALL                             R26 3 1
      450 SETTABLEKS                       R26 R25 K96 ["text"]
      452 NOT                              R26 R12
      453 SETTABLEKS                       R26 R25 K102 ["isDisabled"]
      455 GETUPVAL                         R26 2
      456 GETTABLEKS                       R26 R26 K39 ["Enums"]
      458 GETTABLEKS                       R26 R26 K107 ["ButtonVariant"]
      460 GETTABLEKS                       R26 R26 K83 ["Emphasis"]
      462 SETTABLEKS                       R26 R25 K103 ["variant"]
      464 GETUPVAL                         R26 2
      465 GETTABLEKS                       R26 R26 K39 ["Enums"]
      467 GETTABLEKS                       R26 R26 K100 ["ButtonSize"]
      469 GETTABLEKS                       R26 R26 K101 ["Small"]
      471 SETTABLEKS                       R26 R25 K34 ["size"]
      473 SETTABLEKS                       R13 R25 K97 ["onActivated"]
      475 CALL                             R23 2 1
      476 SETTABLEKS                       R23 R22 K91 ["Continue"]
      478 CALL                             R19 3 1
      479 SETTABLEKS                       R19 R18 K45 ["Actions"]
      481 CALL                             R15 3 -1
      482 RETURN                           R15 -1

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
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETTABLEKS                       R4 R4 K11 ["Localization"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Src"]
       36 GETTABLEKS                       R6 R6 K13 ["Enums"]
       38 GETTABLEKS                       R6 R6 K14 ["ReportCategory"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K12 ["Src"]
       45 GETTABLEKS                       R7 R7 K13 ["Enums"]
       47 GETTABLEKS                       R7 R7 K15 ["ReportStep"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K16 ["Bin"]
       54 GETTABLEKS                       R8 R8 K17 ["Common"]
       56 GETTABLEKS                       R8 R8 K18 ["defineLuaFlags"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R9 R0 K12 ["Src"]
       63 GETTABLEKS                       R9 R9 K19 ["Components"]
       65 GETTABLEKS                       R9 R9 K20 ["ReportDialog"]
       67 GETTABLEKS                       R9 R9 K21 ["Steps"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K5 [require]
       72 GETTABLEKS                       R10 R0 K12 ["Src"]
       74 GETTABLEKS                       R10 R10 K22 ["Types"]
       76 CALL                             R9 1 1
       77 DUPCLOSURE                       R10 K23 [PROTO_6]
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R5
       85 RETURN                           R10 1
