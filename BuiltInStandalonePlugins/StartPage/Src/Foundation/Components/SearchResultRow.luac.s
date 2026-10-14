PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnClick"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 CALL                             R3 0 1
        8 GETTABLEKS                       R4 R0 K1 ["Cell"]
       10 GETTABLEKS                       R7 R4 K2 ["IsPlaceholder"]
       12 NOT                              R6 R7
       13 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       15 LOADK                            R7 K3 ["Cell cannot be a placeholder here"]
       16 GETIMPORT                        R5 K5 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R5 3
       20 JUMPIFNOT                        R5 ; [+8]
       21 GETUPVAL                         R6 4
       22 GETTABLEKS                       R7 R4 K6 ["ReachStatus"]
       24 CALL                             R6 1 1
       25 JUMPIFNOTEQKNIL                  R6 ; [+2]
       27 LOADB                            R5 0 +1
       28 LOADB                            R5 1
       29 LOADNIL                          R6
       30 GETTABLEKS                       R7 R4 K7 ["Updated"]
       32 JUMPIFNOT                        R7 ; [+6]
       33 GETUPVAL                         R7 5
       34 GETTABLEKS                       R8 R4 K7 ["Updated"]
       36 MOVE                             R9 R1
       37 CALL                             R7 2 1
       38 MOVE                             R6 R7
       39 LOADNIL                          R7
       40 GETTABLEKS                       R8 R4 K8 ["Created"]
       42 JUMPIFNOT                        R8 ; [+6]
       43 GETUPVAL                         R8 5
       44 GETTABLEKS                       R9 R4 K8 ["Created"]
       46 MOVE                             R10 R1
       47 CALL                             R8 2 1
       48 MOVE                             R7 R8
       49 LOADNIL                          R8
       50 GETTABLEKS                       R9 R4 K9 ["ImageUrl"]
       52 JUMPIFNOT                        R9 ; [+19]
       53 GETUPVAL                         R9 6
       54 GETTABLEKS                       R9 R9 K10 ["createElement"]
       56 GETUPVAL                         R10 7
       57 DUPTABLE                         R11 K16 [{["Image"], ["Size"], ["LayoutOrder"], ["tag"] = "align-x-right radius-small"}]
       58 GETTABLEKS                       R12 R4 K9 ["ImageUrl"]
       60 SETTABLEKS                       R12 R11 K11 ["Image"]
       62 GETUPVAL                         R12 8
       63 SETTABLEKS                       R12 R11 K12 ["Size"]
       65 MOVE                             R12 R2
       66 CALL                             R12 0 1
       67 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       69 CALL                             R9 2 1
       70 MOVE                             R8 R9
       71 JUMP                             ; [+45]
       72 GETTABLEKS                       R9 R4 K17 ["NoLoadableImage"]
       74 JUMPIFNOT                        R9 ; [+24]
       75 GETUPVAL                         R9 6
       76 GETTABLEKS                       R9 R9 K10 ["createElement"]
       78 GETUPVAL                         R10 9
       79 DUPTABLE                         R11 K19 [{["Size"], ["LayoutOrder"], ["tag"] = "align-x-center align-y-center radius-small bg-shift-200"}]
       80 GETUPVAL                         R12 8
       81 SETTABLEKS                       R12 R11 K12 ["Size"]
       83 MOVE                             R12 R2
       84 CALL                             R12 0 1
       85 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       87 GETUPVAL                         R12 6
       88 GETTABLEKS                       R12 R12 K10 ["createElement"]
       90 GETUPVAL                         R13 7
       91 DUPTABLE                         R14 K21 [{["Image"] = "rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/Placeholder.png", ["Size"]}]
       92 GETUPVAL                         R15 10
       93 SETTABLEKS                       R15 R14 K12 ["Size"]
       95 CALL                             R12 2 -1
       96 CALL                             R9 -1 1
       97 MOVE                             R8 R9
       98 JUMP                             ; [+18]
       99 GETUPVAL                         R9 6
      100 GETTABLEKS                       R9 R9 K10 ["createElement"]
      102 GETUPVAL                         R10 11
      103 GETTABLEKS                       R10 R10 K22 ["Component"]
      105 DUPTABLE                         R11 K24 [{"CornerRadius", "Size"}]
      106 GETTABLEKS                       R12 R3 K25 ["Radius"]
      108 GETTABLEKS                       R12 R12 K26 ["Small"]
      110 SETTABLEKS                       R12 R11 K23 ["CornerRadius"]
      112 GETUPVAL                         R12 8
      113 SETTABLEKS                       R12 R11 K12 ["Size"]
      115 CALL                             R9 2 1
      116 MOVE                             R8 R9
      117 GETUPVAL                         R9 6
      118 GETTABLEKS                       R9 R9 K10 ["createElement"]
      120 GETUPVAL                         R10 12
      121 DUPTABLE                         R11 K32 [{["Position"], ["Size"], ["onActivated"], ["testId"] = "--start-page-SearchResultRow", ["tag"] = "row align-y-center gap-medium padding-x-large padding-y-medium"}]
      122 GETTABLEKS                       R12 R0 K27 ["Position"]
      124 SETTABLEKS                       R12 R11 K27 ["Position"]
      126 GETTABLEKS                       R12 R0 K12 ["Size"]
      128 SETTABLEKS                       R12 R11 K12 ["Size"]
      130 NEWCLOSURE                       R12 P0
      131 CAPTURE                          VAL R0
      132 CAPTURE                          VAL R4
      133 SETTABLEKS                       R12 R11 K28 ["onActivated"]
      135 DUPTABLE                         R12 K36 [{"PreviewImage", "LeftTextbox", "RightTextbox"}]
      136 SETTABLEKS                       R8 R12 K33 ["PreviewImage"]
      138 GETUPVAL                         R13 6
      139 GETTABLEKS                       R13 R13 K10 ["createElement"]
      141 GETUPVAL                         R14 12
      142 DUPTABLE                         R15 K38 [{["LayoutOrder"], ["tag"] = "col fill gap-small size-0-full auto-x"}]
      143 MOVE                             R16 R2
      144 CALL                             R16 0 1
      145 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      147 DUPTABLE                         R16 K42 [{"NameAndAgeRec", "UpdatedDate", "Description"}]
      148 GETUPVAL                         R17 6
      149 GETTABLEKS                       R17 R17 K10 ["createElement"]
      151 GETUPVAL                         R18 12
      152 DUPTABLE                         R19 K43 [{"LayoutOrder", "tag"}]
      153 MOVE                             R20 R2
      154 CALL                             R20 0 1
      155 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      157 GETUPVAL                         R21 13
      158 JUMPIFNOT                        R21 ; [+2]
      159 LOADK                            R20 K44 ["row align-y-center gap-xsmall auto-xy"]
      160 JUMP                             ; [+1]
      161 LOADK                            R20 K45 ["row gap-xsmall auto-xy"]
      162 SETTABLEKS                       R20 R19 K14 ["tag"]
      164 DUPTABLE                         R20 K48 [{"Name", "PrivacyOrAgeBadge"}]
      165 GETUPVAL                         R21 6
      166 GETTABLEKS                       R21 R21 K10 ["createElement"]
      168 GETUPVAL                         R22 14
      169 DUPTABLE                         R23 K51 [{["LayoutOrder"], ["Text"], ["tag"] = "fill auto-xy text-title-medium text-align-x-left text-truncate-split"}]
      170 MOVE                             R24 R2
      171 CALL                             R24 0 1
      172 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      174 GETTABLEKS                       R24 R4 K46 ["Name"]
      176 SETTABLEKS                       R24 R23 K49 ["Text"]
      178 CALL                             R21 2 1
      179 SETTABLEKS                       R21 R20 K46 ["Name"]
      181 JUMPIFNOT                        R5 ; [+15]
      182 GETUPVAL                         R21 6
      183 GETTABLEKS                       R21 R21 K10 ["createElement"]
      185 GETUPVAL                         R22 15
      186 DUPTABLE                         R23 K52 [{"LayoutOrder", "ReachStatus"}]
      187 MOVE                             R24 R2
      188 CALL                             R24 0 1
      189 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      191 GETTABLEKS                       R24 R4 K6 ["ReachStatus"]
      193 SETTABLEKS                       R24 R23 K6 ["ReachStatus"]
      195 CALL                             R21 2 1
      196 JUMP                             ; [+109]
      197 GETUPVAL                         R22 13
      198 JUMPIFNOT                        R22 ; [+71]
      199 GETTABLEKS                       R22 R4 K53 ["PrivacyType"]
      201 JUMPIF                           R22 ; [+5]
      202 GETUPVAL                         R22 16
      203 JUMPIFNOT                        R22 ; [+66]
      204 GETTABLEKS                       R22 R4 K54 ["Audiences"]
      206 JUMPIFNOT                        R22 ; [+63]
      207 GETUPVAL                         R21 6
      208 GETTABLEKS                       R21 R21 K10 ["createElement"]
      210 GETUPVAL                         R22 17
      211 DUPTABLE                         R23 K64 [{"LayoutOrder", "PrivacyType", "Audiences", "ContentMaturity", "IsFriendsOnly", "CreatorType", "CoreContentSelectStatus", "CoreContentReasons", "IsBeta", "AgeRecommendation", "IsSequestered", "IsDiscoveryBlocked"}]
      212 MOVE                             R24 R2
      213 CALL                             R24 0 1
      214 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      216 GETTABLEKS                       R24 R4 K53 ["PrivacyType"]
      218 SETTABLEKS                       R24 R23 K53 ["PrivacyType"]
      220 GETUPVAL                         R25 16
      221 JUMPIFNOT                        R25 ; [+3]
      222 GETTABLEKS                       R24 R4 K54 ["Audiences"]
      224 JUMP                             ; [+1]
      225 LOADNIL                          R24
      226 SETTABLEKS                       R24 R23 K54 ["Audiences"]
      228 GETTABLEKS                       R24 R4 K55 ["ContentMaturity"]
      230 SETTABLEKS                       R24 R23 K55 ["ContentMaturity"]
      232 GETTABLEKS                       R24 R4 K56 ["IsFriendsOnly"]
      234 SETTABLEKS                       R24 R23 K56 ["IsFriendsOnly"]
      236 GETTABLEKS                       R24 R4 K57 ["CreatorType"]
      238 SETTABLEKS                       R24 R23 K57 ["CreatorType"]
      240 GETTABLEKS                       R24 R4 K58 ["CoreContentSelectStatus"]
      242 SETTABLEKS                       R24 R23 K58 ["CoreContentSelectStatus"]
      244 GETTABLEKS                       R24 R4 K59 ["CoreContentReasons"]
      246 SETTABLEKS                       R24 R23 K59 ["CoreContentReasons"]
      248 GETUPVAL                         R25 18
      249 JUMPIFNOT                        R25 ; [+2]
      250 LOADNIL                          R24
      251 JUMP                             ; [+2]
      252 GETTABLEKS                       R24 R4 K60 ["IsBeta"]
      254 SETTABLEKS                       R24 R23 K60 ["IsBeta"]
      256 GETTABLEKS                       R24 R4 K61 ["AgeRecommendation"]
      258 SETTABLEKS                       R24 R23 K61 ["AgeRecommendation"]
      260 GETTABLEKS                       R24 R4 K62 ["IsSequestered"]
      262 SETTABLEKS                       R24 R23 K62 ["IsSequestered"]
      264 GETTABLEKS                       R24 R4 K63 ["IsDiscoveryBlocked"]
      266 SETTABLEKS                       R24 R23 K63 ["IsDiscoveryBlocked"]
      268 CALL                             R21 2 1
      269 JUMP                             ; [+36]
      270 GETUPVAL                         R22 13
      271 JUMPIF                           R22 ; [+33]
      272 GETTABLEKS                       R22 R4 K61 ["AgeRecommendation"]
      274 JUMPIFNOT                        R22 ; [+30]
      275 GETTABLEKS                       R23 R4 K61 ["AgeRecommendation"]
      277 FASTCALL1                        TONUMBER R23 ; [+2]
      278 GETIMPORT                        R22 K66 [tonumber]
      280 CALL                             R22 1 1
      281 JUMPIFNOTEQKN                    R22 K67 [18] ; [+23]
      283 GETUPVAL                         R21 6
      284 GETTABLEKS                       R21 R21 K10 ["createElement"]
      286 GETUPVAL                         R22 19
      287 DUPTABLE                         R23 K70 [{"LayoutOrder", "text", "variant"}]
      288 MOVE                             R24 R2
      289 CALL                             R24 0 1
      290 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      292 GETTABLEKS                       R25 R4 K61 ["AgeRecommendation"]
      294 LOADK                            R26 K71 ["+"]
      295 CONCAT                           R24 R25 R26
      296 SETTABLEKS                       R24 R23 K68 ["text"]
      298 GETUPVAL                         R24 20
      299 GETTABLEKS                       R24 R24 K72 ["Secondary"]
      301 SETTABLEKS                       R24 R23 K69 ["variant"]
      303 CALL                             R21 2 1
      304 JUMP                             ; [+1]
      305 LOADNIL                          R21
      306 SETTABLEKS                       R21 R20 K47 ["PrivacyOrAgeBadge"]
      308 CALL                             R17 3 1
      309 SETTABLEKS                       R17 R16 K39 ["NameAndAgeRec"]
      311 JUMPIFNOT                        R6 ; [+21]
      312 GETUPVAL                         R17 6
      313 GETTABLEKS                       R17 R17 K10 ["createElement"]
      315 GETUPVAL                         R18 14
      316 DUPTABLE                         R19 K74 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-body-medium"}]
      317 MOVE                             R20 R2
      318 CALL                             R20 0 1
      319 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      321 LOADK                            R22 K75 ["Plugin"]
      322 LOADK                            R23 K76 ["LastModified"]
      323 DUPTABLE                         R24 K78 [{"lastModified"}]
      324 SETTABLEKS                       R6 R24 K77 ["lastModified"]
      326 NAMECALL                         R20 R1 K79 ["getText"]
      328 CALL                             R20 4 1
      329 SETTABLEKS                       R20 R19 K49 ["Text"]
      331 CALL                             R17 2 1
      332 JUMP                             ; [+1]
      333 LOADNIL                          R17
      334 SETTABLEKS                       R17 R16 K40 ["UpdatedDate"]
      336 GETUPVAL                         R17 6
      337 GETTABLEKS                       R17 R17 K10 ["createElement"]
      339 GETUPVAL                         R18 14
      340 DUPTABLE                         R19 K81 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-body-medium text-truncate-split"}]
      341 MOVE                             R20 R2
      342 CALL                             R20 0 1
      343 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      345 GETTABLEKS                       R21 R4 K41 ["Description"]
      347 ORK                              R20 R21 K82 [""]
      348 SETTABLEKS                       R20 R19 K49 ["Text"]
      350 CALL                             R17 2 1
      351 SETTABLEKS                       R17 R16 K41 ["Description"]
      353 CALL                             R13 3 1
      354 SETTABLEKS                       R13 R12 K34 ["LeftTextbox"]
      356 GETUPVAL                         R13 6
      357 GETTABLEKS                       R13 R13 K10 ["createElement"]
      359 GETUPVAL                         R14 9
      360 DUPTABLE                         R15 K84 [{["LayoutOrder"], ["tag"] = "col align-x-right grow gap-small size-0-full auto-x"}]
      361 MOVE                             R16 R2
      362 CALL                             R16 0 1
      363 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      365 DUPTABLE                         R16 K87 [{"CreatedDate", "CreatorName"}]
      366 JUMPIFNOT                        R7 ; [+21]
      367 GETUPVAL                         R17 6
      368 GETTABLEKS                       R17 R17 K10 ["createElement"]
      370 GETUPVAL                         R18 14
      371 DUPTABLE                         R19 K74 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-body-medium"}]
      372 MOVE                             R20 R2
      373 CALL                             R20 0 1
      374 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      376 LOADK                            R22 K75 ["Plugin"]
      377 LOADK                            R23 K8 ["Created"]
      378 DUPTABLE                         R24 K89 [{"created"}]
      379 SETTABLEKS                       R7 R24 K88 ["created"]
      381 NAMECALL                         R20 R1 K79 ["getText"]
      383 CALL                             R20 4 1
      384 SETTABLEKS                       R20 R19 K49 ["Text"]
      386 CALL                             R17 2 1
      387 JUMP                             ; [+1]
      388 LOADNIL                          R17
      389 SETTABLEKS                       R17 R16 K85 ["CreatedDate"]
      391 GETTABLEKS                       R18 R4 K86 ["CreatorName"]
      393 JUMPIFNOT                        R18 ; [+19]
      394 GETUPVAL                         R17 6
      395 GETTABLEKS                       R17 R17 K10 ["createElement"]
      397 GETUPVAL                         R18 14
      398 DUPTABLE                         R19 K74 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-body-medium"}]
      399 MOVE                             R20 R2
      400 CALL                             R20 0 1
      401 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      403 LOADK                            R20 K90 ["@%*"]
      404 GETTABLEKS                       R22 R4 K86 ["CreatorName"]
      406 NAMECALL                         R20 R20 K91 ["format"]
      408 CALL                             R20 2 1
      409 SETTABLEKS                       R20 R19 K49 ["Text"]
      411 CALL                             R17 2 1
      412 JUMP                             ; [+1]
      413 LOADNIL                          R17
      414 SETTABLEKS                       R17 R16 K86 ["CreatorName"]
      416 CALL                             R13 3 1
      417 SETTABLEKS                       R13 R12 K35 ["RightTextbox"]
      419 CALL                             R9 3 -1
      420 RETURN                           R9 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{["Position"], ["Size"], ["tag"] = "align-x-left align-y-center"}]
        5 GETTABLEKS                       R4 R0 K1 ["Position"]
        7 SETTABLEKS                       R4 R3 K1 ["Position"]
        9 GETTABLEKS                       R4 R0 K2 ["Size"]
       11 SETTABLEKS                       R4 R3 K2 ["Size"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K0 ["createElement"]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K6 ["Component"]
       19 DUPTABLE                         R6 K9 [{["CornerRadius"] = 0, ["Size"]}]
       20 GETUPVAL                         R7 3
       21 SETTABLEKS                       R7 R6 K2 ["Size"]
       23 CALL                             R4 2 -1
       24 CALL                             R1 -1 -1
       25 RETURN                           R1 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Cell"]
        2 GETTABLEKS                       R2 R1 K1 ["IsPlaceholder"]
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1
        9 GETUPVAL                         R2 1
       10 MOVE                             R3 R0
       11 CALL                             R2 1 -1
       12 RETURN                           R2 -1

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
       25 GETTABLEKS                       R4 R2 K11 ["Util"]
       27 GETTABLEKS                       R4 R4 K12 ["counter"]
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R6 R0 K13 ["Src"]
       33 GETTABLEKS                       R6 R6 K14 ["Components"]
       35 GETTABLEKS                       R6 R6 K15 ["Shimmer"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K13 ["Src"]
       42 GETTABLEKS                       R7 R7 K11 ["Util"]
       44 GETTABLEKS                       R7 R7 K16 ["Foundation"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R6 K17 ["View"]
       49 GETTABLEKS                       R8 R6 K18 ["Text"]
       51 GETTABLEKS                       R9 R6 K19 ["Image"]
       53 GETTABLEKS                       R10 R6 K20 ["Badge"]
       55 GETTABLEKS                       R11 R6 K21 ["Hooks"]
       57 GETTABLEKS                       R11 R11 K22 ["useTokens"]
       59 GETTABLEKS                       R12 R6 K23 ["Enums"]
       61 GETTABLEKS                       R12 R12 K24 ["BadgeVariant"]
       63 GETIMPORT                        R13 K5 [require]
       65 GETTABLEKS                       R14 R0 K13 ["Src"]
       67 GETTABLEKS                       R14 R14 K16 ["Foundation"]
       69 GETTABLEKS                       R14 R14 K14 ["Components"]
       71 GETTABLEKS                       R14 R14 K25 ["Frame"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K5 [require]
       76 GETTABLEKS                       R15 R0 K13 ["Src"]
       78 GETTABLEKS                       R15 R15 K11 ["Util"]
       80 GETTABLEKS                       R15 R15 K26 ["formatISOTimestamp"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K5 [require]
       85 GETTABLEKS                       R16 R0 K13 ["Src"]
       87 GETTABLEKS                       R16 R16 K14 ["Components"]
       89 GETTABLEKS                       R16 R16 K27 ["PrivacyStatusBadge"]
       91 CALL                             R15 1 1
       92 GETIMPORT                        R16 K5 [require]
       94 GETTABLEKS                       R17 R0 K13 ["Src"]
       96 GETTABLEKS                       R17 R17 K14 ["Components"]
       98 GETTABLEKS                       R17 R17 K28 ["ReachStatusBadge"]
      100 CALL                             R16 1 1
      101 GETIMPORT                        R17 K5 [require]
      103 GETTABLEKS                       R18 R0 K13 ["Src"]
      105 GETTABLEKS                       R18 R18 K11 ["Util"]
      107 GETTABLEKS                       R18 R18 K29 ["getReachStatusBadgePresentation"]
      109 CALL                             R17 1 1
      110 GETIMPORT                        R18 K5 [require]
      112 GETTABLEKS                       R19 R0 K13 ["Src"]
      114 GETTABLEKS                       R19 R19 K30 ["SharedFlags"]
      116 GETTABLEKS                       R19 R19 K31 ["getFFlagLuaStartPageReachStatus"]
      118 CALL                             R18 1 1
      119 CALL                             R18 0 1
      120 GETIMPORT                        R19 K5 [require]
      122 GETTABLEKS                       R20 R0 K13 ["Src"]
      124 GETTABLEKS                       R20 R20 K30 ["SharedFlags"]
      126 GETTABLEKS                       R20 R20 K32 ["getFFlagLuaStartPageCoreContentStatus"]
      128 CALL                             R19 1 1
      129 CALL                             R19 0 1
      130 GETIMPORT                        R20 K5 [require]
      132 GETTABLEKS                       R21 R0 K13 ["Src"]
      134 GETTABLEKS                       R21 R21 K30 ["SharedFlags"]
      136 GETTABLEKS                       R21 R21 K33 ["getFFlagLuaStartPageAudiencesReplacement"]
      138 CALL                             R20 1 1
      139 CALL                             R20 0 1
      140 GETIMPORT                        R21 K5 [require]
      142 GETTABLEKS                       R22 R0 K13 ["Src"]
      144 GETTABLEKS                       R22 R22 K30 ["SharedFlags"]
      146 GETTABLEKS                       R22 R22 K34 ["getFFlagRemoveUnusedStartPageApis"]
      148 CALL                             R21 1 1
      149 CALL                             R21 0 1
      150 GETIMPORT                        R22 K5 [require]
      152 GETTABLEKS                       R23 R0 K13 ["Src"]
      154 GETTABLEKS                       R23 R23 K35 ["Types"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K38 [UDim2.new]
      159 LOADN                            R24 0
      160 LOADN                            R25 75
      161 LOADN                            R26 0
      162 LOADN                            R27 75
      163 CALL                             R23 4 1
      164 GETIMPORT                        R24 K38 [UDim2.new]
      166 LOADN                            R25 0
      167 LOADN                            R26 45
      168 LOADN                            R27 0
      169 LOADN                            R28 45
      170 CALL                             R24 4 1
      171 GETIMPORT                        R25 K38 [UDim2.new]
      173 LOADN                            R26 1
      174 LOADN                            R27 0
      175 LOADN                            R28 0
      176 LOADN                            R29 74
      177 CALL                             R25 4 1
      178 DUPCLOSURE                       R26 K39 [PROTO_1]
      179 CAPTURE                          VAL R3
      180 CAPTURE                          VAL R4
      181 CAPTURE                          VAL R11
      182 CAPTURE                          VAL R18
      183 CAPTURE                          VAL R17
      184 CAPTURE                          VAL R14
      185 CAPTURE                          VAL R1
      186 CAPTURE                          VAL R9
      187 CAPTURE                          VAL R23
      188 CAPTURE                          VAL R13
      189 CAPTURE                          VAL R24
      190 CAPTURE                          VAL R5
      191 CAPTURE                          VAL R7
      192 CAPTURE                          VAL R19
      193 CAPTURE                          VAL R8
      194 CAPTURE                          VAL R16
      195 CAPTURE                          VAL R20
      196 CAPTURE                          VAL R15
      197 CAPTURE                          VAL R21
      198 CAPTURE                          VAL R10
      199 CAPTURE                          VAL R12
      200 DUPCLOSURE                       R27 K40 [PROTO_2]
      201 CAPTURE                          VAL R1
      202 CAPTURE                          VAL R13
      203 CAPTURE                          VAL R5
      204 CAPTURE                          VAL R25
      205 DUPCLOSURE                       R28 K41 [PROTO_3]
      206 CAPTURE                          VAL R27
      207 CAPTURE                          VAL R26
      208 RETURN                           R28 1
