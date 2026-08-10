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
       51 GETUPVAL                         R16 2
       52 CALL                             R16 0 1
       53 JUMPIFNOT                        R16 ; [+5]
       54 GETUPVAL                         R16 3
       55 GETTABLEKS                       R16 R16 K19 ["isCatalogAsset"]
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
       75 JUMP                             ; [+18]
       76 JUMPIFNOT                        R16 ; [+9]
       77 GETTABLEKS                       R19 R1 K21 ["Localization"]
       79 LOADK                            R21 K22 ["AssetConfigFooter"]
       80 LOADK                            R22 K25 ["UpdateExisting"]
       81 NAMECALL                         R19 R19 K24 ["getText"]
       83 CALL                             R19 3 1
       84 MOVE                             R18 R19
       85 JUMP                             ; [+8]
       86 GETTABLEKS                       R19 R1 K21 ["Localization"]
       88 LOADK                            R21 K22 ["AssetConfigFooter"]
       89 LOADK                            R22 K26 ["Override"]
       90 NAMECALL                         R19 R19 K24 ["getText"]
       92 CALL                             R19 3 1
       93 MOVE                             R18 R19
       94 LOADB                            R19 0
       95 GETIMPORT                        R20 K30 [Enum.AssetType.Animation]
       97 JUMPIFNOTEQ                      R11 R20 ; [+6]
       99 GETUPVAL                         R19 4
      100 MOVE                             R21 R12
      101 NAMECALL                         R19 R19 K20 ["isOverride"]
      103 CALL                             R19 2 1
      104 MOVE                             R20 R19
      105 JUMPIFNOT                        R20 ; [+11]
      106 GETUPVAL                         R21 5
      107 GETTABLEKS                       R21 R21 K31 ["FLOW_TYPE"]
      109 GETTABLEKS                       R21 R21 K32 ["DOWNLOAD_FLOW"]
      111 GETTABLEKS                       R22 R1 K9 ["screenFlowType"]
      113 JUMPIFEQ                         R21 R22 ; [+2]
      115 LOADB                            R20 0 +1
      116 LOADB                            R20 1
      117 GETTABLEKS                       R21 R1 K33 ["AssetId"]
      119 JUMPIF                           R21 ; [+2]
      120 GETTABLEKS                       R21 R2 K34 ["animationID"]
      122 LOADB                            R22 0
      123 MOVE                             R23 R9
      124 JUMPIFNOT                        R23 ; [+3]
      125 GETTABLEKS                       R24 R2 K35 ["disablePublish"]
      127 NOT                              R23 R24
      128 JUMPIFNOT                        R20 ; [+15]
      129 JUMPIF                           R9 ; [+2]
      130 MOVE                             R23 R13
      131 JUMP                             ; [+2]
      132 JUMPIF                           R13 ; [+1]
      133 LOADB                            R23 0
      134 JUMPIFNOT                        R21 ; [+9]
      135 GETIMPORT                        R24 K38 [utf8.len]
      137 MOVE                             R25 R21
      138 CALL                             R24 1 1
      139 LOADN                            R25 32
      140 JUMPIFLT                         R25 R24 ; [+2]
      142 LOADB                            R22 0 +1
      143 LOADB                            R22 1
      144 LOADNIL                          R24
      145 JUMPIFNOT                        R20 ; [+9]
      146 GETTABLEKS                       R25 R1 K21 ["Localization"]
      148 LOADK                            R27 K39 ["Common"]
      149 LOADK                            R28 K40 ["Import"]
      150 NAMECALL                         R25 R25 K24 ["getText"]
      152 CALL                             R25 3 1
      153 MOVE                             R24 R25
      154 JUMP                             ; [+8]
      155 GETTABLEKS                       R25 R1 K21 ["Localization"]
      157 LOADK                            R27 K39 ["Common"]
      158 LOADK                            R28 K41 ["Save"]
      159 NAMECALL                         R25 R25 K24 ["getText"]
      161 CALL                             R25 3 1
      162 MOVE                             R24 R25
      163 GETUPVAL                         R25 3
      164 GETTABLEKS                       R25 R25 K19 ["isCatalogAsset"]
      166 MOVE                             R26 R11
      167 CALL                             R25 1 1
      168 JUMPIF                           R25 ; [+5]
      169 GETUPVAL                         R25 3
      170 GETTABLEKS                       R25 R25 K42 ["isUGCBundleType"]
      172 MOVE                             R26 R11
      173 CALL                             R25 1 1
      174 GETUPVAL                         R26 5
      175 GETTABLEKS                       R26 R26 K31 ["FLOW_TYPE"]
      177 GETTABLEKS                       R26 R26 K43 ["UPLOAD_FLOW"]
      179 JUMPIFNOTEQ                      R10 R26 ; [+26]
      181 JUMPIFNOT                        R25 ; [+24]
      182 GETTABLEKS                       R26 R1 K44 ["isUploadFeeEnabled"]
      184 JUMPIFNOT                        R26 ; [+16]
      185 GETTABLEKS                       R26 R1 K45 ["uploadFee"]
      187 LOADN                            R27 0
      188 JUMPIFNOTLT                      R27 R26 ; [+7]
      190 GETTABLEKS                       R28 R1 K45 ["uploadFee"]
      192 NAMECALL                         R26 R0 K46 ["getUploadFeeWithRobuxIcon"]
      194 CALL                             R26 2 1
      195 MOVE                             R24 R26
      196 GETTABLEKS                       R26 R1 K47 ["canAffordUploadFee"]
      198 JUMPIF                           R26 ; [+7]
      199 LOADB                            R23 0
      200 JUMP                             ; [+5]
      201 GETTABLEKS                       R26 R1 K44 ["isUploadFeeEnabled"]
      203 JUMPIFNOTEQKNIL                  R26 ; [+2]
      205 LOADB                            R23 0
      206 GETUPVAL                         R26 6
      207 CALL                             R26 0 1
      208 JUMPIFNOT                        R26 ; [+25]
      209 LOADB                            R26 0
      210 GETTABLEKS                       R28 R1 K48 ["avatarAssetCurrentIndex"]
      212 FASTCALL1                        TYPE R28 ; [+2]
      213 GETIMPORT                        R27 K50 [type]
      215 CALL                             R27 1 1
      216 JUMPIFNOTEQKS                    R27 K51 ["number"] ; [+17]
      218 LOADB                            R26 0
      219 GETTABLEKS                       R28 R1 K52 ["avatarAssetTotalCount"]
      221 FASTCALL1                        TYPE R28 ; [+2]
      222 GETIMPORT                        R27 K50 [type]
      224 CALL                             R27 1 1
      225 JUMPIFNOTEQKS                    R27 K51 ["number"] ; [+8]
      227 GETTABLEKS                       R27 R1 K52 ["avatarAssetTotalCount"]
      229 LOADN                            R28 1
      230 JUMPIFLT                         R28 R27 ; [+2]
      232 LOADB                            R26 0 +1
      233 LOADB                            R26 1
      234 JUMPIFNOT                        R26 ; [+7]
      235 GETTABLEKS                       R29 R1 K48 ["avatarAssetCurrentIndex"]
      237 GETTABLEKS                       R30 R1 K52 ["avatarAssetTotalCount"]
      239 DIV                              R28 R29 R30
      240 MULK                             R27 R28 K53 [100]
      241 JUMPIF                           R27 ; [+1]
      242 LOADN                            R27 0
      243 JUMPIFNOT                        R26 ; [+7]
      244 GETTABLEKS                       R29 R1 K48 ["avatarAssetCurrentIndex"]
      246 FASTCALL1                        MATH_FLOOR R29 ; [+2]
      247 GETIMPORT                        R28 K56 [math.floor]
      249 CALL                             R28 1 1
      250 JUMPIF                           R28 ; [+1]
      251 LOADN                            R28 0
      252 JUMPIFNOT                        R26 ; [+7]
      253 GETTABLEKS                       R30 R1 K52 ["avatarAssetTotalCount"]
      255 FASTCALL1                        MATH_FLOOR R30 ; [+2]
      256 GETIMPORT                        R29 K56 [math.floor]
      258 CALL                             R29 1 1
      259 JUMPIF                           R29 ; [+1]
      260 LOADN                            R29 0
      261 JUMPIFNOT                        R26 ; [+23]
      262 GETTABLEKS                       R30 R1 K21 ["Localization"]
      264 LOADK                            R32 K57 ["General"]
      265 LOADK                            R33 K58 ["AssetXOutOfY"]
      266 DUPTABLE                         R34 K61 [{"current", "total"}]
      267 FASTCALL1                        TOSTRING R28 ; [+3]
      268 MOVE                             R36 R28
      269 GETIMPORT                        R35 K63 [tostring]
      271 CALL                             R35 1 1
      272 SETTABLEKS                       R35 R34 K59 ["current"]
      274 FASTCALL1                        TOSTRING R29 ; [+3]
      275 MOVE                             R36 R29
      276 GETIMPORT                        R35 K63 [tostring]
      278 CALL                             R35 1 1
      279 SETTABLEKS                       R35 R34 K60 ["total"]
      281 NAMECALL                         R30 R30 K24 ["getText"]
      283 CALL                             R30 4 1
      284 JUMPIF                           R30 ; [+1]
      285 LOADK                            R30 K14 [""]
      286 GETUPVAL                         R31 6
      287 CALL                             R31 0 1
      288 JUMPIFNOT                        R31 ; [+550]
      289 GETUPVAL                         R31 7
      290 GETTABLEKS                       R31 R31 K64 ["new"]
      292 CALL                             R31 0 1
      293 GETUPVAL                         R33 5
      294 GETTABLEKS                       R33 R33 K31 ["FLOW_TYPE"]
      296 GETTABLEKS                       R33 R33 K43 ["UPLOAD_FLOW"]
      298 JUMPIFNOTEQ                      R10 R33 ; [+22]
      300 JUMPIFNOT                        R25 ; [+20]
      301 GETTABLEKS                       R33 R1 K44 ["isUploadFeeEnabled"]
      303 JUMPIFNOT                        R33 ; [+17]
      304 GETTABLEKS                       R33 R1 K45 ["uploadFee"]
      306 JUMPIFNOT                        R33 ; [+14]
      307 GETTABLEKS                       R33 R1 K45 ["uploadFee"]
      309 LOADN                            R34 0
      310 JUMPIFNOTLT                      R34 R33 ; [+10]
      312 GETUPVAL                         R33 8
      313 GETTABLEKS                       R35 R1 K45 ["uploadFee"]
      315 FASTCALL1                        TOSTRING R35 ; [+2]
      316 GETIMPORT                        R34 K63 [tostring]
      318 CALL                             R34 1 1
      319 CONCAT                           R32 R33 R34
      320 JUMPIF                           R32 ; [+1]
      321 MOVE                             R32 R24
      322 GETUPVAL                         R33 9
      323 GETTABLEKS                       R33 R33 K65 ["createElement"]
      325 GETUPVAL                         R34 10
      326 GETTABLEKS                       R34 R34 K66 ["View"]
      328 DUPTABLE                         R35 K69 [{["tag"] = "row flex-x-between align-y-center gap-small padding-x-medium", ["Size"], ["LayoutOrder"]}]
      329 SETTABLEKS                       R4 R35 K3 ["Size"]
      331 SETTABLEKS                       R5 R35 K4 ["LayoutOrder"]
      333 DUPTABLE                         R36 K73 [{"LeftContent", "AnimationImportRow", "ButtonsSection"}]
      334 GETUPVAL                         R37 9
      335 GETTABLEKS                       R37 R37 K65 ["createElement"]
      337 GETUPVAL                         R38 10
      338 GETTABLEKS                       R38 R38 K66 ["View"]
      340 DUPTABLE                         R39 K76 [{["tag"] = "row align-y-center fill gap-small", ["LayoutOrder"], ["Size"], ["AutomaticSize"]}]
      341 NAMECALL                         R40 R31 K77 ["getNextOrder"]
      343 CALL                             R40 1 1
      344 SETTABLEKS                       R40 R39 K4 ["LayoutOrder"]
      346 GETIMPORT                        R40 K79 [UDim2.new]
      348 LOADN                            R41 0
      349 LOADN                            R42 0
      350 LOADN                            R43 1
      351 LOADN                            R44 0
      352 CALL                             R40 4 1
      353 SETTABLEKS                       R40 R39 K3 ["Size"]
      355 GETIMPORT                        R40 K81 [Enum.AutomaticSize.X]
      357 SETTABLEKS                       R40 R39 K75 ["AutomaticSize"]
      359 DUPTABLE                         R40 K84 [{"AnimationOverride", "AssetProgressRow"}]
      360 JUMPIFNOT                        R17 ; [+26]
      361 GETUPVAL                         R41 9
      362 GETTABLEKS                       R41 R41 K65 ["createElement"]
      364 GETUPVAL                         R42 10
      365 GETTABLEKS                       R42 R42 K66 ["View"]
      367 DUPTABLE                         R43 K86 [{["tag"] = "align-y-center fill auto-y"}]
      368 DUPTABLE                         R44 K88 [{"OverrideLink"}]
      369 GETUPVAL                         R45 9
      370 GETTABLEKS                       R45 R45 K65 ["createElement"]
      372 GETUPVAL                         R46 10
      373 GETTABLEKS                       R46 R46 K89 ["Text"]
      375 DUPTABLE                         R47 K92 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left text-align-y-center content-link", ["Text"], ["onActivated"]}]
      376 SETTABLEKS                       R18 R47 K89 ["Text"]
      378 GETTABLEKS                       R48 R0 K93 ["onFlowButtonActivated"]
      380 SETTABLEKS                       R48 R47 K91 ["onActivated"]
      382 CALL                             R45 2 1
      383 SETTABLEKS                       R45 R44 K87 ["OverrideLink"]
      385 CALL                             R41 3 1
      386 JUMPIF                           R41 ; [+1]
      387 LOADNIL                          R41
      388 SETTABLEKS                       R41 R40 K82 ["AnimationOverride"]
      390 JUMPIFNOT                        R26 ; [+65]
      391 GETUPVAL                         R41 9
      392 GETTABLEKS                       R41 R41 K65 ["createElement"]
      394 GETUPVAL                         R42 10
      395 GETTABLEKS                       R42 R42 K66 ["View"]
      397 DUPTABLE                         R43 K95 [{["tag"] = "row align-y-center"}]
      398 DUPTABLE                         R44 K98 [{"AssetProgressLabel", "AssetProgressBar"}]
      399 GETUPVAL                         R45 9
      400 GETTABLEKS                       R45 R45 K65 ["createElement"]
      402 GETUPVAL                         R46 10
      403 GETTABLEKS                       R46 R46 K89 ["Text"]
      405 DUPTABLE                         R47 K101 [{["tag"] = "auto-y text-title-small content-emphasis", ["Text"], ["Size"], ["LayoutOrder"] = 1}]
      406 SETTABLEKS                       R30 R47 K89 ["Text"]
      408 GETIMPORT                        R48 K79 [UDim2.new]
      410 LOADN                            R49 0
      411 LOADN                            R50 100
      412 LOADN                            R51 1
      413 LOADN                            R52 0
      414 CALL                             R48 4 1
      415 SETTABLEKS                       R48 R47 K3 ["Size"]
      417 CALL                             R45 2 1
      418 SETTABLEKS                       R45 R44 K96 ["AssetProgressLabel"]
      420 GETUPVAL                         R45 9
      421 GETTABLEKS                       R45 R45 K65 ["createElement"]
      423 GETUPVAL                         R46 10
      424 GETTABLEKS                       R46 R46 K102 ["Progress"]
      426 DUPTABLE                         R47 K108 [{["value"], ["size"], ["shape"], ["width"], ["LayoutOrder"] = 2}]
      427 ORK                              R48 R27 K109 [0]
      428 SETTABLEKS                       R48 R47 K103 ["value"]
      430 GETUPVAL                         R48 11
      431 GETTABLEKS                       R48 R48 K110 ["ProgressSize"]
      433 GETTABLEKS                       R48 R48 K111 ["Medium"]
      435 SETTABLEKS                       R48 R47 K104 ["size"]
      437 GETUPVAL                         R48 11
      438 GETTABLEKS                       R48 R48 K112 ["ProgressShape"]
      440 GETTABLEKS                       R48 R48 K113 ["Bar"]
      442 SETTABLEKS                       R48 R47 K105 ["shape"]
      444 GETIMPORT                        R48 K115 [UDim.new]
      446 LOADN                            R49 0
      447 LOADN                            R50 220
      448 CALL                             R48 2 1
      449 SETTABLEKS                       R48 R47 K106 ["width"]
      451 CALL                             R45 2 1
      452 SETTABLEKS                       R45 R44 K97 ["AssetProgressBar"]
      454 CALL                             R41 3 1
      455 JUMPIF                           R41 ; [+1]
      456 LOADNIL                          R41
      457 SETTABLEKS                       R41 R40 K83 ["AssetProgressRow"]
      459 CALL                             R37 3 1
      460 JUMPIF                           R37 ; [+13]
      461 GETUPVAL                         R37 9
      462 GETTABLEKS                       R37 R37 K65 ["createElement"]
      464 GETUPVAL                         R38 10
      465 GETTABLEKS                       R38 R38 K66 ["View"]
      467 DUPTABLE                         R39 K117 [{["tag"] = "size-0-0", ["LayoutOrder"]}]
      468 NAMECALL                         R40 R31 K77 ["getNextOrder"]
      470 CALL                             R40 1 1
      471 SETTABLEKS                       R40 R39 K4 ["LayoutOrder"]
      473 CALL                             R37 2 1
      474 SETTABLEKS                       R37 R36 K70 ["LeftContent"]
      476 JUMPIFNOT                        R20 ; [+105]
      477 GETUPVAL                         R37 9
      478 GETTABLEKS                       R37 R37 K65 ["createElement"]
      480 GETUPVAL                         R38 10
      481 GETTABLEKS                       R38 R38 K66 ["View"]
      483 DUPTABLE                         R39 K119 [{["tag"] = "row align-y-center gap-small auto-x", ["LayoutOrder"], ["Size"]}]
      484 NAMECALL                         R40 R31 K77 ["getNextOrder"]
      486 CALL                             R40 1 1
      487 SETTABLEKS                       R40 R39 K4 ["LayoutOrder"]
      489 GETIMPORT                        R40 K79 [UDim2.new]
      491 LOADN                            R41 0
      492 LOADN                            R42 0
      493 LOADN                            R43 1
      494 LOADN                            R44 0
      495 CALL                             R40 4 1
      496 SETTABLEKS                       R40 R39 K3 ["Size"]
      498 DUPTABLE                         R40 K122 [{"InvalidAnimationLabel", "AnimationIdInput"}]
      499 JUMPIF                           R14 ; [+27]
      500 GETUPVAL                         R41 9
      501 GETTABLEKS                       R41 R41 K65 ["createElement"]
      503 GETUPVAL                         R42 10
      504 GETTABLEKS                       R42 R42 K89 ["Text"]
      506 DUPTABLE                         R43 K124 [{["tag"] = "text-caption-small text-align-y-center content-alert", ["Text"], ["Size"], ["LayoutOrder"] = 1}]
      507 GETTABLEKS                       R44 R1 K21 ["Localization"]
      509 LOADK                            R46 K125 ["AssetConfigAnimation"]
      510 LOADK                            R47 K126 ["InvalidAnimationID"]
      511 NAMECALL                         R44 R44 K24 ["getText"]
      513 CALL                             R44 3 1
      514 SETTABLEKS                       R44 R43 K89 ["Text"]
      516 GETIMPORT                        R44 K79 [UDim2.new]
      518 LOADN                            R45 0
      519 LOADN                            R46 96
      520 LOADN                            R47 1
      521 LOADN                            R48 0
      522 CALL                             R44 4 1
      523 SETTABLEKS                       R44 R43 K3 ["Size"]
      525 CALL                             R41 2 1
      526 JUMPIF                           R41 ; [+1]
      527 LOADNIL                          R41
      528 SETTABLEKS                       R41 R40 K120 ["InvalidAnimationLabel"]
      530 GETUPVAL                         R41 9
      531 GETTABLEKS                       R41 R41 K65 ["createElement"]
      533 GETUPVAL                         R42 10
      534 GETTABLEKS                       R42 R42 K127 ["TextInput"]
      536 DUPTABLE                         R43 K133 [{["LayoutOrder"] = 2, ["text"], ["onChanged"], ["label"] = "", ["placeholder"], ["hasError"], ["size"], ["width"]}]
      537 JUMPIFEQKNIL                     R21 ; [+7]
      539 FASTCALL1                        TOSTRING R21 ; [+3]
      540 MOVE                             R45 R21
      541 GETIMPORT                        R44 K63 [tostring]
      543 CALL                             R44 1 1
      544 JUMP                             ; [+1]
      545 LOADK                            R44 K14 [""]
      546 SETTABLEKS                       R44 R43 K128 ["text"]
      548 GETTABLEKS                       R44 R0 K134 ["onAnimationIDChanged"]
      550 SETTABLEKS                       R44 R43 K129 ["onChanged"]
      552 GETTABLEKS                       R44 R1 K21 ["Localization"]
      554 LOADK                            R46 K125 ["AssetConfigAnimation"]
      555 LOADK                            R47 K135 ["AnimationID"]
      556 NAMECALL                         R44 R44 K24 ["getText"]
      558 CALL                             R44 3 1
      559 SETTABLEKS                       R44 R43 K131 ["placeholder"]
      561 SETTABLEKS                       R22 R43 K132 ["hasError"]
      563 GETUPVAL                         R44 11
      564 GETTABLEKS                       R44 R44 K136 ["InputSize"]
      566 GETTABLEKS                       R44 R44 K137 ["Small"]
      568 SETTABLEKS                       R44 R43 K104 ["size"]
      570 GETIMPORT                        R44 K115 [UDim.new]
      572 LOADN                            R45 0
      573 LOADN                            R46 160
      574 CALL                             R44 2 1
      575 SETTABLEKS                       R44 R43 K106 ["width"]
      577 CALL                             R41 2 1
      578 SETTABLEKS                       R41 R40 K121 ["AnimationIdInput"]
      580 CALL                             R37 3 1
      581 JUMPIF                           R37 ; [+1]
      582 LOADNIL                          R37
      583 SETTABLEKS                       R37 R36 K71 ["AnimationImportRow"]
      585 GETUPVAL                         R37 9
      586 GETTABLEKS                       R37 R37 K65 ["createElement"]
      588 GETUPVAL                         R38 10
      589 GETTABLEKS                       R38 R38 K66 ["View"]
      591 DUPTABLE                         R39 K139 [{["tag"] = "row align-x-right align-y-center gap-small auto-xy", ["LayoutOrder"]}]
      592 NAMECALL                         R40 R31 K77 ["getNextOrder"]
      594 CALL                             R40 1 1
      595 SETTABLEKS                       R40 R39 K4 ["LayoutOrder"]
      597 DUPTABLE                         R40 K142 [{"PublishButton", "CancelButton"}]
      598 JUMPIF                           R23 ; [+108]
      599 GETUPVAL                         R41 9
      600 GETTABLEKS                       R41 R41 K65 ["createElement"]
      602 GETUPVAL                         R42 10
      603 GETTABLEKS                       R42 R42 K66 ["View"]
      605 DUPTABLE                         R43 K143 [{"Size", "AutomaticSize", "LayoutOrder"}]
      606 GETIMPORT                        R44 K79 [UDim2.new]
      608 LOADN                            R45 0
      609 LOADN                            R46 0
      610 LOADN                            R47 0
      611 LOADN                            R48 40
      612 CALL                             R44 4 1
      613 SETTABLEKS                       R44 R43 K3 ["Size"]
      615 GETIMPORT                        R44 K81 [Enum.AutomaticSize.X]
      617 SETTABLEKS                       R44 R43 K75 ["AutomaticSize"]
      619 NAMECALL                         R44 R31 K77 ["getNextOrder"]
      621 CALL                             R44 1 1
      622 SETTABLEKS                       R44 R43 K4 ["LayoutOrder"]
      624 DUPTABLE                         R44 K146 [{"DisabledButton", "HoverOverlay"}]
      625 GETUPVAL                         R45 9
      626 GETTABLEKS                       R45 R45 K65 ["createElement"]
      628 GETUPVAL                         R46 10
      629 GETTABLEKS                       R46 R46 K147 ["Button"]
      631 DUPTABLE                         R47 K151 [{["text"], ["variant"], ["onActivated"], ["isDisabled"] = True, ["size"]}]
      632 SETTABLEKS                       R32 R47 K128 ["text"]
      634 GETUPVAL                         R48 11
      635 GETTABLEKS                       R48 R48 K152 ["ButtonVariant"]
      637 GETTABLEKS                       R48 R48 K153 ["Emphasis"]
      639 SETTABLEKS                       R48 R47 K148 ["variant"]
      641 DUPCLOSURE                       R48 K154 [PROTO_6]
      642 SETTABLEKS                       R48 R47 K91 ["onActivated"]
      644 GETUPVAL                         R48 11
      645 GETTABLEKS                       R48 R48 K136 ["InputSize"]
      647 GETTABLEKS                       R48 R48 K137 ["Small"]
      649 SETTABLEKS                       R48 R47 K104 ["size"]
      651 CALL                             R45 2 1
      652 SETTABLEKS                       R45 R44 K144 ["DisabledButton"]
      654 GETTABLEKS                       R46 R1 K155 ["OnPublishButtonHover"]
      656 JUMPIFNOT                        R46 ; [+45]
      657 GETUPVAL                         R45 9
      658 GETTABLEKS                       R45 R45 K65 ["createElement"]
      660 LOADK                            R46 K156 ["Frame"]
      661 NEWTABLE                         R47 8 0
      663 GETIMPORT                        R48 K79 [UDim2.new]
      665 LOADN                            R49 1
      666 LOADN                            R50 0
      667 LOADN                            R51 1
      668 LOADN                            R52 0
      669 CALL                             R48 4 1
      670 SETTABLEKS                       R48 R47 K3 ["Size"]
      672 GETIMPORT                        R48 K79 [UDim2.new]
      674 LOADN                            R49 0
      675 LOADN                            R50 0
      676 LOADN                            R51 0
      677 LOADN                            R52 0
      678 CALL                             R48 4 1
      679 SETTABLEKS                       R48 R47 K157 ["Position"]
      681 LOADN                            R48 1
      682 SETTABLEKS                       R48 R47 K158 ["BackgroundTransparency"]
      684 GETUPVAL                         R48 12
      685 GETTABLEKS                       R48 R48 K159 ["Event"]
      687 GETTABLEKS                       R48 R48 K160 ["MouseEnter"]
      689 NEWCLOSURE                       R49 P1
      690 CAPTURE                          VAL R1
      691 SETTABLE                         R49 R47 R48
      692 GETUPVAL                         R48 12
      693 GETTABLEKS                       R48 R48 K159 ["Event"]
      695 GETTABLEKS                       R48 R48 K161 ["MouseLeave"]
      697 NEWCLOSURE                       R49 P2
      698 CAPTURE                          VAL R1
      699 SETTABLE                         R49 R47 R48
      700 CALL                             R45 2 1
      701 JUMPIF                           R45 ; [+1]
      702 LOADNIL                          R45
      703 SETTABLEKS                       R45 R44 K145 ["HoverOverlay"]
      705 CALL                             R41 3 1
      706 JUMP                             ; [+60]
      707 GETUPVAL                         R41 9
      708 GETTABLEKS                       R41 R41 K65 ["createElement"]
      710 GETUPVAL                         R42 10
      711 GETTABLEKS                       R42 R42 K66 ["View"]
      713 DUPTABLE                         R43 K143 [{"Size", "AutomaticSize", "LayoutOrder"}]
      714 GETIMPORT                        R44 K79 [UDim2.new]
      716 LOADN                            R45 0
      717 LOADN                            R46 0
      718 LOADN                            R47 0
      719 LOADN                            R48 40
      720 CALL                             R44 4 1
      721 SETTABLEKS                       R44 R43 K3 ["Size"]
      723 GETIMPORT                        R44 K81 [Enum.AutomaticSize.X]
      725 SETTABLEKS                       R44 R43 K75 ["AutomaticSize"]
      727 NAMECALL                         R44 R31 K77 ["getNextOrder"]
      729 CALL                             R44 1 1
      730 SETTABLEKS                       R44 R43 K4 ["LayoutOrder"]
      732 DUPTABLE                         R44 K162 [{"Button"}]
      733 GETUPVAL                         R45 9
      734 GETTABLEKS                       R45 R45 K65 ["createElement"]
      736 GETUPVAL                         R46 10
      737 GETTABLEKS                       R46 R46 K147 ["Button"]
      739 DUPTABLE                         R47 K163 [{"text", "variant", "onActivated", "isDisabled", "size"}]
      740 SETTABLEKS                       R32 R47 K128 ["text"]
      742 GETUPVAL                         R48 11
      743 GETTABLEKS                       R48 R48 K152 ["ButtonVariant"]
      745 GETTABLEKS                       R48 R48 K153 ["Emphasis"]
      747 SETTABLEKS                       R48 R47 K148 ["variant"]
      749 GETTABLEKS                       R48 R0 K164 ["onPublishActivated"]
      751 SETTABLEKS                       R48 R47 K91 ["onActivated"]
      753 NOT                              R48 R23
      754 SETTABLEKS                       R48 R47 K149 ["isDisabled"]
      756 GETUPVAL                         R48 11
      757 GETTABLEKS                       R48 R48 K136 ["InputSize"]
      759 GETTABLEKS                       R48 R48 K137 ["Small"]
      761 SETTABLEKS                       R48 R47 K104 ["size"]
      763 CALL                             R45 2 1
      764 SETTABLEKS                       R45 R44 K147 ["Button"]
      766 CALL                             R41 3 1
      767 SETTABLEKS                       R41 R40 K140 ["PublishButton"]
      769 GETUPVAL                         R41 9
      770 GETTABLEKS                       R41 R41 K65 ["createElement"]
      772 GETUPVAL                         R42 10
      773 GETTABLEKS                       R42 R42 K66 ["View"]
      775 DUPTABLE                         R43 K143 [{"Size", "AutomaticSize", "LayoutOrder"}]
      776 GETIMPORT                        R44 K79 [UDim2.new]
      778 LOADN                            R45 0
      779 LOADN                            R46 0
      780 LOADN                            R47 0
      781 LOADN                            R48 40
      782 CALL                             R44 4 1
      783 SETTABLEKS                       R44 R43 K3 ["Size"]
      785 GETIMPORT                        R44 K81 [Enum.AutomaticSize.X]
      787 SETTABLEKS                       R44 R43 K75 ["AutomaticSize"]
      789 NAMECALL                         R44 R31 K77 ["getNextOrder"]
      791 CALL                             R44 1 1
      792 SETTABLEKS                       R44 R43 K4 ["LayoutOrder"]
      794 DUPTABLE                         R44 K162 [{"Button"}]
      795 GETUPVAL                         R45 9
      796 GETTABLEKS                       R45 R45 K65 ["createElement"]
      798 GETUPVAL                         R46 10
      799 GETTABLEKS                       R46 R46 K147 ["Button"]
      801 DUPTABLE                         R47 K165 [{"text", "variant", "onActivated", "size"}]
      802 GETTABLEKS                       R48 R1 K21 ["Localization"]
      804 LOADK                            R50 K57 ["General"]
      805 LOADK                            R51 K166 ["SearchOptionsCancel"]
      806 NAMECALL                         R48 R48 K24 ["getText"]
      808 CALL                             R48 3 1
      809 SETTABLEKS                       R48 R47 K128 ["text"]
      811 GETUPVAL                         R48 11
      812 GETTABLEKS                       R48 R48 K152 ["ButtonVariant"]
      814 GETTABLEKS                       R48 R48 K167 ["Standard"]
      816 SETTABLEKS                       R48 R47 K148 ["variant"]
      818 SETTABLEKS                       R7 R47 K91 ["onActivated"]
      820 GETUPVAL                         R48 11
      821 GETTABLEKS                       R48 R48 K136 ["InputSize"]
      823 GETTABLEKS                       R48 R48 K137 ["Small"]
      825 SETTABLEKS                       R48 R47 K104 ["size"]
      827 CALL                             R45 2 1
      828 SETTABLEKS                       R45 R44 K147 ["Button"]
      830 CALL                             R41 3 1
      831 SETTABLEKS                       R41 R40 K141 ["CancelButton"]
      833 CALL                             R37 3 1
      834 SETTABLEKS                       R37 R36 K72 ["ButtonsSection"]
      836 CALL                             R33 3 -1
      837 CLOSEUPVALS                      R23
      838 RETURN                           R33 -1
      839 GETUPVAL                         R31 12
      840 GETTABLEKS                       R31 R31 K65 ["createElement"]
      842 LOADK                            R32 K156 ["Frame"]
      843 DUPTABLE                         R33 K171 [{["Size"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["BorderColor3"], ["BorderSizePixel"] = 1, ["LayoutOrder"]}]
      844 SETTABLEKS                       R4 R33 K3 ["Size"]
      846 GETTABLEKS                       R34 R8 K172 ["backgroundColor"]
      848 SETTABLEKS                       R34 R33 K168 ["BackgroundColor3"]
      850 GETTABLEKS                       R34 R8 K173 ["borderColor"]
      852 SETTABLEKS                       R34 R33 K169 ["BorderColor3"]
      854 SETTABLEKS                       R5 R33 K4 ["LayoutOrder"]
      856 DUPTABLE                         R34 K178 [{"UIPadding", "UIListLayout", "AnimationIdBox", "InvalidAnimationLabel", "CancelButton", "PublishButton", "ToggleOverrideButton"}]
      857 GETUPVAL                         R35 12
      858 GETTABLEKS                       R35 R35 K65 ["createElement"]
      860 LOADK                            R36 K174 ["UIPadding"]
      861 DUPTABLE                         R37 K183 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      862 GETIMPORT                        R38 K115 [UDim.new]
      864 LOADN                            R39 0
      865 LOADN                            R40 0
      866 CALL                             R38 2 1
      867 SETTABLEKS                       R38 R37 K179 ["PaddingBottom"]
      869 GETIMPORT                        R38 K115 [UDim.new]
      871 LOADN                            R39 0
      872 LOADN                            R40 24
      873 CALL                             R38 2 1
      874 SETTABLEKS                       R38 R37 K180 ["PaddingLeft"]
      876 GETIMPORT                        R38 K115 [UDim.new]
      878 LOADN                            R39 0
      879 LOADN                            R40 24
      880 CALL                             R38 2 1
      881 SETTABLEKS                       R38 R37 K181 ["PaddingRight"]
      883 GETIMPORT                        R38 K115 [UDim.new]
      885 LOADN                            R39 0
      886 LOADN                            R40 0
      887 CALL                             R38 2 1
      888 SETTABLEKS                       R38 R37 K182 ["PaddingTop"]
      890 CALL                             R35 2 1
      891 SETTABLEKS                       R35 R34 K174 ["UIPadding"]
      893 GETUPVAL                         R35 12
      894 GETTABLEKS                       R35 R35 K65 ["createElement"]
      896 LOADK                            R36 K175 ["UIListLayout"]
      897 DUPTABLE                         R37 K189 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      898 GETIMPORT                        R38 K191 [Enum.FillDirection.Horizontal]
      900 SETTABLEKS                       R38 R37 K184 ["FillDirection"]
      902 GETIMPORT                        R38 K193 [Enum.HorizontalAlignment.Right]
      904 SETTABLEKS                       R38 R37 K185 ["HorizontalAlignment"]
      906 GETIMPORT                        R38 K195 [Enum.VerticalAlignment.Center]
      908 SETTABLEKS                       R38 R37 K186 ["VerticalAlignment"]
      910 GETIMPORT                        R38 K196 [Enum.SortOrder.LayoutOrder]
      912 SETTABLEKS                       R38 R37 K187 ["SortOrder"]
      914 GETIMPORT                        R38 K115 [UDim.new]
      916 LOADN                            R39 0
      917 LOADN                            R40 24
      918 CALL                             R38 2 1
      919 SETTABLEKS                       R38 R37 K188 ["Padding"]
      921 CALL                             R35 2 1
      922 SETTABLEKS                       R35 R34 K175 ["UIListLayout"]
      924 MOVE                             R35 R20
      925 JUMPIFNOT                        R35 ; [+62]
      926 GETUPVAL                         R35 12
      927 GETTABLEKS                       R35 R35 K65 ["createElement"]
      929 LOADK                            R36 K156 ["Frame"]
      930 DUPTABLE                         R37 K198 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"] = 3}]
      931 GETIMPORT                        R38 K79 [UDim2.new]
      933 LOADN                            R39 0
      934 LOADN                            R40 160
      935 LOADN                            R41 0
      936 LOADN                            R42 40
      937 CALL                             R38 4 1
      938 SETTABLEKS                       R38 R37 K3 ["Size"]
      940 DUPTABLE                         R38 K200 [{"TextField"}]
      941 GETUPVAL                         R39 12
      942 GETTABLEKS                       R39 R39 K65 ["createElement"]
      944 GETUPVAL                         R40 13
      945 DUPTABLE                         R41 K205 [{["ForceOnTextChange"] = True, ["OnTextChanged"], ["PlaceholderText"], ["Size"], ["Style"], ["Text"]}]
      946 GETTABLEKS                       R42 R0 K134 ["onAnimationIDChanged"]
      948 SETTABLEKS                       R42 R41 K202 ["OnTextChanged"]
      950 GETTABLEKS                       R42 R1 K21 ["Localization"]
      952 LOADK                            R44 K125 ["AssetConfigAnimation"]
      953 LOADK                            R45 K135 ["AnimationID"]
      954 NAMECALL                         R42 R42 K24 ["getText"]
      956 CALL                             R42 3 1
      957 SETTABLEKS                       R42 R41 K203 ["PlaceholderText"]
      959 GETIMPORT                        R42 K79 [UDim2.new]
      961 LOADN                            R43 1
      962 LOADN                            R44 0
      963 LOADN                            R45 1
      964 LOADN                            R46 0
      965 CALL                             R42 4 1
      966 SETTABLEKS                       R42 R41 K3 ["Size"]
      968 JUMPIFNOT                        R22 ; [+2]
      969 LOADK                            R42 K206 ["FilledRoundedRedBorder"]
      970 JUMP                             ; [+1]
      971 LOADK                            R42 K207 ["FilledRoundedBorder"]
      972 SETTABLEKS                       R42 R41 K204 ["Style"]
      974 JUMPIFNOT                        R21 ; [+6]
      975 FASTCALL1                        TOSTRING R21 ; [+3]
      976 MOVE                             R43 R21
      977 GETIMPORT                        R42 K63 [tostring]
      979 CALL                             R42 1 1
      980 JUMPIF                           R42 ; [+1]
      981 LOADNIL                          R42
      982 SETTABLEKS                       R42 R41 K89 ["Text"]
      984 CALL                             R39 2 1
      985 SETTABLEKS                       R39 R38 K199 ["TextField"]
      987 CALL                             R35 3 1
      988 SETTABLEKS                       R35 R34 K176 ["AnimationIdBox"]
      990 MOVE                             R35 R20
      991 JUMPIFNOT                        R35 ; [+48]
      992 NOT                              R35 R14
      993 JUMPIFNOT                        R35 ; [+46]
      994 GETUPVAL                         R35 12
      995 GETTABLEKS                       R35 R35 K65 ["createElement"]
      997 LOADK                            R36 K208 ["TextLabel"]
      998 DUPTABLE                         R37 K214 [{["BackgroundTransparency"] = 1, ["Font"], ["Text"], ["TextColor3"], ["TextSize"], ["Size"], ["TextYAlignment"], ["TextXAlignment"], ["LayoutOrder"] = 2}]
      999 GETUPVAL                         R38 14
     1000 GETTABLEKS                       R38 R38 K215 ["FONT"]
     1002 SETTABLEKS                       R38 R37 K209 ["Font"]
     1004 GETTABLEKS                       R38 R1 K21 ["Localization"]
     1006 LOADK                            R40 K125 ["AssetConfigAnimation"]
     1007 LOADK                            R41 K126 ["InvalidAnimationID"]
     1008 NAMECALL                         R38 R38 K24 ["getText"]
     1010 CALL                             R38 3 1
     1011 SETTABLEKS                       R38 R37 K89 ["Text"]
     1013 GETTABLEKS                       R38 R3 K216 ["redText"]
     1015 SETTABLEKS                       R38 R37 K210 ["TextColor3"]
     1017 GETUPVAL                         R38 14
     1018 GETTABLEKS                       R38 R38 K217 ["FONT_SIZE_MEDIUM"]
     1020 SETTABLEKS                       R38 R37 K211 ["TextSize"]
     1022 GETIMPORT                        R38 K79 [UDim2.new]
     1024 LOADN                            R39 0
     1025 LOADN                            R40 96
     1026 LOADN                            R41 1
     1027 LOADN                            R42 0
     1028 CALL                             R38 4 1
     1029 SETTABLEKS                       R38 R37 K3 ["Size"]
     1031 GETIMPORT                        R38 K218 [Enum.TextYAlignment.Center]
     1033 SETTABLEKS                       R38 R37 K212 ["TextYAlignment"]
     1035 GETIMPORT                        R38 K219 [Enum.TextXAlignment.Center]
     1037 SETTABLEKS                       R38 R37 K213 ["TextXAlignment"]
     1039 CALL                             R35 2 1
     1040 SETTABLEKS                       R35 R34 K120 ["InvalidAnimationLabel"]
     1042 GETUPVAL                         R35 12
     1043 GETTABLEKS                       R35 R35 K65 ["createElement"]
     1045 GETUPVAL                         R36 15
     1046 DUPTABLE                         R37 K223 [{["LayoutOrder"] = 4, ["OnClick"], ["Style"] = "Round", ["Size"], ["Text"]}]
     1047 SETTABLEKS                       R7 R37 K221 ["OnClick"]
     1049 GETIMPORT                        R38 K79 [UDim2.new]
     1051 LOADN                            R39 0
     1052 LOADN                            R40 140
     1053 LOADN                            R41 0
     1054 LOADN                            R42 40
     1055 CALL                             R38 4 1
     1056 SETTABLEKS                       R38 R37 K3 ["Size"]
     1058 GETTABLEKS                       R38 R1 K21 ["Localization"]
     1060 LOADK                            R40 K57 ["General"]
     1061 LOADK                            R41 K166 ["SearchOptionsCancel"]
     1062 NAMECALL                         R38 R38 K24 ["getText"]
     1064 CALL                             R38 3 1
     1065 SETTABLEKS                       R38 R37 K89 ["Text"]
     1067 CALL                             R35 2 1
     1068 SETTABLEKS                       R35 R34 K141 ["CancelButton"]
     1070 GETUPVAL                         R36 16
     1071 CALL                             R36 0 1
     1072 JUMPIFNOT                        R36 ; [+98]
     1073 JUMPIF                           R23 ; [+97]
     1074 GETUPVAL                         R35 12
     1075 GETTABLEKS                       R35 R35 K65 ["createElement"]
     1077 GETUPVAL                         R36 10
     1078 GETTABLEKS                       R36 R36 K66 ["View"]
     1080 DUPTABLE                         R37 K226 [{["tag"] = "size-full", ["LayoutOrder"] = 5, ["Size"]}]
     1081 GETIMPORT                        R38 K79 [UDim2.new]
     1083 LOADN                            R39 0
     1084 LOADN                            R40 140
     1085 LOADN                            R41 0
     1086 LOADN                            R42 40
     1087 CALL                             R38 4 1
     1088 SETTABLEKS                       R38 R37 K3 ["Size"]
     1090 DUPTABLE                         R38 K146 [{"DisabledButton", "HoverOverlay"}]
     1091 GETUPVAL                         R39 12
     1092 GETTABLEKS                       R39 R39 K65 ["createElement"]
     1094 GETUPVAL                         R40 15
     1095 DUPTABLE                         R41 K229 [{["Size"], ["OnClick"], ["Style"] = "RoundPrimary", ["StyleModifier"], ["Text"]}]
     1096 GETIMPORT                        R42 K79 [UDim2.new]
     1098 LOADN                            R43 1
     1099 LOADN                            R44 0
     1100 LOADN                            R45 1
     1101 LOADN                            R46 0
     1102 CALL                             R42 4 1
     1103 SETTABLEKS                       R42 R41 K3 ["Size"]
     1105 DUPCLOSURE                       R42 K230 [PROTO_9]
     1106 SETTABLEKS                       R42 R41 K221 ["OnClick"]
     1108 GETUPVAL                         R42 17
     1109 GETTABLEKS                       R42 R42 K231 ["Disabled"]
     1111 SETTABLEKS                       R42 R41 K228 ["StyleModifier"]
     1113 SETTABLEKS                       R24 R41 K89 ["Text"]
     1115 CALL                             R39 2 1
     1116 SETTABLEKS                       R39 R38 K144 ["DisabledButton"]
     1118 GETTABLEKS                       R40 R1 K155 ["OnPublishButtonHover"]
     1120 JUMPIFNOT                        R40 ; [+45]
     1121 GETUPVAL                         R39 12
     1122 GETTABLEKS                       R39 R39 K65 ["createElement"]
     1124 LOADK                            R40 K156 ["Frame"]
     1125 NEWTABLE                         R41 8 0
     1127 GETIMPORT                        R42 K79 [UDim2.new]
     1129 LOADN                            R43 1
     1130 LOADN                            R44 0
     1131 LOADN                            R45 1
     1132 LOADN                            R46 0
     1133 CALL                             R42 4 1
     1134 SETTABLEKS                       R42 R41 K3 ["Size"]
     1136 GETIMPORT                        R42 K79 [UDim2.new]
     1138 LOADN                            R43 0
     1139 LOADN                            R44 0
     1140 LOADN                            R45 0
     1141 LOADN                            R46 0
     1142 CALL                             R42 4 1
     1143 SETTABLEKS                       R42 R41 K157 ["Position"]
     1145 LOADN                            R42 1
     1146 SETTABLEKS                       R42 R41 K158 ["BackgroundTransparency"]
     1148 GETUPVAL                         R42 12
     1149 GETTABLEKS                       R42 R42 K159 ["Event"]
     1151 GETTABLEKS                       R42 R42 K160 ["MouseEnter"]
     1153 NEWCLOSURE                       R43 P4
     1154 CAPTURE                          VAL R1
     1155 SETTABLE                         R43 R41 R42
     1156 GETUPVAL                         R42 12
     1157 GETTABLEKS                       R42 R42 K159 ["Event"]
     1159 GETTABLEKS                       R42 R42 K161 ["MouseLeave"]
     1161 NEWCLOSURE                       R43 P5
     1162 CAPTURE                          VAL R1
     1163 SETTABLE                         R43 R41 R42
     1164 CALL                             R39 2 1
     1165 JUMPIF                           R39 ; [+1]
     1166 LOADNIL                          R39
     1167 SETTABLEKS                       R39 R38 K145 ["HoverOverlay"]
     1169 CALL                             R35 3 1
     1170 JUMP                             ; [+31]
     1171 GETUPVAL                         R35 12
     1172 GETTABLEKS                       R35 R35 K65 ["createElement"]
     1174 GETUPVAL                         R36 15
     1175 DUPTABLE                         R37 K232 [{["LayoutOrder"] = 5, ["OnClick"], ["Style"] = "RoundPrimary", ["StyleModifier"], ["Size"], ["Text"]}]
     1176 NEWCLOSURE                       R38 P6
     1177 CAPTURE                          REF R23
     1178 CAPTURE                          VAL R6
     1179 CAPTURE                          VAL R0
     1180 SETTABLEKS                       R38 R37 K221 ["OnClick"]
     1182 JUMPIF                           R23 ; [+4]
     1183 GETUPVAL                         R38 17
     1184 GETTABLEKS                       R38 R38 K231 ["Disabled"]
     1186 JUMPIF                           R38 ; [+1]
     1187 LOADNIL                          R38
     1188 SETTABLEKS                       R38 R37 K228 ["StyleModifier"]
     1190 GETIMPORT                        R38 K79 [UDim2.new]
     1192 LOADN                            R39 0
     1193 LOADN                            R40 140
     1194 LOADN                            R41 0
     1195 LOADN                            R42 40
     1196 CALL                             R38 4 1
     1197 SETTABLEKS                       R38 R37 K3 ["Size"]
     1199 SETTABLEKS                       R24 R37 K89 ["Text"]
     1201 CALL                             R35 2 1
     1202 SETTABLEKS                       R35 R34 K140 ["PublishButton"]
     1204 MOVE                             R35 R17
     1205 JUMPIFNOT                        R35 ; [+31]
     1206 GETUPVAL                         R35 12
     1207 GETTABLEKS                       R35 R35 K65 ["createElement"]
     1209 GETUPVAL                         R36 18
     1210 DUPTABLE                         R37 K233 [{["Size"], ["Text"], ["TextSize"], ["Font"], ["onActivated"], ["LayoutOrder"] = 1}]
     1211 GETIMPORT                        R38 K79 [UDim2.new]
     1213 LOADN                            R39 1
     1214 LOADN                            R40 -328
     1215 LOADN                            R41 0
     1216 LOADN                            R42 20
     1217 CALL                             R38 4 1
     1218 SETTABLEKS                       R38 R37 K3 ["Size"]
     1220 SETTABLEKS                       R18 R37 K89 ["Text"]
     1222 GETUPVAL                         R38 14
     1223 GETTABLEKS                       R38 R38 K217 ["FONT_SIZE_MEDIUM"]
     1225 SETTABLEKS                       R38 R37 K211 ["TextSize"]
     1227 GETUPVAL                         R38 14
     1228 GETTABLEKS                       R38 R38 K215 ["FONT"]
     1230 SETTABLEKS                       R38 R37 K209 ["Font"]
     1232 GETTABLEKS                       R38 R0 K93 ["onFlowButtonActivated"]
     1234 SETTABLEKS                       R38 R37 K91 ["onActivated"]
     1236 CALL                             R35 2 1
     1237 SETTABLEKS                       R35 R34 K177 ["ToggleOverrideButton"]
     1239 CALL                             R31 3 -1
     1240 CLOSEUPVALS                      R23
     1241 RETURN                           R31 -1

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
      172 GETIMPORT                        R31 K5 [require]
      174 GETTABLEKS                       R32 R0 K12 ["Src"]
      176 GETTABLEKS                       R32 R32 K35 ["Flags"]
      178 GETTABLEKS                       R32 R32 K39 ["getFFlagEnableUpdateAvatarItem"]
      180 CALL                             R31 1 1
      181 GETTABLEKS                       R32 R2 K40 ["Component"]
      183 LOADK                            R34 K41 ["AssetConfigFooter"]
      184 NAMECALL                         R32 R32 K42 ["extend"]
      186 CALL                             R32 2 1
      187 GETIMPORT                        R33 K44 [game]
      189 LOADK                            R35 K45 ["AssetConfigFixBadIdVerifyState"]
      190 NAMECALL                         R33 R33 K46 ["GetFastFlag"]
      192 CALL                             R33 2 1
      193 GETIMPORT                        R34 K49 [utf8.char]
      195 LOADK                            R35 K50 [57346]
      196 CALL                             R34 1 1
      197 DUPCLOSURE                       R35 K51 [PROTO_3]
      198 CAPTURE                          VAL R30
      199 CAPTURE                          VAL R13
      200 SETTABLEKS                       R35 R32 K52 ["init"]
      202 DUPCLOSURE                       R35 K53 [PROTO_4]
      203 CAPTURE                          VAL R33
      204 CAPTURE                          VAL R14
      205 SETTABLEKS                       R35 R32 K54 ["shouldUpdate"]
      207 DUPCLOSURE                       R35 K55 [PROTO_5]
      208 CAPTURE                          VAL R34
      209 SETTABLEKS                       R35 R32 K56 ["getUploadFeeWithRobuxIcon"]
      211 DUPCLOSURE                       R35 K57 [PROTO_13]
      212 CAPTURE                          VAL R33
      213 CAPTURE                          VAL R11
      214 CAPTURE                          VAL R31
      215 CAPTURE                          VAL R13
      216 CAPTURE                          VAL R20
      217 CAPTURE                          VAL R12
      218 CAPTURE                          VAL R30
      219 CAPTURE                          VAL R10
      220 CAPTURE                          VAL R34
      221 CAPTURE                          VAL R3
      222 CAPTURE                          VAL R26
      223 CAPTURE                          VAL R27
      224 CAPTURE                          VAL R2
      225 CAPTURE                          VAL R19
      226 CAPTURE                          VAL R9
      227 CAPTURE                          VAL R18
      228 CAPTURE                          VAL R28
      229 CAPTURE                          VAL R15
      230 CAPTURE                          VAL R25
      231 SETTABLEKS                       R35 R32 K58 ["render"]
      233 DUPCLOSURE                       R35 K59 [PROTO_14]
      234 CAPTURE                          VAL R29
      235 DUPCLOSURE                       R36 K60 [PROTO_17]
      236 CAPTURE                          VAL R22
      237 CAPTURE                          VAL R23
      238 MOVE                             R37 R6
      239 DUPTABLE                         R38 K64 [{"Stylizer", "Localization", "Network"}]
      240 GETTABLEKS                       R39 R5 K61 ["Stylizer"]
      242 SETTABLEKS                       R39 R38 K61 ["Stylizer"]
      244 GETTABLEKS                       R39 R5 K62 ["Localization"]
      246 SETTABLEKS                       R39 R38 K62 ["Localization"]
      248 SETTABLEKS                       R7 R38 K63 ["Network"]
      250 CALL                             R37 1 1
      251 MOVE                             R38 R32
      252 CALL                             R37 1 1
      253 MOVE                             R32 R37
      254 GETTABLEKS                       R37 R4 K65 ["connect"]
      256 MOVE                             R38 R35
      257 MOVE                             R39 R36
      258 CALL                             R37 2 1
      259 MOVE                             R38 R32
      260 CALL                             R37 1 -1
      261 RETURN                           R37 -1
