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
        0 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnPublishButtonHover"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnPublishButtonHover"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["state"]
        6 GETTABLEKS                       R1 R1 K1 ["animationId"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_14:
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
      209 GETUPVAL                         R27 6
      210 CALL                             R27 0 1
      211 JUMPIFNOT                        R27 ; [+25]
      212 LOADB                            R27 0
      213 GETTABLEKS                       R29 R1 K49 ["avatarAssetCurrentIndex"]
      215 FASTCALL1                        TYPE R29 ; [+2]
      216 GETIMPORT                        R28 K51 [type]
      218 CALL                             R28 1 1
      219 JUMPIFNOTEQKS                    R28 K52 ["number"] ; [+17]
      221 LOADB                            R27 0
      222 GETTABLEKS                       R29 R1 K53 ["avatarAssetTotalCount"]
      224 FASTCALL1                        TYPE R29 ; [+2]
      225 GETIMPORT                        R28 K51 [type]
      227 CALL                             R28 1 1
      228 JUMPIFNOTEQKS                    R28 K52 ["number"] ; [+8]
      230 GETTABLEKS                       R28 R1 K53 ["avatarAssetTotalCount"]
      232 LOADN                            R29 1
      233 JUMPIFLT                         R29 R28 ; [+2]
      235 LOADB                            R27 0 +1
      236 LOADB                            R27 1
      237 JUMPIFNOT                        R27 ; [+7]
      238 GETTABLEKS                       R30 R1 K49 ["avatarAssetCurrentIndex"]
      240 GETTABLEKS                       R31 R1 K53 ["avatarAssetTotalCount"]
      242 DIV                              R29 R30 R31
      243 MULK                             R28 R29 K54 [100]
      244 JUMPIF                           R28 ; [+1]
      245 LOADN                            R28 0
      246 JUMPIFNOT                        R27 ; [+7]
      247 GETTABLEKS                       R30 R1 K49 ["avatarAssetCurrentIndex"]
      249 FASTCALL1                        MATH_FLOOR R30 ; [+2]
      250 GETIMPORT                        R29 K57 [math.floor]
      252 CALL                             R29 1 1
      253 JUMPIF                           R29 ; [+1]
      254 LOADN                            R29 0
      255 JUMPIFNOT                        R27 ; [+7]
      256 GETTABLEKS                       R31 R1 K53 ["avatarAssetTotalCount"]
      258 FASTCALL1                        MATH_FLOOR R31 ; [+2]
      259 GETIMPORT                        R30 K57 [math.floor]
      261 CALL                             R30 1 1
      262 JUMPIF                           R30 ; [+1]
      263 LOADN                            R30 0
      264 JUMPIFNOT                        R27 ; [+23]
      265 GETTABLEKS                       R31 R1 K21 ["Localization"]
      267 LOADK                            R33 K58 ["General"]
      268 LOADK                            R34 K59 ["AssetXOutOfY"]
      269 DUPTABLE                         R35 K62 [{"current", "total"}]
      270 FASTCALL1                        TOSTRING R29 ; [+3]
      271 MOVE                             R37 R29
      272 GETIMPORT                        R36 K64 [tostring]
      274 CALL                             R36 1 1
      275 SETTABLEKS                       R36 R35 K60 ["current"]
      277 FASTCALL1                        TOSTRING R30 ; [+3]
      278 MOVE                             R37 R30
      279 GETIMPORT                        R36 K64 [tostring]
      281 CALL                             R36 1 1
      282 SETTABLEKS                       R36 R35 K61 ["total"]
      284 NAMECALL                         R31 R31 K24 ["getText"]
      286 CALL                             R31 4 1
      287 JUMPIF                           R31 ; [+1]
      288 LOADK                            R31 K14 [""]
      289 GETUPVAL                         R32 6
      290 CALL                             R32 0 1
      291 JUMPIFNOT                        R32 ; [+558]
      292 GETUPVAL                         R32 7
      293 GETTABLEKS                       R32 R32 K65 ["new"]
      295 CALL                             R32 0 1
      296 NAMECALL                         R33 R0 K46 ["getSubmitTotal"]
      298 CALL                             R33 1 1
      299 GETUPVAL                         R35 5
      300 GETTABLEKS                       R35 R35 K31 ["FLOW_TYPE"]
      302 GETTABLEKS                       R35 R35 K44 ["UPLOAD_FLOW"]
      304 JUMPIFNOTEQ                      R10 R35 ; [+16]
      306 JUMPIFNOT                        R26 ; [+14]
      307 GETTABLEKS                       R35 R1 K45 ["isUploadFeeEnabled"]
      309 JUMPIFNOT                        R35 ; [+11]
      310 LOADN                            R35 0
      311 JUMPIFNOTLT                      R35 R33 ; [+9]
      313 GETUPVAL                         R35 8
      314 FASTCALL1                        TOSTRING R33 ; [+3]
      315 MOVE                             R37 R33
      316 GETIMPORT                        R36 K64 [tostring]
      318 CALL                             R36 1 1
      319 CONCAT                           R34 R35 R36
      320 JUMPIF                           R34 ; [+1]
      321 MOVE                             R34 R25
      322 GETUPVAL                         R35 9
      323 GETTABLEKS                       R35 R35 K66 ["createElement"]
      325 GETUPVAL                         R36 10
      326 GETTABLEKS                       R36 R36 K67 ["View"]
      328 DUPTABLE                         R37 K70 [{["tag"] = "row flex-x-between align-y-center gap-small padding-x-medium", ["Size"], ["LayoutOrder"]}]
      329 SETTABLEKS                       R4 R37 K3 ["Size"]
      331 SETTABLEKS                       R5 R37 K4 ["LayoutOrder"]
      333 DUPTABLE                         R38 K74 [{"LeftContent", "AnimationImportRow", "ButtonsSection"}]
      334 GETUPVAL                         R39 9
      335 GETTABLEKS                       R39 R39 K66 ["createElement"]
      337 GETUPVAL                         R40 10
      338 GETTABLEKS                       R40 R40 K67 ["View"]
      340 DUPTABLE                         R41 K77 [{["tag"] = "row align-y-center fill gap-small", ["LayoutOrder"], ["Size"], ["AutomaticSize"]}]
      341 NAMECALL                         R42 R32 K78 ["getNextOrder"]
      343 CALL                             R42 1 1
      344 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      346 GETIMPORT                        R42 K80 [UDim2.new]
      348 LOADN                            R43 0
      349 LOADN                            R44 0
      350 LOADN                            R45 1
      351 LOADN                            R46 0
      352 CALL                             R42 4 1
      353 SETTABLEKS                       R42 R41 K3 ["Size"]
      355 GETIMPORT                        R42 K82 [Enum.AutomaticSize.X]
      357 SETTABLEKS                       R42 R41 K76 ["AutomaticSize"]
      359 DUPTABLE                         R42 K85 [{"AnimationOverride", "AssetProgressRow"}]
      360 JUMPIFNOT                        R17 ; [+37]
      361 GETUPVAL                         R43 9
      362 GETTABLEKS                       R43 R43 K66 ["createElement"]
      364 GETUPVAL                         R44 10
      365 GETTABLEKS                       R44 R44 K67 ["View"]
      367 DUPTABLE                         R45 K87 [{["tag"] = "align-y-center fill auto-y"}]
      368 DUPTABLE                         R46 K89 [{"OverrideLink"}]
      369 GETUPVAL                         R47 9
      370 GETTABLEKS                       R47 R47 K66 ["createElement"]
      372 GETUPVAL                         R48 10
      373 GETTABLEKS                       R48 R48 K90 ["Text"]
      375 DUPTABLE                         R49 K92 [{"tag", "Text", "onActivated"}]
      376 LOADK                            R51 K93 ["auto-xy text-body-small text-wrap text-align-x-left text-align-y-center "]
      377 JUMPIFNOT                        R19 ; [+2]
      378 LOADK                            R52 K94 ["content-link"]
      379 JUMP                             ; [+1]
      380 LOADK                            R52 K95 ["content-muted"]
      381 CONCAT                           R50 R51 R52
      382 SETTABLEKS                       R50 R49 K68 ["tag"]
      384 SETTABLEKS                       R18 R49 K90 ["Text"]
      386 JUMPIFNOT                        R19 ; [+3]
      387 GETTABLEKS                       R50 R0 K96 ["onFlowButtonActivated"]
      389 JUMPIF                           R50 ; [+1]
      390 LOADNIL                          R50
      391 SETTABLEKS                       R50 R49 K91 ["onActivated"]
      393 CALL                             R47 2 1
      394 SETTABLEKS                       R47 R46 K88 ["OverrideLink"]
      396 CALL                             R43 3 1
      397 JUMPIF                           R43 ; [+1]
      398 LOADNIL                          R43
      399 SETTABLEKS                       R43 R42 K83 ["AnimationOverride"]
      401 JUMPIFNOT                        R27 ; [+65]
      402 GETUPVAL                         R43 9
      403 GETTABLEKS                       R43 R43 K66 ["createElement"]
      405 GETUPVAL                         R44 10
      406 GETTABLEKS                       R44 R44 K67 ["View"]
      408 DUPTABLE                         R45 K98 [{["tag"] = "row align-y-center"}]
      409 DUPTABLE                         R46 K101 [{"AssetProgressLabel", "AssetProgressBar"}]
      410 GETUPVAL                         R47 9
      411 GETTABLEKS                       R47 R47 K66 ["createElement"]
      413 GETUPVAL                         R48 10
      414 GETTABLEKS                       R48 R48 K90 ["Text"]
      416 DUPTABLE                         R49 K104 [{["tag"] = "auto-y text-title-small content-emphasis", ["Text"], ["Size"], ["LayoutOrder"] = 1}]
      417 SETTABLEKS                       R31 R49 K90 ["Text"]
      419 GETIMPORT                        R50 K80 [UDim2.new]
      421 LOADN                            R51 0
      422 LOADN                            R52 100
      423 LOADN                            R53 1
      424 LOADN                            R54 0
      425 CALL                             R50 4 1
      426 SETTABLEKS                       R50 R49 K3 ["Size"]
      428 CALL                             R47 2 1
      429 SETTABLEKS                       R47 R46 K99 ["AssetProgressLabel"]
      431 GETUPVAL                         R47 9
      432 GETTABLEKS                       R47 R47 K66 ["createElement"]
      434 GETUPVAL                         R48 10
      435 GETTABLEKS                       R48 R48 K105 ["Progress"]
      437 DUPTABLE                         R49 K111 [{["value"], ["size"], ["shape"], ["width"], ["LayoutOrder"] = 2}]
      438 ORK                              R50 R28 K112 [0]
      439 SETTABLEKS                       R50 R49 K106 ["value"]
      441 GETUPVAL                         R50 11
      442 GETTABLEKS                       R50 R50 K113 ["ProgressSize"]
      444 GETTABLEKS                       R50 R50 K114 ["Medium"]
      446 SETTABLEKS                       R50 R49 K107 ["size"]
      448 GETUPVAL                         R50 11
      449 GETTABLEKS                       R50 R50 K115 ["ProgressShape"]
      451 GETTABLEKS                       R50 R50 K116 ["Bar"]
      453 SETTABLEKS                       R50 R49 K108 ["shape"]
      455 GETIMPORT                        R50 K118 [UDim.new]
      457 LOADN                            R51 0
      458 LOADN                            R52 220
      459 CALL                             R50 2 1
      460 SETTABLEKS                       R50 R49 K109 ["width"]
      462 CALL                             R47 2 1
      463 SETTABLEKS                       R47 R46 K100 ["AssetProgressBar"]
      465 CALL                             R43 3 1
      466 JUMPIF                           R43 ; [+1]
      467 LOADNIL                          R43
      468 SETTABLEKS                       R43 R42 K84 ["AssetProgressRow"]
      470 CALL                             R39 3 1
      471 JUMPIF                           R39 ; [+13]
      472 GETUPVAL                         R39 9
      473 GETTABLEKS                       R39 R39 K66 ["createElement"]
      475 GETUPVAL                         R40 10
      476 GETTABLEKS                       R40 R40 K67 ["View"]
      478 DUPTABLE                         R41 K120 [{["tag"] = "size-0-0", ["LayoutOrder"]}]
      479 NAMECALL                         R42 R32 K78 ["getNextOrder"]
      481 CALL                             R42 1 1
      482 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      484 CALL                             R39 2 1
      485 SETTABLEKS                       R39 R38 K71 ["LeftContent"]
      487 JUMPIFNOT                        R21 ; [+105]
      488 GETUPVAL                         R39 9
      489 GETTABLEKS                       R39 R39 K66 ["createElement"]
      491 GETUPVAL                         R40 10
      492 GETTABLEKS                       R40 R40 K67 ["View"]
      494 DUPTABLE                         R41 K122 [{["tag"] = "row align-y-center gap-small auto-x", ["LayoutOrder"], ["Size"]}]
      495 NAMECALL                         R42 R32 K78 ["getNextOrder"]
      497 CALL                             R42 1 1
      498 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      500 GETIMPORT                        R42 K80 [UDim2.new]
      502 LOADN                            R43 0
      503 LOADN                            R44 0
      504 LOADN                            R45 1
      505 LOADN                            R46 0
      506 CALL                             R42 4 1
      507 SETTABLEKS                       R42 R41 K3 ["Size"]
      509 DUPTABLE                         R42 K125 [{"InvalidAnimationLabel", "AnimationIdInput"}]
      510 JUMPIF                           R14 ; [+27]
      511 GETUPVAL                         R43 9
      512 GETTABLEKS                       R43 R43 K66 ["createElement"]
      514 GETUPVAL                         R44 10
      515 GETTABLEKS                       R44 R44 K90 ["Text"]
      517 DUPTABLE                         R45 K127 [{["tag"] = "text-caption-small text-align-y-center content-alert", ["Text"], ["Size"], ["LayoutOrder"] = 1}]
      518 GETTABLEKS                       R46 R1 K21 ["Localization"]
      520 LOADK                            R48 K128 ["AssetConfigAnimation"]
      521 LOADK                            R49 K129 ["InvalidAnimationID"]
      522 NAMECALL                         R46 R46 K24 ["getText"]
      524 CALL                             R46 3 1
      525 SETTABLEKS                       R46 R45 K90 ["Text"]
      527 GETIMPORT                        R46 K80 [UDim2.new]
      529 LOADN                            R47 0
      530 LOADN                            R48 96
      531 LOADN                            R49 1
      532 LOADN                            R50 0
      533 CALL                             R46 4 1
      534 SETTABLEKS                       R46 R45 K3 ["Size"]
      536 CALL                             R43 2 1
      537 JUMPIF                           R43 ; [+1]
      538 LOADNIL                          R43
      539 SETTABLEKS                       R43 R42 K123 ["InvalidAnimationLabel"]
      541 GETUPVAL                         R43 9
      542 GETTABLEKS                       R43 R43 K66 ["createElement"]
      544 GETUPVAL                         R44 10
      545 GETTABLEKS                       R44 R44 K130 ["TextInput"]
      547 DUPTABLE                         R45 K136 [{["LayoutOrder"] = 2, ["text"], ["onChanged"], ["label"] = "", ["placeholder"], ["hasError"], ["size"], ["width"]}]
      548 JUMPIFEQKNIL                     R22 ; [+7]
      550 FASTCALL1                        TOSTRING R22 ; [+3]
      551 MOVE                             R47 R22
      552 GETIMPORT                        R46 K64 [tostring]
      554 CALL                             R46 1 1
      555 JUMP                             ; [+1]
      556 LOADK                            R46 K14 [""]
      557 SETTABLEKS                       R46 R45 K131 ["text"]
      559 GETTABLEKS                       R46 R0 K137 ["onAnimationIDChanged"]
      561 SETTABLEKS                       R46 R45 K132 ["onChanged"]
      563 GETTABLEKS                       R46 R1 K21 ["Localization"]
      565 LOADK                            R48 K128 ["AssetConfigAnimation"]
      566 LOADK                            R49 K138 ["AnimationID"]
      567 NAMECALL                         R46 R46 K24 ["getText"]
      569 CALL                             R46 3 1
      570 SETTABLEKS                       R46 R45 K134 ["placeholder"]
      572 SETTABLEKS                       R23 R45 K135 ["hasError"]
      574 GETUPVAL                         R46 11
      575 GETTABLEKS                       R46 R46 K139 ["InputSize"]
      577 GETTABLEKS                       R46 R46 K140 ["Small"]
      579 SETTABLEKS                       R46 R45 K107 ["size"]
      581 GETIMPORT                        R46 K118 [UDim.new]
      583 LOADN                            R47 0
      584 LOADN                            R48 160
      585 CALL                             R46 2 1
      586 SETTABLEKS                       R46 R45 K109 ["width"]
      588 CALL                             R43 2 1
      589 SETTABLEKS                       R43 R42 K124 ["AnimationIdInput"]
      591 CALL                             R39 3 1
      592 JUMPIF                           R39 ; [+1]
      593 LOADNIL                          R39
      594 SETTABLEKS                       R39 R38 K72 ["AnimationImportRow"]
      596 GETUPVAL                         R39 9
      597 GETTABLEKS                       R39 R39 K66 ["createElement"]
      599 GETUPVAL                         R40 10
      600 GETTABLEKS                       R40 R40 K67 ["View"]
      602 DUPTABLE                         R41 K142 [{["tag"] = "row align-x-right align-y-center gap-small auto-xy", ["LayoutOrder"]}]
      603 NAMECALL                         R42 R32 K78 ["getNextOrder"]
      605 CALL                             R42 1 1
      606 SETTABLEKS                       R42 R41 K4 ["LayoutOrder"]
      608 DUPTABLE                         R42 K145 [{"PublishButton", "CancelButton"}]
      609 JUMPIF                           R24 ; [+108]
      610 GETUPVAL                         R43 9
      611 GETTABLEKS                       R43 R43 K66 ["createElement"]
      613 GETUPVAL                         R44 10
      614 GETTABLEKS                       R44 R44 K67 ["View"]
      616 DUPTABLE                         R45 K146 [{"Size", "AutomaticSize", "LayoutOrder"}]
      617 GETIMPORT                        R46 K80 [UDim2.new]
      619 LOADN                            R47 0
      620 LOADN                            R48 0
      621 LOADN                            R49 0
      622 LOADN                            R50 40
      623 CALL                             R46 4 1
      624 SETTABLEKS                       R46 R45 K3 ["Size"]
      626 GETIMPORT                        R46 K82 [Enum.AutomaticSize.X]
      628 SETTABLEKS                       R46 R45 K76 ["AutomaticSize"]
      630 NAMECALL                         R46 R32 K78 ["getNextOrder"]
      632 CALL                             R46 1 1
      633 SETTABLEKS                       R46 R45 K4 ["LayoutOrder"]
      635 DUPTABLE                         R46 K149 [{"DisabledButton", "HoverOverlay"}]
      636 GETUPVAL                         R47 9
      637 GETTABLEKS                       R47 R47 K66 ["createElement"]
      639 GETUPVAL                         R48 10
      640 GETTABLEKS                       R48 R48 K150 ["Button"]
      642 DUPTABLE                         R49 K154 [{["text"], ["variant"], ["onActivated"], ["isDisabled"] = True, ["size"]}]
      643 SETTABLEKS                       R34 R49 K131 ["text"]
      645 GETUPVAL                         R50 11
      646 GETTABLEKS                       R50 R50 K155 ["ButtonVariant"]
      648 GETTABLEKS                       R50 R50 K156 ["Emphasis"]
      650 SETTABLEKS                       R50 R49 K151 ["variant"]
      652 DUPCLOSURE                       R50 K157 [PROTO_7]
      653 SETTABLEKS                       R50 R49 K91 ["onActivated"]
      655 GETUPVAL                         R50 11
      656 GETTABLEKS                       R50 R50 K139 ["InputSize"]
      658 GETTABLEKS                       R50 R50 K140 ["Small"]
      660 SETTABLEKS                       R50 R49 K107 ["size"]
      662 CALL                             R47 2 1
      663 SETTABLEKS                       R47 R46 K147 ["DisabledButton"]
      665 GETTABLEKS                       R48 R1 K158 ["OnPublishButtonHover"]
      667 JUMPIFNOT                        R48 ; [+45]
      668 GETUPVAL                         R47 9
      669 GETTABLEKS                       R47 R47 K66 ["createElement"]
      671 LOADK                            R48 K159 ["Frame"]
      672 NEWTABLE                         R49 8 0
      674 GETIMPORT                        R50 K80 [UDim2.new]
      676 LOADN                            R51 1
      677 LOADN                            R52 0
      678 LOADN                            R53 1
      679 LOADN                            R54 0
      680 CALL                             R50 4 1
      681 SETTABLEKS                       R50 R49 K3 ["Size"]
      683 GETIMPORT                        R50 K80 [UDim2.new]
      685 LOADN                            R51 0
      686 LOADN                            R52 0
      687 LOADN                            R53 0
      688 LOADN                            R54 0
      689 CALL                             R50 4 1
      690 SETTABLEKS                       R50 R49 K160 ["Position"]
      692 LOADN                            R50 1
      693 SETTABLEKS                       R50 R49 K161 ["BackgroundTransparency"]
      695 GETUPVAL                         R50 12
      696 GETTABLEKS                       R50 R50 K162 ["Event"]
      698 GETTABLEKS                       R50 R50 K163 ["MouseEnter"]
      700 NEWCLOSURE                       R51 P1
      701 CAPTURE                          VAL R1
      702 SETTABLE                         R51 R49 R50
      703 GETUPVAL                         R50 12
      704 GETTABLEKS                       R50 R50 K162 ["Event"]
      706 GETTABLEKS                       R50 R50 K164 ["MouseLeave"]
      708 NEWCLOSURE                       R51 P2
      709 CAPTURE                          VAL R1
      710 SETTABLE                         R51 R49 R50
      711 CALL                             R47 2 1
      712 JUMPIF                           R47 ; [+1]
      713 LOADNIL                          R47
      714 SETTABLEKS                       R47 R46 K148 ["HoverOverlay"]
      716 CALL                             R43 3 1
      717 JUMP                             ; [+60]
      718 GETUPVAL                         R43 9
      719 GETTABLEKS                       R43 R43 K66 ["createElement"]
      721 GETUPVAL                         R44 10
      722 GETTABLEKS                       R44 R44 K67 ["View"]
      724 DUPTABLE                         R45 K146 [{"Size", "AutomaticSize", "LayoutOrder"}]
      725 GETIMPORT                        R46 K80 [UDim2.new]
      727 LOADN                            R47 0
      728 LOADN                            R48 0
      729 LOADN                            R49 0
      730 LOADN                            R50 40
      731 CALL                             R46 4 1
      732 SETTABLEKS                       R46 R45 K3 ["Size"]
      734 GETIMPORT                        R46 K82 [Enum.AutomaticSize.X]
      736 SETTABLEKS                       R46 R45 K76 ["AutomaticSize"]
      738 NAMECALL                         R46 R32 K78 ["getNextOrder"]
      740 CALL                             R46 1 1
      741 SETTABLEKS                       R46 R45 K4 ["LayoutOrder"]
      743 DUPTABLE                         R46 K165 [{"Button"}]
      744 GETUPVAL                         R47 9
      745 GETTABLEKS                       R47 R47 K66 ["createElement"]
      747 GETUPVAL                         R48 10
      748 GETTABLEKS                       R48 R48 K150 ["Button"]
      750 DUPTABLE                         R49 K166 [{"text", "variant", "onActivated", "isDisabled", "size"}]
      751 SETTABLEKS                       R34 R49 K131 ["text"]
      753 GETUPVAL                         R50 11
      754 GETTABLEKS                       R50 R50 K155 ["ButtonVariant"]
      756 GETTABLEKS                       R50 R50 K156 ["Emphasis"]
      758 SETTABLEKS                       R50 R49 K151 ["variant"]
      760 GETTABLEKS                       R50 R0 K167 ["onPublishActivated"]
      762 SETTABLEKS                       R50 R49 K91 ["onActivated"]
      764 NOT                              R50 R24
      765 SETTABLEKS                       R50 R49 K152 ["isDisabled"]
      767 GETUPVAL                         R50 11
      768 GETTABLEKS                       R50 R50 K139 ["InputSize"]
      770 GETTABLEKS                       R50 R50 K140 ["Small"]
      772 SETTABLEKS                       R50 R49 K107 ["size"]
      774 CALL                             R47 2 1
      775 SETTABLEKS                       R47 R46 K150 ["Button"]
      777 CALL                             R43 3 1
      778 SETTABLEKS                       R43 R42 K143 ["PublishButton"]
      780 GETUPVAL                         R43 9
      781 GETTABLEKS                       R43 R43 K66 ["createElement"]
      783 GETUPVAL                         R44 10
      784 GETTABLEKS                       R44 R44 K67 ["View"]
      786 DUPTABLE                         R45 K146 [{"Size", "AutomaticSize", "LayoutOrder"}]
      787 GETIMPORT                        R46 K80 [UDim2.new]
      789 LOADN                            R47 0
      790 LOADN                            R48 0
      791 LOADN                            R49 0
      792 LOADN                            R50 40
      793 CALL                             R46 4 1
      794 SETTABLEKS                       R46 R45 K3 ["Size"]
      796 GETIMPORT                        R46 K82 [Enum.AutomaticSize.X]
      798 SETTABLEKS                       R46 R45 K76 ["AutomaticSize"]
      800 NAMECALL                         R46 R32 K78 ["getNextOrder"]
      802 CALL                             R46 1 1
      803 SETTABLEKS                       R46 R45 K4 ["LayoutOrder"]
      805 DUPTABLE                         R46 K165 [{"Button"}]
      806 GETUPVAL                         R47 9
      807 GETTABLEKS                       R47 R47 K66 ["createElement"]
      809 GETUPVAL                         R48 10
      810 GETTABLEKS                       R48 R48 K150 ["Button"]
      812 DUPTABLE                         R49 K168 [{"text", "variant", "onActivated", "size"}]
      813 GETTABLEKS                       R50 R1 K21 ["Localization"]
      815 LOADK                            R52 K58 ["General"]
      816 LOADK                            R53 K169 ["SearchOptionsCancel"]
      817 NAMECALL                         R50 R50 K24 ["getText"]
      819 CALL                             R50 3 1
      820 SETTABLEKS                       R50 R49 K131 ["text"]
      822 GETUPVAL                         R50 11
      823 GETTABLEKS                       R50 R50 K155 ["ButtonVariant"]
      825 GETTABLEKS                       R50 R50 K170 ["Standard"]
      827 SETTABLEKS                       R50 R49 K151 ["variant"]
      829 SETTABLEKS                       R7 R49 K91 ["onActivated"]
      831 GETUPVAL                         R50 11
      832 GETTABLEKS                       R50 R50 K139 ["InputSize"]
      834 GETTABLEKS                       R50 R50 K140 ["Small"]
      836 SETTABLEKS                       R50 R49 K107 ["size"]
      838 CALL                             R47 2 1
      839 SETTABLEKS                       R47 R46 K150 ["Button"]
      841 CALL                             R43 3 1
      842 SETTABLEKS                       R43 R42 K144 ["CancelButton"]
      844 CALL                             R39 3 1
      845 SETTABLEKS                       R39 R38 K73 ["ButtonsSection"]
      847 CALL                             R35 3 -1
      848 CLOSEUPVALS                      R24
      849 RETURN                           R35 -1
      850 GETUPVAL                         R32 12
      851 GETTABLEKS                       R32 R32 K66 ["createElement"]
      853 LOADK                            R33 K159 ["Frame"]
      854 DUPTABLE                         R34 K174 [{["Size"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["BorderColor3"], ["BorderSizePixel"] = 1, ["LayoutOrder"]}]
      855 SETTABLEKS                       R4 R34 K3 ["Size"]
      857 GETTABLEKS                       R35 R8 K175 ["backgroundColor"]
      859 SETTABLEKS                       R35 R34 K171 ["BackgroundColor3"]
      861 GETTABLEKS                       R35 R8 K176 ["borderColor"]
      863 SETTABLEKS                       R35 R34 K172 ["BorderColor3"]
      865 SETTABLEKS                       R5 R34 K4 ["LayoutOrder"]
      867 DUPTABLE                         R35 K181 [{"UIPadding", "UIListLayout", "AnimationIdBox", "InvalidAnimationLabel", "CancelButton", "PublishButton", "ToggleOverrideButton"}]
      868 GETUPVAL                         R36 12
      869 GETTABLEKS                       R36 R36 K66 ["createElement"]
      871 LOADK                            R37 K177 ["UIPadding"]
      872 DUPTABLE                         R38 K186 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      873 GETIMPORT                        R39 K118 [UDim.new]
      875 LOADN                            R40 0
      876 LOADN                            R41 0
      877 CALL                             R39 2 1
      878 SETTABLEKS                       R39 R38 K182 ["PaddingBottom"]
      880 GETIMPORT                        R39 K118 [UDim.new]
      882 LOADN                            R40 0
      883 LOADN                            R41 24
      884 CALL                             R39 2 1
      885 SETTABLEKS                       R39 R38 K183 ["PaddingLeft"]
      887 GETIMPORT                        R39 K118 [UDim.new]
      889 LOADN                            R40 0
      890 LOADN                            R41 24
      891 CALL                             R39 2 1
      892 SETTABLEKS                       R39 R38 K184 ["PaddingRight"]
      894 GETIMPORT                        R39 K118 [UDim.new]
      896 LOADN                            R40 0
      897 LOADN                            R41 0
      898 CALL                             R39 2 1
      899 SETTABLEKS                       R39 R38 K185 ["PaddingTop"]
      901 CALL                             R36 2 1
      902 SETTABLEKS                       R36 R35 K177 ["UIPadding"]
      904 GETUPVAL                         R36 12
      905 GETTABLEKS                       R36 R36 K66 ["createElement"]
      907 LOADK                            R37 K178 ["UIListLayout"]
      908 DUPTABLE                         R38 K192 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      909 GETIMPORT                        R39 K194 [Enum.FillDirection.Horizontal]
      911 SETTABLEKS                       R39 R38 K187 ["FillDirection"]
      913 GETIMPORT                        R39 K196 [Enum.HorizontalAlignment.Right]
      915 SETTABLEKS                       R39 R38 K188 ["HorizontalAlignment"]
      917 GETIMPORT                        R39 K198 [Enum.VerticalAlignment.Center]
      919 SETTABLEKS                       R39 R38 K189 ["VerticalAlignment"]
      921 GETIMPORT                        R39 K199 [Enum.SortOrder.LayoutOrder]
      923 SETTABLEKS                       R39 R38 K190 ["SortOrder"]
      925 GETIMPORT                        R39 K118 [UDim.new]
      927 LOADN                            R40 0
      928 LOADN                            R41 24
      929 CALL                             R39 2 1
      930 SETTABLEKS                       R39 R38 K191 ["Padding"]
      932 CALL                             R36 2 1
      933 SETTABLEKS                       R36 R35 K178 ["UIListLayout"]
      935 MOVE                             R36 R21
      936 JUMPIFNOT                        R36 ; [+62]
      937 GETUPVAL                         R36 12
      938 GETTABLEKS                       R36 R36 K66 ["createElement"]
      940 LOADK                            R37 K159 ["Frame"]
      941 DUPTABLE                         R38 K201 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"] = 3}]
      942 GETIMPORT                        R39 K80 [UDim2.new]
      944 LOADN                            R40 0
      945 LOADN                            R41 160
      946 LOADN                            R42 0
      947 LOADN                            R43 40
      948 CALL                             R39 4 1
      949 SETTABLEKS                       R39 R38 K3 ["Size"]
      951 DUPTABLE                         R39 K203 [{"TextField"}]
      952 GETUPVAL                         R40 12
      953 GETTABLEKS                       R40 R40 K66 ["createElement"]
      955 GETUPVAL                         R41 13
      956 DUPTABLE                         R42 K208 [{["ForceOnTextChange"] = True, ["OnTextChanged"], ["PlaceholderText"], ["Size"], ["Style"], ["Text"]}]
      957 GETTABLEKS                       R43 R0 K137 ["onAnimationIDChanged"]
      959 SETTABLEKS                       R43 R42 K205 ["OnTextChanged"]
      961 GETTABLEKS                       R43 R1 K21 ["Localization"]
      963 LOADK                            R45 K128 ["AssetConfigAnimation"]
      964 LOADK                            R46 K138 ["AnimationID"]
      965 NAMECALL                         R43 R43 K24 ["getText"]
      967 CALL                             R43 3 1
      968 SETTABLEKS                       R43 R42 K206 ["PlaceholderText"]
      970 GETIMPORT                        R43 K80 [UDim2.new]
      972 LOADN                            R44 1
      973 LOADN                            R45 0
      974 LOADN                            R46 1
      975 LOADN                            R47 0
      976 CALL                             R43 4 1
      977 SETTABLEKS                       R43 R42 K3 ["Size"]
      979 JUMPIFNOT                        R23 ; [+2]
      980 LOADK                            R43 K209 ["FilledRoundedRedBorder"]
      981 JUMP                             ; [+1]
      982 LOADK                            R43 K210 ["FilledRoundedBorder"]
      983 SETTABLEKS                       R43 R42 K207 ["Style"]
      985 JUMPIFNOT                        R22 ; [+6]
      986 FASTCALL1                        TOSTRING R22 ; [+3]
      987 MOVE                             R44 R22
      988 GETIMPORT                        R43 K64 [tostring]
      990 CALL                             R43 1 1
      991 JUMPIF                           R43 ; [+1]
      992 LOADNIL                          R43
      993 SETTABLEKS                       R43 R42 K90 ["Text"]
      995 CALL                             R40 2 1
      996 SETTABLEKS                       R40 R39 K202 ["TextField"]
      998 CALL                             R36 3 1
      999 SETTABLEKS                       R36 R35 K179 ["AnimationIdBox"]
     1001 MOVE                             R36 R21
     1002 JUMPIFNOT                        R36 ; [+48]
     1003 NOT                              R36 R14
     1004 JUMPIFNOT                        R36 ; [+46]
     1005 GETUPVAL                         R36 12
     1006 GETTABLEKS                       R36 R36 K66 ["createElement"]
     1008 LOADK                            R37 K211 ["TextLabel"]
     1009 DUPTABLE                         R38 K217 [{["BackgroundTransparency"] = 1, ["Font"], ["Text"], ["TextColor3"], ["TextSize"], ["Size"], ["TextYAlignment"], ["TextXAlignment"], ["LayoutOrder"] = 2}]
     1010 GETUPVAL                         R39 14
     1011 GETTABLEKS                       R39 R39 K218 ["FONT"]
     1013 SETTABLEKS                       R39 R38 K212 ["Font"]
     1015 GETTABLEKS                       R39 R1 K21 ["Localization"]
     1017 LOADK                            R41 K128 ["AssetConfigAnimation"]
     1018 LOADK                            R42 K129 ["InvalidAnimationID"]
     1019 NAMECALL                         R39 R39 K24 ["getText"]
     1021 CALL                             R39 3 1
     1022 SETTABLEKS                       R39 R38 K90 ["Text"]
     1024 GETTABLEKS                       R39 R3 K219 ["redText"]
     1026 SETTABLEKS                       R39 R38 K213 ["TextColor3"]
     1028 GETUPVAL                         R39 14
     1029 GETTABLEKS                       R39 R39 K220 ["FONT_SIZE_MEDIUM"]
     1031 SETTABLEKS                       R39 R38 K214 ["TextSize"]
     1033 GETIMPORT                        R39 K80 [UDim2.new]
     1035 LOADN                            R40 0
     1036 LOADN                            R41 96
     1037 LOADN                            R42 1
     1038 LOADN                            R43 0
     1039 CALL                             R39 4 1
     1040 SETTABLEKS                       R39 R38 K3 ["Size"]
     1042 GETIMPORT                        R39 K221 [Enum.TextYAlignment.Center]
     1044 SETTABLEKS                       R39 R38 K215 ["TextYAlignment"]
     1046 GETIMPORT                        R39 K222 [Enum.TextXAlignment.Center]
     1048 SETTABLEKS                       R39 R38 K216 ["TextXAlignment"]
     1050 CALL                             R36 2 1
     1051 SETTABLEKS                       R36 R35 K123 ["InvalidAnimationLabel"]
     1053 GETUPVAL                         R36 12
     1054 GETTABLEKS                       R36 R36 K66 ["createElement"]
     1056 GETUPVAL                         R37 15
     1057 DUPTABLE                         R38 K226 [{["LayoutOrder"] = 4, ["OnClick"], ["Style"] = "Round", ["Size"], ["Text"]}]
     1058 SETTABLEKS                       R7 R38 K224 ["OnClick"]
     1060 GETIMPORT                        R39 K80 [UDim2.new]
     1062 LOADN                            R40 0
     1063 LOADN                            R41 140
     1064 LOADN                            R42 0
     1065 LOADN                            R43 40
     1066 CALL                             R39 4 1
     1067 SETTABLEKS                       R39 R38 K3 ["Size"]
     1069 GETTABLEKS                       R39 R1 K21 ["Localization"]
     1071 LOADK                            R41 K58 ["General"]
     1072 LOADK                            R42 K169 ["SearchOptionsCancel"]
     1073 NAMECALL                         R39 R39 K24 ["getText"]
     1075 CALL                             R39 3 1
     1076 SETTABLEKS                       R39 R38 K90 ["Text"]
     1078 CALL                             R36 2 1
     1079 SETTABLEKS                       R36 R35 K144 ["CancelButton"]
     1081 GETUPVAL                         R37 16
     1082 CALL                             R37 0 1
     1083 JUMPIFNOT                        R37 ; [+98]
     1084 JUMPIF                           R24 ; [+97]
     1085 GETUPVAL                         R36 12
     1086 GETTABLEKS                       R36 R36 K66 ["createElement"]
     1088 GETUPVAL                         R37 10
     1089 GETTABLEKS                       R37 R37 K67 ["View"]
     1091 DUPTABLE                         R38 K229 [{["tag"] = "size-full", ["LayoutOrder"] = 5, ["Size"]}]
     1092 GETIMPORT                        R39 K80 [UDim2.new]
     1094 LOADN                            R40 0
     1095 LOADN                            R41 140
     1096 LOADN                            R42 0
     1097 LOADN                            R43 40
     1098 CALL                             R39 4 1
     1099 SETTABLEKS                       R39 R38 K3 ["Size"]
     1101 DUPTABLE                         R39 K149 [{"DisabledButton", "HoverOverlay"}]
     1102 GETUPVAL                         R40 12
     1103 GETTABLEKS                       R40 R40 K66 ["createElement"]
     1105 GETUPVAL                         R41 15
     1106 DUPTABLE                         R42 K232 [{["Size"], ["OnClick"], ["Style"] = "RoundPrimary", ["StyleModifier"], ["Text"]}]
     1107 GETIMPORT                        R43 K80 [UDim2.new]
     1109 LOADN                            R44 1
     1110 LOADN                            R45 0
     1111 LOADN                            R46 1
     1112 LOADN                            R47 0
     1113 CALL                             R43 4 1
     1114 SETTABLEKS                       R43 R42 K3 ["Size"]
     1116 DUPCLOSURE                       R43 K233 [PROTO_10]
     1117 SETTABLEKS                       R43 R42 K224 ["OnClick"]
     1119 GETUPVAL                         R43 17
     1120 GETTABLEKS                       R43 R43 K234 ["Disabled"]
     1122 SETTABLEKS                       R43 R42 K231 ["StyleModifier"]
     1124 SETTABLEKS                       R25 R42 K90 ["Text"]
     1126 CALL                             R40 2 1
     1127 SETTABLEKS                       R40 R39 K147 ["DisabledButton"]
     1129 GETTABLEKS                       R41 R1 K158 ["OnPublishButtonHover"]
     1131 JUMPIFNOT                        R41 ; [+45]
     1132 GETUPVAL                         R40 12
     1133 GETTABLEKS                       R40 R40 K66 ["createElement"]
     1135 LOADK                            R41 K159 ["Frame"]
     1136 NEWTABLE                         R42 8 0
     1138 GETIMPORT                        R43 K80 [UDim2.new]
     1140 LOADN                            R44 1
     1141 LOADN                            R45 0
     1142 LOADN                            R46 1
     1143 LOADN                            R47 0
     1144 CALL                             R43 4 1
     1145 SETTABLEKS                       R43 R42 K3 ["Size"]
     1147 GETIMPORT                        R43 K80 [UDim2.new]
     1149 LOADN                            R44 0
     1150 LOADN                            R45 0
     1151 LOADN                            R46 0
     1152 LOADN                            R47 0
     1153 CALL                             R43 4 1
     1154 SETTABLEKS                       R43 R42 K160 ["Position"]
     1156 LOADN                            R43 1
     1157 SETTABLEKS                       R43 R42 K161 ["BackgroundTransparency"]
     1159 GETUPVAL                         R43 12
     1160 GETTABLEKS                       R43 R43 K162 ["Event"]
     1162 GETTABLEKS                       R43 R43 K163 ["MouseEnter"]
     1164 NEWCLOSURE                       R44 P4
     1165 CAPTURE                          VAL R1
     1166 SETTABLE                         R44 R42 R43
     1167 GETUPVAL                         R43 12
     1168 GETTABLEKS                       R43 R43 K162 ["Event"]
     1170 GETTABLEKS                       R43 R43 K164 ["MouseLeave"]
     1172 NEWCLOSURE                       R44 P5
     1173 CAPTURE                          VAL R1
     1174 SETTABLE                         R44 R42 R43
     1175 CALL                             R40 2 1
     1176 JUMPIF                           R40 ; [+1]
     1177 LOADNIL                          R40
     1178 SETTABLEKS                       R40 R39 K148 ["HoverOverlay"]
     1180 CALL                             R36 3 1
     1181 JUMP                             ; [+31]
     1182 GETUPVAL                         R36 12
     1183 GETTABLEKS                       R36 R36 K66 ["createElement"]
     1185 GETUPVAL                         R37 15
     1186 DUPTABLE                         R38 K235 [{["LayoutOrder"] = 5, ["OnClick"], ["Style"] = "RoundPrimary", ["StyleModifier"], ["Size"], ["Text"]}]
     1187 NEWCLOSURE                       R39 P6
     1188 CAPTURE                          REF R24
     1189 CAPTURE                          VAL R6
     1190 CAPTURE                          VAL R0
     1191 SETTABLEKS                       R39 R38 K224 ["OnClick"]
     1193 JUMPIF                           R24 ; [+4]
     1194 GETUPVAL                         R39 17
     1195 GETTABLEKS                       R39 R39 K234 ["Disabled"]
     1197 JUMPIF                           R39 ; [+1]
     1198 LOADNIL                          R39
     1199 SETTABLEKS                       R39 R38 K231 ["StyleModifier"]
     1201 GETIMPORT                        R39 K80 [UDim2.new]
     1203 LOADN                            R40 0
     1204 LOADN                            R41 140
     1205 LOADN                            R42 0
     1206 LOADN                            R43 40
     1207 CALL                             R39 4 1
     1208 SETTABLEKS                       R39 R38 K3 ["Size"]
     1210 SETTABLEKS                       R25 R38 K90 ["Text"]
     1212 CALL                             R36 2 1
     1213 SETTABLEKS                       R36 R35 K143 ["PublishButton"]
     1215 MOVE                             R36 R17
     1216 JUMPIFNOT                        R36 ; [+33]
     1217 GETUPVAL                         R36 12
     1218 GETTABLEKS                       R36 R36 K66 ["createElement"]
     1220 GETUPVAL                         R37 18
     1221 DUPTABLE                         R38 K237 [{["Size"], ["Text"], ["TextSize"], ["Font"], ["onActivated"], ["Enabled"], ["LayoutOrder"] = 1}]
     1222 GETIMPORT                        R39 K80 [UDim2.new]
     1224 LOADN                            R40 1
     1225 LOADN                            R41 -328
     1226 LOADN                            R42 0
     1227 LOADN                            R43 20
     1228 CALL                             R39 4 1
     1229 SETTABLEKS                       R39 R38 K3 ["Size"]
     1231 SETTABLEKS                       R18 R38 K90 ["Text"]
     1233 GETUPVAL                         R39 14
     1234 GETTABLEKS                       R39 R39 K220 ["FONT_SIZE_MEDIUM"]
     1236 SETTABLEKS                       R39 R38 K214 ["TextSize"]
     1238 GETUPVAL                         R39 14
     1239 GETTABLEKS                       R39 R39 K218 ["FONT"]
     1241 SETTABLEKS                       R39 R38 K212 ["Font"]
     1243 GETTABLEKS                       R39 R0 K96 ["onFlowButtonActivated"]
     1245 SETTABLEKS                       R39 R38 K91 ["onActivated"]
     1247 SETTABLEKS                       R19 R38 K236 ["Enabled"]
     1249 CALL                             R36 2 1
     1250 SETTABLEKS                       R36 R35 K180 ["ToggleOverrideButton"]
     1252 CALL                             R32 3 -1
     1253 CLOSEUPVALS                      R24
     1254 RETURN                           R32 -1

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_18:
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
      172 GETIMPORT                        R31 K5 [require]
      174 GETTABLEKS                       R32 R0 K12 ["Src"]
      176 GETTABLEKS                       R32 R32 K35 ["Flags"]
      178 GETTABLEKS                       R32 R32 K39 ["getFFlagToolboxPublishOnApproval"]
      180 CALL                             R31 1 1
      181 GETIMPORT                        R32 K5 [require]
      183 GETTABLEKS                       R33 R0 K12 ["Src"]
      185 GETTABLEKS                       R33 R33 K35 ["Flags"]
      187 GETTABLEKS                       R33 R33 K40 ["getFFlagEnableUpdateAvatarItem"]
      189 CALL                             R32 1 1
      190 GETTABLEKS                       R33 R2 K41 ["Component"]
      192 LOADK                            R35 K42 ["AssetConfigFooter"]
      193 NAMECALL                         R33 R33 K43 ["extend"]
      195 CALL                             R33 2 1
      196 GETIMPORT                        R34 K45 [game]
      198 LOADK                            R36 K46 ["AssetConfigFixBadIdVerifyState"]
      199 NAMECALL                         R34 R34 K47 ["GetFastFlag"]
      201 CALL                             R34 2 1
      202 GETIMPORT                        R35 K50 [utf8.char]
      204 LOADK                            R36 K51 [57346]
      205 CALL                             R35 1 1
      206 DUPCLOSURE                       R36 K52 [PROTO_3]
      207 CAPTURE                          VAL R30
      208 CAPTURE                          VAL R13
      209 SETTABLEKS                       R36 R33 K53 ["init"]
      211 DUPCLOSURE                       R36 K54 [PROTO_4]
      212 CAPTURE                          VAL R34
      213 CAPTURE                          VAL R14
      214 SETTABLEKS                       R36 R33 K55 ["shouldUpdate"]
      216 DUPCLOSURE                       R36 K56 [PROTO_5]
      217 CAPTURE                          VAL R31
      218 CAPTURE                          VAL R13
      219 SETTABLEKS                       R36 R33 K57 ["getSubmitTotal"]
      221 DUPCLOSURE                       R36 K58 [PROTO_6]
      222 CAPTURE                          VAL R35
      223 SETTABLEKS                       R36 R33 K59 ["getUploadFeeWithRobuxIcon"]
      225 DUPCLOSURE                       R36 K60 [PROTO_14]
      226 CAPTURE                          VAL R34
      227 CAPTURE                          VAL R11
      228 CAPTURE                          VAL R32
      229 CAPTURE                          VAL R13
      230 CAPTURE                          VAL R20
      231 CAPTURE                          VAL R12
      232 CAPTURE                          VAL R30
      233 CAPTURE                          VAL R10
      234 CAPTURE                          VAL R35
      235 CAPTURE                          VAL R3
      236 CAPTURE                          VAL R26
      237 CAPTURE                          VAL R27
      238 CAPTURE                          VAL R2
      239 CAPTURE                          VAL R19
      240 CAPTURE                          VAL R9
      241 CAPTURE                          VAL R18
      242 CAPTURE                          VAL R28
      243 CAPTURE                          VAL R15
      244 CAPTURE                          VAL R25
      245 SETTABLEKS                       R36 R33 K61 ["render"]
      247 DUPCLOSURE                       R36 K62 [PROTO_15]
      248 CAPTURE                          VAL R29
      249 DUPCLOSURE                       R37 K63 [PROTO_18]
      250 CAPTURE                          VAL R22
      251 CAPTURE                          VAL R23
      252 MOVE                             R38 R6
      253 DUPTABLE                         R39 K67 [{"Stylizer", "Localization", "Network"}]
      254 GETTABLEKS                       R40 R5 K64 ["Stylizer"]
      256 SETTABLEKS                       R40 R39 K64 ["Stylizer"]
      258 GETTABLEKS                       R40 R5 K65 ["Localization"]
      260 SETTABLEKS                       R40 R39 K65 ["Localization"]
      262 SETTABLEKS                       R7 R39 K66 ["Network"]
      264 CALL                             R38 1 1
      265 MOVE                             R39 R33
      266 CALL                             R38 1 1
      267 MOVE                             R33 R38
      268 GETTABLEKS                       R38 R4 K68 ["connect"]
      270 MOVE                             R39 R36
      271 MOVE                             R40 R37
      272 CALL                             R38 2 1
      273 MOVE                             R39 R33
      274 CALL                             R38 1 -1
      275 RETURN                           R38 -1
