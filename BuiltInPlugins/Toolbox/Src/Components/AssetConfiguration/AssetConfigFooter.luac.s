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
      182 JUMPIFNOTEQ                      R10 R27 ; [+26]
      184 JUMPIFNOT                        R26 ; [+24]
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
      201 JUMPIF                           R28 ; [+7]
      202 LOADB                            R24 0
      203 JUMP                             ; [+5]
      204 GETTABLEKS                       R27 R1 K45 ["isUploadFeeEnabled"]
      206 JUMPIFNOTEQKNIL                  R27 ; [+2]
      208 LOADB                            R24 0
      209 LOADB                            R27 0
      210 GETTABLEKS                       R29 R1 K49 ["avatarAssetCurrentIndex"]
      212 FASTCALL1                        TYPE R29 ; [+2]
      213 GETIMPORT                        R28 K51 [type]
      215 CALL                             R28 1 1
      216 JUMPIFNOTEQKS                    R28 K52 ["number"] ; [+17]
      218 LOADB                            R27 0
      219 GETTABLEKS                       R29 R1 K53 ["avatarAssetTotalCount"]
      221 FASTCALL1                        TYPE R29 ; [+2]
      222 GETIMPORT                        R28 K51 [type]
      224 CALL                             R28 1 1
      225 JUMPIFNOTEQKS                    R28 K52 ["number"] ; [+8]
      227 GETTABLEKS                       R28 R1 K53 ["avatarAssetTotalCount"]
      229 LOADN                            R29 1
      230 JUMPIFLT                         R29 R28 ; [+2]
      232 LOADB                            R27 0 +1
      233 LOADB                            R27 1
      234 JUMPIFNOT                        R27 ; [+7]
      235 GETTABLEKS                       R30 R1 K49 ["avatarAssetCurrentIndex"]
      237 GETTABLEKS                       R31 R1 K53 ["avatarAssetTotalCount"]
      239 DIV                              R29 R30 R31
      240 MULK                             R28 R29 K54 [100]
      241 JUMPIF                           R28 ; [+1]
      242 LOADN                            R28 0
      243 JUMPIFNOT                        R27 ; [+7]
      244 GETTABLEKS                       R30 R1 K49 ["avatarAssetCurrentIndex"]
      246 FASTCALL1                        MATH_FLOOR R30 ; [+2]
      247 GETIMPORT                        R29 K57 [math.floor]
      249 CALL                             R29 1 1
      250 JUMPIF                           R29 ; [+1]
      251 LOADN                            R29 0
      252 JUMPIFNOT                        R27 ; [+7]
      253 GETTABLEKS                       R31 R1 K53 ["avatarAssetTotalCount"]
      255 FASTCALL1                        MATH_FLOOR R31 ; [+2]
      256 GETIMPORT                        R30 K57 [math.floor]
      258 CALL                             R30 1 1
      259 JUMPIF                           R30 ; [+1]
      260 LOADN                            R30 0
      261 JUMPIFNOT                        R27 ; [+23]
      262 GETTABLEKS                       R31 R1 K21 ["Localization"]
      264 LOADK                            R33 K58 ["General"]
      265 LOADK                            R34 K59 ["AssetXOutOfY"]
      266 DUPTABLE                         R35 K62 [{"current", "total"}]
      267 FASTCALL1                        TOSTRING R29 ; [+3]
      268 MOVE                             R37 R29
      269 GETIMPORT                        R36 K64 [tostring]
      271 CALL                             R36 1 1
      272 SETTABLEKS                       R36 R35 K60 ["current"]
      274 FASTCALL1                        TOSTRING R30 ; [+3]
      275 MOVE                             R37 R30
      276 GETIMPORT                        R36 K64 [tostring]
      278 CALL                             R36 1 1
      279 SETTABLEKS                       R36 R35 K61 ["total"]
      281 NAMECALL                         R31 R31 K24 ["getText"]
      283 CALL                             R31 4 1
      284 JUMPIF                           R31 ; [+1]
      285 LOADK                            R31 K14 [""]
      286 GETUPVAL                         R32 6
      287 GETTABLEKS                       R32 R32 K65 ["new"]
      289 CALL                             R32 0 1
      290 NAMECALL                         R33 R0 K46 ["getSubmitTotal"]
      292 CALL                             R33 1 1
      293 GETUPVAL                         R35 5
      294 GETTABLEKS                       R35 R35 K31 ["FLOW_TYPE"]
      296 GETTABLEKS                       R35 R35 K44 ["UPLOAD_FLOW"]
      298 JUMPIFNOTEQ                      R10 R35 ; [+16]
      300 JUMPIFNOT                        R26 ; [+14]
      301 GETTABLEKS                       R35 R1 K45 ["isUploadFeeEnabled"]
      303 JUMPIFNOT                        R35 ; [+11]
      304 LOADN                            R35 0
      305 JUMPIFNOTLT                      R35 R33 ; [+9]
      307 GETUPVAL                         R35 7
      308 FASTCALL1                        TOSTRING R33 ; [+3]
      309 MOVE                             R37 R33
      310 GETIMPORT                        R36 K64 [tostring]
      312 CALL                             R36 1 1
      313 CONCAT                           R34 R35 R36
      314 JUMPIF                           R34 ; [+1]
      315 MOVE                             R34 R25
      316 GETUPVAL                         R35 8
      317 GETTABLEKS                       R35 R35 K66 ["createElement"]
      319 GETUPVAL                         R36 9
      320 GETTABLEKS                       R36 R36 K67 ["View"]
      322 DUPTABLE                         R37 K70 [{["tag"] = "row flex-x-between align-y-center gap-small padding-x-medium", ["Size"], ["LayoutOrder"]}]
      323 SETTABLEKS                       R4 R37 K3 ["Size"]
      325 SETTABLEKS                       R5 R37 K4 ["LayoutOrder"]
      327 DUPTABLE                         R38 K74 [{"LeftContent", "AnimationImportRow", "ButtonsSection"}]
      328 GETUPVAL                         R39 8
      329 GETTABLEKS                       R39 R39 K66 ["createElement"]
      331 GETUPVAL                         R40 9
      332 GETTABLEKS                       R40 R40 K67 ["View"]
      334 DUPTABLE                         R41 K77 [{["tag"] = "row align-y-center fill gap-small", ["LayoutOrder"], ["Size"], ["AutomaticSize"]}]
      335 NAMECALL                         R42 R32 K78 ["getNextOrder"]
      337 CALL                             R42 1 1
      338 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      340 GETIMPORT                        R42 K80 [UDim2.new]
      342 LOADN                            R43 0
      343 LOADN                            R44 0
      344 LOADN                            R45 1
      345 LOADN                            R46 0
      346 CALL                             R42 4 1
      347 SETTABLEKS                       R42 R41 K3 ["Size"]
      349 GETIMPORT                        R42 K82 [Enum.AutomaticSize.X]
      351 SETTABLEKS                       R42 R41 K76 ["AutomaticSize"]
      353 DUPTABLE                         R42 K85 [{"AnimationOverride", "AssetProgressRow"}]
      354 JUMPIFNOT                        R17 ; [+37]
      355 GETUPVAL                         R43 8
      356 GETTABLEKS                       R43 R43 K66 ["createElement"]
      358 GETUPVAL                         R44 9
      359 GETTABLEKS                       R44 R44 K67 ["View"]
      361 DUPTABLE                         R45 K87 [{["tag"] = "align-y-center fill auto-y"}]
      362 DUPTABLE                         R46 K89 [{"OverrideLink"}]
      363 GETUPVAL                         R47 8
      364 GETTABLEKS                       R47 R47 K66 ["createElement"]
      366 GETUPVAL                         R48 9
      367 GETTABLEKS                       R48 R48 K90 ["Text"]
      369 DUPTABLE                         R49 K92 [{"tag", "Text", "onActivated"}]
      370 LOADK                            R51 K93 ["auto-xy text-body-small text-wrap text-align-x-left text-align-y-center "]
      371 JUMPIFNOT                        R19 ; [+2]
      372 LOADK                            R52 K94 ["content-link"]
      373 JUMP                             ; [+1]
      374 LOADK                            R52 K95 ["content-muted"]
      375 CONCAT                           R50 R51 R52
      376 SETTABLEKS                       R50 R49 K68 ["tag"]
      378 SETTABLEKS                       R18 R49 K90 ["Text"]
      380 JUMPIFNOT                        R19 ; [+3]
      381 GETTABLEKS                       R50 R0 K96 ["onFlowButtonActivated"]
      383 JUMPIF                           R50 ; [+1]
      384 LOADNIL                          R50
      385 SETTABLEKS                       R50 R49 K91 ["onActivated"]
      387 CALL                             R47 2 1
      388 SETTABLEKS                       R47 R46 K88 ["OverrideLink"]
      390 CALL                             R43 3 1
      391 JUMPIF                           R43 ; [+1]
      392 LOADNIL                          R43
      393 SETTABLEKS                       R43 R42 K83 ["AnimationOverride"]
      395 JUMPIFNOT                        R27 ; [+65]
      396 GETUPVAL                         R43 8
      397 GETTABLEKS                       R43 R43 K66 ["createElement"]
      399 GETUPVAL                         R44 9
      400 GETTABLEKS                       R44 R44 K67 ["View"]
      402 DUPTABLE                         R45 K98 [{["tag"] = "row align-y-center"}]
      403 DUPTABLE                         R46 K101 [{"AssetProgressLabel", "AssetProgressBar"}]
      404 GETUPVAL                         R47 8
      405 GETTABLEKS                       R47 R47 K66 ["createElement"]
      407 GETUPVAL                         R48 9
      408 GETTABLEKS                       R48 R48 K90 ["Text"]
      410 DUPTABLE                         R49 K104 [{["tag"] = "auto-y text-title-small content-emphasis", ["Text"], ["Size"], ["LayoutOrder"] = 1}]
      411 SETTABLEKS                       R31 R49 K90 ["Text"]
      413 GETIMPORT                        R50 K80 [UDim2.new]
      415 LOADN                            R51 0
      416 LOADN                            R52 100
      417 LOADN                            R53 1
      418 LOADN                            R54 0
      419 CALL                             R50 4 1
      420 SETTABLEKS                       R50 R49 K3 ["Size"]
      422 CALL                             R47 2 1
      423 SETTABLEKS                       R47 R46 K99 ["AssetProgressLabel"]
      425 GETUPVAL                         R47 8
      426 GETTABLEKS                       R47 R47 K66 ["createElement"]
      428 GETUPVAL                         R48 9
      429 GETTABLEKS                       R48 R48 K105 ["Progress"]
      431 DUPTABLE                         R49 K111 [{["value"], ["size"], ["shape"], ["width"], ["LayoutOrder"] = 2}]
      432 ORK                              R50 R28 K112 [0]
      433 SETTABLEKS                       R50 R49 K106 ["value"]
      435 GETUPVAL                         R50 10
      436 GETTABLEKS                       R50 R50 K113 ["ProgressSize"]
      438 GETTABLEKS                       R50 R50 K114 ["Medium"]
      440 SETTABLEKS                       R50 R49 K107 ["size"]
      442 GETUPVAL                         R50 10
      443 GETTABLEKS                       R50 R50 K115 ["ProgressShape"]
      445 GETTABLEKS                       R50 R50 K116 ["Bar"]
      447 SETTABLEKS                       R50 R49 K108 ["shape"]
      449 GETIMPORT                        R50 K118 [UDim.new]
      451 LOADN                            R51 0
      452 LOADN                            R52 220
      453 CALL                             R50 2 1
      454 SETTABLEKS                       R50 R49 K109 ["width"]
      456 CALL                             R47 2 1
      457 SETTABLEKS                       R47 R46 K100 ["AssetProgressBar"]
      459 CALL                             R43 3 1
      460 JUMPIF                           R43 ; [+1]
      461 LOADNIL                          R43
      462 SETTABLEKS                       R43 R42 K84 ["AssetProgressRow"]
      464 CALL                             R39 3 1
      465 JUMPIF                           R39 ; [+13]
      466 GETUPVAL                         R39 8
      467 GETTABLEKS                       R39 R39 K66 ["createElement"]
      469 GETUPVAL                         R40 9
      470 GETTABLEKS                       R40 R40 K67 ["View"]
      472 DUPTABLE                         R41 K120 [{["tag"] = "size-0-0", ["LayoutOrder"]}]
      473 NAMECALL                         R42 R32 K78 ["getNextOrder"]
      475 CALL                             R42 1 1
      476 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      478 CALL                             R39 2 1
      479 SETTABLEKS                       R39 R38 K71 ["LeftContent"]
      481 JUMPIFNOT                        R21 ; [+105]
      482 GETUPVAL                         R39 8
      483 GETTABLEKS                       R39 R39 K66 ["createElement"]
      485 GETUPVAL                         R40 9
      486 GETTABLEKS                       R40 R40 K67 ["View"]
      488 DUPTABLE                         R41 K122 [{["tag"] = "row align-y-center gap-small auto-x", ["LayoutOrder"], ["Size"]}]
      489 NAMECALL                         R42 R32 K78 ["getNextOrder"]
      491 CALL                             R42 1 1
      492 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      494 GETIMPORT                        R42 K80 [UDim2.new]
      496 LOADN                            R43 0
      497 LOADN                            R44 0
      498 LOADN                            R45 1
      499 LOADN                            R46 0
      500 CALL                             R42 4 1
      501 SETTABLEKS                       R42 R41 K3 ["Size"]
      503 DUPTABLE                         R42 K125 [{"InvalidAnimationLabel", "AnimationIdInput"}]
      504 JUMPIF                           R14 ; [+27]
      505 GETUPVAL                         R43 8
      506 GETTABLEKS                       R43 R43 K66 ["createElement"]
      508 GETUPVAL                         R44 9
      509 GETTABLEKS                       R44 R44 K90 ["Text"]
      511 DUPTABLE                         R45 K127 [{["tag"] = "text-caption-small text-align-y-center content-alert", ["Text"], ["Size"], ["LayoutOrder"] = 1}]
      512 GETTABLEKS                       R46 R1 K21 ["Localization"]
      514 LOADK                            R48 K128 ["AssetConfigAnimation"]
      515 LOADK                            R49 K129 ["InvalidAnimationID"]
      516 NAMECALL                         R46 R46 K24 ["getText"]
      518 CALL                             R46 3 1
      519 SETTABLEKS                       R46 R45 K90 ["Text"]
      521 GETIMPORT                        R46 K80 [UDim2.new]
      523 LOADN                            R47 0
      524 LOADN                            R48 96
      525 LOADN                            R49 1
      526 LOADN                            R50 0
      527 CALL                             R46 4 1
      528 SETTABLEKS                       R46 R45 K3 ["Size"]
      530 CALL                             R43 2 1
      531 JUMPIF                           R43 ; [+1]
      532 LOADNIL                          R43
      533 SETTABLEKS                       R43 R42 K123 ["InvalidAnimationLabel"]
      535 GETUPVAL                         R43 8
      536 GETTABLEKS                       R43 R43 K66 ["createElement"]
      538 GETUPVAL                         R44 9
      539 GETTABLEKS                       R44 R44 K130 ["TextInput"]
      541 DUPTABLE                         R45 K136 [{["LayoutOrder"] = 2, ["text"], ["onChanged"], ["label"] = "", ["placeholder"], ["hasError"], ["size"], ["width"]}]
      542 JUMPIFEQKNIL                     R22 ; [+7]
      544 FASTCALL1                        TOSTRING R22 ; [+3]
      545 MOVE                             R47 R22
      546 GETIMPORT                        R46 K64 [tostring]
      548 CALL                             R46 1 1
      549 JUMP                             ; [+1]
      550 LOADK                            R46 K14 [""]
      551 SETTABLEKS                       R46 R45 K131 ["text"]
      553 GETTABLEKS                       R46 R0 K137 ["onAnimationIDChanged"]
      555 SETTABLEKS                       R46 R45 K132 ["onChanged"]
      557 GETTABLEKS                       R46 R1 K21 ["Localization"]
      559 LOADK                            R48 K128 ["AssetConfigAnimation"]
      560 LOADK                            R49 K138 ["AnimationID"]
      561 NAMECALL                         R46 R46 K24 ["getText"]
      563 CALL                             R46 3 1
      564 SETTABLEKS                       R46 R45 K134 ["placeholder"]
      566 SETTABLEKS                       R23 R45 K135 ["hasError"]
      568 GETUPVAL                         R46 10
      569 GETTABLEKS                       R46 R46 K139 ["InputSize"]
      571 GETTABLEKS                       R46 R46 K140 ["Small"]
      573 SETTABLEKS                       R46 R45 K107 ["size"]
      575 GETIMPORT                        R46 K118 [UDim.new]
      577 LOADN                            R47 0
      578 LOADN                            R48 160
      579 CALL                             R46 2 1
      580 SETTABLEKS                       R46 R45 K109 ["width"]
      582 CALL                             R43 2 1
      583 SETTABLEKS                       R43 R42 K124 ["AnimationIdInput"]
      585 CALL                             R39 3 1
      586 JUMPIF                           R39 ; [+1]
      587 LOADNIL                          R39
      588 SETTABLEKS                       R39 R38 K72 ["AnimationImportRow"]
      590 GETUPVAL                         R39 8
      591 GETTABLEKS                       R39 R39 K66 ["createElement"]
      593 GETUPVAL                         R40 9
      594 GETTABLEKS                       R40 R40 K67 ["View"]
      596 DUPTABLE                         R41 K142 [{["tag"] = "row align-x-right align-y-center gap-small auto-xy", ["LayoutOrder"]}]
      597 NAMECALL                         R42 R32 K78 ["getNextOrder"]
      599 CALL                             R42 1 1
      600 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      602 DUPTABLE                         R42 K145 [{"PublishButton", "CancelButton"}]
      603 JUMPIF                           R24 ; [+108]
      604 GETUPVAL                         R43 8
      605 GETTABLEKS                       R43 R43 K66 ["createElement"]
      607 GETUPVAL                         R44 9
      608 GETTABLEKS                       R44 R44 K67 ["View"]
      610 DUPTABLE                         R45 K146 [{"Size", "AutomaticSize", "LayoutOrder"}]
      611 GETIMPORT                        R46 K80 [UDim2.new]
      613 LOADN                            R47 0
      614 LOADN                            R48 0
      615 LOADN                            R49 0
      616 LOADN                            R50 40
      617 CALL                             R46 4 1
      618 SETTABLEKS                       R46 R45 K3 ["Size"]
      620 GETIMPORT                        R46 K82 [Enum.AutomaticSize.X]
      622 SETTABLEKS                       R46 R45 K76 ["AutomaticSize"]
      624 NAMECALL                         R46 R32 K78 ["getNextOrder"]
      626 CALL                             R46 1 1
      627 SETTABLEKS                       R46 R45 K4 ["LayoutOrder"]
      629 DUPTABLE                         R46 K149 [{"DisabledButton", "HoverOverlay"}]
      630 GETUPVAL                         R47 8
      631 GETTABLEKS                       R47 R47 K66 ["createElement"]
      633 GETUPVAL                         R48 9
      634 GETTABLEKS                       R48 R48 K150 ["Button"]
      636 DUPTABLE                         R49 K154 [{["text"], ["variant"], ["onActivated"], ["isDisabled"] = True, ["size"]}]
      637 SETTABLEKS                       R34 R49 K131 ["text"]
      639 GETUPVAL                         R50 10
      640 GETTABLEKS                       R50 R50 K155 ["ButtonVariant"]
      642 GETTABLEKS                       R50 R50 K156 ["Emphasis"]
      644 SETTABLEKS                       R50 R49 K151 ["variant"]
      646 DUPCLOSURE                       R50 K157 [PROTO_7]
      647 SETTABLEKS                       R50 R49 K91 ["onActivated"]
      649 GETUPVAL                         R50 10
      650 GETTABLEKS                       R50 R50 K139 ["InputSize"]
      652 GETTABLEKS                       R50 R50 K140 ["Small"]
      654 SETTABLEKS                       R50 R49 K107 ["size"]
      656 CALL                             R47 2 1
      657 SETTABLEKS                       R47 R46 K147 ["DisabledButton"]
      659 GETTABLEKS                       R48 R1 K158 ["OnPublishButtonHover"]
      661 JUMPIFNOT                        R48 ; [+45]
      662 GETUPVAL                         R47 8
      663 GETTABLEKS                       R47 R47 K66 ["createElement"]
      665 LOADK                            R48 K159 ["Frame"]
      666 NEWTABLE                         R49 8 0
      668 GETIMPORT                        R50 K80 [UDim2.new]
      670 LOADN                            R51 1
      671 LOADN                            R52 0
      672 LOADN                            R53 1
      673 LOADN                            R54 0
      674 CALL                             R50 4 1
      675 SETTABLEKS                       R50 R49 K3 ["Size"]
      677 GETIMPORT                        R50 K80 [UDim2.new]
      679 LOADN                            R51 0
      680 LOADN                            R52 0
      681 LOADN                            R53 0
      682 LOADN                            R54 0
      683 CALL                             R50 4 1
      684 SETTABLEKS                       R50 R49 K160 ["Position"]
      686 LOADN                            R50 1
      687 SETTABLEKS                       R50 R49 K161 ["BackgroundTransparency"]
      689 GETUPVAL                         R50 11
      690 GETTABLEKS                       R50 R50 K162 ["Event"]
      692 GETTABLEKS                       R50 R50 K163 ["MouseEnter"]
      694 NEWCLOSURE                       R51 P1
      695 CAPTURE                          VAL R1
      696 SETTABLE                         R51 R49 R50
      697 GETUPVAL                         R50 11
      698 GETTABLEKS                       R50 R50 K162 ["Event"]
      700 GETTABLEKS                       R50 R50 K164 ["MouseLeave"]
      702 NEWCLOSURE                       R51 P2
      703 CAPTURE                          VAL R1
      704 SETTABLE                         R51 R49 R50
      705 CALL                             R47 2 1
      706 JUMPIF                           R47 ; [+1]
      707 LOADNIL                          R47
      708 SETTABLEKS                       R47 R46 K148 ["HoverOverlay"]
      710 CALL                             R43 3 1
      711 JUMP                             ; [+60]
      712 GETUPVAL                         R43 8
      713 GETTABLEKS                       R43 R43 K66 ["createElement"]
      715 GETUPVAL                         R44 9
      716 GETTABLEKS                       R44 R44 K67 ["View"]
      718 DUPTABLE                         R45 K146 [{"Size", "AutomaticSize", "LayoutOrder"}]
      719 GETIMPORT                        R46 K80 [UDim2.new]
      721 LOADN                            R47 0
      722 LOADN                            R48 0
      723 LOADN                            R49 0
      724 LOADN                            R50 40
      725 CALL                             R46 4 1
      726 SETTABLEKS                       R46 R45 K3 ["Size"]
      728 GETIMPORT                        R46 K82 [Enum.AutomaticSize.X]
      730 SETTABLEKS                       R46 R45 K76 ["AutomaticSize"]
      732 NAMECALL                         R46 R32 K78 ["getNextOrder"]
      734 CALL                             R46 1 1
      735 SETTABLEKS                       R46 R45 K4 ["LayoutOrder"]
      737 DUPTABLE                         R46 K165 [{"Button"}]
      738 GETUPVAL                         R47 8
      739 GETTABLEKS                       R47 R47 K66 ["createElement"]
      741 GETUPVAL                         R48 9
      742 GETTABLEKS                       R48 R48 K150 ["Button"]
      744 DUPTABLE                         R49 K166 [{"text", "variant", "onActivated", "isDisabled", "size"}]
      745 SETTABLEKS                       R34 R49 K131 ["text"]
      747 GETUPVAL                         R50 10
      748 GETTABLEKS                       R50 R50 K155 ["ButtonVariant"]
      750 GETTABLEKS                       R50 R50 K156 ["Emphasis"]
      752 SETTABLEKS                       R50 R49 K151 ["variant"]
      754 GETTABLEKS                       R50 R0 K167 ["onPublishActivated"]
      756 SETTABLEKS                       R50 R49 K91 ["onActivated"]
      758 NOT                              R50 R24
      759 SETTABLEKS                       R50 R49 K152 ["isDisabled"]
      761 GETUPVAL                         R50 10
      762 GETTABLEKS                       R50 R50 K139 ["InputSize"]
      764 GETTABLEKS                       R50 R50 K140 ["Small"]
      766 SETTABLEKS                       R50 R49 K107 ["size"]
      768 CALL                             R47 2 1
      769 SETTABLEKS                       R47 R46 K150 ["Button"]
      771 CALL                             R43 3 1
      772 SETTABLEKS                       R43 R42 K143 ["PublishButton"]
      774 GETUPVAL                         R43 8
      775 GETTABLEKS                       R43 R43 K66 ["createElement"]
      777 GETUPVAL                         R44 9
      778 GETTABLEKS                       R44 R44 K67 ["View"]
      780 DUPTABLE                         R45 K146 [{"Size", "AutomaticSize", "LayoutOrder"}]
      781 GETIMPORT                        R46 K80 [UDim2.new]
      783 LOADN                            R47 0
      784 LOADN                            R48 0
      785 LOADN                            R49 0
      786 LOADN                            R50 40
      787 CALL                             R46 4 1
      788 SETTABLEKS                       R46 R45 K3 ["Size"]
      790 GETIMPORT                        R46 K82 [Enum.AutomaticSize.X]
      792 SETTABLEKS                       R46 R45 K76 ["AutomaticSize"]
      794 NAMECALL                         R46 R32 K78 ["getNextOrder"]
      796 CALL                             R46 1 1
      797 SETTABLEKS                       R46 R45 K4 ["LayoutOrder"]
      799 DUPTABLE                         R46 K165 [{"Button"}]
      800 GETUPVAL                         R47 8
      801 GETTABLEKS                       R47 R47 K66 ["createElement"]
      803 GETUPVAL                         R48 9
      804 GETTABLEKS                       R48 R48 K150 ["Button"]
      806 DUPTABLE                         R49 K168 [{"text", "variant", "onActivated", "size"}]
      807 GETTABLEKS                       R50 R1 K21 ["Localization"]
      809 LOADK                            R52 K58 ["General"]
      810 LOADK                            R53 K169 ["SearchOptionsCancel"]
      811 NAMECALL                         R50 R50 K24 ["getText"]
      813 CALL                             R50 3 1
      814 SETTABLEKS                       R50 R49 K131 ["text"]
      816 GETUPVAL                         R50 10
      817 GETTABLEKS                       R50 R50 K155 ["ButtonVariant"]
      819 GETTABLEKS                       R50 R50 K170 ["Standard"]
      821 SETTABLEKS                       R50 R49 K151 ["variant"]
      823 SETTABLEKS                       R7 R49 K91 ["onActivated"]
      825 GETUPVAL                         R50 10
      826 GETTABLEKS                       R50 R50 K139 ["InputSize"]
      828 GETTABLEKS                       R50 R50 K140 ["Small"]
      830 SETTABLEKS                       R50 R49 K107 ["size"]
      832 CALL                             R47 2 1
      833 SETTABLEKS                       R47 R46 K150 ["Button"]
      835 CALL                             R43 3 1
      836 SETTABLEKS                       R43 R42 K144 ["CancelButton"]
      838 CALL                             R39 3 1
      839 SETTABLEKS                       R39 R38 K73 ["ButtonsSection"]
      841 CALL                             R35 3 -1
      842 RETURN                           R35 -1

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
       59 GETTABLEKS                       R3 R0 K13 ["assetTypeValidationSucceeded"]
       61 SETTABLEKS                       R3 R2 K13 ["assetTypeValidationSucceeded"]
       63 RETURN                           R2 1

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
      151 GETTABLEKS                       R29 R29 K36 ["getFFlagCheckAvatarAssetPrivacy"]
      153 CALL                             R28 1 1
      154 GETIMPORT                        R29 K5 [require]
      156 GETTABLEKS                       R30 R0 K12 ["Src"]
      158 GETTABLEKS                       R30 R30 K35 ["Flags"]
      160 GETTABLEKS                       R30 R30 K37 ["getFFlagToolboxPublishOnApproval"]
      162 CALL                             R29 1 1
      163 GETIMPORT                        R30 K5 [require]
      165 GETTABLEKS                       R31 R0 K12 ["Src"]
      167 GETTABLEKS                       R31 R31 K35 ["Flags"]
      169 GETTABLEKS                       R31 R31 K38 ["getFFlagEnableUpdateAvatarItem"]
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
      198 CAPTURE                          VAL R29
      199 CAPTURE                          VAL R13
      200 SETTABLEKS                       R34 R31 K55 ["getSubmitTotal"]
      202 DUPCLOSURE                       R34 K56 [PROTO_6]
      203 CAPTURE                          VAL R33
      204 SETTABLEKS                       R34 R31 K57 ["getUploadFeeWithRobuxIcon"]
      206 DUPCLOSURE                       R34 K58 [PROTO_10]
      207 CAPTURE                          VAL R32
      208 CAPTURE                          VAL R11
      209 CAPTURE                          VAL R30
      210 CAPTURE                          VAL R13
      211 CAPTURE                          VAL R20
      212 CAPTURE                          VAL R12
      213 CAPTURE                          VAL R10
      214 CAPTURE                          VAL R33
      215 CAPTURE                          VAL R3
      216 CAPTURE                          VAL R26
      217 CAPTURE                          VAL R27
      218 CAPTURE                          VAL R2
      219 SETTABLEKS                       R34 R31 K59 ["render"]
      221 DUPCLOSURE                       R34 K60 [PROTO_11]
      222 CAPTURE                          VAL R28
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
