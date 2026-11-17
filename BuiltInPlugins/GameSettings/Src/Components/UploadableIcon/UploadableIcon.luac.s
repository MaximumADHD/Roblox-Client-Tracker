PROTO_0:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 RETURN                           R0 0

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
       83 DUPTABLE                         R13 K30 [{["Visible"], ["BackgroundTransparency"] = 1, ["Image"], ["ScaleType"], ["Size"]}]
       84 GETTABLEKS                       R14 R0 K0 ["props"]
       86 GETTABLEKS                       R14 R14 K11 ["Visible"]
       88 SETTABLEKS                       R14 R13 K11 ["Visible"]
       90 SETTABLEKS                       R1 R13 K1 ["Image"]
       92 GETIMPORT                        R14 K33 [Enum.ScaleType.Crop]
       94 SETTABLEKS                       R14 R13 K29 ["ScaleType"]
       96 GETIMPORT                        R14 K14 [UDim2.new]
       98 LOADN                            R15 1
       99 LOADN                            R16 0
      100 LOADN                            R17 1
      101 LOADN                            R18 0
      102 CALL                             R14 4 1
      103 SETTABLEKS                       R14 R13 K15 ["Size"]
      105 CALL                             R11 2 1
      106 SETTABLEKS                       R11 R10 K24 ["Icon"]
      108 GETUPVAL                         R11 0
      109 GETTABLEKS                       R11 R11 K9 ["createElement"]
      111 LOADK                            R12 K34 ["TextLabel"]
      112 GETUPVAL                         R13 1
      113 GETTABLEKS                       R13 R13 K35 ["Dictionary"]
      115 GETTABLEKS                       R13 R13 K36 ["join"]
      117 GETTABLEKS                       R14 R5 K37 ["fontStyle"]
      119 GETTABLEKS                       R14 R14 K38 ["Normal"]
      121 DUPTABLE                         R15 K49 [{["Visible"], ["BackgroundTransparency"] = 0.3, ["BorderSizePixel"] = 0, ["BackgroundColor3"], ["TextColor3"], ["Size"], ["Position"], ["AnchorPoint"], ["ZIndex"] = 3, ["Text"]}]
      122 OR                               R16 R2 R3
      123 SETTABLEKS                       R16 R15 K11 ["Visible"]
      125 GETUPVAL                         R16 2
      126 GETTABLEKS                       R16 R16 K50 ["BLACK"]
      128 SETTABLEKS                       R16 R15 K42 ["BackgroundColor3"]
      130 GETUPVAL                         R16 2
      131 GETTABLEKS                       R16 R16 K51 ["WHITE"]
      133 SETTABLEKS                       R16 R15 K43 ["TextColor3"]
      135 GETIMPORT                        R16 K14 [UDim2.new]
      137 LOADN                            R17 1
      138 LOADN                            R18 0
      139 LOADN                            R19 0
      140 LOADN                            R20 30
      141 CALL                             R16 4 1
      142 SETTABLEKS                       R16 R15 K15 ["Size"]
      144 GETIMPORT                        R16 K14 [UDim2.new]
      146 LOADN                            R17 0
      147 LOADN                            R18 0
      148 LOADN                            R19 1
      149 LOADN                            R20 0
      150 CALL                             R16 4 1
      151 SETTABLEKS                       R16 R15 K44 ["Position"]
      153 GETIMPORT                        R16 K53 [Vector2.new]
      155 LOADN                            R17 0
      156 LOADN                            R18 1
      157 CALL                             R16 2 1
      158 SETTABLEKS                       R16 R15 K45 ["AnchorPoint"]
      160 JUMPIFNOT                        R3 ; [+6]
      161 LOADK                            R18 K54 ["General"]
      162 LOADK                            R19 K55 ["ImagePreview"]
      163 NAMECALL                         R16 R6 K56 ["getText"]
      165 CALL                             R16 3 1
      166 JUMPIF                           R16 ; [+5]
      167 LOADK                            R18 K54 ["General"]
      168 LOADK                            R19 K57 ["ImageReview"]
      169 NAMECALL                         R16 R6 K56 ["getText"]
      171 CALL                             R16 3 1
      172 SETTABLEKS                       R16 R15 K48 ["Text"]
      174 CALL                             R13 2 -1
      175 CALL                             R11 -1 1
      176 SETTABLEKS                       R11 R10 K25 ["InfoText"]
      178 GETUPVAL                         R11 0
      179 GETTABLEKS                       R11 R11 K9 ["createElement"]
      181 LOADK                            R12 K58 ["ImageButton"]
      182 NEWTABLE                         R13 16 0
      184 MOVE                             R14 R4
      185 JUMPIFNOT                        R14 ; [+1]
      186 NOT                              R14 R2
      187 SETTABLEKS                       R14 R13 K11 ["Visible"]
      189 LOADN                            R14 1
      190 SETTABLEKS                       R14 R13 K16 ["BackgroundTransparency"]
      192 GETIMPORT                        R14 K14 [UDim2.new]
      194 LOADN                            R15 1
      195 LOADN                            R16 0
      196 LOADK                            R17 K59 [1.5]
      197 LOADN                            R18 0
      198 CALL                             R14 4 1
      199 SETTABLEKS                       R14 R13 K15 ["Size"]
      201 GETIMPORT                        R14 K53 [Vector2.new]
      203 LOADN                            R15 0
      204 LOADN                            R16 1
      205 CALL                             R14 2 1
      206 SETTABLEKS                       R14 R13 K45 ["AnchorPoint"]
      208 GETIMPORT                        R14 K14 [UDim2.new]
      210 LOADN                            R15 0
      211 LOADN                            R16 0
      212 LOADN                            R17 1
      213 LOADN                            R18 0
      214 CALL                             R14 4 1
      215 SETTABLEKS                       R14 R13 K44 ["Position"]
      217 GETUPVAL                         R14 2
      218 GETTABLEKS                       R14 R14 K60 ["GRADIENT_IMAGE"]
      220 SETTABLEKS                       R14 R13 K1 ["Image"]
      222 GETUPVAL                         R14 2
      223 GETTABLEKS                       R14 R14 K61 ["GRADIENT_RECT_SIZE"]
      225 SETTABLEKS                       R14 R13 K62 ["ImageRectSize"]
      227 GETUPVAL                         R14 2
      228 GETTABLEKS                       R14 R14 K50 ["BLACK"]
      230 SETTABLEKS                       R14 R13 K63 ["ImageColor3"]
      232 LOADN                            R14 4
      233 SETTABLEKS                       R14 R13 K46 ["ZIndex"]
      235 GETUPVAL                         R14 0
      236 GETTABLEKS                       R14 R14 K21 ["Event"]
      238 GETTABLEKS                       R14 R14 K64 ["Activated"]
      240 GETTABLEKS                       R15 R0 K0 ["props"]
      242 GETTABLEKS                       R15 R15 K65 ["OnClick"]
      244 SETTABLE                         R15 R13 R14
      245 DUPTABLE                         R14 K66 [{"Text"}]
      246 GETUPVAL                         R15 0
      247 GETTABLEKS                       R15 R15 K9 ["createElement"]
      249 LOADK                            R16 K34 ["TextLabel"]
      250 GETUPVAL                         R17 1
      251 GETTABLEKS                       R17 R17 K35 ["Dictionary"]
      253 GETTABLEKS                       R17 R17 K36 ["join"]
      255 GETTABLEKS                       R18 R5 K37 ["fontStyle"]
      257 GETTABLEKS                       R18 R18 K38 ["Normal"]
      259 DUPTABLE                         R19 K68 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["AnchorPoint"], ["Text"], ["TextColor3"], ["ZIndex"] = 5}]
      260 GETIMPORT                        R20 K14 [UDim2.new]
      262 LOADN                            R21 1
      263 LOADN                            R22 0
      264 LOADN                            R23 0
      265 LOADN                            R24 30
      266 CALL                             R20 4 1
      267 SETTABLEKS                       R20 R19 K15 ["Size"]
      269 GETIMPORT                        R20 K14 [UDim2.new]
      271 LOADN                            R21 0
      272 LOADN                            R22 0
      273 LOADN                            R23 1
      274 LOADN                            R24 -15
      275 CALL                             R20 4 1
      276 SETTABLEKS                       R20 R19 K44 ["Position"]
      278 GETIMPORT                        R20 K53 [Vector2.new]
      280 LOADN                            R21 0
      281 LOADN                            R22 1
      282 CALL                             R20 2 1
      283 SETTABLEKS                       R20 R19 K45 ["AnchorPoint"]
      285 LOADK                            R22 K54 ["General"]
      286 LOADK                            R23 K69 ["GameIconChange"]
      287 NAMECALL                         R20 R6 K56 ["getText"]
      289 CALL                             R20 3 1
      290 SETTABLEKS                       R20 R19 K48 ["Text"]
      292 GETUPVAL                         R21 3
      293 CALL                             R21 0 1
      294 JUMPIFNOT                        R21 ; [+4]
      295 GETUPVAL                         R20 2
      296 GETTABLEKS                       R20 R20 K51 ["WHITE"]
      298 JUMP                             ; [+1]
      299 LOADNIL                          R20
      300 SETTABLEKS                       R20 R19 K43 ["TextColor3"]
      302 CALL                             R17 2 -1
      303 CALL                             R15 -1 1
      304 SETTABLEKS                       R15 R14 K48 ["Text"]
      306 CALL                             R11 3 1
      307 SETTABLEKS                       R11 R10 K26 ["Change"]
      309 CALL                             R7 3 -1
      310 RETURN                           R7 -1

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
       45 GETIMPORT                        R7 K4 [require]
       47 GETTABLEKS                       R8 R0 K11 ["Src"]
       49 GETTABLEKS                       R8 R8 K14 ["Flags"]
       51 GETTABLEKS                       R8 R8 K15 ["getFFlagGameSettingsFixIconChangeTextContrast"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R1 K16 ["PureComponent"]
       56 LOADK                            R10 K17 ["UploadableIcon"]
       57 NAMECALL                         R8 R8 K18 ["extend"]
       59 CALL                             R8 2 1
       60 DUPCLOSURE                       R9 K19 [PROTO_0]
       61 SETTABLEKS                       R9 R8 K20 ["init"]
       63 DUPCLOSURE                       R9 K21 [PROTO_1]
       64 SETTABLEKS                       R9 R8 K22 ["mouseHoverChanged"]
       66 DUPCLOSURE                       R9 K23 [PROTO_4]
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R7
       71 SETTABLEKS                       R9 R8 K24 ["render"]
       73 MOVE                             R9 R5
       74 DUPTABLE                         R10 K28 [{"Stylizer", "Localization", "Mouse"}]
       75 GETTABLEKS                       R11 R4 K25 ["Stylizer"]
       77 SETTABLEKS                       R11 R10 K25 ["Stylizer"]
       79 GETTABLEKS                       R11 R4 K26 ["Localization"]
       81 SETTABLEKS                       R11 R10 K26 ["Localization"]
       83 GETTABLEKS                       R11 R4 K27 ["Mouse"]
       85 SETTABLEKS                       R11 R10 K27 ["Mouse"]
       87 CALL                             R9 1 1
       88 MOVE                             R10 R8
       89 CALL                             R9 1 1
       90 MOVE                             R8 R9
       91 RETURN                           R8 1
