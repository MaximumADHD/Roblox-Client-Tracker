PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["props"]
        3 GETTABLEKS                       R3 R4 K1 ["ChooseThumbnail"]
        5 JUMPIFNOT                        R3 ; [+8]
        6 GETUPVAL                         R3 0
        7 DUPTABLE                         R5 K3 [{"hovered"}]
        8 LOADB                            R6 1
        9 SETTABLEKS                       R6 R5 K2 ["hovered"]
       11 NAMECALL                         R3 R3 K4 ["setState"]
       13 CALL                             R3 2 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R5 K1 [{"hovered"}]
        2 LOADB                            R6 0
        3 SETTABLEKS                       R6 R5 K0 ["hovered"]
        5 NAMECALL                         R3 R3 K2 ["setState"]
        7 CALL                             R3 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R2 K1 [{"hovered"}]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["hovered"]
        4 SETTABLEKS                       R2 R0 K2 ["state"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R0 K3 ["onMouseEnter"]
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R2 R0 K4 ["onMouseLeave"]
       14 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R2 K2 ["IconFile"]
        6 GETTABLEKS                       R4 R2 K3 ["ThumbnailStatus"]
        8 GETTABLEKS                       R5 R1 K4 ["hovered"]
       10 LOADNIL                          R6
       11 LOADB                            R7 1
       12 JUMPIFEQKS                       R4 K5 ["Completed"] ; [+5]
       14 JUMPIFEQKNIL                     R4 ; [+2]
       16 LOADB                            R7 0 +1
       17 LOADB                            R7 1
       18 MOVE                             R9 R5
       19 JUMPIF                           R9 ; [+6]
       20 MOVE                             R9 R7
       21 JUMPIFNOT                        R9 ; [+4]
       22 JUMPIFEQKNIL                     R3 ; [+2]
       24 LOADB                            R9 0 +1
       25 LOADB                            R9 1
       26 NOT                              R8 R9
       27 JUMPIFNOT                        R3 ; [+9]
       28 GETTABLEKS                       R9 R2 K6 ["Localization"]
       30 LOADK                            R11 K7 ["AssetConfigPreview"]
       31 LOADK                            R12 K8 ["Preview"]
       32 NAMECALL                         R9 R9 K9 ["getText"]
       34 CALL                             R9 3 1
       35 MOVE                             R6 R9
       36 JUMP                             ; [+11]
       37 JUMPIFNOT                        R4 ; [+9]
       38 GETTABLEKS                       R9 R2 K6 ["Localization"]
       40 LOADK                            R11 K3 ["ThumbnailStatus"]
       41 MOVE                             R12 R4
       42 NAMECALL                         R9 R9 K9 ["getText"]
       44 CALL                             R9 3 1
       45 MOVE                             R6 R9
       46 JUMP                             ; [+1]
       47 LOADK                            R6 K10 [""]
       48 MOVE                             R9 R6
       49 MOVE                             R10 R8
       50 RETURN                           R9 2

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Size"]
        6 GETTABLEKS                       R4 R1 K3 ["Position"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["IconFile"]
       12 GETTABLEKS                       R7 R1 K6 ["AssetId"]
       14 GETTABLEKS                       R8 R1 K7 ["ChooseThumbnail"]
       16 GETTABLEKS                       R9 R2 K8 ["hovered"]
       18 GETTABLEKS                       R12 R1 K9 ["Localization"]
       20 NAMECALL                         R10 R0 K10 ["getStatus"]
       22 CALL                             R10 2 2
       23 GETUPVAL                         R13 0
       24 GETTABLEKS                       R12 R13 K11 ["PLUGIN_TEMP"]
       26 JUMPIFNOT                        R6 ; [+5]
       27 NAMECALL                         R13 R6 K12 ["GetTemporaryId"]
       29 CALL                             R13 1 1
       30 MOVE                             R12 R13
       31 JUMP                             ; [+13]
       32 JUMPIFNOT                        R7 ; [+12]
       33 GETUPVAL                         R14 1
       34 GETTABLEKS                       R13 R14 K13 ["constructAssetThumbnailUrl"]
       36 MOVE                             R14 R7
       37 GETUPVAL                         R16 2
       38 GETTABLEKS                       R15 R16 K14 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
       40 GETUPVAL                         R17 2
       41 GETTABLEKS                       R16 R17 K14 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
       43 CALL                             R13 3 1
       44 MOVE                             R12 R13
       45 GETUPVAL                         R14 3
       46 GETTABLEKS                       R13 R14 K15 ["createElement"]
       48 LOADK                            R14 K16 ["ImageButton"]
       49 NEWTABLE                         R15 16 0
       51 SETTABLEKS                       R4 R15 K3 ["Position"]
       53 SETTABLEKS                       R3 R15 K2 ["Size"]
       55 LOADN                            R16 1
       56 SETTABLEKS                       R16 R15 K17 ["BackgroundTransparency"]
       58 LOADN                            R16 0
       59 SETTABLEKS                       R16 R15 K18 ["BorderSizePixel"]
       61 LOADB                            R16 1
       62 SETTABLEKS                       R16 R15 K19 ["ClipsDescendants"]
       64 SETTABLEKS                       R12 R15 K20 ["Image"]
       66 GETUPVAL                         R18 3
       67 GETTABLEKS                       R17 R18 K21 ["Event"]
       69 GETTABLEKS                       R16 R17 K22 ["Activated"]
       71 SETTABLE                         R8 R15 R16
       72 GETUPVAL                         R18 3
       73 GETTABLEKS                       R17 R18 K21 ["Event"]
       75 GETTABLEKS                       R16 R17 K23 ["MouseEnter"]
       77 GETTABLEKS                       R17 R0 K24 ["onMouseEnter"]
       79 SETTABLE                         R17 R15 R16
       80 GETUPVAL                         R18 3
       81 GETTABLEKS                       R17 R18 K21 ["Event"]
       83 GETTABLEKS                       R16 R17 K25 ["mouseLeave"]
       85 GETTABLEKS                       R17 R0 K26 ["onMouseLeave"]
       87 SETTABLE                         R17 R15 R16
       88 SETTABLEKS                       R5 R15 K4 ["LayoutOrder"]
       90 DUPTABLE                         R16 K30 [{"ChangeIndication", "StatusFrame", "ChangeLabel"}]
       91 GETUPVAL                         R18 3
       92 GETTABLEKS                       R17 R18 K15 ["createElement"]
       94 LOADK                            R18 K31 ["ImageLabel"]
       95 DUPTABLE                         R19 K36 [{"Visible", "AnchorPoint", "Position", "Size", "Image", "ImageColor3", "BackgroundTransparency", "ImageRectSize"}]
       96 SETTABLEKS                       R9 R19 K32 ["Visible"]
       98 GETIMPORT                        R20 K39 [Vector2.new]
      100 LOADN                            R21 0
      101 LOADN                            R22 1
      102 CALL                             R20 2 1
      103 SETTABLEKS                       R20 R19 K33 ["AnchorPoint"]
      105 GETIMPORT                        R20 K41 [UDim2.new]
      107 LOADN                            R21 0
      108 LOADN                            R22 0
      109 LOADN                            R23 1
      110 LOADN                            R24 0
      111 CALL                             R20 4 1
      112 SETTABLEKS                       R20 R19 K3 ["Position"]
      114 GETIMPORT                        R20 K41 [UDim2.new]
      116 LOADN                            R21 1
      117 LOADN                            R22 0
      118 LOADK                            R23 K42 [1.5]
      119 LOADN                            R24 0
      120 CALL                             R20 4 1
      121 SETTABLEKS                       R20 R19 K2 ["Size"]
      123 GETUPVAL                         R21 0
      124 GETTABLEKS                       R20 R21 K43 ["GRADIENT"]
      126 SETTABLEKS                       R20 R19 K20 ["Image"]
      128 GETIMPORT                        R20 K45 [Color3.new]
      130 LOADN                            R21 0
      131 LOADN                            R22 0
      132 LOADN                            R23 0
      133 CALL                             R20 3 1
      134 SETTABLEKS                       R20 R19 K34 ["ImageColor3"]
      136 LOADN                            R20 1
      137 SETTABLEKS                       R20 R19 K17 ["BackgroundTransparency"]
      139 GETUPVAL                         R20 4
      140 SETTABLEKS                       R20 R19 K35 ["ImageRectSize"]
      142 CALL                             R17 2 1
      143 SETTABLEKS                       R17 R16 K27 ["ChangeIndication"]
      145 MOVE                             R17 R11
      146 JUMPIFNOT                        R17 ; [+87]
      147 GETUPVAL                         R18 3
      148 GETTABLEKS                       R17 R18 K15 ["createElement"]
      150 LOADK                            R18 K46 ["Frame"]
      151 DUPTABLE                         R19 K48 [{"Position", "Size", "BackgroundColor3", "BackgroundTransparency"}]
      152 GETIMPORT                        R20 K41 [UDim2.new]
      154 LOADN                            R21 0
      155 LOADN                            R22 0
      156 LOADN                            R23 1
      157 LOADN                            R24 216
      158 CALL                             R20 4 1
      159 SETTABLEKS                       R20 R19 K3 ["Position"]
      161 GETIMPORT                        R20 K41 [UDim2.new]
      163 LOADN                            R21 1
      164 LOADN                            R22 0
      165 LOADN                            R23 0
      166 LOADN                            R24 40
      167 CALL                             R20 4 1
      168 SETTABLEKS                       R20 R19 K2 ["Size"]
      170 GETIMPORT                        R20 K45 [Color3.new]
      172 LOADN                            R21 0
      173 LOADN                            R22 0
      174 LOADN                            R23 0
      175 CALL                             R20 3 1
      176 SETTABLEKS                       R20 R19 K47 ["BackgroundColor3"]
      178 LOADK                            R20 K49 [0.5]
      179 SETTABLEKS                       R20 R19 K17 ["BackgroundTransparency"]
      181 DUPTABLE                         R20 K51 [{"Status"}]
      182 GETUPVAL                         R22 3
      183 GETTABLEKS                       R21 R22 K15 ["createElement"]
      185 LOADK                            R22 K52 ["TextLabel"]
      186 DUPTABLE                         R23 K57 [{"AnchorPoint", "Size", "Position", "Text", "TextColor3", "TextSize", "Font", "BackgroundTransparency"}]
      187 GETIMPORT                        R24 K39 [Vector2.new]
      189 LOADK                            R25 K49 [0.5]
      190 LOADK                            R26 K49 [0.5]
      191 CALL                             R24 2 1
      192 SETTABLEKS                       R24 R23 K33 ["AnchorPoint"]
      194 GETIMPORT                        R24 K41 [UDim2.new]
      196 LOADN                            R25 1
      197 LOADN                            R26 0
      198 LOADN                            R27 1
      199 LOADN                            R28 0
      200 CALL                             R24 4 1
      201 SETTABLEKS                       R24 R23 K2 ["Size"]
      203 GETIMPORT                        R24 K41 [UDim2.new]
      205 LOADK                            R25 K49 [0.5]
      206 LOADN                            R26 0
      207 LOADK                            R27 K49 [0.5]
      208 LOADN                            R28 0
      209 CALL                             R24 4 1
      210 SETTABLEKS                       R24 R23 K3 ["Position"]
      212 SETTABLEKS                       R10 R23 K53 ["Text"]
      214 GETUPVAL                         R25 5
      215 GETTABLEKS                       R24 R25 K58 ["WHITE"]
      217 SETTABLEKS                       R24 R23 K54 ["TextColor3"]
      219 GETUPVAL                         R24 6
      220 SETTABLEKS                       R24 R23 K55 ["TextSize"]
      222 GETUPVAL                         R25 2
      223 GETTABLEKS                       R24 R25 K59 ["FONT"]
      225 SETTABLEKS                       R24 R23 K56 ["Font"]
      227 LOADN                            R24 1
      228 SETTABLEKS                       R24 R23 K17 ["BackgroundTransparency"]
      230 CALL                             R21 2 1
      231 SETTABLEKS                       R21 R20 K50 ["Status"]
      233 CALL                             R17 3 1
      234 SETTABLEKS                       R17 R16 K28 ["StatusFrame"]
      236 MOVE                             R17 R9
      237 JUMPIFNOT                        R17 ; [+59]
      238 GETUPVAL                         R18 3
      239 GETTABLEKS                       R17 R18 K15 ["createElement"]
      241 LOADK                            R18 K52 ["TextLabel"]
      242 DUPTABLE                         R19 K61 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency", "Text", "TextColor3", "TextSize", "Font", "ZIndex"}]
      243 GETIMPORT                        R20 K39 [Vector2.new]
      245 LOADN                            R21 0
      246 LOADN                            R22 1
      247 CALL                             R20 2 1
      248 SETTABLEKS                       R20 R19 K33 ["AnchorPoint"]
      250 GETIMPORT                        R20 K41 [UDim2.new]
      252 LOADN                            R21 0
      253 LOADN                            R22 0
      254 LOADN                            R23 1
      255 LOADN                            R24 241
      256 CALL                             R20 4 1
      257 SETTABLEKS                       R20 R19 K3 ["Position"]
      259 GETIMPORT                        R20 K41 [UDim2.new]
      261 LOADN                            R21 1
      262 LOADN                            R22 0
      263 LOADN                            R23 0
      264 LOADN                            R24 30
      265 CALL                             R20 4 1
      266 SETTABLEKS                       R20 R19 K2 ["Size"]
      268 LOADN                            R20 1
      269 SETTABLEKS                       R20 R19 K17 ["BackgroundTransparency"]
      271 GETTABLEKS                       R20 R1 K9 ["Localization"]
      273 LOADK                            R22 K62 ["AssetConfigPreview"]
      274 LOADK                            R23 K63 ["Change"]
      275 NAMECALL                         R20 R20 K64 ["getText"]
      277 CALL                             R20 3 1
      278 SETTABLEKS                       R20 R19 K53 ["Text"]
      280 GETUPVAL                         R21 5
      281 GETTABLEKS                       R20 R21 K58 ["WHITE"]
      283 SETTABLEKS                       R20 R19 K54 ["TextColor3"]
      285 GETUPVAL                         R20 6
      286 SETTABLEKS                       R20 R19 K55 ["TextSize"]
      288 GETUPVAL                         R21 2
      289 GETTABLEKS                       R20 R21 K59 ["FONT"]
      291 SETTABLEKS                       R20 R19 K56 ["Font"]
      293 LOADN                            R20 2
      294 SETTABLEKS                       R20 R19 K60 ["ZIndex"]
      296 CALL                             R17 2 1
      297 SETTABLEKS                       R17 R16 K29 ["ChangeLabel"]
      299 CALL                             R13 3 -1
      300 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R5 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R5 K9 ["Util"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R4 K10 ["Images"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R4 K11 ["Constants"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R4 K12 ["Urls"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R9 R4 K13 ["Colors"]
       46 CALL                             R8 1 1
       47 GETTABLEKS                       R9 R3 K14 ["ContextServices"]
       49 GETTABLEKS                       R10 R9 K15 ["withContext"]
       51 GETTABLEKS                       R11 R2 K16 ["PureComponent"]
       53 LOADK                            R13 K17 ["ImagePicker"]
       54 NAMECALL                         R11 R11 K18 ["extend"]
       56 CALL                             R11 2 1
       57 GETTABLEKS                       R12 R6 K19 ["FONT_SIZE_MEDIUM"]
       59 GETIMPORT                        R13 K22 [Vector2.new]
       61 LOADN                            R14 0
       62 LOADN                            R15 0
       63 CALL                             R13 2 1
       64 DUPCLOSURE                       R14 K23 [PROTO_2]
       65 SETTABLEKS                       R14 R11 K24 ["init"]
       67 DUPCLOSURE                       R14 K25 [PROTO_3]
       68 SETTABLEKS                       R14 R11 K26 ["getStatus"]
       70 DUPCLOSURE                       R14 K27 [PROTO_4]
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R12
       78 SETTABLEKS                       R14 R11 K28 ["render"]
       80 MOVE                             R14 R10
       81 DUPTABLE                         R15 K31 [{"Stylizer", "Localization"}]
       82 GETTABLEKS                       R16 R9 K29 ["Stylizer"]
       84 SETTABLEKS                       R16 R15 K29 ["Stylizer"]
       86 GETTABLEKS                       R16 R9 K30 ["Localization"]
       88 SETTABLEKS                       R16 R15 K30 ["Localization"]
       90 CALL                             R14 1 1
       91 MOVE                             R15 R11
       92 CALL                             R14 1 1
       93 MOVE                             R11 R14
       94 RETURN                           R11 1
