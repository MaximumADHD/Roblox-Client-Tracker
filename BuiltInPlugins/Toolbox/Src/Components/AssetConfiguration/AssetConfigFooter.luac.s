PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleOverride"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["props"]
        6 GETTABLEKS                       R1 R1 K2 ["currentTab"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["normalizeAnimationAssetIdInput"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 MOVE                             R0 R1
        9 JUMP                             ; [+7]
       10 GETIMPORT                        R1 K3 [string.gsub]
       12 MOVE                             R2 R0
       13 LOADK                            R3 K4 ["[\n\r]"]
       14 LOADK                            R4 K5 [" "]
       15 CALL                             R1 3 1
       16 MOVE                             R0 R1
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K6 ["props"]
       20 GETTABLEKS                       R1 R1 K7 ["validateAnimation"]
       22 JUMPIFNOT                        R1 ; [+18]
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K6 ["props"]
       26 GETTABLEKS                       R1 R1 K7 ["validateAnimation"]
       28 DUPTABLE                         R2 K10 [{"networkInterface", "assetId"}]
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R3 R3 K6 ["props"]
       32 GETTABLEKS                       R3 R3 K11 ["Network"]
       34 GETTABLEKS                       R3 R3 K8 ["networkInterface"]
       36 SETTABLEKS                       R3 R2 K8 ["networkInterface"]
       38 SETTABLEKS                       R0 R2 K9 ["assetId"]
       40 CALL                             R1 1 0
       41 GETUPVAL                         R1 2
       42 DUPTABLE                         R3 K13 [{"animationId"}]
       43 SETTABLEKS                       R0 R3 K12 ["animationId"]
       45 NAMECALL                         R1 R1 K14 ["setState"]
       47 CALL                             R1 2 0
       48 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["TryPublish"]
        5 JUMPIFNOT                        R0 ; [+11]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["TryPublish"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K2 ["state"]
       14 GETTABLEKS                       R1 R1 K3 ["animationId"]
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
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R2 R0 K7 ["onAnimationIDChanged"]
       23 NEWCLOSURE                       R2 P2
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R2 R0 K8 ["onPublishActivated"]
       27 RETURN                           R0 0

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
       41 GETUPVAL                         R3 1
       42 GETTABLEKS                       R3 R3 K8 ["deepEqual"]
       44 MOVE                             R4 R1
       45 GETTABLEKS                       R5 R0 K9 ["props"]
       47 CALL                             R3 2 1
       48 JUMPIFNOT                        R3 ; [+2]
       49 LOADB                            R3 0
       50 RETURN                           R3 1
       51 LOADB                            R3 1
       52 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["Localization"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnPublishButtonHover"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnPublishButtonHover"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnPublishButtonHover"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnPublishButtonHover"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["state"]
        6 GETTABLEKS                       R1 R1 K1 ["animationId"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["Stylizer"]
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
       40 GETUPVAL                         R15 1
       41 GETTABLEKS                       R15 R15 K16 ["queryParam"]
       43 MOVE                             R16 R10
       44 MOVE                             R17 R11
       45 GETUPVAL                         R18 1
       46 GETTABLEKS                       R18 R18 K17 ["keys"]
       48 GETTABLEKS                       R18 R18 K18 ["SHOW_OVERRIDE_BUTTON"]
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
       87 GETUPVAL                         R19 3
       88 GETTABLEKS                       R19 R19 K29 ["FLOW_TYPE"]
       90 GETTABLEKS                       R19 R19 K30 ["DOWNLOAD_FLOW"]
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
      144 GETUPVAL                         R23 4
      145 GETTABLEKS                       R23 R23 K40 ["isCatalogAsset"]
      147 MOVE                             R24 R11
      148 CALL                             R23 1 1
      149 JUMPIF                           R23 ; [+5]
      150 GETUPVAL                         R23 4
      151 GETTABLEKS                       R23 R23 K41 ["isUGCBundleType"]
      153 MOVE                             R24 R11
      154 CALL                             R23 1 1
      155 GETUPVAL                         R24 3
      156 GETTABLEKS                       R24 R24 K29 ["FLOW_TYPE"]
      158 GETTABLEKS                       R24 R24 K42 ["UPLOAD_FLOW"]
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
      269 JUMPIFNOT                        R29 ; [+598]
      270 GETUPVAL                         R29 6
      271 GETTABLEKS                       R29 R29 K63 ["new"]
      273 CALL                             R29 0 1
      274 GETUPVAL                         R31 3
      275 GETTABLEKS                       R31 R31 K29 ["FLOW_TYPE"]
      277 GETTABLEKS                       R31 R31 K42 ["UPLOAD_FLOW"]
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
      303 GETUPVAL                         R31 8
      304 GETTABLEKS                       R31 R31 K64 ["createElement"]
      306 GETUPVAL                         R32 9
      307 GETTABLEKS                       R32 R32 K65 ["View"]
      309 DUPTABLE                         R33 K67 [{"tag", "Size", "LayoutOrder"}]
      310 LOADK                            R34 K68 ["row align-y-center gap-small flex-x-between padding-x-medium"]
      311 SETTABLEKS                       R34 R33 K66 ["tag"]
      313 SETTABLEKS                       R4 R33 K3 ["Size"]
      315 SETTABLEKS                       R5 R33 K4 ["LayoutOrder"]
      317 DUPTABLE                         R34 K72 [{"LeftContent", "AnimationImportRow", "ButtonsSection"}]
      318 GETUPVAL                         R35 8
      319 GETTABLEKS                       R35 R35 K64 ["createElement"]
      321 GETUPVAL                         R36 9
      322 GETTABLEKS                       R36 R36 K65 ["View"]
      324 DUPTABLE                         R37 K74 [{"tag", "LayoutOrder", "Size", "AutomaticSize"}]
      325 LOADK                            R38 K75 ["row align-y-center gap-small fill min-width-0"]
      326 SETTABLEKS                       R38 R37 K66 ["tag"]
      328 NAMECALL                         R38 R29 K76 ["getNextOrder"]
      330 CALL                             R38 1 1
      331 SETTABLEKS                       R38 R37 K4 ["LayoutOrder"]
      333 GETIMPORT                        R38 K78 [UDim2.new]
      335 LOADN                            R39 0
      336 LOADN                            R40 0
      337 LOADN                            R41 1
      338 LOADN                            R42 0
      339 CALL                             R38 4 1
      340 SETTABLEKS                       R38 R37 K3 ["Size"]
      342 GETIMPORT                        R38 K80 [Enum.AutomaticSize.X]
      344 SETTABLEKS                       R38 R37 K73 ["AutomaticSize"]
      346 DUPTABLE                         R38 K83 [{"AnimationOverride", "AssetProgressRow"}]
      347 JUMPIFNOT                        R15 ; [+32]
      348 GETUPVAL                         R39 8
      349 GETTABLEKS                       R39 R39 K64 ["createElement"]
      351 GETUPVAL                         R40 9
      352 GETTABLEKS                       R40 R40 K65 ["View"]
      354 DUPTABLE                         R41 K84 [{"tag"}]
      355 LOADK                            R42 K85 ["fill auto-y align-y-center min-width-0"]
      356 SETTABLEKS                       R42 R41 K66 ["tag"]
      358 DUPTABLE                         R42 K87 [{"OverrideLink"}]
      359 GETUPVAL                         R43 8
      360 GETTABLEKS                       R43 R43 K64 ["createElement"]
      362 GETUPVAL                         R44 9
      363 GETTABLEKS                       R44 R44 K88 ["Text"]
      365 DUPTABLE                         R45 K90 [{"tag", "Text", "onActivated"}]
      366 LOADK                            R46 K91 ["text-align-x-left text-align-y-center content-link text-body-small text-wrap auto-xy"]
      367 SETTABLEKS                       R46 R45 K66 ["tag"]
      369 SETTABLEKS                       R16 R45 K88 ["Text"]
      371 GETTABLEKS                       R46 R0 K92 ["onFlowButtonActivated"]
      373 SETTABLEKS                       R46 R45 K89 ["onActivated"]
      375 CALL                             R43 2 1
      376 SETTABLEKS                       R43 R42 K86 ["OverrideLink"]
      378 CALL                             R39 3 1
      379 JUMPIF                           R39 ; [+1]
      380 LOADNIL                          R39
      381 SETTABLEKS                       R39 R38 K81 ["AnimationOverride"]
      383 JUMPIFNOT                        R24 ; [+77]
      384 GETUPVAL                         R39 8
      385 GETTABLEKS                       R39 R39 K64 ["createElement"]
      387 GETUPVAL                         R40 9
      388 GETTABLEKS                       R40 R40 K65 ["View"]
      390 DUPTABLE                         R41 K84 [{"tag"}]
      391 LOADK                            R42 K93 ["row align-y-center shrink-0"]
      392 SETTABLEKS                       R42 R41 K66 ["tag"]
      394 DUPTABLE                         R42 K96 [{"AssetProgressLabel", "AssetProgressBar"}]
      395 GETUPVAL                         R43 8
      396 GETTABLEKS                       R43 R43 K64 ["createElement"]
      398 GETUPVAL                         R44 9
      399 GETTABLEKS                       R44 R44 K88 ["Text"]
      401 DUPTABLE                         R45 K97 [{"tag", "Text", "Size", "LayoutOrder"}]
      402 LOADK                            R46 K98 ["text-title-small bold content-emphasis auto-y"]
      403 SETTABLEKS                       R46 R45 K66 ["tag"]
      405 SETTABLEKS                       R28 R45 K88 ["Text"]
      407 GETIMPORT                        R46 K78 [UDim2.new]
      409 LOADN                            R47 0
      410 LOADN                            R48 100
      411 LOADN                            R49 1
      412 LOADN                            R50 0
      413 CALL                             R46 4 1
      414 SETTABLEKS                       R46 R45 K3 ["Size"]
      416 LOADN                            R46 1
      417 SETTABLEKS                       R46 R45 K4 ["LayoutOrder"]
      419 CALL                             R43 2 1
      420 SETTABLEKS                       R43 R42 K94 ["AssetProgressLabel"]
      422 GETUPVAL                         R43 8
      423 GETTABLEKS                       R43 R43 K64 ["createElement"]
      425 GETUPVAL                         R44 9
      426 GETTABLEKS                       R44 R44 K99 ["Progress"]
      428 DUPTABLE                         R45 K104 [{"value", "size", "shape", "width", "LayoutOrder"}]
      429 ORK                              R46 R25 K105 [0]
      430 SETTABLEKS                       R46 R45 K100 ["value"]
      432 GETUPVAL                         R46 10
      433 GETTABLEKS                       R46 R46 K106 ["ProgressSize"]
      435 GETTABLEKS                       R46 R46 K107 ["Medium"]
      437 SETTABLEKS                       R46 R45 K101 ["size"]
      439 GETUPVAL                         R46 10
      440 GETTABLEKS                       R46 R46 K108 ["ProgressShape"]
      442 GETTABLEKS                       R46 R46 K109 ["Bar"]
      444 SETTABLEKS                       R46 R45 K102 ["shape"]
      446 GETIMPORT                        R46 K111 [UDim.new]
      448 LOADN                            R47 0
      449 LOADN                            R48 220
      450 CALL                             R46 2 1
      451 SETTABLEKS                       R46 R45 K103 ["width"]
      453 LOADN                            R46 2
      454 SETTABLEKS                       R46 R45 K4 ["LayoutOrder"]
      456 CALL                             R43 2 1
      457 SETTABLEKS                       R43 R42 K95 ["AssetProgressBar"]
      459 CALL                             R39 3 1
      460 JUMPIF                           R39 ; [+1]
      461 LOADNIL                          R39
      462 SETTABLEKS                       R39 R38 K82 ["AssetProgressRow"]
      464 CALL                             R35 3 1
      465 JUMPIF                           R35 ; [+16]
      466 GETUPVAL                         R35 8
      467 GETTABLEKS                       R35 R35 K64 ["createElement"]
      469 GETUPVAL                         R36 9
      470 GETTABLEKS                       R36 R36 K65 ["View"]
      472 DUPTABLE                         R37 K112 [{"tag", "LayoutOrder"}]
      473 LOADK                            R38 K113 ["size-0-0"]
      474 SETTABLEKS                       R38 R37 K66 ["tag"]
      476 NAMECALL                         R38 R29 K76 ["getNextOrder"]
      478 CALL                             R38 1 1
      479 SETTABLEKS                       R38 R37 K4 ["LayoutOrder"]
      481 CALL                             R35 2 1
      482 SETTABLEKS                       R35 R34 K69 ["LeftContent"]
      484 JUMPIFNOT                        R18 ; [+120]
      485 GETUPVAL                         R35 8
      486 GETTABLEKS                       R35 R35 K64 ["createElement"]
      488 GETUPVAL                         R36 9
      489 GETTABLEKS                       R36 R36 K65 ["View"]
      491 DUPTABLE                         R37 K114 [{"tag", "LayoutOrder", "Size"}]
      492 LOADK                            R38 K115 ["row align-y-center gap-small shrink-0 auto-x"]
      493 SETTABLEKS                       R38 R37 K66 ["tag"]
      495 NAMECALL                         R38 R29 K76 ["getNextOrder"]
      497 CALL                             R38 1 1
      498 SETTABLEKS                       R38 R37 K4 ["LayoutOrder"]
      500 GETIMPORT                        R38 K78 [UDim2.new]
      502 LOADN                            R39 0
      503 LOADN                            R40 0
      504 LOADN                            R41 1
      505 LOADN                            R42 0
      506 CALL                             R38 4 1
      507 SETTABLEKS                       R38 R37 K3 ["Size"]
      509 DUPTABLE                         R38 K118 [{"InvalidAnimationLabel", "AnimationIdInput"}]
      510 JUMPIF                           R14 ; [+33]
      511 GETUPVAL                         R39 8
      512 GETTABLEKS                       R39 R39 K64 ["createElement"]
      514 GETUPVAL                         R40 9
      515 GETTABLEKS                       R40 R40 K88 ["Text"]
      517 DUPTABLE                         R41 K97 [{"tag", "Text", "Size", "LayoutOrder"}]
      518 LOADK                            R42 K119 ["text-caption-small content-alert shrink-0 text-align-y-center"]
      519 SETTABLEKS                       R42 R41 K66 ["tag"]
      521 GETTABLEKS                       R42 R1 K20 ["Localization"]
      523 LOADK                            R44 K120 ["AssetConfigAnimation"]
      524 LOADK                            R45 K121 ["InvalidAnimationID"]
      525 NAMECALL                         R42 R42 K23 ["getText"]
      527 CALL                             R42 3 1
      528 SETTABLEKS                       R42 R41 K88 ["Text"]
      530 GETIMPORT                        R42 K78 [UDim2.new]
      532 LOADN                            R43 0
      533 LOADN                            R44 96
      534 LOADN                            R45 1
      535 LOADN                            R46 0
      536 CALL                             R42 4 1
      537 SETTABLEKS                       R42 R41 K3 ["Size"]
      539 LOADN                            R42 1
      540 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      542 CALL                             R39 2 1
      543 JUMPIF                           R39 ; [+1]
      544 LOADNIL                          R39
      545 SETTABLEKS                       R39 R38 K116 ["InvalidAnimationLabel"]
      547 GETUPVAL                         R39 8
      548 GETTABLEKS                       R39 R39 K64 ["createElement"]
      550 GETUPVAL                         R40 9
      551 GETTABLEKS                       R40 R40 K122 ["TextInput"]
      553 DUPTABLE                         R41 K128 [{"LayoutOrder", "text", "onChanged", "label", "placeholder", "hasError", "size", "width"}]
      554 LOADN                            R42 2
      555 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      557 JUMPIFEQKNIL                     R19 ; [+7]
      559 FASTCALL1                        TOSTRING R19 ; [+3]
      560 MOVE                             R43 R19
      561 GETIMPORT                        R42 K62 [tostring]
      563 CALL                             R42 1 1
      564 JUMP                             ; [+1]
      565 LOADK                            R42 K14 [""]
      566 SETTABLEKS                       R42 R41 K123 ["text"]
      568 GETTABLEKS                       R42 R0 K129 ["onAnimationIDChanged"]
      570 SETTABLEKS                       R42 R41 K124 ["onChanged"]
      572 LOADK                            R42 K14 [""]
      573 SETTABLEKS                       R42 R41 K125 ["label"]
      575 GETTABLEKS                       R42 R1 K20 ["Localization"]
      577 LOADK                            R44 K120 ["AssetConfigAnimation"]
      578 LOADK                            R45 K130 ["AnimationID"]
      579 NAMECALL                         R42 R42 K23 ["getText"]
      581 CALL                             R42 3 1
      582 SETTABLEKS                       R42 R41 K126 ["placeholder"]
      584 SETTABLEKS                       R20 R41 K127 ["hasError"]
      586 GETUPVAL                         R42 10
      587 GETTABLEKS                       R42 R42 K131 ["InputSize"]
      589 GETTABLEKS                       R42 R42 K132 ["Small"]
      591 SETTABLEKS                       R42 R41 K101 ["size"]
      593 GETIMPORT                        R42 K111 [UDim.new]
      595 LOADN                            R43 0
      596 LOADN                            R44 160
      597 CALL                             R42 2 1
      598 SETTABLEKS                       R42 R41 K103 ["width"]
      600 CALL                             R39 2 1
      601 SETTABLEKS                       R39 R38 K117 ["AnimationIdInput"]
      603 CALL                             R35 3 1
      604 JUMPIF                           R35 ; [+1]
      605 LOADNIL                          R35
      606 SETTABLEKS                       R35 R34 K70 ["AnimationImportRow"]
      608 GETUPVAL                         R35 8
      609 GETTABLEKS                       R35 R35 K64 ["createElement"]
      611 GETUPVAL                         R36 9
      612 GETTABLEKS                       R36 R36 K65 ["View"]
      614 DUPTABLE                         R37 K112 [{"tag", "LayoutOrder"}]
      615 LOADK                            R38 K133 ["row align-y-center align-x-right gap-small auto-xy"]
      616 SETTABLEKS                       R38 R37 K66 ["tag"]
      618 NAMECALL                         R38 R29 K76 ["getNextOrder"]
      620 CALL                             R38 1 1
      621 SETTABLEKS                       R38 R37 K4 ["LayoutOrder"]
      623 DUPTABLE                         R38 K136 [{"PublishButton", "CancelButton"}]
      624 JUMPIF                           R21 ; [+111]
      625 GETUPVAL                         R39 8
      626 GETTABLEKS                       R39 R39 K64 ["createElement"]
      628 GETUPVAL                         R40 9
      629 GETTABLEKS                       R40 R40 K65 ["View"]
      631 DUPTABLE                         R41 K137 [{"Size", "AutomaticSize", "LayoutOrder"}]
      632 GETIMPORT                        R42 K78 [UDim2.new]
      634 LOADN                            R43 0
      635 LOADN                            R44 0
      636 LOADN                            R45 0
      637 LOADN                            R46 40
      638 CALL                             R42 4 1
      639 SETTABLEKS                       R42 R41 K3 ["Size"]
      641 GETIMPORT                        R42 K80 [Enum.AutomaticSize.X]
      643 SETTABLEKS                       R42 R41 K73 ["AutomaticSize"]
      645 NAMECALL                         R42 R29 K76 ["getNextOrder"]
      647 CALL                             R42 1 1
      648 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      650 DUPTABLE                         R42 K140 [{"DisabledButton", "HoverOverlay"}]
      651 GETUPVAL                         R43 8
      652 GETTABLEKS                       R43 R43 K64 ["createElement"]
      654 GETUPVAL                         R44 9
      655 GETTABLEKS                       R44 R44 K141 ["Button"]
      657 DUPTABLE                         R45 K144 [{"text", "variant", "onActivated", "isDisabled", "size"}]
      658 SETTABLEKS                       R30 R45 K123 ["text"]
      660 GETUPVAL                         R46 10
      661 GETTABLEKS                       R46 R46 K145 ["ButtonVariant"]
      663 GETTABLEKS                       R46 R46 K146 ["Emphasis"]
      665 SETTABLEKS                       R46 R45 K142 ["variant"]
      667 DUPCLOSURE                       R46 K147 [PROTO_6]
      668 SETTABLEKS                       R46 R45 K89 ["onActivated"]
      670 LOADB                            R46 1
      671 SETTABLEKS                       R46 R45 K143 ["isDisabled"]
      673 GETUPVAL                         R46 10
      674 GETTABLEKS                       R46 R46 K131 ["InputSize"]
      676 GETTABLEKS                       R46 R46 K132 ["Small"]
      678 SETTABLEKS                       R46 R45 K101 ["size"]
      680 CALL                             R43 2 1
      681 SETTABLEKS                       R43 R42 K138 ["DisabledButton"]
      683 GETTABLEKS                       R44 R1 K148 ["OnPublishButtonHover"]
      685 JUMPIFNOT                        R44 ; [+45]
      686 GETUPVAL                         R43 8
      687 GETTABLEKS                       R43 R43 K64 ["createElement"]
      689 LOADK                            R44 K149 ["Frame"]
      690 NEWTABLE                         R45 8 0
      692 GETIMPORT                        R46 K78 [UDim2.new]
      694 LOADN                            R47 1
      695 LOADN                            R48 0
      696 LOADN                            R49 1
      697 LOADN                            R50 0
      698 CALL                             R46 4 1
      699 SETTABLEKS                       R46 R45 K3 ["Size"]
      701 GETIMPORT                        R46 K78 [UDim2.new]
      703 LOADN                            R47 0
      704 LOADN                            R48 0
      705 LOADN                            R49 0
      706 LOADN                            R50 0
      707 CALL                             R46 4 1
      708 SETTABLEKS                       R46 R45 K150 ["Position"]
      710 LOADN                            R46 1
      711 SETTABLEKS                       R46 R45 K151 ["BackgroundTransparency"]
      713 GETUPVAL                         R46 11
      714 GETTABLEKS                       R46 R46 K152 ["Event"]
      716 GETTABLEKS                       R46 R46 K153 ["MouseEnter"]
      718 NEWCLOSURE                       R47 P1
      719 CAPTURE                          VAL R1
      720 SETTABLE                         R47 R45 R46
      721 GETUPVAL                         R46 11
      722 GETTABLEKS                       R46 R46 K152 ["Event"]
      724 GETTABLEKS                       R46 R46 K154 ["MouseLeave"]
      726 NEWCLOSURE                       R47 P2
      727 CAPTURE                          VAL R1
      728 SETTABLE                         R47 R45 R46
      729 CALL                             R43 2 1
      730 JUMPIF                           R43 ; [+1]
      731 LOADNIL                          R43
      732 SETTABLEKS                       R43 R42 K139 ["HoverOverlay"]
      734 CALL                             R39 3 1
      735 JUMP                             ; [+60]
      736 GETUPVAL                         R39 8
      737 GETTABLEKS                       R39 R39 K64 ["createElement"]
      739 GETUPVAL                         R40 9
      740 GETTABLEKS                       R40 R40 K65 ["View"]
      742 DUPTABLE                         R41 K137 [{"Size", "AutomaticSize", "LayoutOrder"}]
      743 GETIMPORT                        R42 K78 [UDim2.new]
      745 LOADN                            R43 0
      746 LOADN                            R44 0
      747 LOADN                            R45 0
      748 LOADN                            R46 40
      749 CALL                             R42 4 1
      750 SETTABLEKS                       R42 R41 K3 ["Size"]
      752 GETIMPORT                        R42 K80 [Enum.AutomaticSize.X]
      754 SETTABLEKS                       R42 R41 K73 ["AutomaticSize"]
      756 NAMECALL                         R42 R29 K76 ["getNextOrder"]
      758 CALL                             R42 1 1
      759 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      761 DUPTABLE                         R42 K155 [{"Button"}]
      762 GETUPVAL                         R43 8
      763 GETTABLEKS                       R43 R43 K64 ["createElement"]
      765 GETUPVAL                         R44 9
      766 GETTABLEKS                       R44 R44 K141 ["Button"]
      768 DUPTABLE                         R45 K144 [{"text", "variant", "onActivated", "isDisabled", "size"}]
      769 SETTABLEKS                       R30 R45 K123 ["text"]
      771 GETUPVAL                         R46 10
      772 GETTABLEKS                       R46 R46 K145 ["ButtonVariant"]
      774 GETTABLEKS                       R46 R46 K146 ["Emphasis"]
      776 SETTABLEKS                       R46 R45 K142 ["variant"]
      778 GETTABLEKS                       R46 R0 K156 ["onPublishActivated"]
      780 SETTABLEKS                       R46 R45 K89 ["onActivated"]
      782 NOT                              R46 R21
      783 SETTABLEKS                       R46 R45 K143 ["isDisabled"]
      785 GETUPVAL                         R46 10
      786 GETTABLEKS                       R46 R46 K131 ["InputSize"]
      788 GETTABLEKS                       R46 R46 K132 ["Small"]
      790 SETTABLEKS                       R46 R45 K101 ["size"]
      792 CALL                             R43 2 1
      793 SETTABLEKS                       R43 R42 K141 ["Button"]
      795 CALL                             R39 3 1
      796 SETTABLEKS                       R39 R38 K134 ["PublishButton"]
      798 GETUPVAL                         R39 8
      799 GETTABLEKS                       R39 R39 K64 ["createElement"]
      801 GETUPVAL                         R40 9
      802 GETTABLEKS                       R40 R40 K65 ["View"]
      804 DUPTABLE                         R41 K137 [{"Size", "AutomaticSize", "LayoutOrder"}]
      805 GETIMPORT                        R42 K78 [UDim2.new]
      807 LOADN                            R43 0
      808 LOADN                            R44 0
      809 LOADN                            R45 0
      810 LOADN                            R46 40
      811 CALL                             R42 4 1
      812 SETTABLEKS                       R42 R41 K3 ["Size"]
      814 GETIMPORT                        R42 K80 [Enum.AutomaticSize.X]
      816 SETTABLEKS                       R42 R41 K73 ["AutomaticSize"]
      818 NAMECALL                         R42 R29 K76 ["getNextOrder"]
      820 CALL                             R42 1 1
      821 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      823 DUPTABLE                         R42 K155 [{"Button"}]
      824 GETUPVAL                         R43 8
      825 GETTABLEKS                       R43 R43 K64 ["createElement"]
      827 GETUPVAL                         R44 9
      828 GETTABLEKS                       R44 R44 K141 ["Button"]
      830 DUPTABLE                         R45 K157 [{"text", "variant", "onActivated", "size"}]
      831 GETTABLEKS                       R46 R1 K20 ["Localization"]
      833 LOADK                            R48 K56 ["General"]
      834 LOADK                            R49 K158 ["SearchOptionsCancel"]
      835 NAMECALL                         R46 R46 K23 ["getText"]
      837 CALL                             R46 3 1
      838 SETTABLEKS                       R46 R45 K123 ["text"]
      840 GETUPVAL                         R46 10
      841 GETTABLEKS                       R46 R46 K145 ["ButtonVariant"]
      843 GETTABLEKS                       R46 R46 K159 ["Standard"]
      845 SETTABLEKS                       R46 R45 K142 ["variant"]
      847 SETTABLEKS                       R7 R45 K89 ["onActivated"]
      849 GETUPVAL                         R46 10
      850 GETTABLEKS                       R46 R46 K131 ["InputSize"]
      852 GETTABLEKS                       R46 R46 K132 ["Small"]
      854 SETTABLEKS                       R46 R45 K101 ["size"]
      856 CALL                             R43 2 1
      857 SETTABLEKS                       R43 R42 K141 ["Button"]
      859 CALL                             R39 3 1
      860 SETTABLEKS                       R39 R38 K135 ["CancelButton"]
      862 CALL                             R35 3 1
      863 SETTABLEKS                       R35 R34 K71 ["ButtonsSection"]
      865 CALL                             R31 3 -1
      866 CLOSEUPVALS                      R21
      867 RETURN                           R31 -1
      868 GETUPVAL                         R29 11
      869 GETTABLEKS                       R29 R29 K64 ["createElement"]
      871 LOADK                            R30 K149 ["Frame"]
      872 DUPTABLE                         R31 K163 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderColor3", "BorderSizePixel", "LayoutOrder"}]
      873 SETTABLEKS                       R4 R31 K3 ["Size"]
      875 LOADN                            R32 0
      876 SETTABLEKS                       R32 R31 K151 ["BackgroundTransparency"]
      878 GETTABLEKS                       R32 R8 K164 ["backgroundColor"]
      880 SETTABLEKS                       R32 R31 K160 ["BackgroundColor3"]
      882 GETTABLEKS                       R32 R8 K165 ["borderColor"]
      884 SETTABLEKS                       R32 R31 K161 ["BorderColor3"]
      886 LOADN                            R32 1
      887 SETTABLEKS                       R32 R31 K162 ["BorderSizePixel"]
      889 SETTABLEKS                       R5 R31 K4 ["LayoutOrder"]
      891 DUPTABLE                         R32 K170 [{"UIPadding", "UIListLayout", "AnimationIdBox", "InvalidAnimationLabel", "CancelButton", "PublishButton", "ToggleOverrideButton"}]
      892 GETUPVAL                         R33 11
      893 GETTABLEKS                       R33 R33 K64 ["createElement"]
      895 LOADK                            R34 K166 ["UIPadding"]
      896 DUPTABLE                         R35 K175 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      897 GETIMPORT                        R36 K111 [UDim.new]
      899 LOADN                            R37 0
      900 LOADN                            R38 0
      901 CALL                             R36 2 1
      902 SETTABLEKS                       R36 R35 K171 ["PaddingBottom"]
      904 GETIMPORT                        R36 K111 [UDim.new]
      906 LOADN                            R37 0
      907 LOADN                            R38 24
      908 CALL                             R36 2 1
      909 SETTABLEKS                       R36 R35 K172 ["PaddingLeft"]
      911 GETIMPORT                        R36 K111 [UDim.new]
      913 LOADN                            R37 0
      914 LOADN                            R38 24
      915 CALL                             R36 2 1
      916 SETTABLEKS                       R36 R35 K173 ["PaddingRight"]
      918 GETIMPORT                        R36 K111 [UDim.new]
      920 LOADN                            R37 0
      921 LOADN                            R38 0
      922 CALL                             R36 2 1
      923 SETTABLEKS                       R36 R35 K174 ["PaddingTop"]
      925 CALL                             R33 2 1
      926 SETTABLEKS                       R33 R32 K166 ["UIPadding"]
      928 GETUPVAL                         R33 11
      929 GETTABLEKS                       R33 R33 K64 ["createElement"]
      931 LOADK                            R34 K167 ["UIListLayout"]
      932 DUPTABLE                         R35 K181 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      933 GETIMPORT                        R36 K183 [Enum.FillDirection.Horizontal]
      935 SETTABLEKS                       R36 R35 K176 ["FillDirection"]
      937 GETIMPORT                        R36 K185 [Enum.HorizontalAlignment.Right]
      939 SETTABLEKS                       R36 R35 K177 ["HorizontalAlignment"]
      941 GETIMPORT                        R36 K187 [Enum.VerticalAlignment.Center]
      943 SETTABLEKS                       R36 R35 K178 ["VerticalAlignment"]
      945 GETIMPORT                        R36 K188 [Enum.SortOrder.LayoutOrder]
      947 SETTABLEKS                       R36 R35 K179 ["SortOrder"]
      949 GETIMPORT                        R36 K111 [UDim.new]
      951 LOADN                            R37 0
      952 LOADN                            R38 24
      953 CALL                             R36 2 1
      954 SETTABLEKS                       R36 R35 K180 ["Padding"]
      956 CALL                             R33 2 1
      957 SETTABLEKS                       R33 R32 K167 ["UIListLayout"]
      959 MOVE                             R33 R18
      960 JUMPIFNOT                        R33 ; [+74]
      961 GETUPVAL                         R33 11
      962 GETTABLEKS                       R33 R33 K64 ["createElement"]
      964 LOADK                            R34 K149 ["Frame"]
      965 DUPTABLE                         R35 K189 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
      966 GETIMPORT                        R36 K78 [UDim2.new]
      968 LOADN                            R37 0
      969 LOADN                            R38 160
      970 LOADN                            R39 0
      971 LOADN                            R40 40
      972 CALL                             R36 4 1
      973 SETTABLEKS                       R36 R35 K3 ["Size"]
      975 LOADN                            R36 1
      976 SETTABLEKS                       R36 R35 K151 ["BackgroundTransparency"]
      978 LOADN                            R36 0
      979 SETTABLEKS                       R36 R35 K162 ["BorderSizePixel"]
      981 LOADN                            R36 3
      982 SETTABLEKS                       R36 R35 K4 ["LayoutOrder"]
      984 DUPTABLE                         R36 K191 [{"TextField"}]
      985 GETUPVAL                         R37 11
      986 GETTABLEKS                       R37 R37 K64 ["createElement"]
      988 GETUPVAL                         R38 12
      989 DUPTABLE                         R39 K196 [{"ForceOnTextChange", "OnTextChanged", "PlaceholderText", "Size", "Style", "Text"}]
      990 LOADB                            R40 1
      991 SETTABLEKS                       R40 R39 K192 ["ForceOnTextChange"]
      993 GETTABLEKS                       R40 R0 K129 ["onAnimationIDChanged"]
      995 SETTABLEKS                       R40 R39 K193 ["OnTextChanged"]
      997 GETTABLEKS                       R40 R1 K20 ["Localization"]
      999 LOADK                            R42 K120 ["AssetConfigAnimation"]
     1000 LOADK                            R43 K130 ["AnimationID"]
     1001 NAMECALL                         R40 R40 K23 ["getText"]
     1003 CALL                             R40 3 1
     1004 SETTABLEKS                       R40 R39 K194 ["PlaceholderText"]
     1006 GETIMPORT                        R40 K78 [UDim2.new]
     1008 LOADN                            R41 1
     1009 LOADN                            R42 0
     1010 LOADN                            R43 1
     1011 LOADN                            R44 0
     1012 CALL                             R40 4 1
     1013 SETTABLEKS                       R40 R39 K3 ["Size"]
     1015 JUMPIFNOT                        R20 ; [+2]
     1016 LOADK                            R40 K197 ["FilledRoundedRedBorder"]
     1017 JUMP                             ; [+1]
     1018 LOADK                            R40 K198 ["FilledRoundedBorder"]
     1019 SETTABLEKS                       R40 R39 K195 ["Style"]
     1021 JUMPIFNOT                        R19 ; [+6]
     1022 FASTCALL1                        TOSTRING R19 ; [+3]
     1023 MOVE                             R41 R19
     1024 GETIMPORT                        R40 K62 [tostring]
     1026 CALL                             R40 1 1
     1027 JUMPIF                           R40 ; [+1]
     1028 LOADNIL                          R40
     1029 SETTABLEKS                       R40 R39 K88 ["Text"]
     1031 CALL                             R37 2 1
     1032 SETTABLEKS                       R37 R36 K190 ["TextField"]
     1034 CALL                             R33 3 1
     1035 SETTABLEKS                       R33 R32 K168 ["AnimationIdBox"]
     1037 MOVE                             R33 R18
     1038 JUMPIFNOT                        R33 ; [+54]
     1039 NOT                              R33 R14
     1040 JUMPIFNOT                        R33 ; [+52]
     1041 GETUPVAL                         R33 11
     1042 GETTABLEKS                       R33 R33 K64 ["createElement"]
     1044 LOADK                            R34 K199 ["TextLabel"]
     1045 DUPTABLE                         R35 K205 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "TextXAlignment", "LayoutOrder"}]
     1046 LOADN                            R36 1
     1047 SETTABLEKS                       R36 R35 K151 ["BackgroundTransparency"]
     1049 GETUPVAL                         R36 13
     1050 GETTABLEKS                       R36 R36 K206 ["FONT"]
     1052 SETTABLEKS                       R36 R35 K200 ["Font"]
     1054 GETTABLEKS                       R36 R1 K20 ["Localization"]
     1056 LOADK                            R38 K120 ["AssetConfigAnimation"]
     1057 LOADK                            R39 K121 ["InvalidAnimationID"]
     1058 NAMECALL                         R36 R36 K23 ["getText"]
     1060 CALL                             R36 3 1
     1061 SETTABLEKS                       R36 R35 K88 ["Text"]
     1063 GETTABLEKS                       R36 R3 K207 ["redText"]
     1065 SETTABLEKS                       R36 R35 K201 ["TextColor3"]
     1067 GETUPVAL                         R36 13
     1068 GETTABLEKS                       R36 R36 K208 ["FONT_SIZE_MEDIUM"]
     1070 SETTABLEKS                       R36 R35 K202 ["TextSize"]
     1072 GETIMPORT                        R36 K78 [UDim2.new]
     1074 LOADN                            R37 0
     1075 LOADN                            R38 96
     1076 LOADN                            R39 1
     1077 LOADN                            R40 0
     1078 CALL                             R36 4 1
     1079 SETTABLEKS                       R36 R35 K3 ["Size"]
     1081 GETIMPORT                        R36 K209 [Enum.TextYAlignment.Center]
     1083 SETTABLEKS                       R36 R35 K203 ["TextYAlignment"]
     1085 GETIMPORT                        R36 K210 [Enum.TextXAlignment.Center]
     1087 SETTABLEKS                       R36 R35 K204 ["TextXAlignment"]
     1089 LOADN                            R36 2
     1090 SETTABLEKS                       R36 R35 K4 ["LayoutOrder"]
     1092 CALL                             R33 2 1
     1093 SETTABLEKS                       R33 R32 K116 ["InvalidAnimationLabel"]
     1095 GETUPVAL                         R33 11
     1096 GETTABLEKS                       R33 R33 K64 ["createElement"]
     1098 GETUPVAL                         R34 14
     1099 DUPTABLE                         R35 K212 [{"LayoutOrder", "OnClick", "Style", "Size", "Text"}]
     1100 LOADN                            R36 4
     1101 SETTABLEKS                       R36 R35 K4 ["LayoutOrder"]
     1103 SETTABLEKS                       R7 R35 K211 ["OnClick"]
     1105 LOADK                            R36 K213 ["Round"]
     1106 SETTABLEKS                       R36 R35 K195 ["Style"]
     1108 GETIMPORT                        R36 K78 [UDim2.new]
     1110 LOADN                            R37 0
     1111 LOADN                            R38 140
     1112 LOADN                            R39 0
     1113 LOADN                            R40 40
     1114 CALL                             R36 4 1
     1115 SETTABLEKS                       R36 R35 K3 ["Size"]
     1117 GETTABLEKS                       R36 R1 K20 ["Localization"]
     1119 LOADK                            R38 K56 ["General"]
     1120 LOADK                            R39 K158 ["SearchOptionsCancel"]
     1121 NAMECALL                         R36 R36 K23 ["getText"]
     1123 CALL                             R36 3 1
     1124 SETTABLEKS                       R36 R35 K88 ["Text"]
     1126 CALL                             R33 2 1
     1127 SETTABLEKS                       R33 R32 K135 ["CancelButton"]
     1129 GETUPVAL                         R34 15
     1130 CALL                             R34 0 1
     1131 JUMPIFNOT                        R34 ; [+107]
     1132 JUMPIF                           R21 ; [+106]
     1133 GETUPVAL                         R33 11
     1134 GETTABLEKS                       R33 R33 K64 ["createElement"]
     1136 GETUPVAL                         R34 9
     1137 GETTABLEKS                       R34 R34 K65 ["View"]
     1139 DUPTABLE                         R35 K114 [{"tag", "LayoutOrder", "Size"}]
     1140 LOADK                            R36 K214 ["size-full"]
     1141 SETTABLEKS                       R36 R35 K66 ["tag"]
     1143 LOADN                            R36 5
     1144 SETTABLEKS                       R36 R35 K4 ["LayoutOrder"]
     1146 GETIMPORT                        R36 K78 [UDim2.new]
     1148 LOADN                            R37 0
     1149 LOADN                            R38 140
     1150 LOADN                            R39 0
     1151 LOADN                            R40 40
     1152 CALL                             R36 4 1
     1153 SETTABLEKS                       R36 R35 K3 ["Size"]
     1155 DUPTABLE                         R36 K140 [{"DisabledButton", "HoverOverlay"}]
     1156 GETUPVAL                         R37 11
     1157 GETTABLEKS                       R37 R37 K64 ["createElement"]
     1159 GETUPVAL                         R38 14
     1160 DUPTABLE                         R39 K216 [{"Size", "OnClick", "Style", "StyleModifier", "Text"}]
     1161 GETIMPORT                        R40 K78 [UDim2.new]
     1163 LOADN                            R41 1
     1164 LOADN                            R42 0
     1165 LOADN                            R43 1
     1166 LOADN                            R44 0
     1167 CALL                             R40 4 1
     1168 SETTABLEKS                       R40 R39 K3 ["Size"]
     1170 DUPCLOSURE                       R40 K217 [PROTO_9]
     1171 SETTABLEKS                       R40 R39 K211 ["OnClick"]
     1173 LOADK                            R40 K218 ["RoundPrimary"]
     1174 SETTABLEKS                       R40 R39 K195 ["Style"]
     1176 GETUPVAL                         R40 16
     1177 GETTABLEKS                       R40 R40 K219 ["Disabled"]
     1179 SETTABLEKS                       R40 R39 K215 ["StyleModifier"]
     1181 SETTABLEKS                       R22 R39 K88 ["Text"]
     1183 CALL                             R37 2 1
     1184 SETTABLEKS                       R37 R36 K138 ["DisabledButton"]
     1186 GETTABLEKS                       R38 R1 K148 ["OnPublishButtonHover"]
     1188 JUMPIFNOT                        R38 ; [+45]
     1189 GETUPVAL                         R37 11
     1190 GETTABLEKS                       R37 R37 K64 ["createElement"]
     1192 LOADK                            R38 K149 ["Frame"]
     1193 NEWTABLE                         R39 8 0
     1195 GETIMPORT                        R40 K78 [UDim2.new]
     1197 LOADN                            R41 1
     1198 LOADN                            R42 0
     1199 LOADN                            R43 1
     1200 LOADN                            R44 0
     1201 CALL                             R40 4 1
     1202 SETTABLEKS                       R40 R39 K3 ["Size"]
     1204 GETIMPORT                        R40 K78 [UDim2.new]
     1206 LOADN                            R41 0
     1207 LOADN                            R42 0
     1208 LOADN                            R43 0
     1209 LOADN                            R44 0
     1210 CALL                             R40 4 1
     1211 SETTABLEKS                       R40 R39 K150 ["Position"]
     1213 LOADN                            R40 1
     1214 SETTABLEKS                       R40 R39 K151 ["BackgroundTransparency"]
     1216 GETUPVAL                         R40 11
     1217 GETTABLEKS                       R40 R40 K152 ["Event"]
     1219 GETTABLEKS                       R40 R40 K153 ["MouseEnter"]
     1221 NEWCLOSURE                       R41 P4
     1222 CAPTURE                          VAL R1
     1223 SETTABLE                         R41 R39 R40
     1224 GETUPVAL                         R40 11
     1225 GETTABLEKS                       R40 R40 K152 ["Event"]
     1227 GETTABLEKS                       R40 R40 K154 ["MouseLeave"]
     1229 NEWCLOSURE                       R41 P5
     1230 CAPTURE                          VAL R1
     1231 SETTABLE                         R41 R39 R40
     1232 CALL                             R37 2 1
     1233 JUMPIF                           R37 ; [+1]
     1234 LOADNIL                          R37
     1235 SETTABLEKS                       R37 R36 K139 ["HoverOverlay"]
     1237 CALL                             R33 3 1
     1238 JUMP                             ; [+37]
     1239 GETUPVAL                         R33 11
     1240 GETTABLEKS                       R33 R33 K64 ["createElement"]
     1242 GETUPVAL                         R34 14
     1243 DUPTABLE                         R35 K220 [{"LayoutOrder", "OnClick", "Style", "StyleModifier", "Size", "Text"}]
     1244 LOADN                            R36 5
     1245 SETTABLEKS                       R36 R35 K4 ["LayoutOrder"]
     1247 NEWCLOSURE                       R36 P6
     1248 CAPTURE                          REF R21
     1249 CAPTURE                          VAL R6
     1250 CAPTURE                          VAL R0
     1251 SETTABLEKS                       R36 R35 K211 ["OnClick"]
     1253 LOADK                            R36 K218 ["RoundPrimary"]
     1254 SETTABLEKS                       R36 R35 K195 ["Style"]
     1256 JUMPIF                           R21 ; [+4]
     1257 GETUPVAL                         R36 16
     1258 GETTABLEKS                       R36 R36 K219 ["Disabled"]
     1260 JUMPIF                           R36 ; [+1]
     1261 LOADNIL                          R36
     1262 SETTABLEKS                       R36 R35 K215 ["StyleModifier"]
     1264 GETIMPORT                        R36 K78 [UDim2.new]
     1266 LOADN                            R37 0
     1267 LOADN                            R38 140
     1268 LOADN                            R39 0
     1269 LOADN                            R40 40
     1270 CALL                             R36 4 1
     1271 SETTABLEKS                       R36 R35 K3 ["Size"]
     1273 SETTABLEKS                       R22 R35 K88 ["Text"]
     1275 CALL                             R33 2 1
     1276 SETTABLEKS                       R33 R32 K134 ["PublishButton"]
     1278 MOVE                             R33 R15
     1279 JUMPIFNOT                        R33 ; [+34]
     1280 GETUPVAL                         R33 11
     1281 GETTABLEKS                       R33 R33 K64 ["createElement"]
     1283 GETUPVAL                         R34 17
     1284 DUPTABLE                         R35 K221 [{"Size", "Text", "TextSize", "Font", "onActivated", "LayoutOrder"}]
     1285 GETIMPORT                        R36 K78 [UDim2.new]
     1287 LOADN                            R37 1
     1288 LOADN                            R38 184
     1289 LOADN                            R39 0
     1290 LOADN                            R40 20
     1291 CALL                             R36 4 1
     1292 SETTABLEKS                       R36 R35 K3 ["Size"]
     1294 SETTABLEKS                       R16 R35 K88 ["Text"]
     1296 GETUPVAL                         R36 13
     1297 GETTABLEKS                       R36 R36 K208 ["FONT_SIZE_MEDIUM"]
     1299 SETTABLEKS                       R36 R35 K202 ["TextSize"]
     1301 GETUPVAL                         R36 13
     1302 GETTABLEKS                       R36 R36 K206 ["FONT"]
     1304 SETTABLEKS                       R36 R35 K200 ["Font"]
     1306 GETTABLEKS                       R36 R0 K92 ["onFlowButtonActivated"]
     1308 SETTABLEKS                       R36 R35 K89 ["onActivated"]
     1310 LOADN                            R36 1
     1311 SETTABLEKS                       R36 R35 K4 ["LayoutOrder"]
     1313 CALL                             R33 2 1
     1314 SETTABLEKS                       R33 R32 K169 ["ToggleOverrideButton"]
     1316 CALL                             R29 3 -1
     1317 CLOSEUPVALS                      R21
     1318 RETURN                           R29 -1

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
       20 GETTABLEKS                       R4 R1 K7 ["React"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["RoactRodux"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R6 R1 K9 ["Framework"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R5 R5 K10 ["ContextServices"]
       35 GETTABLEKS                       R6 R5 K11 ["withContext"]
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R0 K12 ["Src"]
       41 GETTABLEKS                       R8 R8 K10 ["ContextServices"]
       43 GETTABLEKS                       R8 R8 K13 ["NetworkContext"]
       45 CALL                             R7 1 1
       46 GETTABLEKS                       R8 R0 K12 ["Src"]
       48 GETTABLEKS                       R8 R8 K14 ["Util"]
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
       75 GETIMPORT                        R14 K5 [require]
       77 GETTABLEKS                       R15 R1 K9 ["Framework"]
       79 CALL                             R14 1 1
       80 GETTABLEKS                       R14 R14 K14 ["Util"]
       82 GETIMPORT                        R15 K5 [require]
       84 GETTABLEKS                       R16 R1 K9 ["Framework"]
       86 CALL                             R15 1 1
       87 GETTABLEKS                       R15 R15 K14 ["Util"]
       89 GETTABLEKS                       R15 R15 K20 ["StyleModifier"]
       91 GETIMPORT                        R16 K5 [require]
       93 GETTABLEKS                       R17 R1 K9 ["Framework"]
       95 CALL                             R16 1 1
       96 GETTABLEKS                       R17 R16 K21 ["UI"]
       98 GETTABLEKS                       R18 R17 K22 ["Button"]
      100 GETTABLEKS                       R19 R17 K23 ["DEPRECATED_TextInput"]
      102 GETIMPORT                        R20 K5 [require]
      104 GETTABLEKS                       R21 R0 K12 ["Src"]
      106 GETTABLEKS                       R21 R21 K24 ["Types"]
      108 GETTABLEKS                       R21 R21 K25 ["ConfigTypes"]
      110 CALL                             R20 1 1
      111 GETTABLEKS                       R21 R0 K12 ["Src"]
      113 GETTABLEKS                       R21 R21 K26 ["Networking"]
      115 GETTABLEKS                       R21 R21 K27 ["Requests"]
      117 GETIMPORT                        R22 K5 [require]
      119 GETTABLEKS                       R23 R21 K28 ["ToggleOverrideRequest"]
      121 CALL                             R22 1 1
      122 GETIMPORT                        R23 K5 [require]
      124 GETTABLEKS                       R24 R21 K29 ["ValidateAnimationRequest"]
      126 CALL                             R23 1 1
      127 GETTABLEKS                       R24 R0 K12 ["Src"]
      129 GETTABLEKS                       R24 R24 K30 ["Components"]
      131 GETTABLEKS                       R24 R24 K31 ["AssetConfiguration"]
      133 GETIMPORT                        R25 K5 [require]
      135 GETTABLEKS                       R26 R24 K32 ["LinkButton"]
      137 CALL                             R25 1 1
      138 GETIMPORT                        R26 K5 [require]
      140 GETTABLEKS                       R27 R1 K33 ["Foundation"]
      142 CALL                             R26 1 1
      143 GETTABLEKS                       R27 R26 K34 ["Enums"]
      145 GETIMPORT                        R28 K5 [require]
      147 GETTABLEKS                       R29 R0 K12 ["Src"]
      149 GETTABLEKS                       R29 R29 K35 ["Flags"]
      151 GETTABLEKS                       R29 R29 K36 ["getFFlagEnableUploadingMakeup"]
      153 CALL                             R28 1 1
      154 GETIMPORT                        R29 K5 [require]
      156 GETTABLEKS                       R30 R0 K12 ["Src"]
      158 GETTABLEKS                       R30 R30 K35 ["Flags"]
      160 GETTABLEKS                       R30 R30 K37 ["getFFlagCheckAvatarAssetPrivacy"]
      162 CALL                             R29 1 1
      163 GETIMPORT                        R30 K5 [require]
      165 GETTABLEKS                       R31 R0 K12 ["Src"]
      167 GETTABLEKS                       R31 R31 K35 ["Flags"]
      169 GETTABLEKS                       R31 R31 K38 ["getFFlagAvatarPreviewerUpdateDialogUI"]
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
      189 CAPTURE                          VAL R30
      190 CAPTURE                          VAL R13
      191 SETTABLEKS                       R34 R31 K51 ["init"]
      193 DUPCLOSURE                       R34 K52 [PROTO_4]
      194 CAPTURE                          VAL R32
      195 CAPTURE                          VAL R14
      196 SETTABLEKS                       R34 R31 K53 ["shouldUpdate"]
      198 DUPCLOSURE                       R34 K54 [PROTO_5]
      199 CAPTURE                          VAL R33
      200 SETTABLEKS                       R34 R31 K55 ["getUploadFeeWithRobuxIcon"]
      202 DUPCLOSURE                       R34 K56 [PROTO_13]
      203 CAPTURE                          VAL R32
      204 CAPTURE                          VAL R11
      205 CAPTURE                          VAL R20
      206 CAPTURE                          VAL R12
      207 CAPTURE                          VAL R13
      208 CAPTURE                          VAL R30
      209 CAPTURE                          VAL R10
      210 CAPTURE                          VAL R33
      211 CAPTURE                          VAL R3
      212 CAPTURE                          VAL R26
      213 CAPTURE                          VAL R27
      214 CAPTURE                          VAL R2
      215 CAPTURE                          VAL R19
      216 CAPTURE                          VAL R9
      217 CAPTURE                          VAL R18
      218 CAPTURE                          VAL R28
      219 CAPTURE                          VAL R15
      220 CAPTURE                          VAL R25
      221 SETTABLEKS                       R34 R31 K57 ["render"]
      223 DUPCLOSURE                       R34 K58 [PROTO_14]
      224 CAPTURE                          VAL R29
      225 DUPCLOSURE                       R35 K59 [PROTO_17]
      226 CAPTURE                          VAL R22
      227 CAPTURE                          VAL R23
      228 MOVE                             R36 R6
      229 DUPTABLE                         R37 K63 [{"Stylizer", "Localization", "Network"}]
      230 GETTABLEKS                       R38 R5 K60 ["Stylizer"]
      232 SETTABLEKS                       R38 R37 K60 ["Stylizer"]
      234 GETTABLEKS                       R38 R5 K61 ["Localization"]
      236 SETTABLEKS                       R38 R37 K61 ["Localization"]
      238 SETTABLEKS                       R7 R37 K62 ["Network"]
      240 CALL                             R36 1 1
      241 MOVE                             R37 R31
      242 CALL                             R36 1 1
      243 MOVE                             R31 R36
      244 GETTABLEKS                       R36 R4 K64 ["connect"]
      246 MOVE                             R37 R34
      247 MOVE                             R38 R35
      248 CALL                             R36 2 1
      249 MOVE                             R37 R31
      250 CALL                             R36 1 -1
      251 RETURN                           R36 -1
