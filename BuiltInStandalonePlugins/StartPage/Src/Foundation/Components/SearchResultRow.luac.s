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
       19 LOADNIL                          R5
       20 GETTABLEKS                       R6 R4 K6 ["Updated"]
       22 JUMPIFNOT                        R6 ; [+6]
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R7 R4 K6 ["Updated"]
       26 MOVE                             R8 R1
       27 CALL                             R6 2 1
       28 MOVE                             R5 R6
       29 LOADNIL                          R6
       30 GETTABLEKS                       R7 R4 K7 ["Created"]
       32 JUMPIFNOT                        R7 ; [+6]
       33 GETUPVAL                         R7 3
       34 GETTABLEKS                       R8 R4 K7 ["Created"]
       36 MOVE                             R9 R1
       37 CALL                             R7 2 1
       38 MOVE                             R6 R7
       39 LOADNIL                          R7
       40 GETTABLEKS                       R8 R4 K8 ["ImageUrl"]
       42 JUMPIFNOT                        R8 ; [+19]
       43 GETUPVAL                         R8 4
       44 GETTABLEKS                       R8 R8 K9 ["createElement"]
       46 GETUPVAL                         R9 5
       47 DUPTABLE                         R10 K15 [{["Image"], ["Size"], ["LayoutOrder"], ["tag"] = "align-x-right radius-small"}]
       48 GETTABLEKS                       R11 R4 K8 ["ImageUrl"]
       50 SETTABLEKS                       R11 R10 K10 ["Image"]
       52 GETUPVAL                         R11 6
       53 SETTABLEKS                       R11 R10 K11 ["Size"]
       55 MOVE                             R11 R2
       56 CALL                             R11 0 1
       57 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
       59 CALL                             R8 2 1
       60 MOVE                             R7 R8
       61 JUMP                             ; [+45]
       62 GETTABLEKS                       R8 R4 K16 ["NoLoadableImage"]
       64 JUMPIFNOT                        R8 ; [+24]
       65 GETUPVAL                         R8 4
       66 GETTABLEKS                       R8 R8 K9 ["createElement"]
       68 GETUPVAL                         R9 7
       69 DUPTABLE                         R10 K18 [{["Size"], ["LayoutOrder"], ["tag"] = "align-x-center align-y-center radius-small bg-shift-200"}]
       70 GETUPVAL                         R11 6
       71 SETTABLEKS                       R11 R10 K11 ["Size"]
       73 MOVE                             R11 R2
       74 CALL                             R11 0 1
       75 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
       77 GETUPVAL                         R11 4
       78 GETTABLEKS                       R11 R11 K9 ["createElement"]
       80 GETUPVAL                         R12 5
       81 DUPTABLE                         R13 K20 [{["Image"] = "rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/Placeholder.png", ["Size"]}]
       82 GETUPVAL                         R14 8
       83 SETTABLEKS                       R14 R13 K11 ["Size"]
       85 CALL                             R11 2 -1
       86 CALL                             R8 -1 1
       87 MOVE                             R7 R8
       88 JUMP                             ; [+18]
       89 GETUPVAL                         R8 4
       90 GETTABLEKS                       R8 R8 K9 ["createElement"]
       92 GETUPVAL                         R9 9
       93 GETTABLEKS                       R9 R9 K21 ["Component"]
       95 DUPTABLE                         R10 K23 [{"CornerRadius", "Size"}]
       96 GETTABLEKS                       R11 R3 K24 ["Radius"]
       98 GETTABLEKS                       R11 R11 K25 ["Small"]
      100 SETTABLEKS                       R11 R10 K22 ["CornerRadius"]
      102 GETUPVAL                         R11 6
      103 SETTABLEKS                       R11 R10 K11 ["Size"]
      105 CALL                             R8 2 1
      106 MOVE                             R7 R8
      107 GETUPVAL                         R8 4
      108 GETTABLEKS                       R8 R8 K9 ["createElement"]
      110 GETUPVAL                         R9 10
      111 DUPTABLE                         R10 K31 [{["Position"], ["Size"], ["onActivated"], ["testId"] = "--start-page-SearchResultRow", ["tag"] = "row align-y-center gap-medium padding-x-large padding-y-medium"}]
      112 GETTABLEKS                       R11 R0 K26 ["Position"]
      114 SETTABLEKS                       R11 R10 K26 ["Position"]
      116 GETTABLEKS                       R11 R0 K11 ["Size"]
      118 SETTABLEKS                       R11 R10 K11 ["Size"]
      120 NEWCLOSURE                       R11 P0
      121 CAPTURE                          VAL R0
      122 CAPTURE                          VAL R4
      123 SETTABLEKS                       R11 R10 K27 ["onActivated"]
      125 DUPTABLE                         R11 K35 [{"PreviewImage", "LeftTextbox", "RightTextbox"}]
      126 SETTABLEKS                       R7 R11 K32 ["PreviewImage"]
      128 GETUPVAL                         R12 4
      129 GETTABLEKS                       R12 R12 K9 ["createElement"]
      131 GETUPVAL                         R13 10
      132 DUPTABLE                         R14 K37 [{["LayoutOrder"], ["tag"] = "col fill gap-small size-0-full auto-x"}]
      133 MOVE                             R15 R2
      134 CALL                             R15 0 1
      135 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
      137 DUPTABLE                         R15 K41 [{"NameAndAgeRec", "UpdatedDate", "Description"}]
      138 GETUPVAL                         R16 4
      139 GETTABLEKS                       R16 R16 K9 ["createElement"]
      141 GETUPVAL                         R17 10
      142 DUPTABLE                         R18 K42 [{"LayoutOrder", "tag"}]
      143 MOVE                             R19 R2
      144 CALL                             R19 0 1
      145 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      147 GETUPVAL                         R20 11
      148 JUMPIFNOT                        R20 ; [+2]
      149 LOADK                            R19 K43 ["row align-y-center gap-xsmall auto-xy"]
      150 JUMP                             ; [+1]
      151 LOADK                            R19 K44 ["row gap-xsmall auto-xy"]
      152 SETTABLEKS                       R19 R18 K13 ["tag"]
      154 DUPTABLE                         R19 K47 [{"Name", "PrivacyOrAgeBadge"}]
      155 GETUPVAL                         R20 4
      156 GETTABLEKS                       R20 R20 K9 ["createElement"]
      158 GETUPVAL                         R21 12
      159 DUPTABLE                         R22 K50 [{["LayoutOrder"], ["Text"], ["tag"] = "fill auto-xy text-title-medium text-align-x-left text-truncate-split"}]
      160 MOVE                             R23 R2
      161 CALL                             R23 0 1
      162 SETTABLEKS                       R23 R22 K12 ["LayoutOrder"]
      164 GETTABLEKS                       R23 R4 K45 ["Name"]
      166 SETTABLEKS                       R23 R22 K48 ["Text"]
      168 CALL                             R20 2 1
      169 SETTABLEKS                       R20 R19 K45 ["Name"]
      171 GETUPVAL                         R21 11
      172 JUMPIFNOT                        R21 ; [+71]
      173 GETTABLEKS                       R21 R4 K51 ["PrivacyType"]
      175 JUMPIF                           R21 ; [+5]
      176 GETUPVAL                         R21 13
      177 JUMPIFNOT                        R21 ; [+66]
      178 GETTABLEKS                       R21 R4 K52 ["Audiences"]
      180 JUMPIFNOT                        R21 ; [+63]
      181 GETUPVAL                         R20 4
      182 GETTABLEKS                       R20 R20 K9 ["createElement"]
      184 GETUPVAL                         R21 14
      185 DUPTABLE                         R22 K62 [{"LayoutOrder", "PrivacyType", "Audiences", "ContentMaturity", "IsFriendsOnly", "CreatorType", "CoreContentSelectStatus", "CoreContentReasons", "IsBeta", "AgeRecommendation", "IsSequestered", "IsDiscoveryBlocked"}]
      186 MOVE                             R23 R2
      187 CALL                             R23 0 1
      188 SETTABLEKS                       R23 R22 K12 ["LayoutOrder"]
      190 GETTABLEKS                       R23 R4 K51 ["PrivacyType"]
      192 SETTABLEKS                       R23 R22 K51 ["PrivacyType"]
      194 GETUPVAL                         R24 13
      195 JUMPIFNOT                        R24 ; [+3]
      196 GETTABLEKS                       R23 R4 K52 ["Audiences"]
      198 JUMP                             ; [+1]
      199 LOADNIL                          R23
      200 SETTABLEKS                       R23 R22 K52 ["Audiences"]
      202 GETTABLEKS                       R23 R4 K53 ["ContentMaturity"]
      204 SETTABLEKS                       R23 R22 K53 ["ContentMaturity"]
      206 GETTABLEKS                       R23 R4 K54 ["IsFriendsOnly"]
      208 SETTABLEKS                       R23 R22 K54 ["IsFriendsOnly"]
      210 GETTABLEKS                       R23 R4 K55 ["CreatorType"]
      212 SETTABLEKS                       R23 R22 K55 ["CreatorType"]
      214 GETTABLEKS                       R23 R4 K56 ["CoreContentSelectStatus"]
      216 SETTABLEKS                       R23 R22 K56 ["CoreContentSelectStatus"]
      218 GETTABLEKS                       R23 R4 K57 ["CoreContentReasons"]
      220 SETTABLEKS                       R23 R22 K57 ["CoreContentReasons"]
      222 GETUPVAL                         R24 15
      223 JUMPIFNOT                        R24 ; [+2]
      224 LOADNIL                          R23
      225 JUMP                             ; [+2]
      226 GETTABLEKS                       R23 R4 K58 ["IsBeta"]
      228 SETTABLEKS                       R23 R22 K58 ["IsBeta"]
      230 GETTABLEKS                       R23 R4 K59 ["AgeRecommendation"]
      232 SETTABLEKS                       R23 R22 K59 ["AgeRecommendation"]
      234 GETTABLEKS                       R23 R4 K60 ["IsSequestered"]
      236 SETTABLEKS                       R23 R22 K60 ["IsSequestered"]
      238 GETTABLEKS                       R23 R4 K61 ["IsDiscoveryBlocked"]
      240 SETTABLEKS                       R23 R22 K61 ["IsDiscoveryBlocked"]
      242 CALL                             R20 2 1
      243 JUMP                             ; [+36]
      244 GETUPVAL                         R21 11
      245 JUMPIF                           R21 ; [+33]
      246 GETTABLEKS                       R21 R4 K59 ["AgeRecommendation"]
      248 JUMPIFNOT                        R21 ; [+30]
      249 GETTABLEKS                       R22 R4 K59 ["AgeRecommendation"]
      251 FASTCALL1                        TONUMBER R22 ; [+2]
      252 GETIMPORT                        R21 K64 [tonumber]
      254 CALL                             R21 1 1
      255 JUMPIFNOTEQKN                    R21 K65 [18] ; [+23]
      257 GETUPVAL                         R20 4
      258 GETTABLEKS                       R20 R20 K9 ["createElement"]
      260 GETUPVAL                         R21 16
      261 DUPTABLE                         R22 K68 [{"LayoutOrder", "text", "variant"}]
      262 MOVE                             R23 R2
      263 CALL                             R23 0 1
      264 SETTABLEKS                       R23 R22 K12 ["LayoutOrder"]
      266 GETTABLEKS                       R24 R4 K59 ["AgeRecommendation"]
      268 LOADK                            R25 K69 ["+"]
      269 CONCAT                           R23 R24 R25
      270 SETTABLEKS                       R23 R22 K66 ["text"]
      272 GETUPVAL                         R23 17
      273 GETTABLEKS                       R23 R23 K70 ["Secondary"]
      275 SETTABLEKS                       R23 R22 K67 ["variant"]
      277 CALL                             R20 2 1
      278 JUMP                             ; [+1]
      279 LOADNIL                          R20
      280 SETTABLEKS                       R20 R19 K46 ["PrivacyOrAgeBadge"]
      282 CALL                             R16 3 1
      283 SETTABLEKS                       R16 R15 K38 ["NameAndAgeRec"]
      285 JUMPIFNOT                        R5 ; [+21]
      286 GETUPVAL                         R16 4
      287 GETTABLEKS                       R16 R16 K9 ["createElement"]
      289 GETUPVAL                         R17 12
      290 DUPTABLE                         R18 K72 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-body-medium"}]
      291 MOVE                             R19 R2
      292 CALL                             R19 0 1
      293 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      295 LOADK                            R21 K73 ["Plugin"]
      296 LOADK                            R22 K74 ["LastModified"]
      297 DUPTABLE                         R23 K76 [{"lastModified"}]
      298 SETTABLEKS                       R5 R23 K75 ["lastModified"]
      300 NAMECALL                         R19 R1 K77 ["getText"]
      302 CALL                             R19 4 1
      303 SETTABLEKS                       R19 R18 K48 ["Text"]
      305 CALL                             R16 2 1
      306 JUMP                             ; [+1]
      307 LOADNIL                          R16
      308 SETTABLEKS                       R16 R15 K39 ["UpdatedDate"]
      310 GETUPVAL                         R16 4
      311 GETTABLEKS                       R16 R16 K9 ["createElement"]
      313 GETUPVAL                         R17 12
      314 DUPTABLE                         R18 K79 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-body-medium text-truncate-split"}]
      315 MOVE                             R19 R2
      316 CALL                             R19 0 1
      317 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      319 GETTABLEKS                       R20 R4 K40 ["Description"]
      321 ORK                              R19 R20 K80 [""]
      322 SETTABLEKS                       R19 R18 K48 ["Text"]
      324 CALL                             R16 2 1
      325 SETTABLEKS                       R16 R15 K40 ["Description"]
      327 CALL                             R12 3 1
      328 SETTABLEKS                       R12 R11 K33 ["LeftTextbox"]
      330 GETUPVAL                         R12 4
      331 GETTABLEKS                       R12 R12 K9 ["createElement"]
      333 GETUPVAL                         R13 7
      334 DUPTABLE                         R14 K82 [{["LayoutOrder"], ["tag"] = "col align-x-right grow gap-small size-0-full auto-x"}]
      335 MOVE                             R15 R2
      336 CALL                             R15 0 1
      337 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
      339 DUPTABLE                         R15 K85 [{"CreatedDate", "CreatorName"}]
      340 JUMPIFNOT                        R6 ; [+21]
      341 GETUPVAL                         R16 4
      342 GETTABLEKS                       R16 R16 K9 ["createElement"]
      344 GETUPVAL                         R17 12
      345 DUPTABLE                         R18 K72 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-body-medium"}]
      346 MOVE                             R19 R2
      347 CALL                             R19 0 1
      348 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      350 LOADK                            R21 K73 ["Plugin"]
      351 LOADK                            R22 K7 ["Created"]
      352 DUPTABLE                         R23 K87 [{"created"}]
      353 SETTABLEKS                       R6 R23 K86 ["created"]
      355 NAMECALL                         R19 R1 K77 ["getText"]
      357 CALL                             R19 4 1
      358 SETTABLEKS                       R19 R18 K48 ["Text"]
      360 CALL                             R16 2 1
      361 JUMP                             ; [+1]
      362 LOADNIL                          R16
      363 SETTABLEKS                       R16 R15 K83 ["CreatedDate"]
      365 GETTABLEKS                       R17 R4 K84 ["CreatorName"]
      367 JUMPIFNOT                        R17 ; [+20]
      368 GETUPVAL                         R16 4
      369 GETTABLEKS                       R16 R16 K9 ["createElement"]
      371 GETUPVAL                         R17 12
      372 DUPTABLE                         R18 K72 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-body-medium"}]
      373 MOVE                             R19 R2
      374 CALL                             R19 0 1
      375 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      377 LOADK                            R20 K88 ["@%*"]
      378 GETTABLEKS                       R22 R4 K84 ["CreatorName"]
      380 NAMECALL                         R20 R20 K89 ["format"]
      382 CALL                             R20 2 1
      383 MOVE                             R19 R20
      384 SETTABLEKS                       R19 R18 K48 ["Text"]
      386 CALL                             R16 2 1
      387 JUMP                             ; [+1]
      388 LOADNIL                          R16
      389 SETTABLEKS                       R16 R15 K84 ["CreatorName"]
      391 CALL                             R12 3 1
      392 SETTABLEKS                       R12 R11 K34 ["RightTextbox"]
      394 CALL                             R8 3 -1
      395 RETURN                           R8 -1

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
       96 GETTABLEKS                       R17 R17 K28 ["SharedFlags"]
       98 GETTABLEKS                       R17 R17 K29 ["getFFlagLuaStartPageCoreContentStatus"]
      100 CALL                             R16 1 1
      101 CALL                             R16 0 1
      102 GETIMPORT                        R17 K5 [require]
      104 GETTABLEKS                       R18 R0 K13 ["Src"]
      106 GETTABLEKS                       R18 R18 K28 ["SharedFlags"]
      108 GETTABLEKS                       R18 R18 K30 ["getFFlagLuaStartPageAudiencesReplacement"]
      110 CALL                             R17 1 1
      111 CALL                             R17 0 1
      112 GETIMPORT                        R18 K5 [require]
      114 GETTABLEKS                       R19 R0 K13 ["Src"]
      116 GETTABLEKS                       R19 R19 K28 ["SharedFlags"]
      118 GETTABLEKS                       R19 R19 K31 ["getFFlagRemoveUnusedStartPageApis"]
      120 CALL                             R18 1 1
      121 CALL                             R18 0 1
      122 GETIMPORT                        R19 K5 [require]
      124 GETTABLEKS                       R20 R0 K13 ["Src"]
      126 GETTABLEKS                       R20 R20 K32 ["Types"]
      128 CALL                             R19 1 1
      129 GETIMPORT                        R20 K35 [UDim2.new]
      131 LOADN                            R21 0
      132 LOADN                            R22 75
      133 LOADN                            R23 0
      134 LOADN                            R24 75
      135 CALL                             R20 4 1
      136 GETIMPORT                        R21 K35 [UDim2.new]
      138 LOADN                            R22 0
      139 LOADN                            R23 45
      140 LOADN                            R24 0
      141 LOADN                            R25 45
      142 CALL                             R21 4 1
      143 GETIMPORT                        R22 K35 [UDim2.new]
      145 LOADN                            R23 1
      146 LOADN                            R24 0
      147 LOADN                            R25 0
      148 LOADN                            R26 74
      149 CALL                             R22 4 1
      150 DUPCLOSURE                       R23 K36 [PROTO_1]
      151 CAPTURE                          VAL R3
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R9
      157 CAPTURE                          VAL R20
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R21
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R7
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R8
      164 CAPTURE                          VAL R17
      165 CAPTURE                          VAL R15
      166 CAPTURE                          VAL R18
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R12
      169 DUPCLOSURE                       R24 K37 [PROTO_2]
      170 CAPTURE                          VAL R1
      171 CAPTURE                          VAL R13
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R22
      174 DUPCLOSURE                       R25 K38 [PROTO_3]
      175 CAPTURE                          VAL R24
      176 CAPTURE                          VAL R23
      177 RETURN                           R25 1
