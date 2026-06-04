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
       94 LOADNIL                          R19
       95 JUMPIF                           R7 ; [+16]
       96 LOADK                            R22 K18 ["Plugin"]
       97 LOADK                            R23 K19 ["PrivacyType.Private"]
       98 NAMECALL                         R20 R1 K20 ["getText"]
      100 CALL                             R20 3 1
      101 MOVE                             R14 R20
      102 GETUPVAL                         R20 6
      103 GETTABLEKS                       R15 R20 K21 ["LockClosed"]
      105 GETTABLEKS                       R20 R2 K13 ["Color"]
      107 GETTABLEKS                       R20 R20 K16 ["Content"]
      109 GETTABLEKS                       R16 R20 K22 ["Muted"]
      111 JUMP                             ; [+219]
      112 JUMPIFNOT                        R7 ; [+25]
      113 JUMPIF                           R9 ; [+1]
      114 JUMPIFNOT                        R10 ; [+23]
      115 LOADK                            R22 K18 ["Plugin"]
      116 LOADK                            R23 K23 ["PrivacyType.Unplayable"]
      117 NAMECALL                         R20 R1 K20 ["getText"]
      119 CALL                             R20 3 1
      120 MOVE                             R14 R20
      121 GETUPVAL                         R20 6
      122 GETTABLEKS                       R15 R20 K24 ["CircleX"]
      124 GETTABLEKS                       R20 R2 K13 ["Color"]
      126 GETTABLEKS                       R20 R20 K25 ["System"]
      128 GETTABLEKS                       R17 R20 K26 ["Alert"]
      130 GETTABLEKS                       R20 R2 K27 ["DarkMode"]
      132 GETTABLEKS                       R20 R20 K16 ["Content"]
      134 GETTABLEKS                       R18 R20 K17 ["Emphasis"]
      136 MOVE                             R16 R18
      137 JUMP                             ; [+193]
      138 JUMPIFNOT                        R7 ; [+26]
      139 GETTABLEKS                       R20 R0 K28 ["IsDiscoveryBlocked"]
      141 JUMPIFNOT                        R20 ; [+23]
      142 LOADK                            R22 K18 ["Plugin"]
      143 LOADK                            R23 K29 ["PrivacyType.NeedsAttention"]
      144 NAMECALL                         R20 R1 K20 ["getText"]
      146 CALL                             R20 3 1
      147 MOVE                             R14 R20
      148 GETUPVAL                         R20 6
      149 GETTABLEKS                       R15 R20 K30 ["TriangleExclamation"]
      151 GETTABLEKS                       R20 R2 K13 ["Color"]
      153 GETTABLEKS                       R20 R20 K25 ["System"]
      155 GETTABLEKS                       R17 R20 K31 ["Warning"]
      157 GETTABLEKS                       R20 R2 K32 ["LightMode"]
      159 GETTABLEKS                       R20 R20 K16 ["Content"]
      161 GETTABLEKS                       R18 R20 K17 ["Emphasis"]
      163 MOVE                             R16 R18
      164 JUMP                             ; [+166]
      165 JUMPIFNOT                        R7 ; [+30]
      166 JUMPIFEQKNIL                     R13 ; [+4]
      168 GETUPVAL                         R20 7
      169 JUMPIFNOTLT                      R13 R20 ; [+26]
      171 JUMPIFNOT                        R11 ; [+24]
      172 JUMPIFNOT                        R12 ; [+23]
      173 LOADK                            R22 K18 ["Plugin"]
      174 LOADK                            R23 K29 ["PrivacyType.NeedsAttention"]
      175 NAMECALL                         R20 R1 K20 ["getText"]
      177 CALL                             R20 3 1
      178 MOVE                             R14 R20
      179 GETUPVAL                         R20 6
      180 GETTABLEKS                       R15 R20 K30 ["TriangleExclamation"]
      182 GETTABLEKS                       R20 R2 K13 ["Color"]
      184 GETTABLEKS                       R20 R20 K25 ["System"]
      186 GETTABLEKS                       R17 R20 K31 ["Warning"]
      188 GETTABLEKS                       R20 R2 K32 ["LightMode"]
      190 GETTABLEKS                       R20 R20 K16 ["Content"]
      192 GETTABLEKS                       R18 R20 K17 ["Emphasis"]
      194 MOVE                             R16 R18
      195 JUMP                             ; [+135]
      196 JUMPIFNOT                        R7 ; [+67]
      197 JUMPIFNOT                        R8 ; [+66]
      198 LOADK                            R22 K18 ["Plugin"]
      199 LOADK                            R23 K33 ["PrivacyType.Limited"]
      200 NAMECALL                         R20 R1 K20 ["getText"]
      202 CALL                             R20 3 1
      203 MOVE                             R14 R20
      204 GETUPVAL                         R20 6
      205 GETTABLEKS                       R15 R20 K34 ["TwoPeople"]
      207 GETTABLEKS                       R20 R2 K13 ["Color"]
      209 GETTABLEKS                       R20 R20 K25 ["System"]
      211 GETTABLEKS                       R16 R20 K35 ["Success"]
      213 JUMPIFEQKS                       R6 K36 ["Group"] ; [+2]
      215 LOADB                            R20 0 +1
      216 LOADB                            R20 1
      217 LOADNIL                          R21
      218 GETUPVAL                         R22 2
      219 JUMPIFNOT                        R22 ; [+33]
      220 GETTABLEKS                       R22 R0 K5 ["Audiences"]
      222 JUMPIFEQKNIL                     R22 ; [+30]
      224 GETTABLEKS                       R22 R0 K5 ["Audiences"]
      226 GETUPVAL                         R23 4
      227 MOVE                             R24 R22
      228 GETUPVAL                         R25 5
      229 GETTABLEKS                       R25 R25 K37 ["PlayTesters"]
      231 CALL                             R23 2 1
      232 GETUPVAL                         R24 4
      233 MOVE                             R25 R22
      234 GETUPVAL                         R26 5
      235 GETTABLEKS                       R26 R26 K38 ["Friends"]
      237 CALL                             R24 2 1
      238 JUMPIFNOT                        R23 ; [+6]
      239 JUMPIFNOT                        R24 ; [+5]
      240 JUMPIFNOT                        R20 ; [+2]
      241 LOADK                            R21 K39 ["Tooltip.LimitedPlaytestersAndCommunity"]
      242 JUMP                             ; [+14]
      243 LOADK                            R21 K40 ["Tooltip.LimitedPlaytestersAndFriends"]
      244 JUMP                             ; [+12]
      245 JUMPIFNOT                        R23 ; [+2]
      246 LOADK                            R21 K41 ["Tooltip.LimitedPlaytesters"]
      247 JUMP                             ; [+9]
      248 JUMPIFNOT                        R20 ; [+2]
      249 LOADK                            R21 K42 ["Tooltip.LimitedCommunity"]
      250 JUMP                             ; [+6]
      251 LOADK                            R21 K43 ["Tooltip.LimitedFriends"]
      252 JUMP                             ; [+4]
      253 JUMPIFNOT                        R20 ; [+2]
      254 LOADK                            R21 K42 ["Tooltip.LimitedCommunity"]
      255 JUMP                             ; [+1]
      256 LOADK                            R21 K43 ["Tooltip.LimitedFriends"]
      257 LOADK                            R24 K18 ["Plugin"]
      258 MOVE                             R25 R21
      259 NAMECALL                         R22 R1 K20 ["getText"]
      261 CALL                             R22 3 1
      262 MOVE                             R19 R22
      263 JUMP                             ; [+67]
      264 LOADNIL                          R20
      265 JUMPIFNOT                        R11 ; [+6]
      266 JUMPIFEQKNIL                     R13 ; [+3]
      268 MOVE                             R20 R13
      269 JUMP                             ; [+14]
      270 LOADN                            R20 0
      271 JUMP                             ; [+12]
      272 GETUPVAL                         R22 7
      273 JUMPIFEQKNIL                     R13 ; [+3]
      275 MOVE                             R23 R13
      276 JUMP                             ; [+1]
      277 LOADN                            R23 0
      278 FASTCALL2                        MATH_MAX R22 R23 ; [+3]
      280 GETIMPORT                        R21 K46 [math.max]
      282 CALL                             R21 2 1
      283 MOVE                             R20 R21
      284 LOADNIL                          R21
      285 GETUPVAL                         R22 7
      286 JUMPIFNOTLE                      R22 R20 ; [+8]
      288 GETUPVAL                         R23 7
      289 FASTCALL1                        TOSTRING R23 ; [+2]
      290 GETIMPORT                        R22 K48 [tostring]
      292 CALL                             R22 1 1
      293 MOVE                             R21 R22
      294 JUMP                             ; [+9]
      295 GETUPVAL                         R22 8
      296 JUMPIFNOTLE                      R22 R20 ; [+7]
      298 GETUPVAL                         R23 8
      299 FASTCALL1                        TOSTRING R23 ; [+2]
      300 GETIMPORT                        R22 K48 [tostring]
      302 CALL                             R22 1 1
      303 MOVE                             R21 R22
      304 JUMPIFEQKNIL                     R21 ; [+11]
      306 LOADK                            R24 K18 ["Plugin"]
      307 LOADK                            R25 K49 ["PrivacyType.PublicAgeGated"]
      308 DUPTABLE                         R26 K51 [{"minAge"}]
      309 SETTABLEKS                       R21 R26 K50 ["minAge"]
      311 NAMECALL                         R22 R1 K20 ["getText"]
      313 CALL                             R22 4 1
      314 MOVE                             R14 R22
      315 JUMP                             ; [+6]
      316 LOADK                            R24 K18 ["Plugin"]
      317 LOADK                            R25 K52 ["PrivacyType.PublicAllAges"]
      318 NAMECALL                         R22 R1 K20 ["getText"]
      320 CALL                             R22 3 1
      321 MOVE                             R14 R22
      322 GETUPVAL                         R22 6
      323 GETTABLEKS                       R15 R22 K53 ["GlobeDetailed"]
      325 GETTABLEKS                       R22 R2 K13 ["Color"]
      327 GETTABLEKS                       R22 R22 K25 ["System"]
      329 GETTABLEKS                       R16 R22 K35 ["Success"]
      331 GETUPVAL                         R20 9
      332 GETTABLEKS                       R20 R20 K54 ["createElement"]
      334 GETUPVAL                         R21 10
      335 DUPTABLE                         R22 K58 [{"LayoutOrder", "tag", "backgroundStyle"}]
      336 GETTABLEKS                       R23 R0 K55 ["LayoutOrder"]
      338 SETTABLEKS                       R23 R22 K55 ["LayoutOrder"]
      340 LOADK                            R23 K59 ["row align-x-center align-y-center gap-xsmall radius-circle size-0-600 auto-x padding-x-small"]
      341 SETTABLEKS                       R23 R22 K56 ["tag"]
      343 SETTABLEKS                       R17 R22 K57 ["backgroundStyle"]
      345 DUPTABLE                         R23 K62 [{"StatusIcon", "Label"}]
      346 GETUPVAL                         R24 9
      347 GETTABLEKS                       R24 R24 K54 ["createElement"]
      349 GETUPVAL                         R25 11
      350 DUPTABLE                         R26 K67 [{"name", "size", "style", "variant", "LayoutOrder"}]
      351 SETTABLEKS                       R15 R26 K63 ["name"]
      353 GETUPVAL                         R27 12
      354 GETTABLEKS                       R27 R27 K68 ["Small"]
      356 SETTABLEKS                       R27 R26 K64 ["size"]
      358 SETTABLEKS                       R16 R26 K65 ["style"]
      360 LOADK                            R27 K69 ["Filled"]
      361 SETTABLEKS                       R27 R26 K66 ["variant"]
      363 LOADN                            R27 1
      364 SETTABLEKS                       R27 R26 K55 ["LayoutOrder"]
      366 CALL                             R24 2 1
      367 SETTABLEKS                       R24 R23 K60 ["StatusIcon"]
      369 GETUPVAL                         R24 9
      370 GETTABLEKS                       R24 R24 K54 ["createElement"]
      372 GETUPVAL                         R25 13
      373 DUPTABLE                         R26 K72 [{"Text", "textStyle", "tag", "LayoutOrder"}]
      374 SETTABLEKS                       R14 R26 K70 ["Text"]
      376 SETTABLEKS                       R18 R26 K71 ["textStyle"]
      378 LOADK                            R27 K73 ["auto-xy text-label-small text-align-x-left"]
      379 SETTABLEKS                       R27 R26 K56 ["tag"]
      381 LOADN                            R27 2
      382 SETTABLEKS                       R27 R26 K55 ["LayoutOrder"]
      384 CALL                             R24 2 1
      385 SETTABLEKS                       R24 R23 K61 ["Label"]
      387 CALL                             R20 3 1
      388 JUMPIFEQKNIL                     R19 ; [+23]
      390 GETUPVAL                         R21 9
      391 GETTABLEKS                       R21 R21 K54 ["createElement"]
      393 GETUPVAL                         R22 14
      394 DUPTABLE                         R23 K77 [{"title", "text", "side", "LayoutOrder"}]
      395 LOADK                            R24 K78 [""]
      396 SETTABLEKS                       R24 R23 K74 ["title"]
      398 SETTABLEKS                       R19 R23 K75 ["text"]
      400 GETUPVAL                         R24 15
      401 GETTABLEKS                       R24 R24 K79 ["Bottom"]
      403 SETTABLEKS                       R24 R23 K76 ["side"]
      405 GETTABLEKS                       R24 R0 K55 ["LayoutOrder"]
      407 SETTABLEKS                       R24 R23 K55 ["LayoutOrder"]
      409 MOVE                             R24 R20
      410 CALL                             R21 3 -1
      411 RETURN                           R21 -1
      412 RETURN                           R20 1

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
       52 GETTABLEKS                       R11 R4 K21 ["View"]
       54 GETTABLEKS                       R12 R4 K22 ["Hooks"]
       56 GETTABLEKS                       R12 R12 K23 ["useTokens"]
       58 GETIMPORT                        R13 K5 [require]
       60 GETTABLEKS                       R14 R0 K11 ["Src"]
       62 GETTABLEKS                       R14 R14 K12 ["Util"]
       64 GETTABLEKS                       R14 R14 K24 ["CoreContentStatusConstants"]
       66 CALL                             R13 1 1
       67 GETTABLEKS                       R14 R13 K25 ["NEEDS_ATTENTION_AGE_THRESHOLD"]
       69 GETTABLEKS                       R15 R13 K26 ["AGE_BRACKET_9"]
       71 GETIMPORT                        R16 K5 [require]
       73 GETTABLEKS                       R17 R0 K11 ["Src"]
       75 GETTABLEKS                       R17 R17 K27 ["Constants"]
       77 GETTABLEKS                       R17 R17 K28 ["Audience"]
       79 CALL                             R16 1 1
       80 GETIMPORT                        R17 K5 [require]
       82 GETTABLEKS                       R18 R0 K11 ["Src"]
       84 GETTABLEKS                       R18 R18 K12 ["Util"]
       86 GETTABLEKS                       R18 R18 K29 ["AudienceUtils"]
       88 CALL                             R17 1 1
       89 GETTABLEKS                       R18 R17 K30 ["audienceIsPrivate"]
       91 GETTABLEKS                       R19 R17 K31 ["audienceIncludes"]
       93 GETIMPORT                        R20 K5 [require]
       95 GETTABLEKS                       R21 R0 K11 ["Src"]
       97 GETTABLEKS                       R21 R21 K32 ["SharedFlags"]
       99 GETTABLEKS                       R21 R21 K33 ["getFFlagLuaStartPageAudiencesReplacement"]
      101 CALL                             R20 1 1
      102 CALL                             R20 0 1
      103 DUPCLOSURE                       R21 K34 [PROTO_0]
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R20
      107 CAPTURE                          VAL R18
      108 CAPTURE                          VAL R19
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R15
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R10
      120 RETURN                           R21 1
