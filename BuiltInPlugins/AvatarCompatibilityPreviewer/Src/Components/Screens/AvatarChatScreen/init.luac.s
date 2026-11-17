PROTO_0:
        0 DUPTABLE                         R1 K1 [{"pipeline"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["pipeline"]
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 JUMPIF                           R2 ; [+6]
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+3]
       10 GETUPVAL                         R2 3
       11 SETTABLEKS                       R2 R1 K2 ["effort"]
       13 GETUPVAL                         R2 4
       14 CALL                             R2 0 1
       15 JUMPIFNOT                        R2 ; [+3]
       16 GETUPVAL                         R2 5
       17 SETTABLEKS                       R2 R1 K3 ["dynamicHead"]
       19 GETUPVAL                         R2 6
       20 CALL                             R2 0 1
       21 JUMPIFNOT                        R2 ; [+3]
       22 GETUPVAL                         R2 7
       23 SETTABLEKS                       R2 R1 K4 ["r15Plus"]
       25 GETUPVAL                         R2 8
       26 GETTABLEKS                       R2 R2 K5 ["avatarCreation"]
       28 GETTABLEKS                       R2 R2 K6 ["submitPrompt"]
       30 MOVE                             R3 R0
       31 MOVE                             R4 R1
       32 CALL                             R2 2 0
       33 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["confirmedTurnId"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["status"]
        2 JUMPIFEQKS                       R2 K1 ["generating"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createNextOrder"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["useState"]
       11 GETUPVAL                         R5 3
       12 CALL                             R5 0 1
       13 JUMPIFNOT                        R5 ; [+2]
       14 LOADK                            R4 K3 ["modesty"]
       15 JUMP                             ; [+1]
       16 LOADK                            R4 K4 ["npc"]
       17 CALL                             R3 1 2
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K2 ["useState"]
       21 LOADK                            R6 K5 ["balanced"]
       22 CALL                             R5 1 2
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K2 ["useState"]
       26 GETUPVAL                         R9 4
       27 CALL                             R9 0 1
       28 NOT                              R8 R9
       29 CALL                             R7 1 2
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R9 R9 K2 ["useState"]
       33 GETUPVAL                         R10 5
       34 CALL                             R10 0 -1
       35 CALL                             R9 -1 2
       36 GETUPVAL                         R11 6
       37 LOADB                            R12 0
       38 CALL                             R11 1 1
       39 GETTABLEKS                       R12 R0 K6 ["avatarCreation"]
       41 GETTABLEKS                       R12 R12 K7 ["state"]
       43 GETUPVAL                         R13 1
       44 GETTABLEKS                       R13 R13 K8 ["useEventCallback"]
       46 NEWCLOSURE                       R14 P0
       47 CAPTURE                          VAL R3
       48 CAPTURE                          UPVAL U7
       49 CAPTURE                          UPVAL U8
       50 CAPTURE                          VAL R5
       51 CAPTURE                          UPVAL U9
       52 CAPTURE                          VAL R7
       53 CAPTURE                          UPVAL U10
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R0
       56 CALL                             R13 1 1
       57 GETUPVAL                         R14 1
       58 GETTABLEKS                       R14 R14 K8 ["useEventCallback"]
       60 NEWCLOSURE                       R15 P1
       61 CAPTURE                          VAL R6
       62 CALL                             R14 1 1
       63 GETTABLEKS                       R15 R12 K9 ["type"]
       65 JUMPIFNOTEQKS                    R15 K10 ["inactive"] ; [+3]
       67 LOADNIL                          R15
       68 RETURN                           R15 1
       69 GETTABLEKS                       R15 R12 K9 ["type"]
       71 JUMPIFNOTEQKS                    R15 K11 ["generating3D"] ; [+58]
       73 GETUPVAL                         R15 11
       74 GETTABLEKS                       R15 R15 K12 ["find"]
       76 GETTABLEKS                       R16 R12 K13 ["turns"]
       78 NEWCLOSURE                       R17 P2
       79 CAPTURE                          VAL R12
       80 CALL                             R15 2 1
       81 GETUPVAL                         R16 2
       82 GETTABLEKS                       R16 R16 K14 ["createElement"]
       84 GETUPVAL                         R17 12
       85 DUPTABLE                         R18 K27 [{["phase"] = "generating3D", ["progress"], ["progressUpper"], ["planPending"], ["previewModel"], ["previewImage"], ["step"], ["nodes"], ["thoughtByNode"], ["onCancel"], ["testId"] = "avatar-chat-generating"}]
       86 GETTABLEKS                       R19 R12 K16 ["progress"]
       88 SETTABLEKS                       R19 R18 K16 ["progress"]
       90 GETTABLEKS                       R19 R12 K17 ["progressUpper"]
       92 SETTABLEKS                       R19 R18 K17 ["progressUpper"]
       94 GETTABLEKS                       R19 R12 K18 ["planPending"]
       96 SETTABLEKS                       R19 R18 K18 ["planPending"]
       98 GETTABLEKS                       R19 R12 K19 ["previewModel"]
      100 SETTABLEKS                       R19 R18 K19 ["previewModel"]
      102 JUMPIFEQKNIL                     R15 ; [+4]
      104 GETTABLEKS                       R19 R15 K20 ["previewImage"]
      106 JUMP                             ; [+1]
      107 LOADNIL                          R19
      108 SETTABLEKS                       R19 R18 K20 ["previewImage"]
      110 GETTABLEKS                       R19 R12 K21 ["step"]
      112 SETTABLEKS                       R19 R18 K21 ["step"]
      114 GETTABLEKS                       R19 R12 K22 ["nodes"]
      116 SETTABLEKS                       R19 R18 K22 ["nodes"]
      118 GETTABLEKS                       R19 R12 K23 ["thoughtByNode"]
      120 SETTABLEKS                       R19 R18 K23 ["thoughtByNode"]
      122 GETTABLEKS                       R19 R0 K6 ["avatarCreation"]
      124 GETTABLEKS                       R19 R19 K28 ["cancelGeneration"]
      126 SETTABLEKS                       R19 R18 K24 ["onCancel"]
      128 CALL                             R16 2 -1
      129 RETURN                           R16 -1
      130 GETTABLEKS                       R15 R12 K9 ["type"]
      132 JUMPIFNOTEQKS                    R15 K29 ["failed"] ; [+18]
      134 GETUPVAL                         R15 2
      135 GETTABLEKS                       R15 R15 K14 ["createElement"]
      137 GETUPVAL                         R16 12
      138 DUPTABLE                         R17 K32 [{["phase"] = "failed", ["errorCode"], ["onCancel"], ["testId"] = "avatar-chat-failed"}]
      139 GETTABLEKS                       R18 R12 K30 ["errorCode"]
      141 SETTABLEKS                       R18 R17 K30 ["errorCode"]
      143 GETTABLEKS                       R18 R0 K6 ["avatarCreation"]
      145 GETTABLEKS                       R18 R18 K28 ["cancelGeneration"]
      147 SETTABLEKS                       R18 R17 K24 ["onCancel"]
      149 CALL                             R15 2 -1
      150 RETURN                           R15 -1
      151 GETUPVAL                         R15 11
      152 GETTABLEKS                       R15 R15 K33 ["some"]
      154 GETTABLEKS                       R16 R12 K13 ["turns"]
      156 DUPCLOSURE                       R17 K34 [PROTO_3]
      157 CALL                             R15 2 1
      158 GETUPVAL                         R16 2
      159 GETTABLEKS                       R16 R16 K14 ["createElement"]
      161 GETUPVAL                         R17 13
      162 DUPTABLE                         R18 K38 [{["tag"] = "col gap-small size-full padding-small", ["testId"] = "avatar-chat-screen"}]
      163 DUPTABLE                         R19 K42 [{"Header", "History", "Input"}]
      164 GETUPVAL                         R20 2
      165 GETTABLEKS                       R20 R20 K14 ["createElement"]
      167 GETUPVAL                         R21 13
      168 DUPTABLE                         R22 K45 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      169 MOVE                             R23 R2
      170 CALL                             R23 0 1
      171 SETTABLEKS                       R23 R22 K44 ["LayoutOrder"]
      173 DUPTABLE                         R23 K48 [{"BackButton", "Title"}]
      174 GETUPVAL                         R24 2
      175 GETTABLEKS                       R24 R24 K14 ["createElement"]
      177 GETUPVAL                         R25 14
      178 DUPTABLE                         R26 K54 [{["LayoutOrder"], ["icon"], ["size"], ["variant"], ["onActivated"], ["testId"] = "avatar-chat-back"}]
      179 MOVE                             R27 R2
      180 CALL                             R27 0 1
      181 SETTABLEKS                       R27 R26 K44 ["LayoutOrder"]
      183 GETUPVAL                         R27 15
      184 GETTABLEKS                       R27 R27 K55 ["ChevronLargeLeft"]
      186 SETTABLEKS                       R27 R26 K49 ["icon"]
      188 GETUPVAL                         R27 16
      189 GETTABLEKS                       R27 R27 K56 ["Small"]
      191 SETTABLEKS                       R27 R26 K50 ["size"]
      193 GETUPVAL                         R27 17
      194 GETTABLEKS                       R27 R27 K57 ["Utility"]
      196 SETTABLEKS                       R27 R26 K51 ["variant"]
      198 GETTABLEKS                       R27 R0 K6 ["avatarCreation"]
      200 GETTABLEKS                       R27 R27 K58 ["resetGeneration"]
      202 SETTABLEKS                       R27 R26 K52 ["onActivated"]
      204 CALL                             R24 2 1
      205 SETTABLEKS                       R24 R23 K46 ["BackButton"]
      207 GETUPVAL                         R24 2
      208 GETTABLEKS                       R24 R24 K14 ["createElement"]
      210 GETUPVAL                         R25 18
      211 DUPTABLE                         R26 K61 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-title-small content-default"}]
      212 MOVE                             R27 R2
      213 CALL                             R27 0 1
      214 SETTABLEKS                       R27 R26 K44 ["LayoutOrder"]
      216 LOADK                            R29 K62 ["AvatarChatScreen"]
      217 LOADK                            R30 K47 ["Title"]
      218 NAMECALL                         R27 R1 K63 ["getText"]
      220 CALL                             R27 3 1
      221 SETTABLEKS                       R27 R26 K59 ["Text"]
      223 CALL                             R24 2 1
      224 SETTABLEKS                       R24 R23 K47 ["Title"]
      226 CALL                             R20 3 1
      227 SETTABLEKS                       R20 R19 K39 ["Header"]
      229 GETUPVAL                         R21 7
      230 CALL                             R21 0 1
      231 JUMPIFNOT                        R21 ; [+121]
      232 GETTABLEKS                       R22 R12 K13 ["turns"]
      234 LENGTH                           R21 R22
      235 JUMPIFNOTEQKN                    R21 K64 [0] ; [+117]
      237 GETUPVAL                         R20 2
      238 GETTABLEKS                       R20 R20 K14 ["createElement"]
      240 GETUPVAL                         R21 19
      241 DUPTABLE                         R22 K67 [{["tag"] = "grow size-full-0", ["scroll"], ["LayoutOrder"]}]
      242 DUPTABLE                         R23 K71 [{"ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
      243 GETIMPORT                        R24 K74 [Enum.ScrollingDirection.Y]
      245 SETTABLEKS                       R24 R23 K68 ["ScrollingDirection"]
      247 GETIMPORT                        R24 K76 [Enum.AutomaticSize.Y]
      249 SETTABLEKS                       R24 R23 K69 ["AutomaticCanvasSize"]
      251 GETIMPORT                        R24 K79 [UDim2.fromScale]
      253 LOADN                            R25 0
      254 LOADN                            R26 1
      255 CALL                             R24 2 1
      256 SETTABLEKS                       R24 R23 K70 ["CanvasSize"]
      258 SETTABLEKS                       R23 R22 K66 ["scroll"]
      260 MOVE                             R23 R2
      261 CALL                             R23 0 1
      262 SETTABLEKS                       R23 R22 K44 ["LayoutOrder"]
      264 DUPTABLE                         R23 K81 [{"Content"}]
      265 GETUPVAL                         R24 2
      266 GETTABLEKS                       R24 R24 K14 ["createElement"]
      268 GETUPVAL                         R25 13
      269 DUPTABLE                         R26 K83 [{["tag"] = "col gap-small size-full auto-y"}]
      270 DUPTABLE                         R27 K87 [{"Hint", "Spacer", "Options"}]
      271 GETUPVAL                         R28 2
      272 GETTABLEKS                       R28 R28 K14 ["createElement"]
      274 GETUPVAL                         R29 13
      275 DUPTABLE                         R30 K89 [{["tag"] = "size-full-0 auto-y padding-small", ["LayoutOrder"]}]
      276 MOVE                             R31 R2
      277 CALL                             R31 0 1
      278 SETTABLEKS                       R31 R30 K44 ["LayoutOrder"]
      280 DUPTABLE                         R31 K90 [{"Text"}]
      281 GETUPVAL                         R32 2
      282 GETTABLEKS                       R32 R32 K14 ["createElement"]
      284 GETUPVAL                         R33 18
      285 DUPTABLE                         R34 K93 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left content-muted", ["testId"] = "avatar-chat-empty"}]
      286 LOADK                            R37 K62 ["AvatarChatScreen"]
      287 LOADK                            R38 K94 ["EmptyHint"]
      288 NAMECALL                         R35 R1 K63 ["getText"]
      290 CALL                             R35 3 1
      291 SETTABLEKS                       R35 R34 K59 ["Text"]
      293 CALL                             R32 2 1
      294 SETTABLEKS                       R32 R31 K59 ["Text"]
      296 CALL                             R28 3 1
      297 SETTABLEKS                       R28 R27 K84 ["Hint"]
      299 GETUPVAL                         R28 2
      300 GETTABLEKS                       R28 R28 K14 ["createElement"]
      302 GETUPVAL                         R29 13
      303 DUPTABLE                         R30 K95 [{["tag"] = "grow size-full-0", ["LayoutOrder"]}]
      304 MOVE                             R31 R2
      305 CALL                             R31 0 1
      306 SETTABLEKS                       R31 R30 K44 ["LayoutOrder"]
      308 CALL                             R28 2 1
      309 SETTABLEKS                       R28 R27 K85 ["Spacer"]
      311 GETTABLEKS                       R29 R11 K96 ["enabled"]
      313 JUMPIF                           R29 ; [+31]
      314 GETUPVAL                         R28 2
      315 GETTABLEKS                       R28 R28 K14 ["createElement"]
      317 GETUPVAL                         R29 20
      318 DUPTABLE                         R30 K106 [{"LayoutOrder", "pipeline", "effort", "dynamicHead", "r15Plus", "setPipeline", "setEffort", "setDynamicHead", "setR15Plus", "onDismiss"}]
      319 MOVE                             R31 R2
      320 CALL                             R31 0 1
      321 SETTABLEKS                       R31 R30 K44 ["LayoutOrder"]
      323 SETTABLEKS                       R3 R30 K97 ["pipeline"]
      325 SETTABLEKS                       R5 R30 K98 ["effort"]
      327 SETTABLEKS                       R7 R30 K99 ["dynamicHead"]
      329 SETTABLEKS                       R9 R30 K100 ["r15Plus"]
      331 SETTABLEKS                       R4 R30 K101 ["setPipeline"]
      333 SETTABLEKS                       R14 R30 K102 ["setEffort"]
      335 SETTABLEKS                       R8 R30 K103 ["setDynamicHead"]
      337 SETTABLEKS                       R10 R30 K104 ["setR15Plus"]
      339 GETTABLEKS                       R31 R11 K107 ["enable"]
      341 SETTABLEKS                       R31 R30 K105 ["onDismiss"]
      343 CALL                             R28 2 1
      344 JUMP                             ; [+1]
      345 LOADNIL                          R28
      346 SETTABLEKS                       R28 R27 K86 ["Options"]
      348 CALL                             R24 3 1
      349 SETTABLEKS                       R24 R23 K80 ["Content"]
      351 CALL                             R20 3 1
      352 JUMP                             ; [+64]
      353 GETUPVAL                         R20 2
      354 GETTABLEKS                       R20 R20 K14 ["createElement"]
      356 GETUPVAL                         R21 13
      357 DUPTABLE                         R22 K109 [{["tag"] = "col grow gap-small size-full-0 padding-small", ["LayoutOrder"]}]
      358 MOVE                             R23 R2
      359 CALL                             R23 0 1
      360 SETTABLEKS                       R23 R22 K44 ["LayoutOrder"]
      362 DUPTABLE                         R23 K81 [{"Content"}]
      363 GETTABLEKS                       R26 R12 K13 ["turns"]
      365 LENGTH                           R25 R26
      366 JUMPIFNOTEQKN                    R25 K64 [0] ; [+19]
      368 GETUPVAL                         R24 2
      369 GETTABLEKS                       R24 R24 K14 ["createElement"]
      371 GETUPVAL                         R25 18
      372 DUPTABLE                         R26 K110 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left content-muted", ["testId"] = "avatar-chat-empty"}]
      373 MOVE                             R27 R2
      374 CALL                             R27 0 1
      375 SETTABLEKS                       R27 R26 K44 ["LayoutOrder"]
      377 LOADK                            R29 K62 ["AvatarChatScreen"]
      378 LOADK                            R30 K94 ["EmptyHint"]
      379 NAMECALL                         R27 R1 K63 ["getText"]
      381 CALL                             R27 3 1
      382 SETTABLEKS                       R27 R26 K59 ["Text"]
      384 CALL                             R24 2 1
      385 JUMP                             ; [+28]
      386 GETUPVAL                         R24 2
      387 GETTABLEKS                       R24 R24 K14 ["createElement"]
      389 GETUPVAL                         R25 21
      390 DUPTABLE                         R26 K113 [{"turns", "onRegenerate", "onConfirm", "onCancel"}]
      391 GETTABLEKS                       R27 R12 K13 ["turns"]
      393 SETTABLEKS                       R27 R26 K13 ["turns"]
      395 GETTABLEKS                       R27 R0 K6 ["avatarCreation"]
      397 GETTABLEKS                       R27 R27 K114 ["regenerate"]
      399 SETTABLEKS                       R27 R26 K111 ["onRegenerate"]
      401 GETTABLEKS                       R27 R0 K6 ["avatarCreation"]
      403 GETTABLEKS                       R27 R27 K115 ["generate3D"]
      405 SETTABLEKS                       R27 R26 K112 ["onConfirm"]
      407 GETTABLEKS                       R27 R0 K6 ["avatarCreation"]
      409 GETTABLEKS                       R27 R27 K28 ["cancelGeneration"]
      411 SETTABLEKS                       R27 R26 K24 ["onCancel"]
      413 CALL                             R24 2 1
      414 SETTABLEKS                       R24 R23 K80 ["Content"]
      416 CALL                             R20 3 1
      417 SETTABLEKS                       R20 R19 K40 ["History"]
      419 GETUPVAL                         R20 2
      420 GETTABLEKS                       R20 R20 K14 ["createElement"]
      422 GETUPVAL                         R21 13
      423 DUPTABLE                         R22 K117 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      424 MOVE                             R23 R2
      425 CALL                             R23 0 1
      426 SETTABLEKS                       R23 R22 K44 ["LayoutOrder"]
      428 DUPTABLE                         R23 K119 [{"Options", "Prompt"}]
      429 GETUPVAL                         R25 7
      430 CALL                             R25 0 1
      431 JUMPIF                           R25 ; [+39]
      432 GETTABLEKS                       R26 R12 K13 ["turns"]
      434 LENGTH                           R25 R26
      435 JUMPIFNOTEQKN                    R25 K64 [0] ; [+35]
      437 GETTABLEKS                       R25 R11 K96 ["enabled"]
      439 JUMPIF                           R25 ; [+31]
      440 GETUPVAL                         R24 2
      441 GETTABLEKS                       R24 R24 K14 ["createElement"]
      443 GETUPVAL                         R25 20
      444 DUPTABLE                         R26 K106 [{"LayoutOrder", "pipeline", "effort", "dynamicHead", "r15Plus", "setPipeline", "setEffort", "setDynamicHead", "setR15Plus", "onDismiss"}]
      445 MOVE                             R27 R2
      446 CALL                             R27 0 1
      447 SETTABLEKS                       R27 R26 K44 ["LayoutOrder"]
      449 SETTABLEKS                       R3 R26 K97 ["pipeline"]
      451 SETTABLEKS                       R5 R26 K98 ["effort"]
      453 SETTABLEKS                       R7 R26 K99 ["dynamicHead"]
      455 SETTABLEKS                       R9 R26 K100 ["r15Plus"]
      457 SETTABLEKS                       R4 R26 K101 ["setPipeline"]
      459 SETTABLEKS                       R14 R26 K102 ["setEffort"]
      461 SETTABLEKS                       R8 R26 K103 ["setDynamicHead"]
      463 SETTABLEKS                       R10 R26 K104 ["setR15Plus"]
      465 GETTABLEKS                       R27 R11 K107 ["enable"]
      467 SETTABLEKS                       R27 R26 K105 ["onDismiss"]
      469 CALL                             R24 2 1
      470 JUMP                             ; [+1]
      471 LOADNIL                          R24
      472 SETTABLEKS                       R24 R23 K86 ["Options"]
      474 GETUPVAL                         R24 2
      475 GETTABLEKS                       R24 R24 K14 ["createElement"]
      477 GETUPVAL                         R25 22
      478 DUPTABLE                         R26 K122 [{"LayoutOrder", "isGenerating", "onSubmit", "onCancel"}]
      479 MOVE                             R27 R2
      480 CALL                             R27 0 1
      481 SETTABLEKS                       R27 R26 K44 ["LayoutOrder"]
      483 SETTABLEKS                       R15 R26 K120 ["isGenerating"]
      485 SETTABLEKS                       R13 R26 K121 ["onSubmit"]
      487 GETTABLEKS                       R27 R0 K6 ["avatarCreation"]
      489 GETTABLEKS                       R27 R27 K28 ["cancelGeneration"]
      491 SETTABLEKS                       R27 R26 K24 ["onCancel"]
      493 CALL                             R24 2 1
      494 SETTABLEKS                       R24 R23 K118 ["Prompt"]
      496 CALL                             R20 3 1
      497 SETTABLEKS                       R20 R19 K41 ["Input"]
      499 CALL                             R16 3 -1
      500 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["Foundation"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K12 ["Enums"]
       44 GETTABLEKS                       R6 R6 K13 ["ButtonVariant"]
       46 GETTABLEKS                       R7 R5 K12 ["Enums"]
       48 GETTABLEKS                       R7 R7 K14 ["IconName"]
       50 GETTABLEKS                       R8 R5 K12 ["Enums"]
       52 GETTABLEKS                       R8 R8 K15 ["InputSize"]
       54 GETTABLEKS                       R9 R5 K16 ["IconButton"]
       56 GETTABLEKS                       R10 R5 K17 ["ScrollView"]
       58 GETTABLEKS                       R11 R5 K18 ["Text"]
       60 GETTABLEKS                       R12 R5 K19 ["View"]
       62 GETIMPORT                        R13 K5 [require]
       64 GETTABLEKS                       R14 R0 K20 ["Src"]
       66 GETTABLEKS                       R14 R14 K21 ["Components"]
       68 GETTABLEKS                       R14 R14 K22 ["Screens"]
       70 GETTABLEKS                       R14 R14 K23 ["AvatarChatScreen"]
       72 GETTABLEKS                       R14 R14 K24 ["AvatarChatProgressOverlay"]
       74 CALL                             R13 1 1
       75 GETIMPORT                        R14 K5 [require]
       77 GETTABLEKS                       R15 R0 K20 ["Src"]
       79 GETTABLEKS                       R15 R15 K21 ["Components"]
       81 GETTABLEKS                       R15 R15 K22 ["Screens"]
       83 GETTABLEKS                       R15 R15 K23 ["AvatarChatScreen"]
       85 GETTABLEKS                       R15 R15 K25 ["ChatHistory"]
       87 CALL                             R14 1 1
       88 GETIMPORT                        R15 K5 [require]
       90 GETTABLEKS                       R16 R0 K20 ["Src"]
       92 GETTABLEKS                       R16 R16 K21 ["Components"]
       94 GETTABLEKS                       R16 R16 K22 ["Screens"]
       96 GETTABLEKS                       R16 R16 K23 ["AvatarChatScreen"]
       98 GETTABLEKS                       R16 R16 K26 ["ChatInput"]
      100 CALL                             R15 1 1
      101 GETIMPORT                        R16 K5 [require]
      103 GETTABLEKS                       R17 R0 K20 ["Src"]
      105 GETTABLEKS                       R17 R17 K21 ["Components"]
      107 GETTABLEKS                       R17 R17 K22 ["Screens"]
      109 GETTABLEKS                       R17 R17 K23 ["AvatarChatScreen"]
      111 GETTABLEKS                       R17 R17 K27 ["GenerationOptionsCard"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K5 [require]
      116 GETTABLEKS                       R18 R0 K20 ["Src"]
      118 GETTABLEKS                       R18 R18 K28 ["Flags"]
      120 GETTABLEKS                       R18 R18 K29 ["getFFlagAvatarPreviewerAvatarCreationDefaultBodyOnly"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K5 [require]
      125 GETTABLEKS                       R19 R0 K20 ["Src"]
      127 GETTABLEKS                       R19 R19 K28 ["Flags"]
      129 GETTABLEKS                       R19 R19 K30 ["getFFlagAvatarPreviewerAvatarCreationDynamicHeadOff"]
      131 CALL                             R18 1 1
      132 GETIMPORT                        R19 K5 [require]
      134 GETTABLEKS                       R20 R0 K20 ["Src"]
      136 GETTABLEKS                       R20 R20 K28 ["Flags"]
      138 GETTABLEKS                       R20 R20 K31 ["getFFlagAvatarPreviewerAvatarCreationDynamicHeadOption"]
      140 CALL                             R19 1 1
      141 GETIMPORT                        R20 K5 [require]
      143 GETTABLEKS                       R21 R0 K20 ["Src"]
      145 GETTABLEKS                       R21 R21 K28 ["Flags"]
      147 GETTABLEKS                       R21 R21 K32 ["getFFlagAvatarPreviewerAvatarCreationOptionsRedesign"]
      149 CALL                             R20 1 1
      150 GETIMPORT                        R21 K5 [require]
      152 GETTABLEKS                       R22 R0 K20 ["Src"]
      154 GETTABLEKS                       R22 R22 K28 ["Flags"]
      156 GETTABLEKS                       R22 R22 K33 ["getFFlagAvatarPreviewerAvatarCreationPipelineOptions"]
      158 CALL                             R21 1 1
      159 GETIMPORT                        R22 K5 [require]
      161 GETTABLEKS                       R23 R0 K20 ["Src"]
      163 GETTABLEKS                       R23 R23 K28 ["Flags"]
      165 GETTABLEKS                       R23 R23 K34 ["getFFlagAvatarPreviewerAvatarCreationR15PlusOn"]
      167 CALL                             R22 1 1
      168 GETIMPORT                        R23 K5 [require]
      170 GETTABLEKS                       R24 R0 K20 ["Src"]
      172 GETTABLEKS                       R24 R24 K28 ["Flags"]
      174 GETTABLEKS                       R24 R24 K35 ["getFFlagAvatarPreviewerAvatarCreationR15PlusOption"]
      176 CALL                             R23 1 1
      177 GETIMPORT                        R24 K5 [require]
      179 GETTABLEKS                       R25 R0 K20 ["Src"]
      181 GETTABLEKS                       R25 R25 K36 ["Hooks"]
      183 GETTABLEKS                       R25 R25 K37 ["useAvatarCreationState"]
      185 CALL                             R24 1 1
      186 GETIMPORT                        R25 K5 [require]
      188 GETTABLEKS                       R26 R0 K20 ["Src"]
      190 GETTABLEKS                       R26 R26 K36 ["Hooks"]
      192 GETTABLEKS                       R26 R26 K38 ["useToggleState"]
      194 CALL                             R25 1 1
      195 GETTABLEKS                       R26 R2 K39 ["ContextServices"]
      197 GETTABLEKS                       R26 R26 K40 ["Localization"]
      199 GETIMPORT                        R27 K5 [require]
      201 GETTABLEKS                       R28 R0 K20 ["Src"]
      203 GETTABLEKS                       R28 R28 K41 ["Types"]
      205 CALL                             R27 1 1
      206 DUPCLOSURE                       R28 K42 [PROTO_4]
      207 CAPTURE                          VAL R26
      208 CAPTURE                          VAL R4
      209 CAPTURE                          VAL R3
      210 CAPTURE                          VAL R17
      211 CAPTURE                          VAL R18
      212 CAPTURE                          VAL R22
      213 CAPTURE                          VAL R25
      214 CAPTURE                          VAL R20
      215 CAPTURE                          VAL R21
      216 CAPTURE                          VAL R19
      217 CAPTURE                          VAL R23
      218 CAPTURE                          VAL R1
      219 CAPTURE                          VAL R13
      220 CAPTURE                          VAL R12
      221 CAPTURE                          VAL R9
      222 CAPTURE                          VAL R7
      223 CAPTURE                          VAL R8
      224 CAPTURE                          VAL R6
      225 CAPTURE                          VAL R11
      226 CAPTURE                          VAL R10
      227 CAPTURE                          VAL R16
      228 CAPTURE                          VAL R14
      229 CAPTURE                          VAL R15
      230 RETURN                           R28 1
