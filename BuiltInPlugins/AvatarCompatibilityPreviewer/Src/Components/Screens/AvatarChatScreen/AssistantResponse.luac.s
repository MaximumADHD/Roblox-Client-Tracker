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
      175 LOADK                            R32 K41 ["avatar-chat-turn-%*"]
      176 MOVE                             R34 R4
      177 NAMECALL                         R32 R32 K42 ["format"]
      179 CALL                             R32 2 1
      180 MOVE                             R31 R32
      181 SETTABLEKS                       R31 R30 K27 ["testId"]
      183 JUMPIFNOTEQKS                    R4 K43 ["generating"] ; [+10]
      185 DUPTABLE                         R31 K45 [{"Shimmer"}]
      186 GETUPVAL                         R32 3
      187 GETTABLEKS                       R32 R32 K11 ["createElement"]
      189 GETUPVAL                         R33 8
      190 CALL                             R32 1 1
      191 SETTABLEKS                       R32 R31 K44 ["Shimmer"]
      193 JUMP                             ; [+1]
      194 LOADNIL                          R31
      195 CALL                             R28 3 1
      196 SETTABLEKS                       R28 R27 K30 ["Status"]
      198 CALL                             R24 3 1
      199 SETTABLEKS                       R24 R23 K23 ["Header"]
      201 JUMPIFNOT                        R5 ; [+237]
      202 GETUPVAL                         R24 3
      203 GETTABLEKS                       R24 R24 K11 ["createElement"]
      205 GETUPVAL                         R25 5
      206 GETTABLEKS                       R25 R25 K24 ["Content"]
      208 DUPTABLE                         R26 K47 [{["LayoutOrder"], ["tag"] = "col align-x-right gap-xsmall auto-xy"}]
      209 MOVE                             R27 R2
      210 CALL                             R27 0 1
      211 SETTABLEKS                       R27 R26 K17 ["LayoutOrder"]
      213 DUPTABLE                         R27 K50 [{"Image", "Action"}]
      214 JUMPIFNOTEQKS                    R4 K51 ["complete"] ; [+64]
      216 GETTABLEKS                       R29 R3 K52 ["previewImage"]
      218 JUMPIFEQKNIL                     R29 ; [+60]
      220 GETUPVAL                         R28 3
      221 GETTABLEKS                       R28 R28 K11 ["createElement"]
      223 LOADK                            R29 K53 ["ImageButton"]
      224 NEWTABLE                         R30 16 0
      226 MOVE                             R31 R2
      227 CALL                             R31 0 1
      228 SETTABLEKS                       R31 R30 K17 ["LayoutOrder"]
      230 GETIMPORT                        R31 K56 [UDim2.fromOffset]
      232 LOADN                            R32 256
      233 LOADN                            R33 256
      234 CALL                             R31 2 1
      235 SETTABLEKS                       R31 R30 K57 ["Size"]
      237 LOADN                            R31 1
      238 SETTABLEKS                       R31 R30 K58 ["BackgroundTransparency"]
      240 LOADB                            R31 0
      241 SETTABLEKS                       R31 R30 K59 ["AutoButtonColor"]
      243 GETIMPORT                        R31 K61 [Content.fromObject]
      245 GETTABLEKS                       R32 R3 K52 ["previewImage"]
      247 CALL                             R31 1 1
      248 SETTABLEKS                       R31 R30 K62 ["ImageContent"]
      250 GETIMPORT                        R31 K66 [Enum.ScaleType.Fit]
      252 SETTABLEKS                       R31 R30 K64 ["ScaleType"]
      254 GETUPVAL                         R31 3
      255 GETTABLEKS                       R31 R31 K67 ["Event"]
      257 GETTABLEKS                       R31 R31 K68 ["Activated"]
      259 SETTABLE                         R13 R30 R31
      260 GETUPVAL                         R31 3
      261 GETTABLEKS                       R31 R31 K67 ["Event"]
      263 GETTABLEKS                       R31 R31 K69 ["MouseEnter"]
      265 SETTABLE                         R14 R30 R31
      266 GETUPVAL                         R31 3
      267 GETTABLEKS                       R31 R31 K67 ["Event"]
      269 GETTABLEKS                       R31 R31 K70 ["MouseLeave"]
      271 SETTABLE                         R15 R30 R31
      272 GETUPVAL                         R31 3
      273 GETTABLEKS                       R31 R31 K71 ["Tag"]
      275 LOADK                            R32 K72 ["data-testid=avatar-chat-preview-image"]
      276 SETTABLE                         R32 R30 R31
      277 CALL                             R28 2 1
      278 JUMP                             ; [+26]
      279 JUMPIFNOTEQKS                    R4 K43 ["generating"] ; [+24]
      281 GETUPVAL                         R28 3
      282 GETTABLEKS                       R28 R28 K11 ["createElement"]
      284 GETUPVAL                         R29 9
      285 DUPTABLE                         R30 K74 [{"LayoutOrder", "Size", "radius"}]
      286 MOVE                             R31 R2
      287 CALL                             R31 0 1
      288 SETTABLEKS                       R31 R30 K17 ["LayoutOrder"]
      290 GETIMPORT                        R31 K56 [UDim2.fromOffset]
      292 LOADN                            R32 256
      293 LOADN                            R33 256
      294 CALL                             R31 2 1
      295 SETTABLEKS                       R31 R30 K57 ["Size"]
      297 GETUPVAL                         R31 10
      298 GETTABLEKS                       R31 R31 K75 ["Small"]
      300 SETTABLEKS                       R31 R30 K73 ["radius"]
      302 CALL                             R28 2 1
      303 JUMP                             ; [+1]
      304 LOADNIL                          R28
      305 SETTABLEKS                       R28 R27 K48 ["Image"]
      307 JUMPIFNOTEQKS                    R4 K43 ["generating"] ; [+28]
      309 GETUPVAL                         R28 3
      310 GETTABLEKS                       R28 R28 K11 ["createElement"]
      312 GETUPVAL                         R29 11
      313 DUPTABLE                         R30 K80 [{["LayoutOrder"], ["size"], ["text"], ["onActivated"], ["testId"] = "avatar-chat-cancel"}]
      314 MOVE                             R31 R2
      315 CALL                             R31 0 1
      316 SETTABLEKS                       R31 R30 K17 ["LayoutOrder"]
      318 GETUPVAL                         R31 12
      319 GETTABLEKS                       R31 R31 K81 ["XSmall"]
      321 SETTABLEKS                       R31 R30 K76 ["size"]
      323 LOADK                            R33 K35 ["AvatarChatScreen"]
      324 LOADK                            R34 K82 ["ButtonCancel"]
      325 NAMECALL                         R31 R1 K36 ["getText"]
      327 CALL                             R31 3 1
      328 SETTABLEKS                       R31 R30 K77 ["text"]
      330 GETTABLEKS                       R31 R0 K83 ["onCancel"]
      332 SETTABLEKS                       R31 R30 K78 ["onActivated"]
      334 CALL                             R28 2 1
      335 JUMP                             ; [+99]
      336 JUMPIFNOTEQKS                    R4 K51 ["complete"] ; [+70]
      338 GETUPVAL                         R28 3
      339 GETTABLEKS                       R28 R28 K11 ["createElement"]
      341 GETUPVAL                         R29 13
      342 DUPTABLE                         R30 K85 [{["tag"] = "row gap-xsmall auto-xy", ["LayoutOrder"]}]
      343 MOVE                             R31 R2
      344 CALL                             R31 0 1
      345 SETTABLEKS                       R31 R30 K17 ["LayoutOrder"]
      347 DUPTABLE                         R31 K88 [{"Confirm", "Regenerate"}]
      348 GETUPVAL                         R32 3
      349 GETTABLEKS                       R32 R32 K11 ["createElement"]
      351 GETUPVAL                         R33 11
      352 DUPTABLE                         R34 K91 [{["LayoutOrder"], ["size"], ["text"], ["variant"], ["onActivated"], ["testId"] = "avatar-chat-confirm"}]
      353 MOVE                             R35 R2
      354 CALL                             R35 0 1
      355 SETTABLEKS                       R35 R34 K17 ["LayoutOrder"]
      357 GETUPVAL                         R35 12
      358 GETTABLEKS                       R35 R35 K81 ["XSmall"]
      360 SETTABLEKS                       R35 R34 K76 ["size"]
      362 LOADK                            R37 K35 ["AvatarChatScreen"]
      363 LOADK                            R38 K92 ["ButtonUse"]
      364 NAMECALL                         R35 R1 K36 ["getText"]
      366 CALL                             R35 3 1
      367 SETTABLEKS                       R35 R34 K77 ["text"]
      369 GETUPVAL                         R35 14
      370 GETTABLEKS                       R35 R35 K93 ["Emphasis"]
      372 SETTABLEKS                       R35 R34 K89 ["variant"]
      374 SETTABLEKS                       R11 R34 K78 ["onActivated"]
      376 CALL                             R32 2 1
      377 SETTABLEKS                       R32 R31 K86 ["Confirm"]
      379 GETUPVAL                         R32 3
      380 GETTABLEKS                       R32 R32 K11 ["createElement"]
      382 GETUPVAL                         R33 11
      383 DUPTABLE                         R34 K95 [{["LayoutOrder"], ["size"], ["text"], ["onActivated"], ["testId"] = "avatar-chat-regenerate"}]
      384 MOVE                             R35 R2
      385 CALL                             R35 0 1
      386 SETTABLEKS                       R35 R34 K17 ["LayoutOrder"]
      388 GETUPVAL                         R35 12
      389 GETTABLEKS                       R35 R35 K81 ["XSmall"]
      391 SETTABLEKS                       R35 R34 K76 ["size"]
      393 LOADK                            R37 K35 ["AvatarChatScreen"]
      394 LOADK                            R38 K96 ["ButtonRegenerate"]
      395 NAMECALL                         R35 R1 K36 ["getText"]
      397 CALL                             R35 3 1
      398 SETTABLEKS                       R35 R34 K77 ["text"]
      400 SETTABLEKS                       R10 R34 K78 ["onActivated"]
      402 CALL                             R32 2 1
      403 SETTABLEKS                       R32 R31 K87 ["Regenerate"]
      405 CALL                             R28 3 1
      406 JUMP                             ; [+28]
      407 JUMPIFNOTEQKS                    R4 K38 ["failed"] ; [+26]
      409 GETUPVAL                         R28 3
      410 GETTABLEKS                       R28 R28 K11 ["createElement"]
      412 GETUPVAL                         R29 11
      413 DUPTABLE                         R30 K95 [{["LayoutOrder"], ["size"], ["text"], ["onActivated"], ["testId"] = "avatar-chat-regenerate"}]
      414 MOVE                             R31 R2
      415 CALL                             R31 0 1
      416 SETTABLEKS                       R31 R30 K17 ["LayoutOrder"]
      418 GETUPVAL                         R31 12
      419 GETTABLEKS                       R31 R31 K81 ["XSmall"]
      421 SETTABLEKS                       R31 R30 K76 ["size"]
      423 LOADK                            R33 K35 ["AvatarChatScreen"]
      424 LOADK                            R34 K96 ["ButtonRegenerate"]
      425 NAMECALL                         R31 R1 K36 ["getText"]
      427 CALL                             R31 3 1
      428 SETTABLEKS                       R31 R30 K77 ["text"]
      430 SETTABLEKS                       R10 R30 K78 ["onActivated"]
      432 CALL                             R28 2 1
      433 JUMP                             ; [+1]
      434 LOADNIL                          R28
      435 SETTABLEKS                       R28 R27 K49 ["Action"]
      437 CALL                             R24 3 1
      438 JUMP                             ; [+1]
      439 LOADNIL                          R24
      440 SETTABLEKS                       R24 R23 K24 ["Content"]
      442 CALL                             R20 3 1
      443 SETTABLEKS                       R20 R19 K13 ["Turn"]
      445 GETTABLEKS                       R21 R7 K21 ["enabled"]
      447 JUMPIFNOT                        R21 ; [+17]
      448 GETTABLEKS                       R21 R3 K52 ["previewImage"]
      450 JUMPIFEQKNIL                     R21 ; [+14]
      452 GETUPVAL                         R20 3
      453 GETTABLEKS                       R20 R20 K11 ["createElement"]
      455 GETUPVAL                         R21 15
      456 DUPTABLE                         R22 K98 [{"previewImage", "onClose"}]
      457 GETTABLEKS                       R23 R3 K52 ["previewImage"]
      459 SETTABLEKS                       R23 R22 K52 ["previewImage"]
      461 SETTABLEKS                       R12 R22 K97 ["onClose"]
      463 CALL                             R20 2 1
      464 JUMP                             ; [+1]
      465 LOADNIL                          R20
      466 SETTABLEKS                       R20 R19 K14 ["ImageDialog"]
      468 CALL                             R16 3 -1
      469 RETURN                           R16 -1

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
