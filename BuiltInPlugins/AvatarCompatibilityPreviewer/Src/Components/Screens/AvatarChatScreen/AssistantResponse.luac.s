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
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R7 R0 K5 ["isHead"]
       19 CALL                             R6 1 1
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R7 R7 K6 ["useEffect"]
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R6
       26 NEWTABLE                         R9 0 1
       28 GETTABLEKS                       R10 R0 K5 ["isHead"]
       30 SETLIST                          R9 R10 1 [1]
       32 CALL                             R7 2 0
       33 GETUPVAL                         R7 2
       34 LOADB                            R8 0
       35 CALL                             R7 1 1
       36 GETUPVAL                         R8 3
       37 GETTABLEKS                       R8 R8 K7 ["useRef"]
       39 LOADB                            R9 0
       40 CALL                             R8 1 1
       41 GETUPVAL                         R9 4
       42 NAMECALL                         R9 R9 K0 ["use"]
       44 CALL                             R9 1 1
       45 NAMECALL                         R9 R9 K8 ["get"]
       47 CALL                             R9 1 1
       48 NAMECALL                         R9 R9 K9 ["GetMouse"]
       50 CALL                             R9 1 1
       51 GETUPVAL                         R10 1
       52 GETTABLEKS                       R10 R10 K10 ["useEventCallback"]
       54 NEWCLOSURE                       R11 P1
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R3
       57 CALL                             R10 1 1
       58 GETUPVAL                         R11 1
       59 GETTABLEKS                       R11 R11 K10 ["useEventCallback"]
       61 NEWCLOSURE                       R12 P2
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R3
       64 CALL                             R11 1 1
       65 GETUPVAL                         R12 1
       66 GETTABLEKS                       R12 R12 K10 ["useEventCallback"]
       68 NEWCLOSURE                       R13 P3
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R9
       72 CALL                             R12 1 1
       73 GETUPVAL                         R13 1
       74 GETTABLEKS                       R13 R13 K10 ["useEventCallback"]
       76 NEWCLOSURE                       R14 P4
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R7
       79 CALL                             R13 1 1
       80 GETUPVAL                         R14 1
       81 GETTABLEKS                       R14 R14 K10 ["useEventCallback"]
       83 NEWCLOSURE                       R15 P5
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R9
       87 CALL                             R14 1 1
       88 GETUPVAL                         R15 1
       89 GETTABLEKS                       R15 R15 K10 ["useEventCallback"]
       91 NEWCLOSURE                       R16 P6
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R9
       94 CALL                             R15 1 1
       95 GETUPVAL                         R16 3
       96 GETTABLEKS                       R16 R16 K11 ["createElement"]
       98 GETUPVAL                         R17 3
       99 GETTABLEKS                       R17 R17 K12 ["Fragment"]
      101 NEWTABLE                         R18 0 0
      103 DUPTABLE                         R19 K15 [{"Turn", "ImageDialog"}]
      104 GETUPVAL                         R20 3
      105 GETTABLEKS                       R20 R20 K11 ["createElement"]
      107 GETUPVAL                         R21 5
      108 GETTABLEKS                       R21 R21 K16 ["Root"]
      110 DUPTABLE                         R22 K20 [{"LayoutOrder", "expanded", "onToggle"}]
      111 GETTABLEKS                       R23 R0 K17 ["LayoutOrder"]
      113 SETTABLEKS                       R23 R22 K17 ["LayoutOrder"]
      115 GETTABLEKS                       R23 R6 K21 ["enabled"]
      117 SETTABLEKS                       R23 R22 K18 ["expanded"]
      119 GETTABLEKS                       R23 R6 K22 ["toggle"]
      121 SETTABLEKS                       R23 R22 K19 ["onToggle"]
      123 DUPTABLE                         R23 K25 [{"Header", "Content"}]
      124 GETUPVAL                         R24 3
      125 GETTABLEKS                       R24 R24 K11 ["createElement"]
      127 GETUPVAL                         R25 5
      128 GETTABLEKS                       R25 R25 K23 ["Header"]
      130 DUPTABLE                         R26 K29 [{["LayoutOrder"], ["isDisabled"], ["testId"] = "avatar-chat-turn-header"}]
      131 MOVE                             R27 R2
      132 CALL                             R27 0 1
      133 SETTABLEKS                       R27 R26 K17 ["LayoutOrder"]
      135 NOT                              R27 R5
      136 SETTABLEKS                       R27 R26 K26 ["isDisabled"]
      138 DUPTABLE                         R27 K31 [{"Status"}]
      139 GETUPVAL                         R28 3
      140 GETTABLEKS                       R28 R28 K11 ["createElement"]
      142 GETUPVAL                         R29 6
      143 DUPTABLE                         R30 K34 [{"LayoutOrder", "Text", "tag", "testId"}]
      144 MOVE                             R31 R2
      145 CALL                             R31 0 1
      146 SETTABLEKS                       R31 R30 K17 ["LayoutOrder"]
      148 LOADK                            R33 K35 ["AvatarChatScreen"]
      149 GETUPVAL                         R35 7
      150 GETTABLE                         R34 R35 R4
      151 NAMECALL                         R31 R1 K36 ["getText"]
      153 CALL                             R31 3 1
      154 SETTABLEKS                       R31 R30 K32 ["Text"]
      156 NEWTABLE                         R31 4 0
      158 LOADB                            R32 1
      159 SETTABLEKS                       R32 R31 K37 ["auto-xy text-label-small text-wrap"]
      161 JUMPIFEQKS                       R4 K38 ["failed"] ; [+2]
      163 LOADB                            R32 0 +1
      164 LOADB                            R32 1
      165 SETTABLEKS                       R32 R31 K39 ["content-system-alert"]
      167 JUMPIFNOTEQKS                    R4 K38 ["failed"] ; [+2]
      169 LOADB                            R32 0 +1
      170 LOADB                            R32 1
      171 SETTABLEKS                       R32 R31 K40 ["content-default"]
      173 SETTABLEKS                       R31 R30 K33 ["tag"]
      175 LOADK                            R31 K41 ["avatar-chat-turn-%*"]
      176 MOVE                             R33 R4
      177 NAMECALL                         R31 R31 K42 ["format"]
      179 CALL                             R31 2 1
      180 SETTABLEKS                       R31 R30 K27 ["testId"]
      182 JUMPIFNOTEQKS                    R4 K43 ["generating"] ; [+10]
      184 DUPTABLE                         R31 K45 [{"Shimmer"}]
      185 GETUPVAL                         R32 3
      186 GETTABLEKS                       R32 R32 K11 ["createElement"]
      188 GETUPVAL                         R33 8
      189 CALL                             R32 1 1
      190 SETTABLEKS                       R32 R31 K44 ["Shimmer"]
      192 JUMP                             ; [+1]
      193 LOADNIL                          R31
      194 CALL                             R28 3 1
      195 SETTABLEKS                       R28 R27 K30 ["Status"]
      197 CALL                             R24 3 1
      198 SETTABLEKS                       R24 R23 K23 ["Header"]
      200 JUMPIFNOT                        R5 ; [+237]
      201 GETUPVAL                         R24 3
      202 GETTABLEKS                       R24 R24 K11 ["createElement"]
      204 GETUPVAL                         R25 5
      205 GETTABLEKS                       R25 R25 K24 ["Content"]
      207 DUPTABLE                         R26 K47 [{["LayoutOrder"], ["tag"] = "col align-x-right gap-xsmall auto-xy"}]
      208 MOVE                             R27 R2
      209 CALL                             R27 0 1
      210 SETTABLEKS                       R27 R26 K17 ["LayoutOrder"]
      212 DUPTABLE                         R27 K50 [{"Image", "Action"}]
      213 JUMPIFNOTEQKS                    R4 K51 ["complete"] ; [+64]
      215 GETTABLEKS                       R29 R3 K52 ["previewImage"]
      217 JUMPIFEQKNIL                     R29 ; [+60]
      219 GETUPVAL                         R28 3
      220 GETTABLEKS                       R28 R28 K11 ["createElement"]
      222 LOADK                            R29 K53 ["ImageButton"]
      223 NEWTABLE                         R30 16 0
      225 MOVE                             R31 R2
      226 CALL                             R31 0 1
      227 SETTABLEKS                       R31 R30 K17 ["LayoutOrder"]
      229 GETIMPORT                        R31 K56 [UDim2.fromOffset]
      231 LOADN                            R32 256
      232 LOADN                            R33 256
      233 CALL                             R31 2 1
      234 SETTABLEKS                       R31 R30 K57 ["Size"]
      236 LOADN                            R31 1
      237 SETTABLEKS                       R31 R30 K58 ["BackgroundTransparency"]
      239 LOADB                            R31 0
      240 SETTABLEKS                       R31 R30 K59 ["AutoButtonColor"]
      242 GETIMPORT                        R31 K61 [Content.fromObject]
      244 GETTABLEKS                       R32 R3 K52 ["previewImage"]
      246 CALL                             R31 1 1
      247 SETTABLEKS                       R31 R30 K62 ["ImageContent"]
      249 GETIMPORT                        R31 K66 [Enum.ScaleType.Fit]
      251 SETTABLEKS                       R31 R30 K64 ["ScaleType"]
      253 GETUPVAL                         R31 3
      254 GETTABLEKS                       R31 R31 K67 ["Event"]
      256 GETTABLEKS                       R31 R31 K68 ["Activated"]
      258 SETTABLE                         R13 R30 R31
      259 GETUPVAL                         R31 3
      260 GETTABLEKS                       R31 R31 K67 ["Event"]
      262 GETTABLEKS                       R31 R31 K69 ["MouseEnter"]
      264 SETTABLE                         R14 R30 R31
      265 GETUPVAL                         R31 3
      266 GETTABLEKS                       R31 R31 K67 ["Event"]
      268 GETTABLEKS                       R31 R31 K70 ["MouseLeave"]
      270 SETTABLE                         R15 R30 R31
      271 GETUPVAL                         R31 3
      272 GETTABLEKS                       R31 R31 K71 ["Tag"]
      274 LOADK                            R32 K72 ["data-testid=avatar-chat-preview-image"]
      275 SETTABLE                         R32 R30 R31
      276 CALL                             R28 2 1
      277 JUMP                             ; [+26]
      278 JUMPIFNOTEQKS                    R4 K43 ["generating"] ; [+24]
      280 GETUPVAL                         R28 3
      281 GETTABLEKS                       R28 R28 K11 ["createElement"]
      283 GETUPVAL                         R29 9
      284 DUPTABLE                         R30 K74 [{"LayoutOrder", "Size", "radius"}]
      285 MOVE                             R31 R2
      286 CALL                             R31 0 1
      287 SETTABLEKS                       R31 R30 K17 ["LayoutOrder"]
      289 GETIMPORT                        R31 K56 [UDim2.fromOffset]
      291 LOADN                            R32 256
      292 LOADN                            R33 256
      293 CALL                             R31 2 1
      294 SETTABLEKS                       R31 R30 K57 ["Size"]
      296 GETUPVAL                         R31 10
      297 GETTABLEKS                       R31 R31 K75 ["Small"]
      299 SETTABLEKS                       R31 R30 K73 ["radius"]
      301 CALL                             R28 2 1
      302 JUMP                             ; [+1]
      303 LOADNIL                          R28
      304 SETTABLEKS                       R28 R27 K48 ["Image"]
      306 JUMPIFNOTEQKS                    R4 K43 ["generating"] ; [+28]
      308 GETUPVAL                         R28 3
      309 GETTABLEKS                       R28 R28 K11 ["createElement"]
      311 GETUPVAL                         R29 11
      312 DUPTABLE                         R30 K80 [{["LayoutOrder"], ["size"], ["text"], ["onActivated"], ["testId"] = "avatar-chat-cancel"}]
      313 MOVE                             R31 R2
      314 CALL                             R31 0 1
      315 SETTABLEKS                       R31 R30 K17 ["LayoutOrder"]
      317 GETUPVAL                         R31 12
      318 GETTABLEKS                       R31 R31 K81 ["XSmall"]
      320 SETTABLEKS                       R31 R30 K76 ["size"]
      322 LOADK                            R33 K35 ["AvatarChatScreen"]
      323 LOADK                            R34 K82 ["ButtonCancel"]
      324 NAMECALL                         R31 R1 K36 ["getText"]
      326 CALL                             R31 3 1
      327 SETTABLEKS                       R31 R30 K77 ["text"]
      329 GETTABLEKS                       R31 R0 K83 ["onCancel"]
      331 SETTABLEKS                       R31 R30 K78 ["onActivated"]
      333 CALL                             R28 2 1
      334 JUMP                             ; [+99]
      335 JUMPIFNOTEQKS                    R4 K51 ["complete"] ; [+70]
      337 GETUPVAL                         R28 3
      338 GETTABLEKS                       R28 R28 K11 ["createElement"]
      340 GETUPVAL                         R29 13
      341 DUPTABLE                         R30 K85 [{["tag"] = "row gap-xsmall auto-xy", ["LayoutOrder"]}]
      342 MOVE                             R31 R2
      343 CALL                             R31 0 1
      344 SETTABLEKS                       R31 R30 K17 ["LayoutOrder"]
      346 DUPTABLE                         R31 K88 [{"Confirm", "Regenerate"}]
      347 GETUPVAL                         R32 3
      348 GETTABLEKS                       R32 R32 K11 ["createElement"]
      350 GETUPVAL                         R33 11
      351 DUPTABLE                         R34 K91 [{["LayoutOrder"], ["size"], ["text"], ["variant"], ["onActivated"], ["testId"] = "avatar-chat-confirm"}]
      352 MOVE                             R35 R2
      353 CALL                             R35 0 1
      354 SETTABLEKS                       R35 R34 K17 ["LayoutOrder"]
      356 GETUPVAL                         R35 12
      357 GETTABLEKS                       R35 R35 K81 ["XSmall"]
      359 SETTABLEKS                       R35 R34 K76 ["size"]
      361 LOADK                            R37 K35 ["AvatarChatScreen"]
      362 LOADK                            R38 K92 ["ButtonUse"]
      363 NAMECALL                         R35 R1 K36 ["getText"]
      365 CALL                             R35 3 1
      366 SETTABLEKS                       R35 R34 K77 ["text"]
      368 GETUPVAL                         R35 14
      369 GETTABLEKS                       R35 R35 K93 ["Emphasis"]
      371 SETTABLEKS                       R35 R34 K89 ["variant"]
      373 SETTABLEKS                       R11 R34 K78 ["onActivated"]
      375 CALL                             R32 2 1
      376 SETTABLEKS                       R32 R31 K86 ["Confirm"]
      378 GETUPVAL                         R32 3
      379 GETTABLEKS                       R32 R32 K11 ["createElement"]
      381 GETUPVAL                         R33 11
      382 DUPTABLE                         R34 K95 [{["LayoutOrder"], ["size"], ["text"], ["onActivated"], ["testId"] = "avatar-chat-regenerate"}]
      383 MOVE                             R35 R2
      384 CALL                             R35 0 1
      385 SETTABLEKS                       R35 R34 K17 ["LayoutOrder"]
      387 GETUPVAL                         R35 12
      388 GETTABLEKS                       R35 R35 K81 ["XSmall"]
      390 SETTABLEKS                       R35 R34 K76 ["size"]
      392 LOADK                            R37 K35 ["AvatarChatScreen"]
      393 LOADK                            R38 K96 ["ButtonRegenerate"]
      394 NAMECALL                         R35 R1 K36 ["getText"]
      396 CALL                             R35 3 1
      397 SETTABLEKS                       R35 R34 K77 ["text"]
      399 SETTABLEKS                       R10 R34 K78 ["onActivated"]
      401 CALL                             R32 2 1
      402 SETTABLEKS                       R32 R31 K87 ["Regenerate"]
      404 CALL                             R28 3 1
      405 JUMP                             ; [+28]
      406 JUMPIFNOTEQKS                    R4 K38 ["failed"] ; [+26]
      408 GETUPVAL                         R28 3
      409 GETTABLEKS                       R28 R28 K11 ["createElement"]
      411 GETUPVAL                         R29 11
      412 DUPTABLE                         R30 K95 [{["LayoutOrder"], ["size"], ["text"], ["onActivated"], ["testId"] = "avatar-chat-regenerate"}]
      413 MOVE                             R31 R2
      414 CALL                             R31 0 1
      415 SETTABLEKS                       R31 R30 K17 ["LayoutOrder"]
      417 GETUPVAL                         R31 12
      418 GETTABLEKS                       R31 R31 K81 ["XSmall"]
      420 SETTABLEKS                       R31 R30 K76 ["size"]
      422 LOADK                            R33 K35 ["AvatarChatScreen"]
      423 LOADK                            R34 K96 ["ButtonRegenerate"]
      424 NAMECALL                         R31 R1 K36 ["getText"]
      426 CALL                             R31 3 1
      427 SETTABLEKS                       R31 R30 K77 ["text"]
      429 SETTABLEKS                       R10 R30 K78 ["onActivated"]
      431 CALL                             R28 2 1
      432 JUMP                             ; [+1]
      433 LOADNIL                          R28
      434 SETTABLEKS                       R28 R27 K49 ["Action"]
      436 CALL                             R24 3 1
      437 JUMP                             ; [+1]
      438 LOADNIL                          R24
      439 SETTABLEKS                       R24 R23 K24 ["Content"]
      441 CALL                             R20 3 1
      442 SETTABLEKS                       R20 R19 K13 ["Turn"]
      444 GETTABLEKS                       R21 R7 K21 ["enabled"]
      446 JUMPIFNOT                        R21 ; [+17]
      447 GETTABLEKS                       R21 R3 K52 ["previewImage"]
      449 JUMPIFEQKNIL                     R21 ; [+14]
      451 GETUPVAL                         R20 3
      452 GETTABLEKS                       R20 R20 K11 ["createElement"]
      454 GETUPVAL                         R21 15
      455 DUPTABLE                         R22 K98 [{"previewImage", "onClose"}]
      456 GETTABLEKS                       R23 R3 K52 ["previewImage"]
      458 SETTABLEKS                       R23 R22 K52 ["previewImage"]
      460 SETTABLEKS                       R12 R22 K97 ["onClose"]
      462 CALL                             R20 2 1
      463 JUMP                             ; [+1]
      464 LOADNIL                          R20
      465 SETTABLEKS                       R20 R19 K14 ["ImageDialog"]
      467 CALL                             R16 3 -1
      468 RETURN                           R16 -1

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
       72 GETTABLEKS                       R14 R14 K20 ["Components"]
       74 GETTABLEKS                       R14 R14 K21 ["Screens"]
       76 GETTABLEKS                       R14 R14 K22 ["AvatarChatScreen"]
       78 GETTABLEKS                       R14 R14 K24 ["ImageDialog"]
       80 CALL                             R13 1 1
       81 GETIMPORT                        R14 K5 [require]
       83 GETTABLEKS                       R15 R0 K19 ["Src"]
       85 GETTABLEKS                       R15 R15 K20 ["Components"]
       87 GETTABLEKS                       R15 R15 K21 ["Screens"]
       89 GETTABLEKS                       R15 R15 K22 ["AvatarChatScreen"]
       91 GETTABLEKS                       R15 R15 K25 ["ShimmerGradient"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K5 [require]
       96 GETTABLEKS                       R16 R0 K19 ["Src"]
       98 GETTABLEKS                       R16 R16 K26 ["Types"]
      100 CALL                             R15 1 1
      101 GETIMPORT                        R16 K5 [require]
      103 GETTABLEKS                       R17 R0 K19 ["Src"]
      105 GETTABLEKS                       R17 R17 K27 ["Hooks"]
      107 GETTABLEKS                       R17 R17 K28 ["useToggleState"]
      109 CALL                             R16 1 1
      110 GETTABLEKS                       R17 R1 K29 ["ContextServices"]
      112 GETTABLEKS                       R17 R17 K30 ["Localization"]
      114 GETTABLEKS                       R18 R1 K29 ["ContextServices"]
      116 GETTABLEKS                       R18 R18 K31 ["Plugin"]
      118 DUPTABLE                         R19 K40 [{["generating"] = "StatusGenerating", ["complete"] = "HeaderComplete", ["failed"] = "StatusFailed", ["cancelled"] = "StatusCancelled"}]
      119 DUPCLOSURE                       R20 K41 [PROTO_7]
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R18
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R19
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R13
      136 RETURN                           R20 1
