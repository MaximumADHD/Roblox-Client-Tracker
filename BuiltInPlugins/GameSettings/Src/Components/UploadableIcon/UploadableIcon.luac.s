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
        5 LOADK                            R5 K2 ["PointingHand"]
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
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["mouseHoverChanged"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Image"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K3 ["Review"]
        8 ORK                              R2 R3 K2 [False]
        9 GETTABLEKS                       R4 R0 K0 ["props"]
       11 GETTABLEKS                       R4 R4 K4 ["Preview"]
       13 ORK                              R3 R4 K2 [False]
       14 GETTABLEKS                       R4 R0 K5 ["state"]
       16 GETTABLEKS                       R4 R4 K6 ["Hovering"]
       18 GETTABLEKS                       R5 R0 K0 ["props"]
       20 GETTABLEKS                       R5 R5 K7 ["Stylizer"]
       22 GETTABLEKS                       R6 R0 K0 ["props"]
       24 GETTABLEKS                       R6 R6 K8 ["Localization"]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K9 ["createElement"]
       29 LOADK                            R8 K10 ["ImageLabel"]
       30 NEWTABLE                         R9 8 0
       32 GETTABLEKS                       R10 R0 K0 ["props"]
       34 GETTABLEKS                       R10 R10 K11 ["Visible"]
       36 SETTABLEKS                       R10 R9 K11 ["Visible"]
       38 GETIMPORT                        R10 K14 [UDim2.new]
       40 LOADN                            R11 0
       41 LOADN                            R12 150
       42 LOADN                            R13 0
       43 LOADN                            R14 150
       44 CALL                             R10 4 1
       45 SETTABLEKS                       R10 R9 K15 ["Size"]
       47 LOADN                            R10 1
       48 SETTABLEKS                       R10 R9 K16 ["BackgroundTransparency"]
       50 LOADB                            R10 1
       51 SETTABLEKS                       R10 R9 K17 ["ClipsDescendants"]
       53 LOADK                            R10 K18 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
       54 SETTABLEKS                       R10 R9 K1 ["Image"]
       56 GETUPVAL                         R10 0
       57 GETTABLEKS                       R10 R10 K19 ["Ref"]
       59 GETTABLEKS                       R11 R0 K20 ["buttonRef"]
       61 SETTABLE                         R11 R9 R10
       62 GETUPVAL                         R10 0
       63 GETTABLEKS                       R10 R10 K21 ["Event"]
       65 GETTABLEKS                       R10 R10 K22 ["MouseEnter"]
       67 NEWCLOSURE                       R11 P0
       68 CAPTURE                          VAL R0
       69 SETTABLE                         R11 R9 R10
       70 GETUPVAL                         R10 0
       71 GETTABLEKS                       R10 R10 K21 ["Event"]
       73 GETTABLEKS                       R10 R10 K23 ["MouseLeave"]
       75 NEWCLOSURE                       R11 P1
       76 CAPTURE                          VAL R0
       77 SETTABLE                         R11 R9 R10
       78 DUPTABLE                         R10 K27 [{"Icon", "InfoText", "Change"}]
       79 GETUPVAL                         R11 0
       80 GETTABLEKS                       R11 R11 K9 ["createElement"]
       82 LOADK                            R12 K10 ["ImageLabel"]
       83 DUPTABLE                         R13 K29 [{"Visible", "BackgroundTransparency", "Image", "ScaleType", "Size"}]
       84 GETTABLEKS                       R14 R0 K0 ["props"]
       86 GETTABLEKS                       R14 R14 K11 ["Visible"]
       88 SETTABLEKS                       R14 R13 K11 ["Visible"]
       90 LOADN                            R14 1
       91 SETTABLEKS                       R14 R13 K16 ["BackgroundTransparency"]
       93 SETTABLEKS                       R1 R13 K1 ["Image"]
       95 GETIMPORT                        R14 K32 [Enum.ScaleType.Crop]
       97 SETTABLEKS                       R14 R13 K28 ["ScaleType"]
       99 GETIMPORT                        R14 K14 [UDim2.new]
      101 LOADN                            R15 1
      102 LOADN                            R16 0
      103 LOADN                            R17 1
      104 LOADN                            R18 0
      105 CALL                             R14 4 1
      106 SETTABLEKS                       R14 R13 K15 ["Size"]
      108 CALL                             R11 2 1
      109 SETTABLEKS                       R11 R10 K24 ["Icon"]
      111 GETUPVAL                         R11 0
      112 GETTABLEKS                       R11 R11 K9 ["createElement"]
      114 LOADK                            R12 K33 ["TextLabel"]
      115 GETUPVAL                         R13 1
      116 GETTABLEKS                       R13 R13 K34 ["Dictionary"]
      118 GETTABLEKS                       R13 R13 K35 ["join"]
      120 GETTABLEKS                       R14 R5 K36 ["fontStyle"]
      122 GETTABLEKS                       R14 R14 K37 ["Normal"]
      124 DUPTABLE                         R15 K45 [{"Visible", "BackgroundTransparency", "BorderSizePixel", "BackgroundColor3", "TextColor3", "Size", "Position", "AnchorPoint", "ZIndex", "Text"}]
      125 OR                               R16 R2 R3
      126 SETTABLEKS                       R16 R15 K11 ["Visible"]
      128 LOADK                            R16 K46 [0.3]
      129 SETTABLEKS                       R16 R15 K16 ["BackgroundTransparency"]
      131 LOADN                            R16 0
      132 SETTABLEKS                       R16 R15 K38 ["BorderSizePixel"]
      134 GETUPVAL                         R16 2
      135 GETTABLEKS                       R16 R16 K47 ["BLACK"]
      137 SETTABLEKS                       R16 R15 K39 ["BackgroundColor3"]
      139 GETUPVAL                         R16 2
      140 GETTABLEKS                       R16 R16 K48 ["WHITE"]
      142 SETTABLEKS                       R16 R15 K40 ["TextColor3"]
      144 GETIMPORT                        R16 K14 [UDim2.new]
      146 LOADN                            R17 1
      147 LOADN                            R18 0
      148 LOADN                            R19 0
      149 LOADN                            R20 30
      150 CALL                             R16 4 1
      151 SETTABLEKS                       R16 R15 K15 ["Size"]
      153 GETIMPORT                        R16 K14 [UDim2.new]
      155 LOADN                            R17 0
      156 LOADN                            R18 0
      157 LOADN                            R19 1
      158 LOADN                            R20 0
      159 CALL                             R16 4 1
      160 SETTABLEKS                       R16 R15 K41 ["Position"]
      162 GETIMPORT                        R16 K50 [Vector2.new]
      164 LOADN                            R17 0
      165 LOADN                            R18 1
      166 CALL                             R16 2 1
      167 SETTABLEKS                       R16 R15 K42 ["AnchorPoint"]
      169 LOADN                            R16 3
      170 SETTABLEKS                       R16 R15 K43 ["ZIndex"]
      172 JUMPIFNOT                        R3 ; [+6]
      173 LOADK                            R18 K51 ["General"]
      174 LOADK                            R19 K52 ["ImagePreview"]
      175 NAMECALL                         R16 R6 K53 ["getText"]
      177 CALL                             R16 3 1
      178 JUMPIF                           R16 ; [+5]
      179 LOADK                            R18 K51 ["General"]
      180 LOADK                            R19 K54 ["ImageReview"]
      181 NAMECALL                         R16 R6 K53 ["getText"]
      183 CALL                             R16 3 1
      184 SETTABLEKS                       R16 R15 K44 ["Text"]
      186 CALL                             R13 2 -1
      187 CALL                             R11 -1 1
      188 SETTABLEKS                       R11 R10 K25 ["InfoText"]
      190 GETUPVAL                         R11 0
      191 GETTABLEKS                       R11 R11 K9 ["createElement"]
      193 LOADK                            R12 K55 ["ImageButton"]
      194 NEWTABLE                         R13 16 0
      196 MOVE                             R14 R4
      197 JUMPIFNOT                        R14 ; [+1]
      198 NOT                              R14 R2
      199 SETTABLEKS                       R14 R13 K11 ["Visible"]
      201 LOADN                            R14 1
      202 SETTABLEKS                       R14 R13 K16 ["BackgroundTransparency"]
      204 GETIMPORT                        R14 K14 [UDim2.new]
      206 LOADN                            R15 1
      207 LOADN                            R16 0
      208 LOADK                            R17 K56 [1.5]
      209 LOADN                            R18 0
      210 CALL                             R14 4 1
      211 SETTABLEKS                       R14 R13 K15 ["Size"]
      213 GETIMPORT                        R14 K50 [Vector2.new]
      215 LOADN                            R15 0
      216 LOADN                            R16 1
      217 CALL                             R14 2 1
      218 SETTABLEKS                       R14 R13 K42 ["AnchorPoint"]
      220 GETIMPORT                        R14 K14 [UDim2.new]
      222 LOADN                            R15 0
      223 LOADN                            R16 0
      224 LOADN                            R17 1
      225 LOADN                            R18 0
      226 CALL                             R14 4 1
      227 SETTABLEKS                       R14 R13 K41 ["Position"]
      229 GETUPVAL                         R14 2
      230 GETTABLEKS                       R14 R14 K57 ["GRADIENT_IMAGE"]
      232 SETTABLEKS                       R14 R13 K1 ["Image"]
      234 GETUPVAL                         R14 2
      235 GETTABLEKS                       R14 R14 K58 ["GRADIENT_RECT_SIZE"]
      237 SETTABLEKS                       R14 R13 K59 ["ImageRectSize"]
      239 GETUPVAL                         R14 2
      240 GETTABLEKS                       R14 R14 K47 ["BLACK"]
      242 SETTABLEKS                       R14 R13 K60 ["ImageColor3"]
      244 LOADN                            R14 4
      245 SETTABLEKS                       R14 R13 K43 ["ZIndex"]
      247 GETUPVAL                         R14 0
      248 GETTABLEKS                       R14 R14 K21 ["Event"]
      250 GETTABLEKS                       R14 R14 K61 ["Activated"]
      252 GETTABLEKS                       R15 R0 K0 ["props"]
      254 GETTABLEKS                       R15 R15 K62 ["OnClick"]
      256 SETTABLE                         R15 R13 R14
      257 DUPTABLE                         R14 K63 [{"Text"}]
      258 GETUPVAL                         R15 0
      259 GETTABLEKS                       R15 R15 K9 ["createElement"]
      261 LOADK                            R16 K33 ["TextLabel"]
      262 GETUPVAL                         R17 1
      263 GETTABLEKS                       R17 R17 K34 ["Dictionary"]
      265 GETTABLEKS                       R17 R17 K35 ["join"]
      267 GETTABLEKS                       R18 R5 K36 ["fontStyle"]
      269 GETTABLEKS                       R18 R18 K37 ["Normal"]
      271 DUPTABLE                         R19 K64 [{"BackgroundTransparency", "Size", "Position", "AnchorPoint", "Text", "ZIndex"}]
      272 LOADN                            R20 1
      273 SETTABLEKS                       R20 R19 K16 ["BackgroundTransparency"]
      275 GETIMPORT                        R20 K14 [UDim2.new]
      277 LOADN                            R21 1
      278 LOADN                            R22 0
      279 LOADN                            R23 0
      280 LOADN                            R24 30
      281 CALL                             R20 4 1
      282 SETTABLEKS                       R20 R19 K15 ["Size"]
      284 GETIMPORT                        R20 K14 [UDim2.new]
      286 LOADN                            R21 0
      287 LOADN                            R22 0
      288 LOADN                            R23 1
      289 LOADN                            R24 241
      290 CALL                             R20 4 1
      291 SETTABLEKS                       R20 R19 K41 ["Position"]
      293 GETIMPORT                        R20 K50 [Vector2.new]
      295 LOADN                            R21 0
      296 LOADN                            R22 1
      297 CALL                             R20 2 1
      298 SETTABLEKS                       R20 R19 K42 ["AnchorPoint"]
      300 LOADK                            R22 K51 ["General"]
      301 LOADK                            R23 K65 ["GameIconChange"]
      302 NAMECALL                         R20 R6 K53 ["getText"]
      304 CALL                             R20 3 1
      305 SETTABLEKS                       R20 R19 K44 ["Text"]
      307 LOADN                            R20 5
      308 SETTABLEKS                       R20 R19 K43 ["ZIndex"]
      310 CALL                             R17 2 -1
      311 CALL                             R15 -1 1
      312 SETTABLEKS                       R15 R14 K44 ["Text"]
      314 CALL                             R11 3 1
      315 SETTABLEKS                       R11 R10 K26 ["Change"]
      317 CALL                             R7 3 -1
      318 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["Cryo"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       34 GETTABLEKS                       R5 R4 K10 ["withContext"]
       36 GETIMPORT                        R6 K4 [require]
       38 GETTABLEKS                       R7 R0 K11 ["Src"]
       40 GETTABLEKS                       R7 R7 K12 ["Util"]
       42 GETTABLEKS                       R7 R7 K13 ["DEPRECATED_Constants"]
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R7 R1 K14 ["PureComponent"]
       47 LOADK                            R9 K15 ["UploadableIcon"]
       48 NAMECALL                         R7 R7 K16 ["extend"]
       50 CALL                             R7 2 1
       51 DUPCLOSURE                       R8 K17 [PROTO_0]
       52 SETTABLEKS                       R8 R7 K18 ["init"]
       54 DUPCLOSURE                       R8 K19 [PROTO_1]
       55 SETTABLEKS                       R8 R7 K20 ["mouseHoverChanged"]
       57 DUPCLOSURE                       R8 K21 [PROTO_4]
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R6
       61 SETTABLEKS                       R8 R7 K22 ["render"]
       63 MOVE                             R8 R5
       64 DUPTABLE                         R9 K26 [{"Stylizer", "Localization", "Mouse"}]
       65 GETTABLEKS                       R10 R4 K23 ["Stylizer"]
       67 SETTABLEKS                       R10 R9 K23 ["Stylizer"]
       69 GETTABLEKS                       R10 R4 K24 ["Localization"]
       71 SETTABLEKS                       R10 R9 K24 ["Localization"]
       73 GETTABLEKS                       R10 R4 K25 ["Mouse"]
       75 SETTABLEKS                       R10 R9 K25 ["Mouse"]
       77 CALL                             R8 1 1
       78 MOVE                             R9 R7
       79 CALL                             R8 1 1
       80 MOVE                             R7 R8
       81 RETURN                           R7 1
