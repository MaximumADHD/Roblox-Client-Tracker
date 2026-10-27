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
        1 GETTABLEKS                       R1 R1 K0 ["normalizeAnimationAssetIdInput"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 MOVE                             R0 R1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["props"]
        9 GETTABLEKS                       R1 R1 K2 ["validateAnimation"]
       11 JUMPIFNOT                        R1 ; [+18]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K1 ["props"]
       15 GETTABLEKS                       R1 R1 K2 ["validateAnimation"]
       17 DUPTABLE                         R2 K5 [{"networkInterface", "assetId"}]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K1 ["props"]
       21 GETTABLEKS                       R3 R3 K6 ["Network"]
       23 GETTABLEKS                       R3 R3 K3 ["networkInterface"]
       25 SETTABLEKS                       R3 R2 K3 ["networkInterface"]
       27 SETTABLEKS                       R0 R2 K4 ["assetId"]
       29 CALL                             R1 1 0
       30 GETUPVAL                         R1 1
       31 DUPTABLE                         R3 K8 [{"animationId"}]
       32 SETTABLEKS                       R0 R3 K7 ["animationId"]
       34 NAMECALL                         R1 R1 K9 ["setState"]
       36 CALL                             R1 2 0
       37 RETURN                           R0 0

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
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R0 K8 ["onAnimationIDChanged"]
       16 NEWCLOSURE                       R2 P2
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R2 R0 K9 ["onPublishActivated"]
       20 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+6]
        3 GETTABLEKS                       R2 R0 K1 ["props"]
        5 GETTABLEKS                       R2 R2 K2 ["uploadFee"]
        7 ORK                              R1 R2 K0 [0]
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K3 ["getSubmitTotal"]
       12 GETTABLEKS                       R2 R0 K1 ["props"]
       14 GETTABLEKS                       R2 R2 K2 ["uploadFee"]
       16 GETTABLEKS                       R3 R0 K1 ["props"]
       18 GETTABLEKS                       R3 R3 K4 ["publishOnApprovalFee"]
       20 CALL                             R1 2 -1
       21 RETURN                           R1 -1

PROTO_6:
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

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnPublishButtonHover"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnPublishButtonHover"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_10:
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
       51 GETUPVAL                         R16 2
       52 CALL                             R16 0 1
       53 JUMPIFNOT                        R16 ; [+5]
       54 GETUPVAL                         R16 3
       55 GETTABLEKS                       R16 R16 K19 ["isAvatarItemUpdateSupported"]
       57 MOVE                             R17 R11
       58 CALL                             R16 1 1
       59 OR                               R17 R15 R16
       60 LOADNIL                          R18
       61 GETUPVAL                         R19 4
       62 MOVE                             R21 R12
       63 NAMECALL                         R19 R19 K20 ["isOverride"]
       65 CALL                             R19 2 1
       66 JUMPIFNOT                        R19 ; [+9]
       67 GETTABLEKS                       R19 R1 K21 ["Localization"]
       69 LOADK                            R21 K22 ["AssetConfigFooter"]
       70 LOADK                            R22 K23 ["NewAsset"]
       71 NAMECALL                         R19 R19 K24 ["getText"]
       73 CALL                             R19 3 1
       74 MOVE                             R18 R19
       75 JUMP                             ; [+8]
       76 GETTABLEKS                       R19 R1 K21 ["Localization"]
       78 LOADK                            R21 K22 ["AssetConfigFooter"]
       79 LOADK                            R22 K25 ["Override"]
       80 NAMECALL                         R19 R19 K24 ["getText"]
       82 CALL                             R19 3 1
       83 MOVE                             R18 R19
       84 MOVE                             R20 R16
       85 JUMPIFNOT                        R20 ; [+10]
       86 GETUPVAL                         R21 4
       87 MOVE                             R23 R12
       88 NAMECALL                         R21 R21 K20 ["isOverride"]
       90 CALL                             R21 2 1
       91 NOT                              R20 R21
       92 JUMPIFNOT                        R20 ; [+3]
       93 GETTABLEKS                       R21 R1 K26 ["assetTypeValidationSucceeded"]
       95 NOT                              R20 R21
       96 NOT                              R19 R20
       97 LOADB                            R20 0
       98 GETIMPORT                        R21 K30 [Enum.AssetType.Animation]
      100 JUMPIFNOTEQ                      R11 R21 ; [+6]
      102 GETUPVAL                         R20 4
      103 MOVE                             R22 R12
      104 NAMECALL                         R20 R20 K20 ["isOverride"]
      106 CALL                             R20 2 1
      107 MOVE                             R21 R20
      108 JUMPIFNOT                        R21 ; [+11]
      109 GETUPVAL                         R22 5
      110 GETTABLEKS                       R22 R22 K31 ["FLOW_TYPE"]
      112 GETTABLEKS                       R22 R22 K32 ["DOWNLOAD_FLOW"]
      114 GETTABLEKS                       R23 R1 K9 ["screenFlowType"]
      116 JUMPIFEQ                         R22 R23 ; [+2]
      118 LOADB                            R21 0 +1
      119 LOADB                            R21 1
      120 GETTABLEKS                       R22 R1 K33 ["AssetId"]
      122 JUMPIF                           R22 ; [+2]
      123 GETTABLEKS                       R22 R2 K34 ["animationID"]
      125 LOADB                            R23 0
      126 MOVE                             R24 R9
      127 JUMPIFNOT                        R24 ; [+3]
      128 GETTABLEKS                       R25 R2 K35 ["disablePublish"]
      130 NOT                              R24 R25
      131 JUMPIFNOT                        R21 ; [+15]
      132 JUMPIF                           R9 ; [+2]
      133 MOVE                             R24 R13
      134 JUMP                             ; [+2]
      135 JUMPIF                           R13 ; [+1]
      136 LOADB                            R24 0
      137 JUMPIFNOT                        R22 ; [+9]
      138 GETIMPORT                        R25 K38 [utf8.len]
      140 MOVE                             R26 R22
      141 CALL                             R25 1 1
      142 LOADN                            R26 32
      143 JUMPIFLT                         R26 R25 ; [+2]
      145 LOADB                            R23 0 +1
      146 LOADB                            R23 1
      147 LOADNIL                          R25
      148 JUMPIFNOT                        R21 ; [+9]
      149 GETTABLEKS                       R26 R1 K21 ["Localization"]
      151 LOADK                            R28 K39 ["Common"]
      152 LOADK                            R29 K40 ["Import"]
      153 NAMECALL                         R26 R26 K24 ["getText"]
      155 CALL                             R26 3 1
      156 MOVE                             R25 R26
      157 JUMP                             ; [+8]
      158 GETTABLEKS                       R26 R1 K21 ["Localization"]
      160 LOADK                            R28 K39 ["Common"]
      161 LOADK                            R29 K41 ["Save"]
      162 NAMECALL                         R26 R26 K24 ["getText"]
      164 CALL                             R26 3 1
      165 MOVE                             R25 R26
      166 GETUPVAL                         R26 3
      167 GETTABLEKS                       R26 R26 K42 ["isCatalogAsset"]
      169 MOVE                             R27 R11
      170 CALL                             R26 1 1
      171 JUMPIF                           R26 ; [+5]
      172 GETUPVAL                         R26 3
      173 GETTABLEKS                       R26 R26 K43 ["isUGCBundleType"]
      175 MOVE                             R27 R11
      176 CALL                             R26 1 1
      177 GETUPVAL                         R27 5
      178 GETTABLEKS                       R27 R27 K31 ["FLOW_TYPE"]
      180 GETTABLEKS                       R27 R27 K44 ["UPLOAD_FLOW"]
      182 JUMPIFNOTEQ                      R10 R27 ; [+33]
      184 JUMPIFNOT                        R26 ; [+31]
      185 GETTABLEKS                       R27 R1 K45 ["isUploadFeeEnabled"]
      187 JUMPIFNOT                        R27 ; [+16]
      188 NAMECALL                         R27 R0 K46 ["getSubmitTotal"]
      190 CALL                             R27 1 1
      191 LOADN                            R28 0
      192 JUMPIFNOTLT                      R28 R27 ; [+6]
      194 MOVE                             R30 R27
      195 NAMECALL                         R28 R0 K47 ["getUploadFeeWithRobuxIcon"]
      197 CALL                             R28 2 1
      198 MOVE                             R25 R28
      199 GETTABLEKS                       R28 R1 K48 ["canAffordUploadFee"]
      201 JUMPIF                           R28 ; [+14]
      202 LOADB                            R24 0
      203 JUMP                             ; [+12]
      204 GETTABLEKS                       R27 R1 K45 ["isUploadFeeEnabled"]
      206 JUMPIFEQKNIL                     R27 ; [+8]
      208 GETUPVAL                         R27 6
      209 CALL                             R27 0 1
      210 JUMPIFNOT                        R27 ; [+5]
      211 GETTABLEKS                       R27 R1 K45 ["isUploadFeeEnabled"]
      213 JUMPIFNOTEQKB                    R27 FALSE ; [+2]
      215 LOADB                            R24 0
      216 LOADB                            R27 0
      217 GETTABLEKS                       R29 R1 K49 ["avatarAssetCurrentIndex"]
      219 FASTCALL1                        TYPE R29 ; [+2]
      220 GETIMPORT                        R28 K51 [type]
      222 CALL                             R28 1 1
      223 JUMPIFNOTEQKS                    R28 K52 ["number"] ; [+17]
      225 LOADB                            R27 0
      226 GETTABLEKS                       R29 R1 K53 ["avatarAssetTotalCount"]
      228 FASTCALL1                        TYPE R29 ; [+2]
      229 GETIMPORT                        R28 K51 [type]
      231 CALL                             R28 1 1
      232 JUMPIFNOTEQKS                    R28 K52 ["number"] ; [+8]
      234 GETTABLEKS                       R28 R1 K53 ["avatarAssetTotalCount"]
      236 LOADN                            R29 1
      237 JUMPIFLT                         R29 R28 ; [+2]
      239 LOADB                            R27 0 +1
      240 LOADB                            R27 1
      241 JUMPIFNOT                        R27 ; [+7]
      242 GETTABLEKS                       R30 R1 K49 ["avatarAssetCurrentIndex"]
      244 GETTABLEKS                       R31 R1 K53 ["avatarAssetTotalCount"]
      246 DIV                              R29 R30 R31
      247 MULK                             R28 R29 K54 [100]
      248 JUMPIF                           R28 ; [+1]
      249 LOADN                            R28 0
      250 JUMPIFNOT                        R27 ; [+7]
      251 GETTABLEKS                       R30 R1 K49 ["avatarAssetCurrentIndex"]
      253 FASTCALL1                        MATH_FLOOR R30 ; [+2]
      254 GETIMPORT                        R29 K57 [math.floor]
      256 CALL                             R29 1 1
      257 JUMPIF                           R29 ; [+1]
      258 LOADN                            R29 0
      259 JUMPIFNOT                        R27 ; [+7]
      260 GETTABLEKS                       R31 R1 K53 ["avatarAssetTotalCount"]
      262 FASTCALL1                        MATH_FLOOR R31 ; [+2]
      263 GETIMPORT                        R30 K57 [math.floor]
      265 CALL                             R30 1 1
      266 JUMPIF                           R30 ; [+1]
      267 LOADN                            R30 0
      268 JUMPIFNOT                        R27 ; [+23]
      269 GETTABLEKS                       R31 R1 K21 ["Localization"]
      271 LOADK                            R33 K58 ["General"]
      272 LOADK                            R34 K59 ["AssetXOutOfY"]
      273 DUPTABLE                         R35 K62 [{"current", "total"}]
      274 FASTCALL1                        TOSTRING R29 ; [+3]
      275 MOVE                             R37 R29
      276 GETIMPORT                        R36 K64 [tostring]
      278 CALL                             R36 1 1
      279 SETTABLEKS                       R36 R35 K60 ["current"]
      281 FASTCALL1                        TOSTRING R30 ; [+3]
      282 MOVE                             R37 R30
      283 GETIMPORT                        R36 K64 [tostring]
      285 CALL                             R36 1 1
      286 SETTABLEKS                       R36 R35 K61 ["total"]
      288 NAMECALL                         R31 R31 K24 ["getText"]
      290 CALL                             R31 4 1
      291 JUMPIF                           R31 ; [+1]
      292 LOADK                            R31 K14 [""]
      293 GETUPVAL                         R32 7
      294 GETTABLEKS                       R32 R32 K65 ["new"]
      296 CALL                             R32 0 1
      297 NAMECALL                         R33 R0 K46 ["getSubmitTotal"]
      299 CALL                             R33 1 1
      300 GETUPVAL                         R35 5
      301 GETTABLEKS                       R35 R35 K31 ["FLOW_TYPE"]
      303 GETTABLEKS                       R35 R35 K44 ["UPLOAD_FLOW"]
      305 JUMPIFNOTEQ                      R10 R35 ; [+16]
      307 JUMPIFNOT                        R26 ; [+14]
      308 GETTABLEKS                       R35 R1 K45 ["isUploadFeeEnabled"]
      310 JUMPIFNOT                        R35 ; [+11]
      311 LOADN                            R35 0
      312 JUMPIFNOTLT                      R35 R33 ; [+9]
      314 GETUPVAL                         R35 8
      315 FASTCALL1                        TOSTRING R33 ; [+3]
      316 MOVE                             R37 R33
      317 GETIMPORT                        R36 K64 [tostring]
      319 CALL                             R36 1 1
      320 CONCAT                           R34 R35 R36
      321 JUMPIF                           R34 ; [+1]
      322 MOVE                             R34 R25
      323 GETUPVAL                         R35 9
      324 GETTABLEKS                       R35 R35 K66 ["createElement"]
      326 GETUPVAL                         R36 10
      327 GETTABLEKS                       R36 R36 K67 ["View"]
      329 DUPTABLE                         R37 K70 [{["tag"] = "row flex-x-between align-y-center gap-small padding-x-medium", ["Size"], ["LayoutOrder"]}]
      330 SETTABLEKS                       R4 R37 K3 ["Size"]
      332 SETTABLEKS                       R5 R37 K4 ["LayoutOrder"]
      334 DUPTABLE                         R38 K74 [{"LeftContent", "AnimationImportRow", "ButtonsSection"}]
      335 GETUPVAL                         R39 9
      336 GETTABLEKS                       R39 R39 K66 ["createElement"]
      338 GETUPVAL                         R40 10
      339 GETTABLEKS                       R40 R40 K67 ["View"]
      341 DUPTABLE                         R41 K77 [{["tag"] = "row align-y-center fill gap-small", ["LayoutOrder"], ["Size"], ["AutomaticSize"]}]
      342 NAMECALL                         R42 R32 K78 ["getNextOrder"]
      344 CALL                             R42 1 1
      345 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      347 GETIMPORT                        R42 K80 [UDim2.new]
      349 LOADN                            R43 0
      350 LOADN                            R44 0
      351 LOADN                            R45 1
      352 LOADN                            R46 0
      353 CALL                             R42 4 1
      354 SETTABLEKS                       R42 R41 K3 ["Size"]
      356 GETIMPORT                        R42 K82 [Enum.AutomaticSize.X]
      358 SETTABLEKS                       R42 R41 K76 ["AutomaticSize"]
      360 DUPTABLE                         R42 K85 [{"AnimationOverride", "AssetProgressRow"}]
      361 JUMPIFNOT                        R17 ; [+37]
      362 GETUPVAL                         R43 9
      363 GETTABLEKS                       R43 R43 K66 ["createElement"]
      365 GETUPVAL                         R44 10
      366 GETTABLEKS                       R44 R44 K67 ["View"]
      368 DUPTABLE                         R45 K87 [{["tag"] = "align-y-center fill auto-y"}]
      369 DUPTABLE                         R46 K89 [{"OverrideLink"}]
      370 GETUPVAL                         R47 9
      371 GETTABLEKS                       R47 R47 K66 ["createElement"]
      373 GETUPVAL                         R48 10
      374 GETTABLEKS                       R48 R48 K90 ["Text"]
      376 DUPTABLE                         R49 K92 [{"tag", "Text", "onActivated"}]
      377 LOADK                            R51 K93 ["auto-xy text-body-small text-wrap text-align-x-left text-align-y-center "]
      378 JUMPIFNOT                        R19 ; [+2]
      379 LOADK                            R52 K94 ["content-link"]
      380 JUMP                             ; [+1]
      381 LOADK                            R52 K95 ["content-muted"]
      382 CONCAT                           R50 R51 R52
      383 SETTABLEKS                       R50 R49 K68 ["tag"]
      385 SETTABLEKS                       R18 R49 K90 ["Text"]
      387 JUMPIFNOT                        R19 ; [+3]
      388 GETTABLEKS                       R50 R0 K96 ["onFlowButtonActivated"]
      390 JUMPIF                           R50 ; [+1]
      391 LOADNIL                          R50
      392 SETTABLEKS                       R50 R49 K91 ["onActivated"]
      394 CALL                             R47 2 1
      395 SETTABLEKS                       R47 R46 K88 ["OverrideLink"]
      397 CALL                             R43 3 1
      398 JUMPIF                           R43 ; [+1]
      399 LOADNIL                          R43
      400 SETTABLEKS                       R43 R42 K83 ["AnimationOverride"]
      402 JUMPIFNOT                        R27 ; [+65]
      403 GETUPVAL                         R43 9
      404 GETTABLEKS                       R43 R43 K66 ["createElement"]
      406 GETUPVAL                         R44 10
      407 GETTABLEKS                       R44 R44 K67 ["View"]
      409 DUPTABLE                         R45 K98 [{["tag"] = "row align-y-center"}]
      410 DUPTABLE                         R46 K101 [{"AssetProgressLabel", "AssetProgressBar"}]
      411 GETUPVAL                         R47 9
      412 GETTABLEKS                       R47 R47 K66 ["createElement"]
      414 GETUPVAL                         R48 10
      415 GETTABLEKS                       R48 R48 K90 ["Text"]
      417 DUPTABLE                         R49 K104 [{["tag"] = "auto-y text-title-small content-emphasis", ["Text"], ["Size"], ["LayoutOrder"] = 1}]
      418 SETTABLEKS                       R31 R49 K90 ["Text"]
      420 GETIMPORT                        R50 K80 [UDim2.new]
      422 LOADN                            R51 0
      423 LOADN                            R52 100
      424 LOADN                            R53 1
      425 LOADN                            R54 0
      426 CALL                             R50 4 1
      427 SETTABLEKS                       R50 R49 K3 ["Size"]
      429 CALL                             R47 2 1
      430 SETTABLEKS                       R47 R46 K99 ["AssetProgressLabel"]
      432 GETUPVAL                         R47 9
      433 GETTABLEKS                       R47 R47 K66 ["createElement"]
      435 GETUPVAL                         R48 10
      436 GETTABLEKS                       R48 R48 K105 ["Progress"]
      438 DUPTABLE                         R49 K111 [{["value"], ["size"], ["shape"], ["width"], ["LayoutOrder"] = 2}]
      439 ORK                              R50 R28 K112 [0]
      440 SETTABLEKS                       R50 R49 K106 ["value"]
      442 GETUPVAL                         R50 11
      443 GETTABLEKS                       R50 R50 K113 ["ProgressSize"]
      445 GETTABLEKS                       R50 R50 K114 ["Medium"]
      447 SETTABLEKS                       R50 R49 K107 ["size"]
      449 GETUPVAL                         R50 11
      450 GETTABLEKS                       R50 R50 K115 ["ProgressShape"]
      452 GETTABLEKS                       R50 R50 K116 ["Bar"]
      454 SETTABLEKS                       R50 R49 K108 ["shape"]
      456 GETIMPORT                        R50 K118 [UDim.new]
      458 LOADN                            R51 0
      459 LOADN                            R52 220
      460 CALL                             R50 2 1
      461 SETTABLEKS                       R50 R49 K109 ["width"]
      463 CALL                             R47 2 1
      464 SETTABLEKS                       R47 R46 K100 ["AssetProgressBar"]
      466 CALL                             R43 3 1
      467 JUMPIF                           R43 ; [+1]
      468 LOADNIL                          R43
      469 SETTABLEKS                       R43 R42 K84 ["AssetProgressRow"]
      471 CALL                             R39 3 1
      472 JUMPIF                           R39 ; [+13]
      473 GETUPVAL                         R39 9
      474 GETTABLEKS                       R39 R39 K66 ["createElement"]
      476 GETUPVAL                         R40 10
      477 GETTABLEKS                       R40 R40 K67 ["View"]
      479 DUPTABLE                         R41 K120 [{["tag"] = "size-0-0", ["LayoutOrder"]}]
      480 NAMECALL                         R42 R32 K78 ["getNextOrder"]
      482 CALL                             R42 1 1
      483 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      485 CALL                             R39 2 1
      486 SETTABLEKS                       R39 R38 K71 ["LeftContent"]
      488 JUMPIFNOT                        R21 ; [+105]
      489 GETUPVAL                         R39 9
      490 GETTABLEKS                       R39 R39 K66 ["createElement"]
      492 GETUPVAL                         R40 10
      493 GETTABLEKS                       R40 R40 K67 ["View"]
      495 DUPTABLE                         R41 K122 [{["tag"] = "row align-y-center gap-small auto-x", ["LayoutOrder"], ["Size"]}]
      496 NAMECALL                         R42 R32 K78 ["getNextOrder"]
      498 CALL                             R42 1 1
      499 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      501 GETIMPORT                        R42 K80 [UDim2.new]
      503 LOADN                            R43 0
      504 LOADN                            R44 0
      505 LOADN                            R45 1
      506 LOADN                            R46 0
      507 CALL                             R42 4 1
      508 SETTABLEKS                       R42 R41 K3 ["Size"]
      510 DUPTABLE                         R42 K125 [{"InvalidAnimationLabel", "AnimationIdInput"}]
      511 JUMPIF                           R14 ; [+27]
      512 GETUPVAL                         R43 9
      513 GETTABLEKS                       R43 R43 K66 ["createElement"]
      515 GETUPVAL                         R44 10
      516 GETTABLEKS                       R44 R44 K90 ["Text"]
      518 DUPTABLE                         R45 K127 [{["tag"] = "text-caption-small text-align-y-center content-alert", ["Text"], ["Size"], ["LayoutOrder"] = 1}]
      519 GETTABLEKS                       R46 R1 K21 ["Localization"]
      521 LOADK                            R48 K128 ["AssetConfigAnimation"]
      522 LOADK                            R49 K129 ["InvalidAnimationID"]
      523 NAMECALL                         R46 R46 K24 ["getText"]
      525 CALL                             R46 3 1
      526 SETTABLEKS                       R46 R45 K90 ["Text"]
      528 GETIMPORT                        R46 K80 [UDim2.new]
      530 LOADN                            R47 0
      531 LOADN                            R48 96
      532 LOADN                            R49 1
      533 LOADN                            R50 0
      534 CALL                             R46 4 1
      535 SETTABLEKS                       R46 R45 K3 ["Size"]
      537 CALL                             R43 2 1
      538 JUMPIF                           R43 ; [+1]
      539 LOADNIL                          R43
      540 SETTABLEKS                       R43 R42 K123 ["InvalidAnimationLabel"]
      542 GETUPVAL                         R43 9
      543 GETTABLEKS                       R43 R43 K66 ["createElement"]
      545 GETUPVAL                         R44 10
      546 GETTABLEKS                       R44 R44 K130 ["TextInput"]
      548 DUPTABLE                         R45 K136 [{["LayoutOrder"] = 2, ["text"], ["onChanged"], ["label"] = "", ["placeholder"], ["hasError"], ["size"], ["width"]}]
      549 JUMPIFEQKNIL                     R22 ; [+7]
      551 FASTCALL1                        TOSTRING R22 ; [+3]
      552 MOVE                             R47 R22
      553 GETIMPORT                        R46 K64 [tostring]
      555 CALL                             R46 1 1
      556 JUMP                             ; [+1]
      557 LOADK                            R46 K14 [""]
      558 SETTABLEKS                       R46 R45 K131 ["text"]
      560 GETTABLEKS                       R46 R0 K137 ["onAnimationIDChanged"]
      562 SETTABLEKS                       R46 R45 K132 ["onChanged"]
      564 GETTABLEKS                       R46 R1 K21 ["Localization"]
      566 LOADK                            R48 K128 ["AssetConfigAnimation"]
      567 LOADK                            R49 K138 ["AnimationID"]
      568 NAMECALL                         R46 R46 K24 ["getText"]
      570 CALL                             R46 3 1
      571 SETTABLEKS                       R46 R45 K134 ["placeholder"]
      573 SETTABLEKS                       R23 R45 K135 ["hasError"]
      575 GETUPVAL                         R46 11
      576 GETTABLEKS                       R46 R46 K139 ["InputSize"]
      578 GETTABLEKS                       R46 R46 K140 ["Small"]
      580 SETTABLEKS                       R46 R45 K107 ["size"]
      582 GETIMPORT                        R46 K118 [UDim.new]
      584 LOADN                            R47 0
      585 LOADN                            R48 160
      586 CALL                             R46 2 1
      587 SETTABLEKS                       R46 R45 K109 ["width"]
      589 CALL                             R43 2 1
      590 SETTABLEKS                       R43 R42 K124 ["AnimationIdInput"]
      592 CALL                             R39 3 1
      593 JUMPIF                           R39 ; [+1]
      594 LOADNIL                          R39
      595 SETTABLEKS                       R39 R38 K72 ["AnimationImportRow"]
      597 GETUPVAL                         R39 9
      598 GETTABLEKS                       R39 R39 K66 ["createElement"]
      600 GETUPVAL                         R40 10
      601 GETTABLEKS                       R40 R40 K67 ["View"]
      603 DUPTABLE                         R41 K142 [{["tag"] = "row align-x-right align-y-center gap-small auto-xy", ["LayoutOrder"]}]
      604 NAMECALL                         R42 R32 K78 ["getNextOrder"]
      606 CALL                             R42 1 1
      607 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      609 DUPTABLE                         R42 K145 [{"PublishButton", "CancelButton"}]
      610 JUMPIF                           R24 ; [+108]
      611 GETUPVAL                         R43 9
      612 GETTABLEKS                       R43 R43 K66 ["createElement"]
      614 GETUPVAL                         R44 10
      615 GETTABLEKS                       R44 R44 K67 ["View"]
      617 DUPTABLE                         R45 K146 [{"Size", "AutomaticSize", "LayoutOrder"}]
      618 GETIMPORT                        R46 K80 [UDim2.new]
      620 LOADN                            R47 0
      621 LOADN                            R48 0
      622 LOADN                            R49 0
      623 LOADN                            R50 40
      624 CALL                             R46 4 1
      625 SETTABLEKS                       R46 R45 K3 ["Size"]
      627 GETIMPORT                        R46 K82 [Enum.AutomaticSize.X]
      629 SETTABLEKS                       R46 R45 K76 ["AutomaticSize"]
      631 NAMECALL                         R46 R32 K78 ["getNextOrder"]
      633 CALL                             R46 1 1
      634 SETTABLEKS                       R46 R45 K4 ["LayoutOrder"]
      636 DUPTABLE                         R46 K149 [{"DisabledButton", "HoverOverlay"}]
      637 GETUPVAL                         R47 9
      638 GETTABLEKS                       R47 R47 K66 ["createElement"]
      640 GETUPVAL                         R48 10
      641 GETTABLEKS                       R48 R48 K150 ["Button"]
      643 DUPTABLE                         R49 K154 [{["text"], ["variant"], ["onActivated"], ["isDisabled"] = True, ["size"]}]
      644 SETTABLEKS                       R34 R49 K131 ["text"]
      646 GETUPVAL                         R50 11
      647 GETTABLEKS                       R50 R50 K155 ["ButtonVariant"]
      649 GETTABLEKS                       R50 R50 K156 ["Emphasis"]
      651 SETTABLEKS                       R50 R49 K151 ["variant"]
      653 DUPCLOSURE                       R50 K157 [PROTO_7]
      654 SETTABLEKS                       R50 R49 K91 ["onActivated"]
      656 GETUPVAL                         R50 11
      657 GETTABLEKS                       R50 R50 K139 ["InputSize"]
      659 GETTABLEKS                       R50 R50 K140 ["Small"]
      661 SETTABLEKS                       R50 R49 K107 ["size"]
      663 CALL                             R47 2 1
      664 SETTABLEKS                       R47 R46 K147 ["DisabledButton"]
      666 GETTABLEKS                       R48 R1 K158 ["OnPublishButtonHover"]
      668 JUMPIFNOT                        R48 ; [+45]
      669 GETUPVAL                         R47 9
      670 GETTABLEKS                       R47 R47 K66 ["createElement"]
      672 LOADK                            R48 K159 ["Frame"]
      673 NEWTABLE                         R49 8 0
      675 GETIMPORT                        R50 K80 [UDim2.new]
      677 LOADN                            R51 1
      678 LOADN                            R52 0
      679 LOADN                            R53 1
      680 LOADN                            R54 0
      681 CALL                             R50 4 1
      682 SETTABLEKS                       R50 R49 K3 ["Size"]
      684 GETIMPORT                        R50 K80 [UDim2.new]
      686 LOADN                            R51 0
      687 LOADN                            R52 0
      688 LOADN                            R53 0
      689 LOADN                            R54 0
      690 CALL                             R50 4 1
      691 SETTABLEKS                       R50 R49 K160 ["Position"]
      693 LOADN                            R50 1
      694 SETTABLEKS                       R50 R49 K161 ["BackgroundTransparency"]
      696 GETUPVAL                         R50 12
      697 GETTABLEKS                       R50 R50 K162 ["Event"]
      699 GETTABLEKS                       R50 R50 K163 ["MouseEnter"]
      701 NEWCLOSURE                       R51 P1
      702 CAPTURE                          VAL R1
      703 SETTABLE                         R51 R49 R50
      704 GETUPVAL                         R50 12
      705 GETTABLEKS                       R50 R50 K162 ["Event"]
      707 GETTABLEKS                       R50 R50 K164 ["MouseLeave"]
      709 NEWCLOSURE                       R51 P2
      710 CAPTURE                          VAL R1
      711 SETTABLE                         R51 R49 R50
      712 CALL                             R47 2 1
      713 JUMPIF                           R47 ; [+1]
      714 LOADNIL                          R47
      715 SETTABLEKS                       R47 R46 K148 ["HoverOverlay"]
      717 CALL                             R43 3 1
      718 JUMP                             ; [+60]
      719 GETUPVAL                         R43 9
      720 GETTABLEKS                       R43 R43 K66 ["createElement"]
      722 GETUPVAL                         R44 10
      723 GETTABLEKS                       R44 R44 K67 ["View"]
      725 DUPTABLE                         R45 K146 [{"Size", "AutomaticSize", "LayoutOrder"}]
      726 GETIMPORT                        R46 K80 [UDim2.new]
      728 LOADN                            R47 0
      729 LOADN                            R48 0
      730 LOADN                            R49 0
      731 LOADN                            R50 40
      732 CALL                             R46 4 1
      733 SETTABLEKS                       R46 R45 K3 ["Size"]
      735 GETIMPORT                        R46 K82 [Enum.AutomaticSize.X]
      737 SETTABLEKS                       R46 R45 K76 ["AutomaticSize"]
      739 NAMECALL                         R46 R32 K78 ["getNextOrder"]
      741 CALL                             R46 1 1
      742 SETTABLEKS                       R46 R45 K4 ["LayoutOrder"]
      744 DUPTABLE                         R46 K165 [{"Button"}]
      745 GETUPVAL                         R47 9
      746 GETTABLEKS                       R47 R47 K66 ["createElement"]
      748 GETUPVAL                         R48 10
      749 GETTABLEKS                       R48 R48 K150 ["Button"]
      751 DUPTABLE                         R49 K166 [{"text", "variant", "onActivated", "isDisabled", "size"}]
      752 SETTABLEKS                       R34 R49 K131 ["text"]
      754 GETUPVAL                         R50 11
      755 GETTABLEKS                       R50 R50 K155 ["ButtonVariant"]
      757 GETTABLEKS                       R50 R50 K156 ["Emphasis"]
      759 SETTABLEKS                       R50 R49 K151 ["variant"]
      761 GETTABLEKS                       R50 R0 K167 ["onPublishActivated"]
      763 SETTABLEKS                       R50 R49 K91 ["onActivated"]
      765 NOT                              R50 R24
      766 SETTABLEKS                       R50 R49 K152 ["isDisabled"]
      768 GETUPVAL                         R50 11
      769 GETTABLEKS                       R50 R50 K139 ["InputSize"]
      771 GETTABLEKS                       R50 R50 K140 ["Small"]
      773 SETTABLEKS                       R50 R49 K107 ["size"]
      775 CALL                             R47 2 1
      776 SETTABLEKS                       R47 R46 K150 ["Button"]
      778 CALL                             R43 3 1
      779 SETTABLEKS                       R43 R42 K143 ["PublishButton"]
      781 GETUPVAL                         R43 9
      782 GETTABLEKS                       R43 R43 K66 ["createElement"]
      784 GETUPVAL                         R44 10
      785 GETTABLEKS                       R44 R44 K67 ["View"]
      787 DUPTABLE                         R45 K146 [{"Size", "AutomaticSize", "LayoutOrder"}]
      788 GETIMPORT                        R46 K80 [UDim2.new]
      790 LOADN                            R47 0
      791 LOADN                            R48 0
      792 LOADN                            R49 0
      793 LOADN                            R50 40
      794 CALL                             R46 4 1
      795 SETTABLEKS                       R46 R45 K3 ["Size"]
      797 GETIMPORT                        R46 K82 [Enum.AutomaticSize.X]
      799 SETTABLEKS                       R46 R45 K76 ["AutomaticSize"]
      801 NAMECALL                         R46 R32 K78 ["getNextOrder"]
      803 CALL                             R46 1 1
      804 SETTABLEKS                       R46 R45 K4 ["LayoutOrder"]
      806 DUPTABLE                         R46 K165 [{"Button"}]
      807 GETUPVAL                         R47 9
      808 GETTABLEKS                       R47 R47 K66 ["createElement"]
      810 GETUPVAL                         R48 10
      811 GETTABLEKS                       R48 R48 K150 ["Button"]
      813 DUPTABLE                         R49 K168 [{"text", "variant", "onActivated", "size"}]
      814 GETTABLEKS                       R50 R1 K21 ["Localization"]
      816 LOADK                            R52 K58 ["General"]
      817 LOADK                            R53 K169 ["SearchOptionsCancel"]
      818 NAMECALL                         R50 R50 K24 ["getText"]
      820 CALL                             R50 3 1
      821 SETTABLEKS                       R50 R49 K131 ["text"]
      823 GETUPVAL                         R50 11
      824 GETTABLEKS                       R50 R50 K155 ["ButtonVariant"]
      826 GETTABLEKS                       R50 R50 K170 ["Standard"]
      828 SETTABLEKS                       R50 R49 K151 ["variant"]
      830 SETTABLEKS                       R7 R49 K91 ["onActivated"]
      832 GETUPVAL                         R50 11
      833 GETTABLEKS                       R50 R50 K139 ["InputSize"]
      835 GETTABLEKS                       R50 R50 K140 ["Small"]
      837 SETTABLEKS                       R50 R49 K107 ["size"]
      839 CALL                             R47 2 1
      840 SETTABLEKS                       R47 R46 K150 ["Button"]
      842 CALL                             R43 3 1
      843 SETTABLEKS                       R43 R42 K144 ["CancelButton"]
      845 CALL                             R39 3 1
      846 SETTABLEKS                       R39 R38 K73 ["ButtonsSection"]
      848 CALL                             R35 3 -1
      849 RETURN                           R35 -1

PROTO_11:
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
       38 GETTABLEKS                       R3 R0 K8 ["isAvatarItemDialogFlowEnabled"]
       40 SETTABLEKS                       R3 R2 K8 ["isAvatarItemDialogFlowEnabled"]
       42 GETTABLEKS                       R3 R0 K9 ["avatarAssetCurrentIndex"]
       44 SETTABLEKS                       R3 R2 K9 ["avatarAssetCurrentIndex"]
       46 GETTABLEKS                       R3 R0 K10 ["avatarAssetTotalCount"]
       48 SETTABLEKS                       R3 R2 K10 ["avatarAssetTotalCount"]
       50 GETTABLEKS                       R3 R0 K12 ["validateAnimationSucceeded"]
       52 SETTABLEKS                       R3 R2 K12 ["validateAnimationSucceeded"]
       54 GETTABLEKS                       R3 R0 K13 ["assetTypeValidationSucceeded"]
       56 SETTABLEKS                       R3 R2 K13 ["assetTypeValidationSucceeded"]
       58 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_14:
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
      151 GETTABLEKS                       R29 R29 K36 ["getFFlagToolboxPublishOnApproval"]
      153 CALL                             R28 1 1
      154 GETIMPORT                        R29 K5 [require]
      156 GETTABLEKS                       R30 R0 K12 ["Src"]
      158 GETTABLEKS                       R30 R30 K35 ["Flags"]
      160 GETTABLEKS                       R30 R30 K37 ["getFFlagEnableUpdateAvatarItem"]
      162 CALL                             R29 1 1
      163 GETIMPORT                        R30 K5 [require]
      165 GETTABLEKS                       R31 R0 K12 ["Src"]
      167 GETTABLEKS                       R31 R31 K35 ["Flags"]
      169 GETTABLEKS                       R31 R31 K38 ["getFFlagToolboxRemoveLegacyCatalogUpload"]
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
      189 CAPTURE                          VAL R13
      190 SETTABLEKS                       R34 R31 K51 ["init"]
      192 DUPCLOSURE                       R34 K52 [PROTO_4]
      193 CAPTURE                          VAL R32
      194 CAPTURE                          VAL R14
      195 SETTABLEKS                       R34 R31 K53 ["shouldUpdate"]
      197 DUPCLOSURE                       R34 K54 [PROTO_5]
      198 CAPTURE                          VAL R28
      199 CAPTURE                          VAL R13
      200 SETTABLEKS                       R34 R31 K55 ["getSubmitTotal"]
      202 DUPCLOSURE                       R34 K56 [PROTO_6]
      203 CAPTURE                          VAL R33
      204 SETTABLEKS                       R34 R31 K57 ["getUploadFeeWithRobuxIcon"]
      206 DUPCLOSURE                       R34 K58 [PROTO_10]
      207 CAPTURE                          VAL R32
      208 CAPTURE                          VAL R11
      209 CAPTURE                          VAL R29
      210 CAPTURE                          VAL R13
      211 CAPTURE                          VAL R20
      212 CAPTURE                          VAL R12
      213 CAPTURE                          VAL R30
      214 CAPTURE                          VAL R10
      215 CAPTURE                          VAL R33
      216 CAPTURE                          VAL R3
      217 CAPTURE                          VAL R26
      218 CAPTURE                          VAL R27
      219 CAPTURE                          VAL R2
      220 SETTABLEKS                       R34 R31 K59 ["render"]
      222 DUPCLOSURE                       R34 K60 [PROTO_11]
      223 DUPCLOSURE                       R35 K61 [PROTO_14]
      224 CAPTURE                          VAL R22
      225 CAPTURE                          VAL R23
      226 MOVE                             R36 R6
      227 DUPTABLE                         R37 K65 [{"Stylizer", "Localization", "Network"}]
      228 GETTABLEKS                       R38 R5 K62 ["Stylizer"]
      230 SETTABLEKS                       R38 R37 K62 ["Stylizer"]
      232 GETTABLEKS                       R38 R5 K63 ["Localization"]
      234 SETTABLEKS                       R38 R37 K63 ["Localization"]
      236 SETTABLEKS                       R7 R37 K64 ["Network"]
      238 CALL                             R36 1 1
      239 MOVE                             R37 R31
      240 CALL                             R36 1 1
      241 MOVE                             R31 R36
      242 GETTABLEKS                       R36 R4 K66 ["connect"]
      244 MOVE                             R37 R34
      245 MOVE                             R38 R35
      246 CALL                             R36 2 1
      247 MOVE                             R37 R31
      248 CALL                             R36 1 -1
      249 RETURN                           R36 -1
