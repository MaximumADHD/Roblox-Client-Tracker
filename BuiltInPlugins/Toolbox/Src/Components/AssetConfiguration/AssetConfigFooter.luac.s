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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["state"]
        4 GETTABLEKS                       R1 R2 K1 ["animationId"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+22]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+12]
        5 GETUPVAL                         R0 2
        6 DUPTABLE                         R2 K1 [{"disablePublish"}]
        7 LOADB                            R3 1
        8 SETTABLEKS                       R3 R2 K0 ["disablePublish"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U2
       13 NAMECALL                         R0 R0 K2 ["setState"]
       15 CALL                             R0 3 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 3
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R2 R3 K3 ["state"]
       21 GETTABLEKS                       R1 R2 K4 ["animationId"]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

PROTO_11:
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
      269 JUMPIFNOT                        R29 ; [+253]
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
      310 LOADK                            R34 K68 ["row align-y-center gap-small padding-x-medium flex-x-between"]
      311 SETTABLEKS                       R34 R33 K66 ["tag"]
      313 SETTABLEKS                       R4 R33 K3 ["Size"]
      315 SETTABLEKS                       R5 R33 K4 ["LayoutOrder"]
      317 DUPTABLE                         R34 K71 [{"LeftContent", "ButtonsSection"}]
      318 JUMPIFNOT                        R24 ; [+86]
      319 GETUPVAL                         R36 8
      320 GETTABLEKS                       R35 R36 K64 ["createElement"]
      322 GETUPVAL                         R37 9
      323 GETTABLEKS                       R36 R37 K65 ["View"]
      325 DUPTABLE                         R37 K72 [{"tag", "LayoutOrder"}]
      326 LOADK                            R38 K73 ["row align-y-center"]
      327 SETTABLEKS                       R38 R37 K66 ["tag"]
      329 NAMECALL                         R38 R29 K74 ["getNextOrder"]
      331 CALL                             R38 1 1
      332 SETTABLEKS                       R38 R37 K4 ["LayoutOrder"]
      334 DUPTABLE                         R38 K77 [{"AssetProgressLabel", "AssetProgressBar"}]
      335 GETUPVAL                         R40 8
      336 GETTABLEKS                       R39 R40 K64 ["createElement"]
      338 GETUPVAL                         R41 9
      339 GETTABLEKS                       R40 R41 K78 ["Text"]
      341 DUPTABLE                         R41 K79 [{"tag", "Text", "Size", "LayoutOrder"}]
      342 LOADK                            R42 K80 ["text-title-small bold content-emphasis auto-y padding-right-medium"]
      343 SETTABLEKS                       R42 R41 K66 ["tag"]
      345 SETTABLEKS                       R28 R41 K78 ["Text"]
      347 GETIMPORT                        R42 K82 [UDim2.new]
      349 LOADN                            R43 0
      350 LOADN                            R44 100
      351 LOADN                            R45 1
      352 LOADN                            R46 0
      353 CALL                             R42 4 1
      354 SETTABLEKS                       R42 R41 K3 ["Size"]
      356 NAMECALL                         R42 R29 K74 ["getNextOrder"]
      358 CALL                             R42 1 1
      359 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      361 CALL                             R39 2 1
      362 SETTABLEKS                       R39 R38 K75 ["AssetProgressLabel"]
      364 GETUPVAL                         R40 8
      365 GETTABLEKS                       R39 R40 K64 ["createElement"]
      367 GETUPVAL                         R41 9
      368 GETTABLEKS                       R40 R41 K83 ["Progress"]
      370 DUPTABLE                         R41 K88 [{"value", "size", "shape", "width", "LayoutOrder"}]
      371 ORK                              R42 R25 K89 [0]
      372 SETTABLEKS                       R42 R41 K84 ["value"]
      374 GETUPVAL                         R44 10
      375 GETTABLEKS                       R43 R44 K90 ["ProgressSize"]
      377 GETTABLEKS                       R42 R43 K91 ["Medium"]
      379 SETTABLEKS                       R42 R41 K85 ["size"]
      381 GETUPVAL                         R44 10
      382 GETTABLEKS                       R43 R44 K92 ["ProgressShape"]
      384 GETTABLEKS                       R42 R43 K93 ["Bar"]
      386 SETTABLEKS                       R42 R41 K86 ["shape"]
      388 GETIMPORT                        R42 K95 [UDim.new]
      390 LOADN                            R43 0
      391 LOADN                            R44 220
      392 CALL                             R42 2 1
      393 SETTABLEKS                       R42 R41 K87 ["width"]
      395 NAMECALL                         R42 R29 K74 ["getNextOrder"]
      397 CALL                             R42 1 1
      398 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      400 CALL                             R39 2 1
      401 SETTABLEKS                       R39 R38 K76 ["AssetProgressBar"]
      403 CALL                             R35 3 1
      404 JUMPIF                           R35 ; [+16]
      405 GETUPVAL                         R36 8
      406 GETTABLEKS                       R35 R36 K64 ["createElement"]
      408 GETUPVAL                         R37 9
      409 GETTABLEKS                       R36 R37 K65 ["View"]
      411 DUPTABLE                         R37 K72 [{"tag", "LayoutOrder"}]
      412 LOADK                            R38 K96 ["size-0-0"]
      413 SETTABLEKS                       R38 R37 K66 ["tag"]
      415 NAMECALL                         R38 R29 K74 ["getNextOrder"]
      417 CALL                             R38 1 1
      418 SETTABLEKS                       R38 R37 K4 ["LayoutOrder"]
      420 CALL                             R35 2 1
      421 SETTABLEKS                       R35 R34 K69 ["LeftContent"]
      423 GETUPVAL                         R36 8
      424 GETTABLEKS                       R35 R36 K64 ["createElement"]
      426 GETUPVAL                         R37 9
      427 GETTABLEKS                       R36 R37 K65 ["View"]
      429 DUPTABLE                         R37 K72 [{"tag", "LayoutOrder"}]
      430 LOADK                            R38 K97 ["row align-x-right align-y-center gap-small auto-xy"]
      431 SETTABLEKS                       R38 R37 K66 ["tag"]
      433 NAMECALL                         R38 R29 K74 ["getNextOrder"]
      435 CALL                             R38 1 1
      436 SETTABLEKS                       R38 R37 K4 ["LayoutOrder"]
      438 DUPTABLE                         R38 K100 [{"PublishButton", "CancelButton"}]
      439 GETUPVAL                         R40 8
      440 GETTABLEKS                       R39 R40 K64 ["createElement"]
      442 GETUPVAL                         R41 9
      443 GETTABLEKS                       R40 R41 K101 ["Button"]
      445 DUPTABLE                         R41 K106 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
      446 SETTABLEKS                       R30 R41 K102 ["text"]
      448 GETUPVAL                         R44 10
      449 GETTABLEKS                       R43 R44 K107 ["ButtonVariant"]
      451 GETTABLEKS                       R42 R43 K108 ["Emphasis"]
      453 SETTABLEKS                       R42 R41 K103 ["variant"]
      455 GETTABLEKS                       R42 R0 K109 ["onPublishActivated"]
      457 SETTABLEKS                       R42 R41 K104 ["onActivated"]
      459 NOT                              R42 R21
      460 SETTABLEKS                       R42 R41 K105 ["isDisabled"]
      462 GETUPVAL                         R44 10
      463 GETTABLEKS                       R43 R44 K110 ["InputSize"]
      465 GETTABLEKS                       R42 R43 K111 ["Small"]
      467 SETTABLEKS                       R42 R41 K85 ["size"]
      469 NAMECALL                         R42 R29 K74 ["getNextOrder"]
      471 CALL                             R42 1 1
      472 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      474 CALL                             R39 2 1
      475 SETTABLEKS                       R39 R38 K98 ["PublishButton"]
      477 GETUPVAL                         R40 8
      478 GETTABLEKS                       R39 R40 K64 ["createElement"]
      480 GETUPVAL                         R41 9
      481 GETTABLEKS                       R40 R41 K101 ["Button"]
      483 DUPTABLE                         R41 K112 [{"text", "variant", "onActivated", "size", "LayoutOrder"}]
      484 GETTABLEKS                       R42 R1 K20 ["Localization"]
      486 LOADK                            R44 K56 ["General"]
      487 LOADK                            R45 K113 ["SearchOptionsCancel"]
      488 NAMECALL                         R42 R42 K23 ["getText"]
      490 CALL                             R42 3 1
      491 SETTABLEKS                       R42 R41 K102 ["text"]
      493 GETUPVAL                         R44 10
      494 GETTABLEKS                       R43 R44 K107 ["ButtonVariant"]
      496 GETTABLEKS                       R42 R43 K114 ["Standard"]
      498 SETTABLEKS                       R42 R41 K103 ["variant"]
      500 SETTABLEKS                       R7 R41 K104 ["onActivated"]
      502 GETUPVAL                         R44 10
      503 GETTABLEKS                       R43 R44 K110 ["InputSize"]
      505 GETTABLEKS                       R42 R43 K111 ["Small"]
      507 SETTABLEKS                       R42 R41 K85 ["size"]
      509 NAMECALL                         R42 R29 K74 ["getNextOrder"]
      511 CALL                             R42 1 1
      512 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      514 CALL                             R39 2 1
      515 SETTABLEKS                       R39 R38 K99 ["CancelButton"]
      517 CALL                             R35 3 1
      518 SETTABLEKS                       R35 R34 K70 ["ButtonsSection"]
      520 CALL                             R31 3 -1
      521 CLOSEUPVALS                      R21
      522 RETURN                           R31 -1
      523 GETUPVAL                         R30 11
      524 GETTABLEKS                       R29 R30 K64 ["createElement"]
      526 LOADK                            R30 K115 ["Frame"]
      527 DUPTABLE                         R31 K120 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderColor3", "BorderSizePixel", "LayoutOrder"}]
      528 SETTABLEKS                       R4 R31 K3 ["Size"]
      530 LOADN                            R32 0
      531 SETTABLEKS                       R32 R31 K116 ["BackgroundTransparency"]
      533 GETTABLEKS                       R32 R8 K121 ["backgroundColor"]
      535 SETTABLEKS                       R32 R31 K117 ["BackgroundColor3"]
      537 GETTABLEKS                       R32 R8 K122 ["borderColor"]
      539 SETTABLEKS                       R32 R31 K118 ["BorderColor3"]
      541 LOADN                            R32 1
      542 SETTABLEKS                       R32 R31 K119 ["BorderSizePixel"]
      544 SETTABLEKS                       R5 R31 K4 ["LayoutOrder"]
      546 DUPTABLE                         R32 K128 [{"UIPadding", "UIListLayout", "AnimationIdBox", "InvalidAnimationLabel", "CancelButton", "PublishButton", "ToggleOverrideButton"}]
      547 GETUPVAL                         R34 11
      548 GETTABLEKS                       R33 R34 K64 ["createElement"]
      550 LOADK                            R34 K123 ["UIPadding"]
      551 DUPTABLE                         R35 K133 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      552 GETIMPORT                        R36 K95 [UDim.new]
      554 LOADN                            R37 0
      555 LOADN                            R38 0
      556 CALL                             R36 2 1
      557 SETTABLEKS                       R36 R35 K129 ["PaddingBottom"]
      559 GETIMPORT                        R36 K95 [UDim.new]
      561 LOADN                            R37 0
      562 LOADN                            R38 24
      563 CALL                             R36 2 1
      564 SETTABLEKS                       R36 R35 K130 ["PaddingLeft"]
      566 GETIMPORT                        R36 K95 [UDim.new]
      568 LOADN                            R37 0
      569 LOADN                            R38 24
      570 CALL                             R36 2 1
      571 SETTABLEKS                       R36 R35 K131 ["PaddingRight"]
      573 GETIMPORT                        R36 K95 [UDim.new]
      575 LOADN                            R37 0
      576 LOADN                            R38 0
      577 CALL                             R36 2 1
      578 SETTABLEKS                       R36 R35 K132 ["PaddingTop"]
      580 CALL                             R33 2 1
      581 SETTABLEKS                       R33 R32 K123 ["UIPadding"]
      583 GETUPVAL                         R34 11
      584 GETTABLEKS                       R33 R34 K64 ["createElement"]
      586 LOADK                            R34 K124 ["UIListLayout"]
      587 DUPTABLE                         R35 K139 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      588 GETIMPORT                        R36 K141 [Enum.FillDirection.Horizontal]
      590 SETTABLEKS                       R36 R35 K134 ["FillDirection"]
      592 GETIMPORT                        R36 K143 [Enum.HorizontalAlignment.Right]
      594 SETTABLEKS                       R36 R35 K135 ["HorizontalAlignment"]
      596 GETIMPORT                        R36 K145 [Enum.VerticalAlignment.Center]
      598 SETTABLEKS                       R36 R35 K136 ["VerticalAlignment"]
      600 GETIMPORT                        R36 K146 [Enum.SortOrder.LayoutOrder]
      602 SETTABLEKS                       R36 R35 K137 ["SortOrder"]
      604 GETIMPORT                        R36 K95 [UDim.new]
      606 LOADN                            R37 0
      607 LOADN                            R38 24
      608 CALL                             R36 2 1
      609 SETTABLEKS                       R36 R35 K138 ["Padding"]
      611 CALL                             R33 2 1
      612 SETTABLEKS                       R33 R32 K124 ["UIListLayout"]
      614 MOVE                             R33 R18
      615 JUMPIFNOT                        R33 ; [+74]
      616 GETUPVAL                         R34 11
      617 GETTABLEKS                       R33 R34 K64 ["createElement"]
      619 LOADK                            R34 K115 ["Frame"]
      620 DUPTABLE                         R35 K147 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
      621 GETIMPORT                        R36 K82 [UDim2.new]
      623 LOADN                            R37 0
      624 LOADN                            R38 160
      625 LOADN                            R39 0
      626 LOADN                            R40 40
      627 CALL                             R36 4 1
      628 SETTABLEKS                       R36 R35 K3 ["Size"]
      630 LOADN                            R36 1
      631 SETTABLEKS                       R36 R35 K116 ["BackgroundTransparency"]
      633 LOADN                            R36 0
      634 SETTABLEKS                       R36 R35 K119 ["BorderSizePixel"]
      636 LOADN                            R36 3
      637 SETTABLEKS                       R36 R35 K4 ["LayoutOrder"]
      639 DUPTABLE                         R36 K149 [{"TextField"}]
      640 GETUPVAL                         R38 11
      641 GETTABLEKS                       R37 R38 K64 ["createElement"]
      643 GETUPVAL                         R38 12
      644 DUPTABLE                         R39 K154 [{"ForceOnTextChange", "OnTextChanged", "PlaceholderText", "Size", "Style", "Text"}]
      645 LOADB                            R40 1
      646 SETTABLEKS                       R40 R39 K150 ["ForceOnTextChange"]
      648 GETTABLEKS                       R40 R0 K155 ["onAnimationIDChanged"]
      650 SETTABLEKS                       R40 R39 K151 ["OnTextChanged"]
      652 GETTABLEKS                       R40 R1 K20 ["Localization"]
      654 LOADK                            R42 K156 ["AssetConfigAnimation"]
      655 LOADK                            R43 K157 ["AnimationID"]
      656 NAMECALL                         R40 R40 K23 ["getText"]
      658 CALL                             R40 3 1
      659 SETTABLEKS                       R40 R39 K152 ["PlaceholderText"]
      661 GETIMPORT                        R40 K82 [UDim2.new]
      663 LOADN                            R41 1
      664 LOADN                            R42 0
      665 LOADN                            R43 1
      666 LOADN                            R44 0
      667 CALL                             R40 4 1
      668 SETTABLEKS                       R40 R39 K3 ["Size"]
      670 JUMPIFNOT                        R20 ; [+2]
      671 LOADK                            R40 K158 ["FilledRoundedRedBorder"]
      672 JUMP                             ; [+1]
      673 LOADK                            R40 K159 ["FilledRoundedBorder"]
      674 SETTABLEKS                       R40 R39 K153 ["Style"]
      676 JUMPIFNOT                        R19 ; [+6]
      677 FASTCALL1                        TOSTRING R19 ; [+3]
      678 MOVE                             R41 R19
      679 GETIMPORT                        R40 K62 [tostring]
      681 CALL                             R40 1 1
      682 JUMPIF                           R40 ; [+1]
      683 LOADNIL                          R40
      684 SETTABLEKS                       R40 R39 K78 ["Text"]
      686 CALL                             R37 2 1
      687 SETTABLEKS                       R37 R36 K148 ["TextField"]
      689 CALL                             R33 3 1
      690 SETTABLEKS                       R33 R32 K125 ["AnimationIdBox"]
      692 MOVE                             R33 R18
      693 JUMPIFNOT                        R33 ; [+54]
      694 NOT                              R33 R14
      695 JUMPIFNOT                        R33 ; [+52]
      696 GETUPVAL                         R34 11
      697 GETTABLEKS                       R33 R34 K64 ["createElement"]
      699 LOADK                            R34 K160 ["TextLabel"]
      700 DUPTABLE                         R35 K166 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "TextXAlignment", "LayoutOrder"}]
      701 LOADN                            R36 1
      702 SETTABLEKS                       R36 R35 K116 ["BackgroundTransparency"]
      704 GETUPVAL                         R37 13
      705 GETTABLEKS                       R36 R37 K167 ["FONT"]
      707 SETTABLEKS                       R36 R35 K161 ["Font"]
      709 GETTABLEKS                       R36 R1 K20 ["Localization"]
      711 LOADK                            R38 K156 ["AssetConfigAnimation"]
      712 LOADK                            R39 K168 ["InvalidAnimationID"]
      713 NAMECALL                         R36 R36 K23 ["getText"]
      715 CALL                             R36 3 1
      716 SETTABLEKS                       R36 R35 K78 ["Text"]
      718 GETTABLEKS                       R36 R3 K169 ["redText"]
      720 SETTABLEKS                       R36 R35 K162 ["TextColor3"]
      722 GETUPVAL                         R37 13
      723 GETTABLEKS                       R36 R37 K170 ["FONT_SIZE_MEDIUM"]
      725 SETTABLEKS                       R36 R35 K163 ["TextSize"]
      727 GETIMPORT                        R36 K82 [UDim2.new]
      729 LOADN                            R37 0
      730 LOADN                            R38 96
      731 LOADN                            R39 1
      732 LOADN                            R40 0
      733 CALL                             R36 4 1
      734 SETTABLEKS                       R36 R35 K3 ["Size"]
      736 GETIMPORT                        R36 K171 [Enum.TextYAlignment.Center]
      738 SETTABLEKS                       R36 R35 K164 ["TextYAlignment"]
      740 GETIMPORT                        R36 K172 [Enum.TextXAlignment.Center]
      742 SETTABLEKS                       R36 R35 K165 ["TextXAlignment"]
      744 LOADN                            R36 2
      745 SETTABLEKS                       R36 R35 K4 ["LayoutOrder"]
      747 CALL                             R33 2 1
      748 SETTABLEKS                       R33 R32 K126 ["InvalidAnimationLabel"]
      750 GETUPVAL                         R34 11
      751 GETTABLEKS                       R33 R34 K64 ["createElement"]
      753 GETUPVAL                         R34 14
      754 DUPTABLE                         R35 K174 [{"LayoutOrder", "OnClick", "Style", "Size", "Text"}]
      755 LOADN                            R36 4
      756 SETTABLEKS                       R36 R35 K4 ["LayoutOrder"]
      758 SETTABLEKS                       R7 R35 K173 ["OnClick"]
      760 LOADK                            R36 K175 ["Round"]
      761 SETTABLEKS                       R36 R35 K153 ["Style"]
      763 GETIMPORT                        R36 K82 [UDim2.new]
      765 LOADN                            R37 0
      766 LOADN                            R38 140
      767 LOADN                            R39 0
      768 LOADN                            R40 40
      769 CALL                             R36 4 1
      770 SETTABLEKS                       R36 R35 K3 ["Size"]
      772 GETTABLEKS                       R36 R1 K20 ["Localization"]
      774 LOADK                            R38 K56 ["General"]
      775 LOADK                            R39 K113 ["SearchOptionsCancel"]
      776 NAMECALL                         R36 R36 K23 ["getText"]
      778 CALL                             R36 3 1
      779 SETTABLEKS                       R36 R35 K78 ["Text"]
      781 CALL                             R33 2 1
      782 SETTABLEKS                       R33 R32 K99 ["CancelButton"]
      784 GETUPVAL                         R34 15
      785 CALL                             R34 0 1
      786 JUMPIFNOT                        R34 ; [+107]
      787 JUMPIF                           R21 ; [+106]
      788 GETUPVAL                         R34 11
      789 GETTABLEKS                       R33 R34 K64 ["createElement"]
      791 GETUPVAL                         R35 9
      792 GETTABLEKS                       R34 R35 K65 ["View"]
      794 DUPTABLE                         R35 K176 [{"tag", "LayoutOrder", "Size"}]
      795 LOADK                            R36 K177 ["size-full"]
      796 SETTABLEKS                       R36 R35 K66 ["tag"]
      798 LOADN                            R36 5
      799 SETTABLEKS                       R36 R35 K4 ["LayoutOrder"]
      801 GETIMPORT                        R36 K82 [UDim2.new]
      803 LOADN                            R37 0
      804 LOADN                            R38 140
      805 LOADN                            R39 0
      806 LOADN                            R40 40
      807 CALL                             R36 4 1
      808 SETTABLEKS                       R36 R35 K3 ["Size"]
      810 DUPTABLE                         R36 K180 [{"DisabledButton", "HoverOverlay"}]
      811 GETUPVAL                         R38 11
      812 GETTABLEKS                       R37 R38 K64 ["createElement"]
      814 GETUPVAL                         R38 14
      815 DUPTABLE                         R39 K182 [{"Size", "OnClick", "Style", "StyleModifier", "Text"}]
      816 GETIMPORT                        R40 K82 [UDim2.new]
      818 LOADN                            R41 1
      819 LOADN                            R42 0
      820 LOADN                            R43 1
      821 LOADN                            R44 0
      822 CALL                             R40 4 1
      823 SETTABLEKS                       R40 R39 K3 ["Size"]
      825 DUPCLOSURE                       R40 K183 [PROTO_6]
      826 SETTABLEKS                       R40 R39 K173 ["OnClick"]
      828 LOADK                            R40 K184 ["RoundPrimary"]
      829 SETTABLEKS                       R40 R39 K153 ["Style"]
      831 GETUPVAL                         R41 16
      832 GETTABLEKS                       R40 R41 K185 ["Disabled"]
      834 SETTABLEKS                       R40 R39 K181 ["StyleModifier"]
      836 SETTABLEKS                       R22 R39 K78 ["Text"]
      838 CALL                             R37 2 1
      839 SETTABLEKS                       R37 R36 K178 ["DisabledButton"]
      841 GETTABLEKS                       R38 R1 K186 ["OnPublishButtonHover"]
      843 JUMPIFNOT                        R38 ; [+45]
      844 GETUPVAL                         R38 11
      845 GETTABLEKS                       R37 R38 K64 ["createElement"]
      847 LOADK                            R38 K115 ["Frame"]
      848 NEWTABLE                         R39 8 0
      850 GETIMPORT                        R40 K82 [UDim2.new]
      852 LOADN                            R41 1
      853 LOADN                            R42 0
      854 LOADN                            R43 1
      855 LOADN                            R44 0
      856 CALL                             R40 4 1
      857 SETTABLEKS                       R40 R39 K3 ["Size"]
      859 GETIMPORT                        R40 K82 [UDim2.new]
      861 LOADN                            R41 0
      862 LOADN                            R42 0
      863 LOADN                            R43 0
      864 LOADN                            R44 0
      865 CALL                             R40 4 1
      866 SETTABLEKS                       R40 R39 K187 ["Position"]
      868 LOADN                            R40 1
      869 SETTABLEKS                       R40 R39 K116 ["BackgroundTransparency"]
      871 GETUPVAL                         R42 11
      872 GETTABLEKS                       R41 R42 K188 ["Event"]
      874 GETTABLEKS                       R40 R41 K189 ["MouseEnter"]
      876 NEWCLOSURE                       R41 P1
      877 CAPTURE                          VAL R1
      878 SETTABLE                         R41 R39 R40
      879 GETUPVAL                         R42 11
      880 GETTABLEKS                       R41 R42 K188 ["Event"]
      882 GETTABLEKS                       R40 R41 K190 ["MouseLeave"]
      884 NEWCLOSURE                       R41 P2
      885 CAPTURE                          VAL R1
      886 SETTABLE                         R41 R39 R40
      887 CALL                             R37 2 1
      888 JUMPIF                           R37 ; [+1]
      889 LOADNIL                          R37
      890 SETTABLEKS                       R37 R36 K179 ["HoverOverlay"]
      892 CALL                             R33 3 1
      893 JUMP                             ; [+38]
      894 GETUPVAL                         R34 11
      895 GETTABLEKS                       R33 R34 K64 ["createElement"]
      897 GETUPVAL                         R34 14
      898 DUPTABLE                         R35 K191 [{"LayoutOrder", "OnClick", "Style", "StyleModifier", "Size", "Text"}]
      899 LOADN                            R36 5
      900 SETTABLEKS                       R36 R35 K4 ["LayoutOrder"]
      902 NEWCLOSURE                       R36 P3
      903 CAPTURE                          REF R21
      904 CAPTURE                          UPVAL U17
      905 CAPTURE                          VAL R0
      906 CAPTURE                          VAL R6
      907 SETTABLEKS                       R36 R35 K173 ["OnClick"]
      909 LOADK                            R36 K184 ["RoundPrimary"]
      910 SETTABLEKS                       R36 R35 K153 ["Style"]
      912 JUMPIF                           R21 ; [+4]
      913 GETUPVAL                         R37 16
      914 GETTABLEKS                       R36 R37 K185 ["Disabled"]
      916 JUMPIF                           R36 ; [+1]
      917 LOADNIL                          R36
      918 SETTABLEKS                       R36 R35 K181 ["StyleModifier"]
      920 GETIMPORT                        R36 K82 [UDim2.new]
      922 LOADN                            R37 0
      923 LOADN                            R38 140
      924 LOADN                            R39 0
      925 LOADN                            R40 40
      926 CALL                             R36 4 1
      927 SETTABLEKS                       R36 R35 K3 ["Size"]
      929 SETTABLEKS                       R22 R35 K78 ["Text"]
      931 CALL                             R33 2 1
      932 SETTABLEKS                       R33 R32 K98 ["PublishButton"]
      934 MOVE                             R33 R15
      935 JUMPIFNOT                        R33 ; [+34]
      936 GETUPVAL                         R34 11
      937 GETTABLEKS                       R33 R34 K64 ["createElement"]
      939 GETUPVAL                         R34 18
      940 DUPTABLE                         R35 K192 [{"Size", "Text", "TextSize", "Font", "onActivated", "LayoutOrder"}]
      941 GETIMPORT                        R36 K82 [UDim2.new]
      943 LOADN                            R37 1
      944 LOADN                            R38 184
      945 LOADN                            R39 0
      946 LOADN                            R40 20
      947 CALL                             R36 4 1
      948 SETTABLEKS                       R36 R35 K3 ["Size"]
      950 SETTABLEKS                       R16 R35 K78 ["Text"]
      952 GETUPVAL                         R37 13
      953 GETTABLEKS                       R36 R37 K170 ["FONT_SIZE_MEDIUM"]
      955 SETTABLEKS                       R36 R35 K163 ["TextSize"]
      957 GETUPVAL                         R37 13
      958 GETTABLEKS                       R36 R37 K167 ["FONT"]
      960 SETTABLEKS                       R36 R35 K161 ["Font"]
      962 GETTABLEKS                       R36 R0 K193 ["onFlowButtonActivated"]
      964 SETTABLEKS                       R36 R35 K104 ["onActivated"]
      966 LOADN                            R36 1
      967 SETTABLEKS                       R36 R35 K4 ["LayoutOrder"]
      969 CALL                             R33 2 1
      970 SETTABLEKS                       R33 R32 K127 ["ToggleOverrideButton"]
      972 CALL                             R29 3 -1
      973 CLOSEUPVALS                      R21
      974 RETURN                           R29 -1

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_15:
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
      184 GETIMPORT                        R33 K5 [require]
      186 GETTABLEKS                       R36 R0 K12 ["Src"]
      188 GETTABLEKS                       R35 R36 K35 ["Flags"]
      190 GETTABLEKS                       R34 R35 K46 ["getFFlagToolboxFixPublishDisabled"]
      192 CALL                             R33 1 1
      193 GETIMPORT                        R34 K49 [utf8.char]
      195 LOADK                            R35 K50 [57346]
      196 CALL                             R34 1 1
      197 DUPCLOSURE                       R35 K51 [PROTO_3]
      198 SETTABLEKS                       R35 R31 K52 ["init"]
      200 DUPCLOSURE                       R35 K53 [PROTO_4]
      201 CAPTURE                          VAL R32
      202 CAPTURE                          VAL R14
      203 SETTABLEKS                       R35 R31 K54 ["shouldUpdate"]
      205 DUPCLOSURE                       R35 K55 [PROTO_5]
      206 CAPTURE                          VAL R34
      207 SETTABLEKS                       R35 R31 K56 ["getUploadFeeWithRobuxIcon"]
      209 DUPCLOSURE                       R35 K57 [PROTO_11]
      210 CAPTURE                          VAL R32
      211 CAPTURE                          VAL R11
      212 CAPTURE                          VAL R20
      213 CAPTURE                          VAL R12
      214 CAPTURE                          VAL R13
      215 CAPTURE                          VAL R30
      216 CAPTURE                          VAL R10
      217 CAPTURE                          VAL R34
      218 CAPTURE                          VAL R3
      219 CAPTURE                          VAL R26
      220 CAPTURE                          VAL R27
      221 CAPTURE                          VAL R2
      222 CAPTURE                          VAL R19
      223 CAPTURE                          VAL R9
      224 CAPTURE                          VAL R18
      225 CAPTURE                          VAL R28
      226 CAPTURE                          VAL R15
      227 CAPTURE                          VAL R33
      228 CAPTURE                          VAL R25
      229 SETTABLEKS                       R35 R31 K58 ["render"]
      231 DUPCLOSURE                       R35 K59 [PROTO_12]
      232 CAPTURE                          VAL R29
      233 DUPCLOSURE                       R36 K60 [PROTO_15]
      234 CAPTURE                          VAL R22
      235 CAPTURE                          VAL R23
      236 MOVE                             R37 R6
      237 DUPTABLE                         R38 K64 [{"Stylizer", "Localization", "Network"}]
      238 GETTABLEKS                       R39 R5 K61 ["Stylizer"]
      240 SETTABLEKS                       R39 R38 K61 ["Stylizer"]
      242 GETTABLEKS                       R39 R5 K62 ["Localization"]
      244 SETTABLEKS                       R39 R38 K62 ["Localization"]
      246 SETTABLEKS                       R7 R38 K63 ["Network"]
      248 CALL                             R37 1 1
      249 MOVE                             R38 R31
      250 CALL                             R37 1 1
      251 MOVE                             R31 R37
      252 GETTABLEKS                       R37 R4 K65 ["connect"]
      254 MOVE                             R38 R35
      255 MOVE                             R39 R36
      256 CALL                             R37 2 1
      257 MOVE                             R38 R31
      258 CALL                             R37 1 -1
      259 RETURN                           R37 -1
