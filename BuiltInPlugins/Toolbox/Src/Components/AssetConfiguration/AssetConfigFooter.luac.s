PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["toggleOverride"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["props"]
        6 GETTABLEKS                       R1 R2 K2 ["currentTab"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["[\n\r]"]
        4 LOADK                            R4 K4 [" "]
        5 CALL                             R1 3 1
        6 MOVE                             R0 R1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K5 ["props"]
       10 GETTABLEKS                       R1 R2 K6 ["validateAnimation"]
       12 JUMPIFNOT                        R1 ; [+18]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K5 ["props"]
       16 GETTABLEKS                       R1 R2 K6 ["validateAnimation"]
       18 DUPTABLE                         R2 K9 [{"networkInterface", "assetId"}]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K5 ["props"]
       22 GETTABLEKS                       R4 R5 K10 ["Network"]
       24 GETTABLEKS                       R3 R4 K7 ["networkInterface"]
       26 SETTABLEKS                       R3 R2 K7 ["networkInterface"]
       28 SETTABLEKS                       R0 R2 K8 ["assetId"]
       30 CALL                             R1 1 0
       31 GETUPVAL                         R1 0
       32 DUPTABLE                         R3 K12 [{"animationId"}]
       33 SETTABLEKS                       R0 R3 K11 ["animationId"]
       35 NAMECALL                         R1 R1 K13 ["setState"]
       37 CALL                             R1 2 0
       38 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["TryPublish"]
        5 JUMPIFNOT                        R0 ; [+11]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["TryPublish"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K2 ["state"]
       14 GETTABLEKS                       R1 R2 K3 ["animationId"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R2 1
        1 SETTABLEKS                       R2 R0 K0 ["hideInvalidAnimationID"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R2 R0 K1 ["onFlowButtonActivated"]
        8 DUPTABLE                         R2 K4 [{"animationId", "disablePublish"}]
        9 LOADK                            R3 K5 [""]
       10 SETTABLEKS                       R3 R2 K2 ["animationId"]
       12 LOADB                            R3 0
       13 SETTABLEKS                       R3 R2 K3 ["disablePublish"]
       15 SETTABLEKS                       R2 R0 K6 ["state"]
       17 NEWCLOSURE                       R2 P1
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R2 R0 K7 ["onAnimationIDChanged"]
       21 NEWCLOSURE                       R2 P2
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R2 R0 K8 ["onPublishActivated"]
       25 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 JUMPIFEQ                         R2 R3 ; [+3]
        4 LOADB                            R3 1
        5 RETURN                           R3 1
        6 GETUPVAL                         R3 0
        7 JUMPIFNOT                        R3 ; [+33]
        8 GETTABLEKS                       R3 R0 K1 ["hideInvalidAnimationID"]
       10 GETTABLEKS                       R4 R2 K2 ["animationId"]
       12 JUMPIFNOTEQKS                    R4 K3 [""] ; [+5]
       14 LOADB                            R4 1
       15 SETTABLEKS                       R4 R0 K1 ["hideInvalidAnimationID"]
       17 JUMP                             ; [+17]
       18 GETTABLEKS                       R4 R1 K4 ["validateAnimationSucceeded"]
       20 JUMPIF                           R4 ; [+12]
       21 GETTABLEKS                       R6 R1 K5 ["AssetId"]
       23 FASTCALL1                        TOSTRING R6 ; [+2]
       24 GETIMPORT                        R5 K7 [tostring]
       26 CALL                             R5 1 1
       27 GETTABLEKS                       R6 R2 K2 ["animationId"]
       29 JUMPIFEQ                         R5 R6 ; [+2]
       31 LOADB                            R4 0 +1
       32 LOADB                            R4 1
       33 SETTABLEKS                       R4 R0 K1 ["hideInvalidAnimationID"]
       35 GETTABLEKS                       R4 R0 K1 ["hideInvalidAnimationID"]
       37 JUMPIFEQ                         R3 R4 ; [+3]
       39 LOADB                            R4 1
       40 RETURN                           R4 1
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R3 R4 K8 ["deepEqual"]
       44 MOVE                             R4 R1
       45 GETTABLEKS                       R5 R0 K9 ["props"]
       47 CALL                             R3 2 1
       48 JUMPIFNOT                        R3 ; [+2]
       49 LOADB                            R3 0
       50 RETURN                           R3 1
       51 LOADB                            R3 1
       52 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["Localization"]
        4 LOADK                            R4 K2 ["AssetConfigFooter"]
        5 LOADK                            R5 K3 ["UploadFeeWithRobuxIcon"]
        6 DUPTABLE                         R6 K5 [{"price"}]
        7 GETUPVAL                         R8 0
        8 MOVE                             R9 R1
        9 CONCAT                           R7 R8 R9
       10 SETTABLEKS                       R7 R6 K4 ["price"]
       12 NAMECALL                         R2 R2 K6 ["getText"]
       14 CALL                             R2 4 -1
       15 RETURN                           R2 -1

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnPublishButtonHover"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnPublishButtonHover"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnPublishButtonHover"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnPublishButtonHover"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R2 R3 K0 ["state"]
        6 GETTABLEKS                       R1 R2 K1 ["animationId"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R4 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R4 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R1 K3 ["Size"]
       10 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       12 GETTABLEKS                       R6 R1 K5 ["TryPublish"]
       14 GETTABLEKS                       R7 R1 K6 ["TryCancel"]
       16 GETTABLEKS                       R8 R3 K7 ["footer"]
       18 GETTABLEKS                       R9 R1 K8 ["CanSave"]
       20 GETTABLEKS                       R10 R1 K9 ["screenFlowType"]
       22 GETTABLEKS                       R11 R1 K10 ["assetTypeEnum"]
       24 GETTABLEKS                       R12 R1 K11 ["currentTab"]
       26 GETTABLEKS                       R13 R1 K12 ["validateAnimationSucceeded"]
       28 MOVE                             R14 R13
       29 JUMPIF                           R14 ; [+6]
       30 GETTABLEKS                       R15 R2 K13 ["animationId"]
       32 JUMPIFEQKS                       R15 K14 [""] ; [+2]
       34 LOADB                            R14 0 +1
       35 LOADB                            R14 1
       36 GETUPVAL                         R15 0
       37 JUMPIFNOT                        R15 ; [+2]
       38 GETTABLEKS                       R14 R0 K15 ["hideInvalidAnimationID"]
       40 GETUPVAL                         R16 1
       41 GETTABLEKS                       R15 R16 K16 ["queryParam"]
       43 MOVE                             R16 R10
       44 MOVE                             R17 R11
       45 GETUPVAL                         R20 1
       46 GETTABLEKS                       R19 R20 K17 ["keys"]
       48 GETTABLEKS                       R18 R19 K18 ["SHOW_OVERRIDE_BUTTON"]
       50 CALL                             R15 3 1
       51 LOADNIL                          R16
       52 GETUPVAL                         R17 2
       53 MOVE                             R19 R12
       54 NAMECALL                         R17 R17 K19 ["isOverride"]
       56 CALL                             R17 2 1
       57 JUMPIFNOT                        R17 ; [+9]
       58 GETTABLEKS                       R17 R1 K20 ["Localization"]
       60 LOADK                            R19 K21 ["AssetConfigFooter"]
       61 LOADK                            R20 K22 ["NewAsset"]
       62 NAMECALL                         R17 R17 K23 ["getText"]
       64 CALL                             R17 3 1
       65 MOVE                             R16 R17
       66 JUMP                             ; [+8]
       67 GETTABLEKS                       R17 R1 K20 ["Localization"]
       69 LOADK                            R19 K21 ["AssetConfigFooter"]
       70 LOADK                            R20 K24 ["Override"]
       71 NAMECALL                         R17 R17 K23 ["getText"]
       73 CALL                             R17 3 1
       74 MOVE                             R16 R17
       75 LOADB                            R17 0
       76 GETIMPORT                        R18 K28 [Enum.AssetType.Animation]
       78 JUMPIFNOTEQ                      R11 R18 ; [+6]
       80 GETUPVAL                         R17 2
       81 MOVE                             R19 R12
       82 NAMECALL                         R17 R17 K19 ["isOverride"]
       84 CALL                             R17 2 1
       85 MOVE                             R18 R17
       86 JUMPIFNOT                        R18 ; [+11]
       87 GETUPVAL                         R21 3
       88 GETTABLEKS                       R20 R21 K29 ["FLOW_TYPE"]
       90 GETTABLEKS                       R19 R20 K30 ["DOWNLOAD_FLOW"]
       92 GETTABLEKS                       R20 R1 K9 ["screenFlowType"]
       94 JUMPIFEQ                         R19 R20 ; [+2]
       96 LOADB                            R18 0 +1
       97 LOADB                            R18 1
       98 GETTABLEKS                       R19 R1 K31 ["AssetId"]
      100 JUMPIF                           R19 ; [+2]
      101 GETTABLEKS                       R19 R2 K32 ["animationID"]
      103 LOADB                            R20 0
      104 MOVE                             R21 R9
      105 JUMPIFNOT                        R21 ; [+3]
      106 GETTABLEKS                       R22 R2 K33 ["disablePublish"]
      108 NOT                              R21 R22
      109 JUMPIFNOT                        R18 ; [+15]
      110 JUMPIF                           R9 ; [+2]
      111 MOVE                             R21 R13
      112 JUMP                             ; [+2]
      113 JUMPIF                           R13 ; [+1]
      114 LOADB                            R21 0
      115 JUMPIFNOT                        R19 ; [+9]
      116 GETIMPORT                        R22 K36 [utf8.len]
      118 MOVE                             R23 R19
      119 CALL                             R22 1 1
      120 LOADN                            R23 32
      121 JUMPIFLT                         R23 R22 ; [+2]
      123 LOADB                            R20 0 +1
      124 LOADB                            R20 1
      125 LOADNIL                          R22
      126 JUMPIFNOT                        R18 ; [+9]
      127 GETTABLEKS                       R23 R1 K20 ["Localization"]
      129 LOADK                            R25 K37 ["Common"]
      130 LOADK                            R26 K38 ["Import"]
      131 NAMECALL                         R23 R23 K23 ["getText"]
      133 CALL                             R23 3 1
      134 MOVE                             R22 R23
      135 JUMP                             ; [+8]
      136 GETTABLEKS                       R23 R1 K20 ["Localization"]
      138 LOADK                            R25 K37 ["Common"]
      139 LOADK                            R26 K39 ["Save"]
      140 NAMECALL                         R23 R23 K23 ["getText"]
      142 CALL                             R23 3 1
      143 MOVE                             R22 R23
      144 GETUPVAL                         R24 4
      145 GETTABLEKS                       R23 R24 K40 ["isCatalogAsset"]
      147 MOVE                             R24 R11
      148 CALL                             R23 1 1
      149 JUMPIF                           R23 ; [+5]
      150 GETUPVAL                         R24 4
      151 GETTABLEKS                       R23 R24 K41 ["isUGCBundleType"]
      153 MOVE                             R24 R11
      154 CALL                             R23 1 1
      155 GETUPVAL                         R26 3
      156 GETTABLEKS                       R25 R26 K29 ["FLOW_TYPE"]
      158 GETTABLEKS                       R24 R25 K42 ["UPLOAD_FLOW"]
      160 JUMPIFNOTEQ                      R10 R24 ; [+26]
      162 JUMPIFNOT                        R23 ; [+24]
      163 GETTABLEKS                       R24 R1 K43 ["isUploadFeeEnabled"]
      165 JUMPIFNOT                        R24 ; [+16]
      166 GETTABLEKS                       R24 R1 K44 ["uploadFee"]
      168 LOADN                            R25 0
      169 JUMPIFNOTLT                      R25 R24 ; [+7]
      171 GETTABLEKS                       R26 R1 K44 ["uploadFee"]
      173 NAMECALL                         R24 R0 K45 ["getUploadFeeWithRobuxIcon"]
      175 CALL                             R24 2 1
      176 MOVE                             R22 R24
      177 GETTABLEKS                       R24 R1 K46 ["canAffordUploadFee"]
      179 JUMPIF                           R24 ; [+7]
      180 LOADB                            R21 0
      181 JUMP                             ; [+5]
      182 GETTABLEKS                       R24 R1 K43 ["isUploadFeeEnabled"]
      184 JUMPIFNOTEQKNIL                  R24 ; [+2]
      186 LOADB                            R21 0
      187 GETUPVAL                         R24 5
      188 CALL                             R24 0 1
      189 JUMPIFNOT                        R24 ; [+25]
      190 LOADB                            R24 0
      191 GETTABLEKS                       R26 R1 K47 ["avatarAssetCurrentIndex"]
      193 FASTCALL1                        TYPE R26 ; [+2]
      194 GETIMPORT                        R25 K49 [type]
      196 CALL                             R25 1 1
      197 JUMPIFNOTEQKS                    R25 K50 ["number"] ; [+17]
      199 LOADB                            R24 0
      200 GETTABLEKS                       R26 R1 K51 ["avatarAssetTotalCount"]
      202 FASTCALL1                        TYPE R26 ; [+2]
      203 GETIMPORT                        R25 K49 [type]
      205 CALL                             R25 1 1
      206 JUMPIFNOTEQKS                    R25 K50 ["number"] ; [+8]
      208 GETTABLEKS                       R25 R1 K51 ["avatarAssetTotalCount"]
      210 LOADN                            R26 1
      211 JUMPIFLT                         R26 R25 ; [+2]
      213 LOADB                            R24 0 +1
      214 LOADB                            R24 1
      215 JUMPIFNOT                        R24 ; [+7]
      216 GETTABLEKS                       R27 R1 K47 ["avatarAssetCurrentIndex"]
      218 GETTABLEKS                       R28 R1 K51 ["avatarAssetTotalCount"]
      220 DIV                              R26 R27 R28
      221 MULK                             R25 R26 K52 [100]
      222 JUMPIF                           R25 ; [+1]
      223 LOADN                            R25 0
      224 JUMPIFNOT                        R24 ; [+7]
      225 GETTABLEKS                       R27 R1 K47 ["avatarAssetCurrentIndex"]
      227 FASTCALL1                        MATH_FLOOR R27 ; [+2]
      228 GETIMPORT                        R26 K55 [math.floor]
      230 CALL                             R26 1 1
      231 JUMPIF                           R26 ; [+1]
      232 LOADN                            R26 0
      233 JUMPIFNOT                        R24 ; [+7]
      234 GETTABLEKS                       R28 R1 K51 ["avatarAssetTotalCount"]
      236 FASTCALL1                        MATH_FLOOR R28 ; [+2]
      237 GETIMPORT                        R27 K55 [math.floor]
      239 CALL                             R27 1 1
      240 JUMPIF                           R27 ; [+1]
      241 LOADN                            R27 0
      242 JUMPIFNOT                        R24 ; [+23]
      243 GETTABLEKS                       R28 R1 K20 ["Localization"]
      245 LOADK                            R30 K56 ["General"]
      246 LOADK                            R31 K57 ["AssetXOutOfY"]
      247 DUPTABLE                         R32 K60 [{"current", "total"}]
      248 FASTCALL1                        TOSTRING R26 ; [+3]
      249 MOVE                             R34 R26
      250 GETIMPORT                        R33 K62 [tostring]
      252 CALL                             R33 1 1
      253 SETTABLEKS                       R33 R32 K58 ["current"]
      255 FASTCALL1                        TOSTRING R27 ; [+3]
      256 MOVE                             R34 R27
      257 GETIMPORT                        R33 K62 [tostring]
      259 CALL                             R33 1 1
      260 SETTABLEKS                       R33 R32 K59 ["total"]
      262 NAMECALL                         R28 R28 K23 ["getText"]
      264 CALL                             R28 4 1
      265 JUMPIF                           R28 ; [+1]
      266 LOADK                            R28 K14 [""]
      267 GETUPVAL                         R29 5
      268 CALL                             R29 0 1
      269 JUMPIFNOT                        R29 ; [+474]
      270 GETUPVAL                         R30 6
      271 GETTABLEKS                       R29 R30 K63 ["new"]
      273 CALL                             R29 0 1
      274 GETUPVAL                         R33 3
      275 GETTABLEKS                       R32 R33 K29 ["FLOW_TYPE"]
      277 GETTABLEKS                       R31 R32 K42 ["UPLOAD_FLOW"]
      279 JUMPIFNOTEQ                      R10 R31 ; [+22]
      281 JUMPIFNOT                        R23 ; [+20]
      282 GETTABLEKS                       R31 R1 K43 ["isUploadFeeEnabled"]
      284 JUMPIFNOT                        R31 ; [+17]
      285 GETTABLEKS                       R31 R1 K44 ["uploadFee"]
      287 JUMPIFNOT                        R31 ; [+14]
      288 GETTABLEKS                       R31 R1 K44 ["uploadFee"]
      290 LOADN                            R32 0
      291 JUMPIFNOTLT                      R32 R31 ; [+10]
      293 GETUPVAL                         R31 7
      294 GETTABLEKS                       R33 R1 K44 ["uploadFee"]
      296 FASTCALL1                        TOSTRING R33 ; [+2]
      297 GETIMPORT                        R32 K62 [tostring]
      299 CALL                             R32 1 1
      300 CONCAT                           R30 R31 R32
      301 JUMPIF                           R30 ; [+1]
      302 MOVE                             R30 R22
      303 GETUPVAL                         R32 8
      304 GETTABLEKS                       R31 R32 K64 ["createElement"]
      306 GETUPVAL                         R33 9
      307 GETTABLEKS                       R32 R33 K65 ["View"]
      309 DUPTABLE                         R33 K67 [{"tag", "Size", "LayoutOrder"}]
      310 LOADK                            R34 K68 ["row align-y-center gap-small flex-x-between padding-x-medium"]
      311 SETTABLEKS                       R34 R33 K66 ["tag"]
      313 SETTABLEKS                       R4 R33 K3 ["Size"]
      315 SETTABLEKS                       R5 R33 K4 ["LayoutOrder"]
      317 DUPTABLE                         R34 K71 [{"LeftContent", "ButtonsSection"}]
      318 GETUPVAL                         R36 8
      319 GETTABLEKS                       R35 R36 K64 ["createElement"]
      321 GETUPVAL                         R37 9
      322 GETTABLEKS                       R36 R37 K65 ["View"]
      324 DUPTABLE                         R37 K73 [{"tag", "LayoutOrder", "Size", "AutomaticSize"}]
      325 LOADK                            R38 K74 ["row align-y-center gap-small fill min-width-0"]
      326 SETTABLEKS                       R38 R37 K66 ["tag"]
      328 NAMECALL                         R38 R29 K75 ["getNextOrder"]
      330 CALL                             R38 1 1
      331 SETTABLEKS                       R38 R37 K4 ["LayoutOrder"]
      333 GETIMPORT                        R38 K77 [UDim2.new]
      335 LOADN                            R39 0
      336 LOADN                            R40 0
      337 LOADN                            R41 1
      338 LOADN                            R42 0
      339 CALL                             R38 4 1
      340 SETTABLEKS                       R38 R37 K3 ["Size"]
      342 GETIMPORT                        R38 K79 [Enum.AutomaticSize.X]
      344 SETTABLEKS                       R38 R37 K72 ["AutomaticSize"]
      346 DUPTABLE                         R38 K82 [{"AnimationOverride", "AssetProgressRow"}]
      347 JUMPIFNOT                        R15 ; [+32]
      348 GETUPVAL                         R40 8
      349 GETTABLEKS                       R39 R40 K64 ["createElement"]
      351 GETUPVAL                         R41 9
      352 GETTABLEKS                       R40 R41 K65 ["View"]
      354 DUPTABLE                         R41 K83 [{"tag"}]
      355 LOADK                            R42 K84 ["fill auto-y align-y-center min-width-0"]
      356 SETTABLEKS                       R42 R41 K66 ["tag"]
      358 DUPTABLE                         R42 K86 [{"OverrideLink"}]
      359 GETUPVAL                         R44 8
      360 GETTABLEKS                       R43 R44 K64 ["createElement"]
      362 GETUPVAL                         R45 9
      363 GETTABLEKS                       R44 R45 K87 ["Text"]
      365 DUPTABLE                         R45 K89 [{"tag", "Text", "onActivated"}]
      366 LOADK                            R46 K90 ["text-align-x-left text-align-y-center content-link text-body-small text-wrap auto-xy"]
      367 SETTABLEKS                       R46 R45 K66 ["tag"]
      369 SETTABLEKS                       R16 R45 K87 ["Text"]
      371 GETTABLEKS                       R46 R0 K91 ["onFlowButtonActivated"]
      373 SETTABLEKS                       R46 R45 K88 ["onActivated"]
      375 CALL                             R43 2 1
      376 SETTABLEKS                       R43 R42 K85 ["OverrideLink"]
      378 CALL                             R39 3 1
      379 JUMPIF                           R39 ; [+1]
      380 LOADNIL                          R39
      381 SETTABLEKS                       R39 R38 K80 ["AnimationOverride"]
      383 JUMPIFNOT                        R24 ; [+77]
      384 GETUPVAL                         R40 8
      385 GETTABLEKS                       R39 R40 K64 ["createElement"]
      387 GETUPVAL                         R41 9
      388 GETTABLEKS                       R40 R41 K65 ["View"]
      390 DUPTABLE                         R41 K83 [{"tag"}]
      391 LOADK                            R42 K92 ["row align-y-center shrink-0"]
      392 SETTABLEKS                       R42 R41 K66 ["tag"]
      394 DUPTABLE                         R42 K95 [{"AssetProgressLabel", "AssetProgressBar"}]
      395 GETUPVAL                         R44 8
      396 GETTABLEKS                       R43 R44 K64 ["createElement"]
      398 GETUPVAL                         R45 9
      399 GETTABLEKS                       R44 R45 K87 ["Text"]
      401 DUPTABLE                         R45 K96 [{"tag", "Text", "Size", "LayoutOrder"}]
      402 LOADK                            R46 K97 ["text-title-small bold content-emphasis auto-y"]
      403 SETTABLEKS                       R46 R45 K66 ["tag"]
      405 SETTABLEKS                       R28 R45 K87 ["Text"]
      407 GETIMPORT                        R46 K77 [UDim2.new]
      409 LOADN                            R47 0
      410 LOADN                            R48 100
      411 LOADN                            R49 1
      412 LOADN                            R50 0
      413 CALL                             R46 4 1
      414 SETTABLEKS                       R46 R45 K3 ["Size"]
      416 LOADN                            R46 1
      417 SETTABLEKS                       R46 R45 K4 ["LayoutOrder"]
      419 CALL                             R43 2 1
      420 SETTABLEKS                       R43 R42 K93 ["AssetProgressLabel"]
      422 GETUPVAL                         R44 8
      423 GETTABLEKS                       R43 R44 K64 ["createElement"]
      425 GETUPVAL                         R45 9
      426 GETTABLEKS                       R44 R45 K98 ["Progress"]
      428 DUPTABLE                         R45 K103 [{"value", "size", "shape", "width", "LayoutOrder"}]
      429 ORK                              R46 R25 K104 [0]
      430 SETTABLEKS                       R46 R45 K99 ["value"]
      432 GETUPVAL                         R48 10
      433 GETTABLEKS                       R47 R48 K105 ["ProgressSize"]
      435 GETTABLEKS                       R46 R47 K106 ["Medium"]
      437 SETTABLEKS                       R46 R45 K100 ["size"]
      439 GETUPVAL                         R48 10
      440 GETTABLEKS                       R47 R48 K107 ["ProgressShape"]
      442 GETTABLEKS                       R46 R47 K108 ["Bar"]
      444 SETTABLEKS                       R46 R45 K101 ["shape"]
      446 GETIMPORT                        R46 K110 [UDim.new]
      448 LOADN                            R47 0
      449 LOADN                            R48 220
      450 CALL                             R46 2 1
      451 SETTABLEKS                       R46 R45 K102 ["width"]
      453 LOADN                            R46 2
      454 SETTABLEKS                       R46 R45 K4 ["LayoutOrder"]
      456 CALL                             R43 2 1
      457 SETTABLEKS                       R43 R42 K94 ["AssetProgressBar"]
      459 CALL                             R39 3 1
      460 JUMPIF                           R39 ; [+1]
      461 LOADNIL                          R39
      462 SETTABLEKS                       R39 R38 K81 ["AssetProgressRow"]
      464 CALL                             R35 3 1
      465 JUMPIF                           R35 ; [+16]
      466 GETUPVAL                         R36 8
      467 GETTABLEKS                       R35 R36 K64 ["createElement"]
      469 GETUPVAL                         R37 9
      470 GETTABLEKS                       R36 R37 K65 ["View"]
      472 DUPTABLE                         R37 K111 [{"tag", "LayoutOrder"}]
      473 LOADK                            R38 K112 ["size-0-0"]
      474 SETTABLEKS                       R38 R37 K66 ["tag"]
      476 NAMECALL                         R38 R29 K75 ["getNextOrder"]
      478 CALL                             R38 1 1
      479 SETTABLEKS                       R38 R37 K4 ["LayoutOrder"]
      481 CALL                             R35 2 1
      482 SETTABLEKS                       R35 R34 K69 ["LeftContent"]
      484 GETUPVAL                         R36 8
      485 GETTABLEKS                       R35 R36 K64 ["createElement"]
      487 GETUPVAL                         R37 9
      488 GETTABLEKS                       R36 R37 K65 ["View"]
      490 DUPTABLE                         R37 K111 [{"tag", "LayoutOrder"}]
      491 LOADK                            R38 K113 ["row align-y-center align-x-right gap-small auto-xy"]
      492 SETTABLEKS                       R38 R37 K66 ["tag"]
      494 NAMECALL                         R38 R29 K75 ["getNextOrder"]
      496 CALL                             R38 1 1
      497 SETTABLEKS                       R38 R37 K4 ["LayoutOrder"]
      499 DUPTABLE                         R38 K116 [{"PublishButton", "CancelButton"}]
      500 JUMPIF                           R21 ; [+111]
      501 GETUPVAL                         R40 8
      502 GETTABLEKS                       R39 R40 K64 ["createElement"]
      504 GETUPVAL                         R41 9
      505 GETTABLEKS                       R40 R41 K65 ["View"]
      507 DUPTABLE                         R41 K117 [{"Size", "AutomaticSize", "LayoutOrder"}]
      508 GETIMPORT                        R42 K77 [UDim2.new]
      510 LOADN                            R43 0
      511 LOADN                            R44 0
      512 LOADN                            R45 0
      513 LOADN                            R46 40
      514 CALL                             R42 4 1
      515 SETTABLEKS                       R42 R41 K3 ["Size"]
      517 GETIMPORT                        R42 K79 [Enum.AutomaticSize.X]
      519 SETTABLEKS                       R42 R41 K72 ["AutomaticSize"]
      521 NAMECALL                         R42 R29 K75 ["getNextOrder"]
      523 CALL                             R42 1 1
      524 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      526 DUPTABLE                         R42 K120 [{"DisabledButton", "HoverOverlay"}]
      527 GETUPVAL                         R44 8
      528 GETTABLEKS                       R43 R44 K64 ["createElement"]
      530 GETUPVAL                         R45 9
      531 GETTABLEKS                       R44 R45 K121 ["Button"]
      533 DUPTABLE                         R45 K125 [{"text", "variant", "onActivated", "isDisabled", "size"}]
      534 SETTABLEKS                       R30 R45 K122 ["text"]
      536 GETUPVAL                         R48 10
      537 GETTABLEKS                       R47 R48 K126 ["ButtonVariant"]
      539 GETTABLEKS                       R46 R47 K127 ["Emphasis"]
      541 SETTABLEKS                       R46 R45 K123 ["variant"]
      543 DUPCLOSURE                       R46 K128 [PROTO_6]
      544 SETTABLEKS                       R46 R45 K88 ["onActivated"]
      546 LOADB                            R46 1
      547 SETTABLEKS                       R46 R45 K124 ["isDisabled"]
      549 GETUPVAL                         R48 10
      550 GETTABLEKS                       R47 R48 K129 ["InputSize"]
      552 GETTABLEKS                       R46 R47 K130 ["Small"]
      554 SETTABLEKS                       R46 R45 K100 ["size"]
      556 CALL                             R43 2 1
      557 SETTABLEKS                       R43 R42 K118 ["DisabledButton"]
      559 GETTABLEKS                       R44 R1 K131 ["OnPublishButtonHover"]
      561 JUMPIFNOT                        R44 ; [+45]
      562 GETUPVAL                         R44 8
      563 GETTABLEKS                       R43 R44 K64 ["createElement"]
      565 LOADK                            R44 K132 ["Frame"]
      566 NEWTABLE                         R45 8 0
      568 GETIMPORT                        R46 K77 [UDim2.new]
      570 LOADN                            R47 1
      571 LOADN                            R48 0
      572 LOADN                            R49 1
      573 LOADN                            R50 0
      574 CALL                             R46 4 1
      575 SETTABLEKS                       R46 R45 K3 ["Size"]
      577 GETIMPORT                        R46 K77 [UDim2.new]
      579 LOADN                            R47 0
      580 LOADN                            R48 0
      581 LOADN                            R49 0
      582 LOADN                            R50 0
      583 CALL                             R46 4 1
      584 SETTABLEKS                       R46 R45 K133 ["Position"]
      586 LOADN                            R46 1
      587 SETTABLEKS                       R46 R45 K134 ["BackgroundTransparency"]
      589 GETUPVAL                         R48 11
      590 GETTABLEKS                       R47 R48 K135 ["Event"]
      592 GETTABLEKS                       R46 R47 K136 ["MouseEnter"]
      594 NEWCLOSURE                       R47 P1
      595 CAPTURE                          VAL R1
      596 SETTABLE                         R47 R45 R46
      597 GETUPVAL                         R48 11
      598 GETTABLEKS                       R47 R48 K135 ["Event"]
      600 GETTABLEKS                       R46 R47 K137 ["MouseLeave"]
      602 NEWCLOSURE                       R47 P2
      603 CAPTURE                          VAL R1
      604 SETTABLE                         R47 R45 R46
      605 CALL                             R43 2 1
      606 JUMPIF                           R43 ; [+1]
      607 LOADNIL                          R43
      608 SETTABLEKS                       R43 R42 K119 ["HoverOverlay"]
      610 CALL                             R39 3 1
      611 JUMP                             ; [+60]
      612 GETUPVAL                         R40 8
      613 GETTABLEKS                       R39 R40 K64 ["createElement"]
      615 GETUPVAL                         R41 9
      616 GETTABLEKS                       R40 R41 K65 ["View"]
      618 DUPTABLE                         R41 K117 [{"Size", "AutomaticSize", "LayoutOrder"}]
      619 GETIMPORT                        R42 K77 [UDim2.new]
      621 LOADN                            R43 0
      622 LOADN                            R44 0
      623 LOADN                            R45 0
      624 LOADN                            R46 40
      625 CALL                             R42 4 1
      626 SETTABLEKS                       R42 R41 K3 ["Size"]
      628 GETIMPORT                        R42 K79 [Enum.AutomaticSize.X]
      630 SETTABLEKS                       R42 R41 K72 ["AutomaticSize"]
      632 NAMECALL                         R42 R29 K75 ["getNextOrder"]
      634 CALL                             R42 1 1
      635 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      637 DUPTABLE                         R42 K138 [{"Button"}]
      638 GETUPVAL                         R44 8
      639 GETTABLEKS                       R43 R44 K64 ["createElement"]
      641 GETUPVAL                         R45 9
      642 GETTABLEKS                       R44 R45 K121 ["Button"]
      644 DUPTABLE                         R45 K125 [{"text", "variant", "onActivated", "isDisabled", "size"}]
      645 SETTABLEKS                       R30 R45 K122 ["text"]
      647 GETUPVAL                         R48 10
      648 GETTABLEKS                       R47 R48 K126 ["ButtonVariant"]
      650 GETTABLEKS                       R46 R47 K127 ["Emphasis"]
      652 SETTABLEKS                       R46 R45 K123 ["variant"]
      654 GETTABLEKS                       R46 R0 K139 ["onPublishActivated"]
      656 SETTABLEKS                       R46 R45 K88 ["onActivated"]
      658 NOT                              R46 R21
      659 SETTABLEKS                       R46 R45 K124 ["isDisabled"]
      661 GETUPVAL                         R48 10
      662 GETTABLEKS                       R47 R48 K129 ["InputSize"]
      664 GETTABLEKS                       R46 R47 K130 ["Small"]
      666 SETTABLEKS                       R46 R45 K100 ["size"]
      668 CALL                             R43 2 1
      669 SETTABLEKS                       R43 R42 K121 ["Button"]
      671 CALL                             R39 3 1
      672 SETTABLEKS                       R39 R38 K114 ["PublishButton"]
      674 GETUPVAL                         R40 8
      675 GETTABLEKS                       R39 R40 K64 ["createElement"]
      677 GETUPVAL                         R41 9
      678 GETTABLEKS                       R40 R41 K65 ["View"]
      680 DUPTABLE                         R41 K117 [{"Size", "AutomaticSize", "LayoutOrder"}]
      681 GETIMPORT                        R42 K77 [UDim2.new]
      683 LOADN                            R43 0
      684 LOADN                            R44 0
      685 LOADN                            R45 0
      686 LOADN                            R46 40
      687 CALL                             R42 4 1
      688 SETTABLEKS                       R42 R41 K3 ["Size"]
      690 GETIMPORT                        R42 K79 [Enum.AutomaticSize.X]
      692 SETTABLEKS                       R42 R41 K72 ["AutomaticSize"]
      694 NAMECALL                         R42 R29 K75 ["getNextOrder"]
      696 CALL                             R42 1 1
      697 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      699 DUPTABLE                         R42 K138 [{"Button"}]
      700 GETUPVAL                         R44 8
      701 GETTABLEKS                       R43 R44 K64 ["createElement"]
      703 GETUPVAL                         R45 9
      704 GETTABLEKS                       R44 R45 K121 ["Button"]
      706 DUPTABLE                         R45 K140 [{"text", "variant", "onActivated", "size"}]
      707 GETTABLEKS                       R46 R1 K20 ["Localization"]
      709 LOADK                            R48 K56 ["General"]
      710 LOADK                            R49 K141 ["SearchOptionsCancel"]
      711 NAMECALL                         R46 R46 K23 ["getText"]
      713 CALL                             R46 3 1
      714 SETTABLEKS                       R46 R45 K122 ["text"]
      716 GETUPVAL                         R48 10
      717 GETTABLEKS                       R47 R48 K126 ["ButtonVariant"]
      719 GETTABLEKS                       R46 R47 K142 ["Standard"]
      721 SETTABLEKS                       R46 R45 K123 ["variant"]
      723 SETTABLEKS                       R7 R45 K88 ["onActivated"]
      725 GETUPVAL                         R48 10
      726 GETTABLEKS                       R47 R48 K129 ["InputSize"]
      728 GETTABLEKS                       R46 R47 K130 ["Small"]
      730 SETTABLEKS                       R46 R45 K100 ["size"]
      732 CALL                             R43 2 1
      733 SETTABLEKS                       R43 R42 K121 ["Button"]
      735 CALL                             R39 3 1
      736 SETTABLEKS                       R39 R38 K115 ["CancelButton"]
      738 CALL                             R35 3 1
      739 SETTABLEKS                       R35 R34 K70 ["ButtonsSection"]
      741 CALL                             R31 3 -1
      742 CLOSEUPVALS                      R21
      743 RETURN                           R31 -1
      744 GETUPVAL                         R30 11
      745 GETTABLEKS                       R29 R30 K64 ["createElement"]
      747 LOADK                            R30 K132 ["Frame"]
      748 DUPTABLE                         R31 K146 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderColor3", "BorderSizePixel", "LayoutOrder"}]
      749 SETTABLEKS                       R4 R31 K3 ["Size"]
      751 LOADN                            R32 0
      752 SETTABLEKS                       R32 R31 K134 ["BackgroundTransparency"]
      754 GETTABLEKS                       R32 R8 K147 ["backgroundColor"]
      756 SETTABLEKS                       R32 R31 K143 ["BackgroundColor3"]
      758 GETTABLEKS                       R32 R8 K148 ["borderColor"]
      760 SETTABLEKS                       R32 R31 K144 ["BorderColor3"]
      762 LOADN                            R32 1
      763 SETTABLEKS                       R32 R31 K145 ["BorderSizePixel"]
      765 SETTABLEKS                       R5 R31 K4 ["LayoutOrder"]
      767 DUPTABLE                         R32 K154 [{"UIPadding", "UIListLayout", "AnimationIdBox", "InvalidAnimationLabel", "CancelButton", "PublishButton", "ToggleOverrideButton"}]
      768 GETUPVAL                         R34 11
      769 GETTABLEKS                       R33 R34 K64 ["createElement"]
      771 LOADK                            R34 K149 ["UIPadding"]
      772 DUPTABLE                         R35 K159 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      773 GETIMPORT                        R36 K110 [UDim.new]
      775 LOADN                            R37 0
      776 LOADN                            R38 0
      777 CALL                             R36 2 1
      778 SETTABLEKS                       R36 R35 K155 ["PaddingBottom"]
      780 GETIMPORT                        R36 K110 [UDim.new]
      782 LOADN                            R37 0
      783 LOADN                            R38 24
      784 CALL                             R36 2 1
      785 SETTABLEKS                       R36 R35 K156 ["PaddingLeft"]
      787 GETIMPORT                        R36 K110 [UDim.new]
      789 LOADN                            R37 0
      790 LOADN                            R38 24
      791 CALL                             R36 2 1
      792 SETTABLEKS                       R36 R35 K157 ["PaddingRight"]
      794 GETIMPORT                        R36 K110 [UDim.new]
      796 LOADN                            R37 0
      797 LOADN                            R38 0
      798 CALL                             R36 2 1
      799 SETTABLEKS                       R36 R35 K158 ["PaddingTop"]
      801 CALL                             R33 2 1
      802 SETTABLEKS                       R33 R32 K149 ["UIPadding"]
      804 GETUPVAL                         R34 11
      805 GETTABLEKS                       R33 R34 K64 ["createElement"]
      807 LOADK                            R34 K150 ["UIListLayout"]
      808 DUPTABLE                         R35 K165 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      809 GETIMPORT                        R36 K167 [Enum.FillDirection.Horizontal]
      811 SETTABLEKS                       R36 R35 K160 ["FillDirection"]
      813 GETIMPORT                        R36 K169 [Enum.HorizontalAlignment.Right]
      815 SETTABLEKS                       R36 R35 K161 ["HorizontalAlignment"]
      817 GETIMPORT                        R36 K171 [Enum.VerticalAlignment.Center]
      819 SETTABLEKS                       R36 R35 K162 ["VerticalAlignment"]
      821 GETIMPORT                        R36 K172 [Enum.SortOrder.LayoutOrder]
      823 SETTABLEKS                       R36 R35 K163 ["SortOrder"]
      825 GETIMPORT                        R36 K110 [UDim.new]
      827 LOADN                            R37 0
      828 LOADN                            R38 24
      829 CALL                             R36 2 1
      830 SETTABLEKS                       R36 R35 K164 ["Padding"]
      832 CALL                             R33 2 1
      833 SETTABLEKS                       R33 R32 K150 ["UIListLayout"]
      835 MOVE                             R33 R18
      836 JUMPIFNOT                        R33 ; [+74]
      837 GETUPVAL                         R34 11
      838 GETTABLEKS                       R33 R34 K64 ["createElement"]
      840 LOADK                            R34 K132 ["Frame"]
      841 DUPTABLE                         R35 K173 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
      842 GETIMPORT                        R36 K77 [UDim2.new]
      844 LOADN                            R37 0
      845 LOADN                            R38 160
      846 LOADN                            R39 0
      847 LOADN                            R40 40
      848 CALL                             R36 4 1
      849 SETTABLEKS                       R36 R35 K3 ["Size"]
      851 LOADN                            R36 1
      852 SETTABLEKS                       R36 R35 K134 ["BackgroundTransparency"]
      854 LOADN                            R36 0
      855 SETTABLEKS                       R36 R35 K145 ["BorderSizePixel"]
      857 LOADN                            R36 3
      858 SETTABLEKS                       R36 R35 K4 ["LayoutOrder"]
      860 DUPTABLE                         R36 K175 [{"TextField"}]
      861 GETUPVAL                         R38 11
      862 GETTABLEKS                       R37 R38 K64 ["createElement"]
      864 GETUPVAL                         R38 12
      865 DUPTABLE                         R39 K180 [{"ForceOnTextChange", "OnTextChanged", "PlaceholderText", "Size", "Style", "Text"}]
      866 LOADB                            R40 1
      867 SETTABLEKS                       R40 R39 K176 ["ForceOnTextChange"]
      869 GETTABLEKS                       R40 R0 K181 ["onAnimationIDChanged"]
      871 SETTABLEKS                       R40 R39 K177 ["OnTextChanged"]
      873 GETTABLEKS                       R40 R1 K20 ["Localization"]
      875 LOADK                            R42 K182 ["AssetConfigAnimation"]
      876 LOADK                            R43 K183 ["AnimationID"]
      877 NAMECALL                         R40 R40 K23 ["getText"]
      879 CALL                             R40 3 1
      880 SETTABLEKS                       R40 R39 K178 ["PlaceholderText"]
      882 GETIMPORT                        R40 K77 [UDim2.new]
      884 LOADN                            R41 1
      885 LOADN                            R42 0
      886 LOADN                            R43 1
      887 LOADN                            R44 0
      888 CALL                             R40 4 1
      889 SETTABLEKS                       R40 R39 K3 ["Size"]
      891 JUMPIFNOT                        R20 ; [+2]
      892 LOADK                            R40 K184 ["FilledRoundedRedBorder"]
      893 JUMP                             ; [+1]
      894 LOADK                            R40 K185 ["FilledRoundedBorder"]
      895 SETTABLEKS                       R40 R39 K179 ["Style"]
      897 JUMPIFNOT                        R19 ; [+6]
      898 FASTCALL1                        TOSTRING R19 ; [+3]
      899 MOVE                             R41 R19
      900 GETIMPORT                        R40 K62 [tostring]
      902 CALL                             R40 1 1
      903 JUMPIF                           R40 ; [+1]
      904 LOADNIL                          R40
      905 SETTABLEKS                       R40 R39 K87 ["Text"]
      907 CALL                             R37 2 1
      908 SETTABLEKS                       R37 R36 K174 ["TextField"]
      910 CALL                             R33 3 1
      911 SETTABLEKS                       R33 R32 K151 ["AnimationIdBox"]
      913 MOVE                             R33 R18
      914 JUMPIFNOT                        R33 ; [+54]
      915 NOT                              R33 R14
      916 JUMPIFNOT                        R33 ; [+52]
      917 GETUPVAL                         R34 11
      918 GETTABLEKS                       R33 R34 K64 ["createElement"]
      920 LOADK                            R34 K186 ["TextLabel"]
      921 DUPTABLE                         R35 K192 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "TextXAlignment", "LayoutOrder"}]
      922 LOADN                            R36 1
      923 SETTABLEKS                       R36 R35 K134 ["BackgroundTransparency"]
      925 GETUPVAL                         R37 13
      926 GETTABLEKS                       R36 R37 K193 ["FONT"]
      928 SETTABLEKS                       R36 R35 K187 ["Font"]
      930 GETTABLEKS                       R36 R1 K20 ["Localization"]
      932 LOADK                            R38 K182 ["AssetConfigAnimation"]
      933 LOADK                            R39 K194 ["InvalidAnimationID"]
      934 NAMECALL                         R36 R36 K23 ["getText"]
      936 CALL                             R36 3 1
      937 SETTABLEKS                       R36 R35 K87 ["Text"]
      939 GETTABLEKS                       R36 R3 K195 ["redText"]
      941 SETTABLEKS                       R36 R35 K188 ["TextColor3"]
      943 GETUPVAL                         R37 13
      944 GETTABLEKS                       R36 R37 K196 ["FONT_SIZE_MEDIUM"]
      946 SETTABLEKS                       R36 R35 K189 ["TextSize"]
      948 GETIMPORT                        R36 K77 [UDim2.new]
      950 LOADN                            R37 0
      951 LOADN                            R38 96
      952 LOADN                            R39 1
      953 LOADN                            R40 0
      954 CALL                             R36 4 1
      955 SETTABLEKS                       R36 R35 K3 ["Size"]
      957 GETIMPORT                        R36 K197 [Enum.TextYAlignment.Center]
      959 SETTABLEKS                       R36 R35 K190 ["TextYAlignment"]
      961 GETIMPORT                        R36 K198 [Enum.TextXAlignment.Center]
      963 SETTABLEKS                       R36 R35 K191 ["TextXAlignment"]
      965 LOADN                            R36 2
      966 SETTABLEKS                       R36 R35 K4 ["LayoutOrder"]
      968 CALL                             R33 2 1
      969 SETTABLEKS                       R33 R32 K152 ["InvalidAnimationLabel"]
      971 GETUPVAL                         R34 11
      972 GETTABLEKS                       R33 R34 K64 ["createElement"]
      974 GETUPVAL                         R34 14
      975 DUPTABLE                         R35 K200 [{"LayoutOrder", "OnClick", "Style", "Size", "Text"}]
      976 LOADN                            R36 4
      977 SETTABLEKS                       R36 R35 K4 ["LayoutOrder"]
      979 SETTABLEKS                       R7 R35 K199 ["OnClick"]
      981 LOADK                            R36 K201 ["Round"]
      982 SETTABLEKS                       R36 R35 K179 ["Style"]
      984 GETIMPORT                        R36 K77 [UDim2.new]
      986 LOADN                            R37 0
      987 LOADN                            R38 140
      988 LOADN                            R39 0
      989 LOADN                            R40 40
      990 CALL                             R36 4 1
      991 SETTABLEKS                       R36 R35 K3 ["Size"]
      993 GETTABLEKS                       R36 R1 K20 ["Localization"]
      995 LOADK                            R38 K56 ["General"]
      996 LOADK                            R39 K141 ["SearchOptionsCancel"]
      997 NAMECALL                         R36 R36 K23 ["getText"]
      999 CALL                             R36 3 1
     1000 SETTABLEKS                       R36 R35 K87 ["Text"]
     1002 CALL                             R33 2 1
     1003 SETTABLEKS                       R33 R32 K115 ["CancelButton"]
     1005 GETUPVAL                         R34 15
     1006 CALL                             R34 0 1
     1007 JUMPIFNOT                        R34 ; [+107]
     1008 JUMPIF                           R21 ; [+106]
     1009 GETUPVAL                         R34 11
     1010 GETTABLEKS                       R33 R34 K64 ["createElement"]
     1012 GETUPVAL                         R35 9
     1013 GETTABLEKS                       R34 R35 K65 ["View"]
     1015 DUPTABLE                         R35 K202 [{"tag", "LayoutOrder", "Size"}]
     1016 LOADK                            R36 K203 ["size-full"]
     1017 SETTABLEKS                       R36 R35 K66 ["tag"]
     1019 LOADN                            R36 5
     1020 SETTABLEKS                       R36 R35 K4 ["LayoutOrder"]
     1022 GETIMPORT                        R36 K77 [UDim2.new]
     1024 LOADN                            R37 0
     1025 LOADN                            R38 140
     1026 LOADN                            R39 0
     1027 LOADN                            R40 40
     1028 CALL                             R36 4 1
     1029 SETTABLEKS                       R36 R35 K3 ["Size"]
     1031 DUPTABLE                         R36 K120 [{"DisabledButton", "HoverOverlay"}]
     1032 GETUPVAL                         R38 11
     1033 GETTABLEKS                       R37 R38 K64 ["createElement"]
     1035 GETUPVAL                         R38 14
     1036 DUPTABLE                         R39 K205 [{"Size", "OnClick", "Style", "StyleModifier", "Text"}]
     1037 GETIMPORT                        R40 K77 [UDim2.new]
     1039 LOADN                            R41 1
     1040 LOADN                            R42 0
     1041 LOADN                            R43 1
     1042 LOADN                            R44 0
     1043 CALL                             R40 4 1
     1044 SETTABLEKS                       R40 R39 K3 ["Size"]
     1046 DUPCLOSURE                       R40 K206 [PROTO_9]
     1047 SETTABLEKS                       R40 R39 K199 ["OnClick"]
     1049 LOADK                            R40 K207 ["RoundPrimary"]
     1050 SETTABLEKS                       R40 R39 K179 ["Style"]
     1052 GETUPVAL                         R41 16
     1053 GETTABLEKS                       R40 R41 K208 ["Disabled"]
     1055 SETTABLEKS                       R40 R39 K204 ["StyleModifier"]
     1057 SETTABLEKS                       R22 R39 K87 ["Text"]
     1059 CALL                             R37 2 1
     1060 SETTABLEKS                       R37 R36 K118 ["DisabledButton"]
     1062 GETTABLEKS                       R38 R1 K131 ["OnPublishButtonHover"]
     1064 JUMPIFNOT                        R38 ; [+45]
     1065 GETUPVAL                         R38 11
     1066 GETTABLEKS                       R37 R38 K64 ["createElement"]
     1068 LOADK                            R38 K132 ["Frame"]
     1069 NEWTABLE                         R39 8 0
     1071 GETIMPORT                        R40 K77 [UDim2.new]
     1073 LOADN                            R41 1
     1074 LOADN                            R42 0
     1075 LOADN                            R43 1
     1076 LOADN                            R44 0
     1077 CALL                             R40 4 1
     1078 SETTABLEKS                       R40 R39 K3 ["Size"]
     1080 GETIMPORT                        R40 K77 [UDim2.new]
     1082 LOADN                            R41 0
     1083 LOADN                            R42 0
     1084 LOADN                            R43 0
     1085 LOADN                            R44 0
     1086 CALL                             R40 4 1
     1087 SETTABLEKS                       R40 R39 K133 ["Position"]
     1089 LOADN                            R40 1
     1090 SETTABLEKS                       R40 R39 K134 ["BackgroundTransparency"]
     1092 GETUPVAL                         R42 11
     1093 GETTABLEKS                       R41 R42 K135 ["Event"]
     1095 GETTABLEKS                       R40 R41 K136 ["MouseEnter"]
     1097 NEWCLOSURE                       R41 P4
     1098 CAPTURE                          VAL R1
     1099 SETTABLE                         R41 R39 R40
     1100 GETUPVAL                         R42 11
     1101 GETTABLEKS                       R41 R42 K135 ["Event"]
     1103 GETTABLEKS                       R40 R41 K137 ["MouseLeave"]
     1105 NEWCLOSURE                       R41 P5
     1106 CAPTURE                          VAL R1
     1107 SETTABLE                         R41 R39 R40
     1108 CALL                             R37 2 1
     1109 JUMPIF                           R37 ; [+1]
     1110 LOADNIL                          R37
     1111 SETTABLEKS                       R37 R36 K119 ["HoverOverlay"]
     1113 CALL                             R33 3 1
     1114 JUMP                             ; [+37]
     1115 GETUPVAL                         R34 11
     1116 GETTABLEKS                       R33 R34 K64 ["createElement"]
     1118 GETUPVAL                         R34 14
     1119 DUPTABLE                         R35 K209 [{"LayoutOrder", "OnClick", "Style", "StyleModifier", "Size", "Text"}]
     1120 LOADN                            R36 5
     1121 SETTABLEKS                       R36 R35 K4 ["LayoutOrder"]
     1123 NEWCLOSURE                       R36 P6
     1124 CAPTURE                          REF R21
     1125 CAPTURE                          VAL R6
     1126 CAPTURE                          VAL R0
     1127 SETTABLEKS                       R36 R35 K199 ["OnClick"]
     1129 LOADK                            R36 K207 ["RoundPrimary"]
     1130 SETTABLEKS                       R36 R35 K179 ["Style"]
     1132 JUMPIF                           R21 ; [+4]
     1133 GETUPVAL                         R37 16
     1134 GETTABLEKS                       R36 R37 K208 ["Disabled"]
     1136 JUMPIF                           R36 ; [+1]
     1137 LOADNIL                          R36
     1138 SETTABLEKS                       R36 R35 K204 ["StyleModifier"]
     1140 GETIMPORT                        R36 K77 [UDim2.new]
     1142 LOADN                            R37 0
     1143 LOADN                            R38 140
     1144 LOADN                            R39 0
     1145 LOADN                            R40 40
     1146 CALL                             R36 4 1
     1147 SETTABLEKS                       R36 R35 K3 ["Size"]
     1149 SETTABLEKS                       R22 R35 K87 ["Text"]
     1151 CALL                             R33 2 1
     1152 SETTABLEKS                       R33 R32 K114 ["PublishButton"]
     1154 MOVE                             R33 R15
     1155 JUMPIFNOT                        R33 ; [+34]
     1156 GETUPVAL                         R34 11
     1157 GETTABLEKS                       R33 R34 K64 ["createElement"]
     1159 GETUPVAL                         R34 17
     1160 DUPTABLE                         R35 K210 [{"Size", "Text", "TextSize", "Font", "onActivated", "LayoutOrder"}]
     1161 GETIMPORT                        R36 K77 [UDim2.new]
     1163 LOADN                            R37 1
     1164 LOADN                            R38 184
     1165 LOADN                            R39 0
     1166 LOADN                            R40 20
     1167 CALL                             R36 4 1
     1168 SETTABLEKS                       R36 R35 K3 ["Size"]
     1170 SETTABLEKS                       R16 R35 K87 ["Text"]
     1172 GETUPVAL                         R37 13
     1173 GETTABLEKS                       R36 R37 K196 ["FONT_SIZE_MEDIUM"]
     1175 SETTABLEKS                       R36 R35 K189 ["TextSize"]
     1177 GETUPVAL                         R37 13
     1178 GETTABLEKS                       R36 R37 K193 ["FONT"]
     1180 SETTABLEKS                       R36 R35 K187 ["Font"]
     1182 GETTABLEKS                       R36 R0 K91 ["onFlowButtonActivated"]
     1184 SETTABLEKS                       R36 R35 K88 ["onActivated"]
     1186 LOADN                            R36 1
     1187 SETTABLEKS                       R36 R35 K4 ["LayoutOrder"]
     1189 CALL                             R33 2 1
     1190 SETTABLEKS                       R33 R32 K153 ["ToggleOverrideButton"]
     1192 CALL                             R29 3 -1
     1193 CLOSEUPVALS                      R21
     1194 RETURN                           R29 -1

PROTO_14:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K11 [{"currentTab", "instances", "screenFlowType", "assetTypeEnum", "isUploadFeeEnabled", "uploadFee", "canAffordUploadFee", "hasSubsequent", "isAvatarItemDialogFlowEnabled", "avatarAssetCurrentIndex", "avatarAssetTotalCount"}]
        6 GETTABLEKS                       R3 R0 K0 ["currentTab"]
        8 SETTABLEKS                       R3 R2 K0 ["currentTab"]
       10 GETTABLEKS                       R3 R0 K1 ["instances"]
       12 SETTABLEKS                       R3 R2 K1 ["instances"]
       14 GETTABLEKS                       R3 R0 K2 ["screenFlowType"]
       16 SETTABLEKS                       R3 R2 K2 ["screenFlowType"]
       18 GETTABLEKS                       R3 R0 K3 ["assetTypeEnum"]
       20 SETTABLEKS                       R3 R2 K3 ["assetTypeEnum"]
       22 GETTABLEKS                       R3 R0 K4 ["isUploadFeeEnabled"]
       24 SETTABLEKS                       R3 R2 K4 ["isUploadFeeEnabled"]
       26 GETTABLEKS                       R3 R0 K5 ["uploadFee"]
       28 SETTABLEKS                       R3 R2 K5 ["uploadFee"]
       30 GETTABLEKS                       R3 R0 K6 ["canAffordUploadFee"]
       32 SETTABLEKS                       R3 R2 K6 ["canAffordUploadFee"]
       34 GETTABLEKS                       R3 R0 K7 ["hasSubsequent"]
       36 SETTABLEKS                       R3 R2 K7 ["hasSubsequent"]
       38 GETUPVAL                         R4 0
       39 CALL                             R4 0 1
       40 JUMPIFNOT                        R4 ; [+3]
       41 GETTABLEKS                       R3 R0 K8 ["isAvatarItemDialogFlowEnabled"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R3
       45 SETTABLEKS                       R3 R2 K8 ["isAvatarItemDialogFlowEnabled"]
       47 GETTABLEKS                       R3 R0 K9 ["avatarAssetCurrentIndex"]
       49 SETTABLEKS                       R3 R2 K9 ["avatarAssetCurrentIndex"]
       51 GETTABLEKS                       R3 R0 K10 ["avatarAssetTotalCount"]
       53 SETTABLEKS                       R3 R2 K10 ["avatarAssetTotalCount"]
       55 GETTABLEKS                       R3 R0 K12 ["validateAnimationSucceeded"]
       57 SETTABLEKS                       R3 R2 K12 ["validateAnimationSucceeded"]
       59 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R1 K1 [{"toggleOverride"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["toggleOverride"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K2 ["validateAnimation"]
       11 RETURN                           R1 1

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
       20 GETTABLEKS                       R4 R1 K7 ["React"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["RoactRodux"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R6 K5 [require]
       30 GETTABLEKS                       R7 R1 K9 ["Framework"]
       32 CALL                             R6 1 1
       33 GETTABLEKS                       R5 R6 K10 ["ContextServices"]
       35 GETTABLEKS                       R6 R5 K11 ["withContext"]
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R10 R0 K12 ["Src"]
       41 GETTABLEKS                       R9 R10 K10 ["ContextServices"]
       43 GETTABLEKS                       R8 R9 K13 ["NetworkContext"]
       45 CALL                             R7 1 1
       46 GETTABLEKS                       R9 R0 K12 ["Src"]
       48 GETTABLEKS                       R8 R9 K14 ["Util"]
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R10 R8 K15 ["Constants"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K5 [require]
       57 GETTABLEKS                       R11 R8 K16 ["LayoutOrderIterator"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K5 [require]
       62 GETTABLEKS                       R12 R8 K17 ["ScreenSetup"]
       64 CALL                             R11 1 1
       65 GETIMPORT                        R12 K5 [require]
       67 GETTABLEKS                       R13 R8 K18 ["AssetConfigConstants"]
       69 CALL                             R12 1 1
       70 GETIMPORT                        R13 K5 [require]
       72 GETTABLEKS                       R14 R8 K19 ["AssetConfigUtil"]
       74 CALL                             R13 1 1
       75 GETIMPORT                        R15 K5 [require]
       77 GETTABLEKS                       R16 R1 K9 ["Framework"]
       79 CALL                             R15 1 1
       80 GETTABLEKS                       R14 R15 K14 ["Util"]
       82 GETIMPORT                        R17 K5 [require]
       84 GETTABLEKS                       R18 R1 K9 ["Framework"]
       86 CALL                             R17 1 1
       87 GETTABLEKS                       R16 R17 K14 ["Util"]
       89 GETTABLEKS                       R15 R16 K20 ["StyleModifier"]
       91 GETIMPORT                        R16 K5 [require]
       93 GETTABLEKS                       R17 R1 K9 ["Framework"]
       95 CALL                             R16 1 1
       96 GETTABLEKS                       R17 R16 K21 ["UI"]
       98 GETTABLEKS                       R18 R17 K22 ["Button"]
      100 GETTABLEKS                       R19 R17 K23 ["DEPRECATED_TextInput"]
      102 GETIMPORT                        R20 K5 [require]
      104 GETTABLEKS                       R23 R0 K12 ["Src"]
      106 GETTABLEKS                       R22 R23 K24 ["Types"]
      108 GETTABLEKS                       R21 R22 K25 ["ConfigTypes"]
      110 CALL                             R20 1 1
      111 GETTABLEKS                       R23 R0 K12 ["Src"]
      113 GETTABLEKS                       R22 R23 K26 ["Networking"]
      115 GETTABLEKS                       R21 R22 K27 ["Requests"]
      117 GETIMPORT                        R22 K5 [require]
      119 GETTABLEKS                       R23 R21 K28 ["ToggleOverrideRequest"]
      121 CALL                             R22 1 1
      122 GETIMPORT                        R23 K5 [require]
      124 GETTABLEKS                       R24 R21 K29 ["ValidateAnimationRequest"]
      126 CALL                             R23 1 1
      127 GETTABLEKS                       R26 R0 K12 ["Src"]
      129 GETTABLEKS                       R25 R26 K30 ["Components"]
      131 GETTABLEKS                       R24 R25 K31 ["AssetConfiguration"]
      133 GETIMPORT                        R25 K5 [require]
      135 GETTABLEKS                       R26 R24 K32 ["LinkButton"]
      137 CALL                             R25 1 1
      138 GETIMPORT                        R26 K5 [require]
      140 GETTABLEKS                       R27 R1 K33 ["Foundation"]
      142 CALL                             R26 1 1
      143 GETTABLEKS                       R27 R26 K34 ["Enums"]
      145 GETIMPORT                        R28 K5 [require]
      147 GETTABLEKS                       R31 R0 K12 ["Src"]
      149 GETTABLEKS                       R30 R31 K35 ["Flags"]
      151 GETTABLEKS                       R29 R30 K36 ["getFFlagEnableUploadingMakeup"]
      153 CALL                             R28 1 1
      154 GETIMPORT                        R29 K5 [require]
      156 GETTABLEKS                       R32 R0 K12 ["Src"]
      158 GETTABLEKS                       R31 R32 K35 ["Flags"]
      160 GETTABLEKS                       R30 R31 K37 ["getFFlagCheckAvatarAssetPrivacy"]
      162 CALL                             R29 1 1
      163 GETIMPORT                        R30 K5 [require]
      165 GETTABLEKS                       R33 R0 K12 ["Src"]
      167 GETTABLEKS                       R32 R33 K35 ["Flags"]
      169 GETTABLEKS                       R31 R32 K38 ["getFFlagAvatarPreviewerUpdateDialogUI"]
      171 CALL                             R30 1 1
      172 GETTABLEKS                       R31 R2 K39 ["Component"]
      174 LOADK                            R33 K40 ["AssetConfigFooter"]
      175 NAMECALL                         R31 R31 K41 ["extend"]
      177 CALL                             R31 2 1
      178 GETIMPORT                        R32 K43 [game]
      180 LOADK                            R34 K44 ["AssetConfigFixBadIdVerifyState"]
      181 NAMECALL                         R32 R32 K45 ["GetFastFlag"]
      183 CALL                             R32 2 1
      184 GETIMPORT                        R33 K48 [utf8.char]
      186 LOADK                            R34 K49 [57346]
      187 CALL                             R33 1 1
      188 DUPCLOSURE                       R34 K50 [PROTO_3]
      189 SETTABLEKS                       R34 R31 K51 ["init"]
      191 DUPCLOSURE                       R34 K52 [PROTO_4]
      192 CAPTURE                          VAL R32
      193 CAPTURE                          VAL R14
      194 SETTABLEKS                       R34 R31 K53 ["shouldUpdate"]
      196 DUPCLOSURE                       R34 K54 [PROTO_5]
      197 CAPTURE                          VAL R33
      198 SETTABLEKS                       R34 R31 K55 ["getUploadFeeWithRobuxIcon"]
      200 DUPCLOSURE                       R34 K56 [PROTO_13]
      201 CAPTURE                          VAL R32
      202 CAPTURE                          VAL R11
      203 CAPTURE                          VAL R20
      204 CAPTURE                          VAL R12
      205 CAPTURE                          VAL R13
      206 CAPTURE                          VAL R30
      207 CAPTURE                          VAL R10
      208 CAPTURE                          VAL R33
      209 CAPTURE                          VAL R3
      210 CAPTURE                          VAL R26
      211 CAPTURE                          VAL R27
      212 CAPTURE                          VAL R2
      213 CAPTURE                          VAL R19
      214 CAPTURE                          VAL R9
      215 CAPTURE                          VAL R18
      216 CAPTURE                          VAL R28
      217 CAPTURE                          VAL R15
      218 CAPTURE                          VAL R25
      219 SETTABLEKS                       R34 R31 K57 ["render"]
      221 DUPCLOSURE                       R34 K58 [PROTO_14]
      222 CAPTURE                          VAL R29
      223 DUPCLOSURE                       R35 K59 [PROTO_17]
      224 CAPTURE                          VAL R22
      225 CAPTURE                          VAL R23
      226 MOVE                             R36 R6
      227 DUPTABLE                         R37 K63 [{"Stylizer", "Localization", "Network"}]
      228 GETTABLEKS                       R38 R5 K60 ["Stylizer"]
      230 SETTABLEKS                       R38 R37 K60 ["Stylizer"]
      232 GETTABLEKS                       R38 R5 K61 ["Localization"]
      234 SETTABLEKS                       R38 R37 K61 ["Localization"]
      236 SETTABLEKS                       R7 R37 K62 ["Network"]
      238 CALL                             R36 1 1
      239 MOVE                             R37 R31
      240 CALL                             R36 1 1
      241 MOVE                             R31 R36
      242 GETTABLEKS                       R36 R4 K64 ["connect"]
      244 MOVE                             R37 R34
      245 MOVE                             R38 R35
      246 CALL                             R36 2 1
      247 MOVE                             R37 R31
      248 CALL                             R36 1 -1
      249 RETURN                           R36 -1
