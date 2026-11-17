PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["PrivacyType"]
        6 GETTABLEKS                       R3 R0 K2 ["ContentMaturity"]
        8 GETTABLEKS                       R4 R0 K3 ["IsFriendsOnly"]
       10 GETTABLEKS                       R5 R0 K4 ["CreatorType"]
       12 LOADNIL                          R6
       13 LOADNIL                          R7
       14 GETTABLEKS                       R8 R0 K5 ["Audiences"]
       16 JUMPIFEQKNIL                     R8 ; [+18]
       18 GETTABLEKS                       R8 R0 K5 ["Audiences"]
       20 GETUPVAL                         R9 1
       21 MOVE                             R10 R8
       22 CALL                             R9 1 1
       23 NOT                              R6 R9
       24 MOVE                             R9 R6
       25 JUMPIFNOT                        R9 ; [+7]
       26 GETUPVAL                         R10 2
       27 MOVE                             R11 R8
       28 GETUPVAL                         R12 3
       29 GETTABLEKS                       R12 R12 K6 ["Public"]
       31 CALL                             R10 2 1
       32 NOT                              R9 R10
       33 MOVE                             R7 R9
       34 JUMP                             ; [+5]
       35 JUMPIFEQKS                       R2 K6 ["Public"] ; [+2]
       37 LOADB                            R6 0 +1
       38 LOADB                            R6 1
       39 MOVE                             R7 R4
       40 MOVE                             R8 R6
       41 JUMPIFNOT                        R8 ; [+4]
       42 JUMPIFEQKS                       R3 K7 ["unrated"] ; [+2]
       44 LOADB                            R8 0 +1
       45 LOADB                            R8 1
       46 GETTABLEKS                       R9 R0 K8 ["IsSequestered"]
       48 MOVE                             R10 R6
       49 JUMPIFNOT                        R10 ; [+8]
       50 NOT                              R10 R8
       51 JUMPIFNOT                        R10 ; [+6]
       52 GETTABLEKS                       R11 R0 K9 ["CoreContentSelectStatus"]
       54 JUMPIFEQKS                       R11 K10 ["Eligible"] ; [+2]
       56 LOADB                            R10 0 +1
       57 LOADB                            R10 1
       58 MOVE                             R11 R10
       59 JUMPIFNOT                        R11 ; [+13]
       60 LOADB                            R11 0
       61 GETTABLEKS                       R12 R0 K11 ["CoreContentReasons"]
       63 JUMPIFEQKNIL                     R12 ; [+9]
       65 GETTABLEKS                       R13 R0 K11 ["CoreContentReasons"]
       67 LENGTH                           R12 R13
       68 LOADN                            R13 0
       69 JUMPIFLT                         R13 R12 ; [+2]
       71 LOADB                            R11 0 +1
       72 LOADB                            R11 1
       73 GETTABLEKS                       R12 R0 K12 ["AgeRecommendation"]
       75 LOADNIL                          R13
       76 LOADNIL                          R14
       77 GETUPVAL                         R15 4
       78 GETTABLEKS                       R15 R15 K13 ["Neutral"]
       80 LOADNIL                          R16
       81 JUMPIF                           R6 ; [+10]
       82 LOADK                            R19 K14 ["Plugin"]
       83 LOADK                            R20 K15 ["PrivacyType.Private"]
       84 NAMECALL                         R17 R1 K16 ["getText"]
       86 CALL                             R17 3 1
       87 MOVE                             R13 R17
       88 GETUPVAL                         R17 5
       89 GETTABLEKS                       R14 R17 K17 ["LockClosed"]
       91 JUMP                             ; [+182]
       92 JUMPIFNOT                        R6 ; [+22]
       93 JUMPIF                           R8 ; [+1]
       94 JUMPIFNOT                        R9 ; [+20]
       95 LOADK                            R19 K14 ["Plugin"]
       96 LOADK                            R20 K18 ["PrivacyType.PubliclyUnavailable"]
       97 NAMECALL                         R17 R1 K16 ["getText"]
       99 CALL                             R17 3 1
      100 MOVE                             R13 R17
      101 GETUPVAL                         R17 5
      102 GETTABLEKS                       R14 R17 K19 ["GlobeDetailed"]
      104 JUMPIFNOT                        R8 ; [+6]
      105 LOADK                            R19 K14 ["Plugin"]
      106 LOADK                            R20 K20 ["Tooltip.PubliclyUnavailable"]
      107 NAMECALL                         R17 R1 K16 ["getText"]
      109 CALL                             R17 3 1
      110 MOVE                             R16 R17
      111 GETUPVAL                         R17 4
      112 GETTABLEKS                       R15 R17 K21 ["Alert"]
      114 JUMP                             ; [+159]
      115 JUMPIFNOT                        R6 ; [+16]
      116 GETTABLEKS                       R17 R0 K22 ["IsDiscoveryBlocked"]
      118 JUMPIFNOT                        R17 ; [+13]
      119 LOADK                            R19 K14 ["Plugin"]
      120 LOADK                            R20 K23 ["PrivacyType.NeedsAttention"]
      121 NAMECALL                         R17 R1 K16 ["getText"]
      123 CALL                             R17 3 1
      124 MOVE                             R13 R17
      125 GETUPVAL                         R17 5
      126 GETTABLEKS                       R14 R17 K24 ["TriangleExclamation"]
      128 GETUPVAL                         R17 4
      129 GETTABLEKS                       R15 R17 K25 ["Warning"]
      131 JUMP                             ; [+142]
      132 JUMPIFNOT                        R6 ; [+20]
      133 JUMPIFEQKNIL                     R12 ; [+4]
      135 GETUPVAL                         R17 6
      136 JUMPIFNOTLT                      R12 R17 ; [+16]
      138 JUMPIFNOT                        R10 ; [+14]
      139 JUMPIFNOT                        R11 ; [+13]
      140 LOADK                            R19 K14 ["Plugin"]
      141 LOADK                            R20 K23 ["PrivacyType.NeedsAttention"]
      142 NAMECALL                         R17 R1 K16 ["getText"]
      144 CALL                             R17 3 1
      145 MOVE                             R13 R17
      146 GETUPVAL                         R17 5
      147 GETTABLEKS                       R14 R17 K24 ["TriangleExclamation"]
      149 GETUPVAL                         R17 4
      150 GETTABLEKS                       R15 R17 K25 ["Warning"]
      152 JUMP                             ; [+121]
      153 JUMPIFNOT                        R6 ; [+59]
      154 JUMPIFNOT                        R7 ; [+58]
      155 LOADK                            R19 K14 ["Plugin"]
      156 LOADK                            R20 K26 ["PrivacyType.Limited"]
      157 NAMECALL                         R17 R1 K16 ["getText"]
      159 CALL                             R17 3 1
      160 MOVE                             R13 R17
      161 GETUPVAL                         R17 5
      162 GETTABLEKS                       R14 R17 K27 ["PersonWithSmallerPerson"]
      164 JUMPIFEQKS                       R5 K28 ["Group"] ; [+2]
      166 LOADB                            R17 0 +1
      167 LOADB                            R17 1
      168 LOADNIL                          R18
      169 GETTABLEKS                       R19 R0 K5 ["Audiences"]
      171 JUMPIFEQKNIL                     R19 ; [+30]
      173 GETTABLEKS                       R19 R0 K5 ["Audiences"]
      175 GETUPVAL                         R20 2
      176 MOVE                             R21 R19
      177 GETUPVAL                         R22 3
      178 GETTABLEKS                       R22 R22 K29 ["PlayTesters"]
      180 CALL                             R20 2 1
      181 GETUPVAL                         R21 2
      182 MOVE                             R22 R19
      183 GETUPVAL                         R23 3
      184 GETTABLEKS                       R23 R23 K30 ["Friends"]
      186 CALL                             R21 2 1
      187 JUMPIFNOT                        R20 ; [+6]
      188 JUMPIFNOT                        R21 ; [+5]
      189 JUMPIFNOT                        R17 ; [+2]
      190 LOADK                            R18 K31 ["Tooltip.LimitedPlaytestersAndCommunity"]
      191 JUMP                             ; [+14]
      192 LOADK                            R18 K32 ["Tooltip.LimitedPlaytestersAndFriends"]
      193 JUMP                             ; [+12]
      194 JUMPIFNOT                        R20 ; [+2]
      195 LOADK                            R18 K33 ["Tooltip.LimitedPlaytesters"]
      196 JUMP                             ; [+9]
      197 JUMPIFNOT                        R17 ; [+2]
      198 LOADK                            R18 K34 ["Tooltip.LimitedCommunity"]
      199 JUMP                             ; [+6]
      200 LOADK                            R18 K35 ["Tooltip.LimitedFriends"]
      201 JUMP                             ; [+4]
      202 JUMPIFNOT                        R17 ; [+2]
      203 LOADK                            R18 K34 ["Tooltip.LimitedCommunity"]
      204 JUMP                             ; [+1]
      205 LOADK                            R18 K35 ["Tooltip.LimitedFriends"]
      206 LOADK                            R21 K14 ["Plugin"]
      207 MOVE                             R22 R18
      208 NAMECALL                         R19 R1 K16 ["getText"]
      210 CALL                             R19 3 1
      211 MOVE                             R16 R19
      212 JUMP                             ; [+61]
      213 LOADNIL                          R17
      214 JUMPIFNOT                        R10 ; [+6]
      215 JUMPIFEQKNIL                     R12 ; [+3]
      217 MOVE                             R17 R12
      218 JUMP                             ; [+14]
      219 LOADN                            R17 0
      220 JUMP                             ; [+12]
      221 GETUPVAL                         R19 6
      222 JUMPIFEQKNIL                     R12 ; [+3]
      224 MOVE                             R20 R12
      225 JUMP                             ; [+1]
      226 LOADN                            R20 0
      227 FASTCALL2                        MATH_MAX R19 R20 ; [+3]
      229 GETIMPORT                        R18 K38 [math.max]
      231 CALL                             R18 2 1
      232 MOVE                             R17 R18
      233 LOADNIL                          R18
      234 GETUPVAL                         R19 6
      235 JUMPIFNOTLE                      R19 R17 ; [+8]
      237 GETUPVAL                         R20 6
      238 FASTCALL1                        TOSTRING R20 ; [+2]
      239 GETIMPORT                        R19 K40 [tostring]
      241 CALL                             R19 1 1
      242 MOVE                             R18 R19
      243 JUMP                             ; [+9]
      244 GETUPVAL                         R19 7
      245 JUMPIFNOTLE                      R19 R17 ; [+7]
      247 GETUPVAL                         R20 7
      248 FASTCALL1                        TOSTRING R20 ; [+2]
      249 GETIMPORT                        R19 K40 [tostring]
      251 CALL                             R19 1 1
      252 MOVE                             R18 R19
      253 JUMPIFEQKNIL                     R18 ; [+11]
      255 LOADK                            R21 K14 ["Plugin"]
      256 LOADK                            R22 K41 ["PrivacyType.PublicAgeGated"]
      257 DUPTABLE                         R23 K43 [{"minAge"}]
      258 SETTABLEKS                       R18 R23 K42 ["minAge"]
      260 NAMECALL                         R19 R1 K16 ["getText"]
      262 CALL                             R19 4 1
      263 MOVE                             R13 R19
      264 JUMP                             ; [+6]
      265 LOADK                            R21 K14 ["Plugin"]
      266 LOADK                            R22 K44 ["PrivacyType.PublicAllAges"]
      267 NAMECALL                         R19 R1 K16 ["getText"]
      269 CALL                             R19 3 1
      270 MOVE                             R13 R19
      271 GETUPVAL                         R19 5
      272 GETTABLEKS                       R14 R19 K19 ["GlobeDetailed"]
      274 GETUPVAL                         R17 8
      275 GETTABLEKS                       R17 R17 K45 ["createElement"]
      277 GETUPVAL                         R18 9
      278 DUPTABLE                         R19 K52 [{"icon", "text", "variant", "shape", "size", "LayoutOrder"}]
      279 DUPTABLE                         R20 K56 [{"name", "position", "iconVariant"}]
      280 SETTABLEKS                       R14 R20 K53 ["name"]
      282 GETUPVAL                         R21 10
      283 GETTABLEKS                       R21 R21 K57 ["Left"]
      285 SETTABLEKS                       R21 R20 K54 ["position"]
      287 GETUPVAL                         R21 11
      288 GETTABLEKS                       R21 R21 K58 ["Filled"]
      290 SETTABLEKS                       R21 R20 K55 ["iconVariant"]
      292 SETTABLEKS                       R20 R19 K46 ["icon"]
      294 SETTABLEKS                       R13 R19 K47 ["text"]
      296 SETTABLEKS                       R15 R19 K48 ["variant"]
      298 GETUPVAL                         R20 12
      299 GETTABLEKS                       R20 R20 K59 ["Pill"]
      301 SETTABLEKS                       R20 R19 K49 ["shape"]
      303 GETUPVAL                         R20 13
      304 GETTABLEKS                       R20 R20 K60 ["Small"]
      306 SETTABLEKS                       R20 R19 K50 ["size"]
      308 GETTABLEKS                       R20 R0 K51 ["LayoutOrder"]
      310 SETTABLEKS                       R20 R19 K51 ["LayoutOrder"]
      312 CALL                             R17 2 1
      313 JUMPIFEQKNIL                     R16 ; [+20]
      315 GETUPVAL                         R18 8
      316 GETTABLEKS                       R18 R18 K45 ["createElement"]
      318 GETUPVAL                         R19 14
      319 DUPTABLE                         R20 K64 [{["title"] = "", ["text"], ["side"], ["LayoutOrder"]}]
      320 SETTABLEKS                       R16 R20 K47 ["text"]
      322 GETUPVAL                         R21 15
      323 GETTABLEKS                       R21 R21 K65 ["Top"]
      325 SETTABLEKS                       R21 R20 K63 ["side"]
      327 GETTABLEKS                       R21 R0 K51 ["LayoutOrder"]
      329 SETTABLEKS                       R21 R20 K51 ["LayoutOrder"]
      331 MOVE                             R21 R17
      332 CALL                             R18 3 -1
      333 RETURN                           R18 -1
      334 RETURN                           R17 1

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
       34 GETTABLEKS                       R5 R4 K14 ["Enums"]
       36 GETTABLEKS                       R5 R5 K15 ["IconName"]
       38 GETTABLEKS                       R6 R4 K16 ["Tooltip"]
       40 GETTABLEKS                       R7 R4 K14 ["Enums"]
       42 GETTABLEKS                       R7 R7 K17 ["PopoverSide"]
       44 GETTABLEKS                       R8 R4 K14 ["Enums"]
       46 GETTABLEKS                       R8 R8 K18 ["IconPosition"]
       48 GETTABLEKS                       R9 R4 K14 ["Enums"]
       50 GETTABLEKS                       R9 R9 K19 ["IconVariant"]
       52 GETTABLEKS                       R10 R4 K14 ["Enums"]
       54 GETTABLEKS                       R10 R10 K20 ["BadgeVariant"]
       56 GETTABLEKS                       R11 R4 K14 ["Enums"]
       58 GETTABLEKS                       R11 R11 K21 ["BadgeShape"]
       60 GETTABLEKS                       R12 R4 K14 ["Enums"]
       62 GETTABLEKS                       R12 R12 K22 ["BadgeSize"]
       64 GETTABLEKS                       R13 R4 K23 ["Badge"]
       66 GETIMPORT                        R14 K5 [require]
       68 GETTABLEKS                       R15 R0 K11 ["Src"]
       70 GETTABLEKS                       R15 R15 K12 ["Util"]
       72 GETTABLEKS                       R15 R15 K24 ["CoreContentStatusConstants"]
       74 CALL                             R14 1 1
       75 GETTABLEKS                       R15 R14 K25 ["NEEDS_ATTENTION_AGE_THRESHOLD"]
       77 GETTABLEKS                       R16 R14 K26 ["AGE_BRACKET_9"]
       79 GETIMPORT                        R17 K5 [require]
       81 GETTABLEKS                       R18 R0 K11 ["Src"]
       83 GETTABLEKS                       R18 R18 K27 ["Constants"]
       85 GETTABLEKS                       R18 R18 K28 ["Audience"]
       87 CALL                             R17 1 1
       88 GETIMPORT                        R18 K5 [require]
       90 GETTABLEKS                       R19 R0 K11 ["Src"]
       92 GETTABLEKS                       R19 R19 K12 ["Util"]
       94 GETTABLEKS                       R19 R19 K29 ["AudienceUtils"]
       96 CALL                             R18 1 1
       97 GETTABLEKS                       R19 R18 K30 ["audienceIsPrivate"]
       99 GETTABLEKS                       R20 R18 K31 ["audienceIncludes"]
      101 DUPCLOSURE                       R21 K32 [PROTO_0]
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R19
      104 CAPTURE                          VAL R20
      105 CAPTURE                          VAL R17
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R7
      118 RETURN                           R21 1
