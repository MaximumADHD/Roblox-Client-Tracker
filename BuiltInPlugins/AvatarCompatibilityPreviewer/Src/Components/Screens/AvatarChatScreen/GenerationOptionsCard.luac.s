PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["efficient"] ; [+3]
        2 LOADN                            R1 1
        3 RETURN                           R1 1
        4 JUMPIFNOTEQKS                    R0 K1 ["quality"] ; [+3]
        6 LOADN                            R1 3
        7 RETURN                           R1 1
        8 LOADN                            R1 2
        9 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setEffort"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R2 R3 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["setPipeline"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["value"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createNextOrder"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 CALL                             R4 0 1
       10 JUMPIFNOT                        R4 ; [+2]
       11 GETUPVAL                         R3 3
       12 JUMP                             ; [+1]
       13 GETUPVAL                         R3 4
       14 NEWTABLE                         R4 0 0
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K2 ["useEventCallback"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U5
       22 CALL                             R5 1 1
       23 GETUPVAL                         R6 6
       24 CALL                             R6 0 1
       25 JUMPIFNOT                        R6 ; [+350]
       26 NEWTABLE                         R6 0 0
       28 GETUPVAL                         R7 7
       29 LOADNIL                          R8
       30 LOADNIL                          R9
       31 FORGPREP                         R7
       32 GETTABLEKS                       R13 R0 K3 ["pipeline"]
       34 GETTABLEKS                       R14 R11 K4 ["value"]
       36 JUMPIFEQ                         R13 R14 ; [+2]
       38 LOADB                            R12 0 +1
       39 LOADB                            R12 1
       40 LOADK                            R13 K5 ["%*Divider"]
       41 GETTABLEKS                       R15 R11 K4 ["value"]
       43 NAMECALL                         R13 R13 K6 ["format"]
       45 CALL                             R13 2 1
       46 GETUPVAL                         R14 8
       47 GETTABLEKS                       R14 R14 K7 ["createElement"]
       49 GETUPVAL                         R15 9
       50 DUPTABLE                         R16 K9 [{"LayoutOrder"}]
       51 MOVE                             R17 R2
       52 CALL                             R17 0 1
       53 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
       55 CALL                             R14 2 1
       56 SETTABLE                         R14 R6 R13
       57 GETTABLEKS                       R13 R11 K4 ["value"]
       59 GETUPVAL                         R14 8
       60 GETTABLEKS                       R14 R14 K7 ["createElement"]
       62 GETUPVAL                         R15 10
       63 DUPTABLE                         R16 K12 [{["tag"] = "col size-full-0 auto-y padding-x-medium padding-y-small", ["LayoutOrder"]}]
       64 MOVE                             R17 R2
       65 CALL                             R17 0 1
       66 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
       68 DUPTABLE                         R17 K14 [{"Row"}]
       69 GETUPVAL                         R18 8
       70 GETTABLEKS                       R18 R18 K7 ["createElement"]
       72 GETUPVAL                         R19 11
       73 DUPTABLE                         R20 K20 [{"LayoutOrder", "isChecked", "setChecked", "label", "description", "testId"}]
       74 MOVE                             R21 R2
       75 CALL                             R21 0 1
       76 SETTABLEKS                       R21 R20 K8 ["LayoutOrder"]
       78 SETTABLEKS                       R12 R20 K15 ["isChecked"]
       80 NEWCLOSURE                       R21 P1
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R11
       83 SETTABLEKS                       R21 R20 K16 ["setChecked"]
       85 LOADK                            R23 K21 ["AvatarChatScreen"]
       86 GETTABLEKS                       R24 R11 K22 ["titleKey"]
       88 NAMECALL                         R21 R1 K23 ["getText"]
       90 CALL                             R21 3 1
       91 SETTABLEKS                       R21 R20 K17 ["label"]
       93 LOADK                            R23 K21 ["AvatarChatScreen"]
       94 GETTABLEKS                       R24 R11 K24 ["detailKey"]
       96 NAMECALL                         R21 R1 K23 ["getText"]
       98 CALL                             R21 3 1
       99 SETTABLEKS                       R21 R20 K18 ["description"]
      101 JUMPIFNOT                        R12 ; [+7]
      102 LOADK                            R21 K25 ["avatar-chat-pipeline--item-%*--selected"]
      103 GETTABLEKS                       R23 R11 K4 ["value"]
      105 NAMECALL                         R21 R21 K6 ["format"]
      107 CALL                             R21 2 1
      108 JUMP                             ; [+6]
      109 LOADK                            R21 K26 ["avatar-chat-pipeline--item-%*"]
      110 GETTABLEKS                       R23 R11 K4 ["value"]
      112 NAMECALL                         R21 R21 K6 ["format"]
      114 CALL                             R21 2 1
      115 SETTABLEKS                       R21 R20 K19 ["testId"]
      117 CALL                             R18 2 1
      118 SETTABLEKS                       R18 R17 K13 ["Row"]
      120 CALL                             R14 3 1
      121 SETTABLE                         R14 R6 R13
      122 FORGLOOP                         R7 2 ; [-91]
      124 GETUPVAL                         R7 8
      125 GETTABLEKS                       R7 R7 K7 ["createElement"]
      127 GETUPVAL                         R8 10
      128 DUPTABLE                         R9 K29 [{["tag"] = "col gap-none size-full-0 auto-y stroke-default radius-large clip", ["LayoutOrder"], ["testId"] = "avatar-chat-generation-options"}]
      129 GETTABLEKS                       R10 R0 K8 ["LayoutOrder"]
      131 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
      133 DUPTABLE                         R10 K33 [{"Header", "Clothing", "Additions"}]
      134 GETUPVAL                         R11 8
      135 GETTABLEKS                       R11 R11 K7 ["createElement"]
      137 GETUPVAL                         R12 10
      138 DUPTABLE                         R13 K35 [{["tag"] = "row align-y-center size-full-0 auto-y padding-y-small padding-left-large padding-right-small", ["LayoutOrder"]}]
      139 MOVE                             R14 R2
      140 CALL                             R14 0 1
      141 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
      143 DUPTABLE                         R14 K38 [{"Title", "Dismiss"}]
      144 GETUPVAL                         R15 8
      145 GETTABLEKS                       R15 R15 K7 ["createElement"]
      147 GETUPVAL                         R16 12
      148 DUPTABLE                         R17 K41 [{["tag"] = "fill auto-xy text-title-small text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      149 LOADK                            R20 K21 ["AvatarChatScreen"]
      150 LOADK                            R21 K42 ["ClothingSetup"]
      151 NAMECALL                         R18 R1 K23 ["getText"]
      153 CALL                             R18 3 1
      154 SETTABLEKS                       R18 R17 K40 ["Text"]
      156 MOVE                             R18 R2
      157 CALL                             R18 0 1
      158 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      160 CALL                             R15 2 1
      161 SETTABLEKS                       R15 R14 K36 ["Title"]
      163 GETUPVAL                         R15 8
      164 GETTABLEKS                       R15 R15 K7 ["createElement"]
      166 GETUPVAL                         R16 13
      167 DUPTABLE                         R17 K48 [{["icon"], ["size"], ["variant"], ["onActivated"], ["LayoutOrder"], ["testId"] = "avatar-chat-generation-options-dismiss"}]
      168 GETUPVAL                         R18 14
      169 GETTABLEKS                       R18 R18 K49 ["X"]
      171 SETTABLEKS                       R18 R17 K43 ["icon"]
      173 GETUPVAL                         R18 15
      174 GETTABLEKS                       R18 R18 K50 ["XSmall"]
      176 SETTABLEKS                       R18 R17 K44 ["size"]
      178 GETUPVAL                         R18 16
      179 GETTABLEKS                       R18 R18 K51 ["Utility"]
      181 SETTABLEKS                       R18 R17 K45 ["variant"]
      183 GETTABLEKS                       R18 R0 K52 ["onDismiss"]
      185 SETTABLEKS                       R18 R17 K46 ["onActivated"]
      187 MOVE                             R18 R2
      188 CALL                             R18 0 1
      189 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      191 CALL                             R15 2 1
      192 SETTABLEKS                       R15 R14 K37 ["Dismiss"]
      194 CALL                             R11 3 1
      195 SETTABLEKS                       R11 R10 K30 ["Header"]
      197 GETUPVAL                         R11 8
      198 GETTABLEKS                       R11 R11 K7 ["createElement"]
      200 GETUPVAL                         R12 10
      201 DUPTABLE                         R13 K54 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"]}]
      202 MOVE                             R14 R2
      203 CALL                             R14 0 1
      204 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
      206 MOVE                             R14 R6
      207 CALL                             R11 3 1
      208 SETTABLEKS                       R11 R10 K31 ["Clothing"]
      210 GETUPVAL                         R12 17
      211 CALL                             R12 0 1
      212 JUMPIF                           R12 ; [+5]
      213 GETUPVAL                         R12 18
      214 CALL                             R12 0 1
      215 JUMPIF                           R12 ; [+2]
      216 LOADNIL                          R11
      217 JUMP                             ; [+154]
      218 GETUPVAL                         R11 8
      219 GETTABLEKS                       R11 R11 K7 ["createElement"]
      221 GETUPVAL                         R12 10
      222 DUPTABLE                         R13 K54 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"]}]
      223 MOVE                             R14 R2
      224 CALL                             R14 0 1
      225 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
      227 DUPTABLE                         R14 K58 [{"Divider", "Header", "HeaderDivider", "Checkboxes"}]
      228 GETUPVAL                         R15 8
      229 GETTABLEKS                       R15 R15 K7 ["createElement"]
      231 GETUPVAL                         R16 9
      232 DUPTABLE                         R17 K9 [{"LayoutOrder"}]
      233 MOVE                             R18 R2
      234 CALL                             R18 0 1
      235 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      237 CALL                             R15 2 1
      238 SETTABLEKS                       R15 R14 K55 ["Divider"]
      240 GETUPVAL                         R15 8
      241 GETTABLEKS                       R15 R15 K7 ["createElement"]
      243 GETUPVAL                         R16 10
      244 DUPTABLE                         R17 K60 [{["tag"] = "row size-full-0 auto-y padding-x-large padding-y-medium", ["LayoutOrder"]}]
      245 MOVE                             R18 R2
      246 CALL                             R18 0 1
      247 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      249 DUPTABLE                         R18 K61 [{"Title"}]
      250 GETUPVAL                         R19 8
      251 GETTABLEKS                       R19 R19 K7 ["createElement"]
      253 GETUPVAL                         R20 12
      254 DUPTABLE                         R21 K62 [{["tag"] = "fill auto-xy text-title-small text-align-x-left content-emphasis", ["Text"]}]
      255 LOADK                            R24 K21 ["AvatarChatScreen"]
      256 LOADK                            R25 K63 ["SetupAdditions"]
      257 NAMECALL                         R22 R1 K23 ["getText"]
      259 CALL                             R22 3 1
      260 SETTABLEKS                       R22 R21 K40 ["Text"]
      262 CALL                             R19 2 1
      263 SETTABLEKS                       R19 R18 K36 ["Title"]
      265 CALL                             R15 3 1
      266 SETTABLEKS                       R15 R14 K30 ["Header"]
      268 GETUPVAL                         R15 8
      269 GETTABLEKS                       R15 R15 K7 ["createElement"]
      271 GETUPVAL                         R16 9
      272 DUPTABLE                         R17 K9 [{"LayoutOrder"}]
      273 MOVE                             R18 R2
      274 CALL                             R18 0 1
      275 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      277 CALL                             R15 2 1
      278 SETTABLEKS                       R15 R14 K56 ["HeaderDivider"]
      280 GETUPVAL                         R15 8
      281 GETTABLEKS                       R15 R15 K7 ["createElement"]
      283 GETUPVAL                         R16 10
      284 DUPTABLE                         R17 K12 [{["tag"] = "col size-full-0 auto-y padding-x-medium padding-y-small", ["LayoutOrder"]}]
      285 MOVE                             R18 R2
      286 CALL                             R18 0 1
      287 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      289 DUPTABLE                         R18 K66 [{"R15Plus", "DynamicHead"}]
      290 GETUPVAL                         R20 18
      291 CALL                             R20 0 1
      292 JUMPIF                           R20 ; [+2]
      293 LOADNIL                          R19
      294 JUMP                             ; [+32]
      295 GETUPVAL                         R19 8
      296 GETTABLEKS                       R19 R19 K7 ["createElement"]
      298 GETUPVAL                         R20 11
      299 DUPTABLE                         R21 K68 [{["LayoutOrder"], ["isChecked"], ["setChecked"], ["label"], ["description"], ["testId"] = "avatar-chat-r15-plus"}]
      300 MOVE                             R22 R2
      301 CALL                             R22 0 1
      302 SETTABLEKS                       R22 R21 K8 ["LayoutOrder"]
      304 GETTABLEKS                       R22 R0 K69 ["r15Plus"]
      306 SETTABLEKS                       R22 R21 K15 ["isChecked"]
      308 GETTABLEKS                       R22 R0 K70 ["setR15Plus"]
      310 SETTABLEKS                       R22 R21 K16 ["setChecked"]
      312 LOADK                            R24 K21 ["AvatarChatScreen"]
      313 LOADK                            R25 K71 ["AdvancedBodyMovement"]
      314 NAMECALL                         R22 R1 K23 ["getText"]
      316 CALL                             R22 3 1
      317 SETTABLEKS                       R22 R21 K17 ["label"]
      319 LOADK                            R24 K21 ["AvatarChatScreen"]
      320 LOADK                            R25 K72 ["AdvancedBodyMovementDetail"]
      321 NAMECALL                         R22 R1 K23 ["getText"]
      323 CALL                             R22 3 1
      324 SETTABLEKS                       R22 R21 K18 ["description"]
      326 CALL                             R19 2 1
      327 SETTABLEKS                       R19 R18 K64 ["R15Plus"]
      329 GETUPVAL                         R20 17
      330 CALL                             R20 0 1
      331 JUMPIF                           R20 ; [+2]
      332 LOADNIL                          R19
      333 JUMP                             ; [+32]
      334 GETUPVAL                         R19 8
      335 GETTABLEKS                       R19 R19 K7 ["createElement"]
      337 GETUPVAL                         R20 11
      338 DUPTABLE                         R21 K74 [{["LayoutOrder"], ["isChecked"], ["setChecked"], ["label"], ["description"], ["testId"] = "avatar-chat-dynamic-head"}]
      339 MOVE                             R22 R2
      340 CALL                             R22 0 1
      341 SETTABLEKS                       R22 R21 K8 ["LayoutOrder"]
      343 GETTABLEKS                       R22 R0 K75 ["dynamicHead"]
      345 SETTABLEKS                       R22 R21 K15 ["isChecked"]
      347 GETTABLEKS                       R22 R0 K76 ["setDynamicHead"]
      349 SETTABLEKS                       R22 R21 K16 ["setChecked"]
      351 LOADK                            R24 K21 ["AvatarChatScreen"]
      352 LOADK                            R25 K77 ["ExpressiveFace"]
      353 NAMECALL                         R22 R1 K23 ["getText"]
      355 CALL                             R22 3 1
      356 SETTABLEKS                       R22 R21 K17 ["label"]
      358 LOADK                            R24 K21 ["AvatarChatScreen"]
      359 LOADK                            R25 K78 ["ExpressiveFaceDetail"]
      360 NAMECALL                         R22 R1 K23 ["getText"]
      362 CALL                             R22 3 1
      363 SETTABLEKS                       R22 R21 K18 ["description"]
      365 CALL                             R19 2 1
      366 SETTABLEKS                       R19 R18 K65 ["DynamicHead"]
      368 CALL                             R15 3 1
      369 SETTABLEKS                       R15 R14 K57 ["Checkboxes"]
      371 CALL                             R11 3 1
      372 SETTABLEKS                       R11 R10 K32 ["Additions"]
      374 CALL                             R7 3 -1
      375 RETURN                           R7 -1
      376 MOVE                             R6 R3
      377 LOADNIL                          R7
      378 LOADNIL                          R8
      379 FORGPREP                         R6
      380 LOADK                            R11 K79 ["option-%*"]
      381 MOVE                             R13 R9
      382 NAMECALL                         R11 R11 K6 ["format"]
      384 CALL                             R11 2 1
      385 GETUPVAL                         R12 8
      386 GETTABLEKS                       R12 R12 K7 ["createElement"]
      388 GETUPVAL                         R13 19
      389 DUPTABLE                         R14 K83 [{"option", "order", "pipeline", "setPipeline"}]
      390 SETTABLEKS                       R10 R14 K80 ["option"]
      392 SETTABLEKS                       R9 R14 K81 ["order"]
      394 GETTABLEKS                       R15 R0 K3 ["pipeline"]
      396 SETTABLEKS                       R15 R14 K3 ["pipeline"]
      398 GETTABLEKS                       R15 R0 K82 ["setPipeline"]
      400 SETTABLEKS                       R15 R14 K82 ["setPipeline"]
      402 CALL                             R12 2 1
      403 SETTABLE                         R12 R4 R11
      404 FORGLOOP                         R6 2 ; [-25]
      406 GETUPVAL                         R6 8
      407 GETTABLEKS                       R6 R6 K7 ["createElement"]
      409 GETUPVAL                         R7 10
      410 DUPTABLE                         R8 K29 [{["tag"] = "col gap-none size-full-0 auto-y stroke-default radius-large clip", ["LayoutOrder"], ["testId"] = "avatar-chat-generation-options"}]
      411 GETTABLEKS                       R9 R0 K8 ["LayoutOrder"]
      413 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
      415 DUPTABLE                         R9 K88 [{"Header", "Divider", "Choices", "CheckboxDivider", "Checkboxes", "EffortDivider", "Effort"}]
      416 GETUPVAL                         R10 8
      417 GETTABLEKS                       R10 R10 K7 ["createElement"]
      419 GETUPVAL                         R11 10
      420 DUPTABLE                         R12 K35 [{["tag"] = "row align-y-center size-full-0 auto-y padding-y-small padding-left-large padding-right-small", ["LayoutOrder"]}]
      421 MOVE                             R13 R2
      422 CALL                             R13 0 1
      423 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
      425 DUPTABLE                         R13 K38 [{"Title", "Dismiss"}]
      426 GETUPVAL                         R14 8
      427 GETTABLEKS                       R14 R14 K7 ["createElement"]
      429 GETUPVAL                         R15 12
      430 DUPTABLE                         R16 K41 [{["tag"] = "fill auto-xy text-title-small text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      431 LOADK                            R19 K21 ["AvatarChatScreen"]
      432 LOADK                            R20 K89 ["GenerateWhat"]
      433 NAMECALL                         R17 R1 K23 ["getText"]
      435 CALL                             R17 3 1
      436 SETTABLEKS                       R17 R16 K40 ["Text"]
      438 MOVE                             R17 R2
      439 CALL                             R17 0 1
      440 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      442 CALL                             R14 2 1
      443 SETTABLEKS                       R14 R13 K36 ["Title"]
      445 GETUPVAL                         R14 8
      446 GETTABLEKS                       R14 R14 K7 ["createElement"]
      448 GETUPVAL                         R15 13
      449 DUPTABLE                         R16 K48 [{["icon"], ["size"], ["variant"], ["onActivated"], ["LayoutOrder"], ["testId"] = "avatar-chat-generation-options-dismiss"}]
      450 GETUPVAL                         R17 14
      451 GETTABLEKS                       R17 R17 K49 ["X"]
      453 SETTABLEKS                       R17 R16 K43 ["icon"]
      455 GETUPVAL                         R17 15
      456 GETTABLEKS                       R17 R17 K50 ["XSmall"]
      458 SETTABLEKS                       R17 R16 K44 ["size"]
      460 GETUPVAL                         R17 16
      461 GETTABLEKS                       R17 R17 K51 ["Utility"]
      463 SETTABLEKS                       R17 R16 K45 ["variant"]
      465 GETTABLEKS                       R17 R0 K52 ["onDismiss"]
      467 SETTABLEKS                       R17 R16 K46 ["onActivated"]
      469 MOVE                             R17 R2
      470 CALL                             R17 0 1
      471 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      473 CALL                             R14 2 1
      474 SETTABLEKS                       R14 R13 K37 ["Dismiss"]
      476 CALL                             R10 3 1
      477 SETTABLEKS                       R10 R9 K30 ["Header"]
      479 GETUPVAL                         R10 8
      480 GETTABLEKS                       R10 R10 K7 ["createElement"]
      482 GETUPVAL                         R11 9
      483 DUPTABLE                         R12 K9 [{"LayoutOrder"}]
      484 MOVE                             R13 R2
      485 CALL                             R13 0 1
      486 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
      488 CALL                             R10 2 1
      489 SETTABLEKS                       R10 R9 K55 ["Divider"]
      491 GETUPVAL                         R10 8
      492 GETTABLEKS                       R10 R10 K7 ["createElement"]
      494 GETUPVAL                         R11 10
      495 DUPTABLE                         R12 K91 [{["tag"] = "col gap-xsmall size-full-0 auto-y padding-x-medium padding-y-small", ["LayoutOrder"]}]
      496 MOVE                             R13 R2
      497 CALL                             R13 0 1
      498 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
      500 MOVE                             R13 R4
      501 CALL                             R10 3 1
      502 SETTABLEKS                       R10 R9 K84 ["Choices"]
      504 GETUPVAL                         R11 17
      505 CALL                             R11 0 1
      506 JUMPIF                           R11 ; [+5]
      507 GETUPVAL                         R11 18
      508 CALL                             R11 0 1
      509 JUMPIF                           R11 ; [+2]
      510 LOADNIL                          R10
      511 JUMP                             ; [+10]
      512 GETUPVAL                         R10 8
      513 GETTABLEKS                       R10 R10 K7 ["createElement"]
      515 GETUPVAL                         R11 9
      516 DUPTABLE                         R12 K9 [{"LayoutOrder"}]
      517 MOVE                             R13 R2
      518 CALL                             R13 0 1
      519 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
      521 CALL                             R10 2 1
      522 SETTABLEKS                       R10 R9 K85 ["CheckboxDivider"]
      524 GETUPVAL                         R11 17
      525 CALL                             R11 0 1
      526 JUMPIF                           R11 ; [+5]
      527 GETUPVAL                         R11 18
      528 CALL                             R11 0 1
      529 JUMPIF                           R11 ; [+2]
      530 LOADNIL                          R10
      531 JUMP                             ; [+89]
      532 GETUPVAL                         R10 8
      533 GETTABLEKS                       R10 R10 K7 ["createElement"]
      535 GETUPVAL                         R11 10
      536 DUPTABLE                         R12 K12 [{["tag"] = "col size-full-0 auto-y padding-x-medium padding-y-small", ["LayoutOrder"]}]
      537 MOVE                             R13 R2
      538 CALL                             R13 0 1
      539 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
      541 DUPTABLE                         R13 K92 [{"DynamicHead", "R15Plus"}]
      542 GETUPVAL                         R15 17
      543 CALL                             R15 0 1
      544 JUMPIF                           R15 ; [+2]
      545 LOADNIL                          R14
      546 JUMP                             ; [+32]
      547 GETUPVAL                         R14 8
      548 GETTABLEKS                       R14 R14 K7 ["createElement"]
      550 GETUPVAL                         R15 11
      551 DUPTABLE                         R16 K74 [{["LayoutOrder"], ["isChecked"], ["setChecked"], ["label"], ["description"], ["testId"] = "avatar-chat-dynamic-head"}]
      552 MOVE                             R17 R2
      553 CALL                             R17 0 1
      554 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      556 GETTABLEKS                       R17 R0 K75 ["dynamicHead"]
      558 SETTABLEKS                       R17 R16 K15 ["isChecked"]
      560 GETTABLEKS                       R17 R0 K76 ["setDynamicHead"]
      562 SETTABLEKS                       R17 R16 K16 ["setChecked"]
      564 LOADK                            R19 K21 ["AvatarChatScreen"]
      565 LOADK                            R20 K93 ["GenerateDynamicHead"]
      566 NAMECALL                         R17 R1 K23 ["getText"]
      568 CALL                             R17 3 1
      569 SETTABLEKS                       R17 R16 K17 ["label"]
      571 LOADK                            R19 K21 ["AvatarChatScreen"]
      572 LOADK                            R20 K94 ["GenerateDynamicHeadDetail"]
      573 NAMECALL                         R17 R1 K23 ["getText"]
      575 CALL                             R17 3 1
      576 SETTABLEKS                       R17 R16 K18 ["description"]
      578 CALL                             R14 2 1
      579 SETTABLEKS                       R14 R13 K65 ["DynamicHead"]
      581 GETUPVAL                         R15 18
      582 CALL                             R15 0 1
      583 JUMPIF                           R15 ; [+2]
      584 LOADNIL                          R14
      585 JUMP                             ; [+32]
      586 GETUPVAL                         R14 8
      587 GETTABLEKS                       R14 R14 K7 ["createElement"]
      589 GETUPVAL                         R15 11
      590 DUPTABLE                         R16 K68 [{["LayoutOrder"], ["isChecked"], ["setChecked"], ["label"], ["description"], ["testId"] = "avatar-chat-r15-plus"}]
      591 MOVE                             R17 R2
      592 CALL                             R17 0 1
      593 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      595 GETTABLEKS                       R17 R0 K69 ["r15Plus"]
      597 SETTABLEKS                       R17 R16 K15 ["isChecked"]
      599 GETTABLEKS                       R17 R0 K70 ["setR15Plus"]
      601 SETTABLEKS                       R17 R16 K16 ["setChecked"]
      603 LOADK                            R19 K95 ["AutoSetupOptions"]
      604 LOADK                            R20 K96 ["CustomHumanoid"]
      605 NAMECALL                         R17 R1 K23 ["getText"]
      607 CALL                             R17 3 1
      608 SETTABLEKS                       R17 R16 K17 ["label"]
      610 LOADK                            R19 K95 ["AutoSetupOptions"]
      611 LOADK                            R20 K97 ["CustomHumanoidDescription"]
      612 NAMECALL                         R17 R1 K23 ["getText"]
      614 CALL                             R17 3 1
      615 SETTABLEKS                       R17 R16 K18 ["description"]
      617 CALL                             R14 2 1
      618 SETTABLEKS                       R14 R13 K64 ["R15Plus"]
      620 CALL                             R10 3 1
      621 SETTABLEKS                       R10 R9 K57 ["Checkboxes"]
      623 GETUPVAL                         R11 2
      624 CALL                             R11 0 1
      625 JUMPIF                           R11 ; [+2]
      626 LOADNIL                          R10
      627 JUMP                             ; [+10]
      628 GETUPVAL                         R10 8
      629 GETTABLEKS                       R10 R10 K7 ["createElement"]
      631 GETUPVAL                         R11 9
      632 DUPTABLE                         R12 K9 [{"LayoutOrder"}]
      633 MOVE                             R13 R2
      634 CALL                             R13 0 1
      635 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
      637 CALL                             R10 2 1
      638 SETTABLEKS                       R10 R9 K86 ["EffortDivider"]
      640 GETUPVAL                         R11 2
      641 CALL                             R11 0 1
      642 JUMPIF                           R11 ; [+2]
      643 LOADNIL                          R10
      644 JUMP                             ; [+139]
      645 GETUPVAL                         R10 8
      646 GETTABLEKS                       R10 R10 K7 ["createElement"]
      648 GETUPVAL                         R11 10
      649 DUPTABLE                         R12 K99 [{["tag"] = "col gap-xsmall size-full-0 auto-y padding-x-large padding-y-medium", ["LayoutOrder"]}]
      650 MOVE                             R13 R2
      651 CALL                             R13 0 1
      652 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
      654 DUPTABLE                         R13 K103 [{"Label", "Slider", "Ticks"}]
      655 GETUPVAL                         R14 8
      656 GETTABLEKS                       R14 R14 K7 ["createElement"]
      658 GETUPVAL                         R15 12
      659 DUPTABLE                         R16 K105 [{["tag"] = "auto-xy text-label-small text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      660 LOADK                            R19 K21 ["AvatarChatScreen"]
      661 LOADK                            R20 K106 ["EffortLevel"]
      662 NAMECALL                         R17 R1 K23 ["getText"]
      664 CALL                             R17 3 1
      665 SETTABLEKS                       R17 R16 K40 ["Text"]
      667 MOVE                             R17 R2
      668 CALL                             R17 0 1
      669 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      671 CALL                             R14 2 1
      672 SETTABLEKS                       R14 R13 K100 ["Label"]
      674 GETUPVAL                         R14 8
      675 GETTABLEKS                       R14 R14 K7 ["createElement"]
      677 GETUPVAL                         R15 20
      678 DUPTABLE                         R16 K112 [{["value"], ["range"], ["step"] = 1, ["size"], ["onValueChanged"], ["LayoutOrder"], ["testId"] = "avatar-chat-effort"}]
      679 GETTABLEKS                       R18 R0 K113 ["effort"]
      681 JUMPIFNOTEQKS                    R18 K114 ["efficient"] ; [+3]
      683 LOADN                            R17 1
      684 JUMP                             ; [+5]
      685 JUMPIFNOTEQKS                    R18 K115 ["quality"] ; [+3]
      687 LOADN                            R17 3
      688 JUMP                             ; [+1]
      689 LOADN                            R17 2
      690 SETTABLEKS                       R17 R16 K4 ["value"]
      692 GETIMPORT                        R17 K118 [NumberRange.new]
      694 LOADN                            R18 1
      695 LOADN                            R19 3
      696 CALL                             R17 2 1
      697 SETTABLEKS                       R17 R16 K107 ["range"]
      699 GETUPVAL                         R17 15
      700 GETTABLEKS                       R17 R17 K119 ["Small"]
      702 SETTABLEKS                       R17 R16 K44 ["size"]
      704 SETTABLEKS                       R5 R16 K110 ["onValueChanged"]
      706 MOVE                             R17 R2
      707 CALL                             R17 0 1
      708 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      710 CALL                             R14 2 1
      711 SETTABLEKS                       R14 R13 K101 ["Slider"]
      713 GETUPVAL                         R14 8
      714 GETTABLEKS                       R14 R14 K7 ["createElement"]
      716 GETUPVAL                         R15 10
      717 DUPTABLE                         R16 K121 [{["tag"] = "row align-x-center size-full-0 auto-y", ["LayoutOrder"]}]
      718 MOVE                             R17 R2
      719 CALL                             R17 0 1
      720 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      722 DUPTABLE                         R17 K125 [{"Efficient", "Balanced", "Quality"}]
      723 GETUPVAL                         R18 8
      724 GETTABLEKS                       R18 R18 K7 ["createElement"]
      726 GETUPVAL                         R19 12
      727 DUPTABLE                         R20 K127 [{["tag"] = "grow auto-y text-body-small text-align-x-left content-default", ["Text"], ["LayoutOrder"]}]
      728 LOADK                            R23 K21 ["AvatarChatScreen"]
      729 LOADK                            R24 K128 ["EffortEfficient"]
      730 NAMECALL                         R21 R1 K23 ["getText"]
      732 CALL                             R21 3 1
      733 SETTABLEKS                       R21 R20 K40 ["Text"]
      735 MOVE                             R21 R2
      736 CALL                             R21 0 1
      737 SETTABLEKS                       R21 R20 K8 ["LayoutOrder"]
      739 CALL                             R18 2 1
      740 SETTABLEKS                       R18 R17 K122 ["Efficient"]
      742 GETUPVAL                         R18 8
      743 GETTABLEKS                       R18 R18 K7 ["createElement"]
      745 GETUPVAL                         R19 12
      746 DUPTABLE                         R20 K130 [{["tag"] = "grow auto-y text-body-small text-align-x-center content-default", ["Text"], ["LayoutOrder"]}]
      747 LOADK                            R23 K21 ["AvatarChatScreen"]
      748 LOADK                            R24 K131 ["EffortBalanced"]
      749 NAMECALL                         R21 R1 K23 ["getText"]
      751 CALL                             R21 3 1
      752 SETTABLEKS                       R21 R20 K40 ["Text"]
      754 MOVE                             R21 R2
      755 CALL                             R21 0 1
      756 SETTABLEKS                       R21 R20 K8 ["LayoutOrder"]
      758 CALL                             R18 2 1
      759 SETTABLEKS                       R18 R17 K123 ["Balanced"]
      761 GETUPVAL                         R18 8
      762 GETTABLEKS                       R18 R18 K7 ["createElement"]
      764 GETUPVAL                         R19 12
      765 DUPTABLE                         R20 K133 [{["tag"] = "grow auto-y text-body-small text-align-x-right content-default", ["Text"], ["LayoutOrder"]}]
      766 LOADK                            R23 K21 ["AvatarChatScreen"]
      767 LOADK                            R24 K134 ["EffortQuality"]
      768 NAMECALL                         R21 R1 K23 ["getText"]
      770 CALL                             R21 3 1
      771 SETTABLEKS                       R21 R20 K40 ["Text"]
      773 MOVE                             R21 R2
      774 CALL                             R21 0 1
      775 SETTABLEKS                       R21 R20 K8 ["LayoutOrder"]
      777 CALL                             R18 2 1
      778 SETTABLEKS                       R18 R17 K124 ["Quality"]
      780 CALL                             R14 3 1
      781 SETTABLEKS                       R14 R13 K102 ["Ticks"]
      783 CALL                             R10 3 1
      784 SETTABLEKS                       R10 R9 K87 ["Effort"]
      786 CALL                             R6 3 -1
      787 RETURN                           R6 -1

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
       41 GETTABLEKS                       R6 R6 K13 ["IconName"]
       43 GETTABLEKS                       R7 R4 K11 ["Enums"]
       45 GETTABLEKS                       R7 R7 K14 ["InputSize"]
       47 GETTABLEKS                       R8 R4 K15 ["Divider"]
       49 GETTABLEKS                       R9 R4 K16 ["IconButton"]
       51 GETTABLEKS                       R10 R4 K17 ["Slider"]
       53 GETTABLEKS                       R11 R4 K18 ["Text"]
       55 GETTABLEKS                       R12 R4 K19 ["View"]
       57 GETIMPORT                        R13 K5 [require]
       59 GETTABLEKS                       R14 R0 K20 ["Src"]
       61 GETTABLEKS                       R14 R14 K21 ["Components"]
       63 GETTABLEKS                       R14 R14 K22 ["Screens"]
       65 GETTABLEKS                       R14 R14 K23 ["AvatarChatScreen"]
       67 GETTABLEKS                       R14 R14 K24 ["CheckboxOptionRow"]
       69 CALL                             R13 1 1
       70 GETTABLEKS                       R14 R1 K25 ["ContextServices"]
       72 GETTABLEKS                       R14 R14 K26 ["Localization"]
       74 GETIMPORT                        R15 K5 [require]
       76 GETTABLEKS                       R16 R0 K20 ["Src"]
       78 GETTABLEKS                       R16 R16 K21 ["Components"]
       80 GETTABLEKS                       R16 R16 K22 ["Screens"]
       82 GETTABLEKS                       R16 R16 K23 ["AvatarChatScreen"]
       84 GETTABLEKS                       R16 R16 K27 ["PipelineOptionRow"]
       86 CALL                             R15 1 1
       87 GETIMPORT                        R16 K5 [require]
       89 GETTABLEKS                       R17 R0 K20 ["Src"]
       91 GETTABLEKS                       R17 R17 K28 ["Types"]
       93 CALL                             R16 1 1
       94 GETIMPORT                        R17 K5 [require]
       96 GETTABLEKS                       R18 R0 K20 ["Src"]
       98 GETTABLEKS                       R18 R18 K29 ["Flags"]
      100 GETTABLEKS                       R18 R18 K30 ["getFFlagAvatarPreviewerAvatarCreationDynamicHeadOption"]
      102 CALL                             R17 1 1
      103 GETIMPORT                        R18 K5 [require]
      105 GETTABLEKS                       R19 R0 K20 ["Src"]
      107 GETTABLEKS                       R19 R19 K29 ["Flags"]
      109 GETTABLEKS                       R19 R19 K31 ["getFFlagAvatarPreviewerAvatarCreationOptionsRedesign"]
      111 CALL                             R18 1 1
      112 GETIMPORT                        R19 K5 [require]
      114 GETTABLEKS                       R20 R0 K20 ["Src"]
      116 GETTABLEKS                       R20 R20 K29 ["Flags"]
      118 GETTABLEKS                       R20 R20 K32 ["getFFlagAvatarPreviewerAvatarCreationPipelineOptions"]
      120 CALL                             R19 1 1
      121 GETIMPORT                        R20 K5 [require]
      123 GETTABLEKS                       R21 R0 K20 ["Src"]
      125 GETTABLEKS                       R21 R21 K29 ["Flags"]
      127 GETTABLEKS                       R21 R21 K33 ["getFFlagAvatarPreviewerAvatarCreationR15PlusOption"]
      129 CALL                             R20 1 1
      130 NEWTABLE                         R21 0 3
      132 DUPTABLE                         R22 K40 [{["value"] = "npc", ["titleKey"] = "NpcAvatar", ["detailKey"] = "NpcAvatarDetail"}]
      133 DUPTABLE                         R23 K44 [{["value"] = "modesty", ["titleKey"] = "BodyOnly", ["detailKey"] = "BodyOnlyDetail"}]
      134 DUPTABLE                         R24 K48 [{["value"] = , ["titleKey"] = "FullAvatarComingSoon", ["detailKey"] = "FullAvatarDetail"}]
      135 SETLIST                          R21 R22 3 [1]
      137 NEWTABLE                         R22 0 3
      139 DUPTABLE                         R23 K51 [{["value"] = "platform", ["titleKey"] = "FullAvatar", ["detailKey"] = "FullAvatarDetail"}]
      140 DUPTABLE                         R24 K40 [{["value"] = "npc", ["titleKey"] = "NpcAvatar", ["detailKey"] = "NpcAvatarDetail"}]
      141 DUPTABLE                         R25 K44 [{["value"] = "modesty", ["titleKey"] = "BodyOnly", ["detailKey"] = "BodyOnlyDetail"}]
      142 SETLIST                          R22 R23 3 [1]
      144 NEWTABLE                         R23 0 2
      146 DUPTABLE                         R24 K54 [{["value"] = "npc", ["titleKey"] = "BakedInClothing", ["detailKey"] = "BakedInClothingDetail"}]
      147 DUPTABLE                         R25 K57 [{["value"] = "modesty", ["titleKey"] = "AvatarBodyOnly", ["detailKey"] = "AvatarBodyOnlyDetail"}]
      148 SETLIST                          R23 R24 2 [1]
      150 NEWTABLE                         R24 0 3
      152 LOADK                            R25 K58 ["efficient"]
      153 LOADK                            R26 K59 ["balanced"]
      154 LOADK                            R27 K60 ["quality"]
      155 SETLIST                          R24 R25 3 [1]
      157 DUPCLOSURE                       R25 K61 [PROTO_0]
      158 DUPCLOSURE                       R26 K62 [PROTO_3]
      159 CAPTURE                          VAL R14
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R19
      162 CAPTURE                          VAL R22
      163 CAPTURE                          VAL R21
      164 CAPTURE                          VAL R24
      165 CAPTURE                          VAL R18
      166 CAPTURE                          VAL R23
      167 CAPTURE                          VAL R2
      168 CAPTURE                          VAL R8
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R13
      171 CAPTURE                          VAL R11
      172 CAPTURE                          VAL R9
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R17
      177 CAPTURE                          VAL R20
      178 CAPTURE                          VAL R15
      179 CAPTURE                          VAL R10
      180 RETURN                           R26 1
