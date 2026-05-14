PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 SETTABLEKS                       R2 R0 K0 ["state"]
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ItemClickCallBack"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["versions"]
        6 GETTABLEKS                       R4 R1 K3 ["ItemInfo"]
        8 JUMPIF                           R4 ; [+2]
        9 NEWTABLE                         R4 0 0
       11 GETTABLEKS                       R5 R1 K4 ["IsCurrent"]
       13 GETTABLEKS                       R6 R1 K5 ["SelectVersion"]
       15 LOADNIL                          R7
       16 JUMPIFNOT                        R5 ; [+4]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R7 R8 K6 ["CURRENT"]
       20 JUMP                             ; [+11]
       21 GETTABLEKS                       R8 R4 K7 ["assetVersionNumber"]
       23 JUMPIFNOTEQ                      R6 R8 ; [+5]
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R7 R8 K8 ["SELECTED"]
       28 JUMP                             ; [+3]
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R7 R8 K9 ["DEFAULT"]
       32 GETUPVAL                         R8 1
       33 GETTABLEKS                       R8 R8 K10 ["constructAssetThumbnailUrl"]
       35 GETTABLEKS                       R9 R4 K11 ["assetId"]
       37 GETUPVAL                         R10 2
       38 GETTABLEKS                       R10 R10 K12 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
       40 GETUPVAL                         R11 2
       41 GETTABLEKS                       R11 R11 K12 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
       43 CALL                             R8 3 1
       44 GETTABLEKS                       R9 R2 K2 ["versions"]
       46 GETUPVAL                         R10 3
       47 GETTABLEKS                       R10 R10 K13 ["createElement"]
       49 LOADK                            R11 K14 ["Frame"]
       50 DUPTABLE                         R12 K19 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
       51 GETTABLEKS                       R13 R1 K15 ["Size"]
       53 SETTABLEKS                       R13 R12 K15 ["Size"]
       55 LOADN                            R13 1
       56 SETTABLEKS                       R13 R12 K16 ["BackgroundTransparency"]
       58 LOADN                            R13 0
       59 SETTABLEKS                       R13 R12 K17 ["BorderSizePixel"]
       61 GETTABLEKS                       R13 R1 K18 ["LayoutOrder"]
       63 SETTABLEKS                       R13 R12 K18 ["LayoutOrder"]
       65 DUPTABLE                         R13 K24 [{"Version", "LastChange", "SelectButton", "Divider"}]
       66 GETUPVAL                         R14 3
       67 GETTABLEKS                       R14 R14 K13 ["createElement"]
       69 LOADK                            R15 K25 ["TextLabel"]
       70 DUPTABLE                         R16 K34 [{"AnchorPoint", "Position", "Size", "Text", "TextColor3", "Font", "TextSize", "TextXAlignment", "TextYAlignment", "BackgroundTransparency", "BorderSizePixel"}]
       71 GETIMPORT                        R17 K37 [Vector2.new]
       73 LOADN                            R18 0
       74 LOADK                            R19 K38 [0.5]
       75 CALL                             R17 2 1
       76 SETTABLEKS                       R17 R16 K26 ["AnchorPoint"]
       78 GETIMPORT                        R17 K40 [UDim2.new]
       80 LOADN                            R18 0
       81 LOADN                            R19 120
       82 LOADN                            R20 0
       83 LOADN                            R21 25
       84 CALL                             R17 4 1
       85 SETTABLEKS                       R17 R16 K27 ["Position"]
       87 GETIMPORT                        R17 K40 [UDim2.new]
       89 LOADN                            R18 1
       90 LOADN                            R19 189
       91 LOADN                            R20 0
       92 LOADN                            R21 20
       93 CALL                             R17 4 1
       94 SETTABLEKS                       R17 R16 K15 ["Size"]
       96 LOADK                            R18 K41 ["V"]
       97 GETTABLEKS                       R20 R4 K7 ["assetVersionNumber"]
       99 FASTCALL1                        TOSTRING R20 ; [+2]
      100 GETIMPORT                        R19 K43 [tostring]
      102 CALL                             R19 1 1
      103 CONCAT                           R17 R18 R19
      104 SETTABLEKS                       R17 R16 K28 ["Text"]
      106 GETTABLEKS                       R17 R9 K44 ["textColor"]
      108 SETTABLEKS                       R17 R16 K29 ["TextColor3"]
      110 GETUPVAL                         R17 2
      111 GETTABLEKS                       R17 R17 K45 ["FONT_BOLD"]
      113 SETTABLEKS                       R17 R16 K30 ["Font"]
      115 GETUPVAL                         R17 2
      116 GETTABLEKS                       R17 R17 K46 ["FONT_SIZE_MEDIUM"]
      118 SETTABLEKS                       R17 R16 K31 ["TextSize"]
      120 GETIMPORT                        R17 K49 [Enum.TextXAlignment.Left]
      122 SETTABLEKS                       R17 R16 K32 ["TextXAlignment"]
      124 GETIMPORT                        R17 K51 [Enum.TextYAlignment.Center]
      126 SETTABLEKS                       R17 R16 K33 ["TextYAlignment"]
      128 LOADN                            R17 1
      129 SETTABLEKS                       R17 R16 K16 ["BackgroundTransparency"]
      131 LOADN                            R17 0
      132 SETTABLEKS                       R17 R16 K17 ["BorderSizePixel"]
      134 CALL                             R14 2 1
      135 SETTABLEKS                       R14 R13 K20 ["Version"]
      137 GETUPVAL                         R14 3
      138 GETTABLEKS                       R14 R14 K13 ["createElement"]
      140 LOADK                            R15 K25 ["TextLabel"]
      141 DUPTABLE                         R16 K34 [{"AnchorPoint", "Position", "Size", "Text", "TextColor3", "Font", "TextSize", "TextXAlignment", "TextYAlignment", "BackgroundTransparency", "BorderSizePixel"}]
      142 GETIMPORT                        R17 K37 [Vector2.new]
      144 LOADN                            R18 0
      145 LOADN                            R19 0
      146 CALL                             R17 2 1
      147 SETTABLEKS                       R17 R16 K26 ["AnchorPoint"]
      149 GETIMPORT                        R17 K40 [UDim2.new]
      151 LOADN                            R18 0
      152 LOADN                            R19 120
      153 LOADN                            R20 0
      154 LOADN                            R21 35
      155 CALL                             R17 4 1
      156 SETTABLEKS                       R17 R16 K27 ["Position"]
      158 GETIMPORT                        R17 K40 [UDim2.new]
      160 LOADN                            R18 1
      161 LOADN                            R19 189
      162 LOADN                            R20 0
      163 LOADN                            R21 20
      164 CALL                             R17 4 1
      165 SETTABLEKS                       R17 R16 K15 ["Size"]
      167 GETUPVAL                         R17 4
      168 GETTABLEKS                       R18 R4 K52 ["created"]
      170 LOADK                            R19 K53 ["L LTS"]
      171 GETTABLEKS                       R20 R0 K0 ["props"]
      173 GETTABLEKS                       R20 R20 K54 ["Localization"]
      175 NAMECALL                         R20 R20 K55 ["getLocale"]
      177 CALL                             R20 1 -1
      178 CALL                             R17 -1 1
      179 SETTABLEKS                       R17 R16 K28 ["Text"]
      181 GETTABLEKS                       R17 R9 K44 ["textColor"]
      183 SETTABLEKS                       R17 R16 K29 ["TextColor3"]
      185 GETUPVAL                         R17 2
      186 GETTABLEKS                       R17 R17 K56 ["FONT"]
      188 SETTABLEKS                       R17 R16 K30 ["Font"]
      190 GETUPVAL                         R17 2
      191 GETTABLEKS                       R17 R17 K46 ["FONT_SIZE_MEDIUM"]
      193 SETTABLEKS                       R17 R16 K31 ["TextSize"]
      195 GETIMPORT                        R17 K49 [Enum.TextXAlignment.Left]
      197 SETTABLEKS                       R17 R16 K32 ["TextXAlignment"]
      199 GETIMPORT                        R17 K51 [Enum.TextYAlignment.Center]
      201 SETTABLEKS                       R17 R16 K33 ["TextYAlignment"]
      203 LOADN                            R17 1
      204 SETTABLEKS                       R17 R16 K16 ["BackgroundTransparency"]
      206 LOADN                            R17 0
      207 SETTABLEKS                       R17 R16 K17 ["BorderSizePixel"]
      209 CALL                             R14 2 1
      210 SETTABLEKS                       R14 R13 K21 ["LastChange"]
      212 LOADB                            R14 0
      213 GETUPVAL                         R15 0
      214 GETTABLEKS                       R15 R15 K6 ["CURRENT"]
      216 JUMPIFEQ                         R7 R15 ; [+65]
      218 GETUPVAL                         R14 3
      219 GETTABLEKS                       R14 R14 K13 ["createElement"]
      221 LOADK                            R15 K57 ["ImageButton"]
      222 NEWTABLE                         R16 8 0
      224 GETIMPORT                        R17 K37 [Vector2.new]
      226 LOADN                            R18 1
      227 LOADK                            R19 K38 [0.5]
      228 CALL                             R17 2 1
      229 SETTABLEKS                       R17 R16 K26 ["AnchorPoint"]
      231 GETIMPORT                        R17 K40 [UDim2.new]
      233 LOADN                            R18 1
      234 LOADN                            R19 96
      235 LOADK                            R20 K38 [0.5]
      236 LOADN                            R21 0
      237 CALL                             R17 4 1
      238 SETTABLEKS                       R17 R16 K27 ["Position"]
      240 GETIMPORT                        R17 K40 [UDim2.new]
      242 LOADN                            R18 0
      243 LOADN                            R19 28
      244 LOADN                            R20 0
      245 LOADN                            R21 28
      246 CALL                             R17 4 1
      247 SETTABLEKS                       R17 R16 K15 ["Size"]
      249 GETUPVAL                         R17 5
      250 GETTABLEKS                       R17 R17 K58 ["MAKE_CURRENT_VERSION"]
      252 SETTABLEKS                       R17 R16 K59 ["Image"]
      254 LOADN                            R17 1
      255 SETTABLEKS                       R17 R16 K16 ["BackgroundTransparency"]
      257 GETUPVAL                         R18 0
      258 GETTABLEKS                       R18 R18 K9 ["DEFAULT"]
      260 JUMPIFNOTEQ                      R7 R18 ; [+4]
      262 GETTABLEKS                       R17 R9 K60 ["buttonDefaultColor"]
      264 JUMPIF                           R17 ; [+2]
      265 GETTABLEKS                       R17 R9 K61 ["buttonSelectedColor"]
      267 SETTABLEKS                       R17 R16 K62 ["ImageColor3"]
      269 GETUPVAL                         R17 3
      270 GETTABLEKS                       R17 R17 K63 ["Event"]
      272 GETTABLEKS                       R17 R17 K64 ["Activated"]
      274 NEWCLOSURE                       R18 P0
      275 CAPTURE                          VAL R1
      276 CAPTURE                          VAL R4
      277 SETTABLE                         R18 R16 R17
      278 LOADN                            R17 0
      279 SETTABLEKS                       R17 R16 K17 ["BorderSizePixel"]
      281 CALL                             R14 2 1
      282 SETTABLEKS                       R14 R13 K22 ["SelectButton"]
      284 GETUPVAL                         R14 3
      285 GETTABLEKS                       R14 R14 K13 ["createElement"]
      287 GETUPVAL                         R15 6
      288 DUPTABLE                         R16 K65 [{"AnchorPoint", "Position", "Size", "BorderSizePixel"}]
      289 GETTABLEKS                       R17 R1 K66 ["DividerAnchorPoint"]
      291 SETTABLEKS                       R17 R16 K26 ["AnchorPoint"]
      293 GETTABLEKS                       R17 R1 K67 ["DividerPosition"]
      295 SETTABLEKS                       R17 R16 K27 ["Position"]
      297 GETTABLEKS                       R17 R1 K68 ["DividerSize"]
      299 SETTABLEKS                       R17 R16 K15 ["Size"]
      301 LOADN                            R17 0
      302 SETTABLEKS                       R17 R16 K17 ["BorderSizePixel"]
      304 CALL                             R14 2 1
      305 SETTABLEKS                       R14 R13 K23 ["Divider"]
      307 CALL                             R10 3 -1
      308 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K8 ["ContextServices"]
       25 GETTABLEKS                       R5 R4 K9 ["withContext"]
       27 GETTABLEKS                       R6 R3 K10 ["Util"]
       29 GETTABLEKS                       R6 R6 K11 ["formatLocalDateTime"]
       31 GETTABLEKS                       R7 R0 K12 ["Src"]
       33 GETTABLEKS                       R7 R7 K13 ["Components"]
       35 GETTABLEKS                       R7 R7 K14 ["AssetConfiguration"]
       37 GETIMPORT                        R8 K5 [require]
       39 GETTABLEKS                       R9 R7 K15 ["VersionDivider"]
       41 CALL                             R8 1 1
       42 GETTABLEKS                       R9 R0 K12 ["Src"]
       44 GETTABLEKS                       R9 R9 K10 ["Util"]
       46 GETIMPORT                        R10 K5 [require]
       48 GETTABLEKS                       R11 R9 K16 ["Constants"]
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K5 [require]
       53 GETTABLEKS                       R12 R9 K17 ["Urls"]
       55 CALL                             R11 1 1
       56 GETIMPORT                        R12 K5 [require]
       58 GETTABLEKS                       R13 R9 K18 ["Images"]
       60 CALL                             R12 1 1
       61 GETTABLEKS                       R13 R2 K19 ["PureComponent"]
       63 LOADK                            R15 K20 ["VersionItem"]
       64 NAMECALL                         R13 R13 K21 ["extend"]
       66 CALL                             R13 2 1
       67 DUPTABLE                         R14 K25 [{"CURRENT", "SELECTED", "DEFAULT"}]
       68 LOADN                            R15 1
       69 SETTABLEKS                       R15 R14 K22 ["CURRENT"]
       71 LOADN                            R15 2
       72 SETTABLEKS                       R15 R14 K23 ["SELECTED"]
       74 LOADN                            R15 3
       75 SETTABLEKS                       R15 R14 K24 ["DEFAULT"]
       77 DUPCLOSURE                       R15 K26 [PROTO_0]
       78 SETTABLEKS                       R15 R13 K27 ["init"]
       80 DUPCLOSURE                       R15 K28 [PROTO_2]
       81 CAPTURE                          VAL R14
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R8
       88 SETTABLEKS                       R15 R13 K29 ["render"]
       90 MOVE                             R15 R5
       91 DUPTABLE                         R16 K32 [{"Localization", "Stylizer"}]
       92 GETTABLEKS                       R17 R4 K30 ["Localization"]
       94 SETTABLEKS                       R17 R16 K30 ["Localization"]
       96 GETTABLEKS                       R17 R4 K31 ["Stylizer"]
       98 SETTABLEKS                       R17 R16 K31 ["Stylizer"]
      100 CALL                             R15 1 1
      101 MOVE                             R16 R13
      102 CALL                             R15 1 1
      103 MOVE                             R13 R15
      104 RETURN                           R13 1
