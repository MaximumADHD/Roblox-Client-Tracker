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
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R7 R4 K6 ["ReachStatus"]
       22 CALL                             R6 1 1
       23 JUMPIFNOTEQKNIL                  R6 ; [+2]
       25 LOADB                            R5 0 +1
       26 LOADB                            R5 1
       27 LOADNIL                          R6
       28 GETTABLEKS                       R7 R4 K7 ["Updated"]
       30 JUMPIFNOT                        R7 ; [+6]
       31 GETUPVAL                         R7 4
       32 GETTABLEKS                       R8 R4 K7 ["Updated"]
       34 MOVE                             R9 R1
       35 CALL                             R7 2 1
       36 MOVE                             R6 R7
       37 LOADNIL                          R7
       38 GETTABLEKS                       R8 R4 K8 ["Created"]
       40 JUMPIFNOT                        R8 ; [+6]
       41 GETUPVAL                         R8 4
       42 GETTABLEKS                       R9 R4 K8 ["Created"]
       44 MOVE                             R10 R1
       45 CALL                             R8 2 1
       46 MOVE                             R7 R8
       47 LOADNIL                          R8
       48 GETTABLEKS                       R9 R4 K9 ["ImageUrl"]
       50 JUMPIFNOT                        R9 ; [+19]
       51 GETUPVAL                         R9 5
       52 GETTABLEKS                       R9 R9 K10 ["createElement"]
       54 GETUPVAL                         R10 6
       55 DUPTABLE                         R11 K16 [{["Image"], ["Size"], ["LayoutOrder"], ["tag"] = "align-x-right radius-small"}]
       56 GETTABLEKS                       R12 R4 K9 ["ImageUrl"]
       58 SETTABLEKS                       R12 R11 K11 ["Image"]
       60 GETUPVAL                         R12 7
       61 SETTABLEKS                       R12 R11 K12 ["Size"]
       63 MOVE                             R12 R2
       64 CALL                             R12 0 1
       65 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       67 CALL                             R9 2 1
       68 MOVE                             R8 R9
       69 JUMP                             ; [+45]
       70 GETTABLEKS                       R9 R4 K17 ["NoLoadableImage"]
       72 JUMPIFNOT                        R9 ; [+24]
       73 GETUPVAL                         R9 5
       74 GETTABLEKS                       R9 R9 K10 ["createElement"]
       76 GETUPVAL                         R10 8
       77 DUPTABLE                         R11 K19 [{["Size"], ["LayoutOrder"], ["tag"] = "align-x-center align-y-center radius-small bg-shift-200"}]
       78 GETUPVAL                         R12 7
       79 SETTABLEKS                       R12 R11 K12 ["Size"]
       81 MOVE                             R12 R2
       82 CALL                             R12 0 1
       83 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       85 GETUPVAL                         R12 5
       86 GETTABLEKS                       R12 R12 K10 ["createElement"]
       88 GETUPVAL                         R13 6
       89 DUPTABLE                         R14 K21 [{["Image"] = "rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/Placeholder.png", ["Size"]}]
       90 GETUPVAL                         R15 9
       91 SETTABLEKS                       R15 R14 K12 ["Size"]
       93 CALL                             R12 2 -1
       94 CALL                             R9 -1 1
       95 MOVE                             R8 R9
       96 JUMP                             ; [+18]
       97 GETUPVAL                         R9 5
       98 GETTABLEKS                       R9 R9 K10 ["createElement"]
      100 GETUPVAL                         R10 10
      101 GETTABLEKS                       R10 R10 K22 ["Component"]
      103 DUPTABLE                         R11 K24 [{"CornerRadius", "Size"}]
      104 GETTABLEKS                       R12 R3 K25 ["Radius"]
      106 GETTABLEKS                       R12 R12 K26 ["Small"]
      108 SETTABLEKS                       R12 R11 K23 ["CornerRadius"]
      110 GETUPVAL                         R12 7
      111 SETTABLEKS                       R12 R11 K12 ["Size"]
      113 CALL                             R9 2 1
      114 MOVE                             R8 R9
      115 GETUPVAL                         R9 5
      116 GETTABLEKS                       R9 R9 K10 ["createElement"]
      118 GETUPVAL                         R10 11
      119 DUPTABLE                         R11 K32 [{["Position"], ["Size"], ["onActivated"], ["testId"] = "--start-page-SearchResultRow", ["tag"] = "row align-y-center gap-medium padding-x-large padding-y-medium"}]
      120 GETTABLEKS                       R12 R0 K27 ["Position"]
      122 SETTABLEKS                       R12 R11 K27 ["Position"]
      124 GETTABLEKS                       R12 R0 K12 ["Size"]
      126 SETTABLEKS                       R12 R11 K12 ["Size"]
      128 NEWCLOSURE                       R12 P0
      129 CAPTURE                          VAL R0
      130 CAPTURE                          VAL R4
      131 SETTABLEKS                       R12 R11 K28 ["onActivated"]
      133 DUPTABLE                         R12 K36 [{"PreviewImage", "LeftTextbox", "RightTextbox"}]
      134 SETTABLEKS                       R8 R12 K33 ["PreviewImage"]
      136 GETUPVAL                         R13 5
      137 GETTABLEKS                       R13 R13 K10 ["createElement"]
      139 GETUPVAL                         R14 11
      140 DUPTABLE                         R15 K38 [{["LayoutOrder"], ["tag"] = "col fill gap-small size-0-full auto-x"}]
      141 MOVE                             R16 R2
      142 CALL                             R16 0 1
      143 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      145 DUPTABLE                         R16 K42 [{"NameAndAgeRec", "UpdatedDate", "Description"}]
      146 GETUPVAL                         R17 5
      147 GETTABLEKS                       R17 R17 K10 ["createElement"]
      149 GETUPVAL                         R18 11
      150 DUPTABLE                         R19 K44 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-xsmall auto-xy"}]
      151 MOVE                             R20 R2
      152 CALL                             R20 0 1
      153 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      155 DUPTABLE                         R20 K47 [{"Name", "PrivacyOrAgeBadge"}]
      156 GETUPVAL                         R21 5
      157 GETTABLEKS                       R21 R21 K10 ["createElement"]
      159 GETUPVAL                         R22 12
      160 DUPTABLE                         R23 K50 [{["LayoutOrder"], ["Text"], ["tag"] = "fill auto-xy text-title-medium text-align-x-left text-truncate-split"}]
      161 MOVE                             R24 R2
      162 CALL                             R24 0 1
      163 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      165 GETTABLEKS                       R24 R4 K45 ["Name"]
      167 SETTABLEKS                       R24 R23 K48 ["Text"]
      169 CALL                             R21 2 1
      170 SETTABLEKS                       R21 R20 K45 ["Name"]
      172 JUMPIFNOT                        R5 ; [+15]
      173 GETUPVAL                         R21 5
      174 GETTABLEKS                       R21 R21 K10 ["createElement"]
      176 GETUPVAL                         R22 13
      177 DUPTABLE                         R23 K51 [{"LayoutOrder", "ReachStatus"}]
      178 MOVE                             R24 R2
      179 CALL                             R24 0 1
      180 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      182 GETTABLEKS                       R24 R4 K6 ["ReachStatus"]
      184 SETTABLEKS                       R24 R23 K6 ["ReachStatus"]
      186 CALL                             R21 2 1
      187 JUMP                             ; [+58]
      188 GETTABLEKS                       R22 R4 K52 ["PrivacyType"]
      190 JUMPIF                           R22 ; [+3]
      191 GETTABLEKS                       R22 R4 K53 ["Audiences"]
      193 JUMPIFNOT                        R22 ; [+51]
      194 GETUPVAL                         R21 5
      195 GETTABLEKS                       R21 R21 K10 ["createElement"]
      197 GETUPVAL                         R22 14
      198 DUPTABLE                         R23 K62 [{"LayoutOrder", "PrivacyType", "Audiences", "ContentMaturity", "IsFriendsOnly", "CreatorType", "CoreContentSelectStatus", "CoreContentReasons", "AgeRecommendation", "IsSequestered", "IsDiscoveryBlocked"}]
      199 MOVE                             R24 R2
      200 CALL                             R24 0 1
      201 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      203 GETTABLEKS                       R24 R4 K52 ["PrivacyType"]
      205 SETTABLEKS                       R24 R23 K52 ["PrivacyType"]
      207 GETTABLEKS                       R24 R4 K53 ["Audiences"]
      209 SETTABLEKS                       R24 R23 K53 ["Audiences"]
      211 GETTABLEKS                       R24 R4 K54 ["ContentMaturity"]
      213 SETTABLEKS                       R24 R23 K54 ["ContentMaturity"]
      215 GETTABLEKS                       R24 R4 K55 ["IsFriendsOnly"]
      217 SETTABLEKS                       R24 R23 K55 ["IsFriendsOnly"]
      219 GETTABLEKS                       R24 R4 K56 ["CreatorType"]
      221 SETTABLEKS                       R24 R23 K56 ["CreatorType"]
      223 GETTABLEKS                       R24 R4 K57 ["CoreContentSelectStatus"]
      225 SETTABLEKS                       R24 R23 K57 ["CoreContentSelectStatus"]
      227 GETTABLEKS                       R24 R4 K58 ["CoreContentReasons"]
      229 SETTABLEKS                       R24 R23 K58 ["CoreContentReasons"]
      231 GETTABLEKS                       R24 R4 K59 ["AgeRecommendation"]
      233 SETTABLEKS                       R24 R23 K59 ["AgeRecommendation"]
      235 GETTABLEKS                       R24 R4 K60 ["IsSequestered"]
      237 SETTABLEKS                       R24 R23 K60 ["IsSequestered"]
      239 GETTABLEKS                       R24 R4 K61 ["IsDiscoveryBlocked"]
      241 SETTABLEKS                       R24 R23 K61 ["IsDiscoveryBlocked"]
      243 CALL                             R21 2 1
      244 JUMP                             ; [+1]
      245 LOADNIL                          R21
      246 SETTABLEKS                       R21 R20 K46 ["PrivacyOrAgeBadge"]
      248 CALL                             R17 3 1
      249 SETTABLEKS                       R17 R16 K39 ["NameAndAgeRec"]
      251 JUMPIFNOT                        R6 ; [+21]
      252 GETUPVAL                         R17 5
      253 GETTABLEKS                       R17 R17 K10 ["createElement"]
      255 GETUPVAL                         R18 12
      256 DUPTABLE                         R19 K64 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-body-medium"}]
      257 MOVE                             R20 R2
      258 CALL                             R20 0 1
      259 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      261 LOADK                            R22 K65 ["Plugin"]
      262 LOADK                            R23 K66 ["LastModified"]
      263 DUPTABLE                         R24 K68 [{"lastModified"}]
      264 SETTABLEKS                       R6 R24 K67 ["lastModified"]
      266 NAMECALL                         R20 R1 K69 ["getText"]
      268 CALL                             R20 4 1
      269 SETTABLEKS                       R20 R19 K48 ["Text"]
      271 CALL                             R17 2 1
      272 JUMP                             ; [+1]
      273 LOADNIL                          R17
      274 SETTABLEKS                       R17 R16 K40 ["UpdatedDate"]
      276 GETUPVAL                         R17 5
      277 GETTABLEKS                       R17 R17 K10 ["createElement"]
      279 GETUPVAL                         R18 12
      280 DUPTABLE                         R19 K71 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-body-medium text-truncate-split"}]
      281 MOVE                             R20 R2
      282 CALL                             R20 0 1
      283 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      285 GETTABLEKS                       R21 R4 K41 ["Description"]
      287 ORK                              R20 R21 K72 [""]
      288 SETTABLEKS                       R20 R19 K48 ["Text"]
      290 CALL                             R17 2 1
      291 SETTABLEKS                       R17 R16 K41 ["Description"]
      293 CALL                             R13 3 1
      294 SETTABLEKS                       R13 R12 K34 ["LeftTextbox"]
      296 GETUPVAL                         R13 5
      297 GETTABLEKS                       R13 R13 K10 ["createElement"]
      299 GETUPVAL                         R14 8
      300 DUPTABLE                         R15 K74 [{["LayoutOrder"], ["tag"] = "col align-x-right grow gap-small size-0-full auto-x"}]
      301 MOVE                             R16 R2
      302 CALL                             R16 0 1
      303 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      305 DUPTABLE                         R16 K77 [{"CreatedDate", "CreatorName"}]
      306 JUMPIFNOT                        R7 ; [+21]
      307 GETUPVAL                         R17 5
      308 GETTABLEKS                       R17 R17 K10 ["createElement"]
      310 GETUPVAL                         R18 12
      311 DUPTABLE                         R19 K64 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-body-medium"}]
      312 MOVE                             R20 R2
      313 CALL                             R20 0 1
      314 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      316 LOADK                            R22 K65 ["Plugin"]
      317 LOADK                            R23 K8 ["Created"]
      318 DUPTABLE                         R24 K79 [{"created"}]
      319 SETTABLEKS                       R7 R24 K78 ["created"]
      321 NAMECALL                         R20 R1 K69 ["getText"]
      323 CALL                             R20 4 1
      324 SETTABLEKS                       R20 R19 K48 ["Text"]
      326 CALL                             R17 2 1
      327 JUMP                             ; [+1]
      328 LOADNIL                          R17
      329 SETTABLEKS                       R17 R16 K75 ["CreatedDate"]
      331 GETTABLEKS                       R18 R4 K76 ["CreatorName"]
      333 JUMPIFNOT                        R18 ; [+19]
      334 GETUPVAL                         R17 5
      335 GETTABLEKS                       R17 R17 K10 ["createElement"]
      337 GETUPVAL                         R18 12
      338 DUPTABLE                         R19 K64 [{["LayoutOrder"], ["Text"], ["tag"] = "auto-xy text-body-medium"}]
      339 MOVE                             R20 R2
      340 CALL                             R20 0 1
      341 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      343 LOADK                            R20 K80 ["@%*"]
      344 GETTABLEKS                       R22 R4 K76 ["CreatorName"]
      346 NAMECALL                         R20 R20 K81 ["format"]
      348 CALL                             R20 2 1
      349 SETTABLEKS                       R20 R19 K48 ["Text"]
      351 CALL                             R17 2 1
      352 JUMP                             ; [+1]
      353 LOADNIL                          R17
      354 SETTABLEKS                       R17 R16 K76 ["CreatorName"]
      356 CALL                             R13 3 1
      357 SETTABLEKS                       R13 R12 K35 ["RightTextbox"]
      359 CALL                             R9 3 -1
      360 RETURN                           R9 -1

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
       53 GETTABLEKS                       R10 R6 K20 ["Hooks"]
       55 GETTABLEKS                       R10 R10 K21 ["useTokens"]
       57 GETIMPORT                        R11 K5 [require]
       59 GETTABLEKS                       R12 R0 K13 ["Src"]
       61 GETTABLEKS                       R12 R12 K16 ["Foundation"]
       63 GETTABLEKS                       R12 R12 K14 ["Components"]
       65 GETTABLEKS                       R12 R12 K22 ["Frame"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K5 [require]
       70 GETTABLEKS                       R13 R0 K13 ["Src"]
       72 GETTABLEKS                       R13 R13 K11 ["Util"]
       74 GETTABLEKS                       R13 R13 K23 ["formatISOTimestamp"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K5 [require]
       79 GETTABLEKS                       R14 R0 K13 ["Src"]
       81 GETTABLEKS                       R14 R14 K14 ["Components"]
       83 GETTABLEKS                       R14 R14 K24 ["PrivacyStatusBadge"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K5 [require]
       88 GETTABLEKS                       R15 R0 K13 ["Src"]
       90 GETTABLEKS                       R15 R15 K14 ["Components"]
       92 GETTABLEKS                       R15 R15 K25 ["ReachStatusBadge"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K5 [require]
       97 GETTABLEKS                       R16 R0 K13 ["Src"]
       99 GETTABLEKS                       R16 R16 K11 ["Util"]
      101 GETTABLEKS                       R16 R16 K26 ["getReachStatusBadgePresentation"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K5 [require]
      106 GETTABLEKS                       R17 R0 K13 ["Src"]
      108 GETTABLEKS                       R17 R17 K27 ["Types"]
      110 CALL                             R16 1 1
      111 GETIMPORT                        R17 K30 [UDim2.new]
      113 LOADN                            R18 0
      114 LOADN                            R19 75
      115 LOADN                            R20 0
      116 LOADN                            R21 75
      117 CALL                             R17 4 1
      118 GETIMPORT                        R18 K30 [UDim2.new]
      120 LOADN                            R19 0
      121 LOADN                            R20 45
      122 LOADN                            R21 0
      123 LOADN                            R22 45
      124 CALL                             R18 4 1
      125 GETIMPORT                        R19 K30 [UDim2.new]
      127 LOADN                            R20 1
      128 LOADN                            R21 0
      129 LOADN                            R22 0
      130 LOADN                            R23 74
      131 CALL                             R19 4 1
      132 DUPCLOSURE                       R20 K31 [PROTO_1]
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R18
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R8
      146 CAPTURE                          VAL R14
      147 CAPTURE                          VAL R13
      148 DUPCLOSURE                       R21 K32 [PROTO_2]
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R11
      151 CAPTURE                          VAL R5
      152 CAPTURE                          VAL R19
      153 DUPCLOSURE                       R22 K33 [PROTO_3]
      154 CAPTURE                          VAL R21
      155 CAPTURE                          VAL R20
      156 RETURN                           R22 1
