PROTO_0:
        0 DUPTABLE                         R1 K1 [{"Hovering"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["Hovering"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 RETURN                           R0 0

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
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K1 ["DragMove"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["StartDragging"]
        3 DUPTABLE                         R1 K3 [{"index", "thumbnailId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["index"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["thumbnailId"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["PromptPreviewThumbnail"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["PromptDeleteThumbnail"]
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
       19 GETTABLEKS                       R10 R0 K9 ["state"]
       21 GETTABLEKS                       R9 R10 K10 ["Hovering"]
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
       66 GETUPVAL                         R16 1
       67 GETTABLEKS                       R15 R16 K23 ["createElement"]
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
       90 GETTABLEKS                       R19 R2 K30 ["Thumbnail"]
       92 GETTABLEKS                       R18 R19 K31 ["Background"]
       94 JUMPIF                           R18 ; [+1]
       95 LOADNIL                          R18
       96 SETTABLEKS                       R18 R17 K32 ["ImageColor3"]
       98 GETIMPORT                        R18 K36 [Enum.ScaleType.Fit]
      100 SETTABLEKS                       R18 R17 K34 ["ScaleType"]
      102 GETUPVAL                         R19 1
      103 GETTABLEKS                       R18 R19 K37 ["Ref"]
      105 GETTABLEKS                       R19 R0 K38 ["buttonRef"]
      107 SETTABLE                         R19 R17 R18
      108 GETUPVAL                         R20 1
      109 GETTABLEKS                       R19 R20 K39 ["Event"]
      111 GETTABLEKS                       R18 R19 K40 ["MouseEnter"]
      113 NEWCLOSURE                       R19 P0
      114 CAPTURE                          VAL R0
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R11
      118 SETTABLE                         R19 R17 R18
      119 GETUPVAL                         R20 1
      120 GETTABLEKS                       R19 R20 K39 ["Event"]
      122 GETTABLEKS                       R18 R19 K41 ["MouseLeave"]
      124 NEWCLOSURE                       R19 P1
      125 CAPTURE                          VAL R0
      126 SETTABLE                         R19 R17 R18
      127 GETUPVAL                         R20 1
      128 GETTABLEKS                       R19 R20 K39 ["Event"]
      130 GETTABLEKS                       R18 R19 K42 ["MouseButton1Down"]
      132 NEWCLOSURE                       R19 P2
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R11
      136 SETTABLE                         R19 R17 R18
      137 DUPTABLE                         R18 K46 [{"InfoText", "TitleFrame", "HoverBar"}]
      138 GETUPVAL                         R20 1
      139 GETTABLEKS                       R19 R20 K23 ["createElement"]
      141 LOADK                            R20 K47 ["TextLabel"]
      142 GETUPVAL                         R23 2
      143 GETTABLEKS                       R22 R23 K48 ["Dictionary"]
      145 GETTABLEKS                       R21 R22 K49 ["join"]
      147 GETTABLEKS                       R23 R2 K50 ["FontStyle"]
      149 GETTABLEKS                       R22 R23 K51 ["Normal"]
      151 DUPTABLE                         R23 K59 [{"Visible", "BackgroundTransparency", "BorderSizePixel", "BackgroundColor3", "TextColor3", "Size", "Position", "AnchorPoint", "Text"}]
      152 LOADB                            R24 0
      153 JUMPIFEQKNIL                     R14 ; [+3]
      155 AND                              R25 R12 R9
      156 NOT                              R24 R25
      157 SETTABLEKS                       R24 R23 K52 ["Visible"]
      159 LOADK                            R24 K60 [0.3]
      160 SETTABLEKS                       R24 R23 K29 ["BackgroundTransparency"]
      162 LOADN                            R24 0
      163 SETTABLEKS                       R24 R23 K53 ["BorderSizePixel"]
      165 GETTABLEKS                       R25 R2 K61 ["Colors"]
      167 GETTABLEKS                       R24 R25 K62 ["Black"]
      169 SETTABLEKS                       R24 R23 K54 ["BackgroundColor3"]
      171 GETTABLEKS                       R25 R2 K61 ["Colors"]
      173 GETTABLEKS                       R24 R25 K63 ["White"]
      175 SETTABLEKS                       R24 R23 K55 ["TextColor3"]
      177 GETIMPORT                        R24 K27 [UDim2.new]
      179 LOADN                            R25 1
      180 LOADN                            R26 0
      181 LOADN                            R27 0
      182 LOADN                            R28 30
      183 CALL                             R24 4 1
      184 SETTABLEKS                       R24 R23 K28 ["Size"]
      186 GETIMPORT                        R24 K27 [UDim2.new]
      188 LOADN                            R25 0
      189 LOADN                            R26 0
      190 LOADN                            R27 1
      191 LOADN                            R28 0
      192 CALL                             R24 4 1
      193 SETTABLEKS                       R24 R23 K56 ["Position"]
      195 GETIMPORT                        R24 K65 [Vector2.new]
      197 LOADN                            R25 0
      198 LOADN                            R26 1
      199 CALL                             R24 2 1
      200 SETTABLEKS                       R24 R23 K57 ["AnchorPoint"]
      202 SETTABLEKS                       R14 R23 K58 ["Text"]
      204 CALL                             R21 2 -1
      205 CALL                             R19 -1 1
      206 SETTABLEKS                       R19 R18 K43 ["InfoText"]
      208 GETUPVAL                         R20 1
      209 GETTABLEKS                       R19 R20 K23 ["createElement"]
      211 LOADK                            R20 K66 ["Frame"]
      212 DUPTABLE                         R21 K67 [{"Visible", "BackgroundTransparency", "BorderSizePixel", "BackgroundColor3", "Size"}]
      213 JUMPIFNOTEQKNIL                  R5 ; [+2]
      215 LOADB                            R22 0 +1
      216 LOADB                            R22 1
      217 SETTABLEKS                       R22 R21 K52 ["Visible"]
      219 LOADK                            R22 K60 [0.3]
      220 SETTABLEKS                       R22 R21 K29 ["BackgroundTransparency"]
      222 LOADN                            R22 0
      223 SETTABLEKS                       R22 R21 K53 ["BorderSizePixel"]
      225 GETTABLEKS                       R23 R2 K61 ["Colors"]
      227 GETTABLEKS                       R22 R23 K62 ["Black"]
      229 SETTABLEKS                       R22 R21 K54 ["BackgroundColor3"]
      231 GETIMPORT                        R22 K27 [UDim2.new]
      233 LOADN                            R23 1
      234 LOADN                            R24 0
      235 LOADN                            R25 0
      236 LOADN                            R26 30
      237 CALL                             R22 4 1
      238 SETTABLEKS                       R22 R21 K28 ["Size"]
      240 DUPTABLE                         R22 K69 [{"TitleText"}]
      241 GETUPVAL                         R24 1
      242 GETTABLEKS                       R23 R24 K23 ["createElement"]
      244 LOADK                            R24 K47 ["TextLabel"]
      245 GETUPVAL                         R27 2
      246 GETTABLEKS                       R26 R27 K48 ["Dictionary"]
      248 GETTABLEKS                       R25 R26 K49 ["join"]
      250 GETTABLEKS                       R27 R2 K50 ["FontStyle"]
      252 GETTABLEKS                       R26 R27 K51 ["Normal"]
      254 DUPTABLE                         R27 K72 [{"BackgroundTransparency", "Size", "Position", "AnchorPoint", "Text", "TextTruncate", "TextXAlignment"}]
      255 LOADN                            R28 1
      256 SETTABLEKS                       R28 R27 K29 ["BackgroundTransparency"]
      258 GETIMPORT                        R28 K27 [UDim2.new]
      260 LOADN                            R29 1
      261 LOADN                            R30 236
      262 LOADN                            R31 1
      263 LOADN                            R32 0
      264 CALL                             R28 4 1
      265 SETTABLEKS                       R28 R27 K28 ["Size"]
      267 GETIMPORT                        R28 K27 [UDim2.new]
      269 LOADK                            R29 K73 [0.5]
      270 LOADN                            R30 0
      271 LOADN                            R31 0
      272 LOADN                            R32 0
      273 CALL                             R28 4 1
      274 SETTABLEKS                       R28 R27 K56 ["Position"]
      276 GETIMPORT                        R28 K65 [Vector2.new]
      278 LOADK                            R29 K73 [0.5]
      279 LOADN                            R30 0
      280 CALL                             R28 2 1
      281 SETTABLEKS                       R28 R27 K57 ["AnchorPoint"]
      283 SETTABLEKS                       R5 R27 K58 ["Text"]
      285 GETIMPORT                        R28 K75 [Enum.TextTruncate.AtEnd]
      287 SETTABLEKS                       R28 R27 K70 ["TextTruncate"]
      289 GETIMPORT                        R28 K77 [Enum.TextXAlignment.Left]
      291 SETTABLEKS                       R28 R27 K71 ["TextXAlignment"]
      293 CALL                             R25 2 -1
      294 CALL                             R23 -1 1
      295 SETTABLEKS                       R23 R22 K68 ["TitleText"]
      297 CALL                             R19 3 1
      298 SETTABLEKS                       R19 R18 K44 ["TitleFrame"]
      300 GETUPVAL                         R20 1
      301 GETTABLEKS                       R19 R20 K23 ["createElement"]
      303 GETUPVAL                         R20 3
      304 DUPTABLE                         R21 K81 [{"Enabled", "PromptPreviewThumbnail", "PromptDeleteThumbnail", "Theme"}]
      305 AND                              R22 R12 R9
      306 SETTABLEKS                       R22 R21 K78 ["Enabled"]
      308 NEWCLOSURE                       R22 P3
      309 CAPTURE                          VAL R1
      310 CAPTURE                          VAL R10
      311 CAPTURE                          VAL R11
      312 CAPTURE                          VAL R4
      313 CAPTURE                          VAL R13
      314 SETTABLEKS                       R22 R21 K79 ["PromptPreviewThumbnail"]
      316 NEWCLOSURE                       R22 P4
      317 CAPTURE                          VAL R1
      318 CAPTURE                          VAL R11
      319 SETTABLEKS                       R22 R21 K80 ["PromptDeleteThumbnail"]
      321 SETTABLEKS                       R2 R21 K1 ["Theme"]
      323 CALL                             R19 2 1
      324 SETTABLEKS                       R19 R18 K45 ["HoverBar"]
      326 CALL                             R15 3 -1
      327 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R4 K8 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K9 ["ContextServices"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["withContext"]
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Resources"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETIMPORT                        R9 K1 [script]
       39 GETTABLEKS                       R8 R9 K4 ["Parent"]
       41 GETTABLEKS                       R7 R8 K12 ["ThumbnailHoverBar"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETIMPORT                        R10 K1 [script]
       48 GETTABLEKS                       R9 R10 K4 ["Parent"]
       50 GETTABLEKS                       R8 R9 K13 ["types"]
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
