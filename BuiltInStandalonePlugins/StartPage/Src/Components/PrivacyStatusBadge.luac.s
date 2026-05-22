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
      111 JUMP                             ; [+222]
      112 JUMPIFNOT                        R7 ; [+30]
      113 JUMPIF                           R9 ; [+1]
      114 JUMPIFNOT                        R10 ; [+28]
      115 LOADK                            R22 K18 ["Plugin"]
      116 LOADK                            R23 K23 ["PrivacyType.Unplayable"]
      117 NAMECALL                         R20 R1 K20 ["getText"]
      119 CALL                             R20 3 1
      120 MOVE                             R14 R20
      121 GETUPVAL                         R20 6
      122 GETTABLEKS                       R15 R20 K24 ["CircleX"]
      124 GETTABLEKS                       R20 R2 K13 ["Color"]
      126 GETTABLEKS                       R20 R20 K16 ["Content"]
      128 GETTABLEKS                       R16 R20 K22 ["Muted"]
      130 GETTABLEKS                       R20 R2 K13 ["Color"]
      132 GETTABLEKS                       R20 R20 K25 ["System"]
      134 GETTABLEKS                       R17 R20 K26 ["Alert"]
      136 GETTABLEKS                       R20 R2 K27 ["DarkMode"]
      138 GETTABLEKS                       R20 R20 K16 ["Content"]
      140 GETTABLEKS                       R18 R20 K17 ["Emphasis"]
      142 JUMP                             ; [+191]
      143 JUMPIFNOT                        R7 ; [+19]
      144 GETTABLEKS                       R20 R0 K28 ["IsDiscoveryBlocked"]
      146 JUMPIFNOT                        R20 ; [+16]
      147 LOADK                            R22 K18 ["Plugin"]
      148 LOADK                            R23 K29 ["PrivacyType.NeedsAttention"]
      149 NAMECALL                         R20 R1 K20 ["getText"]
      151 CALL                             R20 3 1
      152 MOVE                             R14 R20
      153 GETUPVAL                         R20 6
      154 GETTABLEKS                       R15 R20 K30 ["TriangleExclamation"]
      156 GETTABLEKS                       R20 R2 K13 ["Color"]
      158 GETTABLEKS                       R20 R20 K25 ["System"]
      160 GETTABLEKS                       R16 R20 K31 ["Warning"]
      162 JUMP                             ; [+171]
      163 JUMPIFNOT                        R7 ; [+35]
      164 JUMPIFEQKNIL                     R13 ; [+4]
      166 GETUPVAL                         R20 7
      167 JUMPIFNOTLT                      R13 R20 ; [+31]
      169 JUMPIFNOT                        R11 ; [+29]
      170 JUMPIFNOT                        R12 ; [+28]
      171 LOADK                            R22 K18 ["Plugin"]
      172 LOADK                            R23 K29 ["PrivacyType.NeedsAttention"]
      173 NAMECALL                         R20 R1 K20 ["getText"]
      175 CALL                             R20 3 1
      176 MOVE                             R14 R20
      177 GETUPVAL                         R20 6
      178 GETTABLEKS                       R15 R20 K30 ["TriangleExclamation"]
      180 GETTABLEKS                       R20 R2 K13 ["Color"]
      182 GETTABLEKS                       R20 R20 K16 ["Content"]
      184 GETTABLEKS                       R16 R20 K22 ["Muted"]
      186 GETTABLEKS                       R20 R2 K13 ["Color"]
      188 GETTABLEKS                       R20 R20 K25 ["System"]
      190 GETTABLEKS                       R17 R20 K31 ["Warning"]
      192 GETTABLEKS                       R20 R2 K32 ["LightMode"]
      194 GETTABLEKS                       R20 R20 K16 ["Content"]
      196 GETTABLEKS                       R18 R20 K17 ["Emphasis"]
      198 JUMP                             ; [+135]
      199 JUMPIFNOT                        R7 ; [+67]
      200 JUMPIFNOT                        R8 ; [+66]
      201 LOADK                            R22 K18 ["Plugin"]
      202 LOADK                            R23 K33 ["PrivacyType.Limited"]
      203 NAMECALL                         R20 R1 K20 ["getText"]
      205 CALL                             R20 3 1
      206 MOVE                             R14 R20
      207 GETUPVAL                         R20 6
      208 GETTABLEKS                       R15 R20 K34 ["TwoPeople"]
      210 GETTABLEKS                       R20 R2 K13 ["Color"]
      212 GETTABLEKS                       R20 R20 K25 ["System"]
      214 GETTABLEKS                       R16 R20 K35 ["Success"]
      216 JUMPIFEQKS                       R6 K36 ["Group"] ; [+2]
      218 LOADB                            R20 0 +1
      219 LOADB                            R20 1
      220 LOADNIL                          R21
      221 GETUPVAL                         R22 2
      222 JUMPIFNOT                        R22 ; [+33]
      223 GETTABLEKS                       R22 R0 K5 ["Audiences"]
      225 JUMPIFEQKNIL                     R22 ; [+30]
      227 GETTABLEKS                       R22 R0 K5 ["Audiences"]
      229 GETUPVAL                         R23 4
      230 MOVE                             R24 R22
      231 GETUPVAL                         R25 5
      232 GETTABLEKS                       R25 R25 K37 ["PlayTesters"]
      234 CALL                             R23 2 1
      235 GETUPVAL                         R24 4
      236 MOVE                             R25 R22
      237 GETUPVAL                         R26 5
      238 GETTABLEKS                       R26 R26 K38 ["Friends"]
      240 CALL                             R24 2 1
      241 JUMPIFNOT                        R23 ; [+6]
      242 JUMPIFNOT                        R24 ; [+5]
      243 JUMPIFNOT                        R20 ; [+2]
      244 LOADK                            R21 K39 ["Tooltip.LimitedPlaytestersAndCommunity"]
      245 JUMP                             ; [+14]
      246 LOADK                            R21 K40 ["Tooltip.LimitedPlaytestersAndFriends"]
      247 JUMP                             ; [+12]
      248 JUMPIFNOT                        R23 ; [+2]
      249 LOADK                            R21 K41 ["Tooltip.LimitedPlaytesters"]
      250 JUMP                             ; [+9]
      251 JUMPIFNOT                        R20 ; [+2]
      252 LOADK                            R21 K42 ["Tooltip.LimitedCommunity"]
      253 JUMP                             ; [+6]
      254 LOADK                            R21 K43 ["Tooltip.LimitedFriends"]
      255 JUMP                             ; [+4]
      256 JUMPIFNOT                        R20 ; [+2]
      257 LOADK                            R21 K42 ["Tooltip.LimitedCommunity"]
      258 JUMP                             ; [+1]
      259 LOADK                            R21 K43 ["Tooltip.LimitedFriends"]
      260 LOADK                            R24 K18 ["Plugin"]
      261 MOVE                             R25 R21
      262 NAMECALL                         R22 R1 K20 ["getText"]
      264 CALL                             R22 3 1
      265 MOVE                             R19 R22
      266 JUMP                             ; [+67]
      267 LOADNIL                          R20
      268 JUMPIFNOT                        R11 ; [+6]
      269 JUMPIFEQKNIL                     R13 ; [+3]
      271 MOVE                             R20 R13
      272 JUMP                             ; [+14]
      273 LOADN                            R20 0
      274 JUMP                             ; [+12]
      275 GETUPVAL                         R22 7
      276 JUMPIFEQKNIL                     R13 ; [+3]
      278 MOVE                             R23 R13
      279 JUMP                             ; [+1]
      280 LOADN                            R23 0
      281 FASTCALL2                        MATH_MAX R22 R23 ; [+3]
      283 GETIMPORT                        R21 K46 [math.max]
      285 CALL                             R21 2 1
      286 MOVE                             R20 R21
      287 LOADNIL                          R21
      288 GETUPVAL                         R22 7
      289 JUMPIFNOTLE                      R22 R20 ; [+8]
      291 GETUPVAL                         R23 7
      292 FASTCALL1                        TOSTRING R23 ; [+2]
      293 GETIMPORT                        R22 K48 [tostring]
      295 CALL                             R22 1 1
      296 MOVE                             R21 R22
      297 JUMP                             ; [+9]
      298 GETUPVAL                         R22 8
      299 JUMPIFNOTLE                      R22 R20 ; [+7]
      301 GETUPVAL                         R23 8
      302 FASTCALL1                        TOSTRING R23 ; [+2]
      303 GETIMPORT                        R22 K48 [tostring]
      305 CALL                             R22 1 1
      306 MOVE                             R21 R22
      307 JUMPIFEQKNIL                     R21 ; [+11]
      309 LOADK                            R24 K18 ["Plugin"]
      310 LOADK                            R25 K49 ["PrivacyType.PublicAgeGated"]
      311 DUPTABLE                         R26 K51 [{"minAge"}]
      312 SETTABLEKS                       R21 R26 K50 ["minAge"]
      314 NAMECALL                         R22 R1 K20 ["getText"]
      316 CALL                             R22 4 1
      317 MOVE                             R14 R22
      318 JUMP                             ; [+6]
      319 LOADK                            R24 K18 ["Plugin"]
      320 LOADK                            R25 K52 ["PrivacyType.PublicAllAges"]
      321 NAMECALL                         R22 R1 K20 ["getText"]
      323 CALL                             R22 3 1
      324 MOVE                             R14 R22
      325 GETUPVAL                         R22 6
      326 GETTABLEKS                       R15 R22 K53 ["GlobeDetailed"]
      328 GETTABLEKS                       R22 R2 K13 ["Color"]
      330 GETTABLEKS                       R22 R22 K25 ["System"]
      332 GETTABLEKS                       R16 R22 K35 ["Success"]
      334 GETUPVAL                         R20 9
      335 GETTABLEKS                       R20 R20 K54 ["createElement"]
      337 GETUPVAL                         R21 10
      338 DUPTABLE                         R22 K58 [{"LayoutOrder", "tag", "backgroundStyle"}]
      339 GETTABLEKS                       R23 R0 K55 ["LayoutOrder"]
      341 SETTABLEKS                       R23 R22 K55 ["LayoutOrder"]
      343 LOADK                            R23 K59 ["row align-x-center align-y-center gap-xsmall radius-circle size-0-600 auto-x padding-x-small"]
      344 SETTABLEKS                       R23 R22 K56 ["tag"]
      346 SETTABLEKS                       R17 R22 K57 ["backgroundStyle"]
      348 DUPTABLE                         R23 K62 [{"StatusIcon", "Label"}]
      349 GETUPVAL                         R24 9
      350 GETTABLEKS                       R24 R24 K54 ["createElement"]
      352 GETUPVAL                         R25 11
      353 DUPTABLE                         R26 K67 [{"name", "size", "style", "variant", "LayoutOrder"}]
      354 SETTABLEKS                       R15 R26 K63 ["name"]
      356 GETUPVAL                         R27 12
      357 GETTABLEKS                       R27 R27 K68 ["Small"]
      359 SETTABLEKS                       R27 R26 K64 ["size"]
      361 SETTABLEKS                       R16 R26 K65 ["style"]
      363 LOADK                            R27 K69 ["Filled"]
      364 SETTABLEKS                       R27 R26 K66 ["variant"]
      366 LOADN                            R27 1
      367 SETTABLEKS                       R27 R26 K55 ["LayoutOrder"]
      369 CALL                             R24 2 1
      370 SETTABLEKS                       R24 R23 K60 ["StatusIcon"]
      372 GETUPVAL                         R24 9
      373 GETTABLEKS                       R24 R24 K54 ["createElement"]
      375 GETUPVAL                         R25 13
      376 DUPTABLE                         R26 K72 [{"Text", "textStyle", "tag", "LayoutOrder"}]
      377 SETTABLEKS                       R14 R26 K70 ["Text"]
      379 SETTABLEKS                       R18 R26 K71 ["textStyle"]
      381 LOADK                            R27 K73 ["auto-xy text-label-small text-align-x-left"]
      382 SETTABLEKS                       R27 R26 K56 ["tag"]
      384 LOADN                            R27 2
      385 SETTABLEKS                       R27 R26 K55 ["LayoutOrder"]
      387 CALL                             R24 2 1
      388 SETTABLEKS                       R24 R23 K61 ["Label"]
      390 CALL                             R20 3 1
      391 JUMPIFEQKNIL                     R19 ; [+23]
      393 GETUPVAL                         R21 9
      394 GETTABLEKS                       R21 R21 K54 ["createElement"]
      396 GETUPVAL                         R22 14
      397 DUPTABLE                         R23 K77 [{"title", "text", "side", "LayoutOrder"}]
      398 LOADK                            R24 K78 [""]
      399 SETTABLEKS                       R24 R23 K74 ["title"]
      401 SETTABLEKS                       R19 R23 K75 ["text"]
      403 GETUPVAL                         R24 15
      404 GETTABLEKS                       R24 R24 K79 ["Bottom"]
      406 SETTABLEKS                       R24 R23 K76 ["side"]
      408 GETTABLEKS                       R24 R0 K55 ["LayoutOrder"]
      410 SETTABLEKS                       R24 R23 K55 ["LayoutOrder"]
      412 MOVE                             R24 R20
      413 CALL                             R21 3 -1
      414 RETURN                           R21 -1
      415 RETURN                           R20 1

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
