PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Order"]
        5 GETTABLEKS                       R2 R0 K2 ["StartThumbnailInfo"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K3 ["List"]
       13 GETTABLEKS                       R3 R4 K4 ["find"]
       15 MOVE                             R4 R1
       16 GETTABLEKS                       R5 R2 K5 ["thumbnailId"]
       18 CALL                             R3 2 1
       19 JUMPIFNOTEQKNIL                  R3 ; [+3]
       21 LOADNIL                          R4
       22 RETURN                           R4 1
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R5 R6 K6 ["state"]
       26 GETTABLEKS                       R4 R5 K7 ["IndexOffset"]
       28 ADD                              R8 R3 R4
       29 SUBK                             R7 R8 K8 [1]
       30 LENGTH                           R8 R1
       31 MOD                              R6 R7 R8
       32 ADDK                             R5 R6 K8 [1]
       33 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETTABLEKS                       R0 R1 K1 ["IndexOffset"]
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R3 K2 [{"IndexOffset"}]
        7 SUBK                             R4 R0 K3 [1]
        8 SETTABLEKS                       R4 R3 K1 ["IndexOffset"]
       10 NAMECALL                         R1 R1 K4 ["setState"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETTABLEKS                       R0 R1 K1 ["IndexOffset"]
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R3 K2 [{"IndexOffset"}]
        7 ADDK                             R4 R0 K3 [1]
        8 SETTABLEKS                       R4 R3 K1 ["IndexOffset"]
       10 NAMECALL                         R1 R1 K4 ["setState"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["Thumbnails"]
        5 GETTABLEKS                       R6 R2 K2 ["Theme"]
        7 GETTABLEKS                       R5 R6 K3 ["PreviewThumbnailDialog"]
        9 GETTABLEKS                       R4 R5 K4 ["MaxAltTextLength"]
       11 GETTABLE                         R5 R3 R0
       12 GETUPVAL                         R6 0
       13 DUPTABLE                         R8 K7 [{"AltTexts", "Disabled"}]
       14 GETUPVAL                         R9 1
       15 GETUPVAL                         R12 0
       16 GETTABLEKS                       R11 R12 K8 ["state"]
       18 GETTABLEKS                       R10 R11 K5 ["AltTexts"]
       20 NEWTABLE                         R11 1 0
       22 GETTABLEKS                       R13 R5 K9 ["altText"]
       24 JUMPIFEQ                         R13 R1 ; [+3]
       26 MOVE                             R12 R1
       27 JUMP                             ; [+3]
       28 GETUPVAL                         R13 2
       29 GETTABLEKS                       R12 R13 K10 ["None"]
       31 SETTABLE                         R12 R11 R0
       32 CALL                             R9 2 1
       33 SETTABLEKS                       R9 R8 K5 ["AltTexts"]
       35 LENGTH                           R10 R1
       36 JUMPIFLT                         R4 R10 ; [+2]
       38 LOADB                            R9 0 +1
       39 LOADB                            R9 1
       40 SETTABLEKS                       R9 R8 K6 ["Disabled"]
       42 NAMECALL                         R6 R6 K11 ["setState"]
       44 CALL                             R6 2 0
       45 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETTABLEKS                       R0 R1 K1 ["StyleModifier"]
        5 JUMPIFNOTEQKNIL                  R0 ; [+11]
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K2 [{"StyleModifier"}]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K3 ["Hover"]
       12 SETTABLEKS                       R3 R2 K1 ["StyleModifier"]
       14 NAMECALL                         R0 R0 K4 ["setState"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETTABLEKS                       R0 R1 K1 ["StyleModifier"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["Hover"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+11]
       10 GETUPVAL                         R0 0
       11 DUPTABLE                         R2 K3 [{"StyleModifier"}]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K4 ["None"]
       15 SETTABLEKS                       R3 R2 K1 ["StyleModifier"]
       17 NAMECALL                         R0 R0 K5 ["setState"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K4 [{"StyleModifier", "IndexOffset", "Hovering", "AltTexts"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["StyleModifier"]
        4 LOADN                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["IndexOffset"]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["Hovering"]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K3 ["AltTexts"]
       14 SETTABLEKS                       R1 R0 K5 ["state"]
       16 NEWCLOSURE                       R1 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U0
       19 SETTABLEKS                       R1 R0 K6 ["getCurrentIndex"]
       21 NEWCLOSURE                       R1 P1
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R1 R0 K7 ["moveLeft"]
       25 NEWCLOSURE                       R1 P2
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R1 R0 K8 ["moveRight"]
       29 NEWCLOSURE                       R1 P3
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          UPVAL U0
       33 SETTABLEKS                       R1 R0 K9 ["altTextChanged"]
       35 NEWCLOSURE                       R1 P4
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U2
       38 SETTABLEKS                       R1 R0 K10 ["onMouseEnter"]
       40 NEWCLOSURE                       R1 P5
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          UPVAL U3
       44 SETTABLEKS                       R1 R0 K11 ["onMouseLeave"]
       46 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R4 K1 [{"Hovering"}]
        1 SETTABLEKS                       R1 R4 K0 ["Hovering"]
        3 NAMECALL                         R2 R0 K2 ["setState"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["StartThumbnailInfo"]
        4 JUMPIFEQKNIL                     R3 ; [+16]
        6 GETTABLEKS                       R3 R2 K1 ["StartThumbnailInfo"]
        8 JUMPIFNOTEQKNIL                  R3 ; [+12]
       10 DUPTABLE                         R5 K4 [{"IndexOffset", "AltTexts"}]
       11 LOADN                            R6 0
       12 SETTABLEKS                       R6 R5 K2 ["IndexOffset"]
       14 NEWTABLE                         R6 0 0
       16 SETTABLEKS                       R6 R5 K3 ["AltTexts"]
       18 NAMECALL                         R3 R0 K5 ["setState"]
       20 CALL                             R3 2 0
       21 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 1
        2 NAMECALL                         R0 R0 K0 ["mouseHoverChanged"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["mouseHoverChanged"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getYoutubeWatchUrl"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["open"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["UpdateAltTexts"]
        4 GETUPVAL                         R2 1
        5 CALL                             R1 1 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K1 ["OnClose"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnClose"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["altTextChanged"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Thumbnails"]
        4 GETTABLEKS                       R3 R1 K2 ["Order"]
        6 GETTABLEKS                       R4 R1 K3 ["IsVideoAllowed"]
        8 GETTABLEKS                       R5 R1 K4 ["AltTextError"]
       10 JUMPIF                           R5 ; [+2]
       11 NEWTABLE                         R5 0 0
       13 GETTABLEKS                       R7 R0 K5 ["state"]
       15 GETTABLEKS                       R6 R7 K6 ["AltTexts"]
       17 GETTABLEKS                       R8 R0 K5 ["state"]
       19 GETTABLEKS                       R7 R8 K7 ["Hovering"]
       21 GETTABLEKS                       R9 R0 K5 ["state"]
       23 GETTABLEKS                       R8 R9 K8 ["Disabled"]
       25 GETTABLEKS                       R9 R0 K9 ["getCurrentIndex"]
       27 CALL                             R9 0 1
       28 JUMPIFNOTEQKNIL                  R9 ; [+3]
       30 LOADNIL                          R10
       31 RETURN                           R10 1
       32 GETTABLE                         R10 R3 R9
       33 GETTABLE                         R11 R2 R10
       34 GETTABLEKS                       R12 R11 K10 ["videoHash"]
       36 GETTABLEKS                       R13 R11 K11 ["videoTitle"]
       38 GETTABLEKS                       R14 R11 K12 ["imageId"]
       40 GETTABLEKS                       R15 R11 K13 ["tempId"]
       42 GETTABLE                         R16 R6 R10
       43 JUMPIFEQKNIL                     R16 ; [+3]
       45 MOVE                             R17 R16
       46 JUMP                             ; [+3]
       47 GETTABLEKS                       R18 R11 K15 ["altText"]
       49 ORK                              R17 R18 K14 [""]
       50 GETTABLEKS                       R19 R5 K16 ["ThumbnailId"]
       52 JUMPIFNOTEQ                      R19 R10 ; [+4]
       54 GETTABLEKS                       R18 R5 K17 ["ErrorMessage"]
       56 JUMP                             ; [+1]
       57 LOADNIL                          R18
       58 MOVE                             R19 R7
       59 JUMPIFNOT                        R19 ; [+6]
       60 LENGTH                           R20 R3
       61 LOADN                            R21 1
       62 JUMPIFLT                         R21 R20 ; [+2]
       64 LOADB                            R19 0 +1
       65 LOADB                            R19 1
       66 LOADNIL                          R20
       67 JUMPIFNOT                        R15 ; [+2]
       68 MOVE                             R20 R15
       69 JUMP                             ; [+4]
       70 JUMPIFNOT                        R14 ; [+3]
       71 LOADK                            R21 K18 ["rbxassetid://"]
       72 MOVE                             R22 R14
       73 CONCAT                           R20 R21 R22
       74 GETTABLEKS                       R21 R1 K19 ["Theme"]
       76 GETTABLEKS                       R23 R11 K20 ["isModerated"]
       78 JUMPIFNOT                        R23 ; [+3]
       79 GETTABLEKS                       R22 R21 K21 ["ModeratedImage"]
       81 JUMP                             ; [+6]
       82 JUMPIFEQKNIL                     R12 ; [+4]
       84 GETTABLEKS                       R22 R21 K22 ["VideoPlaceholder"]
       86 JUMP                             ; [+1]
       87 MOVE                             R22 R20
       88 GETTABLEKS                       R23 R21 K23 ["PreviewThumbnailDialog"]
       90 GETTABLEKS                       R24 R23 K24 ["TooltipIcon"]
       92 GETTABLEKS                       R25 R1 K25 ["Localization"]
       94 GETTABLEKS                       R29 R23 K26 ["Height"]
       96 GETTABLEKS                       R32 R23 K27 ["Size"]
       98 GETTABLEKS                       R31 R32 K28 ["Y"]
      100 GETTABLEKS                       R30 R31 K29 ["Offset"]
      102 SUB                              R28 R29 R30
      103 GETTABLEKS                       R31 R21 K30 ["FontStyle"]
      105 GETTABLEKS                       R30 R31 K31 ["Normal"]
      107 GETTABLEKS                       R29 R30 K32 ["TextSize"]
      109 SUB                              R27 R28 R29
      110 GETTABLEKS                       R28 R23 K33 ["AltTextInputHeight"]
      112 SUB                              R26 R27 R28
      113 GETTABLEKS                       R27 R23 K34 ["ButtonPadding"]
      115 GETTABLEKS                       R28 R23 K35 ["ImagePadding"]
      117 GETUPVAL                         R30 0
      118 GETTABLEKS                       R29 R30 K36 ["createElement"]
      120 LOADK                            R30 K37 ["ImageLabel"]
      121 NEWTABLE                         R31 8 0
      123 GETTABLEKS                       R32 R23 K27 ["Size"]
      125 SETTABLEKS                       R32 R31 K27 ["Size"]
      127 LOADN                            R32 1
      128 SETTABLEKS                       R32 R31 K38 ["BackgroundTransparency"]
      130 SETTABLEKS                       R22 R31 K39 ["Image"]
      132 JUMPIFEQKNIL                     R12 ; [+6]
      134 GETTABLEKS                       R33 R21 K40 ["Thumbnail"]
      136 GETTABLEKS                       R32 R33 K41 ["Background"]
      138 JUMPIF                           R32 ; [+1]
      139 LOADNIL                          R32
      140 SETTABLEKS                       R32 R31 K42 ["ImageColor3"]
      142 GETIMPORT                        R32 K46 [Enum.ScaleType.Fit]
      144 SETTABLEKS                       R32 R31 K44 ["ScaleType"]
      146 LOADN                            R32 1
      147 SETTABLEKS                       R32 R31 K47 ["LayoutOrder"]
      149 GETUPVAL                         R34 0
      150 GETTABLEKS                       R33 R34 K48 ["Event"]
      152 GETTABLEKS                       R32 R33 K49 ["MouseEnter"]
      154 NEWCLOSURE                       R33 P0
      155 CAPTURE                          VAL R0
      156 SETTABLE                         R33 R31 R32
      157 GETUPVAL                         R34 0
      158 GETTABLEKS                       R33 R34 K48 ["Event"]
      160 GETTABLEKS                       R32 R33 K50 ["MouseLeave"]
      162 NEWCLOSURE                       R33 P1
      163 CAPTURE                          VAL R0
      164 SETTABLE                         R33 R31 R32
      165 DUPTABLE                         R32 K56 [{"Padding", "LeftButton", "RightButton", "TitleFrame", "VideoWarning"}]
      166 GETUPVAL                         R34 0
      167 GETTABLEKS                       R33 R34 K36 ["createElement"]
      169 LOADK                            R34 K57 ["UIPadding"]
      170 DUPTABLE                         R35 K62 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      171 SETTABLEKS                       R27 R35 K58 ["PaddingTop"]
      173 SETTABLEKS                       R27 R35 K59 ["PaddingBottom"]
      175 SETTABLEKS                       R27 R35 K60 ["PaddingLeft"]
      177 SETTABLEKS                       R27 R35 K61 ["PaddingRight"]
      179 CALL                             R33 2 1
      180 SETTABLEKS                       R33 R32 K51 ["Padding"]
      182 MOVE                             R33 R19
      183 JUMPIFNOT                        R33 ; [+33]
      184 GETUPVAL                         R34 0
      185 GETTABLEKS                       R33 R34 K36 ["createElement"]
      187 GETUPVAL                         R34 1
      188 DUPTABLE                         R35 K67 [{"AnchorPoint", "Disabled", "Flipped", "OnClick", "Position", "Theme"}]
      189 GETIMPORT                        R36 K70 [Vector2.new]
      191 LOADN                            R37 0
      192 LOADK                            R38 K71 [0.5]
      193 CALL                             R36 2 1
      194 SETTABLEKS                       R36 R35 K63 ["AnchorPoint"]
      196 SETTABLEKS                       R8 R35 K8 ["Disabled"]
      198 LOADB                            R36 1
      199 SETTABLEKS                       R36 R35 K64 ["Flipped"]
      201 GETTABLEKS                       R36 R0 K72 ["moveLeft"]
      203 SETTABLEKS                       R36 R35 K65 ["OnClick"]
      205 GETIMPORT                        R36 K74 [UDim2.new]
      207 LOADN                            R37 0
      208 LOADN                            R38 0
      209 LOADK                            R39 K71 [0.5]
      210 LOADN                            R40 0
      211 CALL                             R36 4 1
      212 SETTABLEKS                       R36 R35 K66 ["Position"]
      214 SETTABLEKS                       R21 R35 K19 ["Theme"]
      216 CALL                             R33 2 1
      217 SETTABLEKS                       R33 R32 K52 ["LeftButton"]
      219 MOVE                             R33 R19
      220 JUMPIFNOT                        R33 ; [+30]
      221 GETUPVAL                         R34 0
      222 GETTABLEKS                       R33 R34 K36 ["createElement"]
      224 GETUPVAL                         R34 1
      225 DUPTABLE                         R35 K75 [{"AnchorPoint", "Disabled", "OnClick", "Position", "Theme"}]
      226 GETIMPORT                        R36 K70 [Vector2.new]
      228 LOADN                            R37 1
      229 LOADK                            R38 K71 [0.5]
      230 CALL                             R36 2 1
      231 SETTABLEKS                       R36 R35 K63 ["AnchorPoint"]
      233 SETTABLEKS                       R8 R35 K8 ["Disabled"]
      235 GETTABLEKS                       R36 R0 K76 ["moveRight"]
      237 SETTABLEKS                       R36 R35 K65 ["OnClick"]
      239 GETIMPORT                        R36 K74 [UDim2.new]
      241 LOADN                            R37 1
      242 LOADN                            R38 0
      243 LOADK                            R39 K71 [0.5]
      244 LOADN                            R40 0
      245 CALL                             R36 4 1
      246 SETTABLEKS                       R36 R35 K66 ["Position"]
      248 SETTABLEKS                       R21 R35 K19 ["Theme"]
      250 CALL                             R33 2 1
      251 SETTABLEKS                       R33 R32 K53 ["RightButton"]
      253 GETUPVAL                         R34 0
      254 GETTABLEKS                       R33 R34 K36 ["createElement"]
      256 LOADK                            R34 K77 ["Frame"]
      257 DUPTABLE                         R35 K81 [{"Visible", "BackgroundTransparency", "BorderSizePixel", "BackgroundColor3", "Size"}]
      258 JUMPIFNOTEQKNIL                  R13 ; [+2]
      260 LOADB                            R36 0 +1
      261 LOADB                            R36 1
      262 SETTABLEKS                       R36 R35 K78 ["Visible"]
      264 LOADK                            R36 K82 [0.3]
      265 SETTABLEKS                       R36 R35 K38 ["BackgroundTransparency"]
      267 LOADN                            R36 0
      268 SETTABLEKS                       R36 R35 K79 ["BorderSizePixel"]
      270 GETTABLEKS                       R37 R21 K83 ["Colors"]
      272 GETTABLEKS                       R36 R37 K84 ["Black"]
      274 SETTABLEKS                       R36 R35 K80 ["BackgroundColor3"]
      276 GETIMPORT                        R36 K74 [UDim2.new]
      278 LOADN                            R37 1
      279 LOADN                            R38 0
      280 LOADN                            R39 0
      281 LOADN                            R40 30
      282 CALL                             R36 4 1
      283 SETTABLEKS                       R36 R35 K27 ["Size"]
      285 DUPTABLE                         R36 K86 [{"TitleText"}]
      286 GETUPVAL                         R38 0
      287 GETTABLEKS                       R37 R38 K36 ["createElement"]
      289 LOADK                            R38 K87 ["TextLabel"]
      290 GETUPVAL                         R39 2
      291 GETTABLEKS                       R41 R21 K30 ["FontStyle"]
      293 GETTABLEKS                       R40 R41 K31 ["Normal"]
      295 DUPTABLE                         R41 K91 [{"BackgroundTransparency", "Size", "Position", "AnchorPoint", "Text", "TextTruncate", "TextXAlignment"}]
      296 LOADN                            R42 1
      297 SETTABLEKS                       R42 R41 K38 ["BackgroundTransparency"]
      299 GETIMPORT                        R42 K74 [UDim2.new]
      301 LOADN                            R43 1
      302 LOADN                            R44 236
      303 LOADN                            R45 1
      304 LOADN                            R46 0
      305 CALL                             R42 4 1
      306 SETTABLEKS                       R42 R41 K27 ["Size"]
      308 GETIMPORT                        R42 K74 [UDim2.new]
      310 LOADK                            R43 K71 [0.5]
      311 LOADN                            R44 0
      312 LOADN                            R45 0
      313 LOADN                            R46 0
      314 CALL                             R42 4 1
      315 SETTABLEKS                       R42 R41 K66 ["Position"]
      317 GETIMPORT                        R42 K70 [Vector2.new]
      319 LOADK                            R43 K71 [0.5]
      320 LOADN                            R44 0
      321 CALL                             R42 2 1
      322 SETTABLEKS                       R42 R41 K63 ["AnchorPoint"]
      324 SETTABLEKS                       R13 R41 K88 ["Text"]
      326 GETIMPORT                        R42 K93 [Enum.TextTruncate.AtEnd]
      328 SETTABLEKS                       R42 R41 K89 ["TextTruncate"]
      330 GETIMPORT                        R42 K95 [Enum.TextXAlignment.Left]
      332 SETTABLEKS                       R42 R41 K90 ["TextXAlignment"]
      334 CALL                             R39 2 -1
      335 CALL                             R37 -1 1
      336 SETTABLEKS                       R37 R36 K85 ["TitleText"]
      338 CALL                             R33 3 1
      339 SETTABLEKS                       R33 R32 K54 ["TitleFrame"]
      341 GETUPVAL                         R34 0
      342 GETTABLEKS                       R33 R34 K36 ["createElement"]
      344 LOADK                            R34 K77 ["Frame"]
      345 DUPTABLE                         R35 K96 [{"Visible", "BackgroundTransparency", "BorderSizePixel", "Size", "Position", "AnchorPoint", "BackgroundColor3"}]
      346 JUMPIFNOTEQKNIL                  R12 ; [+2]
      348 LOADB                            R36 0 +1
      349 LOADB                            R36 1
      350 SETTABLEKS                       R36 R35 K78 ["Visible"]
      352 LOADK                            R36 K82 [0.3]
      353 SETTABLEKS                       R36 R35 K38 ["BackgroundTransparency"]
      355 LOADN                            R36 0
      356 SETTABLEKS                       R36 R35 K79 ["BorderSizePixel"]
      358 GETIMPORT                        R36 K74 [UDim2.new]
      360 LOADN                            R37 0
      361 LOADN                            R38 144
      362 LOADN                            R39 0
      363 LOADN                            R40 120
      364 CALL                             R36 4 1
      365 SETTABLEKS                       R36 R35 K27 ["Size"]
      367 GETIMPORT                        R36 K74 [UDim2.new]
      369 LOADK                            R37 K71 [0.5]
      370 LOADN                            R38 0
      371 LOADK                            R39 K71 [0.5]
      372 LOADN                            R40 0
      373 CALL                             R36 4 1
      374 SETTABLEKS                       R36 R35 K66 ["Position"]
      376 GETIMPORT                        R36 K70 [Vector2.new]
      378 LOADK                            R37 K71 [0.5]
      379 LOADK                            R38 K71 [0.5]
      380 CALL                             R36 2 1
      381 SETTABLEKS                       R36 R35 K63 ["AnchorPoint"]
      383 GETTABLEKS                       R37 R21 K83 ["Colors"]
      385 GETTABLEKS                       R36 R37 K84 ["Black"]
      387 SETTABLEKS                       R36 R35 K80 ["BackgroundColor3"]
      389 DUPTABLE                         R36 K99 [{"Message", "Link"}]
      390 GETUPVAL                         R38 0
      391 GETTABLEKS                       R37 R38 K36 ["createElement"]
      393 LOADK                            R38 K87 ["TextLabel"]
      394 GETUPVAL                         R39 2
      395 GETTABLEKS                       R41 R21 K30 ["FontStyle"]
      397 GETTABLEKS                       R40 R41 K31 ["Normal"]
      399 DUPTABLE                         R41 K100 [{"Size", "BackgroundTransparency", "Text"}]
      400 GETIMPORT                        R42 K74 [UDim2.new]
      402 LOADN                            R43 1
      403 LOADN                            R44 0
      404 JUMPIFNOT                        R4 ; [+2]
      405 LOADK                            R45 K71 [0.5]
      406 JUMP                             ; [+1]
      407 LOADN                            R45 1
      408 LOADN                            R46 0
      409 CALL                             R42 4 1
      410 SETTABLEKS                       R42 R41 K27 ["Size"]
      412 LOADN                            R42 1
      413 SETTABLEKS                       R42 R41 K38 ["BackgroundTransparency"]
      415 GETUPVAL                         R44 3
      416 LOADK                            R45 K101 ["MultiImagePicker"]
      417 LOADK                            R46 K102 ["PreviewDialogBody"]
      418 NAMECALL                         R42 R25 K103 ["getProjectText"]
      420 CALL                             R42 4 1
      421 SETTABLEKS                       R42 R41 K88 ["Text"]
      423 CALL                             R39 2 -1
      424 CALL                             R37 -1 1
      425 SETTABLEKS                       R37 R36 K97 ["Message"]
      427 JUMPIFNOT                        R4 ; [+69]
      428 GETUPVAL                         R38 0
      429 GETTABLEKS                       R37 R38 K36 ["createElement"]
      431 LOADK                            R38 K104 ["TextButton"]
      432 GETUPVAL                         R39 2
      433 GETTABLEKS                       R41 R21 K30 ["FontStyle"]
      435 GETTABLEKS                       R40 R41 K31 ["Normal"]
      437 NEWTABLE                         R41 8 0
      439 GETIMPORT                        R42 K74 [UDim2.new]
      441 LOADN                            R43 1
      442 LOADN                            R44 0
      443 LOADK                            R45 K71 [0.5]
      444 LOADN                            R46 0
      445 CALL                             R42 4 1
      446 SETTABLEKS                       R42 R41 K27 ["Size"]
      448 GETIMPORT                        R42 K74 [UDim2.new]
      450 LOADN                            R43 0
      451 LOADN                            R44 0
      452 LOADK                            R45 K71 [0.5]
      453 LOADN                            R46 0
      454 CALL                             R42 4 1
      455 SETTABLEKS                       R42 R41 K66 ["Position"]
      457 LOADN                            R42 1
      458 SETTABLEKS                       R42 R41 K38 ["BackgroundTransparency"]
      460 GETUPVAL                         R44 3
      461 LOADK                            R45 K101 ["MultiImagePicker"]
      462 LOADK                            R46 K105 ["PreviewDialogLink"]
      463 NAMECALL                         R42 R25 K103 ["getProjectText"]
      465 CALL                             R42 4 1
      466 SETTABLEKS                       R42 R41 K88 ["Text"]
      468 GETTABLEKS                       R42 R21 K106 ["Hyperlink"]
      470 SETTABLEKS                       R42 R41 K107 ["TextColor3"]
      472 GETUPVAL                         R44 0
      473 GETTABLEKS                       R43 R44 K48 ["Event"]
      475 GETTABLEKS                       R42 R43 K108 ["Activated"]
      477 NEWCLOSURE                       R43 P2
      478 CAPTURE                          UPVAL U4
      479 CAPTURE                          VAL R12
      480 SETTABLE                         R43 R41 R42
      481 CALL                             R39 2 1
      482 NEWTABLE                         R40 0 1
      484 GETUPVAL                         R42 0
      485 GETTABLEKS                       R41 R42 K36 ["createElement"]
      487 GETUPVAL                         R42 5
      488 DUPTABLE                         R43 K110 [{"Cursor"}]
      489 LOADK                            R44 K111 ["PointingHand"]
      490 SETTABLEKS                       R44 R43 K109 ["Cursor"]
      492 CALL                             R41 2 -1
      493 SETLIST                          R40 R41 -1 [1]
      495 CALL                             R37 3 1
      496 JUMP                             ; [+1]
      497 LOADNIL                          R37
      498 SETTABLEKS                       R37 R36 K98 ["Link"]
      500 CALL                             R33 3 1
      501 SETTABLEKS                       R33 R32 K55 ["VideoWarning"]
      503 CALL                             R29 3 1
      504 GETUPVAL                         R31 0
      505 GETTABLEKS                       R30 R31 K36 ["createElement"]
      507 GETUPVAL                         R31 6
      508 DUPTABLE                         R32 K120 [{"Style", "Enabled", "Title", "MinContentSize", "ButtonHorizontalAlignment", "Buttons", "OnButtonPressed", "OnClose"}]
      509 LOADK                            R33 K121 ["Alert"]
      510 SETTABLEKS                       R33 R32 K112 ["Style"]
      512 GETTABLEKS                       R33 R1 K113 ["Enabled"]
      514 SETTABLEKS                       R33 R32 K113 ["Enabled"]
      516 GETUPVAL                         R35 3
      517 LOADK                            R36 K101 ["MultiImagePicker"]
      518 LOADK                            R37 K122 ["PreviewDialogHeader"]
      519 NAMECALL                         R33 R25 K103 ["getProjectText"]
      521 CALL                             R33 4 1
      522 SETTABLEKS                       R33 R32 K114 ["Title"]
      524 GETIMPORT                        R33 K70 [Vector2.new]
      526 LOADN                            R34 148
      527 GETTABLEKS                       R35 R23 K26 ["Height"]
      529 CALL                             R33 2 1
      530 SETTABLEKS                       R33 R32 K115 ["MinContentSize"]
      532 GETIMPORT                        R33 K125 [Enum.HorizontalAlignment.Right]
      534 SETTABLEKS                       R33 R32 K116 ["ButtonHorizontalAlignment"]
      536 NEWTABLE                         R33 0 1
      538 DUPTABLE                         R34 K128 [{"Key", "Text", "Style", "StyleModifier"}]
      539 LOADB                            R35 1
      540 SETTABLEKS                       R35 R34 K126 ["Key"]
      542 GETUPVAL                         R37 3
      543 LOADK                            R38 K101 ["MultiImagePicker"]
      544 LOADK                            R39 K129 ["ButtonSave"]
      545 NAMECALL                         R35 R25 K103 ["getProjectText"]
      547 CALL                             R35 4 1
      548 SETTABLEKS                       R35 R34 K88 ["Text"]
      550 LOADK                            R35 K130 ["RoundLargeTextPrimary"]
      551 SETTABLEKS                       R35 R34 K112 ["Style"]
      553 JUMPIFNOT                        R8 ; [+4]
      554 GETUPVAL                         R36 7
      555 GETTABLEKS                       R35 R36 K8 ["Disabled"]
      557 JUMP                             ; [+1]
      558 LOADNIL                          R35
      559 SETTABLEKS                       R35 R34 K127 ["StyleModifier"]
      561 SETLIST                          R33 R34 1 [1]
      563 SETTABLEKS                       R33 R32 K117 ["Buttons"]
      565 NEWCLOSURE                       R33 P3
      566 CAPTURE                          VAL R1
      567 CAPTURE                          VAL R6
      568 SETTABLEKS                       R33 R32 K118 ["OnButtonPressed"]
      570 NEWCLOSURE                       R33 P4
      571 CAPTURE                          VAL R1
      572 SETTABLEKS                       R33 R32 K119 ["OnClose"]
      574 NEWTABLE                         R33 0 1
      576 GETUPVAL                         R35 0
      577 GETTABLEKS                       R34 R35 K36 ["createElement"]
      579 GETUPVAL                         R35 8
      580 DUPTABLE                         R36 K133 [{"Padding", "Size", "Layout", "VerticalAlignment"}]
      581 SETTABLEKS                       R28 R36 K51 ["Padding"]
      583 GETIMPORT                        R37 K74 [UDim2.new]
      585 LOADN                            R38 1
      586 LOADN                            R39 0
      587 LOADN                            R40 1
      588 LOADN                            R41 0
      589 CALL                             R37 4 1
      590 SETTABLEKS                       R37 R36 K27 ["Size"]
      592 GETIMPORT                        R37 K136 [Enum.FillDirection.Vertical]
      594 SETTABLEKS                       R37 R36 K131 ["Layout"]
      596 GETIMPORT                        R37 K138 [Enum.VerticalAlignment.Center]
      598 SETTABLEKS                       R37 R36 K132 ["VerticalAlignment"]
      600 NEWTABLE                         R37 1 1
      602 MOVE                             R38 R29
      603 SETLIST                          R37 R38 1 [1]
      605 GETTABLEKS                       R40 R1 K139 ["ShowAltText"]
      607 JUMPIFNOT                        R40 ; [+206]
      608 GETUPVAL                         R40 0
      609 GETTABLEKS                       R39 R40 K36 ["createElement"]
      611 GETUPVAL                         R40 8
      612 DUPTABLE                         R41 K141 [{"Size", "AutomaticSize", "Layout", "HorizontalAlignment", "VerticalAlignment", "LayoutOrder"}]
      613 GETIMPORT                        R42 K74 [UDim2.new]
      615 LOADN                            R43 1
      616 LOADN                            R44 0
      617 LOADN                            R45 0
      618 MOVE                             R46 R26
      619 CALL                             R42 4 1
      620 SETTABLEKS                       R42 R41 K27 ["Size"]
      622 GETIMPORT                        R42 K143 [Enum.AutomaticSize.XY]
      624 SETTABLEKS                       R42 R41 K140 ["AutomaticSize"]
      626 GETIMPORT                        R42 K136 [Enum.FillDirection.Vertical]
      628 SETTABLEKS                       R42 R41 K131 ["Layout"]
      630 GETIMPORT                        R42 K144 [Enum.HorizontalAlignment.Left]
      632 SETTABLEKS                       R42 R41 K123 ["HorizontalAlignment"]
      634 GETIMPORT                        R42 K146 [Enum.VerticalAlignment.Top]
      636 SETTABLEKS                       R42 R41 K132 ["VerticalAlignment"]
      638 LOADN                            R42 2
      639 SETTABLEKS                       R42 R41 K47 ["LayoutOrder"]
      641 DUPTABLE                         R42 K148 [{"Title", "TextBox"}]
      642 GETUPVAL                         R44 0
      643 GETTABLEKS                       R43 R44 K36 ["createElement"]
      645 GETUPVAL                         R44 9
      646 DUPTABLE                         R45 K149 [{"Style", "Text", "AutomaticSize", "Size", "TextXAlignment"}]
      647 LOADK                            R46 K150 ["SubText"]
      648 SETTABLEKS                       R46 R45 K112 ["Style"]
      650 GETUPVAL                         R48 3
      651 LOADK                            R49 K101 ["MultiImagePicker"]
      652 LOADK                            R50 K151 ["TitleAltText"]
      653 NAMECALL                         R46 R25 K103 ["getProjectText"]
      655 CALL                             R46 4 1
      656 SETTABLEKS                       R46 R45 K88 ["Text"]
      658 GETIMPORT                        R46 K153 [Enum.AutomaticSize.X]
      660 SETTABLEKS                       R46 R45 K140 ["AutomaticSize"]
      662 GETIMPORT                        R46 K74 [UDim2.new]
      664 LOADN                            R47 0
      665 LOADN                            R48 0
      666 LOADN                            R49 0
      667 GETTABLEKS                       R52 R21 K30 ["FontStyle"]
      669 GETTABLEKS                       R51 R52 K31 ["Normal"]
      671 GETTABLEKS                       R50 R51 K32 ["TextSize"]
      673 CALL                             R46 4 1
      674 SETTABLEKS                       R46 R45 K27 ["Size"]
      676 GETIMPORT                        R46 K95 [Enum.TextXAlignment.Left]
      678 SETTABLEKS                       R46 R45 K90 ["TextXAlignment"]
      680 DUPTABLE                         R46 K155 [{"Tooltip"}]
      681 GETUPVAL                         R48 0
      682 GETTABLEKS                       R47 R48 K36 ["createElement"]
      684 GETUPVAL                         R48 10
      685 DUPTABLE                         R49 K157 [{"Size", "Position", "StyleModifier", "Image", "Color", "Style"}]
      686 GETIMPORT                        R50 K159 [UDim2.fromOffset]
      688 GETTABLEKS                       R51 R24 K27 ["Size"]
      690 GETTABLEKS                       R52 R24 K27 ["Size"]
      692 CALL                             R50 2 1
      693 SETTABLEKS                       R50 R49 K27 ["Size"]
      695 GETIMPORT                        R50 K74 [UDim2.new]
      697 LOADN                            R51 1
      698 GETTABLEKS                       R52 R24 K160 ["PaddingX"]
      700 LOADN                            R53 0
      701 LOADN                            R54 0
      702 CALL                             R50 4 1
      703 SETTABLEKS                       R50 R49 K66 ["Position"]
      705 GETTABLEKS                       R51 R0 K5 ["state"]
      707 GETTABLEKS                       R50 R51 K127 ["StyleModifier"]
      709 SETTABLEKS                       R50 R49 K127 ["StyleModifier"]
      711 GETTABLEKS                       R50 R24 K39 ["Image"]
      713 SETTABLEKS                       R50 R49 K39 ["Image"]
      715 GETTABLEKS                       R50 R24 K156 ["Color"]
      717 SETTABLEKS                       R50 R49 K156 ["Color"]
      719 NEWTABLE                         R50 1 0
      721 GETUPVAL                         R52 7
      722 GETTABLEKS                       R51 R52 K161 ["Hover"]
      724 DUPTABLE                         R52 K162 [{"Color"}]
      725 GETTABLEKS                       R53 R24 K163 ["HoverColor"]
      727 SETTABLEKS                       R53 R52 K156 ["Color"]
      729 SETTABLE                         R52 R50 R51
      730 SETTABLEKS                       R50 R49 K112 ["Style"]
      732 NEWTABLE                         R50 0 2
      734 GETUPVAL                         R52 0
      735 GETTABLEKS                       R51 R52 K36 ["createElement"]
      737 GETUPVAL                         R52 11
      738 DUPTABLE                         R53 K164 [{"Text"}]
      739 GETUPVAL                         R56 3
      740 LOADK                            R57 K101 ["MultiImagePicker"]
      741 LOADK                            R58 K165 ["DescriptionAltText"]
      742 NAMECALL                         R54 R25 K103 ["getProjectText"]
      744 CALL                             R54 4 1
      745 SETTABLEKS                       R54 R53 K88 ["Text"]
      747 CALL                             R51 2 1
      748 GETUPVAL                         R53 0
      749 GETTABLEKS                       R52 R53 K36 ["createElement"]
      751 GETUPVAL                         R53 5
      752 DUPTABLE                         R54 K166 [{"Cursor", "MouseEnter", "MouseLeave"}]
      753 LOADK                            R55 K111 ["PointingHand"]
      754 SETTABLEKS                       R55 R54 K109 ["Cursor"]
      756 GETTABLEKS                       R55 R0 K167 ["onMouseEnter"]
      758 SETTABLEKS                       R55 R54 K49 ["MouseEnter"]
      760 GETTABLEKS                       R55 R0 K168 ["onMouseLeave"]
      762 SETTABLEKS                       R55 R54 K50 ["MouseLeave"]
      764 CALL                             R52 2 -1
      765 SETLIST                          R50 R51 -1 [1]
      767 CALL                             R47 3 1
      768 SETTABLEKS                       R47 R46 K154 ["Tooltip"]
      770 CALL                             R43 3 1
      771 SETTABLEKS                       R43 R42 K114 ["Title"]
      773 GETUPVAL                         R44 0
      774 GETTABLEKS                       R43 R44 K36 ["createElement"]
      776 GETUPVAL                         R44 12
      777 DUPTABLE                         R45 K173 [{"Height", "MultiLine", "MaxLength", "Text", "TextSize", "LayoutOrder", "ErrorText", "OnTextChanged"}]
      778 GETTABLEKS                       R46 R23 K33 ["AltTextInputHeight"]
      780 SETTABLEKS                       R46 R45 K26 ["Height"]
      782 LOADB                            R46 1
      783 SETTABLEKS                       R46 R45 K169 ["MultiLine"]
      785 GETTABLEKS                       R46 R23 K174 ["MaxAltTextLength"]
      787 SETTABLEKS                       R46 R45 K170 ["MaxLength"]
      789 SETTABLEKS                       R17 R45 K88 ["Text"]
      791 GETTABLEKS                       R48 R21 K30 ["FontStyle"]
      793 GETTABLEKS                       R47 R48 K31 ["Normal"]
      795 GETTABLEKS                       R46 R47 K32 ["TextSize"]
      797 SETTABLEKS                       R46 R45 K32 ["TextSize"]
      799 LOADN                            R46 2
      800 SETTABLEKS                       R46 R45 K47 ["LayoutOrder"]
      802 SETTABLEKS                       R18 R45 K171 ["ErrorText"]
      804 NEWCLOSURE                       R46 P5
      805 CAPTURE                          VAL R0
      806 CAPTURE                          VAL R10
      807 SETTABLEKS                       R46 R45 K172 ["OnTextChanged"]
      809 CALL                             R43 2 1
      810 SETTABLEKS                       R43 R42 K147 ["TextBox"]
      812 CALL                             R39 3 1
      813 JUMP                             ; [+1]
      814 LOADNIL                          R39
      815 SETTABLEKS                       R39 R37 K175 ["AltText"]
      817 CALL                             R34 3 -1
      818 SETLIST                          R33 R34 -1 [1]
      820 CALL                             R30 3 -1
      821 RETURN                           R30 -1

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
       18 GETTABLEKS                       R3 R0 K8 ["ContextServices"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["withContext"]
       23 GETTABLEKS                       R5 R0 K2 ["UI"]
       25 GETTABLEKS                       R4 R5 K10 ["Components"]
       27 GETIMPORT                        R5 K6 [require]
       29 GETTABLEKS                       R6 R4 K11 ["HoverArea"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K6 [require]
       34 GETTABLEKS                       R7 R4 K12 ["Pane"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R8 R4 K13 ["TextInput"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K6 [require]
       44 GETTABLEKS                       R9 R4 K14 ["TextLabel"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K6 [require]
       49 GETTABLEKS                       R10 R4 K15 ["StyledDialog"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K6 [require]
       54 GETTABLEKS                       R11 R4 K16 ["Tooltip"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K6 [require]
       59 GETTABLEKS                       R12 R4 K17 ["Image"]
       61 CALL                             R11 1 1
       62 GETTABLEKS                       R12 R0 K18 ["Util"]
       64 GETIMPORT                        R13 K6 [require]
       66 GETTABLEKS                       R15 R0 K4 ["Parent"]
       68 GETTABLEKS                       R14 R15 K19 ["Cryo"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R14 K6 [require]
       73 GETTABLEKS                       R15 R12 K20 ["StyleModifier"]
       75 CALL                             R14 1 1
       76 GETIMPORT                        R15 K6 [require]
       78 GETTABLEKS                       R16 R12 K21 ["openVideoFromUrl"]
       80 CALL                             R15 1 1
       81 GETIMPORT                        R16 K6 [require]
       83 GETTABLEKS                       R18 R0 K4 ["Parent"]
       85 GETTABLEKS                       R17 R18 K22 ["Dash"]
       87 CALL                             R16 1 1
       88 GETTABLEKS                       R17 R16 K23 ["join"]
       90 GETIMPORT                        R18 K6 [require]
       92 GETTABLEKS                       R19 R0 K24 ["Resources"]
       94 CALL                             R18 1 1
       95 GETIMPORT                        R19 K6 [require]
       97 GETIMPORT                        R22 K1 [script]
       99 GETTABLEKS                       R21 R22 K4 ["Parent"]
      101 GETTABLEKS                       R20 R21 K25 ["RoundArrowButton"]
      103 CALL                             R19 1 1
      104 GETIMPORT                        R20 K6 [require]
      106 GETIMPORT                        R23 K1 [script]
      108 GETTABLEKS                       R22 R23 K4 ["Parent"]
      110 GETTABLEKS                       R21 R22 K26 ["types"]
      112 CALL                             R20 1 1
      113 GETTABLEKS                       R21 R18 K27 ["LOCALIZATION_PROJECT_NAME"]
      115 GETTABLEKS                       R22 R1 K28 ["Component"]
      117 LOADK                            R24 K29 ["PreviewThumbnailDialog"]
      118 NAMECALL                         R22 R22 K30 ["extend"]
      120 CALL                             R22 2 1
      121 DUPCLOSURE                       R23 K31 [PROTO_6]
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R17
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R1
      126 SETTABLEKS                       R23 R22 K32 ["init"]
      128 DUPCLOSURE                       R23 K33 [PROTO_7]
      129 SETTABLEKS                       R23 R22 K34 ["mouseHoverChanged"]
      131 DUPCLOSURE                       R23 K35 [PROTO_8]
      132 SETTABLEKS                       R23 R22 K36 ["didUpdate"]
      134 DUPCLOSURE                       R23 K37 [PROTO_15]
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R19
      137 CAPTURE                          VAL R17
      138 CAPTURE                          VAL R21
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R6
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R11
      146 CAPTURE                          VAL R10
      147 CAPTURE                          VAL R7
      148 SETTABLEKS                       R23 R22 K38 ["render"]
      150 MOVE                             R23 R3
      151 DUPTABLE                         R24 K40 [{"Localization"}]
      152 GETTABLEKS                       R25 R2 K39 ["Localization"]
      154 SETTABLEKS                       R25 R24 K39 ["Localization"]
      156 CALL                             R23 1 1
      157 MOVE                             R24 R22
      158 CALL                             R23 1 1
      159 MOVE                             R22 R23
      160 RETURN                           R22 1
