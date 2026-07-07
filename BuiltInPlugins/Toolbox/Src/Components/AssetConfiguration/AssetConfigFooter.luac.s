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
        8 DUPTABLE                         R2 K6 [{["animationId"] = "", ["disablePublish"] = False}]
        9 SETTABLEKS                       R2 R0 K7 ["state"]
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R2 R0 K8 ["onAnimationIDChanged"]
       17 NEWCLOSURE                       R2 P2
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R2 R0 K9 ["onPublishActivated"]
       21 RETURN                           R0 0

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
      269 JUMPIFNOT                        R29 ; [+550]
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
      309 DUPTABLE                         R33 K68 [{["tag"] = "row flex-x-between align-y-center gap-small padding-x-medium", ["Size"], ["LayoutOrder"]}]
      310 SETTABLEKS                       R4 R33 K3 ["Size"]
      312 SETTABLEKS                       R5 R33 K4 ["LayoutOrder"]
      314 DUPTABLE                         R34 K72 [{"LeftContent", "AnimationImportRow", "ButtonsSection"}]
      315 GETUPVAL                         R35 8
      316 GETTABLEKS                       R35 R35 K64 ["createElement"]
      318 GETUPVAL                         R36 9
      319 GETTABLEKS                       R36 R36 K65 ["View"]
      321 DUPTABLE                         R37 K75 [{["tag"] = "row align-y-center fill gap-small", ["LayoutOrder"], ["Size"], ["AutomaticSize"]}]
      322 NAMECALL                         R38 R29 K76 ["getNextOrder"]
      324 CALL                             R38 1 1
      325 SETTABLEKS                       R38 R37 K4 ["LayoutOrder"]
      327 GETIMPORT                        R38 K78 [UDim2.new]
      329 LOADN                            R39 0
      330 LOADN                            R40 0
      331 LOADN                            R41 1
      332 LOADN                            R42 0
      333 CALL                             R38 4 1
      334 SETTABLEKS                       R38 R37 K3 ["Size"]
      336 GETIMPORT                        R38 K80 [Enum.AutomaticSize.X]
      338 SETTABLEKS                       R38 R37 K74 ["AutomaticSize"]
      340 DUPTABLE                         R38 K83 [{"AnimationOverride", "AssetProgressRow"}]
      341 JUMPIFNOT                        R15 ; [+26]
      342 GETUPVAL                         R39 8
      343 GETTABLEKS                       R39 R39 K64 ["createElement"]
      345 GETUPVAL                         R40 9
      346 GETTABLEKS                       R40 R40 K65 ["View"]
      348 DUPTABLE                         R41 K85 [{["tag"] = "align-y-center fill auto-y"}]
      349 DUPTABLE                         R42 K87 [{"OverrideLink"}]
      350 GETUPVAL                         R43 8
      351 GETTABLEKS                       R43 R43 K64 ["createElement"]
      353 GETUPVAL                         R44 9
      354 GETTABLEKS                       R44 R44 K88 ["Text"]
      356 DUPTABLE                         R45 K91 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left text-align-y-center content-link", ["Text"], ["onActivated"]}]
      357 SETTABLEKS                       R16 R45 K88 ["Text"]
      359 GETTABLEKS                       R46 R0 K92 ["onFlowButtonActivated"]
      361 SETTABLEKS                       R46 R45 K90 ["onActivated"]
      363 CALL                             R43 2 1
      364 SETTABLEKS                       R43 R42 K86 ["OverrideLink"]
      366 CALL                             R39 3 1
      367 JUMPIF                           R39 ; [+1]
      368 LOADNIL                          R39
      369 SETTABLEKS                       R39 R38 K81 ["AnimationOverride"]
      371 JUMPIFNOT                        R24 ; [+65]
      372 GETUPVAL                         R39 8
      373 GETTABLEKS                       R39 R39 K64 ["createElement"]
      375 GETUPVAL                         R40 9
      376 GETTABLEKS                       R40 R40 K65 ["View"]
      378 DUPTABLE                         R41 K94 [{["tag"] = "row align-y-center"}]
      379 DUPTABLE                         R42 K97 [{"AssetProgressLabel", "AssetProgressBar"}]
      380 GETUPVAL                         R43 8
      381 GETTABLEKS                       R43 R43 K64 ["createElement"]
      383 GETUPVAL                         R44 9
      384 GETTABLEKS                       R44 R44 K88 ["Text"]
      386 DUPTABLE                         R45 K100 [{["tag"] = "auto-y text-title-small content-emphasis", ["Text"], ["Size"], ["LayoutOrder"] = 1}]
      387 SETTABLEKS                       R28 R45 K88 ["Text"]
      389 GETIMPORT                        R46 K78 [UDim2.new]
      391 LOADN                            R47 0
      392 LOADN                            R48 100
      393 LOADN                            R49 1
      394 LOADN                            R50 0
      395 CALL                             R46 4 1
      396 SETTABLEKS                       R46 R45 K3 ["Size"]
      398 CALL                             R43 2 1
      399 SETTABLEKS                       R43 R42 K95 ["AssetProgressLabel"]
      401 GETUPVAL                         R43 8
      402 GETTABLEKS                       R43 R43 K64 ["createElement"]
      404 GETUPVAL                         R44 9
      405 GETTABLEKS                       R44 R44 K101 ["Progress"]
      407 DUPTABLE                         R45 K107 [{["value"], ["size"], ["shape"], ["width"], ["LayoutOrder"] = 2}]
      408 ORK                              R46 R25 K108 [0]
      409 SETTABLEKS                       R46 R45 K102 ["value"]
      411 GETUPVAL                         R46 10
      412 GETTABLEKS                       R46 R46 K109 ["ProgressSize"]
      414 GETTABLEKS                       R46 R46 K110 ["Medium"]
      416 SETTABLEKS                       R46 R45 K103 ["size"]
      418 GETUPVAL                         R46 10
      419 GETTABLEKS                       R46 R46 K111 ["ProgressShape"]
      421 GETTABLEKS                       R46 R46 K112 ["Bar"]
      423 SETTABLEKS                       R46 R45 K104 ["shape"]
      425 GETIMPORT                        R46 K114 [UDim.new]
      427 LOADN                            R47 0
      428 LOADN                            R48 220
      429 CALL                             R46 2 1
      430 SETTABLEKS                       R46 R45 K105 ["width"]
      432 CALL                             R43 2 1
      433 SETTABLEKS                       R43 R42 K96 ["AssetProgressBar"]
      435 CALL                             R39 3 1
      436 JUMPIF                           R39 ; [+1]
      437 LOADNIL                          R39
      438 SETTABLEKS                       R39 R38 K82 ["AssetProgressRow"]
      440 CALL                             R35 3 1
      441 JUMPIF                           R35 ; [+13]
      442 GETUPVAL                         R35 8
      443 GETTABLEKS                       R35 R35 K64 ["createElement"]
      445 GETUPVAL                         R36 9
      446 GETTABLEKS                       R36 R36 K65 ["View"]
      448 DUPTABLE                         R37 K116 [{["tag"] = "size-0-0", ["LayoutOrder"]}]
      449 NAMECALL                         R38 R29 K76 ["getNextOrder"]
      451 CALL                             R38 1 1
      452 SETTABLEKS                       R38 R37 K4 ["LayoutOrder"]
      454 CALL                             R35 2 1
      455 SETTABLEKS                       R35 R34 K69 ["LeftContent"]
      457 JUMPIFNOT                        R18 ; [+105]
      458 GETUPVAL                         R35 8
      459 GETTABLEKS                       R35 R35 K64 ["createElement"]
      461 GETUPVAL                         R36 9
      462 GETTABLEKS                       R36 R36 K65 ["View"]
      464 DUPTABLE                         R37 K118 [{["tag"] = "row align-y-center gap-small auto-x", ["LayoutOrder"], ["Size"]}]
      465 NAMECALL                         R38 R29 K76 ["getNextOrder"]
      467 CALL                             R38 1 1
      468 SETTABLEKS                       R38 R37 K4 ["LayoutOrder"]
      470 GETIMPORT                        R38 K78 [UDim2.new]
      472 LOADN                            R39 0
      473 LOADN                            R40 0
      474 LOADN                            R41 1
      475 LOADN                            R42 0
      476 CALL                             R38 4 1
      477 SETTABLEKS                       R38 R37 K3 ["Size"]
      479 DUPTABLE                         R38 K121 [{"InvalidAnimationLabel", "AnimationIdInput"}]
      480 JUMPIF                           R14 ; [+27]
      481 GETUPVAL                         R39 8
      482 GETTABLEKS                       R39 R39 K64 ["createElement"]
      484 GETUPVAL                         R40 9
      485 GETTABLEKS                       R40 R40 K88 ["Text"]
      487 DUPTABLE                         R41 K123 [{["tag"] = "text-caption-small text-align-y-center content-alert", ["Text"], ["Size"], ["LayoutOrder"] = 1}]
      488 GETTABLEKS                       R42 R1 K20 ["Localization"]
      490 LOADK                            R44 K124 ["AssetConfigAnimation"]
      491 LOADK                            R45 K125 ["InvalidAnimationID"]
      492 NAMECALL                         R42 R42 K23 ["getText"]
      494 CALL                             R42 3 1
      495 SETTABLEKS                       R42 R41 K88 ["Text"]
      497 GETIMPORT                        R42 K78 [UDim2.new]
      499 LOADN                            R43 0
      500 LOADN                            R44 96
      501 LOADN                            R45 1
      502 LOADN                            R46 0
      503 CALL                             R42 4 1
      504 SETTABLEKS                       R42 R41 K3 ["Size"]
      506 CALL                             R39 2 1
      507 JUMPIF                           R39 ; [+1]
      508 LOADNIL                          R39
      509 SETTABLEKS                       R39 R38 K119 ["InvalidAnimationLabel"]
      511 GETUPVAL                         R39 8
      512 GETTABLEKS                       R39 R39 K64 ["createElement"]
      514 GETUPVAL                         R40 9
      515 GETTABLEKS                       R40 R40 K126 ["TextInput"]
      517 DUPTABLE                         R41 K132 [{["LayoutOrder"] = 2, ["text"], ["onChanged"], ["label"] = "", ["placeholder"], ["hasError"], ["size"], ["width"]}]
      518 JUMPIFEQKNIL                     R19 ; [+7]
      520 FASTCALL1                        TOSTRING R19 ; [+3]
      521 MOVE                             R43 R19
      522 GETIMPORT                        R42 K62 [tostring]
      524 CALL                             R42 1 1
      525 JUMP                             ; [+1]
      526 LOADK                            R42 K14 [""]
      527 SETTABLEKS                       R42 R41 K127 ["text"]
      529 GETTABLEKS                       R42 R0 K133 ["onAnimationIDChanged"]
      531 SETTABLEKS                       R42 R41 K128 ["onChanged"]
      533 GETTABLEKS                       R42 R1 K20 ["Localization"]
      535 LOADK                            R44 K124 ["AssetConfigAnimation"]
      536 LOADK                            R45 K134 ["AnimationID"]
      537 NAMECALL                         R42 R42 K23 ["getText"]
      539 CALL                             R42 3 1
      540 SETTABLEKS                       R42 R41 K130 ["placeholder"]
      542 SETTABLEKS                       R20 R41 K131 ["hasError"]
      544 GETUPVAL                         R42 10
      545 GETTABLEKS                       R42 R42 K135 ["InputSize"]
      547 GETTABLEKS                       R42 R42 K136 ["Small"]
      549 SETTABLEKS                       R42 R41 K103 ["size"]
      551 GETIMPORT                        R42 K114 [UDim.new]
      553 LOADN                            R43 0
      554 LOADN                            R44 160
      555 CALL                             R42 2 1
      556 SETTABLEKS                       R42 R41 K105 ["width"]
      558 CALL                             R39 2 1
      559 SETTABLEKS                       R39 R38 K120 ["AnimationIdInput"]
      561 CALL                             R35 3 1
      562 JUMPIF                           R35 ; [+1]
      563 LOADNIL                          R35
      564 SETTABLEKS                       R35 R34 K70 ["AnimationImportRow"]
      566 GETUPVAL                         R35 8
      567 GETTABLEKS                       R35 R35 K64 ["createElement"]
      569 GETUPVAL                         R36 9
      570 GETTABLEKS                       R36 R36 K65 ["View"]
      572 DUPTABLE                         R37 K138 [{["tag"] = "row align-x-right align-y-center gap-small auto-xy", ["LayoutOrder"]}]
      573 NAMECALL                         R38 R29 K76 ["getNextOrder"]
      575 CALL                             R38 1 1
      576 SETTABLEKS                       R38 R37 K4 ["LayoutOrder"]
      578 DUPTABLE                         R38 K141 [{"PublishButton", "CancelButton"}]
      579 JUMPIF                           R21 ; [+108]
      580 GETUPVAL                         R39 8
      581 GETTABLEKS                       R39 R39 K64 ["createElement"]
      583 GETUPVAL                         R40 9
      584 GETTABLEKS                       R40 R40 K65 ["View"]
      586 DUPTABLE                         R41 K142 [{"Size", "AutomaticSize", "LayoutOrder"}]
      587 GETIMPORT                        R42 K78 [UDim2.new]
      589 LOADN                            R43 0
      590 LOADN                            R44 0
      591 LOADN                            R45 0
      592 LOADN                            R46 40
      593 CALL                             R42 4 1
      594 SETTABLEKS                       R42 R41 K3 ["Size"]
      596 GETIMPORT                        R42 K80 [Enum.AutomaticSize.X]
      598 SETTABLEKS                       R42 R41 K74 ["AutomaticSize"]
      600 NAMECALL                         R42 R29 K76 ["getNextOrder"]
      602 CALL                             R42 1 1
      603 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      605 DUPTABLE                         R42 K145 [{"DisabledButton", "HoverOverlay"}]
      606 GETUPVAL                         R43 8
      607 GETTABLEKS                       R43 R43 K64 ["createElement"]
      609 GETUPVAL                         R44 9
      610 GETTABLEKS                       R44 R44 K146 ["Button"]
      612 DUPTABLE                         R45 K150 [{["text"], ["variant"], ["onActivated"], ["isDisabled"] = True, ["size"]}]
      613 SETTABLEKS                       R30 R45 K127 ["text"]
      615 GETUPVAL                         R46 10
      616 GETTABLEKS                       R46 R46 K151 ["ButtonVariant"]
      618 GETTABLEKS                       R46 R46 K152 ["Emphasis"]
      620 SETTABLEKS                       R46 R45 K147 ["variant"]
      622 DUPCLOSURE                       R46 K153 [PROTO_6]
      623 SETTABLEKS                       R46 R45 K90 ["onActivated"]
      625 GETUPVAL                         R46 10
      626 GETTABLEKS                       R46 R46 K135 ["InputSize"]
      628 GETTABLEKS                       R46 R46 K136 ["Small"]
      630 SETTABLEKS                       R46 R45 K103 ["size"]
      632 CALL                             R43 2 1
      633 SETTABLEKS                       R43 R42 K143 ["DisabledButton"]
      635 GETTABLEKS                       R44 R1 K154 ["OnPublishButtonHover"]
      637 JUMPIFNOT                        R44 ; [+45]
      638 GETUPVAL                         R43 8
      639 GETTABLEKS                       R43 R43 K64 ["createElement"]
      641 LOADK                            R44 K155 ["Frame"]
      642 NEWTABLE                         R45 8 0
      644 GETIMPORT                        R46 K78 [UDim2.new]
      646 LOADN                            R47 1
      647 LOADN                            R48 0
      648 LOADN                            R49 1
      649 LOADN                            R50 0
      650 CALL                             R46 4 1
      651 SETTABLEKS                       R46 R45 K3 ["Size"]
      653 GETIMPORT                        R46 K78 [UDim2.new]
      655 LOADN                            R47 0
      656 LOADN                            R48 0
      657 LOADN                            R49 0
      658 LOADN                            R50 0
      659 CALL                             R46 4 1
      660 SETTABLEKS                       R46 R45 K156 ["Position"]
      662 LOADN                            R46 1
      663 SETTABLEKS                       R46 R45 K157 ["BackgroundTransparency"]
      665 GETUPVAL                         R46 11
      666 GETTABLEKS                       R46 R46 K158 ["Event"]
      668 GETTABLEKS                       R46 R46 K159 ["MouseEnter"]
      670 NEWCLOSURE                       R47 P1
      671 CAPTURE                          VAL R1
      672 SETTABLE                         R47 R45 R46
      673 GETUPVAL                         R46 11
      674 GETTABLEKS                       R46 R46 K158 ["Event"]
      676 GETTABLEKS                       R46 R46 K160 ["MouseLeave"]
      678 NEWCLOSURE                       R47 P2
      679 CAPTURE                          VAL R1
      680 SETTABLE                         R47 R45 R46
      681 CALL                             R43 2 1
      682 JUMPIF                           R43 ; [+1]
      683 LOADNIL                          R43
      684 SETTABLEKS                       R43 R42 K144 ["HoverOverlay"]
      686 CALL                             R39 3 1
      687 JUMP                             ; [+60]
      688 GETUPVAL                         R39 8
      689 GETTABLEKS                       R39 R39 K64 ["createElement"]
      691 GETUPVAL                         R40 9
      692 GETTABLEKS                       R40 R40 K65 ["View"]
      694 DUPTABLE                         R41 K142 [{"Size", "AutomaticSize", "LayoutOrder"}]
      695 GETIMPORT                        R42 K78 [UDim2.new]
      697 LOADN                            R43 0
      698 LOADN                            R44 0
      699 LOADN                            R45 0
      700 LOADN                            R46 40
      701 CALL                             R42 4 1
      702 SETTABLEKS                       R42 R41 K3 ["Size"]
      704 GETIMPORT                        R42 K80 [Enum.AutomaticSize.X]
      706 SETTABLEKS                       R42 R41 K74 ["AutomaticSize"]
      708 NAMECALL                         R42 R29 K76 ["getNextOrder"]
      710 CALL                             R42 1 1
      711 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      713 DUPTABLE                         R42 K161 [{"Button"}]
      714 GETUPVAL                         R43 8
      715 GETTABLEKS                       R43 R43 K64 ["createElement"]
      717 GETUPVAL                         R44 9
      718 GETTABLEKS                       R44 R44 K146 ["Button"]
      720 DUPTABLE                         R45 K162 [{"text", "variant", "onActivated", "isDisabled", "size"}]
      721 SETTABLEKS                       R30 R45 K127 ["text"]
      723 GETUPVAL                         R46 10
      724 GETTABLEKS                       R46 R46 K151 ["ButtonVariant"]
      726 GETTABLEKS                       R46 R46 K152 ["Emphasis"]
      728 SETTABLEKS                       R46 R45 K147 ["variant"]
      730 GETTABLEKS                       R46 R0 K163 ["onPublishActivated"]
      732 SETTABLEKS                       R46 R45 K90 ["onActivated"]
      734 NOT                              R46 R21
      735 SETTABLEKS                       R46 R45 K148 ["isDisabled"]
      737 GETUPVAL                         R46 10
      738 GETTABLEKS                       R46 R46 K135 ["InputSize"]
      740 GETTABLEKS                       R46 R46 K136 ["Small"]
      742 SETTABLEKS                       R46 R45 K103 ["size"]
      744 CALL                             R43 2 1
      745 SETTABLEKS                       R43 R42 K146 ["Button"]
      747 CALL                             R39 3 1
      748 SETTABLEKS                       R39 R38 K139 ["PublishButton"]
      750 GETUPVAL                         R39 8
      751 GETTABLEKS                       R39 R39 K64 ["createElement"]
      753 GETUPVAL                         R40 9
      754 GETTABLEKS                       R40 R40 K65 ["View"]
      756 DUPTABLE                         R41 K142 [{"Size", "AutomaticSize", "LayoutOrder"}]
      757 GETIMPORT                        R42 K78 [UDim2.new]
      759 LOADN                            R43 0
      760 LOADN                            R44 0
      761 LOADN                            R45 0
      762 LOADN                            R46 40
      763 CALL                             R42 4 1
      764 SETTABLEKS                       R42 R41 K3 ["Size"]
      766 GETIMPORT                        R42 K80 [Enum.AutomaticSize.X]
      768 SETTABLEKS                       R42 R41 K74 ["AutomaticSize"]
      770 NAMECALL                         R42 R29 K76 ["getNextOrder"]
      772 CALL                             R42 1 1
      773 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      775 DUPTABLE                         R42 K161 [{"Button"}]
      776 GETUPVAL                         R43 8
      777 GETTABLEKS                       R43 R43 K64 ["createElement"]
      779 GETUPVAL                         R44 9
      780 GETTABLEKS                       R44 R44 K146 ["Button"]
      782 DUPTABLE                         R45 K164 [{"text", "variant", "onActivated", "size"}]
      783 GETTABLEKS                       R46 R1 K20 ["Localization"]
      785 LOADK                            R48 K56 ["General"]
      786 LOADK                            R49 K165 ["SearchOptionsCancel"]
      787 NAMECALL                         R46 R46 K23 ["getText"]
      789 CALL                             R46 3 1
      790 SETTABLEKS                       R46 R45 K127 ["text"]
      792 GETUPVAL                         R46 10
      793 GETTABLEKS                       R46 R46 K151 ["ButtonVariant"]
      795 GETTABLEKS                       R46 R46 K166 ["Standard"]
      797 SETTABLEKS                       R46 R45 K147 ["variant"]
      799 SETTABLEKS                       R7 R45 K90 ["onActivated"]
      801 GETUPVAL                         R46 10
      802 GETTABLEKS                       R46 R46 K135 ["InputSize"]
      804 GETTABLEKS                       R46 R46 K136 ["Small"]
      806 SETTABLEKS                       R46 R45 K103 ["size"]
      808 CALL                             R43 2 1
      809 SETTABLEKS                       R43 R42 K146 ["Button"]
      811 CALL                             R39 3 1
      812 SETTABLEKS                       R39 R38 K140 ["CancelButton"]
      814 CALL                             R35 3 1
      815 SETTABLEKS                       R35 R34 K71 ["ButtonsSection"]
      817 CALL                             R31 3 -1
      818 CLOSEUPVALS                      R21
      819 RETURN                           R31 -1
      820 GETUPVAL                         R29 11
      821 GETTABLEKS                       R29 R29 K64 ["createElement"]
      823 LOADK                            R30 K155 ["Frame"]
      824 DUPTABLE                         R31 K170 [{["Size"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["BorderColor3"], ["BorderSizePixel"] = 1, ["LayoutOrder"]}]
      825 SETTABLEKS                       R4 R31 K3 ["Size"]
      827 GETTABLEKS                       R32 R8 K171 ["backgroundColor"]
      829 SETTABLEKS                       R32 R31 K167 ["BackgroundColor3"]
      831 GETTABLEKS                       R32 R8 K172 ["borderColor"]
      833 SETTABLEKS                       R32 R31 K168 ["BorderColor3"]
      835 SETTABLEKS                       R5 R31 K4 ["LayoutOrder"]
      837 DUPTABLE                         R32 K177 [{"UIPadding", "UIListLayout", "AnimationIdBox", "InvalidAnimationLabel", "CancelButton", "PublishButton", "ToggleOverrideButton"}]
      838 GETUPVAL                         R33 11
      839 GETTABLEKS                       R33 R33 K64 ["createElement"]
      841 LOADK                            R34 K173 ["UIPadding"]
      842 DUPTABLE                         R35 K182 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      843 GETIMPORT                        R36 K114 [UDim.new]
      845 LOADN                            R37 0
      846 LOADN                            R38 0
      847 CALL                             R36 2 1
      848 SETTABLEKS                       R36 R35 K178 ["PaddingBottom"]
      850 GETIMPORT                        R36 K114 [UDim.new]
      852 LOADN                            R37 0
      853 LOADN                            R38 24
      854 CALL                             R36 2 1
      855 SETTABLEKS                       R36 R35 K179 ["PaddingLeft"]
      857 GETIMPORT                        R36 K114 [UDim.new]
      859 LOADN                            R37 0
      860 LOADN                            R38 24
      861 CALL                             R36 2 1
      862 SETTABLEKS                       R36 R35 K180 ["PaddingRight"]
      864 GETIMPORT                        R36 K114 [UDim.new]
      866 LOADN                            R37 0
      867 LOADN                            R38 0
      868 CALL                             R36 2 1
      869 SETTABLEKS                       R36 R35 K181 ["PaddingTop"]
      871 CALL                             R33 2 1
      872 SETTABLEKS                       R33 R32 K173 ["UIPadding"]
      874 GETUPVAL                         R33 11
      875 GETTABLEKS                       R33 R33 K64 ["createElement"]
      877 LOADK                            R34 K174 ["UIListLayout"]
      878 DUPTABLE                         R35 K188 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      879 GETIMPORT                        R36 K190 [Enum.FillDirection.Horizontal]
      881 SETTABLEKS                       R36 R35 K183 ["FillDirection"]
      883 GETIMPORT                        R36 K192 [Enum.HorizontalAlignment.Right]
      885 SETTABLEKS                       R36 R35 K184 ["HorizontalAlignment"]
      887 GETIMPORT                        R36 K194 [Enum.VerticalAlignment.Center]
      889 SETTABLEKS                       R36 R35 K185 ["VerticalAlignment"]
      891 GETIMPORT                        R36 K195 [Enum.SortOrder.LayoutOrder]
      893 SETTABLEKS                       R36 R35 K186 ["SortOrder"]
      895 GETIMPORT                        R36 K114 [UDim.new]
      897 LOADN                            R37 0
      898 LOADN                            R38 24
      899 CALL                             R36 2 1
      900 SETTABLEKS                       R36 R35 K187 ["Padding"]
      902 CALL                             R33 2 1
      903 SETTABLEKS                       R33 R32 K174 ["UIListLayout"]
      905 MOVE                             R33 R18
      906 JUMPIFNOT                        R33 ; [+62]
      907 GETUPVAL                         R33 11
      908 GETTABLEKS                       R33 R33 K64 ["createElement"]
      910 LOADK                            R34 K155 ["Frame"]
      911 DUPTABLE                         R35 K197 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"] = 3}]
      912 GETIMPORT                        R36 K78 [UDim2.new]
      914 LOADN                            R37 0
      915 LOADN                            R38 160
      916 LOADN                            R39 0
      917 LOADN                            R40 40
      918 CALL                             R36 4 1
      919 SETTABLEKS                       R36 R35 K3 ["Size"]
      921 DUPTABLE                         R36 K199 [{"TextField"}]
      922 GETUPVAL                         R37 11
      923 GETTABLEKS                       R37 R37 K64 ["createElement"]
      925 GETUPVAL                         R38 12
      926 DUPTABLE                         R39 K204 [{["ForceOnTextChange"] = True, ["OnTextChanged"], ["PlaceholderText"], ["Size"], ["Style"], ["Text"]}]
      927 GETTABLEKS                       R40 R0 K133 ["onAnimationIDChanged"]
      929 SETTABLEKS                       R40 R39 K201 ["OnTextChanged"]
      931 GETTABLEKS                       R40 R1 K20 ["Localization"]
      933 LOADK                            R42 K124 ["AssetConfigAnimation"]
      934 LOADK                            R43 K134 ["AnimationID"]
      935 NAMECALL                         R40 R40 K23 ["getText"]
      937 CALL                             R40 3 1
      938 SETTABLEKS                       R40 R39 K202 ["PlaceholderText"]
      940 GETIMPORT                        R40 K78 [UDim2.new]
      942 LOADN                            R41 1
      943 LOADN                            R42 0
      944 LOADN                            R43 1
      945 LOADN                            R44 0
      946 CALL                             R40 4 1
      947 SETTABLEKS                       R40 R39 K3 ["Size"]
      949 JUMPIFNOT                        R20 ; [+2]
      950 LOADK                            R40 K205 ["FilledRoundedRedBorder"]
      951 JUMP                             ; [+1]
      952 LOADK                            R40 K206 ["FilledRoundedBorder"]
      953 SETTABLEKS                       R40 R39 K203 ["Style"]
      955 JUMPIFNOT                        R19 ; [+6]
      956 FASTCALL1                        TOSTRING R19 ; [+3]
      957 MOVE                             R41 R19
      958 GETIMPORT                        R40 K62 [tostring]
      960 CALL                             R40 1 1
      961 JUMPIF                           R40 ; [+1]
      962 LOADNIL                          R40
      963 SETTABLEKS                       R40 R39 K88 ["Text"]
      965 CALL                             R37 2 1
      966 SETTABLEKS                       R37 R36 K198 ["TextField"]
      968 CALL                             R33 3 1
      969 SETTABLEKS                       R33 R32 K175 ["AnimationIdBox"]
      971 MOVE                             R33 R18
      972 JUMPIFNOT                        R33 ; [+48]
      973 NOT                              R33 R14
      974 JUMPIFNOT                        R33 ; [+46]
      975 GETUPVAL                         R33 11
      976 GETTABLEKS                       R33 R33 K64 ["createElement"]
      978 LOADK                            R34 K207 ["TextLabel"]
      979 DUPTABLE                         R35 K213 [{["BackgroundTransparency"] = 1, ["Font"], ["Text"], ["TextColor3"], ["TextSize"], ["Size"], ["TextYAlignment"], ["TextXAlignment"], ["LayoutOrder"] = 2}]
      980 GETUPVAL                         R36 13
      981 GETTABLEKS                       R36 R36 K214 ["FONT"]
      983 SETTABLEKS                       R36 R35 K208 ["Font"]
      985 GETTABLEKS                       R36 R1 K20 ["Localization"]
      987 LOADK                            R38 K124 ["AssetConfigAnimation"]
      988 LOADK                            R39 K125 ["InvalidAnimationID"]
      989 NAMECALL                         R36 R36 K23 ["getText"]
      991 CALL                             R36 3 1
      992 SETTABLEKS                       R36 R35 K88 ["Text"]
      994 GETTABLEKS                       R36 R3 K215 ["redText"]
      996 SETTABLEKS                       R36 R35 K209 ["TextColor3"]
      998 GETUPVAL                         R36 13
      999 GETTABLEKS                       R36 R36 K216 ["FONT_SIZE_MEDIUM"]
     1001 SETTABLEKS                       R36 R35 K210 ["TextSize"]
     1003 GETIMPORT                        R36 K78 [UDim2.new]
     1005 LOADN                            R37 0
     1006 LOADN                            R38 96
     1007 LOADN                            R39 1
     1008 LOADN                            R40 0
     1009 CALL                             R36 4 1
     1010 SETTABLEKS                       R36 R35 K3 ["Size"]
     1012 GETIMPORT                        R36 K217 [Enum.TextYAlignment.Center]
     1014 SETTABLEKS                       R36 R35 K211 ["TextYAlignment"]
     1016 GETIMPORT                        R36 K218 [Enum.TextXAlignment.Center]
     1018 SETTABLEKS                       R36 R35 K212 ["TextXAlignment"]
     1020 CALL                             R33 2 1
     1021 SETTABLEKS                       R33 R32 K119 ["InvalidAnimationLabel"]
     1023 GETUPVAL                         R33 11
     1024 GETTABLEKS                       R33 R33 K64 ["createElement"]
     1026 GETUPVAL                         R34 14
     1027 DUPTABLE                         R35 K222 [{["LayoutOrder"] = 4, ["OnClick"], ["Style"] = "Round", ["Size"], ["Text"]}]
     1028 SETTABLEKS                       R7 R35 K220 ["OnClick"]
     1030 GETIMPORT                        R36 K78 [UDim2.new]
     1032 LOADN                            R37 0
     1033 LOADN                            R38 140
     1034 LOADN                            R39 0
     1035 LOADN                            R40 40
     1036 CALL                             R36 4 1
     1037 SETTABLEKS                       R36 R35 K3 ["Size"]
     1039 GETTABLEKS                       R36 R1 K20 ["Localization"]
     1041 LOADK                            R38 K56 ["General"]
     1042 LOADK                            R39 K165 ["SearchOptionsCancel"]
     1043 NAMECALL                         R36 R36 K23 ["getText"]
     1045 CALL                             R36 3 1
     1046 SETTABLEKS                       R36 R35 K88 ["Text"]
     1048 CALL                             R33 2 1
     1049 SETTABLEKS                       R33 R32 K140 ["CancelButton"]
     1051 GETUPVAL                         R34 15
     1052 CALL                             R34 0 1
     1053 JUMPIFNOT                        R34 ; [+98]
     1054 JUMPIF                           R21 ; [+97]
     1055 GETUPVAL                         R33 11
     1056 GETTABLEKS                       R33 R33 K64 ["createElement"]
     1058 GETUPVAL                         R34 9
     1059 GETTABLEKS                       R34 R34 K65 ["View"]
     1061 DUPTABLE                         R35 K225 [{["tag"] = "size-full", ["LayoutOrder"] = 5, ["Size"]}]
     1062 GETIMPORT                        R36 K78 [UDim2.new]
     1064 LOADN                            R37 0
     1065 LOADN                            R38 140
     1066 LOADN                            R39 0
     1067 LOADN                            R40 40
     1068 CALL                             R36 4 1
     1069 SETTABLEKS                       R36 R35 K3 ["Size"]
     1071 DUPTABLE                         R36 K145 [{"DisabledButton", "HoverOverlay"}]
     1072 GETUPVAL                         R37 11
     1073 GETTABLEKS                       R37 R37 K64 ["createElement"]
     1075 GETUPVAL                         R38 14
     1076 DUPTABLE                         R39 K228 [{["Size"], ["OnClick"], ["Style"] = "RoundPrimary", ["StyleModifier"], ["Text"]}]
     1077 GETIMPORT                        R40 K78 [UDim2.new]
     1079 LOADN                            R41 1
     1080 LOADN                            R42 0
     1081 LOADN                            R43 1
     1082 LOADN                            R44 0
     1083 CALL                             R40 4 1
     1084 SETTABLEKS                       R40 R39 K3 ["Size"]
     1086 DUPCLOSURE                       R40 K229 [PROTO_9]
     1087 SETTABLEKS                       R40 R39 K220 ["OnClick"]
     1089 GETUPVAL                         R40 16
     1090 GETTABLEKS                       R40 R40 K230 ["Disabled"]
     1092 SETTABLEKS                       R40 R39 K227 ["StyleModifier"]
     1094 SETTABLEKS                       R22 R39 K88 ["Text"]
     1096 CALL                             R37 2 1
     1097 SETTABLEKS                       R37 R36 K143 ["DisabledButton"]
     1099 GETTABLEKS                       R38 R1 K154 ["OnPublishButtonHover"]
     1101 JUMPIFNOT                        R38 ; [+45]
     1102 GETUPVAL                         R37 11
     1103 GETTABLEKS                       R37 R37 K64 ["createElement"]
     1105 LOADK                            R38 K155 ["Frame"]
     1106 NEWTABLE                         R39 8 0
     1108 GETIMPORT                        R40 K78 [UDim2.new]
     1110 LOADN                            R41 1
     1111 LOADN                            R42 0
     1112 LOADN                            R43 1
     1113 LOADN                            R44 0
     1114 CALL                             R40 4 1
     1115 SETTABLEKS                       R40 R39 K3 ["Size"]
     1117 GETIMPORT                        R40 K78 [UDim2.new]
     1119 LOADN                            R41 0
     1120 LOADN                            R42 0
     1121 LOADN                            R43 0
     1122 LOADN                            R44 0
     1123 CALL                             R40 4 1
     1124 SETTABLEKS                       R40 R39 K156 ["Position"]
     1126 LOADN                            R40 1
     1127 SETTABLEKS                       R40 R39 K157 ["BackgroundTransparency"]
     1129 GETUPVAL                         R40 11
     1130 GETTABLEKS                       R40 R40 K158 ["Event"]
     1132 GETTABLEKS                       R40 R40 K159 ["MouseEnter"]
     1134 NEWCLOSURE                       R41 P4
     1135 CAPTURE                          VAL R1
     1136 SETTABLE                         R41 R39 R40
     1137 GETUPVAL                         R40 11
     1138 GETTABLEKS                       R40 R40 K158 ["Event"]
     1140 GETTABLEKS                       R40 R40 K160 ["MouseLeave"]
     1142 NEWCLOSURE                       R41 P5
     1143 CAPTURE                          VAL R1
     1144 SETTABLE                         R41 R39 R40
     1145 CALL                             R37 2 1
     1146 JUMPIF                           R37 ; [+1]
     1147 LOADNIL                          R37
     1148 SETTABLEKS                       R37 R36 K144 ["HoverOverlay"]
     1150 CALL                             R33 3 1
     1151 JUMP                             ; [+31]
     1152 GETUPVAL                         R33 11
     1153 GETTABLEKS                       R33 R33 K64 ["createElement"]
     1155 GETUPVAL                         R34 14
     1156 DUPTABLE                         R35 K231 [{["LayoutOrder"] = 5, ["OnClick"], ["Style"] = "RoundPrimary", ["StyleModifier"], ["Size"], ["Text"]}]
     1157 NEWCLOSURE                       R36 P6
     1158 CAPTURE                          REF R21
     1159 CAPTURE                          VAL R6
     1160 CAPTURE                          VAL R0
     1161 SETTABLEKS                       R36 R35 K220 ["OnClick"]
     1163 JUMPIF                           R21 ; [+4]
     1164 GETUPVAL                         R36 16
     1165 GETTABLEKS                       R36 R36 K230 ["Disabled"]
     1167 JUMPIF                           R36 ; [+1]
     1168 LOADNIL                          R36
     1169 SETTABLEKS                       R36 R35 K227 ["StyleModifier"]
     1171 GETIMPORT                        R36 K78 [UDim2.new]
     1173 LOADN                            R37 0
     1174 LOADN                            R38 140
     1175 LOADN                            R39 0
     1176 LOADN                            R40 40
     1177 CALL                             R36 4 1
     1178 SETTABLEKS                       R36 R35 K3 ["Size"]
     1180 SETTABLEKS                       R22 R35 K88 ["Text"]
     1182 CALL                             R33 2 1
     1183 SETTABLEKS                       R33 R32 K139 ["PublishButton"]
     1185 MOVE                             R33 R15
     1186 JUMPIFNOT                        R33 ; [+31]
     1187 GETUPVAL                         R33 11
     1188 GETTABLEKS                       R33 R33 K64 ["createElement"]
     1190 GETUPVAL                         R34 17
     1191 DUPTABLE                         R35 K232 [{["Size"], ["Text"], ["TextSize"], ["Font"], ["onActivated"], ["LayoutOrder"] = 1}]
     1192 GETIMPORT                        R36 K78 [UDim2.new]
     1194 LOADN                            R37 1
     1195 LOADN                            R38 -328
     1196 LOADN                            R39 0
     1197 LOADN                            R40 20
     1198 CALL                             R36 4 1
     1199 SETTABLEKS                       R36 R35 K3 ["Size"]
     1201 SETTABLEKS                       R16 R35 K88 ["Text"]
     1203 GETUPVAL                         R36 13
     1204 GETTABLEKS                       R36 R36 K216 ["FONT_SIZE_MEDIUM"]
     1206 SETTABLEKS                       R36 R35 K210 ["TextSize"]
     1208 GETUPVAL                         R36 13
     1209 GETTABLEKS                       R36 R36 K214 ["FONT"]
     1211 SETTABLEKS                       R36 R35 K208 ["Font"]
     1213 GETTABLEKS                       R36 R0 K92 ["onFlowButtonActivated"]
     1215 SETTABLEKS                       R36 R35 K90 ["onActivated"]
     1217 CALL                             R33 2 1
     1218 SETTABLEKS                       R33 R32 K176 ["ToggleOverrideButton"]
     1220 CALL                             R29 3 -1
     1221 CLOSEUPVALS                      R21
     1222 RETURN                           R29 -1

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
