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
      165 LOADK                            R19 K42 ["auto-xy row gap-xsmall"]
      166 SETTABLEKS                       R19 R18 K13 ["tag"]
      168 DUPTABLE                         R19 K45 [{"Name", "AgeRecommendation"}]
      169 GETUPVAL                         R20 4
      170 GETTABLEKS                       R20 R20 K9 ["createElement"]
      172 GETUPVAL                         R21 11
      173 DUPTABLE                         R22 K47 [{"LayoutOrder", "Text", "tag"}]
      174 MOVE                             R23 R2
      175 CALL                             R23 0 1
      176 SETTABLEKS                       R23 R22 K12 ["LayoutOrder"]
      178 GETTABLEKS                       R23 R4 K43 ["Name"]
      180 SETTABLEKS                       R23 R22 K46 ["Text"]
      182 LOADK                            R23 K48 ["auto-xy text-title-medium text-truncate-split text-align-x-left fill"]
      183 SETTABLEKS                       R23 R22 K13 ["tag"]
      185 CALL                             R20 2 1
      186 SETTABLEKS                       R20 R19 K43 ["Name"]
      188 GETTABLEKS                       R21 R4 K44 ["AgeRecommendation"]
      190 JUMPIFNOT                        R21 ; [+30]
      191 GETTABLEKS                       R22 R4 K44 ["AgeRecommendation"]
      193 FASTCALL1                        TONUMBER R22 ; [+2]
      194 GETIMPORT                        R21 K50 [tonumber]
      196 CALL                             R21 1 1
      197 JUMPIFNOTEQKN                    R21 K51 [18] ; [+23]
      199 GETUPVAL                         R20 4
      200 GETTABLEKS                       R20 R20 K9 ["createElement"]
      202 GETUPVAL                         R21 12
      203 DUPTABLE                         R22 K54 [{"LayoutOrder", "text", "variant"}]
      204 MOVE                             R23 R2
      205 CALL                             R23 0 1
      206 SETTABLEKS                       R23 R22 K12 ["LayoutOrder"]
      208 GETTABLEKS                       R24 R4 K44 ["AgeRecommendation"]
      210 LOADK                            R25 K55 ["+"]
      211 CONCAT                           R23 R24 R25
      212 SETTABLEKS                       R23 R22 K52 ["text"]
      214 GETUPVAL                         R23 13
      215 GETTABLEKS                       R23 R23 K56 ["Secondary"]
      217 SETTABLEKS                       R23 R22 K53 ["variant"]
      219 CALL                             R20 2 1
      220 JUMP                             ; [+1]
      221 LOADNIL                          R20
      222 SETTABLEKS                       R20 R19 K44 ["AgeRecommendation"]
      224 CALL                             R16 3 1
      225 SETTABLEKS                       R16 R15 K38 ["NameAndAgeRec"]
      227 JUMPIFNOT                        R5 ; [+24]
      228 GETUPVAL                         R16 4
      229 GETTABLEKS                       R16 R16 K9 ["createElement"]
      231 GETUPVAL                         R17 11
      232 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      233 MOVE                             R19 R2
      234 CALL                             R19 0 1
      235 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      237 LOADK                            R21 K57 ["Plugin"]
      238 LOADK                            R22 K58 ["LastModified"]
      239 DUPTABLE                         R23 K60 [{"lastModified"}]
      240 SETTABLEKS                       R5 R23 K59 ["lastModified"]
      242 NAMECALL                         R19 R1 K61 ["getText"]
      244 CALL                             R19 4 1
      245 SETTABLEKS                       R19 R18 K46 ["Text"]
      247 LOADK                            R19 K62 ["auto-xy text-body-medium"]
      248 SETTABLEKS                       R19 R18 K13 ["tag"]
      250 CALL                             R16 2 1
      251 JUMP                             ; [+1]
      252 LOADNIL                          R16
      253 SETTABLEKS                       R16 R15 K39 ["UpdatedDate"]
      255 GETUPVAL                         R16 4
      256 GETTABLEKS                       R16 R16 K9 ["createElement"]
      258 GETUPVAL                         R17 11
      259 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      260 MOVE                             R19 R2
      261 CALL                             R19 0 1
      262 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      264 GETTABLEKS                       R20 R4 K40 ["Description"]
      266 ORK                              R19 R20 K63 [""]
      267 SETTABLEKS                       R19 R18 K46 ["Text"]
      269 LOADK                            R19 K64 ["auto-xy text-body-medium text-truncate-split"]
      270 SETTABLEKS                       R19 R18 K13 ["tag"]
      272 CALL                             R16 2 1
      273 SETTABLEKS                       R16 R15 K40 ["Description"]
      275 CALL                             R12 3 1
      276 SETTABLEKS                       R12 R11 K33 ["LeftTextbox"]
      278 GETUPVAL                         R12 4
      279 GETTABLEKS                       R12 R12 K9 ["createElement"]
      281 GETUPVAL                         R13 7
      282 DUPTABLE                         R14 K36 [{"LayoutOrder", "tag"}]
      283 MOVE                             R15 R2
      284 CALL                             R15 0 1
      285 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
      287 LOADK                            R15 K65 ["col gap-small grow align-x-right auto-x size-0-full"]
      288 SETTABLEKS                       R15 R14 K13 ["tag"]
      290 DUPTABLE                         R15 K68 [{"CreatedDate", "CreatorName"}]
      291 JUMPIFNOT                        R6 ; [+24]
      292 GETUPVAL                         R16 4
      293 GETTABLEKS                       R16 R16 K9 ["createElement"]
      295 GETUPVAL                         R17 11
      296 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      297 MOVE                             R19 R2
      298 CALL                             R19 0 1
      299 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      301 LOADK                            R21 K57 ["Plugin"]
      302 LOADK                            R22 K7 ["Created"]
      303 DUPTABLE                         R23 K70 [{"created"}]
      304 SETTABLEKS                       R6 R23 K69 ["created"]
      306 NAMECALL                         R19 R1 K61 ["getText"]
      308 CALL                             R19 4 1
      309 SETTABLEKS                       R19 R18 K46 ["Text"]
      311 LOADK                            R19 K62 ["auto-xy text-body-medium"]
      312 SETTABLEKS                       R19 R18 K13 ["tag"]
      314 CALL                             R16 2 1
      315 JUMP                             ; [+1]
      316 LOADNIL                          R16
      317 SETTABLEKS                       R16 R15 K66 ["CreatedDate"]
      319 GETTABLEKS                       R17 R4 K67 ["CreatorName"]
      321 JUMPIFNOT                        R17 ; [+23]
      322 GETUPVAL                         R16 4
      323 GETTABLEKS                       R16 R16 K9 ["createElement"]
      325 GETUPVAL                         R17 11
      326 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "tag"}]
      327 MOVE                             R19 R2
      328 CALL                             R19 0 1
      329 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      331 LOADK                            R20 K71 ["@%*"]
      332 GETTABLEKS                       R22 R4 K67 ["CreatorName"]
      334 NAMECALL                         R20 R20 K72 ["format"]
      336 CALL                             R20 2 1
      337 MOVE                             R19 R20
      338 SETTABLEKS                       R19 R18 K46 ["Text"]
      340 LOADK                            R19 K62 ["auto-xy text-body-medium"]
      341 SETTABLEKS                       R19 R18 K13 ["tag"]
      343 CALL                             R16 2 1
      344 JUMP                             ; [+1]
      345 LOADNIL                          R16
      346 SETTABLEKS                       R16 R15 K67 ["CreatorName"]
      348 CALL                             R12 3 1
      349 SETTABLEKS                       R12 R11 K34 ["RightTextbox"]
      351 CALL                             R8 3 -1
      352 RETURN                           R8 -1

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
       87 GETTABLEKS                       R16 R16 K27 ["Types"]
       89 CALL                             R15 1 1
       90 GETIMPORT                        R16 K30 [UDim2.new]
       92 LOADN                            R17 0
       93 LOADN                            R18 75
       94 LOADN                            R19 0
       95 LOADN                            R20 75
       96 CALL                             R16 4 1
       97 GETIMPORT                        R17 K30 [UDim2.new]
       99 LOADN                            R18 0
      100 LOADN                            R19 45
      101 LOADN                            R20 0
      102 LOADN                            R21 45
      103 CALL                             R17 4 1
      104 GETIMPORT                        R18 K30 [UDim2.new]
      106 LOADN                            R19 1
      107 LOADN                            R20 0
      108 LOADN                            R21 0
      109 LOADN                            R22 74
      110 CALL                             R18 4 1
      111 DUPCLOSURE                       R19 K31 [PROTO_1]
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R16
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R12
      126 DUPCLOSURE                       R20 K32 [PROTO_2]
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R18
      131 DUPCLOSURE                       R21 K33 [PROTO_3]
      132 CAPTURE                          VAL R20
      133 CAPTURE                          VAL R19
      134 RETURN                           R21 1
