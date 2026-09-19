PROTO_0:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R3 R2 K1 ["Mouse"]
        5 LOADK                            R5 K2 ["SizeAll"]
        6 NAMECALL                         R3 R3 K3 ["__pushCursor"]
        8 CALL                             R3 2 0
        9 JUMP                             ; [+5]
       10 GETTABLEKS                       R3 R2 K1 ["Mouse"]
       12 NAMECALL                         R3 R3 K4 ["__resetCursor"]
       14 CALL                             R3 1 0
       15 DUPTABLE                         R5 K6 [{"Hovering"}]
       16 SETTABLEKS                       R1 R5 K5 ["Hovering"]
       18 NAMECALL                         R3 R0 K7 ["setState"]
       20 CALL                             R3 2 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 1
        2 NAMECALL                         R0 R0 K0 ["mouseHoverChanged"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["DragMove"]
        8 DUPTABLE                         R1 K4 [{"index", "thumbnailId"}]
        9 GETUPVAL                         R2 2
       10 SETTABLEKS                       R2 R1 K2 ["index"]
       12 GETUPVAL                         R2 3
       13 SETTABLEKS                       R2 R1 K3 ["thumbnailId"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["mouseHoverChanged"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["StartDragging"]
        3 DUPTABLE                         R1 K3 [{"index", "thumbnailId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["index"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["thumbnailId"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PromptPreviewThumbnail"]
        3 DUPTABLE                         R1 K5 [{"index", "thumbnailId", "videoHash", "image"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["index"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["thumbnailId"]
       10 GETUPVAL                         R2 3
       11 SETTABLEKS                       R2 R1 K3 ["videoHash"]
       13 GETUPVAL                         R2 4
       14 SETTABLEKS                       R2 R1 K4 ["image"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PromptDeleteThumbnail"]
        3 DUPTABLE                         R1 K2 [{"thumbnailId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["thumbnailId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Theme"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["VideoHash"]
        8 GETTABLEKS                       R5 R1 K4 ["VideoTitle"]
       10 GETTABLEKS                       R7 R1 K6 ["InReview"]
       12 ORK                              R6 R7 K5 [False]
       13 GETTABLEKS                       R8 R1 K7 ["IsModerated"]
       15 ORK                              R7 R8 K5 [False]
       16 GETTABLEKS                       R9 R1 K8 ["Preview"]
       18 ORK                              R8 R9 K5 [False]
       19 GETTABLEKS                       R9 R0 K9 ["state"]
       21 GETTABLEKS                       R9 R9 K10 ["Hovering"]
       23 GETTABLEKS                       R11 R1 K12 ["LayoutOrder"]
       25 ORK                              R10 R11 K11 [1]
       26 GETTABLEKS                       R11 R1 K13 ["Id"]
       28 GETTABLEKS                       R12 R1 K14 ["HoverBarEnabled"]
       30 JUMPIFNOT                        R7 ; [+3]
       31 GETTABLEKS                       R13 R2 K15 ["ModeratedImage"]
       33 JUMP                             ; [+7]
       34 JUMPIFEQKNIL                     R4 ; [+4]
       36 GETTABLEKS                       R13 R2 K16 ["VideoPlaceholder"]
       38 JUMP                             ; [+2]
       39 GETTABLEKS                       R13 R1 K17 ["Image"]
       41 JUMPIFNOT                        R7 ; [+7]
       42 GETUPVAL                         R16 0
       43 LOADK                            R17 K18 ["MultiImagePicker"]
       44 LOADK                            R18 K19 ["ImageModerated"]
       45 NAMECALL                         R14 R3 K20 ["getProjectText"]
       47 CALL                             R14 4 1
       48 JUMP                             ; [+17]
       49 JUMPIFNOT                        R8 ; [+7]
       50 GETUPVAL                         R16 0
       51 LOADK                            R17 K18 ["MultiImagePicker"]
       52 LOADK                            R18 K21 ["ImagePreview"]
       53 NAMECALL                         R14 R3 K20 ["getProjectText"]
       55 CALL                             R14 4 1
       56 JUMP                             ; [+9]
       57 JUMPIFNOT                        R6 ; [+7]
       58 GETUPVAL                         R16 0
       59 LOADK                            R17 K18 ["MultiImagePicker"]
       60 LOADK                            R18 K22 ["ImageReview"]
       61 NAMECALL                         R14 R3 K20 ["getProjectText"]
       63 CALL                             R14 4 1
       64 JUMP                             ; [+1]
       65 LOADNIL                          R14
       66 GETUPVAL                         R15 1
       67 GETTABLEKS                       R15 R15 K23 ["createElement"]
       69 LOADK                            R16 K24 ["ImageButton"]
       70 NEWTABLE                         R17 16 0
       72 GETIMPORT                        R18 K27 [UDim2.new]
       74 LOADN                            R19 1
       75 LOADN                            R20 0
       76 LOADN                            R21 1
       77 LOADN                            R22 0
       78 CALL                             R18 4 1
       79 SETTABLEKS                       R18 R17 K28 ["Size"]
       81 LOADN                            R18 1
       82 SETTABLEKS                       R18 R17 K29 ["BackgroundTransparency"]
       84 SETTABLEKS                       R10 R17 K12 ["LayoutOrder"]
       86 SETTABLEKS                       R13 R17 K17 ["Image"]
       88 JUMPIFEQKNIL                     R4 ; [+6]
       90 GETTABLEKS                       R18 R2 K30 ["Thumbnail"]
       92 GETTABLEKS                       R18 R18 K31 ["Background"]
       94 JUMPIF                           R18 ; [+1]
       95 LOADNIL                          R18
       96 SETTABLEKS                       R18 R17 K32 ["ImageColor3"]
       98 GETIMPORT                        R18 K36 [Enum.ScaleType.Fit]
      100 SETTABLEKS                       R18 R17 K34 ["ScaleType"]
      102 GETUPVAL                         R18 1
      103 GETTABLEKS                       R18 R18 K37 ["Ref"]
      105 GETTABLEKS                       R19 R0 K38 ["buttonRef"]
      107 SETTABLE                         R19 R17 R18
      108 GETUPVAL                         R18 1
      109 GETTABLEKS                       R18 R18 K39 ["Event"]
      111 GETTABLEKS                       R18 R18 K40 ["MouseEnter"]
      113 NEWCLOSURE                       R19 P0
      114 CAPTURE                          VAL R0
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R11
      118 SETTABLE                         R19 R17 R18
      119 GETUPVAL                         R18 1
      120 GETTABLEKS                       R18 R18 K39 ["Event"]
      122 GETTABLEKS                       R18 R18 K41 ["MouseLeave"]
      124 NEWCLOSURE                       R19 P1
      125 CAPTURE                          VAL R0
      126 SETTABLE                         R19 R17 R18
      127 GETUPVAL                         R18 1
      128 GETTABLEKS                       R18 R18 K39 ["Event"]
      130 GETTABLEKS                       R18 R18 K42 ["MouseButton1Down"]
      132 NEWCLOSURE                       R19 P2
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R11
      136 SETTABLE                         R19 R17 R18
      137 DUPTABLE                         R18 K46 [{"InfoText", "TitleFrame", "HoverBar"}]
      138 GETUPVAL                         R19 1
      139 GETTABLEKS                       R19 R19 K23 ["createElement"]
      141 LOADK                            R20 K47 ["TextLabel"]
      142 GETUPVAL                         R21 2
      143 GETTABLEKS                       R21 R21 K48 ["Dictionary"]
      145 GETTABLEKS                       R21 R21 K49 ["join"]
      147 GETTABLEKS                       R22 R2 K50 ["FontStyle"]
      149 GETTABLEKS                       R22 R22 K51 ["Normal"]
      151 DUPTABLE                         R23 K61 [{["Visible"], ["BackgroundTransparency"] = 0.3, ["BorderSizePixel"] = 0, ["BackgroundColor3"], ["TextColor3"], ["Size"], ["Position"], ["AnchorPoint"], ["Text"]}]
      152 LOADB                            R24 0
      153 JUMPIFEQKNIL                     R14 ; [+3]
      155 AND                              R25 R12 R9
      156 NOT                              R24 R25
      157 SETTABLEKS                       R24 R23 K52 ["Visible"]
      159 GETTABLEKS                       R24 R2 K62 ["Colors"]
      161 GETTABLEKS                       R24 R24 K63 ["Black"]
      163 SETTABLEKS                       R24 R23 K56 ["BackgroundColor3"]
      165 GETTABLEKS                       R24 R2 K62 ["Colors"]
      167 GETTABLEKS                       R24 R24 K64 ["White"]
      169 SETTABLEKS                       R24 R23 K57 ["TextColor3"]
      171 GETIMPORT                        R24 K27 [UDim2.new]
      173 LOADN                            R25 1
      174 LOADN                            R26 0
      175 LOADN                            R27 0
      176 LOADN                            R28 30
      177 CALL                             R24 4 1
      178 SETTABLEKS                       R24 R23 K28 ["Size"]
      180 GETIMPORT                        R24 K27 [UDim2.new]
      182 LOADN                            R25 0
      183 LOADN                            R26 0
      184 LOADN                            R27 1
      185 LOADN                            R28 0
      186 CALL                             R24 4 1
      187 SETTABLEKS                       R24 R23 K58 ["Position"]
      189 GETIMPORT                        R24 K66 [Vector2.new]
      191 LOADN                            R25 0
      192 LOADN                            R26 1
      193 CALL                             R24 2 1
      194 SETTABLEKS                       R24 R23 K59 ["AnchorPoint"]
      196 SETTABLEKS                       R14 R23 K60 ["Text"]
      198 CALL                             R21 2 -1
      199 CALL                             R19 -1 1
      200 SETTABLEKS                       R19 R18 K43 ["InfoText"]
      202 GETUPVAL                         R19 1
      203 GETTABLEKS                       R19 R19 K23 ["createElement"]
      205 LOADK                            R20 K67 ["Frame"]
      206 DUPTABLE                         R21 K68 [{["Visible"], ["BackgroundTransparency"] = 0.3, ["BorderSizePixel"] = 0, ["BackgroundColor3"], ["Size"]}]
      207 JUMPIFNOTEQKNIL                  R5 ; [+2]
      209 LOADB                            R22 0 +1
      210 LOADB                            R22 1
      211 SETTABLEKS                       R22 R21 K52 ["Visible"]
      213 GETTABLEKS                       R22 R2 K62 ["Colors"]
      215 GETTABLEKS                       R22 R22 K63 ["Black"]
      217 SETTABLEKS                       R22 R21 K56 ["BackgroundColor3"]
      219 GETIMPORT                        R22 K27 [UDim2.new]
      221 LOADN                            R23 1
      222 LOADN                            R24 0
      223 LOADN                            R25 0
      224 LOADN                            R26 30
      225 CALL                             R22 4 1
      226 SETTABLEKS                       R22 R21 K28 ["Size"]
      228 DUPTABLE                         R22 K70 [{"TitleText"}]
      229 GETUPVAL                         R23 1
      230 GETTABLEKS                       R23 R23 K23 ["createElement"]
      232 LOADK                            R24 K47 ["TextLabel"]
      233 GETUPVAL                         R25 2
      234 GETTABLEKS                       R25 R25 K48 ["Dictionary"]
      236 GETTABLEKS                       R25 R25 K49 ["join"]
      238 GETTABLEKS                       R26 R2 K50 ["FontStyle"]
      240 GETTABLEKS                       R26 R26 K51 ["Normal"]
      242 DUPTABLE                         R27 K73 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["AnchorPoint"], ["Text"], ["TextTruncate"], ["TextXAlignment"]}]
      243 GETIMPORT                        R28 K27 [UDim2.new]
      245 LOADN                            R29 1
      246 LOADN                            R30 -20
      247 LOADN                            R31 1
      248 LOADN                            R32 0
      249 CALL                             R28 4 1
      250 SETTABLEKS                       R28 R27 K28 ["Size"]
      252 GETIMPORT                        R28 K27 [UDim2.new]
      254 LOADK                            R29 K74 [0.5]
      255 LOADN                            R30 0
      256 LOADN                            R31 0
      257 LOADN                            R32 0
      258 CALL                             R28 4 1
      259 SETTABLEKS                       R28 R27 K58 ["Position"]
      261 GETIMPORT                        R28 K66 [Vector2.new]
      263 LOADK                            R29 K74 [0.5]
      264 LOADN                            R30 0
      265 CALL                             R28 2 1
      266 SETTABLEKS                       R28 R27 K59 ["AnchorPoint"]
      268 SETTABLEKS                       R5 R27 K60 ["Text"]
      270 GETIMPORT                        R28 K76 [Enum.TextTruncate.AtEnd]
      272 SETTABLEKS                       R28 R27 K71 ["TextTruncate"]
      274 GETIMPORT                        R28 K78 [Enum.TextXAlignment.Left]
      276 SETTABLEKS                       R28 R27 K72 ["TextXAlignment"]
      278 CALL                             R25 2 -1
      279 CALL                             R23 -1 1
      280 SETTABLEKS                       R23 R22 K69 ["TitleText"]
      282 CALL                             R19 3 1
      283 SETTABLEKS                       R19 R18 K44 ["TitleFrame"]
      285 GETUPVAL                         R19 1
      286 GETTABLEKS                       R19 R19 K23 ["createElement"]
      288 GETUPVAL                         R20 3
      289 DUPTABLE                         R21 K82 [{"Enabled", "PromptPreviewThumbnail", "PromptDeleteThumbnail", "Theme"}]
      290 AND                              R22 R12 R9
      291 SETTABLEKS                       R22 R21 K79 ["Enabled"]
      293 NEWCLOSURE                       R22 P3
      294 CAPTURE                          VAL R1
      295 CAPTURE                          VAL R10
      296 CAPTURE                          VAL R11
      297 CAPTURE                          VAL R4
      298 CAPTURE                          VAL R13
      299 SETTABLEKS                       R22 R21 K80 ["PromptPreviewThumbnail"]
      301 NEWCLOSURE                       R22 P4
      302 CAPTURE                          VAL R1
      303 CAPTURE                          VAL R11
      304 SETTABLEKS                       R22 R21 K81 ["PromptDeleteThumbnail"]
      306 SETTABLEKS                       R2 R21 K1 ["Theme"]
      308 CALL                             R19 2 1
      309 SETTABLEKS                       R19 R18 K45 ["HoverBar"]
      311 CALL                             R15 3 -1
      312 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K9 ["ContextServices"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["withContext"]
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Resources"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETIMPORT                        R7 K1 [script]
       39 GETTABLEKS                       R7 R7 K4 ["Parent"]
       41 GETTABLEKS                       R7 R7 K12 ["ThumbnailHoverBar"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETIMPORT                        R8 K1 [script]
       48 GETTABLEKS                       R8 R8 K4 ["Parent"]
       50 GETTABLEKS                       R8 R8 K13 ["types"]
       52 CALL                             R7 1 1
       53 GETTABLEKS                       R8 R5 K14 ["LOCALIZATION_PROJECT_NAME"]
       55 GETTABLEKS                       R9 R1 K15 ["PureComponent"]
       57 LOADK                            R11 K16 ["Thumbnail"]
       58 NAMECALL                         R9 R9 K17 ["extend"]
       60 CALL                             R9 2 1
       61 DUPCLOSURE                       R10 K18 [PROTO_0]
       62 SETTABLEKS                       R10 R9 K19 ["init"]
       64 DUPCLOSURE                       R10 K20 [PROTO_1]
       65 SETTABLEKS                       R10 R9 K21 ["mouseHoverChanged"]
       67 DUPCLOSURE                       R10 K22 [PROTO_7]
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R6
       72 SETTABLEKS                       R10 R9 K23 ["render"]
       74 MOVE                             R10 R4
       75 DUPTABLE                         R11 K26 [{"Localization", "Mouse"}]
       76 GETTABLEKS                       R12 R3 K24 ["Localization"]
       78 SETTABLEKS                       R12 R11 K24 ["Localization"]
       80 GETTABLEKS                       R12 R3 K25 ["Mouse"]
       82 SETTABLEKS                       R12 R11 K25 ["Mouse"]
       84 CALL                             R10 1 1
       85 MOVE                             R11 R9
       86 CALL                             R10 1 1
       87 MOVE                             R9 R10
       88 RETURN                           R9 1
