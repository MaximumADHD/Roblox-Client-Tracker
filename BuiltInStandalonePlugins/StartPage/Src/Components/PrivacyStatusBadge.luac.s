PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R3 R0 K1 ["PrivacyType"]
        8 GETTABLEKS                       R4 R0 K2 ["ContentMaturity"]
       10 GETTABLEKS                       R5 R0 K3 ["IsFriendsOnly"]
       12 GETTABLEKS                       R6 R0 K4 ["CreatorType"]
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 GETUPVAL                         R9 2
       17 JUMPIFNOT                        R9 ; [+21]
       18 GETTABLEKS                       R9 R0 K5 ["Audiences"]
       20 JUMPIFEQKNIL                     R9 ; [+18]
       22 GETTABLEKS                       R9 R0 K5 ["Audiences"]
       24 GETUPVAL                         R10 3
       25 MOVE                             R11 R9
       26 CALL                             R10 1 1
       27 NOT                              R7 R10
       28 MOVE                             R10 R7
       29 JUMPIFNOT                        R10 ; [+7]
       30 GETUPVAL                         R11 4
       31 MOVE                             R12 R9
       32 GETUPVAL                         R13 5
       33 GETTABLEKS                       R13 R13 K6 ["Public"]
       35 CALL                             R11 2 1
       36 NOT                              R10 R11
       37 MOVE                             R8 R10
       38 JUMP                             ; [+5]
       39 JUMPIFEQKS                       R3 K6 ["Public"] ; [+2]
       41 LOADB                            R7 0 +1
       42 LOADB                            R7 1
       43 MOVE                             R8 R5
       44 MOVE                             R9 R7
       45 JUMPIFNOT                        R9 ; [+4]
       46 JUMPIFEQKS                       R4 K7 ["unrated"] ; [+2]
       48 LOADB                            R9 0 +1
       49 LOADB                            R9 1
       50 GETTABLEKS                       R10 R0 K8 ["IsSequestered"]
       52 MOVE                             R11 R7
       53 JUMPIFNOT                        R11 ; [+8]
       54 NOT                              R11 R9
       55 JUMPIFNOT                        R11 ; [+6]
       56 GETTABLEKS                       R12 R0 K9 ["CoreContentSelectStatus"]
       58 JUMPIFEQKS                       R12 K10 ["Eligible"] ; [+2]
       60 LOADB                            R11 0 +1
       61 LOADB                            R11 1
       62 MOVE                             R12 R11
       63 JUMPIFNOT                        R12 ; [+13]
       64 LOADB                            R12 0
       65 GETTABLEKS                       R13 R0 K11 ["CoreContentReasons"]
       67 JUMPIFEQKNIL                     R13 ; [+9]
       69 GETTABLEKS                       R14 R0 K11 ["CoreContentReasons"]
       71 LENGTH                           R13 R14
       72 LOADN                            R14 0
       73 JUMPIFLT                         R14 R13 ; [+2]
       75 LOADB                            R12 0 +1
       76 LOADB                            R12 1
       77 GETTABLEKS                       R13 R0 K12 ["AgeRecommendation"]
       79 LOADNIL                          R14
       80 LOADNIL                          R15
       81 LOADNIL                          R16
       82 GETTABLEKS                       R17 R2 K13 ["Color"]
       84 GETTABLEKS                       R17 R17 K14 ["Shift"]
       86 GETTABLEKS                       R17 R17 K15 ["Shift_300"]
       88 GETTABLEKS                       R18 R2 K13 ["Color"]
       90 GETTABLEKS                       R18 R18 K16 ["Content"]
       92 GETTABLEKS                       R18 R18 K17 ["Emphasis"]
       94 GETUPVAL                         R19 6
       95 GETTABLEKS                       R19 R19 K18 ["Neutral"]
       97 LOADNIL                          R20
       98 JUMPIF                           R7 ; [+16]
       99 LOADK                            R23 K19 ["Plugin"]
      100 LOADK                            R24 K20 ["PrivacyType.Private"]
      101 NAMECALL                         R21 R1 K21 ["getText"]
      103 CALL                             R21 3 1
      104 MOVE                             R14 R21
      105 GETUPVAL                         R21 7
      106 GETTABLEKS                       R15 R21 K22 ["LockClosed"]
      108 GETTABLEKS                       R21 R2 K13 ["Color"]
      110 GETTABLEKS                       R21 R21 K16 ["Content"]
      112 GETTABLEKS                       R16 R21 K23 ["Muted"]
      114 JUMP                             ; [+262]
      115 JUMPIFNOT                        R7 ; [+52]
      116 JUMPIF                           R9 ; [+1]
      117 JUMPIFNOT                        R10 ; [+50]
      118 GETUPVAL                         R21 8
      119 JUMPIFNOT                        R21 ; [+7]
      120 LOADK                            R23 K19 ["Plugin"]
      121 LOADK                            R24 K24 ["PrivacyType.PubliclyUnavailable"]
      122 NAMECALL                         R21 R1 K21 ["getText"]
      124 CALL                             R21 3 1
      125 MOVE                             R14 R21
      126 JUMP                             ; [+6]
      127 LOADK                            R23 K19 ["Plugin"]
      128 LOADK                            R24 K25 ["PrivacyType.Unplayable"]
      129 NAMECALL                         R21 R1 K21 ["getText"]
      131 CALL                             R21 3 1
      132 MOVE                             R14 R21
      133 GETUPVAL                         R21 8
      134 JUMPIFNOT                        R21 ; [+4]
      135 GETUPVAL                         R21 7
      136 GETTABLEKS                       R15 R21 K26 ["GlobeDetailed"]
      138 JUMP                             ; [+3]
      139 GETUPVAL                         R21 7
      140 GETTABLEKS                       R15 R21 K27 ["CircleX"]
      142 GETTABLEKS                       R21 R2 K13 ["Color"]
      144 GETTABLEKS                       R21 R21 K28 ["System"]
      146 GETTABLEKS                       R17 R21 K29 ["Alert"]
      148 GETTABLEKS                       R21 R2 K30 ["DarkMode"]
      150 GETTABLEKS                       R21 R21 K16 ["Content"]
      152 GETTABLEKS                       R18 R21 K17 ["Emphasis"]
      154 MOVE                             R16 R18
      155 GETUPVAL                         R21 8
      156 JUMPIFNOT                        R21 ; [+220]
      157 JUMPIFNOT                        R9 ; [+6]
      158 LOADK                            R23 K19 ["Plugin"]
      159 LOADK                            R24 K31 ["Tooltip.PubliclyUnavailable"]
      160 NAMECALL                         R21 R1 K21 ["getText"]
      162 CALL                             R21 3 1
      163 MOVE                             R20 R21
      164 GETUPVAL                         R21 6
      165 GETTABLEKS                       R19 R21 K29 ["Alert"]
      167 JUMP                             ; [+209]
      168 JUMPIFNOT                        R7 ; [+31]
      169 GETTABLEKS                       R21 R0 K32 ["IsDiscoveryBlocked"]
      171 JUMPIFNOT                        R21 ; [+28]
      172 LOADK                            R23 K19 ["Plugin"]
      173 LOADK                            R24 K33 ["PrivacyType.NeedsAttention"]
      174 NAMECALL                         R21 R1 K21 ["getText"]
      176 CALL                             R21 3 1
      177 MOVE                             R14 R21
      178 GETUPVAL                         R21 7
      179 GETTABLEKS                       R15 R21 K34 ["TriangleExclamation"]
      181 GETTABLEKS                       R21 R2 K13 ["Color"]
      183 GETTABLEKS                       R21 R21 K28 ["System"]
      185 GETTABLEKS                       R17 R21 K35 ["Warning"]
      187 GETTABLEKS                       R21 R2 K36 ["LightMode"]
      189 GETTABLEKS                       R21 R21 K16 ["Content"]
      191 GETTABLEKS                       R18 R21 K17 ["Emphasis"]
      193 MOVE                             R16 R18
      194 GETUPVAL                         R21 8
      195 JUMPIFNOT                        R21 ; [+181]
      196 GETUPVAL                         R21 6
      197 GETTABLEKS                       R19 R21 K35 ["Warning"]
      199 JUMP                             ; [+177]
      200 JUMPIFNOT                        R7 ; [+35]
      201 JUMPIFEQKNIL                     R13 ; [+4]
      203 GETUPVAL                         R21 9
      204 JUMPIFNOTLT                      R13 R21 ; [+31]
      206 JUMPIFNOT                        R11 ; [+29]
      207 JUMPIFNOT                        R12 ; [+28]
      208 LOADK                            R23 K19 ["Plugin"]
      209 LOADK                            R24 K33 ["PrivacyType.NeedsAttention"]
      210 NAMECALL                         R21 R1 K21 ["getText"]
      212 CALL                             R21 3 1
      213 MOVE                             R14 R21
      214 GETUPVAL                         R21 7
      215 GETTABLEKS                       R15 R21 K34 ["TriangleExclamation"]
      217 GETTABLEKS                       R21 R2 K13 ["Color"]
      219 GETTABLEKS                       R21 R21 K28 ["System"]
      221 GETTABLEKS                       R17 R21 K35 ["Warning"]
      223 GETTABLEKS                       R21 R2 K36 ["LightMode"]
      225 GETTABLEKS                       R21 R21 K16 ["Content"]
      227 GETTABLEKS                       R18 R21 K17 ["Emphasis"]
      229 MOVE                             R16 R18
      230 GETUPVAL                         R21 8
      231 JUMPIFNOT                        R21 ; [+145]
      232 GETUPVAL                         R21 6
      233 GETTABLEKS                       R19 R21 K35 ["Warning"]
      235 JUMP                             ; [+141]
      236 JUMPIFNOT                        R7 ; [+73]
      237 JUMPIFNOT                        R8 ; [+72]
      238 LOADK                            R23 K19 ["Plugin"]
      239 LOADK                            R24 K37 ["PrivacyType.Limited"]
      240 NAMECALL                         R21 R1 K21 ["getText"]
      242 CALL                             R21 3 1
      243 MOVE                             R14 R21
      244 GETUPVAL                         R21 8
      245 JUMPIFNOT                        R21 ; [+4]
      246 GETUPVAL                         R21 7
      247 GETTABLEKS                       R15 R21 K38 ["PersonWithSmallerPerson"]
      249 JUMP                             ; [+3]
      250 GETUPVAL                         R21 7
      251 GETTABLEKS                       R15 R21 K39 ["TwoPeople"]
      253 GETTABLEKS                       R21 R2 K13 ["Color"]
      255 GETTABLEKS                       R21 R21 K28 ["System"]
      257 GETTABLEKS                       R16 R21 K40 ["Success"]
      259 JUMPIFEQKS                       R6 K41 ["Group"] ; [+2]
      261 LOADB                            R21 0 +1
      262 LOADB                            R21 1
      263 LOADNIL                          R22
      264 GETUPVAL                         R23 2
      265 JUMPIFNOT                        R23 ; [+33]
      266 GETTABLEKS                       R23 R0 K5 ["Audiences"]
      268 JUMPIFEQKNIL                     R23 ; [+30]
      270 GETTABLEKS                       R23 R0 K5 ["Audiences"]
      272 GETUPVAL                         R24 4
      273 MOVE                             R25 R23
      274 GETUPVAL                         R26 5
      275 GETTABLEKS                       R26 R26 K42 ["PlayTesters"]
      277 CALL                             R24 2 1
      278 GETUPVAL                         R25 4
      279 MOVE                             R26 R23
      280 GETUPVAL                         R27 5
      281 GETTABLEKS                       R27 R27 K43 ["Friends"]
      283 CALL                             R25 2 1
      284 JUMPIFNOT                        R24 ; [+6]
      285 JUMPIFNOT                        R25 ; [+5]
      286 JUMPIFNOT                        R21 ; [+2]
      287 LOADK                            R22 K44 ["Tooltip.LimitedPlaytestersAndCommunity"]
      288 JUMP                             ; [+14]
      289 LOADK                            R22 K45 ["Tooltip.LimitedPlaytestersAndFriends"]
      290 JUMP                             ; [+12]
      291 JUMPIFNOT                        R24 ; [+2]
      292 LOADK                            R22 K46 ["Tooltip.LimitedPlaytesters"]
      293 JUMP                             ; [+9]
      294 JUMPIFNOT                        R21 ; [+2]
      295 LOADK                            R22 K47 ["Tooltip.LimitedCommunity"]
      296 JUMP                             ; [+6]
      297 LOADK                            R22 K48 ["Tooltip.LimitedFriends"]
      298 JUMP                             ; [+4]
      299 JUMPIFNOT                        R21 ; [+2]
      300 LOADK                            R22 K47 ["Tooltip.LimitedCommunity"]
      301 JUMP                             ; [+1]
      302 LOADK                            R22 K48 ["Tooltip.LimitedFriends"]
      303 LOADK                            R25 K19 ["Plugin"]
      304 MOVE                             R26 R22
      305 NAMECALL                         R23 R1 K21 ["getText"]
      307 CALL                             R23 3 1
      308 MOVE                             R20 R23
      309 JUMP                             ; [+67]
      310 LOADNIL                          R21
      311 JUMPIFNOT                        R11 ; [+6]
      312 JUMPIFEQKNIL                     R13 ; [+3]
      314 MOVE                             R21 R13
      315 JUMP                             ; [+14]
      316 LOADN                            R21 0
      317 JUMP                             ; [+12]
      318 GETUPVAL                         R23 9
      319 JUMPIFEQKNIL                     R13 ; [+3]
      321 MOVE                             R24 R13
      322 JUMP                             ; [+1]
      323 LOADN                            R24 0
      324 FASTCALL2                        MATH_MAX R23 R24 ; [+3]
      326 GETIMPORT                        R22 K51 [math.max]
      328 CALL                             R22 2 1
      329 MOVE                             R21 R22
      330 LOADNIL                          R22
      331 GETUPVAL                         R23 9
      332 JUMPIFNOTLE                      R23 R21 ; [+8]
      334 GETUPVAL                         R24 9
      335 FASTCALL1                        TOSTRING R24 ; [+2]
      336 GETIMPORT                        R23 K53 [tostring]
      338 CALL                             R23 1 1
      339 MOVE                             R22 R23
      340 JUMP                             ; [+9]
      341 GETUPVAL                         R23 10
      342 JUMPIFNOTLE                      R23 R21 ; [+7]
      344 GETUPVAL                         R24 10
      345 FASTCALL1                        TOSTRING R24 ; [+2]
      346 GETIMPORT                        R23 K53 [tostring]
      348 CALL                             R23 1 1
      349 MOVE                             R22 R23
      350 JUMPIFEQKNIL                     R22 ; [+11]
      352 LOADK                            R25 K19 ["Plugin"]
      353 LOADK                            R26 K54 ["PrivacyType.PublicAgeGated"]
      354 DUPTABLE                         R27 K56 [{"minAge"}]
      355 SETTABLEKS                       R22 R27 K55 ["minAge"]
      357 NAMECALL                         R23 R1 K21 ["getText"]
      359 CALL                             R23 4 1
      360 MOVE                             R14 R23
      361 JUMP                             ; [+6]
      362 LOADK                            R25 K19 ["Plugin"]
      363 LOADK                            R26 K57 ["PrivacyType.PublicAllAges"]
      364 NAMECALL                         R23 R1 K21 ["getText"]
      366 CALL                             R23 3 1
      367 MOVE                             R14 R23
      368 GETUPVAL                         R23 7
      369 GETTABLEKS                       R15 R23 K26 ["GlobeDetailed"]
      371 GETTABLEKS                       R23 R2 K13 ["Color"]
      373 GETTABLEKS                       R23 R23 K28 ["System"]
      375 GETTABLEKS                       R16 R23 K40 ["Success"]
      377 LOADNIL                          R21
      378 GETUPVAL                         R22 8
      379 JUMPIFNOT                        R22 ; [+41]
      380 GETUPVAL                         R22 11
      381 GETTABLEKS                       R22 R22 K58 ["createElement"]
      383 GETUPVAL                         R23 12
      384 DUPTABLE                         R24 K65 [{"icon", "text", "variant", "shape", "size", "LayoutOrder"}]
      385 DUPTABLE                         R25 K69 [{"name", "position", "iconVariant"}]
      386 SETTABLEKS                       R15 R25 K66 ["name"]
      388 GETUPVAL                         R26 13
      389 GETTABLEKS                       R26 R26 K70 ["Left"]
      391 SETTABLEKS                       R26 R25 K67 ["position"]
      393 GETUPVAL                         R26 14
      394 GETTABLEKS                       R26 R26 K71 ["Filled"]
      396 SETTABLEKS                       R26 R25 K68 ["iconVariant"]
      398 SETTABLEKS                       R25 R24 K59 ["icon"]
      400 SETTABLEKS                       R14 R24 K60 ["text"]
      402 SETTABLEKS                       R19 R24 K61 ["variant"]
      404 GETUPVAL                         R25 15
      405 GETTABLEKS                       R25 R25 K72 ["Pill"]
      407 SETTABLEKS                       R25 R24 K62 ["shape"]
      409 GETUPVAL                         R25 16
      410 GETTABLEKS                       R25 R25 K73 ["Small"]
      412 SETTABLEKS                       R25 R24 K63 ["size"]
      414 GETTABLEKS                       R25 R0 K64 ["LayoutOrder"]
      416 SETTABLEKS                       R25 R24 K64 ["LayoutOrder"]
      418 CALL                             R22 2 1
      419 MOVE                             R21 R22
      420 JUMP                             ; [+43]
      421 GETUPVAL                         R22 11
      422 GETTABLEKS                       R22 R22 K58 ["createElement"]
      424 GETUPVAL                         R23 17
      425 DUPTABLE                         R24 K77 [{["LayoutOrder"], ["tag"] = "row align-x-center align-y-center gap-xsmall radius-circle size-0-600 auto-x padding-x-small", ["backgroundStyle"]}]
      426 GETTABLEKS                       R25 R0 K64 ["LayoutOrder"]
      428 SETTABLEKS                       R25 R24 K64 ["LayoutOrder"]
      430 SETTABLEKS                       R17 R24 K76 ["backgroundStyle"]
      432 DUPTABLE                         R25 K80 [{"StatusIcon", "Label"}]
      433 GETUPVAL                         R26 11
      434 GETTABLEKS                       R26 R26 K58 ["createElement"]
      436 GETUPVAL                         R27 18
      437 DUPTABLE                         R28 K83 [{["name"], ["size"], ["style"], ["variant"] = "Filled", ["LayoutOrder"] = 1}]
      438 SETTABLEKS                       R15 R28 K66 ["name"]
      440 GETUPVAL                         R29 19
      441 GETTABLEKS                       R29 R29 K73 ["Small"]
      443 SETTABLEKS                       R29 R28 K63 ["size"]
      445 SETTABLEKS                       R16 R28 K81 ["style"]
      447 CALL                             R26 2 1
      448 SETTABLEKS                       R26 R25 K78 ["StatusIcon"]
      450 GETUPVAL                         R26 11
      451 GETTABLEKS                       R26 R26 K58 ["createElement"]
      453 GETUPVAL                         R27 20
      454 DUPTABLE                         R28 K88 [{["Text"], ["textStyle"], ["tag"] = "auto-xy text-label-small text-align-x-left", ["LayoutOrder"] = 2}]
      455 SETTABLEKS                       R14 R28 K84 ["Text"]
      457 SETTABLEKS                       R18 R28 K85 ["textStyle"]
      459 CALL                             R26 2 1
      460 SETTABLEKS                       R26 R25 K79 ["Label"]
      462 CALL                             R22 3 1
      463 MOVE                             R21 R22
      464 JUMPIFEQKNIL                     R20 ; [+26]
      466 GETUPVAL                         R22 11
      467 GETTABLEKS                       R22 R22 K58 ["createElement"]
      469 GETUPVAL                         R23 21
      470 DUPTABLE                         R24 K92 [{["title"] = "", ["text"], ["side"], ["LayoutOrder"]}]
      471 SETTABLEKS                       R20 R24 K60 ["text"]
      473 GETUPVAL                         R26 8
      474 JUMPIFNOT                        R26 ; [+4]
      475 GETUPVAL                         R25 22
      476 GETTABLEKS                       R25 R25 K93 ["Top"]
      478 JUMP                             ; [+3]
      479 GETUPVAL                         R25 22
      480 GETTABLEKS                       R25 R25 K94 ["Bottom"]
      482 SETTABLEKS                       R25 R24 K91 ["side"]
      484 GETTABLEKS                       R25 R0 K64 ["LayoutOrder"]
      486 SETTABLEKS                       R25 R24 K64 ["LayoutOrder"]
      488 MOVE                             R25 R21
      489 CALL                             R22 3 -1
      490 RETURN                           R22 -1
      491 RETURN                           R21 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
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
       23 GETTABLEKS                       R3 R3 K10 ["Localization"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Util"]
       31 GETTABLEKS                       R5 R5 K13 ["Foundation"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K14 ["Icon"]
       36 GETTABLEKS                       R6 R4 K15 ["Enums"]
       38 GETTABLEKS                       R6 R6 K16 ["IconName"]
       40 GETTABLEKS                       R7 R4 K15 ["Enums"]
       42 GETTABLEKS                       R7 R7 K17 ["IconSize"]
       44 GETTABLEKS                       R8 R4 K18 ["Text"]
       46 GETTABLEKS                       R9 R4 K19 ["Tooltip"]
       48 GETTABLEKS                       R10 R4 K15 ["Enums"]
       50 GETTABLEKS                       R10 R10 K20 ["PopoverSide"]
       52 GETTABLEKS                       R11 R4 K15 ["Enums"]
       54 GETTABLEKS                       R11 R11 K21 ["IconPosition"]
       56 GETTABLEKS                       R12 R4 K15 ["Enums"]
       58 GETTABLEKS                       R12 R12 K22 ["IconVariant"]
       60 GETTABLEKS                       R13 R4 K15 ["Enums"]
       62 GETTABLEKS                       R13 R13 K23 ["BadgeVariant"]
       64 GETTABLEKS                       R14 R4 K15 ["Enums"]
       66 GETTABLEKS                       R14 R14 K24 ["BadgeShape"]
       68 GETTABLEKS                       R15 R4 K15 ["Enums"]
       70 GETTABLEKS                       R15 R15 K25 ["BadgeSize"]
       72 GETTABLEKS                       R16 R4 K26 ["View"]
       74 GETTABLEKS                       R17 R4 K27 ["Hooks"]
       76 GETTABLEKS                       R17 R17 K28 ["useTokens"]
       78 GETTABLEKS                       R18 R4 K29 ["Badge"]
       80 GETIMPORT                        R19 K5 [require]
       82 GETTABLEKS                       R20 R0 K11 ["Src"]
       84 GETTABLEKS                       R20 R20 K12 ["Util"]
       86 GETTABLEKS                       R20 R20 K30 ["CoreContentStatusConstants"]
       88 CALL                             R19 1 1
       89 GETTABLEKS                       R20 R19 K31 ["NEEDS_ATTENTION_AGE_THRESHOLD"]
       91 GETTABLEKS                       R21 R19 K32 ["AGE_BRACKET_9"]
       93 GETIMPORT                        R22 K5 [require]
       95 GETTABLEKS                       R23 R0 K11 ["Src"]
       97 GETTABLEKS                       R23 R23 K33 ["Constants"]
       99 GETTABLEKS                       R23 R23 K34 ["Audience"]
      101 CALL                             R22 1 1
      102 GETIMPORT                        R23 K5 [require]
      104 GETTABLEKS                       R24 R0 K11 ["Src"]
      106 GETTABLEKS                       R24 R24 K12 ["Util"]
      108 GETTABLEKS                       R24 R24 K35 ["AudienceUtils"]
      110 CALL                             R23 1 1
      111 GETTABLEKS                       R24 R23 K36 ["audienceIsPrivate"]
      113 GETTABLEKS                       R25 R23 K37 ["audienceIncludes"]
      115 GETIMPORT                        R26 K5 [require]
      117 GETTABLEKS                       R27 R0 K11 ["Src"]
      119 GETTABLEKS                       R27 R27 K38 ["SharedFlags"]
      121 GETTABLEKS                       R27 R27 K39 ["getFFlagLuaStartPageAudiencesReplacement"]
      123 CALL                             R26 1 1
      124 CALL                             R26 0 1
      125 GETIMPORT                        R27 K5 [require]
      127 GETTABLEKS                       R28 R0 K11 ["Src"]
      129 GETTABLEKS                       R28 R28 K38 ["SharedFlags"]
      131 GETTABLEKS                       R28 R28 K40 ["getFFlagLuaStartPagePrivacyBadgeDesignUpdates"]
      133 CALL                             R27 1 1
      134 CALL                             R27 0 1
      135 DUPCLOSURE                       R28 K41 [PROTO_0]
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R17
      138 CAPTURE                          VAL R26
      139 CAPTURE                          VAL R24
      140 CAPTURE                          VAL R25
      141 CAPTURE                          VAL R22
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R6
      144 CAPTURE                          VAL R27
      145 CAPTURE                          VAL R20
      146 CAPTURE                          VAL R21
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R18
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R16
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R7
      156 CAPTURE                          VAL R8
      157 CAPTURE                          VAL R9
      158 CAPTURE                          VAL R10
      159 RETURN                           R28 1
