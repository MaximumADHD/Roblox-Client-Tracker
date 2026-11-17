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
       16 JUMPIFNOT                        R5 ; [+2]
       17 LOADN                            R7 1
       18 JUMP                             ; [+7]
       19 GETTABLEKS                       R8 R4 K6 ["assetVersionNumber"]
       21 JUMPIFNOTEQ                      R6 R8 ; [+3]
       23 LOADN                            R7 2
       24 JUMP                             ; [+1]
       25 LOADN                            R7 3
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K7 ["constructAssetThumbnailUrl"]
       29 GETTABLEKS                       R9 R4 K8 ["assetId"]
       31 GETUPVAL                         R10 1
       32 GETTABLEKS                       R10 R10 K9 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
       34 GETUPVAL                         R11 1
       35 GETTABLEKS                       R11 R11 K9 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
       37 CALL                             R8 3 1
       38 GETTABLEKS                       R9 R2 K2 ["versions"]
       40 GETUPVAL                         R10 2
       41 GETTABLEKS                       R10 R10 K10 ["createElement"]
       43 LOADK                            R11 K11 ["Frame"]
       44 DUPTABLE                         R12 K18 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
       45 GETTABLEKS                       R13 R1 K12 ["Size"]
       47 SETTABLEKS                       R13 R12 K12 ["Size"]
       49 GETTABLEKS                       R13 R1 K17 ["LayoutOrder"]
       51 SETTABLEKS                       R13 R12 K17 ["LayoutOrder"]
       53 DUPTABLE                         R13 K23 [{"Version", "LastChange", "SelectButton", "Divider"}]
       54 GETUPVAL                         R14 2
       55 GETTABLEKS                       R14 R14 K10 ["createElement"]
       57 LOADK                            R15 K24 ["TextLabel"]
       58 DUPTABLE                         R16 K33 [{["AnchorPoint"], ["Position"], ["Size"], ["Text"], ["TextColor3"], ["Font"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
       59 GETIMPORT                        R17 K36 [Vector2.new]
       61 LOADN                            R18 0
       62 LOADK                            R19 K37 [0.5]
       63 CALL                             R17 2 1
       64 SETTABLEKS                       R17 R16 K25 ["AnchorPoint"]
       66 GETIMPORT                        R17 K39 [UDim2.new]
       68 LOADN                            R18 0
       69 LOADN                            R19 120
       70 LOADN                            R20 0
       71 LOADN                            R21 25
       72 CALL                             R17 4 1
       73 SETTABLEKS                       R17 R16 K26 ["Position"]
       75 GETIMPORT                        R17 K39 [UDim2.new]
       77 LOADN                            R18 1
       78 LOADN                            R19 -67
       79 LOADN                            R20 0
       80 LOADN                            R21 20
       81 CALL                             R17 4 1
       82 SETTABLEKS                       R17 R16 K12 ["Size"]
       84 LOADK                            R18 K40 ["V"]
       85 GETTABLEKS                       R20 R4 K6 ["assetVersionNumber"]
       87 FASTCALL1                        TOSTRING R20 ; [+2]
       88 GETIMPORT                        R19 K42 [tostring]
       90 CALL                             R19 1 1
       91 CONCAT                           R17 R18 R19
       92 SETTABLEKS                       R17 R16 K27 ["Text"]
       94 GETTABLEKS                       R17 R9 K43 ["textColor"]
       96 SETTABLEKS                       R17 R16 K28 ["TextColor3"]
       98 GETUPVAL                         R17 1
       99 GETTABLEKS                       R17 R17 K44 ["FONT_BOLD"]
      101 SETTABLEKS                       R17 R16 K29 ["Font"]
      103 GETUPVAL                         R17 1
      104 GETTABLEKS                       R17 R17 K45 ["FONT_SIZE_MEDIUM"]
      106 SETTABLEKS                       R17 R16 K30 ["TextSize"]
      108 GETIMPORT                        R17 K48 [Enum.TextXAlignment.Left]
      110 SETTABLEKS                       R17 R16 K31 ["TextXAlignment"]
      112 GETIMPORT                        R17 K50 [Enum.TextYAlignment.Center]
      114 SETTABLEKS                       R17 R16 K32 ["TextYAlignment"]
      116 CALL                             R14 2 1
      117 SETTABLEKS                       R14 R13 K19 ["Version"]
      119 GETUPVAL                         R14 2
      120 GETTABLEKS                       R14 R14 K10 ["createElement"]
      122 LOADK                            R15 K24 ["TextLabel"]
      123 DUPTABLE                         R16 K33 [{["AnchorPoint"], ["Position"], ["Size"], ["Text"], ["TextColor3"], ["Font"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      124 GETIMPORT                        R17 K36 [Vector2.new]
      126 LOADN                            R18 0
      127 LOADN                            R19 0
      128 CALL                             R17 2 1
      129 SETTABLEKS                       R17 R16 K25 ["AnchorPoint"]
      131 GETIMPORT                        R17 K39 [UDim2.new]
      133 LOADN                            R18 0
      134 LOADN                            R19 120
      135 LOADN                            R20 0
      136 LOADN                            R21 35
      137 CALL                             R17 4 1
      138 SETTABLEKS                       R17 R16 K26 ["Position"]
      140 GETIMPORT                        R17 K39 [UDim2.new]
      142 LOADN                            R18 1
      143 LOADN                            R19 -67
      144 LOADN                            R20 0
      145 LOADN                            R21 20
      146 CALL                             R17 4 1
      147 SETTABLEKS                       R17 R16 K12 ["Size"]
      149 GETUPVAL                         R17 3
      150 GETTABLEKS                       R18 R4 K51 ["created"]
      152 LOADK                            R19 K52 ["L LTS"]
      153 GETTABLEKS                       R20 R0 K0 ["props"]
      155 GETTABLEKS                       R20 R20 K53 ["Localization"]
      157 NAMECALL                         R20 R20 K54 ["getLocale"]
      159 CALL                             R20 1 -1
      160 CALL                             R17 -1 1
      161 SETTABLEKS                       R17 R16 K27 ["Text"]
      163 GETTABLEKS                       R17 R9 K43 ["textColor"]
      165 SETTABLEKS                       R17 R16 K28 ["TextColor3"]
      167 GETUPVAL                         R17 1
      168 GETTABLEKS                       R17 R17 K55 ["FONT"]
      170 SETTABLEKS                       R17 R16 K29 ["Font"]
      172 GETUPVAL                         R17 1
      173 GETTABLEKS                       R17 R17 K45 ["FONT_SIZE_MEDIUM"]
      175 SETTABLEKS                       R17 R16 K30 ["TextSize"]
      177 GETIMPORT                        R17 K48 [Enum.TextXAlignment.Left]
      179 SETTABLEKS                       R17 R16 K31 ["TextXAlignment"]
      181 GETIMPORT                        R17 K50 [Enum.TextYAlignment.Center]
      183 SETTABLEKS                       R17 R16 K32 ["TextYAlignment"]
      185 CALL                             R14 2 1
      186 SETTABLEKS                       R14 R13 K20 ["LastChange"]
      188 LOADB                            R14 0
      189 JUMPIFEQKN                       R7 K14 [1] ; [+62]
      191 GETUPVAL                         R14 2
      192 GETTABLEKS                       R14 R14 K10 ["createElement"]
      194 LOADK                            R15 K56 ["ImageButton"]
      195 NEWTABLE                         R16 8 0
      197 GETIMPORT                        R17 K36 [Vector2.new]
      199 LOADN                            R18 1
      200 LOADK                            R19 K37 [0.5]
      201 CALL                             R17 2 1
      202 SETTABLEKS                       R17 R16 K25 ["AnchorPoint"]
      204 GETIMPORT                        R17 K39 [UDim2.new]
      206 LOADN                            R18 1
      207 LOADN                            R19 -160
      208 LOADK                            R20 K37 [0.5]
      209 LOADN                            R21 0
      210 CALL                             R17 4 1
      211 SETTABLEKS                       R17 R16 K26 ["Position"]
      213 GETIMPORT                        R17 K39 [UDim2.new]
      215 LOADN                            R18 0
      216 LOADN                            R19 28
      217 LOADN                            R20 0
      218 LOADN                            R21 28
      219 CALL                             R17 4 1
      220 SETTABLEKS                       R17 R16 K12 ["Size"]
      222 GETUPVAL                         R17 4
      223 GETTABLEKS                       R17 R17 K57 ["MAKE_CURRENT_VERSION"]
      225 SETTABLEKS                       R17 R16 K58 ["Image"]
      227 LOADN                            R17 1
      228 SETTABLEKS                       R17 R16 K13 ["BackgroundTransparency"]
      230 JUMPIFNOTEQKN                    R7 K59 [3] ; [+4]
      232 GETTABLEKS                       R17 R9 K60 ["buttonDefaultColor"]
      234 JUMPIF                           R17 ; [+2]
      235 GETTABLEKS                       R17 R9 K61 ["buttonSelectedColor"]
      237 SETTABLEKS                       R17 R16 K62 ["ImageColor3"]
      239 GETUPVAL                         R17 2
      240 GETTABLEKS                       R17 R17 K63 ["Event"]
      242 GETTABLEKS                       R17 R17 K64 ["Activated"]
      244 NEWCLOSURE                       R18 P0
      245 CAPTURE                          VAL R1
      246 CAPTURE                          VAL R4
      247 SETTABLE                         R18 R16 R17
      248 LOADN                            R17 0
      249 SETTABLEKS                       R17 R16 K15 ["BorderSizePixel"]
      251 CALL                             R14 2 1
      252 SETTABLEKS                       R14 R13 K21 ["SelectButton"]
      254 GETUPVAL                         R14 2
      255 GETTABLEKS                       R14 R14 K10 ["createElement"]
      257 GETUPVAL                         R15 5
      258 DUPTABLE                         R16 K65 [{["AnchorPoint"], ["Position"], ["Size"], ["BorderSizePixel"] = 0}]
      259 GETTABLEKS                       R17 R1 K66 ["DividerAnchorPoint"]
      261 SETTABLEKS                       R17 R16 K25 ["AnchorPoint"]
      263 GETTABLEKS                       R17 R1 K67 ["DividerPosition"]
      265 SETTABLEKS                       R17 R16 K26 ["Position"]
      267 GETTABLEKS                       R17 R1 K68 ["DividerSize"]
      269 SETTABLEKS                       R17 R16 K12 ["Size"]
      271 CALL                             R14 2 1
      272 SETTABLEKS                       R14 R13 K22 ["Divider"]
      274 CALL                             R10 3 -1
      275 RETURN                           R10 -1

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
       67 DUPTABLE                         R14 K28 [{["CURRENT"] = 1, ["SELECTED"] = 2, ["DEFAULT"] = 3}]
       68 DUPCLOSURE                       R15 K29 [PROTO_0]
       69 SETTABLEKS                       R15 R13 K30 ["init"]
       71 DUPCLOSURE                       R15 K31 [PROTO_2]
       72 CAPTURE                          VAL R11
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R8
       78 SETTABLEKS                       R15 R13 K32 ["render"]
       80 MOVE                             R15 R5
       81 DUPTABLE                         R16 K35 [{"Localization", "Stylizer"}]
       82 GETTABLEKS                       R17 R4 K33 ["Localization"]
       84 SETTABLEKS                       R17 R16 K33 ["Localization"]
       86 GETTABLEKS                       R17 R4 K34 ["Stylizer"]
       88 SETTABLEKS                       R17 R16 K34 ["Stylizer"]
       90 CALL                             R15 1 1
       91 MOVE                             R16 R13
       92 CALL                             R15 1 1
       93 MOVE                             R13 R15
       94 RETURN                           R13 1
