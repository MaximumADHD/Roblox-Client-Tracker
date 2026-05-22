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
       42 JUMPIFNOT                        R8 ; [+22]
       43 GETUPVAL                         R8 4
       44 GETTABLEKS                       R8 R8 K9 ["createElement"]
       46 GETUPVAL                         R9 5
       47 DUPTABLE                         R10 K14 [{"Image", "Size", "LayoutOrder", "tag"}]
       48 GETTABLEKS                       R11 R4 K8 ["ImageUrl"]
       50 SETTABLEKS                       R11 R10 K10 ["Image"]
       52 GETUPVAL                         R11 6
       53 SETTABLEKS                       R11 R10 K11 ["Size"]
       55 MOVE                             R11 R2
       56 CALL                             R11 0 1
       57 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
       59 LOADK                            R11 K15 ["radius-small align-x-right"]
       60 SETTABLEKS                       R11 R10 K13 ["tag"]
       62 CALL                             R8 2 1
       63 MOVE                             R7 R8
       64 JUMP                             ; [+51]
       65 GETTABLEKS                       R8 R4 K16 ["NoLoadableImage"]
       67 JUMPIFNOT                        R8 ; [+30]
       68 GETUPVAL                         R8 4
       69 GETTABLEKS                       R8 R8 K9 ["createElement"]
       71 GETUPVAL                         R9 7
       72 DUPTABLE                         R10 K17 [{"Size", "LayoutOrder", "tag"}]
       73 GETUPVAL                         R11 6
       74 SETTABLEKS                       R11 R10 K11 ["Size"]
       76 MOVE                             R11 R2
       77 CALL                             R11 0 1
       78 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
       80 LOADK                            R11 K18 ["radius-small align-x-center align-y-center bg-shift-200"]
       81 SETTABLEKS                       R11 R10 K13 ["tag"]
       83 GETUPVAL                         R11 4
       84 GETTABLEKS                       R11 R11 K9 ["createElement"]
       86 GETUPVAL                         R12 5
       87 DUPTABLE                         R13 K19 [{"Image", "Size"}]
       88 LOADK                            R14 K20 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/Placeholder.png"]
       89 SETTABLEKS                       R14 R13 K10 ["Image"]
       91 GETUPVAL                         R14 8
       92 SETTABLEKS                       R14 R13 K11 ["Size"]
       94 CALL                             R11 2 -1
       95 CALL                             R8 -1 1
       96 MOVE                             R7 R8
       97 JUMP                             ; [+18]
       98 GETUPVAL                         R8 4
       99 GETTABLEKS                       R8 R8 K9 ["createElement"]
      101 GETUPVAL                         R9 9
      102 GETTABLEKS                       R9 R9 K21 ["Component"]
      104 DUPTABLE                         R10 K23 [{"CornerRadius", "Size"}]
      105 GETTABLEKS                       R11 R3 K24 ["Radius"]
      107 GETTABLEKS                       R11 R11 K25 ["Small"]
      109 SETTABLEKS                       R11 R10 K22 ["CornerRadius"]
      111 GETUPVAL                         R11 6
      112 SETTABLEKS                       R11 R10 K11 ["Size"]
      114 CALL                             R8 2 1
      115 MOVE                             R7 R8
      116 GETUPVAL                         R8 4
      117 GETTABLEKS                       R8 R8 K9 ["createElement"]
      119 GETUPVAL                         R9 10
      120 DUPTABLE                         R10 K29 [{"Position", "Size", "onActivated", "testId", "tag"}]
      121 GETTABLEKS                       R11 R0 K26 ["Position"]
      123 SETTABLEKS                       R11 R10 K26 ["Position"]
      125 GETTABLEKS                       R11 R0 K11 ["Size"]
      127 SETTABLEKS                       R11 R10 K11 ["Size"]
      129 NEWCLOSURE                       R11 P0
      130 CAPTURE                          VAL R0
      131 CAPTURE                          VAL R4
      132 SETTABLEKS                       R11 R10 K27 ["onActivated"]
      134 LOADK                            R11 K30 ["--start-page-SearchResultRow"]
      135 SETTABLEKS                       R11 R10 K28 ["testId"]
      137 LOADK                            R11 K31 ["row align-y-center padding-x-large padding-y-medium gap-medium"]
      138 SETTABLEKS                       R11 R10 K13 ["tag"]
      140 DUPTABLE                         R11 K35 [{"PreviewImage", "LeftTextbox", "RightTextbox"}]
      141 SETTABLEKS                       R7 R11 K32 ["PreviewImage"]
      143 GETUPVAL                         R12 4
      144 GETTABLEKS                       R12 R12 K9 ["createElement"]
      146 GETUPVAL                         R13 10
      147 DUPTABLE                         R14 K36 [{"LayoutOrder", "tag"}]
      148 MOVE                             R15 R2
      149 CALL                             R15 0 1
      150 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
      152 LOADK                            R15 K37 ["col gap-small auto-x size-0-full fill"]
      153 SETTABLEKS                       R15 R14 K13 ["tag"]
      155 DUPTABLE                         R15 K41 [{"NameAndAgeRec", "UpdatedDate", "Description"}]
      156 GETUPVAL                         R16 4
      157 GETTABLEKS                       R16 R16 K9 ["createElement"]
      159 GETUPVAL                         R17 10
      160 DUPTABLE                         R18 K36 [{"LayoutOrder", "tag"}]
      161 MOVE                             R19 R2
      162 CALL                             R19 0 1
      163 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      165 GETUPVAL                         R20 11
      166 JUMPIFNOT                        R20 ; [+2]
      167 LOADK                            R19 K42 ["auto-xy row gap-xsmall align-y-center"]
      168 JUMP                             ; [+1]
      169 LOADK                            R19 K43 ["auto-xy row gap-xsmall"]
      170 SETTABLEKS                       R19 R18 K13 ["tag"]
      172 DUPTABLE                         R19 K46 [{"Name", "PrivacyOrAgeBadge"}]
      173 GETUPVAL                         R20 4
      174 GETTABLEKS                       R20 R20 K9 ["createElement"]
      176 GETUPVAL                         R21 12
      177 DUPTABLE                         R22 K48 [{"LayoutOrder", "Text", "tag"}]
      178 MOVE                             R23 R2
      179 CALL                             R23 0 1
      180 SETTABLEKS                       R23 R22 K12 ["LayoutOrder"]
      182 GETTABLEKS                       R23 R4 K44 ["Name"]
      184 SETTABLEKS                       R23 R22 K47 ["Text"]
      186 LOADK                            R23 K49 ["auto-xy text-title-medium text-truncate-split text-align-x-left fill"]
      187 SETTABLEKS                       R23 R22 K13 ["tag"]
      189 CALL                             R20 2 1
      190 SETTABLEKS                       R20 R19 K44 ["Name"]
      192 GETUPVAL                         R21 11
      193 JUMPIFNOT                        R21 ; [+67]
      194 GETTABLEKS                       R21 R4 K50 ["PrivacyType"]
      196 JUMPIF                           R21 ; [+5]
      197 GETUPVAL                         R21 13
      198 JUMPIFNOT                        R21 ; [+62]
      199 GETTABLEKS                       R21 R4 K51 ["Audiences"]
      201 JUMPIFNOT                        R21 ; [+59]
      202 GETUPVAL                         R20 4
      203 GETTABLEKS                       R20 R20 K9 ["createElement"]
      205 GETUPVAL                         R21 14
      206 DUPTABLE                         R22 K61 [{"LayoutOrder", "PrivacyType", "Audiences", "ContentMaturity", "IsFriendsOnly", "CreatorType", "CoreContentSelectStatus", "CoreContentReasons", "IsBeta", "AgeRecommendation", "IsSequestered", "IsDiscoveryBlocked"}]
      207 MOVE                             R23 R2
      208 CALL                             R23 0 1
      209 SETTABLEKS                       R23 R22 K12 ["LayoutOrder"]
      211 GETTABLEKS                       R23 R4 K50 ["PrivacyType"]
      213 SETTABLEKS                       R23 R22 K50 ["PrivacyType"]
      215 GETUPVAL                         R24 13
      216 JUMPIFNOT                        R24 ; [+3]
      217 GETTABLEKS                       R23 R4 K51 ["Audiences"]
      219 JUMP                             ; [+1]
      220 LOADNIL                          R23
      221 SETTABLEKS                       R23 R22 K51 ["Audiences"]
      223 GETTABLEKS                       R23 R4 K52 ["ContentMaturity"]
      225 SETTABLEKS                       R23 R22 K52 ["ContentMaturity"]
      227 GETTABLEKS                       R23 R4 K53 ["IsFriendsOnly"]
      229 SETTABLEKS                       R23 R22 K53 ["IsFriendsOnly"]
      231 GETTABLEKS                       R23 R4 K54 ["CreatorType"]
      233 SETTABLEKS                       R23 R22 K54 ["CreatorType"]
      235 GETTABLEKS                       R23 R4 K55 ["CoreContentSelectStatus"]
      237 SETTABLEKS                       R23 R22 K55 ["CoreContentSelectStatus"]
      239 GETTABLEKS                       R23 R4 K56 ["CoreContentReasons"]
      241 SETTABLEKS                       R23 R22 K56 ["CoreContentReasons"]
      243 GETTABLEKS                       R23 R4 K57 ["IsBeta"]
      245 SETTABLEKS                       R23 R22 K57 ["IsBeta"]
      247 GETTABLEKS                       R23 R4 K58 ["AgeRecommendation"]
      249 SETTABLEKS                       R23 R22 K58 ["AgeRecommendation"]
      251 GETTABLEKS                       R23 R4 K59 ["IsSequestered"]
      253 SETTABLEKS                       R23 R22 K59 ["IsSequestered"]
      255 GETTABLEKS                       R23 R4 K60 ["IsDiscoveryBlocked"]
      257 SETTABLEKS                       R23 R22 K60 ["IsDiscoveryBlocked"]
      259 CALL                             R20 2 1
      260 JUMP                             ; [+36]
      261 GETUPVAL                         R21 11
      262 JUMPIF                           R21 ; [+33]
      263 GETTABLEKS                       R21 R4 K58 ["AgeRecommendation"]
      265 JUMPIFNOT                        R21 ; [+30]
      266 GETTABLEKS                       R22 R4 K58 ["AgeRecommendation"]
      268 FASTCALL1                        TONUMBER R22 ; [+2]
      269 GETIMPORT                        R21 K63 [tonumber]
      271 CALL                             R21 1 1
      272 JUMPIFNOTEQKN                    R21 K64 [18] ; [+23]
      274 GETUPVAL                         R20 4
      275 GETTABLEKS                       R20 R20 K9 ["createElement"]
      277 GETUPVAL                         R21 15
      278 DUPTABLE                         R22 K67 [{"LayoutOrder", "text", "variant"}]
      279 MOVE                             R23 R2
      280 CALL                             R23 0 1
      281 SETTABLEKS                       R23 R22 K12 ["LayoutOrder"]
      283 GETTABLEKS                       R24 R4 K58 ["AgeRecommendation"]
      285 LOADK                            R25 K68 ["+"]
      286 CONCAT                           R23 R24 R25
      287 SETTABLEKS                       R23 R22 K65 ["text"]
      289 GETUPVAL                         R23 16
      290 GETTABLEKS                       R23 R23 K69 ["Secondary"]
      292 SETTABLEKS                       R23 R22 K66 ["variant"]
      294 CALL                             R20 2 1
      295 JUMP                             ; [+1]
      296 LOADNIL                          R20
      297 SETTABLEKS                       R20 R19 K45 ["PrivacyOrAgeBadge"]
      299 CALL                             R16 3 1
      300 SETTABLEKS                       R16 R15 K38 ["NameAndAgeRec"]
      302 JUMPIFNOT                        R5 ; [+24]
      303 GETUPVAL                         R16 4
      304 GETTABLEKS                       R16 R16 K9 ["createElement"]
      306 GETUPVAL                         R17 12
      307 DUPTABLE                         R18 K48 [{"LayoutOrder", "Text", "tag"}]
      308 MOVE                             R19 R2
      309 CALL                             R19 0 1
      310 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      312 LOADK                            R21 K70 ["Plugin"]
      313 LOADK                            R22 K71 ["LastModified"]
      314 DUPTABLE                         R23 K73 [{"lastModified"}]
      315 SETTABLEKS                       R5 R23 K72 ["lastModified"]
      317 NAMECALL                         R19 R1 K74 ["getText"]
      319 CALL                             R19 4 1
      320 SETTABLEKS                       R19 R18 K47 ["Text"]
      322 LOADK                            R19 K75 ["auto-xy text-body-medium"]
      323 SETTABLEKS                       R19 R18 K13 ["tag"]
      325 CALL                             R16 2 1
      326 JUMP                             ; [+1]
      327 LOADNIL                          R16
      328 SETTABLEKS                       R16 R15 K39 ["UpdatedDate"]
      330 GETUPVAL                         R16 4
      331 GETTABLEKS                       R16 R16 K9 ["createElement"]
      333 GETUPVAL                         R17 12
      334 DUPTABLE                         R18 K48 [{"LayoutOrder", "Text", "tag"}]
      335 MOVE                             R19 R2
      336 CALL                             R19 0 1
      337 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      339 GETTABLEKS                       R20 R4 K40 ["Description"]
      341 ORK                              R19 R20 K76 [""]
      342 SETTABLEKS                       R19 R18 K47 ["Text"]
      344 LOADK                            R19 K77 ["auto-xy text-body-medium text-truncate-split"]
      345 SETTABLEKS                       R19 R18 K13 ["tag"]
      347 CALL                             R16 2 1
      348 SETTABLEKS                       R16 R15 K40 ["Description"]
      350 CALL                             R12 3 1
      351 SETTABLEKS                       R12 R11 K33 ["LeftTextbox"]
      353 GETUPVAL                         R12 4
      354 GETTABLEKS                       R12 R12 K9 ["createElement"]
      356 GETUPVAL                         R13 7
      357 DUPTABLE                         R14 K36 [{"LayoutOrder", "tag"}]
      358 MOVE                             R15 R2
      359 CALL                             R15 0 1
      360 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
      362 LOADK                            R15 K78 ["col gap-small grow align-x-right auto-x size-0-full"]
      363 SETTABLEKS                       R15 R14 K13 ["tag"]
      365 DUPTABLE                         R15 K81 [{"CreatedDate", "CreatorName"}]
      366 JUMPIFNOT                        R6 ; [+24]
      367 GETUPVAL                         R16 4
      368 GETTABLEKS                       R16 R16 K9 ["createElement"]
      370 GETUPVAL                         R17 12
      371 DUPTABLE                         R18 K48 [{"LayoutOrder", "Text", "tag"}]
      372 MOVE                             R19 R2
      373 CALL                             R19 0 1
      374 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      376 LOADK                            R21 K70 ["Plugin"]
      377 LOADK                            R22 K7 ["Created"]
      378 DUPTABLE                         R23 K83 [{"created"}]
      379 SETTABLEKS                       R6 R23 K82 ["created"]
      381 NAMECALL                         R19 R1 K74 ["getText"]
      383 CALL                             R19 4 1
      384 SETTABLEKS                       R19 R18 K47 ["Text"]
      386 LOADK                            R19 K75 ["auto-xy text-body-medium"]
      387 SETTABLEKS                       R19 R18 K13 ["tag"]
      389 CALL                             R16 2 1
      390 JUMP                             ; [+1]
      391 LOADNIL                          R16
      392 SETTABLEKS                       R16 R15 K79 ["CreatedDate"]
      394 GETTABLEKS                       R17 R4 K80 ["CreatorName"]
      396 JUMPIFNOT                        R17 ; [+23]
      397 GETUPVAL                         R16 4
      398 GETTABLEKS                       R16 R16 K9 ["createElement"]
      400 GETUPVAL                         R17 12
      401 DUPTABLE                         R18 K48 [{"LayoutOrder", "Text", "tag"}]
      402 MOVE                             R19 R2
      403 CALL                             R19 0 1
      404 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      406 LOADK                            R20 K84 ["@%*"]
      407 GETTABLEKS                       R22 R4 K80 ["CreatorName"]
      409 NAMECALL                         R20 R20 K85 ["format"]
      411 CALL                             R20 2 1
      412 MOVE                             R19 R20
      413 SETTABLEKS                       R19 R18 K47 ["Text"]
      415 LOADK                            R19 K75 ["auto-xy text-body-medium"]
      416 SETTABLEKS                       R19 R18 K13 ["tag"]
      418 CALL                             R16 2 1
      419 JUMP                             ; [+1]
      420 LOADNIL                          R16
      421 SETTABLEKS                       R16 R15 K80 ["CreatorName"]
      423 CALL                             R12 3 1
      424 SETTABLEKS                       R12 R11 K34 ["RightTextbox"]
      426 CALL                             R8 3 -1
      427 RETURN                           R8 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{"Position", "Size", "tag"}]
        5 GETTABLEKS                       R4 R0 K1 ["Position"]
        7 SETTABLEKS                       R4 R3 K1 ["Position"]
        9 GETTABLEKS                       R4 R0 K2 ["Size"]
       11 SETTABLEKS                       R4 R3 K2 ["Size"]
       13 LOADK                            R4 K5 ["align-x-left align-y-center"]
       14 SETTABLEKS                       R4 R3 K3 ["tag"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["createElement"]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K6 ["Component"]
       22 DUPTABLE                         R6 K8 [{"CornerRadius", "Size"}]
       23 LOADN                            R7 0
       24 SETTABLEKS                       R7 R6 K7 ["CornerRadius"]
       26 GETUPVAL                         R7 3
       27 SETTABLEKS                       R7 R6 K2 ["Size"]
       29 CALL                             R4 2 -1
       30 CALL                             R1 -1 -1
       31 RETURN                           R1 -1

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
      116 GETTABLEKS                       R19 R19 K31 ["Types"]
      118 CALL                             R18 1 1
      119 GETIMPORT                        R19 K34 [UDim2.new]
      121 LOADN                            R20 0
      122 LOADN                            R21 75
      123 LOADN                            R22 0
      124 LOADN                            R23 75
      125 CALL                             R19 4 1
      126 GETIMPORT                        R20 K34 [UDim2.new]
      128 LOADN                            R21 0
      129 LOADN                            R22 45
      130 LOADN                            R23 0
      131 LOADN                            R24 45
      132 CALL                             R20 4 1
      133 GETIMPORT                        R21 K34 [UDim2.new]
      135 LOADN                            R22 1
      136 LOADN                            R23 0
      137 LOADN                            R24 0
      138 LOADN                            R25 74
      139 CALL                             R21 4 1
      140 DUPCLOSURE                       R22 K35 [PROTO_1]
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R19
      148 CAPTURE                          VAL R13
      149 CAPTURE                          VAL R20
      150 CAPTURE                          VAL R5
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R16
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R15
      156 CAPTURE                          VAL R10
      157 CAPTURE                          VAL R12
      158 DUPCLOSURE                       R23 K36 [PROTO_2]
      159 CAPTURE                          VAL R1
      160 CAPTURE                          VAL R13
      161 CAPTURE                          VAL R5
      162 CAPTURE                          VAL R21
      163 DUPCLOSURE                       R24 K37 [PROTO_3]
      164 CAPTURE                          VAL R23
      165 CAPTURE                          VAL R22
      166 RETURN                           R24 1
