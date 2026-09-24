PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Order"]
        5 GETTABLEKS                       R2 R0 K2 ["StartThumbnailInfo"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K3 ["List"]
       13 GETTABLEKS                       R3 R3 K4 ["find"]
       15 MOVE                             R4 R1
       16 GETTABLEKS                       R5 R2 K5 ["thumbnailId"]
       18 CALL                             R3 2 1
       19 JUMPIFNOTEQKNIL                  R3 ; [+3]
       21 LOADNIL                          R4
       22 RETURN                           R4 1
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K6 ["state"]
       26 GETTABLEKS                       R4 R4 K7 ["IndexOffset"]
       28 ADD                              R8 R3 R4
       29 SUBK                             R7 R8 K8 [1]
       30 LENGTH                           R8 R1
       31 MOD                              R6 R7 R8
       32 ADDK                             R5 R6 K8 [1]
       33 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["IndexOffset"]
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R3 K2 [{"IndexOffset"}]
        7 SUBK                             R4 R0 K3 [1]
        8 SETTABLEKS                       R4 R3 K1 ["IndexOffset"]
       10 NAMECALL                         R1 R1 K4 ["setState"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["IndexOffset"]
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R3 K2 [{"IndexOffset"}]
        7 ADDK                             R4 R0 K3 [1]
        8 SETTABLEKS                       R4 R3 K1 ["IndexOffset"]
       10 NAMECALL                         R1 R1 K4 ["setState"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["Thumbnails"]
        5 GETTABLEKS                       R4 R2 K2 ["Theme"]
        7 GETTABLEKS                       R4 R4 K3 ["PreviewThumbnailDialog"]
        9 GETTABLEKS                       R4 R4 K4 ["MaxAltTextLength"]
       11 GETTABLE                         R5 R3 R0
       12 GETUPVAL                         R6 0
       13 DUPTABLE                         R8 K7 [{"AltTexts", "Disabled"}]
       14 GETUPVAL                         R9 1
       15 GETUPVAL                         R10 0
       16 GETTABLEKS                       R10 R10 K8 ["state"]
       18 GETTABLEKS                       R10 R10 K5 ["AltTexts"]
       20 NEWTABLE                         R11 1 0
       22 GETTABLEKS                       R13 R5 K9 ["altText"]
       24 JUMPIFEQ                         R13 R1 ; [+3]
       26 MOVE                             R12 R1
       27 JUMP                             ; [+3]
       28 GETUPVAL                         R12 2
       29 GETTABLEKS                       R12 R12 K10 ["None"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["StyleModifier"]
        5 JUMPIFNOTEQKNIL                  R0 ; [+11]
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K2 [{"StyleModifier"}]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K3 ["Hover"]
       12 SETTABLEKS                       R3 R2 K1 ["StyleModifier"]
       14 NAMECALL                         R0 R0 K4 ["setState"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["StyleModifier"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["Hover"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+11]
       10 GETUPVAL                         R0 0
       11 DUPTABLE                         R2 K3 [{"StyleModifier"}]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K4 ["None"]
       15 SETTABLEKS                       R3 R2 K1 ["StyleModifier"]
       17 NAMECALL                         R0 R0 K5 ["setState"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K7 [{[1] = , ["IndexOffset"] = 0, ["Hovering"] = False, ["AltTexts"]}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K6 ["AltTexts"]
        5 SETTABLEKS                       R1 R0 K8 ["state"]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U0
       10 SETTABLEKS                       R1 R0 K9 ["getCurrentIndex"]
       12 NEWCLOSURE                       R1 P1
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K10 ["moveLeft"]
       16 NEWCLOSURE                       R1 P2
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K11 ["moveRight"]
       20 NEWCLOSURE                       R1 P3
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U0
       24 SETTABLEKS                       R1 R0 K12 ["altTextChanged"]
       26 NEWCLOSURE                       R1 P4
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U2
       29 SETTABLEKS                       R1 R0 K13 ["onMouseEnter"]
       31 NEWCLOSURE                       R1 P5
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U3
       35 SETTABLEKS                       R1 R0 K14 ["onMouseLeave"]
       37 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R4 K1 [{"Hovering"}]
        1 SETTABLEKS                       R1 R4 K0 ["Hovering"]
        3 NAMECALL                         R2 R0 K2 ["setState"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["StartThumbnailInfo"]
        4 JUMPIFEQKNIL                     R3 ; [+13]
        6 GETTABLEKS                       R3 R2 K1 ["StartThumbnailInfo"]
        8 JUMPIFNOTEQKNIL                  R3 ; [+9]
       10 DUPTABLE                         R5 K5 [{["IndexOffset"] = 0, ["AltTexts"]}]
       11 NEWTABLE                         R6 0 0
       13 SETTABLEKS                       R6 R5 K4 ["AltTexts"]
       15 NAMECALL                         R3 R0 K6 ["setState"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getYoutubeWatchUrl"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["open"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["UpdateAltTexts"]
        4 GETUPVAL                         R2 1
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["OnClose"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnClose"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["altTextChanged"]
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
       13 GETTABLEKS                       R6 R0 K5 ["state"]
       15 GETTABLEKS                       R6 R6 K6 ["AltTexts"]
       17 GETTABLEKS                       R7 R0 K5 ["state"]
       19 GETTABLEKS                       R7 R7 K7 ["Hovering"]
       21 GETTABLEKS                       R8 R0 K5 ["state"]
       23 GETTABLEKS                       R8 R8 K8 ["Disabled"]
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
       96 GETTABLEKS                       R30 R23 K27 ["Size"]
       98 GETTABLEKS                       R30 R30 K28 ["Y"]
      100 GETTABLEKS                       R30 R30 K29 ["Offset"]
      102 SUB                              R28 R29 R30
      103 GETTABLEKS                       R29 R21 K30 ["FontStyle"]
      105 GETTABLEKS                       R29 R29 K31 ["Normal"]
      107 GETTABLEKS                       R29 R29 K32 ["TextSize"]
      109 SUB                              R27 R28 R29
      110 GETTABLEKS                       R28 R23 K33 ["AltTextInputHeight"]
      112 SUB                              R26 R27 R28
      113 GETTABLEKS                       R27 R23 K34 ["ButtonPadding"]
      115 GETTABLEKS                       R28 R23 K35 ["ImagePadding"]
      117 GETUPVAL                         R29 0
      118 GETTABLEKS                       R29 R29 K36 ["createElement"]
      120 LOADK                            R30 K37 ["ImageLabel"]
      121 NEWTABLE                         R31 8 0
      123 GETTABLEKS                       R32 R23 K27 ["Size"]
      125 SETTABLEKS                       R32 R31 K27 ["Size"]
      127 LOADN                            R32 1
      128 SETTABLEKS                       R32 R31 K38 ["BackgroundTransparency"]
      130 SETTABLEKS                       R22 R31 K39 ["Image"]
      132 JUMPIFEQKNIL                     R12 ; [+6]
      134 GETTABLEKS                       R32 R21 K40 ["Thumbnail"]
      136 GETTABLEKS                       R32 R32 K41 ["Background"]
      138 JUMPIF                           R32 ; [+1]
      139 LOADNIL                          R32
      140 SETTABLEKS                       R32 R31 K42 ["ImageColor3"]
      142 GETIMPORT                        R32 K46 [Enum.ScaleType.Fit]
      144 SETTABLEKS                       R32 R31 K44 ["ScaleType"]
      146 LOADN                            R32 1
      147 SETTABLEKS                       R32 R31 K47 ["LayoutOrder"]
      149 GETUPVAL                         R32 0
      150 GETTABLEKS                       R32 R32 K48 ["Event"]
      152 GETTABLEKS                       R32 R32 K49 ["MouseEnter"]
      154 NEWCLOSURE                       R33 P0
      155 CAPTURE                          VAL R0
      156 SETTABLE                         R33 R31 R32
      157 GETUPVAL                         R32 0
      158 GETTABLEKS                       R32 R32 K48 ["Event"]
      160 GETTABLEKS                       R32 R32 K50 ["MouseLeave"]
      162 NEWCLOSURE                       R33 P1
      163 CAPTURE                          VAL R0
      164 SETTABLE                         R33 R31 R32
      165 DUPTABLE                         R32 K56 [{"Padding", "LeftButton", "RightButton", "TitleFrame", "VideoWarning"}]
      166 GETUPVAL                         R33 0
      167 GETTABLEKS                       R33 R33 K36 ["createElement"]
      169 LOADK                            R34 K57 ["UIPadding"]
      170 DUPTABLE                         R35 K62 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      171 SETTABLEKS                       R27 R35 K58 ["PaddingTop"]
      173 SETTABLEKS                       R27 R35 K59 ["PaddingBottom"]
      175 SETTABLEKS                       R27 R35 K60 ["PaddingLeft"]
      177 SETTABLEKS                       R27 R35 K61 ["PaddingRight"]
      179 CALL                             R33 2 1
      180 SETTABLEKS                       R33 R32 K51 ["Padding"]
      182 MOVE                             R33 R19
      183 JUMPIFNOT                        R33 ; [+30]
      184 GETUPVAL                         R33 0
      185 GETTABLEKS                       R33 R33 K36 ["createElement"]
      187 GETUPVAL                         R34 1
      188 DUPTABLE                         R35 K68 [{["AnchorPoint"], ["Disabled"], ["Flipped"] = True, ["OnClick"], ["Position"], ["Theme"]}]
      189 GETIMPORT                        R36 K71 [Vector2.new]
      191 LOADN                            R37 0
      192 LOADK                            R38 K72 [0.5]
      193 CALL                             R36 2 1
      194 SETTABLEKS                       R36 R35 K63 ["AnchorPoint"]
      196 SETTABLEKS                       R8 R35 K8 ["Disabled"]
      198 GETTABLEKS                       R36 R0 K73 ["moveLeft"]
      200 SETTABLEKS                       R36 R35 K66 ["OnClick"]
      202 GETIMPORT                        R36 K75 [UDim2.new]
      204 LOADN                            R37 0
      205 LOADN                            R38 0
      206 LOADK                            R39 K72 [0.5]
      207 LOADN                            R40 0
      208 CALL                             R36 4 1
      209 SETTABLEKS                       R36 R35 K67 ["Position"]
      211 SETTABLEKS                       R21 R35 K19 ["Theme"]
      213 CALL                             R33 2 1
      214 SETTABLEKS                       R33 R32 K52 ["LeftButton"]
      216 MOVE                             R33 R19
      217 JUMPIFNOT                        R33 ; [+30]
      218 GETUPVAL                         R33 0
      219 GETTABLEKS                       R33 R33 K36 ["createElement"]
      221 GETUPVAL                         R34 1
      222 DUPTABLE                         R35 K76 [{"AnchorPoint", "Disabled", "OnClick", "Position", "Theme"}]
      223 GETIMPORT                        R36 K71 [Vector2.new]
      225 LOADN                            R37 1
      226 LOADK                            R38 K72 [0.5]
      227 CALL                             R36 2 1
      228 SETTABLEKS                       R36 R35 K63 ["AnchorPoint"]
      230 SETTABLEKS                       R8 R35 K8 ["Disabled"]
      232 GETTABLEKS                       R36 R0 K77 ["moveRight"]
      234 SETTABLEKS                       R36 R35 K66 ["OnClick"]
      236 GETIMPORT                        R36 K75 [UDim2.new]
      238 LOADN                            R37 1
      239 LOADN                            R38 0
      240 LOADK                            R39 K72 [0.5]
      241 LOADN                            R40 0
      242 CALL                             R36 4 1
      243 SETTABLEKS                       R36 R35 K67 ["Position"]
      245 SETTABLEKS                       R21 R35 K19 ["Theme"]
      247 CALL                             R33 2 1
      248 SETTABLEKS                       R33 R32 K53 ["RightButton"]
      250 GETUPVAL                         R33 0
      251 GETTABLEKS                       R33 R33 K36 ["createElement"]
      253 LOADK                            R34 K78 ["Frame"]
      254 DUPTABLE                         R35 K84 [{["Visible"], ["BackgroundTransparency"] = 0.3, ["BorderSizePixel"] = 0, ["BackgroundColor3"], ["Size"]}]
      255 JUMPIFNOTEQKNIL                  R13 ; [+2]
      257 LOADB                            R36 0 +1
      258 LOADB                            R36 1
      259 SETTABLEKS                       R36 R35 K79 ["Visible"]
      261 GETTABLEKS                       R36 R21 K85 ["Colors"]
      263 GETTABLEKS                       R36 R36 K86 ["Black"]
      265 SETTABLEKS                       R36 R35 K83 ["BackgroundColor3"]
      267 GETIMPORT                        R36 K75 [UDim2.new]
      269 LOADN                            R37 1
      270 LOADN                            R38 0
      271 LOADN                            R39 0
      272 LOADN                            R40 30
      273 CALL                             R36 4 1
      274 SETTABLEKS                       R36 R35 K27 ["Size"]
      276 DUPTABLE                         R36 K88 [{"TitleText"}]
      277 GETUPVAL                         R37 0
      278 GETTABLEKS                       R37 R37 K36 ["createElement"]
      280 LOADK                            R38 K89 ["TextLabel"]
      281 GETUPVAL                         R39 2
      282 GETTABLEKS                       R40 R21 K30 ["FontStyle"]
      284 GETTABLEKS                       R40 R40 K31 ["Normal"]
      286 DUPTABLE                         R41 K94 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["AnchorPoint"], ["Text"], ["TextTruncate"], ["TextXAlignment"]}]
      287 GETIMPORT                        R42 K75 [UDim2.new]
      289 LOADN                            R43 1
      290 LOADN                            R44 -20
      291 LOADN                            R45 1
      292 LOADN                            R46 0
      293 CALL                             R42 4 1
      294 SETTABLEKS                       R42 R41 K27 ["Size"]
      296 GETIMPORT                        R42 K75 [UDim2.new]
      298 LOADK                            R43 K72 [0.5]
      299 LOADN                            R44 0
      300 LOADN                            R45 0
      301 LOADN                            R46 0
      302 CALL                             R42 4 1
      303 SETTABLEKS                       R42 R41 K67 ["Position"]
      305 GETIMPORT                        R42 K71 [Vector2.new]
      307 LOADK                            R43 K72 [0.5]
      308 LOADN                            R44 0
      309 CALL                             R42 2 1
      310 SETTABLEKS                       R42 R41 K63 ["AnchorPoint"]
      312 SETTABLEKS                       R13 R41 K91 ["Text"]
      314 GETIMPORT                        R42 K96 [Enum.TextTruncate.AtEnd]
      316 SETTABLEKS                       R42 R41 K92 ["TextTruncate"]
      318 GETIMPORT                        R42 K98 [Enum.TextXAlignment.Left]
      320 SETTABLEKS                       R42 R41 K93 ["TextXAlignment"]
      322 CALL                             R39 2 -1
      323 CALL                             R37 -1 1
      324 SETTABLEKS                       R37 R36 K87 ["TitleText"]
      326 CALL                             R33 3 1
      327 SETTABLEKS                       R33 R32 K54 ["TitleFrame"]
      329 GETUPVAL                         R33 0
      330 GETTABLEKS                       R33 R33 K36 ["createElement"]
      332 LOADK                            R34 K78 ["Frame"]
      333 DUPTABLE                         R35 K99 [{["Visible"], ["BackgroundTransparency"] = 0.3, ["BorderSizePixel"] = 0, ["Size"], ["Position"], ["AnchorPoint"], ["BackgroundColor3"]}]
      334 JUMPIFNOTEQKNIL                  R12 ; [+2]
      336 LOADB                            R36 0 +1
      337 LOADB                            R36 1
      338 SETTABLEKS                       R36 R35 K79 ["Visible"]
      340 GETIMPORT                        R36 K75 [UDim2.new]
      342 LOADN                            R37 0
      343 LOADN                            R38 400
      344 LOADN                            R39 0
      345 LOADN                            R40 120
      346 CALL                             R36 4 1
      347 SETTABLEKS                       R36 R35 K27 ["Size"]
      349 GETIMPORT                        R36 K75 [UDim2.new]
      351 LOADK                            R37 K72 [0.5]
      352 LOADN                            R38 0
      353 LOADK                            R39 K72 [0.5]
      354 LOADN                            R40 0
      355 CALL                             R36 4 1
      356 SETTABLEKS                       R36 R35 K67 ["Position"]
      358 GETIMPORT                        R36 K71 [Vector2.new]
      360 LOADK                            R37 K72 [0.5]
      361 LOADK                            R38 K72 [0.5]
      362 CALL                             R36 2 1
      363 SETTABLEKS                       R36 R35 K63 ["AnchorPoint"]
      365 GETTABLEKS                       R36 R21 K85 ["Colors"]
      367 GETTABLEKS                       R36 R36 K86 ["Black"]
      369 SETTABLEKS                       R36 R35 K83 ["BackgroundColor3"]
      371 DUPTABLE                         R36 K102 [{"Message", "Link"}]
      372 GETUPVAL                         R37 0
      373 GETTABLEKS                       R37 R37 K36 ["createElement"]
      375 LOADK                            R38 K89 ["TextLabel"]
      376 GETUPVAL                         R39 2
      377 GETTABLEKS                       R40 R21 K30 ["FontStyle"]
      379 GETTABLEKS                       R40 R40 K31 ["Normal"]
      381 DUPTABLE                         R41 K103 [{["Size"], ["BackgroundTransparency"] = 1, ["Text"]}]
      382 GETIMPORT                        R42 K75 [UDim2.new]
      384 LOADN                            R43 1
      385 LOADN                            R44 0
      386 JUMPIFNOT                        R4 ; [+2]
      387 LOADK                            R45 K72 [0.5]
      388 JUMP                             ; [+1]
      389 LOADN                            R45 1
      390 LOADN                            R46 0
      391 CALL                             R42 4 1
      392 SETTABLEKS                       R42 R41 K27 ["Size"]
      394 GETUPVAL                         R44 3
      395 LOADK                            R45 K104 ["MultiImagePicker"]
      396 LOADK                            R46 K105 ["PreviewDialogBody"]
      397 NAMECALL                         R42 R25 K106 ["getProjectText"]
      399 CALL                             R42 4 1
      400 SETTABLEKS                       R42 R41 K91 ["Text"]
      402 CALL                             R39 2 -1
      403 CALL                             R37 -1 1
      404 SETTABLEKS                       R37 R36 K100 ["Message"]
      406 JUMPIFNOT                        R4 ; [+66]
      407 GETUPVAL                         R37 0
      408 GETTABLEKS                       R37 R37 K36 ["createElement"]
      410 LOADK                            R38 K107 ["TextButton"]
      411 GETUPVAL                         R39 2
      412 GETTABLEKS                       R40 R21 K30 ["FontStyle"]
      414 GETTABLEKS                       R40 R40 K31 ["Normal"]
      416 NEWTABLE                         R41 8 0
      418 GETIMPORT                        R42 K75 [UDim2.new]
      420 LOADN                            R43 1
      421 LOADN                            R44 0
      422 LOADK                            R45 K72 [0.5]
      423 LOADN                            R46 0
      424 CALL                             R42 4 1
      425 SETTABLEKS                       R42 R41 K27 ["Size"]
      427 GETIMPORT                        R42 K75 [UDim2.new]
      429 LOADN                            R43 0
      430 LOADN                            R44 0
      431 LOADK                            R45 K72 [0.5]
      432 LOADN                            R46 0
      433 CALL                             R42 4 1
      434 SETTABLEKS                       R42 R41 K67 ["Position"]
      436 LOADN                            R42 1
      437 SETTABLEKS                       R42 R41 K38 ["BackgroundTransparency"]
      439 GETUPVAL                         R44 3
      440 LOADK                            R45 K104 ["MultiImagePicker"]
      441 LOADK                            R46 K108 ["PreviewDialogLink"]
      442 NAMECALL                         R42 R25 K106 ["getProjectText"]
      444 CALL                             R42 4 1
      445 SETTABLEKS                       R42 R41 K91 ["Text"]
      447 GETTABLEKS                       R42 R21 K109 ["Hyperlink"]
      449 SETTABLEKS                       R42 R41 K110 ["TextColor3"]
      451 GETUPVAL                         R42 0
      452 GETTABLEKS                       R42 R42 K48 ["Event"]
      454 GETTABLEKS                       R42 R42 K111 ["Activated"]
      456 NEWCLOSURE                       R43 P2
      457 CAPTURE                          UPVAL U4
      458 CAPTURE                          VAL R12
      459 SETTABLE                         R43 R41 R42
      460 CALL                             R39 2 1
      461 NEWTABLE                         R40 0 1
      463 GETUPVAL                         R41 0
      464 GETTABLEKS                       R41 R41 K36 ["createElement"]
      466 GETUPVAL                         R42 5
      467 DUPTABLE                         R43 K114 [{["Cursor"] = "PointingHand"}]
      468 CALL                             R41 2 -1
      469 SETLIST                          R40 R41 -1 [1]
      471 CALL                             R37 3 1
      472 JUMP                             ; [+1]
      473 LOADNIL                          R37
      474 SETTABLEKS                       R37 R36 K101 ["Link"]
      476 CALL                             R33 3 1
      477 SETTABLEKS                       R33 R32 K55 ["VideoWarning"]
      479 CALL                             R29 3 1
      480 GETUPVAL                         R30 0
      481 GETTABLEKS                       R30 R30 K36 ["createElement"]
      483 GETUPVAL                         R31 6
      484 DUPTABLE                         R32 K124 [{["Style"] = "Alert", ["Enabled"], ["Title"], ["MinContentSize"], ["ButtonHorizontalAlignment"], ["Buttons"], ["OnButtonPressed"], ["OnClose"]}]
      485 GETTABLEKS                       R33 R1 K117 ["Enabled"]
      487 SETTABLEKS                       R33 R32 K117 ["Enabled"]
      489 GETUPVAL                         R35 3
      490 LOADK                            R36 K104 ["MultiImagePicker"]
      491 LOADK                            R37 K125 ["PreviewDialogHeader"]
      492 NAMECALL                         R33 R25 K106 ["getProjectText"]
      494 CALL                             R33 4 1
      495 SETTABLEKS                       R33 R32 K118 ["Title"]
      497 GETIMPORT                        R33 K71 [Vector2.new]
      499 LOADN                            R34 660
      500 GETTABLEKS                       R35 R23 K26 ["Height"]
      502 CALL                             R33 2 1
      503 SETTABLEKS                       R33 R32 K119 ["MinContentSize"]
      505 GETIMPORT                        R33 K128 [Enum.HorizontalAlignment.Right]
      507 SETTABLEKS                       R33 R32 K120 ["ButtonHorizontalAlignment"]
      509 NEWTABLE                         R33 0 1
      511 DUPTABLE                         R34 K132 [{["Key"] = True, ["Text"], ["Style"] = "RoundLargeTextPrimary", ["StyleModifier"]}]
      512 GETUPVAL                         R37 3
      513 LOADK                            R38 K104 ["MultiImagePicker"]
      514 LOADK                            R39 K133 ["ButtonSave"]
      515 NAMECALL                         R35 R25 K106 ["getProjectText"]
      517 CALL                             R35 4 1
      518 SETTABLEKS                       R35 R34 K91 ["Text"]
      520 JUMPIFNOT                        R8 ; [+4]
      521 GETUPVAL                         R35 7
      522 GETTABLEKS                       R35 R35 K8 ["Disabled"]
      524 JUMP                             ; [+1]
      525 LOADNIL                          R35
      526 SETTABLEKS                       R35 R34 K131 ["StyleModifier"]
      528 SETLIST                          R33 R34 1 [1]
      530 SETTABLEKS                       R33 R32 K121 ["Buttons"]
      532 NEWCLOSURE                       R33 P3
      533 CAPTURE                          VAL R1
      534 CAPTURE                          VAL R6
      535 SETTABLEKS                       R33 R32 K122 ["OnButtonPressed"]
      537 NEWCLOSURE                       R33 P4
      538 CAPTURE                          VAL R1
      539 SETTABLEKS                       R33 R32 K123 ["OnClose"]
      541 NEWTABLE                         R33 0 1
      543 GETUPVAL                         R34 0
      544 GETTABLEKS                       R34 R34 K36 ["createElement"]
      546 GETUPVAL                         R35 8
      547 DUPTABLE                         R36 K136 [{"Padding", "Size", "Layout", "VerticalAlignment"}]
      548 SETTABLEKS                       R28 R36 K51 ["Padding"]
      550 GETIMPORT                        R37 K75 [UDim2.new]
      552 LOADN                            R38 1
      553 LOADN                            R39 0
      554 LOADN                            R40 1
      555 LOADN                            R41 0
      556 CALL                             R37 4 1
      557 SETTABLEKS                       R37 R36 K27 ["Size"]
      559 GETIMPORT                        R37 K139 [Enum.FillDirection.Vertical]
      561 SETTABLEKS                       R37 R36 K134 ["Layout"]
      563 GETIMPORT                        R37 K141 [Enum.VerticalAlignment.Center]
      565 SETTABLEKS                       R37 R36 K135 ["VerticalAlignment"]
      567 NEWTABLE                         R37 1 1
      569 MOVE                             R38 R29
      570 SETLIST                          R37 R38 1 [1]
      572 GETTABLEKS                       R40 R1 K142 ["ShowAltText"]
      574 JUMPIFNOT                        R40 ; [+191]
      575 GETUPVAL                         R39 0
      576 GETTABLEKS                       R39 R39 K36 ["createElement"]
      578 GETUPVAL                         R40 8
      579 DUPTABLE                         R41 K145 [{["Size"], ["AutomaticSize"], ["Layout"], ["HorizontalAlignment"], ["VerticalAlignment"], ["LayoutOrder"] = 2}]
      580 GETIMPORT                        R42 K75 [UDim2.new]
      582 LOADN                            R43 1
      583 LOADN                            R44 0
      584 LOADN                            R45 0
      585 MOVE                             R46 R26
      586 CALL                             R42 4 1
      587 SETTABLEKS                       R42 R41 K27 ["Size"]
      589 GETIMPORT                        R42 K147 [Enum.AutomaticSize.XY]
      591 SETTABLEKS                       R42 R41 K143 ["AutomaticSize"]
      593 GETIMPORT                        R42 K139 [Enum.FillDirection.Vertical]
      595 SETTABLEKS                       R42 R41 K134 ["Layout"]
      597 GETIMPORT                        R42 K148 [Enum.HorizontalAlignment.Left]
      599 SETTABLEKS                       R42 R41 K126 ["HorizontalAlignment"]
      601 GETIMPORT                        R42 K150 [Enum.VerticalAlignment.Top]
      603 SETTABLEKS                       R42 R41 K135 ["VerticalAlignment"]
      605 DUPTABLE                         R42 K152 [{"Title", "TextBox"}]
      606 GETUPVAL                         R43 0
      607 GETTABLEKS                       R43 R43 K36 ["createElement"]
      609 GETUPVAL                         R44 9
      610 DUPTABLE                         R45 K154 [{["Style"] = "SubText", ["Text"], ["AutomaticSize"], ["Size"], ["TextXAlignment"]}]
      611 GETUPVAL                         R48 3
      612 LOADK                            R49 K104 ["MultiImagePicker"]
      613 LOADK                            R50 K155 ["TitleAltText"]
      614 NAMECALL                         R46 R25 K106 ["getProjectText"]
      616 CALL                             R46 4 1
      617 SETTABLEKS                       R46 R45 K91 ["Text"]
      619 GETIMPORT                        R46 K157 [Enum.AutomaticSize.X]
      621 SETTABLEKS                       R46 R45 K143 ["AutomaticSize"]
      623 GETIMPORT                        R46 K75 [UDim2.new]
      625 LOADN                            R47 0
      626 LOADN                            R48 0
      627 LOADN                            R49 0
      628 GETTABLEKS                       R50 R21 K30 ["FontStyle"]
      630 GETTABLEKS                       R50 R50 K31 ["Normal"]
      632 GETTABLEKS                       R50 R50 K32 ["TextSize"]
      634 CALL                             R46 4 1
      635 SETTABLEKS                       R46 R45 K27 ["Size"]
      637 GETIMPORT                        R46 K98 [Enum.TextXAlignment.Left]
      639 SETTABLEKS                       R46 R45 K93 ["TextXAlignment"]
      641 DUPTABLE                         R46 K159 [{"Tooltip"}]
      642 GETUPVAL                         R47 0
      643 GETTABLEKS                       R47 R47 K36 ["createElement"]
      645 GETUPVAL                         R48 10
      646 DUPTABLE                         R49 K161 [{"Size", "Position", "StyleModifier", "Image", "Color", "Style"}]
      647 GETIMPORT                        R50 K163 [UDim2.fromOffset]
      649 GETTABLEKS                       R51 R24 K27 ["Size"]
      651 GETTABLEKS                       R52 R24 K27 ["Size"]
      653 CALL                             R50 2 1
      654 SETTABLEKS                       R50 R49 K27 ["Size"]
      656 GETIMPORT                        R50 K75 [UDim2.new]
      658 LOADN                            R51 1
      659 GETTABLEKS                       R52 R24 K164 ["PaddingX"]
      661 LOADN                            R53 0
      662 LOADN                            R54 0
      663 CALL                             R50 4 1
      664 SETTABLEKS                       R50 R49 K67 ["Position"]
      666 GETTABLEKS                       R50 R0 K5 ["state"]
      668 GETTABLEKS                       R50 R50 K131 ["StyleModifier"]
      670 SETTABLEKS                       R50 R49 K131 ["StyleModifier"]
      672 GETTABLEKS                       R50 R24 K39 ["Image"]
      674 SETTABLEKS                       R50 R49 K39 ["Image"]
      676 GETTABLEKS                       R50 R24 K160 ["Color"]
      678 SETTABLEKS                       R50 R49 K160 ["Color"]
      680 NEWTABLE                         R50 1 0
      682 GETUPVAL                         R51 7
      683 GETTABLEKS                       R51 R51 K165 ["Hover"]
      685 DUPTABLE                         R52 K166 [{"Color"}]
      686 GETTABLEKS                       R53 R24 K167 ["HoverColor"]
      688 SETTABLEKS                       R53 R52 K160 ["Color"]
      690 SETTABLE                         R52 R50 R51
      691 SETTABLEKS                       R50 R49 K115 ["Style"]
      693 NEWTABLE                         R50 0 2
      695 GETUPVAL                         R51 0
      696 GETTABLEKS                       R51 R51 K36 ["createElement"]
      698 GETUPVAL                         R52 11
      699 DUPTABLE                         R53 K168 [{"Text"}]
      700 GETUPVAL                         R56 3
      701 LOADK                            R57 K104 ["MultiImagePicker"]
      702 LOADK                            R58 K169 ["DescriptionAltText"]
      703 NAMECALL                         R54 R25 K106 ["getProjectText"]
      705 CALL                             R54 4 1
      706 SETTABLEKS                       R54 R53 K91 ["Text"]
      708 CALL                             R51 2 1
      709 GETUPVAL                         R52 0
      710 GETTABLEKS                       R52 R52 K36 ["createElement"]
      712 GETUPVAL                         R53 5
      713 DUPTABLE                         R54 K170 [{["Cursor"] = "PointingHand", ["MouseEnter"], ["MouseLeave"]}]
      714 GETTABLEKS                       R55 R0 K171 ["onMouseEnter"]
      716 SETTABLEKS                       R55 R54 K49 ["MouseEnter"]
      718 GETTABLEKS                       R55 R0 K172 ["onMouseLeave"]
      720 SETTABLEKS                       R55 R54 K50 ["MouseLeave"]
      722 CALL                             R52 2 -1
      723 SETLIST                          R50 R51 -1 [1]
      725 CALL                             R47 3 1
      726 SETTABLEKS                       R47 R46 K158 ["Tooltip"]
      728 CALL                             R43 3 1
      729 SETTABLEKS                       R43 R42 K118 ["Title"]
      731 GETUPVAL                         R43 0
      732 GETTABLEKS                       R43 R43 K36 ["createElement"]
      734 GETUPVAL                         R44 12
      735 DUPTABLE                         R45 K177 [{["Height"], ["MultiLine"] = True, ["MaxLength"], ["Text"], ["TextSize"], ["LayoutOrder"] = 2, ["ErrorText"], ["OnTextChanged"]}]
      736 GETTABLEKS                       R46 R23 K33 ["AltTextInputHeight"]
      738 SETTABLEKS                       R46 R45 K26 ["Height"]
      740 GETTABLEKS                       R46 R23 K178 ["MaxAltTextLength"]
      742 SETTABLEKS                       R46 R45 K174 ["MaxLength"]
      744 SETTABLEKS                       R17 R45 K91 ["Text"]
      746 GETTABLEKS                       R46 R21 K30 ["FontStyle"]
      748 GETTABLEKS                       R46 R46 K31 ["Normal"]
      750 GETTABLEKS                       R46 R46 K32 ["TextSize"]
      752 SETTABLEKS                       R46 R45 K32 ["TextSize"]
      754 SETTABLEKS                       R18 R45 K175 ["ErrorText"]
      756 NEWCLOSURE                       R46 P5
      757 CAPTURE                          VAL R0
      758 CAPTURE                          VAL R10
      759 SETTABLEKS                       R46 R45 K176 ["OnTextChanged"]
      761 CALL                             R43 2 1
      762 SETTABLEKS                       R43 R42 K151 ["TextBox"]
      764 CALL                             R39 3 1
      765 JUMP                             ; [+1]
      766 LOADNIL                          R39
      767 SETTABLEKS                       R39 R37 K179 ["AltText"]
      769 CALL                             R34 3 -1
      770 SETLIST                          R33 R34 -1 [1]
      772 CALL                             R30 3 -1
      773 RETURN                           R30 -1

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
       18 GETTABLEKS                       R3 R0 K8 ["ContextServices"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["withContext"]
       23 GETTABLEKS                       R4 R0 K2 ["UI"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
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
       66 GETTABLEKS                       R14 R0 K4 ["Parent"]
       68 GETTABLEKS                       R14 R14 K19 ["Cryo"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R14 K6 [require]
       73 GETTABLEKS                       R15 R12 K20 ["StyleModifier"]
       75 CALL                             R14 1 1
       76 GETIMPORT                        R15 K6 [require]
       78 GETTABLEKS                       R16 R12 K21 ["openVideoFromUrl"]
       80 CALL                             R15 1 1
       81 GETIMPORT                        R16 K6 [require]
       83 GETTABLEKS                       R17 R0 K4 ["Parent"]
       85 GETTABLEKS                       R17 R17 K22 ["Dash"]
       87 CALL                             R16 1 1
       88 GETTABLEKS                       R17 R16 K23 ["join"]
       90 GETIMPORT                        R18 K6 [require]
       92 GETTABLEKS                       R19 R0 K24 ["Resources"]
       94 CALL                             R18 1 1
       95 GETIMPORT                        R19 K6 [require]
       97 GETIMPORT                        R20 K1 [script]
       99 GETTABLEKS                       R20 R20 K4 ["Parent"]
      101 GETTABLEKS                       R20 R20 K25 ["RoundArrowButton"]
      103 CALL                             R19 1 1
      104 GETIMPORT                        R20 K6 [require]
      106 GETIMPORT                        R21 K1 [script]
      108 GETTABLEKS                       R21 R21 K4 ["Parent"]
      110 GETTABLEKS                       R21 R21 K26 ["types"]
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
