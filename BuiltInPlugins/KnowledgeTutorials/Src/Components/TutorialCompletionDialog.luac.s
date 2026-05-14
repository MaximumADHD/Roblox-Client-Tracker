PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKN                       R0 K1 [0] ; [+10]
        5 GETIMPORT                        R0 K3 [pcall]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["current"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["current"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [1] ; [+5]
        3 GETUPVAL                         R0 1
        4 LOADN                            R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 LOADN                            R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [-1] ; [+5]
        3 GETUPVAL                         R0 1
        4 LOADN                            R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 LOADN                            R1 255
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["tutorialInfo"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useState"]
        8 LOADN                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["useRef"]
       13 MOVE                             R5 R2
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K2 ["useRef"]
       18 GETTABLEKS                       R6 R0 K3 ["onRate"]
       20 CALL                             R5 1 1
       21 GETTABLEKS                       R6 R0 K3 ["onRate"]
       23 SETTABLEKS                       R6 R5 K4 ["current"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K5 ["useEffect"]
       28 NEWCLOSURE                       R7 P0
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R2
       31 NEWTABLE                         R8 0 1
       33 MOVE                             R9 R2
       34 SETLIST                          R8 R9 1 [1]
       36 CALL                             R6 2 0
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K5 ["useEffect"]
       40 NEWCLOSURE                       R7 P1
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 NEWTABLE                         R8 0 0
       45 CALL                             R6 2 0
       46 GETUPVAL                         R6 1
       47 NAMECALL                         R6 R6 K6 ["use"]
       49 CALL                             R6 1 1
       50 GETUPVAL                         R7 2
       51 GETTABLEKS                       R7 R7 K7 ["Hooks"]
       53 GETTABLEKS                       R7 R7 K8 ["useTokens"]
       55 CALL                             R7 0 1
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R8 R8 K9 ["createElement"]
       59 GETUPVAL                         R9 3
       60 DUPTABLE                         R10 K12 [{"ZIndex", "tag"}]
       61 LOADN                            R11 0
       62 SETTABLEKS                       R11 R10 K10 ["ZIndex"]
       64 LOADK                            R11 K13 ["col align-y-center align-x-center flex-evenly gap-small size-full padding-large bg-surface-200"]
       65 SETTABLEKS                       R11 R10 K11 ["tag"]
       67 DUPTABLE                         R11 K19 [{"Image", "Heading", "Subheading", "Divider", "ActionsRow"}]
       68 GETUPVAL                         R12 0
       69 GETTABLEKS                       R12 R12 K9 ["createElement"]
       71 GETUPVAL                         R13 4
       72 DUPTABLE                         R14 K21 [{"LayoutOrder", "Image", "tag"}]
       73 LOADN                            R15 0
       74 SETTABLEKS                       R15 R14 K20 ["LayoutOrder"]
       76 LOADK                            R15 K22 ["icons/graphic/success_xlarge"]
       77 SETTABLEKS                       R15 R14 K14 ["Image"]
       79 LOADK                            R15 K23 ["size-2000"]
       80 SETTABLEKS                       R15 R14 K11 ["tag"]
       82 CALL                             R12 2 1
       83 SETTABLEKS                       R12 R11 K14 ["Image"]
       85 GETUPVAL                         R12 0
       86 GETTABLEKS                       R12 R12 K9 ["createElement"]
       88 GETUPVAL                         R13 5
       89 DUPTABLE                         R14 K25 [{"LayoutOrder", "Text", "tag"}]
       90 LOADN                            R15 1
       91 SETTABLEKS                       R15 R14 K20 ["LayoutOrder"]
       93 LOADK                            R17 K26 ["Plugin"]
       94 LOADK                            R18 K27 ["Congratulations"]
       95 DUPTABLE                         R19 K29 [{"tutorialTitle"}]
       96 GETTABLEKS                       R20 R1 K30 ["title"]
       98 SETTABLEKS                       R20 R19 K28 ["tutorialTitle"]
      100 NAMECALL                         R15 R6 K31 ["getText"]
      102 CALL                             R15 4 1
      103 SETTABLEKS                       R15 R14 K24 ["Text"]
      105 LOADK                            R15 K32 ["text-heading-medium size-full-0 text-align-x-center auto-y"]
      106 SETTABLEKS                       R15 R14 K11 ["tag"]
      108 CALL                             R12 2 1
      109 SETTABLEKS                       R12 R11 K15 ["Heading"]
      111 GETUPVAL                         R12 0
      112 GETTABLEKS                       R12 R12 K9 ["createElement"]
      114 GETUPVAL                         R13 5
      115 DUPTABLE                         R14 K25 [{"LayoutOrder", "Text", "tag"}]
      116 LOADN                            R15 2
      117 SETTABLEKS                       R15 R14 K20 ["LayoutOrder"]
      119 LOADK                            R17 K26 ["Plugin"]
      120 LOADK                            R18 K33 ["YouveCompleted"]
      121 DUPTABLE                         R19 K29 [{"tutorialTitle"}]
      122 GETTABLEKS                       R20 R1 K30 ["title"]
      124 SETTABLEKS                       R20 R19 K28 ["tutorialTitle"]
      126 NAMECALL                         R15 R6 K31 ["getText"]
      128 CALL                             R15 4 1
      129 SETTABLEKS                       R15 R14 K24 ["Text"]
      131 LOADK                            R15 K34 ["text-body-large size-full-0 text-wrap text-align-x-center auto-y"]
      132 SETTABLEKS                       R15 R14 K11 ["tag"]
      134 CALL                             R12 2 1
      135 SETTABLEKS                       R12 R11 K16 ["Subheading"]
      137 GETUPVAL                         R12 0
      138 GETTABLEKS                       R12 R12 K9 ["createElement"]
      140 GETUPVAL                         R13 6
      141 DUPTABLE                         R14 K35 [{"LayoutOrder"}]
      142 LOADN                            R15 9
      143 SETTABLEKS                       R15 R14 K20 ["LayoutOrder"]
      145 CALL                             R12 2 1
      146 SETTABLEKS                       R12 R11 K17 ["Divider"]
      148 GETUPVAL                         R12 0
      149 GETTABLEKS                       R12 R12 K9 ["createElement"]
      151 GETUPVAL                         R13 3
      152 DUPTABLE                         R14 K36 [{"LayoutOrder", "tag"}]
      153 LOADN                            R15 10
      154 SETTABLEKS                       R15 R14 K20 ["LayoutOrder"]
      156 LOADK                            R15 K37 ["auto-y size-full-0 row flex-between align-y-center gap-medium"]
      157 SETTABLEKS                       R15 R14 K11 ["tag"]
      159 DUPTABLE                         R15 K40 [{"Rating", "Buttons"}]
      160 GETUPVAL                         R16 0
      161 GETTABLEKS                       R16 R16 K9 ["createElement"]
      163 GETUPVAL                         R17 3
      164 DUPTABLE                         R18 K36 [{"LayoutOrder", "tag"}]
      165 LOADN                            R19 1
      166 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
      168 LOADK                            R19 K41 ["row gap-small align-x-left align-y-center auto-x size-0-1000"]
      169 SETTABLEKS                       R19 R18 K11 ["tag"]
      171 DUPTABLE                         R19 K44 [{"RatingText", "VoteButtons"}]
      172 GETUPVAL                         R20 0
      173 GETTABLEKS                       R20 R20 K9 ["createElement"]
      175 GETUPVAL                         R21 5
      176 DUPTABLE                         R22 K25 [{"LayoutOrder", "Text", "tag"}]
      177 LOADN                            R23 0
      178 SETTABLEKS                       R23 R22 K20 ["LayoutOrder"]
      180 LOADK                            R25 K26 ["Plugin"]
      181 LOADK                            R26 K45 ["RatingPrompt"]
      182 NAMECALL                         R23 R6 K31 ["getText"]
      184 CALL                             R23 3 1
      185 SETTABLEKS                       R23 R22 K24 ["Text"]
      187 LOADK                            R23 K46 ["text-body-medium content-muted text-align-x-center auto-xy"]
      188 SETTABLEKS                       R23 R22 K11 ["tag"]
      190 CALL                             R20 2 1
      191 SETTABLEKS                       R20 R19 K42 ["RatingText"]
      193 GETUPVAL                         R20 0
      194 GETTABLEKS                       R20 R20 K9 ["createElement"]
      196 GETUPVAL                         R21 3
      197 DUPTABLE                         R22 K36 [{"LayoutOrder", "tag"}]
      198 LOADN                            R23 1
      199 SETTABLEKS                       R23 R22 K20 ["LayoutOrder"]
      201 LOADK                            R23 K47 ["auto-xy"]
      202 SETTABLEKS                       R23 R22 K11 ["tag"]
      204 DUPTABLE                         R23 K50 [{"Upvote", "Downvote"}]
      205 GETUPVAL                         R24 0
      206 GETTABLEKS                       R24 R24 K9 ["createElement"]
      208 GETUPVAL                         R25 4
      209 DUPTABLE                         R26 K53 [{"Image", "tag", "imageStyle", "onActivated"}]
      210 LOADK                            R27 K54 ["rbxasset://textures/DeveloperFramework/Votes/rating_up_white.png"]
      211 SETTABLEKS                       R27 R26 K14 ["Image"]
      213 LOADK                            R27 K55 ["size-400"]
      214 SETTABLEKS                       R27 R26 K11 ["tag"]
      216 JUMPIFNOTEQKN                    R2 K56 [1] ; [+10]
      218 GETTABLEKS                       R27 R7 K57 ["Color"]
      220 GETTABLEKS                       R27 R27 K58 ["Extended"]
      222 GETTABLEKS                       R27 R27 K59 ["Green"]
      224 GETTABLEKS                       R27 R27 K60 ["Green_500"]
      226 JUMP                             ; [+6]
      227 GETTABLEKS                       R27 R7 K57 ["Color"]
      229 GETTABLEKS                       R27 R27 K61 ["Content"]
      231 GETTABLEKS                       R27 R27 K62 ["Muted"]
      233 SETTABLEKS                       R27 R26 K51 ["imageStyle"]
      235 NEWCLOSURE                       R27 P2
      236 CAPTURE                          VAL R2
      237 CAPTURE                          VAL R3
      238 SETTABLEKS                       R27 R26 K52 ["onActivated"]
      240 CALL                             R24 2 1
      241 SETTABLEKS                       R24 R23 K48 ["Upvote"]
      243 GETUPVAL                         R24 0
      244 GETTABLEKS                       R24 R24 K9 ["createElement"]
      246 GETUPVAL                         R25 4
      247 DUPTABLE                         R26 K65 [{"Image", "Rotation", "Position", "tag", "imageStyle", "onActivated"}]
      248 LOADK                            R27 K54 ["rbxasset://textures/DeveloperFramework/Votes/rating_up_white.png"]
      249 SETTABLEKS                       R27 R26 K14 ["Image"]
      251 LOADN                            R27 180
      252 SETTABLEKS                       R27 R26 K63 ["Rotation"]
      254 GETIMPORT                        R27 K68 [UDim2.fromOffset]
      256 LOADN                            R28 20
      257 LOADN                            R29 0
      258 CALL                             R27 2 1
      259 SETTABLEKS                       R27 R26 K64 ["Position"]
      261 LOADK                            R27 K55 ["size-400"]
      262 SETTABLEKS                       R27 R26 K11 ["tag"]
      264 JUMPIFNOTEQKN                    R2 K69 [-1] ; [+10]
      266 GETTABLEKS                       R27 R7 K57 ["Color"]
      268 GETTABLEKS                       R27 R27 K58 ["Extended"]
      270 GETTABLEKS                       R27 R27 K70 ["Red"]
      272 GETTABLEKS                       R27 R27 K71 ["Red_600"]
      274 JUMP                             ; [+6]
      275 GETTABLEKS                       R27 R7 K57 ["Color"]
      277 GETTABLEKS                       R27 R27 K61 ["Content"]
      279 GETTABLEKS                       R27 R27 K62 ["Muted"]
      281 SETTABLEKS                       R27 R26 K51 ["imageStyle"]
      283 NEWCLOSURE                       R27 P3
      284 CAPTURE                          VAL R2
      285 CAPTURE                          VAL R3
      286 SETTABLEKS                       R27 R26 K52 ["onActivated"]
      288 CALL                             R24 2 1
      289 SETTABLEKS                       R24 R23 K49 ["Downvote"]
      291 CALL                             R20 3 1
      292 SETTABLEKS                       R20 R19 K43 ["VoteButtons"]
      294 CALL                             R16 3 1
      295 SETTABLEKS                       R16 R15 K38 ["Rating"]
      297 GETUPVAL                         R16 0
      298 GETTABLEKS                       R16 R16 K9 ["createElement"]
      300 GETUPVAL                         R17 3
      301 DUPTABLE                         R18 K36 [{"LayoutOrder", "tag"}]
      302 LOADN                            R19 2
      303 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
      305 LOADK                            R19 K72 ["auto-xy row align-x-right align-y-bottom gap-medium"]
      306 SETTABLEKS                       R19 R18 K11 ["tag"]
      308 DUPTABLE                         R19 K75 [{"RestartButton", "CloseButton"}]
      309 GETUPVAL                         R20 0
      310 GETTABLEKS                       R20 R20 K9 ["createElement"]
      312 GETUPVAL                         R21 7
      313 DUPTABLE                         R22 K78 [{"LayoutOrder", "text", "variant", "onActivated"}]
      314 LOADN                            R23 0
      315 SETTABLEKS                       R23 R22 K20 ["LayoutOrder"]
      317 LOADK                            R25 K26 ["Plugin"]
      318 LOADK                            R26 K79 ["Restart"]
      319 NAMECALL                         R23 R6 K31 ["getText"]
      321 CALL                             R23 3 1
      322 SETTABLEKS                       R23 R22 K76 ["text"]
      324 GETUPVAL                         R23 2
      325 GETTABLEKS                       R23 R23 K80 ["Enums"]
      327 GETTABLEKS                       R23 R23 K81 ["ButtonVariant"]
      329 GETTABLEKS                       R23 R23 K82 ["Standard"]
      331 SETTABLEKS                       R23 R22 K77 ["variant"]
      333 GETTABLEKS                       R23 R0 K83 ["onRestart"]
      335 SETTABLEKS                       R23 R22 K52 ["onActivated"]
      337 CALL                             R20 2 1
      338 SETTABLEKS                       R20 R19 K73 ["RestartButton"]
      340 GETUPVAL                         R20 0
      341 GETTABLEKS                       R20 R20 K9 ["createElement"]
      343 GETUPVAL                         R21 7
      344 DUPTABLE                         R22 K85 [{"LayoutOrder", "text", "variant", "size", "onActivated"}]
      345 LOADN                            R23 1
      346 SETTABLEKS                       R23 R22 K20 ["LayoutOrder"]
      348 LOADK                            R25 K26 ["Plugin"]
      349 LOADK                            R26 K86 ["Close"]
      350 NAMECALL                         R23 R6 K31 ["getText"]
      352 CALL                             R23 3 1
      353 SETTABLEKS                       R23 R22 K76 ["text"]
      355 GETUPVAL                         R23 2
      356 GETTABLEKS                       R23 R23 K80 ["Enums"]
      358 GETTABLEKS                       R23 R23 K81 ["ButtonVariant"]
      360 GETTABLEKS                       R23 R23 K87 ["Emphasis"]
      362 SETTABLEKS                       R23 R22 K77 ["variant"]
      364 GETUPVAL                         R23 2
      365 GETTABLEKS                       R23 R23 K80 ["Enums"]
      367 GETTABLEKS                       R23 R23 K88 ["InputSize"]
      369 GETTABLEKS                       R23 R23 K89 ["Medium"]
      371 SETTABLEKS                       R23 R22 K84 ["size"]
      373 GETTABLEKS                       R23 R0 K90 ["onClose"]
      375 SETTABLEKS                       R23 R22 K52 ["onActivated"]
      377 CALL                             R20 2 1
      378 SETTABLEKS                       R20 R19 K74 ["CloseButton"]
      380 CALL                             R16 3 1
      381 SETTABLEKS                       R16 R15 K39 ["Buttons"]
      383 CALL                             R12 3 1
      384 SETTABLEKS                       R12 R11 K18 ["ActionsRow"]
      386 CALL                             R8 3 -1
      387 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Packages"]
       32 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K12 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K13 ["Localization"]
       39 GETTABLEKS                       R7 R4 K14 ["Text"]
       41 GETTABLEKS                       R8 R4 K15 ["Image"]
       43 GETTABLEKS                       R9 R4 K16 ["View"]
       45 GETTABLEKS                       R10 R4 K17 ["Button"]
       47 GETTABLEKS                       R11 R4 K18 ["Divider"]
       49 DUPCLOSURE                       R12 K19 [PROTO_5]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R11
       57 CAPTURE                          VAL R10
       58 RETURN                           R12 1
