PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isHead"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["enable"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K2 ["disable"]
       12 CALL                             R0 0 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onRegenerate"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["id"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onConfirm"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["id"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["disable"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["current"]
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 2
        9 LOADK                            R1 K2 ["rbxasset://SystemCursors/PointingHand"]
       10 SETTABLEKS                       R1 R0 K3 ["Icon"]
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["rbxasset://SystemCursors/Arrow"]
        2 SETTABLEKS                       R1 R0 K1 ["Icon"]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K2 ["enable"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["enabled"]
        7 JUMPIFNOT                        R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 2
       10 LOADK                            R1 K2 ["rbxasset://SystemCursors/PointingHand"]
       11 SETTABLEKS                       R1 R0 K3 ["Icon"]
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADK                            R1 K1 ["rbxasset://SystemCursors/Arrow"]
        6 SETTABLEKS                       R1 R0 K2 ["Icon"]
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createNextOrder"]
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R3 R0 K2 ["turn"]
       10 GETTABLEKS                       R4 R3 K3 ["status"]
       12 JUMPIFNOTEQKS                    R4 K4 ["cancelled"] ; [+2]
       14 LOADB                            R5 0 +1
       15 LOADB                            R5 1
       16 GETTABLEKS                       R7 R3 K5 ["errorCode"]
       18 JUMPIFEQKNIL                     R7 ; [+8]
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R7 R7 K6 ["byCode"]
       23 GETTABLEKS                       R8 R3 K5 ["errorCode"]
       25 GETTABLE                         R6 R7 R8
       26 JUMP                             ; [+1]
       27 LOADNIL                          R6
       28 GETUPVAL                         R7 3
       29 GETTABLEKS                       R8 R0 K7 ["isHead"]
       31 CALL                             R7 1 1
       32 GETUPVAL                         R8 4
       33 GETTABLEKS                       R8 R8 K8 ["useEffect"]
       35 NEWCLOSURE                       R9 P0
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R7
       38 NEWTABLE                         R10 0 1
       40 GETTABLEKS                       R11 R0 K7 ["isHead"]
       42 SETLIST                          R10 R11 1 [1]
       44 CALL                             R8 2 0
       45 GETUPVAL                         R8 3
       46 LOADB                            R9 0
       47 CALL                             R8 1 1
       48 GETUPVAL                         R9 4
       49 GETTABLEKS                       R9 R9 K9 ["useRef"]
       51 LOADB                            R10 0
       52 CALL                             R9 1 1
       53 GETUPVAL                         R10 5
       54 NAMECALL                         R10 R10 K0 ["use"]
       56 CALL                             R10 1 1
       57 NAMECALL                         R10 R10 K10 ["get"]
       59 CALL                             R10 1 1
       60 NAMECALL                         R10 R10 K11 ["GetMouse"]
       62 CALL                             R10 1 1
       63 GETUPVAL                         R11 1
       64 GETTABLEKS                       R11 R11 K12 ["useEventCallback"]
       66 NEWCLOSURE                       R12 P1
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R3
       69 CALL                             R11 1 1
       70 GETUPVAL                         R12 1
       71 GETTABLEKS                       R12 R12 K12 ["useEventCallback"]
       73 NEWCLOSURE                       R13 P2
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R3
       76 CALL                             R12 1 1
       77 GETUPVAL                         R13 1
       78 GETTABLEKS                       R13 R13 K12 ["useEventCallback"]
       80 NEWCLOSURE                       R14 P3
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R10
       84 CALL                             R13 1 1
       85 GETUPVAL                         R14 1
       86 GETTABLEKS                       R14 R14 K12 ["useEventCallback"]
       88 NEWCLOSURE                       R15 P4
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R8
       91 CALL                             R14 1 1
       92 GETUPVAL                         R15 1
       93 GETTABLEKS                       R15 R15 K12 ["useEventCallback"]
       95 NEWCLOSURE                       R16 P5
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R10
       99 CALL                             R15 1 1
      100 GETUPVAL                         R16 1
      101 GETTABLEKS                       R16 R16 K12 ["useEventCallback"]
      103 NEWCLOSURE                       R17 P6
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R10
      106 CALL                             R16 1 1
      107 GETUPVAL                         R17 4
      108 GETTABLEKS                       R17 R17 K13 ["createElement"]
      110 GETUPVAL                         R18 4
      111 GETTABLEKS                       R18 R18 K14 ["Fragment"]
      113 NEWTABLE                         R19 0 0
      115 DUPTABLE                         R20 K17 [{"Turn", "ImageDialog"}]
      116 GETUPVAL                         R21 4
      117 GETTABLEKS                       R21 R21 K13 ["createElement"]
      119 GETUPVAL                         R22 6
      120 GETTABLEKS                       R22 R22 K18 ["Root"]
      122 DUPTABLE                         R23 K22 [{"LayoutOrder", "expanded", "onToggle"}]
      123 GETTABLEKS                       R24 R0 K19 ["LayoutOrder"]
      125 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
      127 GETTABLEKS                       R24 R7 K23 ["enabled"]
      129 SETTABLEKS                       R24 R23 K20 ["expanded"]
      131 GETTABLEKS                       R24 R7 K24 ["toggle"]
      133 SETTABLEKS                       R24 R23 K21 ["onToggle"]
      135 DUPTABLE                         R24 K27 [{"Header", "Content"}]
      136 GETUPVAL                         R25 4
      137 GETTABLEKS                       R25 R25 K13 ["createElement"]
      139 GETUPVAL                         R26 6
      140 GETTABLEKS                       R26 R26 K25 ["Header"]
      142 DUPTABLE                         R27 K31 [{["LayoutOrder"], ["isDisabled"], ["testId"] = "avatar-chat-turn-header"}]
      143 MOVE                             R28 R2
      144 CALL                             R28 0 1
      145 SETTABLEKS                       R28 R27 K19 ["LayoutOrder"]
      147 NOT                              R28 R5
      148 SETTABLEKS                       R28 R27 K28 ["isDisabled"]
      150 DUPTABLE                         R28 K33 [{"Status"}]
      151 GETUPVAL                         R29 4
      152 GETTABLEKS                       R29 R29 K13 ["createElement"]
      154 GETUPVAL                         R30 7
      155 DUPTABLE                         R31 K36 [{"LayoutOrder", "Text", "tag", "testId"}]
      156 MOVE                             R32 R2
      157 CALL                             R32 0 1
      158 SETTABLEKS                       R32 R31 K19 ["LayoutOrder"]
      160 LOADK                            R34 K37 ["AvatarChatScreen"]
      161 GETUPVAL                         R36 8
      162 GETTABLE                         R35 R36 R4
      163 NAMECALL                         R32 R1 K38 ["getText"]
      165 CALL                             R32 3 1
      166 SETTABLEKS                       R32 R31 K34 ["Text"]
      168 NEWTABLE                         R32 4 0
      170 LOADB                            R33 1
      171 SETTABLEKS                       R33 R32 K39 ["auto-xy text-label-small text-wrap"]
      173 JUMPIFEQKS                       R4 K40 ["failed"] ; [+2]
      175 LOADB                            R33 0 +1
      176 LOADB                            R33 1
      177 SETTABLEKS                       R33 R32 K41 ["content-system-alert"]
      179 JUMPIFNOTEQKS                    R4 K40 ["failed"] ; [+2]
      181 LOADB                            R33 0 +1
      182 LOADB                            R33 1
      183 SETTABLEKS                       R33 R32 K42 ["content-muted"]
      185 SETTABLEKS                       R32 R31 K35 ["tag"]
      187 LOADK                            R32 K43 ["avatar-chat-turn-%*"]
      188 MOVE                             R34 R4
      189 NAMECALL                         R32 R32 K44 ["format"]
      191 CALL                             R32 2 1
      192 SETTABLEKS                       R32 R31 K29 ["testId"]
      194 JUMPIFNOTEQKS                    R4 K45 ["generating"] ; [+10]
      196 DUPTABLE                         R32 K47 [{"Shimmer"}]
      197 GETUPVAL                         R33 4
      198 GETTABLEKS                       R33 R33 K13 ["createElement"]
      200 GETUPVAL                         R34 9
      201 CALL                             R33 1 1
      202 SETTABLEKS                       R33 R32 K46 ["Shimmer"]
      204 JUMP                             ; [+1]
      205 LOADNIL                          R32
      206 CALL                             R29 3 1
      207 SETTABLEKS                       R29 R28 K32 ["Status"]
      209 CALL                             R25 3 1
      210 SETTABLEKS                       R25 R24 K25 ["Header"]
      212 JUMPIFNOT                        R5 ; [+266]
      213 GETUPVAL                         R25 4
      214 GETTABLEKS                       R25 R25 K13 ["createElement"]
      216 GETUPVAL                         R26 6
      217 GETTABLEKS                       R26 R26 K26 ["Content"]
      219 DUPTABLE                         R27 K49 [{["LayoutOrder"], ["tag"] = "col align-x-right gap-xsmall auto-xy"}]
      220 MOVE                             R28 R2
      221 CALL                             R28 0 1
      222 SETTABLEKS                       R28 R27 K19 ["LayoutOrder"]
      224 DUPTABLE                         R28 K53 [{"Image", "ErrorMessage", "Action"}]
      225 JUMPIFNOTEQKS                    R4 K54 ["complete"] ; [+64]
      227 GETTABLEKS                       R30 R3 K55 ["previewImage"]
      229 JUMPIFEQKNIL                     R30 ; [+60]
      231 GETUPVAL                         R29 4
      232 GETTABLEKS                       R29 R29 K13 ["createElement"]
      234 LOADK                            R30 K56 ["ImageButton"]
      235 NEWTABLE                         R31 16 0
      237 MOVE                             R32 R2
      238 CALL                             R32 0 1
      239 SETTABLEKS                       R32 R31 K19 ["LayoutOrder"]
      241 GETIMPORT                        R32 K59 [UDim2.fromOffset]
      243 LOADN                            R33 256
      244 LOADN                            R34 256
      245 CALL                             R32 2 1
      246 SETTABLEKS                       R32 R31 K60 ["Size"]
      248 LOADN                            R32 1
      249 SETTABLEKS                       R32 R31 K61 ["BackgroundTransparency"]
      251 LOADB                            R32 0
      252 SETTABLEKS                       R32 R31 K62 ["AutoButtonColor"]
      254 GETIMPORT                        R32 K64 [Content.fromObject]
      256 GETTABLEKS                       R33 R3 K55 ["previewImage"]
      258 CALL                             R32 1 1
      259 SETTABLEKS                       R32 R31 K65 ["ImageContent"]
      261 GETIMPORT                        R32 K69 [Enum.ScaleType.Fit]
      263 SETTABLEKS                       R32 R31 K67 ["ScaleType"]
      265 GETUPVAL                         R32 4
      266 GETTABLEKS                       R32 R32 K70 ["Event"]
      268 GETTABLEKS                       R32 R32 K71 ["Activated"]
      270 SETTABLE                         R14 R31 R32
      271 GETUPVAL                         R32 4
      272 GETTABLEKS                       R32 R32 K70 ["Event"]
      274 GETTABLEKS                       R32 R32 K72 ["MouseEnter"]
      276 SETTABLE                         R15 R31 R32
      277 GETUPVAL                         R32 4
      278 GETTABLEKS                       R32 R32 K70 ["Event"]
      280 GETTABLEKS                       R32 R32 K73 ["MouseLeave"]
      282 SETTABLE                         R16 R31 R32
      283 GETUPVAL                         R32 4
      284 GETTABLEKS                       R32 R32 K74 ["Tag"]
      286 LOADK                            R33 K75 ["data-testid=avatar-chat-preview-image"]
      287 SETTABLE                         R33 R31 R32
      288 CALL                             R29 2 1
      289 JUMP                             ; [+26]
      290 JUMPIFNOTEQKS                    R4 K45 ["generating"] ; [+24]
      292 GETUPVAL                         R29 4
      293 GETTABLEKS                       R29 R29 K13 ["createElement"]
      295 GETUPVAL                         R30 10
      296 DUPTABLE                         R31 K77 [{"LayoutOrder", "Size", "radius"}]
      297 MOVE                             R32 R2
      298 CALL                             R32 0 1
      299 SETTABLEKS                       R32 R31 K19 ["LayoutOrder"]
      301 GETIMPORT                        R32 K59 [UDim2.fromOffset]
      303 LOADN                            R33 256
      304 LOADN                            R34 256
      305 CALL                             R32 2 1
      306 SETTABLEKS                       R32 R31 K60 ["Size"]
      308 GETUPVAL                         R32 11
      309 GETTABLEKS                       R32 R32 K78 ["Small"]
      311 SETTABLEKS                       R32 R31 K76 ["radius"]
      313 CALL                             R29 2 1
      314 JUMP                             ; [+1]
      315 LOADNIL                          R29
      316 SETTABLEKS                       R29 R28 K50 ["Image"]
      318 JUMPIFEQKNIL                     R6 ; [+20]
      320 GETUPVAL                         R29 4
      321 GETTABLEKS                       R29 R29 K13 ["createElement"]
      323 GETUPVAL                         R30 7
      324 DUPTABLE                         R31 K80 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-body-small text-wrap content-muted"}]
      325 MOVE                             R32 R2
      326 CALL                             R32 0 1
      327 SETTABLEKS                       R32 R31 K19 ["LayoutOrder"]
      329 LOADK                            R34 K37 ["AvatarChatScreen"]
      330 GETTABLEKS                       R35 R6 K81 ["messageKey"]
      332 NAMECALL                         R32 R1 K38 ["getText"]
      334 CALL                             R32 3 1
      335 SETTABLEKS                       R32 R31 K34 ["Text"]
      337 CALL                             R29 2 1
      338 JUMP                             ; [+1]
      339 LOADNIL                          R29
      340 SETTABLEKS                       R29 R28 K51 ["ErrorMessage"]
      342 JUMPIFNOTEQKS                    R4 K45 ["generating"] ; [+28]
      344 GETUPVAL                         R29 4
      345 GETTABLEKS                       R29 R29 K13 ["createElement"]
      347 GETUPVAL                         R30 12
      348 DUPTABLE                         R31 K86 [{["LayoutOrder"], ["size"], ["text"], ["onActivated"], ["testId"] = "avatar-chat-cancel"}]
      349 MOVE                             R32 R2
      350 CALL                             R32 0 1
      351 SETTABLEKS                       R32 R31 K19 ["LayoutOrder"]
      353 GETUPVAL                         R32 13
      354 GETTABLEKS                       R32 R32 K87 ["XSmall"]
      356 SETTABLEKS                       R32 R31 K82 ["size"]
      358 LOADK                            R34 K37 ["AvatarChatScreen"]
      359 LOADK                            R35 K88 ["ButtonCancel"]
      360 NAMECALL                         R32 R1 K38 ["getText"]
      362 CALL                             R32 3 1
      363 SETTABLEKS                       R32 R31 K83 ["text"]
      365 GETTABLEKS                       R32 R0 K89 ["onCancel"]
      367 SETTABLEKS                       R32 R31 K84 ["onActivated"]
      369 CALL                             R29 2 1
      370 JUMP                             ; [+104]
      371 JUMPIFNOTEQKS                    R4 K54 ["complete"] ; [+70]
      373 GETUPVAL                         R29 4
      374 GETTABLEKS                       R29 R29 K13 ["createElement"]
      376 GETUPVAL                         R30 14
      377 DUPTABLE                         R31 K91 [{["tag"] = "row gap-xsmall auto-xy", ["LayoutOrder"]}]
      378 MOVE                             R32 R2
      379 CALL                             R32 0 1
      380 SETTABLEKS                       R32 R31 K19 ["LayoutOrder"]
      382 DUPTABLE                         R32 K94 [{"Confirm", "Regenerate"}]
      383 GETUPVAL                         R33 4
      384 GETTABLEKS                       R33 R33 K13 ["createElement"]
      386 GETUPVAL                         R34 12
      387 DUPTABLE                         R35 K97 [{["LayoutOrder"], ["size"], ["text"], ["variant"], ["onActivated"], ["testId"] = "avatar-chat-confirm"}]
      388 MOVE                             R36 R2
      389 CALL                             R36 0 1
      390 SETTABLEKS                       R36 R35 K19 ["LayoutOrder"]
      392 GETUPVAL                         R36 13
      393 GETTABLEKS                       R36 R36 K87 ["XSmall"]
      395 SETTABLEKS                       R36 R35 K82 ["size"]
      397 LOADK                            R38 K37 ["AvatarChatScreen"]
      398 LOADK                            R39 K98 ["ButtonUse"]
      399 NAMECALL                         R36 R1 K38 ["getText"]
      401 CALL                             R36 3 1
      402 SETTABLEKS                       R36 R35 K83 ["text"]
      404 GETUPVAL                         R36 15
      405 GETTABLEKS                       R36 R36 K99 ["Emphasis"]
      407 SETTABLEKS                       R36 R35 K95 ["variant"]
      409 SETTABLEKS                       R12 R35 K84 ["onActivated"]
      411 CALL                             R33 2 1
      412 SETTABLEKS                       R33 R32 K92 ["Confirm"]
      414 GETUPVAL                         R33 4
      415 GETTABLEKS                       R33 R33 K13 ["createElement"]
      417 GETUPVAL                         R34 12
      418 DUPTABLE                         R35 K101 [{["LayoutOrder"], ["size"], ["text"], ["onActivated"], ["testId"] = "avatar-chat-regenerate"}]
      419 MOVE                             R36 R2
      420 CALL                             R36 0 1
      421 SETTABLEKS                       R36 R35 K19 ["LayoutOrder"]
      423 GETUPVAL                         R36 13
      424 GETTABLEKS                       R36 R36 K87 ["XSmall"]
      426 SETTABLEKS                       R36 R35 K82 ["size"]
      428 LOADK                            R38 K37 ["AvatarChatScreen"]
      429 LOADK                            R39 K102 ["ButtonRegenerate"]
      430 NAMECALL                         R36 R1 K38 ["getText"]
      432 CALL                             R36 3 1
      433 SETTABLEKS                       R36 R35 K83 ["text"]
      435 SETTABLEKS                       R11 R35 K84 ["onActivated"]
      437 CALL                             R33 2 1
      438 SETTABLEKS                       R33 R32 K93 ["Regenerate"]
      440 CALL                             R29 3 1
      441 JUMP                             ; [+33]
      442 JUMPIFNOTEQKS                    R4 K40 ["failed"] ; [+31]
      444 JUMPIFEQKNIL                     R6 ; [+4]
      446 GETTABLEKS                       R30 R6 K103 ["retryable"]
      448 JUMPIFNOT                        R30 ; [+25]
      449 GETUPVAL                         R29 4
      450 GETTABLEKS                       R29 R29 K13 ["createElement"]
      452 GETUPVAL                         R30 12
      453 DUPTABLE                         R31 K101 [{["LayoutOrder"], ["size"], ["text"], ["onActivated"], ["testId"] = "avatar-chat-regenerate"}]
      454 MOVE                             R32 R2
      455 CALL                             R32 0 1
      456 SETTABLEKS                       R32 R31 K19 ["LayoutOrder"]
      458 GETUPVAL                         R32 13
      459 GETTABLEKS                       R32 R32 K87 ["XSmall"]
      461 SETTABLEKS                       R32 R31 K82 ["size"]
      463 LOADK                            R34 K37 ["AvatarChatScreen"]
      464 LOADK                            R35 K102 ["ButtonRegenerate"]
      465 NAMECALL                         R32 R1 K38 ["getText"]
      467 CALL                             R32 3 1
      468 SETTABLEKS                       R32 R31 K83 ["text"]
      470 SETTABLEKS                       R11 R31 K84 ["onActivated"]
      472 CALL                             R29 2 1
      473 JUMP                             ; [+1]
      474 LOADNIL                          R29
      475 SETTABLEKS                       R29 R28 K52 ["Action"]
      477 CALL                             R25 3 1
      478 JUMP                             ; [+1]
      479 LOADNIL                          R25
      480 SETTABLEKS                       R25 R24 K26 ["Content"]
      482 CALL                             R21 3 1
      483 SETTABLEKS                       R21 R20 K15 ["Turn"]
      485 GETTABLEKS                       R22 R8 K23 ["enabled"]
      487 JUMPIFNOT                        R22 ; [+17]
      488 GETTABLEKS                       R22 R3 K55 ["previewImage"]
      490 JUMPIFEQKNIL                     R22 ; [+14]
      492 GETUPVAL                         R21 4
      493 GETTABLEKS                       R21 R21 K13 ["createElement"]
      495 GETUPVAL                         R22 16
      496 DUPTABLE                         R23 K105 [{"previewImage", "onClose"}]
      497 GETTABLEKS                       R24 R3 K55 ["previewImage"]
      499 SETTABLEKS                       R24 R23 K55 ["previewImage"]
      501 SETTABLEKS                       R13 R23 K104 ["onClose"]
      503 CALL                             R21 2 1
      504 JUMP                             ; [+1]
      505 LOADNIL                          R21
      506 SETTABLEKS                       R21 R20 K16 ["ImageDialog"]
      508 CALL                             R17 3 -1
      509 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Enums"]
       37 GETTABLEKS                       R5 R5 K12 ["ButtonVariant"]
       39 GETTABLEKS                       R6 R4 K11 ["Enums"]
       41 GETTABLEKS                       R6 R6 K13 ["InputSize"]
       43 GETTABLEKS                       R7 R4 K11 ["Enums"]
       45 GETTABLEKS                       R7 R7 K14 ["Radius"]
       47 GETTABLEKS                       R8 R4 K15 ["Button"]
       49 GETTABLEKS                       R9 R4 K16 ["Skeleton"]
       51 GETTABLEKS                       R10 R4 K17 ["Text"]
       53 GETTABLEKS                       R11 R4 K18 ["View"]
       55 GETIMPORT                        R12 K5 [require]
       57 GETTABLEKS                       R13 R0 K19 ["Src"]
       59 GETTABLEKS                       R13 R13 K20 ["Components"]
       61 GETTABLEKS                       R13 R13 K21 ["Screens"]
       63 GETTABLEKS                       R13 R13 K22 ["AvatarChatScreen"]
       65 GETTABLEKS                       R13 R13 K23 ["Accordion"]
       67 CALL                             R12 1 1
       68 GETIMPORT                        R13 K5 [require]
       70 GETTABLEKS                       R14 R0 K19 ["Src"]
       72 GETTABLEKS                       R14 R14 K24 ["Util"]
       74 GETTABLEKS                       R14 R14 K25 ["AvatarCreationErrors"]
       76 CALL                             R13 1 1
       77 GETIMPORT                        R14 K5 [require]
       79 GETTABLEKS                       R15 R0 K19 ["Src"]
       81 GETTABLEKS                       R15 R15 K20 ["Components"]
       83 GETTABLEKS                       R15 R15 K21 ["Screens"]
       85 GETTABLEKS                       R15 R15 K22 ["AvatarChatScreen"]
       87 GETTABLEKS                       R15 R15 K26 ["ImageDialog"]
       89 CALL                             R14 1 1
       90 GETIMPORT                        R15 K5 [require]
       92 GETTABLEKS                       R16 R0 K19 ["Src"]
       94 GETTABLEKS                       R16 R16 K20 ["Components"]
       96 GETTABLEKS                       R16 R16 K21 ["Screens"]
       98 GETTABLEKS                       R16 R16 K22 ["AvatarChatScreen"]
      100 GETTABLEKS                       R16 R16 K27 ["ShimmerGradient"]
      102 CALL                             R15 1 1
      103 GETIMPORT                        R16 K5 [require]
      105 GETTABLEKS                       R17 R0 K19 ["Src"]
      107 GETTABLEKS                       R17 R17 K28 ["Types"]
      109 CALL                             R16 1 1
      110 GETIMPORT                        R17 K5 [require]
      112 GETTABLEKS                       R18 R0 K19 ["Src"]
      114 GETTABLEKS                       R18 R18 K29 ["Hooks"]
      116 GETTABLEKS                       R18 R18 K30 ["useToggleState"]
      118 CALL                             R17 1 1
      119 GETTABLEKS                       R18 R1 K31 ["ContextServices"]
      121 GETTABLEKS                       R18 R18 K32 ["Localization"]
      123 GETTABLEKS                       R19 R1 K31 ["ContextServices"]
      125 GETTABLEKS                       R19 R19 K33 ["Plugin"]
      127 DUPTABLE                         R20 K42 [{["generating"] = "StatusGenerating", ["complete"] = "HeaderComplete", ["failed"] = "StatusFailed", ["cancelled"] = "StatusCancelled"}]
      128 DUPCLOSURE                       R21 K43 [PROTO_7]
      129 CAPTURE                          VAL R18
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R19
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R20
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R14
      146 RETURN                           R21 1
