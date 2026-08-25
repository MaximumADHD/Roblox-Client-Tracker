PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 NEWTABLE                         R5 8 0
        6 LOADB                            R6 1
        7 SETTABLEKS                       R6 R5 K1 ["TextWrapped"]
        9 GETIMPORT                        R6 K5 [Enum.HorizontalAlignment.Left]
       11 SETTABLEKS                       R6 R5 K3 ["HorizontalAlignment"]
       13 SETTABLEKS                       R1 R5 K6 ["Text"]
       15 GETUPVAL                         R6 2
       16 SETTABLEKS                       R6 R5 K7 ["TextProps"]
       18 SETTABLEKS                       R2 R5 K8 ["LinkMap"]
       20 SETTABLEKS                       R0 R5 K9 ["LayoutOrder"]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K10 ["Tag"]
       25 LOADK                            R7 K11 ["X-FitY"]
       26 SETTABLE                         R7 R5 R6
       27 CALL                             R3 2 -1
       28 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["BaseUrl"]
        3 LOADK                            R2 K1 ["report-appeals?t_source=studio-nap"]
        4 CONCAT                           R0 R1 R2
        5 GETUPVAL                         R1 1
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K2 ["OpenBrowserWindow"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SetChecked"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["Checked"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 JUMPIFNOT                        R3 ; [+49]
       10 GETTABLEKS                       R3 R0 K2 ["Type"]
       12 JUMPIFNOTEQKS                    R3 K3 ["Deactivated"] ; [+46]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K4 ["createElement"]
       17 LOADK                            R4 K5 ["Frame"]
       18 NEWTABLE                         R5 2 0
       20 NAMECALL                         R6 R2 K6 ["getNextOrder"]
       22 CALL                             R6 1 1
       23 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       25 GETUPVAL                         R6 3
       26 GETTABLEKS                       R6 R6 K8 ["Tag"]
       28 LOADK                            R7 K9 ["X-Fill X-Column Component-DialogContents"]
       29 SETTABLE                         R7 R5 R6
       30 DUPTABLE                         R6 K11 [{"DeactivatedBody"}]
       31 GETUPVAL                         R7 3
       32 GETTABLEKS                       R7 R7 K4 ["createElement"]
       34 LOADK                            R8 K12 ["TextLabel"]
       35 NEWTABLE                         R9 4 0
       37 LOADK                            R12 K13 ["Body"]
       38 LOADK                            R13 K3 ["Deactivated"]
       39 NAMECALL                         R10 R1 K14 ["getText"]
       41 CALL                             R10 3 1
       42 SETTABLEKS                       R10 R9 K15 ["Text"]
       44 NAMECALL                         R10 R2 K6 ["getNextOrder"]
       46 CALL                             R10 1 1
       47 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       49 GETUPVAL                         R10 3
       50 GETTABLEKS                       R10 R10 K8 ["Tag"]
       52 LOADK                            R11 K16 ["X-FitY"]
       53 SETTABLE                         R11 R9 R10
       54 CALL                             R7 2 1
       55 SETTABLEKS                       R7 R6 K10 ["DeactivatedBody"]
       57 CALL                             R3 3 -1
       58 RETURN                           R3 -1
       59 GETUPVAL                         R3 3
       60 GETTABLEKS                       R3 R3 K4 ["createElement"]
       62 LOADK                            R4 K5 ["Frame"]
       63 NEWTABLE                         R5 2 0
       65 NAMECALL                         R6 R2 K6 ["getNextOrder"]
       67 CALL                             R6 1 1
       68 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       70 GETUPVAL                         R6 3
       71 GETTABLEKS                       R6 R6 K8 ["Tag"]
       73 LOADK                            R7 K9 ["X-Fill X-Column Component-DialogContents"]
       74 SETTABLE                         R7 R5 R6
       75 DUPTABLE                         R6 K27 [{"Body", "TerminatedNote", "ReviewedNote", "Separator1", "Reason", "Separator2", "Guidelines", "ReactivateDateNote", "AppealPortal", "ToUAgreement", "AgreeCheckBox"}]
       76 NAMECALL                         R8 R2 K6 ["getNextOrder"]
       78 CALL                             R8 1 1
       79 LOADK                            R11 K28 ["WarningHeader"]
       80 LOADK                            R12 K29 ["WarningLink"]
       81 NAMECALL                         R9 R1 K14 ["getText"]
       83 CALL                             R9 3 1
       84 NEWTABLE                         R10 1 0
       86 DUPTABLE                         R11 K32 [{"LinkText", "LinkCallback"}]
       87 LOADK                            R14 K33 ["Links"]
       88 LOADK                            R15 K34 ["ToULink"]
       89 NAMECALL                         R12 R1 K14 ["getText"]
       91 CALL                             R12 3 1
       92 SETTABLEKS                       R12 R11 K30 ["LinkText"]
       94 DUPCLOSURE                       R12 K35 [PROTO_1]
       95 CAPTURE                          UPVAL U4
       96 CAPTURE                          UPVAL U5
       97 SETTABLEKS                       R12 R11 K31 ["LinkCallback"]
       99 SETTABLEKS                       R11 R10 K36 ["[link1]"]
      101 GETUPVAL                         R11 3
      102 GETTABLEKS                       R11 R11 K4 ["createElement"]
      104 GETUPVAL                         R12 6
      105 NEWTABLE                         R13 8 0
      107 LOADB                            R14 1
      108 SETTABLEKS                       R14 R13 K37 ["TextWrapped"]
      110 GETIMPORT                        R14 K41 [Enum.HorizontalAlignment.Left]
      112 SETTABLEKS                       R14 R13 K39 ["HorizontalAlignment"]
      114 SETTABLEKS                       R9 R13 K15 ["Text"]
      116 GETUPVAL                         R14 7
      117 SETTABLEKS                       R14 R13 K42 ["TextProps"]
      119 SETTABLEKS                       R10 R13 K43 ["LinkMap"]
      121 SETTABLEKS                       R8 R13 K7 ["LayoutOrder"]
      123 GETUPVAL                         R14 3
      124 GETTABLEKS                       R14 R14 K8 ["Tag"]
      126 LOADK                            R15 K16 ["X-FitY"]
      127 SETTABLE                         R15 R13 R14
      128 CALL                             R11 2 1
      129 MOVE                             R7 R11
      130 SETTABLEKS                       R7 R6 K13 ["Body"]
      132 GETUPVAL                         R7 2
      133 JUMPIFNOT                        R7 ; [+29]
      134 LOADB                            R7 0
      135 GETTABLEKS                       R8 R0 K2 ["Type"]
      137 JUMPIFNOTEQKS                    R8 K44 ["Delete"] ; [+25]
      139 GETUPVAL                         R7 3
      140 GETTABLEKS                       R7 R7 K4 ["createElement"]
      142 LOADK                            R8 K12 ["TextLabel"]
      143 NEWTABLE                         R9 4 0
      145 LOADK                            R12 K13 ["Body"]
      146 LOADK                            R13 K45 ["Terminated"]
      147 NAMECALL                         R10 R1 K14 ["getText"]
      149 CALL                             R10 3 1
      150 SETTABLEKS                       R10 R9 K15 ["Text"]
      152 NAMECALL                         R10 R2 K6 ["getNextOrder"]
      154 CALL                             R10 1 1
      155 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
      157 GETUPVAL                         R10 3
      158 GETTABLEKS                       R10 R10 K8 ["Tag"]
      160 LOADK                            R11 K16 ["X-FitY"]
      161 SETTABLE                         R11 R9 R10
      162 CALL                             R7 2 1
      163 SETTABLEKS                       R7 R6 K17 ["TerminatedNote"]
      165 GETUPVAL                         R7 3
      166 GETTABLEKS                       R7 R7 K4 ["createElement"]
      168 GETUPVAL                         R8 8
      169 DUPTABLE                         R9 K48 [{"ModerationStartDateTime", "ModeratorNote", "LayoutOrder"}]
      170 GETTABLEKS                       R10 R0 K46 ["ModerationStartDateTime"]
      172 SETTABLEKS                       R10 R9 K46 ["ModerationStartDateTime"]
      174 GETTABLEKS                       R10 R0 K47 ["ModeratorNote"]
      176 SETTABLEKS                       R10 R9 K47 ["ModeratorNote"]
      178 NAMECALL                         R10 R2 K6 ["getNextOrder"]
      180 CALL                             R10 1 1
      181 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
      183 CALL                             R7 2 1
      184 SETTABLEKS                       R7 R6 K18 ["ReviewedNote"]
      186 GETUPVAL                         R7 3
      187 GETTABLEKS                       R7 R7 K4 ["createElement"]
      189 LOADK                            R8 K5 ["Frame"]
      190 NEWTABLE                         R9 2 0
      192 NAMECALL                         R10 R2 K6 ["getNextOrder"]
      194 CALL                             R10 1 1
      195 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
      197 GETUPVAL                         R10 3
      198 GETTABLEKS                       R10 R10 K8 ["Tag"]
      200 LOADK                            R11 K49 ["Separator"]
      201 SETTABLE                         R11 R9 R10
      202 CALL                             R7 2 1
      203 SETTABLEKS                       R7 R6 K19 ["Separator1"]
      205 GETTABLEKS                       R7 R0 K20 ["Reason"]
      207 JUMPIFNOT                        R7 ; [+32]
      208 GETUPVAL                         R7 3
      209 GETTABLEKS                       R7 R7 K4 ["createElement"]
      211 GETUPVAL                         R8 9
      212 DUPTABLE                         R9 K52 [{"Reason", "OffensiveItem", "Url", "LayoutOrder"}]
      213 GETUPVAL                         R10 10
      214 MOVE                             R11 R1
      215 GETTABLEKS                       R12 R0 K20 ["Reason"]
      217 GETTABLEKS                       R12 R12 K53 ["abuseType"]
      219 CALL                             R10 2 1
      220 SETTABLEKS                       R10 R9 K20 ["Reason"]
      222 GETTABLEKS                       R10 R0 K20 ["Reason"]
      224 GETTABLEKS                       R10 R10 K54 ["utteranceText"]
      226 SETTABLEKS                       R10 R9 K50 ["OffensiveItem"]
      228 GETTABLEKS                       R10 R0 K20 ["Reason"]
      230 GETTABLEKS                       R10 R10 K55 ["url"]
      232 SETTABLEKS                       R10 R9 K51 ["Url"]
      234 NAMECALL                         R10 R2 K6 ["getNextOrder"]
      236 CALL                             R10 1 1
      237 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
      239 CALL                             R7 2 1
      240 SETTABLEKS                       R7 R6 K20 ["Reason"]
      242 GETTABLEKS                       R7 R0 K20 ["Reason"]
      244 JUMPIFNOT                        R7 ; [+17]
      245 GETUPVAL                         R7 3
      246 GETTABLEKS                       R7 R7 K4 ["createElement"]
      248 LOADK                            R8 K5 ["Frame"]
      249 NEWTABLE                         R9 2 0
      251 NAMECALL                         R10 R2 K6 ["getNextOrder"]
      253 CALL                             R10 1 1
      254 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
      256 GETUPVAL                         R10 3
      257 GETTABLEKS                       R10 R10 K8 ["Tag"]
      259 LOADK                            R11 K49 ["Separator"]
      260 SETTABLE                         R11 R9 R10
      261 CALL                             R7 2 1
      262 SETTABLEKS                       R7 R6 K21 ["Separator2"]
      264 NAMECALL                         R8 R2 K6 ["getNextOrder"]
      266 CALL                             R8 1 1
      267 LOADK                            R11 K56 ["AccountDisabled"]
      268 LOADK                            R12 K22 ["Guidelines"]
      269 NAMECALL                         R9 R1 K14 ["getText"]
      271 CALL                             R9 3 1
      272 NEWTABLE                         R10 1 0
      274 DUPTABLE                         R11 K32 [{"LinkText", "LinkCallback"}]
      275 LOADK                            R14 K33 ["Links"]
      276 LOADK                            R15 K57 ["GuidelinesLink"]
      277 NAMECALL                         R12 R1 K14 ["getText"]
      279 CALL                             R12 3 1
      280 SETTABLEKS                       R12 R11 K30 ["LinkText"]
      282 DUPCLOSURE                       R12 K58 [PROTO_2]
      283 CAPTURE                          UPVAL U4
      284 CAPTURE                          UPVAL U11
      285 SETTABLEKS                       R12 R11 K31 ["LinkCallback"]
      287 SETTABLEKS                       R11 R10 K36 ["[link1]"]
      289 GETUPVAL                         R11 3
      290 GETTABLEKS                       R11 R11 K4 ["createElement"]
      292 GETUPVAL                         R12 6
      293 NEWTABLE                         R13 8 0
      295 LOADB                            R14 1
      296 SETTABLEKS                       R14 R13 K37 ["TextWrapped"]
      298 GETIMPORT                        R14 K41 [Enum.HorizontalAlignment.Left]
      300 SETTABLEKS                       R14 R13 K39 ["HorizontalAlignment"]
      302 SETTABLEKS                       R9 R13 K15 ["Text"]
      304 GETUPVAL                         R14 7
      305 SETTABLEKS                       R14 R13 K42 ["TextProps"]
      307 SETTABLEKS                       R10 R13 K43 ["LinkMap"]
      309 SETTABLEKS                       R8 R13 K7 ["LayoutOrder"]
      311 GETUPVAL                         R14 3
      312 GETTABLEKS                       R14 R14 K8 ["Tag"]
      314 LOADK                            R15 K16 ["X-FitY"]
      315 SETTABLE                         R15 R13 R14
      316 CALL                             R11 2 1
      317 MOVE                             R7 R11
      318 SETTABLEKS                       R7 R6 K22 ["Guidelines"]
      320 GETUPVAL                         R8 2
      321 JUMPIFNOT                        R8 ; [+27]
      322 LOADB                            R7 0
      323 GETTABLEKS                       R9 R0 K2 ["Type"]
      325 LOADN                            R10 1
      326 LOADN                            R11 3
      327 FASTCALL                         STRING_SUB ; [+2]
      328 GETIMPORT                        R8 K61 [string.sub]
      330 CALL                             R8 3 1
      331 JUMPIFNOTEQKS                    R8 K62 ["Ban"] ; [+37]
      333 GETUPVAL                         R7 3
      334 GETTABLEKS                       R7 R7 K4 ["createElement"]
      336 GETUPVAL                         R8 12
      337 DUPTABLE                         R9 K64 [{"ModerationEndDateTime", "LayoutOrder"}]
      338 GETTABLEKS                       R10 R0 K63 ["ModerationEndDateTime"]
      340 SETTABLEKS                       R10 R9 K63 ["ModerationEndDateTime"]
      342 NAMECALL                         R10 R2 K6 ["getNextOrder"]
      344 CALL                             R10 1 1
      345 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
      347 CALL                             R7 2 1
      348 JUMP                             ; [+20]
      349 LOADB                            R7 0
      350 GETTABLEKS                       R8 R0 K2 ["Type"]
      352 JUMPIFEQKS                       R8 K65 ["Warn"] ; [+16]
      354 GETUPVAL                         R7 3
      355 GETTABLEKS                       R7 R7 K4 ["createElement"]
      357 GETUPVAL                         R8 12
      358 DUPTABLE                         R9 K64 [{"ModerationEndDateTime", "LayoutOrder"}]
      359 GETTABLEKS                       R10 R0 K63 ["ModerationEndDateTime"]
      361 SETTABLEKS                       R10 R9 K63 ["ModerationEndDateTime"]
      363 NAMECALL                         R10 R2 K6 ["getNextOrder"]
      365 CALL                             R10 1 1
      366 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
      368 CALL                             R7 2 1
      369 SETTABLEKS                       R7 R6 K23 ["ReactivateDateNote"]
      371 NAMECALL                         R8 R2 K6 ["getNextOrder"]
      373 CALL                             R8 1 1
      374 LOADK                            R11 K56 ["AccountDisabled"]
      375 LOADK                            R12 K66 ["Appeal"]
      376 NAMECALL                         R9 R1 K14 ["getText"]
      378 CALL                             R9 3 1
      379 NEWTABLE                         R10 1 0
      381 DUPTABLE                         R11 K32 [{"LinkText", "LinkCallback"}]
      382 LOADK                            R14 K33 ["Links"]
      383 LOADK                            R15 K24 ["AppealPortal"]
      384 NAMECALL                         R12 R1 K14 ["getText"]
      386 CALL                             R12 3 1
      387 SETTABLEKS                       R12 R11 K30 ["LinkText"]
      389 DUPCLOSURE                       R12 K67 [PROTO_3]
      390 CAPTURE                          UPVAL U13
      391 CAPTURE                          UPVAL U4
      392 SETTABLEKS                       R12 R11 K31 ["LinkCallback"]
      394 SETTABLEKS                       R11 R10 K36 ["[link1]"]
      396 GETUPVAL                         R11 3
      397 GETTABLEKS                       R11 R11 K4 ["createElement"]
      399 GETUPVAL                         R12 6
      400 NEWTABLE                         R13 8 0
      402 LOADB                            R14 1
      403 SETTABLEKS                       R14 R13 K37 ["TextWrapped"]
      405 GETIMPORT                        R14 K41 [Enum.HorizontalAlignment.Left]
      407 SETTABLEKS                       R14 R13 K39 ["HorizontalAlignment"]
      409 SETTABLEKS                       R9 R13 K15 ["Text"]
      411 GETUPVAL                         R14 7
      412 SETTABLEKS                       R14 R13 K42 ["TextProps"]
      414 SETTABLEKS                       R10 R13 K43 ["LinkMap"]
      416 SETTABLEKS                       R8 R13 K7 ["LayoutOrder"]
      418 GETUPVAL                         R14 3
      419 GETTABLEKS                       R14 R14 K8 ["Tag"]
      421 LOADK                            R15 K16 ["X-FitY"]
      422 SETTABLE                         R15 R13 R14
      423 CALL                             R11 2 1
      424 MOVE                             R7 R11
      425 SETTABLEKS                       R7 R6 K24 ["AppealPortal"]
      427 LOADB                            R7 0
      428 GETTABLEKS                       R8 R0 K2 ["Type"]
      430 JUMPIFNOTEQKS                    R8 K65 ["Warn"] ; [+55]
      432 NAMECALL                         R8 R2 K6 ["getNextOrder"]
      434 CALL                             R8 1 1
      435 LOADK                            R11 K68 ["Agreement"]
      436 LOADK                            R12 K69 ["TermsOfUse"]
      437 NAMECALL                         R9 R1 K14 ["getText"]
      439 CALL                             R9 3 1
      440 NEWTABLE                         R10 1 0
      442 DUPTABLE                         R11 K32 [{"LinkText", "LinkCallback"}]
      443 LOADK                            R14 K33 ["Links"]
      444 LOADK                            R15 K34 ["ToULink"]
      445 NAMECALL                         R12 R1 K14 ["getText"]
      447 CALL                             R12 3 1
      448 SETTABLEKS                       R12 R11 K30 ["LinkText"]
      450 DUPCLOSURE                       R12 K70 [PROTO_4]
      451 CAPTURE                          UPVAL U4
      452 CAPTURE                          UPVAL U5
      453 SETTABLEKS                       R12 R11 K31 ["LinkCallback"]
      455 SETTABLEKS                       R11 R10 K36 ["[link1]"]
      457 GETUPVAL                         R11 3
      458 GETTABLEKS                       R11 R11 K4 ["createElement"]
      460 GETUPVAL                         R12 6
      461 NEWTABLE                         R13 8 0
      463 LOADB                            R14 1
      464 SETTABLEKS                       R14 R13 K37 ["TextWrapped"]
      466 GETIMPORT                        R14 K41 [Enum.HorizontalAlignment.Left]
      468 SETTABLEKS                       R14 R13 K39 ["HorizontalAlignment"]
      470 SETTABLEKS                       R9 R13 K15 ["Text"]
      472 GETUPVAL                         R14 7
      473 SETTABLEKS                       R14 R13 K42 ["TextProps"]
      475 SETTABLEKS                       R10 R13 K43 ["LinkMap"]
      477 SETTABLEKS                       R8 R13 K7 ["LayoutOrder"]
      479 GETUPVAL                         R14 3
      480 GETTABLEKS                       R14 R14 K8 ["Tag"]
      482 LOADK                            R15 K16 ["X-FitY"]
      483 SETTABLE                         R15 R13 R14
      484 CALL                             R11 2 1
      485 MOVE                             R7 R11
      486 SETTABLEKS                       R7 R6 K25 ["ToUAgreement"]
      488 LOADB                            R7 0
      489 GETTABLEKS                       R8 R0 K2 ["Type"]
      491 JUMPIFNOTEQKS                    R8 K65 ["Warn"] ; [+33]
      493 GETUPVAL                         R7 3
      494 GETTABLEKS                       R7 R7 K4 ["createElement"]
      496 GETUPVAL                         R8 14
      497 NEWTABLE                         R9 8 0
      499 NAMECALL                         R10 R2 K6 ["getNextOrder"]
      501 CALL                             R10 1 1
      502 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
      504 LOADK                            R12 K68 ["Agreement"]
      505 LOADK                            R13 K71 ["IAgree"]
      506 NAMECALL                         R10 R1 K14 ["getText"]
      508 CALL                             R10 3 1
      509 SETTABLEKS                       R10 R9 K15 ["Text"]
      511 GETTABLEKS                       R10 R0 K72 ["Checked"]
      513 SETTABLEKS                       R10 R9 K72 ["Checked"]
      515 NEWCLOSURE                       R10 P4
      516 CAPTURE                          VAL R0
      517 SETTABLEKS                       R10 R9 K73 ["OnChecked"]
      519 GETUPVAL                         R10 3
      520 GETTABLEKS                       R10 R10 K8 ["Tag"]
      522 LOADK                            R11 K16 ["X-FitY"]
      523 SETTABLE                         R11 R9 R10
      524 CALL                             R7 2 1
      525 SETTABLEKS                       R7 R6 K26 ["AgreeCheckBox"]
      527 CALL                             R3 3 -1
      528 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModerationDialog"]
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
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R5 R5 K12 ["TextWithLinks"]
       29 GETTABLEKS                       R6 R2 K13 ["Util"]
       31 GETTABLEKS                       R6 R6 K14 ["LayoutOrderIterator"]
       33 GETTABLEKS                       R7 R0 K15 ["Src"]
       35 GETTABLEKS                       R7 R7 K16 ["Components"]
       37 GETIMPORT                        R8 K5 [require]
       39 GETTABLEKS                       R9 R7 K17 ["Checkbox"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R10 R7 K18 ["Reason"]
       46 CALL                             R9 1 1
       47 GETIMPORT                        R10 K5 [require]
       49 GETTABLEKS                       R11 R7 K19 ["ReviewedNote"]
       51 CALL                             R10 1 1
       52 GETIMPORT                        R11 K5 [require]
       54 GETTABLEKS                       R12 R7 K20 ["ReactivateDateNote"]
       56 CALL                             R11 1 1
       57 GETIMPORT                        R12 K5 [require]
       59 GETTABLEKS                       R13 R0 K15 ["Src"]
       61 GETTABLEKS                       R13 R13 K13 ["Util"]
       63 GETTABLEKS                       R13 R13 K21 ["AbuseTypeToString"]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K23 [game]
       68 LOADK                            R15 K24 ["BrowserService"]
       69 NAMECALL                         R13 R13 K25 ["GetService"]
       71 CALL                             R13 2 1
       72 GETIMPORT                        R14 K23 [game]
       74 LOADK                            R16 K26 ["ContentProvider"]
       75 NAMECALL                         R14 R14 K25 ["GetService"]
       77 CALL                             R14 2 1
       78 GETIMPORT                        R15 K23 [game]
       80 LOADK                            R17 K27 ["ModerationDialogToULink"]
       81 LOADK                            R18 K28 ["https://en.help.roblox.com/hc/articles/115004647846-Roblox-Terms-of-Use"]
       82 NAMECALL                         R15 R15 K29 ["DefineFastString"]
       84 CALL                             R15 3 1
       85 GETIMPORT                        R16 K23 [game]
       87 LOADK                            R18 K30 ["ModerationDialogCommunityGuidelinesLink"]
       88 LOADK                            R19 K31 ["https://en.help.roblox.com/hc/en-us/articles/203313410-Roblox-Community-Standards"]
       89 NAMECALL                         R16 R16 K29 ["DefineFastString"]
       91 CALL                             R16 3 1
       92 GETIMPORT                        R17 K5 [require]
       94 GETTABLEKS                       R18 R0 K15 ["Src"]
       96 GETTABLEKS                       R18 R18 K32 ["SharedFlags"]
       98 GETTABLEKS                       R18 R18 K33 ["getFFlagStudioUserModerationV2Migration"]
      100 CALL                             R17 1 1
      101 CALL                             R17 0 1
      102 DUPTABLE                         R18 K38 [{["Font"], ["TextSize"] = 16, ["TextXAlignment"]}]
      103 GETIMPORT                        R19 K41 [Enum.Font.SourceSans]
      105 SETTABLEKS                       R19 R18 K34 ["Font"]
      107 GETIMPORT                        R19 K43 [Enum.TextXAlignment.Left]
      109 SETTABLEKS                       R19 R18 K37 ["TextXAlignment"]
      111 DUPCLOSURE                       R19 K44 [PROTO_0]
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R18
      115 DUPCLOSURE                       R20 K45 [PROTO_6]
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R17
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R18
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R16
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R14
      130 CAPTURE                          VAL R8
      131 RETURN                           R20 1
