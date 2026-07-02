PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["clearChange"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["OVERRIDE_ASSET_ID"]
        8 CALL                             R1 1 0
        9 GETTABLEKS                       R1 R0 K3 ["goToNextScreen"]
       11 CALL                             R1 0 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["onClose"]
        5 CALL                             R1 0 0
        6 GETIMPORT                        R1 K3 [game]
        8 LOADK                            R3 K4 ["StudioAssetService"]
        9 NAMECALL                         R1 R1 K5 ["GetService"]
       11 CALL                             R1 2 1
       12 LOADB                            R3 0
       13 NAMECALL                         R1 R1 K6 ["FireOnUGCSubmitCompleted"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+6]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["constructCreatorDashboardConfigAvatarAssetUrl"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 JUMPIFNOT                        R1 ; [+7]
       10 JUMPIFEQKS                       R1 K1 [""] ; [+6]
       12 GETUPVAL                         R2 1
       13 MOVE                             R4 R1
       14 NAMECALL                         R2 R2 K2 ["OpenBrowserWindow"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["constructCreatorDashboardAvatarAssetUrl"]
        5 CALL                             R0 0 1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R0
        8 JUMPIFNOT                        R0 ; [+7]
        9 JUMPIFEQKS                       R0 K1 [""] ; [+6]
       11 GETUPVAL                         R1 1
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K2 ["OpenBrowserWindow"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["constructCreatorDashboardCreationsPageUrl"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+7]
        5 JUMPIFEQKS                       R0 K1 [""] ; [+6]
        7 GETUPVAL                         R1 1
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K2 ["OpenBrowserWindow"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+6]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["constructCreatorDashboardBundleConfigureUrl"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 JUMPIFNOT                        R1 ; [+7]
       10 JUMPIFEQKS                       R1 K1 [""] ; [+6]
       12 GETUPVAL                         R2 1
       13 MOVE                             R4 R1
       14 NAMECALL                         R2 R2 K2 ["OpenBrowserWindow"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R2 K3 [{[1] = True, ["showWarning"]}]
        1 GETUPVAL                         R4 0
        2 CALL                             R4 0 1
        3 JUMPIFNOT                        R4 ; [+2]
        4 LOADB                            R3 0
        5 JUMP                             ; [+1]
        6 LOADNIL                          R3
        7 SETTABLEKS                       R3 R2 K2 ["showWarning"]
        9 SETTABLEKS                       R2 R0 K4 ["state"]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U1
       14 SETTABLEKS                       R2 R0 K5 ["goToNextScreen"]
       16 NEWCLOSURE                       R2 P1
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R2 R0 K6 ["onClose"]
       20 GETUPVAL                         R2 2
       21 JUMPIFNOT                        R2 ; [+6]
       22 DUPCLOSURE                       R2 K7 [PROTO_2]
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 SETTABLEKS                       R2 R0 K8 ["openCreatorDashboard"]
       27 JUMP                             ; [+5]
       28 DUPCLOSURE                       R2 K9 [PROTO_3]
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 SETTABLEKS                       R2 R0 K8 ["openCreatorDashboard"]
       33 DUPCLOSURE                       R2 K10 [PROTO_4]
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U4
       36 SETTABLEKS                       R2 R0 K11 ["openCreatorDashboardCreationsPage"]
       38 GETUPVAL                         R2 5
       39 JUMPIFNOT                        R2 ; [+5]
       40 DUPCLOSURE                       R2 K12 [PROTO_5]
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          UPVAL U4
       43 SETTABLEKS                       R2 R0 K13 ["openCreatorDashboardBundle"]
       45 GETUPVAL                         R2 0
       46 CALL                             R2 0 1
       47 JUMPIFNOT                        R2 ; [+4]
       48 NEWCLOSURE                       R2 P6
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R2 R0 K14 ["onWarningDialogClose"]
       52 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+18]
        3 GETTABLEKS                       R1 R0 K0 ["props"]
        5 GETTABLEKS                       R1 R1 K1 ["uploadSucceeded"]
        7 JUMPIFNOT                        R1 ; [+13]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K2 ["hasNonEmptyDependencyIssues"]
       11 GETTABLEKS                       R2 R0 K0 ["props"]
       13 GETTABLEKS                       R2 R2 K3 ["nonBlockingDependencyIssues"]
       15 CALL                             R1 1 1
       16 JUMPIFNOT                        R1 ; [+4]
       17 DUPTABLE                         R3 K6 [{["showWarning"] = True}]
       18 NAMECALL                         R1 R0 K7 ["setState"]
       20 CALL                             R1 2 0
       21 GETUPVAL                         R1 2
       22 CALL                             R1 0 1
       23 JUMPIFNOT                        R1 ; [+45]
       24 GETTABLEKS                       R1 R0 K0 ["props"]
       26 GETTABLEKS                       R1 R1 K1 ["uploadSucceeded"]
       28 JUMPIFNOT                        R1 ; [+40]
       29 GETTABLEKS                       R1 R0 K0 ["props"]
       31 GETTABLEKS                       R2 R1 K8 ["animationPackType"]
       33 JUMPIFNOT                        R2 ; [+35]
       34 GETTABLEKS                       R3 R1 K9 ["assetId"]
       36 JUMPIFNOT                        R3 ; [+32]
       37 GETTABLEKS                       R3 R1 K10 ["animationSectionValid"]
       39 JUMPIFEQKB                       R3 FALSE ; [+29]
       41 JUMPIFNOTEQKS                    R2 K11 ["EmoteAnimation"] ; [+11]
       43 GETUPVAL                         R3 3
       44 GETTABLEKS                       R3 R3 K12 ["createEmoteAnimationInstanceInWorkspace"]
       46 GETTABLEKS                       R5 R1 K13 ["assetName"]
       48 OR                               R4 R5 R2
       49 GETTABLEKS                       R5 R1 K9 ["assetId"]
       51 CALL                             R3 2 0
       52 RETURN                           R0 0
       53 GETTABLEKS                       R3 R1 K14 ["animationPackSubName"]
       55 JUMPIFNOT                        R3 ; [+13]
       56 GETUPVAL                         R3 3
       57 GETTABLEKS                       R3 R3 K15 ["createAnimationInstanceInWorkspace"]
       59 MOVE                             R4 R2
       60 GETTABLEKS                       R5 R1 K14 ["animationPackSubName"]
       62 GETTABLEKS                       R6 R1 K9 ["assetId"]
       64 GETTABLEKS                       R7 R1 K16 ["animationPackWeight"]
       66 GETTABLEKS                       R8 R1 K17 ["animationPackParentModelName"]
       68 CALL                             R3 5 0
       69 RETURN                           R0 0

PROTO_9:
        0 LOADNIL                          R3
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["FLOW_TYPE"]
        4 GETTABLEKS                       R4 R4 K1 ["UPLOAD_FLOW"]
        6 JUMPIFNOTEQ                      R0 R4 ; [+46]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K2 ["isCatalogAsset"]
       11 MOVE                             R5 R2
       12 CALL                             R4 1 1
       13 JUMPIFNOT                        R4 ; [+7]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K3 ["BaseUrl"]
       17 LOADK                            R5 K4 ["catalog/"]
       18 MOVE                             R6 R1
       19 CONCAT                           R3 R4 R6
       20 RETURN                           R3 1
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K5 ["constructCreatorStoreUrl"]
       24 CALL                             R4 0 1
       25 JUMPIFNOT                        R4 ; [+12]
       26 GETIMPORT                        R5 K8 [string.format]
       28 LOADK                            R6 K9 ["%sasset/%s"]
       29 MOVE                             R7 R4
       30 GETUPVAL                         R8 4
       31 MOVE                             R10 R1
       32 NAMECALL                         R8 R8 K10 ["urlEncode"]
       34 CALL                             R8 2 -1
       35 CALL                             R5 -1 1
       36 MOVE                             R3 R5
       37 RETURN                           R3 1
       38 GETUPVAL                         R5 2
       39 GETTABLEKS                       R5 R5 K3 ["BaseUrl"]
       41 GETIMPORT                        R6 K8 [string.format]
       43 LOADK                            R7 K11 ["%slibrary/%s/"]
       44 MOVE                             R8 R5
       45 GETUPVAL                         R9 4
       46 MOVE                             R11 R1
       47 NAMECALL                         R9 R9 K10 ["urlEncode"]
       49 CALL                             R9 2 -1
       50 CALL                             R6 -1 1
       51 MOVE                             R3 R6
       52 RETURN                           R3 1
       53 GETUPVAL                         R4 1
       54 GETTABLEKS                       R4 R4 K2 ["isCatalogAsset"]
       56 MOVE                             R5 R2
       57 CALL                             R4 1 1
       58 JUMPIFNOT                        R4 ; [+7]
       59 GETUPVAL                         R4 2
       60 GETTABLEKS                       R4 R4 K3 ["BaseUrl"]
       62 LOADK                            R5 K4 ["catalog/"]
       63 MOVE                             R6 R1
       64 CONCAT                           R3 R4 R6
       65 RETURN                           R3 1
       66 GETUPVAL                         R4 3
       67 GETTABLEKS                       R4 R4 K5 ["constructCreatorStoreUrl"]
       69 CALL                             R4 0 1
       70 JUMPIFNOT                        R4 ; [+12]
       71 GETIMPORT                        R5 K8 [string.format]
       73 LOADK                            R6 K9 ["%sasset/%s"]
       74 MOVE                             R7 R4
       75 GETUPVAL                         R8 4
       76 MOVE                             R10 R1
       77 NAMECALL                         R8 R8 K10 ["urlEncode"]
       79 CALL                             R8 2 -1
       80 CALL                             R5 -1 1
       81 MOVE                             R3 R5
       82 RETURN                           R3 1
       83 GETUPVAL                         R5 2
       84 GETTABLEKS                       R5 R5 K3 ["BaseUrl"]
       86 GETIMPORT                        R6 K8 [string.format]
       88 LOADK                            R7 K11 ["%slibrary/%s/"]
       89 MOVE                             R8 R5
       90 GETUPVAL                         R9 4
       91 MOVE                             R11 R1
       92 NAMECALL                         R9 R9 K10 ["urlEncode"]
       94 CALL                             R9 2 -1
       95 CALL                             R6 -1 1
       96 MOVE                             R3 R6
       97 RETURN                           R3 1

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R6
       11 GETIMPORT                        R7 K4 [table.insert]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 2 ; [-8]
       16 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openCreatorDashboardBundle"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["assetId"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openCreatorDashboard"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["assetId"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openCreatorDashboardBundle"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["assetId"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openCreatorDashboard"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["assetId"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["networkError"]
        6 GETTABLEKS                       R5 R1 K3 ["screenFlowType"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K4 ["FLOW_TYPE"]
       11 GETTABLEKS                       R6 R6 K5 ["UPLOAD_FLOW"]
       13 JUMPIFEQ                         R5 R6 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 MOVE                             R5 R4
       18 JUMPIFNOT                        R5 ; [+6]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K6 ["isCatalogAsset"]
       22 GETTABLEKS                       R6 R1 K7 ["assetTypeEnum"]
       24 CALL                             R5 1 1
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K8 ["getPreviewType"]
       28 GETTABLEKS                       R7 R1 K7 ["assetTypeEnum"]
       30 GETTABLEKS                       R8 R1 K9 ["instances"]
       32 CALL                             R6 2 1
       33 GETUPVAL                         R8 2
       34 CALL                             R8 0 1
       35 JUMPIFNOT                        R8 ; [+11]
       36 GETTABLEKS                       R8 R1 K10 ["animationPackType"]
       38 JUMPIFEQKNIL                     R8 ; [+8]
       40 GETUPVAL                         R7 3
       41 GETTABLEKS                       R7 R7 K11 ["getAvatarAnimationPartThumbnailUri"]
       43 GETTABLEKS                       R8 R1 K10 ["animationPackType"]
       45 CALL                             R7 1 1
       46 JUMP                             ; [+1]
       47 LOADNIL                          R7
       48 LOADB                            R8 0
       49 GETUPVAL                         R9 4
       50 GETTABLEKS                       R9 R9 K12 ["ModelPreview"]
       52 JUMPIFNOTEQ                      R6 R9 ; [+5]
       54 JUMPIFEQKNIL                     R7 ; [+2]
       56 LOADB                            R8 0 +1
       57 LOADB                            R8 1
       58 LOADB                            R9 1
       59 GETUPVAL                         R10 4
       60 GETTABLEKS                       R10 R10 K13 ["Thumbnail"]
       62 JUMPIFEQ                         R6 R10 ; [+11]
       64 LOADB                            R9 1
       65 GETUPVAL                         R10 4
       66 GETTABLEKS                       R10 R10 K14 ["ImagePicker"]
       68 JUMPIFEQ                         R6 R10 ; [+5]
       70 JUMPIFNOTEQKNIL                  R7 ; [+2]
       72 LOADB                            R9 0 +1
       73 LOADB                            R9 1
       74 GETTABLEKS                       R11 R1 K15 ["networkTable"]
       76 NEWTABLE                         R12 0 0
       78 GETIMPORT                        R13 K17 [pairs]
       80 MOVE                             R14 R11
       81 CALL                             R13 1 3
       82 FORGPREP_NEXT                    R13
       83 FASTCALL2                        TABLE_INSERT R12 R17 ; [+5]
       85 MOVE                             R19 R12
       86 MOVE                             R20 R17
       87 GETIMPORT                        R18 K20 [table.insert]
       89 CALL                             R18 2 0
       90 FORGLOOP                         R13 2 ; [-8]
       92 MOVE                             R10 R12
       93 GETTABLEKS                       R11 R1 K21 ["uploadSucceeded"]
       95 NOT                              R12 R11
       96 GETUPVAL                         R13 1
       97 GETTABLEKS                       R13 R13 K6 ["isCatalogAsset"]
       99 GETTABLEKS                       R14 R1 K7 ["assetTypeEnum"]
      101 CALL                             R13 1 1
      102 AND                              R14 R11 R13
      103 JUMPIF                           R11 ; [+2]
      104 MOVE                             R15 R13
      105 JUMPIF                           R15 ; [+1]
      106 NOT                              R15 R13
      107 LOADB                            R16 1
      108 LOADNIL                          R17
      109 GETTABLEKS                       R18 R1 K22 ["hasSubsequent"]
      111 JUMPIFNOT                        R18 ; [+4]
      112 LOADB                            R14 0
      113 LOADB                            R16 0
      114 LOADB                            R15 0
      115 LOADB                            R17 1
      116 LOADN                            R19 72
      117 GETUPVAL                         R20 5
      118 GETTABLEKS                       R20 R20 K23 ["FONT_SIZE_MEDIUM"]
      120 ADD                              R18 R19 R20
      121 GETUPVAL                         R19 1
      122 GETTABLEKS                       R19 R19 K6 ["isCatalogAsset"]
      124 GETTABLEKS                       R20 R1 K7 ["assetTypeEnum"]
      126 CALL                             R19 1 1
      127 JUMPIF                           R19 ; [+6]
      128 GETUPVAL                         R19 1
      129 GETTABLEKS                       R19 R19 K24 ["isUGCBundleType"]
      131 GETTABLEKS                       R20 R1 K7 ["assetTypeEnum"]
      133 CALL                             R19 1 1
      134 LOADNIL                          R20
      135 JUMPIF                           R19 ; [+13]
      136 GETTABLEKS                       R21 R1 K21 ["uploadSucceeded"]
      138 JUMPIFNOT                        R21 ; [+10]
      139 GETUPVAL                         R21 6
      140 GETTABLEKS                       R22 R1 K3 ["screenFlowType"]
      142 GETTABLEKS                       R24 R1 K26 ["assetId"]
      144 ORK                              R23 R24 K25 [0]
      145 GETTABLEKS                       R24 R1 K7 ["assetTypeEnum"]
      147 CALL                             R21 3 1
      148 MOVE                             R20 R21
      149 GETUPVAL                         R21 7
      150 GETTABLEKS                       R21 R21 K27 ["constructCreatorStoreConfigurationUrl"]
      152 GETTABLEKS                       R23 R1 K26 ["assetId"]
      154 ORK                              R22 R23 K25 [0]
      155 CALL                             R21 1 1
      156 GETUPVAL                         R22 1
      157 GETTABLEKS                       R22 R22 K28 ["isCreatorStoreAssetNotIncludingAnimation"]
      159 GETTABLEKS                       R23 R1 K7 ["assetTypeEnum"]
      161 CALL                             R22 1 1
      162 JUMPIFNOT                        R22 ; [+1]
      163 NOT                              R22 R19
      164 GETUPVAL                         R23 8
      165 GETTABLEKS                       R23 R23 K29 ["new"]
      167 CALL                             R23 0 1
      168 LOADNIL                          R24
      169 GETUPVAL                         R25 9
      170 CALL                             R25 0 1
      171 JUMPIFNOT                        R25 ; [+20]
      172 GETTABLEKS                       R25 R1 K21 ["uploadSucceeded"]
      174 JUMPIFNOT                        R25 ; [+9]
      175 GETTABLEKS                       R25 R1 K30 ["Localization"]
      177 LOADK                            R27 K31 ["AssetUploadResult"]
      178 LOADK                            R28 K32 ["SubmissionSucceeded"]
      179 NAMECALL                         R25 R25 K33 ["getText"]
      181 CALL                             R25 3 1
      182 MOVE                             R24 R25
      183 JUMP                             ; [+8]
      184 GETTABLEKS                       R25 R1 K30 ["Localization"]
      186 LOADK                            R27 K31 ["AssetUploadResult"]
      187 LOADK                            R28 K34 ["SubmissionFailed"]
      188 NAMECALL                         R25 R25 K33 ["getText"]
      190 CALL                             R25 3 1
      191 MOVE                             R24 R25
      192 GETTABLEKS                       R26 R1 K7 ["assetTypeEnum"]
      194 GETIMPORT                        R27 K38 [Enum.AssetType.EmoteAnimation]
      196 JUMPIFNOTEQ                      R26 R27 ; [+3]
      198 LOADN                            R25 150
      199 JUMP                             ; [+1]
      200 LOADN                            R25 186
      201 GETUPVAL                         R26 10
      202 GETTABLEKS                       R26 R26 K39 ["createElement"]
      204 LOADK                            R27 K40 ["Frame"]
      205 DUPTABLE                         R28 K46 [{["AutomaticSize"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["Size"]}]
      206 GETIMPORT                        R29 K48 [Enum.AutomaticSize.Y]
      208 SETTABLEKS                       R29 R28 K41 ["AutomaticSize"]
      210 GETTABLEKS                       R29 R2 K49 ["uploadResult"]
      212 GETTABLEKS                       R29 R29 K50 ["background"]
      214 SETTABLEKS                       R29 R28 K42 ["BackgroundColor3"]
      216 GETTABLEKS                       R29 R1 K45 ["Size"]
      218 SETTABLEKS                       R29 R28 K45 ["Size"]
      220 DUPTABLE                         R29 K57 [{"ModelPreview", "ThumbnailPreview", "CopyID", "LoadingResultSuccess", "LoadingResultFailure", "DependencyWarningDialog", "Footer"}]
      221 MOVE                             R30 R8
      222 JUMPIFNOT                        R30 ; [+37]
      223 GETUPVAL                         R30 10
      224 GETTABLEKS                       R30 R30 K39 ["createElement"]
      226 GETUPVAL                         R31 11
      227 DUPTABLE                         R32 K65 [{["title"], ["titleHeight"] = 24, ["titlePadding"] = 12, ["Position"], ["Size"], ["AssetType"], ["UploadSucceeded"]}]
      228 GETTABLEKS                       R34 R1 K67 ["assetName"]
      230 ORK                              R33 R34 K66 []
      231 SETTABLEKS                       R33 R32 K58 ["title"]
      233 GETIMPORT                        R33 K69 [UDim2.new]
      235 LOADK                            R34 K70 [0.5]
      236 LOADN                            R35 -75
      237 LOADN                            R36 0
      238 LOADN                            R37 48
      239 CALL                             R33 4 1
      240 SETTABLEKS                       R33 R32 K63 ["Position"]
      242 GETIMPORT                        R33 K69 [UDim2.new]
      244 LOADN                            R34 0
      245 LOADN                            R35 150
      246 LOADN                            R36 0
      247 MOVE                             R37 R25
      248 CALL                             R33 4 1
      249 SETTABLEKS                       R33 R32 K45 ["Size"]
      251 GETTABLEKS                       R33 R1 K7 ["assetTypeEnum"]
      253 SETTABLEKS                       R33 R32 K36 ["AssetType"]
      255 GETTABLEKS                       R33 R1 K21 ["uploadSucceeded"]
      257 SETTABLEKS                       R33 R32 K64 ["UploadSucceeded"]
      259 CALL                             R30 2 1
      260 SETTABLEKS                       R30 R29 K12 ["ModelPreview"]
      262 MOVE                             R30 R9
      263 JUMPIFNOT                        R30 ; [+50]
      264 GETUPVAL                         R30 10
      265 GETTABLEKS                       R30 R30 K39 ["createElement"]
      267 LOADK                            R31 K71 ["ImageLabel"]
      268 DUPTABLE                         R32 K75 [{["Position"], ["Size"], ["Image"], ["ScaleType"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      269 GETIMPORT                        R33 K69 [UDim2.new]
      271 LOADK                            R34 K70 [0.5]
      272 LOADN                            R35 -75
      273 LOADN                            R36 0
      274 LOADN                            R37 48
      275 CALL                             R33 4 1
      276 SETTABLEKS                       R33 R32 K63 ["Position"]
      278 GETIMPORT                        R33 K69 [UDim2.new]
      280 LOADN                            R34 0
      281 LOADN                            R35 150
      282 LOADN                            R36 0
      283 LOADN                            R37 150
      284 CALL                             R33 4 1
      285 SETTABLEKS                       R33 R32 K45 ["Size"]
      287 GETUPVAL                         R34 2
      288 CALL                             R34 0 1
      289 JUMPIFNOT                        R34 ; [+2]
      290 MOVE                             R33 R7
      291 JUMPIF                           R33 ; [+8]
      292 GETUPVAL                         R33 1
      293 GETTABLEKS                       R33 R33 K76 ["getResultThumbnail"]
      295 GETTABLEKS                       R34 R1 K26 ["assetId"]
      297 GETTABLEKS                       R35 R1 K77 ["iconFile"]
      299 CALL                             R33 2 1
      300 SETTABLEKS                       R33 R32 K72 ["Image"]
      302 GETUPVAL                         R34 2
      303 CALL                             R34 0 1
      304 JUMPIFNOT                        R34 ; [+5]
      305 JUMPIFEQKNIL                     R7 ; [+4]
      307 GETIMPORT                        R33 K79 [Enum.ScaleType.Fit]
      309 JUMP                             ; [+1]
      310 LOADNIL                          R33
      311 SETTABLEKS                       R33 R32 K73 ["ScaleType"]
      313 CALL                             R30 2 1
      314 SETTABLEKS                       R30 R29 K51 ["ThumbnailPreview"]
      316 MOVE                             R30 R11
      317 JUMPIFNOT                        R30 ; [+10]
      318 GETUPVAL                         R30 10
      319 GETTABLEKS                       R30 R30 K39 ["createElement"]
      321 GETUPVAL                         R31 12
      322 DUPTABLE                         R32 K83 [{["YPos"] = 240, ["AssetId"]}]
      323 GETTABLEKS                       R33 R1 K26 ["assetId"]
      325 SETTABLEKS                       R33 R32 K82 ["AssetId"]
      327 CALL                             R30 2 1
      328 SETTABLEKS                       R30 R29 K52 ["CopyID"]
      330 GETUPVAL                         R31 13
      331 CALL                             R31 0 1
      332 JUMPIFNOT                        R31 ; [+56]
      333 MOVE                             R30 R11
      334 JUMPIFNOT                        R30 ; [+596]
      335 GETUPVAL                         R30 14
      336 GETTABLEKS                       R30 R30 K39 ["createElement"]
      338 GETUPVAL                         R31 15
      339 DUPTABLE                         R32 K91 [{"displayCreatorDashboardMessage", "onDashboardLinkClicked", "Text", "showCreatorStoreConfigurationLink", "showModeration", "creatorStoreConfigurationUrl", "url", "Localization", "Stylizer"}]
      340 SETTABLEKS                       R19 R32 K84 ["displayCreatorDashboardMessage"]
      342 GETUPVAL                         R34 1
      343 GETTABLEKS                       R34 R34 K24 ["isUGCBundleType"]
      345 GETTABLEKS                       R35 R1 K7 ["assetTypeEnum"]
      347 CALL                             R34 1 1
      348 JUMPIFNOT                        R34 ; [+4]
      349 NEWCLOSURE                       R33 P0
      350 CAPTURE                          VAL R0
      351 CAPTURE                          VAL R1
      352 JUMP                             ; [+3]
      353 NEWCLOSURE                       R33 P1
      354 CAPTURE                          VAL R0
      355 CAPTURE                          VAL R1
      356 SETTABLEKS                       R33 R32 K85 ["onDashboardLinkClicked"]
      358 GETTABLEKS                       R33 R1 K30 ["Localization"]
      360 LOADK                            R35 K31 ["AssetUploadResult"]
      361 LOADK                            R36 K92 ["CreatorDashboardMessage"]
      362 DUPTABLE                         R37 K94 [{"creatorDashboardLink"}]
      363 GETUPVAL                         R38 5
      364 GETTABLEKS                       R38 R38 K95 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      366 SETTABLEKS                       R38 R37 K93 ["creatorDashboardLink"]
      368 NAMECALL                         R33 R33 K33 ["getText"]
      370 CALL                             R33 4 1
      371 SETTABLEKS                       R33 R32 K86 ["Text"]
      373 SETTABLEKS                       R22 R32 K87 ["showCreatorStoreConfigurationLink"]
      375 SETTABLEKS                       R5 R32 K88 ["showModeration"]
      377 SETTABLEKS                       R21 R32 K89 ["creatorStoreConfigurationUrl"]
      379 SETTABLEKS                       R20 R32 K90 ["url"]
      381 GETTABLEKS                       R33 R1 K30 ["Localization"]
      383 SETTABLEKS                       R33 R32 K30 ["Localization"]
      385 SETTABLEKS                       R2 R32 K1 ["Stylizer"]
      387 CALL                             R30 2 1
      388 JUMP                             ; [+542]
      389 MOVE                             R30 R11
      390 JUMPIFNOT                        R30 ; [+540]
      391 GETUPVAL                         R30 10
      392 GETTABLEKS                       R30 R30 K39 ["createElement"]
      394 LOADK                            R31 K40 ["Frame"]
      395 DUPTABLE                         R32 K96 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1}]
      396 GETIMPORT                        R33 K69 [UDim2.new]
      398 LOADN                            R34 0
      399 LOADN                            R35 0
      400 LOADN                            R36 0
      401 LOADN                            R37 279
      402 CALL                             R33 4 1
      403 SETTABLEKS                       R33 R32 K63 ["Position"]
      405 GETIMPORT                        R33 K69 [UDim2.new]
      407 LOADN                            R34 1
      408 LOADN                            R35 0
      409 LOADN                            R36 1
      410 LOADN                            R37 -279
      411 CALL                             R33 4 1
      412 SETTABLEKS                       R33 R32 K45 ["Size"]
      414 DUPTABLE                         R33 K102 [{["UIListLayout"], ["Title"], ["ReasonFrame"] = False, ["Rows"]}]
      415 GETUPVAL                         R34 10
      416 GETTABLEKS                       R34 R34 K39 ["createElement"]
      418 LOADK                            R35 K97 ["UIListLayout"]
      419 DUPTABLE                         R36 K108 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      420 GETIMPORT                        R37 K110 [Enum.FillDirection.Vertical]
      422 SETTABLEKS                       R37 R36 K103 ["FillDirection"]
      424 GETIMPORT                        R37 K112 [Enum.HorizontalAlignment.Center]
      426 SETTABLEKS                       R37 R36 K104 ["HorizontalAlignment"]
      428 GETIMPORT                        R37 K114 [Enum.VerticalAlignment.Top]
      430 SETTABLEKS                       R37 R36 K105 ["VerticalAlignment"]
      432 GETIMPORT                        R37 K116 [Enum.SortOrder.LayoutOrder]
      434 SETTABLEKS                       R37 R36 K106 ["SortOrder"]
      436 GETIMPORT                        R37 K118 [UDim.new]
      438 LOADN                            R38 0
      439 LOADN                            R39 5
      440 CALL                             R37 2 1
      441 SETTABLEKS                       R37 R36 K107 ["Padding"]
      443 CALL                             R34 2 1
      444 SETTABLEKS                       R34 R33 K97 ["UIListLayout"]
      446 GETUPVAL                         R34 10
      447 GETTABLEKS                       R34 R34 K39 ["createElement"]
      449 LOADK                            R35 K119 ["TextLabel"]
      450 DUPTABLE                         R36 K125 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"], ["Text"], ["Font"], ["TextColor3"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["LayoutOrder"] = 1}]
      451 GETIMPORT                        R37 K69 [UDim2.new]
      453 LOADK                            R38 K70 [0.5]
      454 LOADN                            R39 -200
      455 LOADN                            R40 0
      456 LOADN                            R41 0
      457 CALL                             R37 4 1
      458 SETTABLEKS                       R37 R36 K63 ["Position"]
      460 GETIMPORT                        R37 K69 [UDim2.new]
      462 LOADN                            R38 0
      463 LOADN                            R39 400
      464 LOADN                            R40 0
      465 LOADN                            R41 36
      466 CALL                             R37 4 1
      467 SETTABLEKS                       R37 R36 K45 ["Size"]
      469 GETUPVAL                         R38 9
      470 CALL                             R38 0 1
      471 JUMPIFNOT                        R38 ; [+2]
      472 MOVE                             R37 R24
      473 JUMP                             ; [+6]
      474 GETTABLEKS                       R38 R1 K21 ["uploadSucceeded"]
      476 JUMPIFNOT                        R38 ; [+2]
      477 LOADK                            R37 K126 ["Successfully submitted!"]
      478 JUMP                             ; [+1]
      479 LOADK                            R37 K127 ["Submission failed"]
      480 SETTABLEKS                       R37 R36 K86 ["Text"]
      482 GETUPVAL                         R37 5
      483 GETTABLEKS                       R37 R37 K128 ["FONT"]
      485 SETTABLEKS                       R37 R36 K120 ["Font"]
      487 GETTABLEKS                       R37 R2 K49 ["uploadResult"]
      489 GETTABLEKS                       R37 R37 K129 ["greenText"]
      491 SETTABLEKS                       R37 R36 K121 ["TextColor3"]
      493 GETUPVAL                         R37 5
      494 GETTABLEKS                       R37 R37 K130 ["FONT_SIZE_TITLE"]
      496 SETTABLEKS                       R37 R36 K122 ["TextSize"]
      498 GETIMPORT                        R37 K131 [Enum.TextXAlignment.Center]
      500 SETTABLEKS                       R37 R36 K123 ["TextXAlignment"]
      502 GETIMPORT                        R37 K132 [Enum.TextYAlignment.Center]
      504 SETTABLEKS                       R37 R36 K124 ["TextYAlignment"]
      506 CALL                             R34 2 1
      507 SETTABLEKS                       R34 R33 K98 ["Title"]
      509 GETUPVAL                         R34 10
      510 GETTABLEKS                       R34 R34 K39 ["createElement"]
      512 LOADK                            R35 K40 ["Frame"]
      513 DUPTABLE                         R36 K134 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["LayoutOrder"] = 3}]
      514 GETIMPORT                        R37 K69 [UDim2.new]
      516 LOADN                            R38 0
      517 LOADN                            R39 400
      518 LOADN                            R40 0
      519 LOADN                            R41 72
      520 CALL                             R37 4 1
      521 SETTABLEKS                       R37 R36 K45 ["Size"]
      523 GETIMPORT                        R37 K69 [UDim2.new]
      525 LOADK                            R38 K70 [0.5]
      526 LOADN                            R39 -200
      527 LOADN                            R40 0
      528 LOADN                            R41 49
      529 CALL                             R37 4 1
      530 SETTABLEKS                       R37 R36 K63 ["Position"]
      532 DUPTABLE                         R37 K141 [{"UIListLayout", "ModerationMessage", "CreatorStoreConfigurationText", "CreatorStoreConfigurationLink", "ToolboxText", "ToolboxLink", "CreatorDashboardMsg"}]
      533 GETUPVAL                         R38 10
      534 GETTABLEKS                       R38 R38 K39 ["createElement"]
      536 LOADK                            R39 K97 ["UIListLayout"]
      537 DUPTABLE                         R40 K142 [{"Padding", "SortOrder"}]
      538 GETIMPORT                        R41 K118 [UDim.new]
      540 LOADN                            R42 0
      541 LOADN                            R43 12
      542 CALL                             R41 2 1
      543 SETTABLEKS                       R41 R40 K107 ["Padding"]
      545 GETIMPORT                        R41 K116 [Enum.SortOrder.LayoutOrder]
      547 SETTABLEKS                       R41 R40 K106 ["SortOrder"]
      549 CALL                             R38 2 1
      550 SETTABLEKS                       R38 R37 K97 ["UIListLayout"]
      552 MOVE                             R38 R5
      553 JUMPIFNOT                        R38 ; [+49]
      554 GETUPVAL                         R38 10
      555 GETTABLEKS                       R38 R38 K39 ["createElement"]
      557 LOADK                            R39 K119 ["TextLabel"]
      558 DUPTABLE                         R40 K143 [{["BackgroundTransparency"] = 1, ["Font"], ["Text"], ["TextColor3"], ["TextSize"], ["Size"], ["TextYAlignment"], ["LayoutOrder"] = 0}]
      559 GETUPVAL                         R41 5
      560 GETTABLEKS                       R41 R41 K128 ["FONT"]
      562 SETTABLEKS                       R41 R40 K120 ["Font"]
      564 GETUPVAL                         R42 9
      565 CALL                             R42 0 1
      566 JUMPIFNOT                        R42 ; [+8]
      567 GETTABLEKS                       R41 R1 K30 ["Localization"]
      569 LOADK                            R43 K31 ["AssetUploadResult"]
      570 LOADK                            R44 K144 ["AddedToModerationQueueMessage"]
      571 NAMECALL                         R41 R41 K33 ["getText"]
      573 CALL                             R41 3 1
      574 JUMP                             ; [+1]
      575 LOADK                            R41 K145 ["Asset has been added to moderation queue."]
      576 SETTABLEKS                       R41 R40 K86 ["Text"]
      578 GETTABLEKS                       R41 R2 K49 ["uploadResult"]
      580 GETTABLEKS                       R41 R41 K146 ["text"]
      582 SETTABLEKS                       R41 R40 K121 ["TextColor3"]
      584 GETUPVAL                         R41 5
      585 GETTABLEKS                       R41 R41 K23 ["FONT_SIZE_MEDIUM"]
      587 SETTABLEKS                       R41 R40 K122 ["TextSize"]
      589 GETIMPORT                        R41 K69 [UDim2.new]
      591 LOADN                            R42 1
      592 LOADN                            R43 0
      593 LOADN                            R44 0
      594 LOADN                            R45 24
      595 CALL                             R41 4 1
      596 SETTABLEKS                       R41 R40 K45 ["Size"]
      598 GETIMPORT                        R41 K132 [Enum.TextYAlignment.Center]
      600 SETTABLEKS                       R41 R40 K124 ["TextYAlignment"]
      602 CALL                             R38 2 1
      603 SETTABLEKS                       R38 R37 K135 ["ModerationMessage"]
      605 JUMPIFNOT                        R22 ; [+45]
      606 GETUPVAL                         R38 10
      607 GETTABLEKS                       R38 R38 K39 ["createElement"]
      609 LOADK                            R39 K119 ["TextLabel"]
      610 DUPTABLE                         R40 K147 [{["BackgroundTransparency"] = 1, ["Font"], ["Text"], ["TextColor3"], ["TextSize"], ["Size"], ["TextYAlignment"], ["LayoutOrder"] = 1}]
      611 GETUPVAL                         R41 5
      612 GETTABLEKS                       R41 R41 K128 ["FONT"]
      614 SETTABLEKS                       R41 R40 K120 ["Font"]
      616 GETTABLEKS                       R41 R1 K30 ["Localization"]
      618 LOADK                            R43 K31 ["AssetUploadResult"]
      619 LOADK                            R44 K148 ["CreatorStoreConfigurationMessage"]
      620 NAMECALL                         R41 R41 K33 ["getText"]
      622 CALL                             R41 3 1
      623 SETTABLEKS                       R41 R40 K86 ["Text"]
      625 GETTABLEKS                       R41 R2 K49 ["uploadResult"]
      627 GETTABLEKS                       R41 R41 K146 ["text"]
      629 SETTABLEKS                       R41 R40 K121 ["TextColor3"]
      631 GETUPVAL                         R41 5
      632 GETTABLEKS                       R41 R41 K23 ["FONT_SIZE_MEDIUM"]
      634 SETTABLEKS                       R41 R40 K122 ["TextSize"]
      636 GETIMPORT                        R41 K69 [UDim2.new]
      638 LOADN                            R42 1
      639 LOADN                            R43 0
      640 LOADN                            R44 0
      641 LOADN                            R45 24
      642 CALL                             R41 4 1
      643 SETTABLEKS                       R41 R40 K45 ["Size"]
      645 GETIMPORT                        R41 K132 [Enum.TextYAlignment.Center]
      647 SETTABLEKS                       R41 R40 K124 ["TextYAlignment"]
      649 CALL                             R38 2 1
      650 JUMP                             ; [+1]
      651 LOADNIL                          R38
      652 SETTABLEKS                       R38 R37 K136 ["CreatorStoreConfigurationText"]
      654 JUMPIFNOT                        R22 ; [+54]
      655 GETUPVAL                         R38 10
      656 GETTABLEKS                       R38 R38 K39 ["createElement"]
      658 LOADK                            R39 K149 ["TextButton"]
      659 NEWTABLE                         R40 16 0
      661 LOADN                            R41 1
      662 SETTABLEKS                       R41 R40 K43 ["BackgroundTransparency"]
      664 GETUPVAL                         R41 5
      665 GETTABLEKS                       R41 R41 K128 ["FONT"]
      667 SETTABLEKS                       R41 R40 K120 ["Font"]
      669 SETTABLEKS                       R21 R40 K86 ["Text"]
      671 GETTABLEKS                       R41 R2 K49 ["uploadResult"]
      673 GETTABLEKS                       R41 R41 K150 ["link"]
      675 SETTABLEKS                       R41 R40 K121 ["TextColor3"]
      677 GETUPVAL                         R41 5
      678 GETTABLEKS                       R41 R41 K23 ["FONT_SIZE_MEDIUM"]
      680 SETTABLEKS                       R41 R40 K122 ["TextSize"]
      682 GETIMPORT                        R41 K69 [UDim2.new]
      684 LOADN                            R42 1
      685 LOADN                            R43 0
      686 LOADN                            R44 0
      687 LOADN                            R45 24
      688 CALL                             R41 4 1
      689 SETTABLEKS                       R41 R40 K45 ["Size"]
      691 GETIMPORT                        R41 K132 [Enum.TextYAlignment.Center]
      693 SETTABLEKS                       R41 R40 K124 ["TextYAlignment"]
      695 LOADN                            R41 2
      696 SETTABLEKS                       R41 R40 K115 ["LayoutOrder"]
      698 GETUPVAL                         R41 10
      699 GETTABLEKS                       R41 R41 K151 ["Event"]
      701 GETTABLEKS                       R41 R41 K152 ["Activated"]
      703 NEWCLOSURE                       R42 P2
      704 CAPTURE                          UPVAL U16
      705 CAPTURE                          VAL R21
      706 SETTABLE                         R42 R40 R41
      707 CALL                             R38 2 1
      708 JUMP                             ; [+1]
      709 LOADNIL                          R38
      710 SETTABLEKS                       R38 R37 K137 ["CreatorStoreConfigurationLink"]
      712 JUMPIF                           R19 ; [+50]
      713 GETUPVAL                         R38 10
      714 GETTABLEKS                       R38 R38 K39 ["createElement"]
      716 LOADK                            R39 K119 ["TextLabel"]
      717 DUPTABLE                         R40 K153 [{["BackgroundTransparency"] = 1, ["Font"], ["Text"], ["TextColor3"], ["TextSize"], ["Size"], ["TextYAlignment"], ["LayoutOrder"] = 3}]
      718 GETUPVAL                         R41 5
      719 GETTABLEKS                       R41 R41 K128 ["FONT"]
      721 SETTABLEKS                       R41 R40 K120 ["Font"]
      723 GETUPVAL                         R42 9
      724 CALL                             R42 0 1
      725 JUMPIFNOT                        R42 ; [+8]
      726 GETTABLEKS                       R41 R1 K30 ["Localization"]
      728 LOADK                            R43 K31 ["AssetUploadResult"]
      729 LOADK                            R44 K154 ["WebsiteUrlNoticeMessage"]
      730 NAMECALL                         R41 R41 K33 ["getText"]
      732 CALL                             R41 3 1
      733 JUMP                             ; [+1]
      734 LOADK                            R41 K155 ["You may find your asset in Toolbox or on web:"]
      735 SETTABLEKS                       R41 R40 K86 ["Text"]
      737 GETTABLEKS                       R41 R2 K49 ["uploadResult"]
      739 GETTABLEKS                       R41 R41 K146 ["text"]
      741 SETTABLEKS                       R41 R40 K121 ["TextColor3"]
      743 GETUPVAL                         R41 5
      744 GETTABLEKS                       R41 R41 K23 ["FONT_SIZE_MEDIUM"]
      746 SETTABLEKS                       R41 R40 K122 ["TextSize"]
      748 GETIMPORT                        R41 K69 [UDim2.new]
      750 LOADN                            R42 1
      751 LOADN                            R43 0
      752 LOADN                            R44 0
      753 LOADN                            R45 24
      754 CALL                             R41 4 1
      755 SETTABLEKS                       R41 R40 K45 ["Size"]
      757 GETIMPORT                        R41 K132 [Enum.TextYAlignment.Center]
      759 SETTABLEKS                       R41 R40 K124 ["TextYAlignment"]
      761 CALL                             R38 2 1
      762 JUMP                             ; [+1]
      763 LOADNIL                          R38
      764 SETTABLEKS                       R38 R37 K138 ["ToolboxText"]
      766 JUMPIF                           R19 ; [+54]
      767 GETUPVAL                         R38 10
      768 GETTABLEKS                       R38 R38 K39 ["createElement"]
      770 LOADK                            R39 K149 ["TextButton"]
      771 NEWTABLE                         R40 16 0
      773 LOADN                            R41 1
      774 SETTABLEKS                       R41 R40 K43 ["BackgroundTransparency"]
      776 GETUPVAL                         R41 5
      777 GETTABLEKS                       R41 R41 K128 ["FONT"]
      779 SETTABLEKS                       R41 R40 K120 ["Font"]
      781 SETTABLEKS                       R20 R40 K86 ["Text"]
      783 GETTABLEKS                       R41 R2 K49 ["uploadResult"]
      785 GETTABLEKS                       R41 R41 K150 ["link"]
      787 SETTABLEKS                       R41 R40 K121 ["TextColor3"]
      789 GETUPVAL                         R41 5
      790 GETTABLEKS                       R41 R41 K23 ["FONT_SIZE_MEDIUM"]
      792 SETTABLEKS                       R41 R40 K122 ["TextSize"]
      794 GETIMPORT                        R41 K69 [UDim2.new]
      796 LOADN                            R42 1
      797 LOADN                            R43 0
      798 LOADN                            R44 0
      799 LOADN                            R45 24
      800 CALL                             R41 4 1
      801 SETTABLEKS                       R41 R40 K45 ["Size"]
      803 GETIMPORT                        R41 K132 [Enum.TextYAlignment.Center]
      805 SETTABLEKS                       R41 R40 K124 ["TextYAlignment"]
      807 LOADN                            R41 4
      808 SETTABLEKS                       R41 R40 K115 ["LayoutOrder"]
      810 GETUPVAL                         R41 10
      811 GETTABLEKS                       R41 R41 K151 ["Event"]
      813 GETTABLEKS                       R41 R41 K152 ["Activated"]
      815 NEWCLOSURE                       R42 P3
      816 CAPTURE                          UPVAL U16
      817 CAPTURE                          REF R20
      818 SETTABLE                         R42 R40 R41
      819 CALL                             R38 2 1
      820 JUMP                             ; [+1]
      821 LOADNIL                          R38
      822 SETTABLEKS                       R38 R37 K139 ["ToolboxLink"]
      824 JUMPIFNOT                        R19 ; [+99]
      825 GETUPVAL                         R38 10
      826 GETTABLEKS                       R38 R38 K39 ["createElement"]
      828 GETUPVAL                         R39 17
      829 DUPTABLE                         R40 K163 [{["OnLinkClicked"], ["Text"], ["LinkText"], ["LinkPlaceholder"], ["AutomaticSize"], ["TextXAlignment"], ["HorizontalAlignment"], ["MaxWidth"] = 400, ["TextProps"], ["LayoutOrder"] = 5}]
      830 GETIMPORT                        R42 K165 [game]
      832 LOADK                            R44 K166 ["UpdateAssetUploadResultBundleConfigureLink2"]
      833 NAMECALL                         R42 R42 K167 ["GetFastFlag"]
      835 CALL                             R42 2 1
      836 JUMPIFNOT                        R42 ; [+11]
      837 GETUPVAL                         R42 1
      838 GETTABLEKS                       R42 R42 K24 ["isUGCBundleType"]
      840 GETTABLEKS                       R43 R1 K7 ["assetTypeEnum"]
      842 CALL                             R42 1 1
      843 JUMPIFNOT                        R42 ; [+4]
      844 NEWCLOSURE                       R41 P4
      845 CAPTURE                          VAL R0
      846 CAPTURE                          VAL R1
      847 JUMP                             ; [+8]
      848 GETUPVAL                         R42 18
      849 JUMPIFNOT                        R42 ; [+4]
      850 NEWCLOSURE                       R41 P5
      851 CAPTURE                          VAL R0
      852 CAPTURE                          VAL R1
      853 JUMP                             ; [+2]
      854 GETTABLEKS                       R41 R0 K168 ["openCreatorDashboard"]
      856 SETTABLEKS                       R41 R40 K156 ["OnLinkClicked"]
      858 GETTABLEKS                       R41 R1 K30 ["Localization"]
      860 LOADK                            R43 K31 ["AssetUploadResult"]
      861 LOADK                            R44 K92 ["CreatorDashboardMessage"]
      862 DUPTABLE                         R45 K94 [{"creatorDashboardLink"}]
      863 GETUPVAL                         R46 5
      864 GETTABLEKS                       R46 R46 K95 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      866 SETTABLEKS                       R46 R45 K93 ["creatorDashboardLink"]
      868 NAMECALL                         R41 R41 K33 ["getText"]
      870 CALL                             R41 4 1
      871 SETTABLEKS                       R41 R40 K86 ["Text"]
      873 GETTABLEKS                       R41 R1 K30 ["Localization"]
      875 LOADK                            R43 K169 ["General"]
      876 LOADK                            R44 K170 ["CreatorDashboard"]
      877 NAMECALL                         R41 R41 K33 ["getText"]
      879 CALL                             R41 3 1
      880 SETTABLEKS                       R41 R40 K157 ["LinkText"]
      882 GETUPVAL                         R41 5
      883 GETTABLEKS                       R41 R41 K95 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      885 SETTABLEKS                       R41 R40 K158 ["LinkPlaceholder"]
      887 GETIMPORT                        R41 K48 [Enum.AutomaticSize.Y]
      889 SETTABLEKS                       R41 R40 K41 ["AutomaticSize"]
      891 GETIMPORT                        R41 K131 [Enum.TextXAlignment.Center]
      893 SETTABLEKS                       R41 R40 K123 ["TextXAlignment"]
      895 GETIMPORT                        R41 K112 [Enum.HorizontalAlignment.Center]
      897 SETTABLEKS                       R41 R40 K104 ["HorizontalAlignment"]
      899 DUPTABLE                         R41 K171 [{"Font", "TextColor3", "TextSize", "TextXAlignment"}]
      900 GETUPVAL                         R42 5
      901 GETTABLEKS                       R42 R42 K128 ["FONT"]
      903 SETTABLEKS                       R42 R41 K120 ["Font"]
      905 GETTABLEKS                       R42 R2 K49 ["uploadResult"]
      907 GETTABLEKS                       R42 R42 K146 ["text"]
      909 SETTABLEKS                       R42 R41 K121 ["TextColor3"]
      911 GETUPVAL                         R42 5
      912 GETTABLEKS                       R42 R42 K130 ["FONT_SIZE_TITLE"]
      914 SETTABLEKS                       R42 R41 K122 ["TextSize"]
      916 GETIMPORT                        R42 K131 [Enum.TextXAlignment.Center]
      918 SETTABLEKS                       R42 R41 K123 ["TextXAlignment"]
      920 SETTABLEKS                       R41 R40 K161 ["TextProps"]
      922 CALL                             R38 2 1
      923 JUMP                             ; [+1]
      924 LOADNIL                          R38
      925 SETTABLEKS                       R38 R37 K140 ["CreatorDashboardMsg"]
      927 CALL                             R34 3 1
      928 SETTABLEKS                       R34 R33 K101 ["Rows"]
      930 CALL                             R30 3 1
      931 SETTABLEKS                       R30 R29 K53 ["LoadingResultSuccess"]
      933 GETUPVAL                         R31 13
      934 CALL                             R31 0 1
      935 JUMPIFNOT                        R31 ; [+21]
      936 MOVE                             R30 R12
      937 JUMPIFNOT                        R30 ; [+230]
      938 GETUPVAL                         R30 14
      939 GETTABLEKS                       R30 R30 K39 ["createElement"]
      941 GETUPVAL                         R31 19
      942 DUPTABLE                         R32 K172 [{"Localization", "Stylizer", "networkError", "onDashboardLinkClicked"}]
      943 GETTABLEKS                       R33 R1 K30 ["Localization"]
      945 SETTABLEKS                       R33 R32 K30 ["Localization"]
      947 SETTABLEKS                       R2 R32 K1 ["Stylizer"]
      949 SETTABLEKS                       R3 R32 K2 ["networkError"]
      951 GETTABLEKS                       R33 R0 K173 ["openCreatorDashboardCreationsPage"]
      953 SETTABLEKS                       R33 R32 K85 ["onDashboardLinkClicked"]
      955 CALL                             R30 2 1
      956 JUMP                             ; [+211]
      957 MOVE                             R30 R12
      958 JUMPIFNOT                        R30 ; [+209]
      959 GETUPVAL                         R30 10
      960 GETTABLEKS                       R30 R30 K39 ["createElement"]
      962 LOADK                            R31 K40 ["Frame"]
      963 DUPTABLE                         R32 K96 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1}]
      964 GETIMPORT                        R33 K69 [UDim2.new]
      966 LOADN                            R34 0
      967 LOADN                            R35 0
      968 LOADN                            R36 0
      969 LOADN                            R37 279
      970 CALL                             R33 4 1
      971 SETTABLEKS                       R33 R32 K63 ["Position"]
      973 GETIMPORT                        R33 K69 [UDim2.new]
      975 LOADN                            R34 1
      976 LOADN                            R35 0
      977 LOADN                            R36 1
      978 LOADN                            R37 -279
      979 CALL                             R33 4 1
      980 SETTABLEKS                       R33 R32 K45 ["Size"]
      982 DUPTABLE                         R33 K175 [{"ReasonTextFrame"}]
      983 GETUPVAL                         R34 10
      984 GETTABLEKS                       R34 R34 K39 ["createElement"]
      986 GETUPVAL                         R35 20
      987 DUPTABLE                         R36 K179 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Layout"], ["LayoutOrder"] = 1, ["Padding"] = 8, ["Size"], ["Spacing"] = 12}]
      988 GETIMPORT                        R37 K48 [Enum.AutomaticSize.Y]
      990 SETTABLEKS                       R37 R36 K41 ["AutomaticSize"]
      992 GETIMPORT                        R37 K110 [Enum.FillDirection.Vertical]
      994 SETTABLEKS                       R37 R36 K176 ["Layout"]
      996 GETIMPORT                        R37 K69 [UDim2.new]
      998 LOADN                            R38 1
      999 LOADN                            R39 0
     1000 LOADN                            R40 0
     1001 LOADN                            R41 0
     1002 CALL                             R37 4 1
     1003 SETTABLEKS                       R37 R36 K45 ["Size"]
     1005 DUPTABLE                         R37 K181 [{"Title", "ReasonWithDashboardLink"}]
     1006 GETUPVAL                         R38 10
     1007 GETTABLEKS                       R38 R38 K39 ["createElement"]
     1009 LOADK                            R39 K119 ["TextLabel"]
     1010 DUPTABLE                         R40 K182 [{["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"] = 1, ["Position"], ["Size"], ["Text"], ["TextColor3"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"]}]
     1011 GETUPVAL                         R41 5
     1012 GETTABLEKS                       R41 R41 K128 ["FONT"]
     1014 SETTABLEKS                       R41 R40 K120 ["Font"]
     1016 GETIMPORT                        R41 K69 [UDim2.new]
     1018 LOADK                            R42 K70 [0.5]
     1019 LOADN                            R43 -200
     1020 LOADN                            R44 0
     1021 LOADN                            R45 0
     1022 CALL                             R41 4 1
     1023 SETTABLEKS                       R41 R40 K63 ["Position"]
     1025 GETIMPORT                        R41 K69 [UDim2.new]
     1027 LOADN                            R42 0
     1028 LOADN                            R43 400
     1029 LOADN                            R44 0
     1030 LOADN                            R45 36
     1031 CALL                             R41 4 1
     1032 SETTABLEKS                       R41 R40 K45 ["Size"]
     1034 GETUPVAL                         R42 9
     1035 CALL                             R42 0 1
     1036 JUMPIFNOT                        R42 ; [+8]
     1037 GETTABLEKS                       R41 R1 K30 ["Localization"]
     1039 LOADK                            R43 K31 ["AssetUploadResult"]
     1040 LOADK                            R44 K34 ["SubmissionFailed"]
     1041 NAMECALL                         R41 R41 K33 ["getText"]
     1043 CALL                             R41 3 1
     1044 JUMP                             ; [+1]
     1045 LOADK                            R41 K127 ["Submission failed"]
     1046 SETTABLEKS                       R41 R40 K86 ["Text"]
     1048 GETTABLEKS                       R41 R2 K49 ["uploadResult"]
     1050 GETTABLEKS                       R41 R41 K183 ["redText"]
     1052 SETTABLEKS                       R41 R40 K121 ["TextColor3"]
     1054 GETUPVAL                         R41 5
     1055 GETTABLEKS                       R41 R41 K130 ["FONT_SIZE_TITLE"]
     1057 SETTABLEKS                       R41 R40 K122 ["TextSize"]
     1059 GETIMPORT                        R41 K131 [Enum.TextXAlignment.Center]
     1061 SETTABLEKS                       R41 R40 K123 ["TextXAlignment"]
     1063 GETIMPORT                        R41 K132 [Enum.TextYAlignment.Center]
     1065 SETTABLEKS                       R41 R40 K124 ["TextYAlignment"]
     1067 CALL                             R38 2 1
     1068 SETTABLEKS                       R38 R37 K98 ["Title"]
     1070 GETUPVAL                         R38 10
     1071 GETTABLEKS                       R38 R38 K39 ["createElement"]
     1073 GETUPVAL                         R39 17
     1074 DUPTABLE                         R40 K184 [{["HorizontalAlignment"], ["LayoutOrder"] = 3, ["LinkPlaceholder"], ["LinkText"], ["MaxWidth"] = 400, ["OnLinkClicked"], ["Text"], ["TextProps"]}]
     1075 GETIMPORT                        R41 K112 [Enum.HorizontalAlignment.Center]
     1077 SETTABLEKS                       R41 R40 K104 ["HorizontalAlignment"]
     1079 GETUPVAL                         R41 5
     1080 GETTABLEKS                       R41 R41 K95 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
     1082 SETTABLEKS                       R41 R40 K158 ["LinkPlaceholder"]
     1084 GETTABLEKS                       R41 R0 K0 ["props"]
     1086 GETTABLEKS                       R41 R41 K30 ["Localization"]
     1088 LOADK                            R43 K169 ["General"]
     1089 LOADK                            R44 K170 ["CreatorDashboard"]
     1090 NAMECALL                         R41 R41 K33 ["getText"]
     1092 CALL                             R41 3 1
     1093 SETTABLEKS                       R41 R40 K157 ["LinkText"]
     1095 GETTABLEKS                       R41 R0 K173 ["openCreatorDashboardCreationsPage"]
     1097 SETTABLEKS                       R41 R40 K156 ["OnLinkClicked"]
     1099 MOVE                             R41 R3
     1100 JUMPIFNOT                        R41 ; [+2]
     1101 GETTABLEKS                       R41 R3 K185 ["responseBody"]
     1103 SETTABLEKS                       R41 R40 K86 ["Text"]
     1105 GETUPVAL                         R42 21
     1106 CALL                             R42 0 1
     1107 JUMPIFNOT                        R42 ; [+26]
     1108 DUPTABLE                         R41 K189 [{["Font"], ["TextColor"], ["TextSelectable"] = True, ["TextSize"], ["TextXAlignment"], ["TextYAlignment"]}]
     1109 GETUPVAL                         R42 5
     1110 GETTABLEKS                       R42 R42 K128 ["FONT"]
     1112 SETTABLEKS                       R42 R41 K120 ["Font"]
     1114 GETTABLEKS                       R42 R2 K49 ["uploadResult"]
     1116 GETTABLEKS                       R42 R42 K146 ["text"]
     1118 SETTABLEKS                       R42 R41 K186 ["TextColor"]
     1120 GETUPVAL                         R42 5
     1121 GETTABLEKS                       R42 R42 K23 ["FONT_SIZE_MEDIUM"]
     1123 SETTABLEKS                       R42 R41 K122 ["TextSize"]
     1125 GETIMPORT                        R42 K131 [Enum.TextXAlignment.Center]
     1127 SETTABLEKS                       R42 R41 K123 ["TextXAlignment"]
     1129 GETIMPORT                        R42 K190 [Enum.TextYAlignment.Top]
     1131 SETTABLEKS                       R42 R41 K124 ["TextYAlignment"]
     1133 JUMP                             ; [+25]
     1134 DUPTABLE                         R41 K191 [{"Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
     1135 GETUPVAL                         R42 5
     1136 GETTABLEKS                       R42 R42 K128 ["FONT"]
     1138 SETTABLEKS                       R42 R41 K120 ["Font"]
     1140 GETTABLEKS                       R42 R2 K49 ["uploadResult"]
     1142 GETTABLEKS                       R42 R42 K146 ["text"]
     1144 SETTABLEKS                       R42 R41 K121 ["TextColor3"]
     1146 GETUPVAL                         R42 5
     1147 GETTABLEKS                       R42 R42 K23 ["FONT_SIZE_MEDIUM"]
     1149 SETTABLEKS                       R42 R41 K122 ["TextSize"]
     1151 GETIMPORT                        R42 K131 [Enum.TextXAlignment.Center]
     1153 SETTABLEKS                       R42 R41 K123 ["TextXAlignment"]
     1155 GETIMPORT                        R42 K190 [Enum.TextYAlignment.Top]
     1157 SETTABLEKS                       R42 R41 K124 ["TextYAlignment"]
     1159 SETTABLEKS                       R41 R40 K161 ["TextProps"]
     1161 CALL                             R38 2 1
     1162 SETTABLEKS                       R38 R37 K180 ["ReasonWithDashboardLink"]
     1164 CALL                             R34 3 1
     1165 SETTABLEKS                       R34 R33 K174 ["ReasonTextFrame"]
     1167 CALL                             R30 3 1
     1168 SETTABLEKS                       R30 R29 K54 ["LoadingResultFailure"]
     1170 GETUPVAL                         R31 22
     1171 CALL                             R31 0 1
     1172 JUMPIFNOT                        R31 ; [+20]
     1173 GETTABLEKS                       R31 R0 K192 ["state"]
     1175 GETTABLEKS                       R31 R31 K193 ["showWarning"]
     1177 JUMPIFNOT                        R31 ; [+15]
     1178 GETUPVAL                         R30 10
     1179 GETTABLEKS                       R30 R30 K39 ["createElement"]
     1181 GETUPVAL                         R31 23
     1182 DUPTABLE                         R32 K196 [{"NonBlockingDependencyIssues", "OnClose"}]
     1183 GETTABLEKS                       R33 R1 K197 ["nonBlockingDependencyIssues"]
     1185 SETTABLEKS                       R33 R32 K194 ["NonBlockingDependencyIssues"]
     1187 GETTABLEKS                       R33 R0 K198 ["onWarningDialogClose"]
     1189 SETTABLEKS                       R33 R32 K195 ["OnClose"]
     1191 CALL                             R30 2 1
     1192 JUMP                             ; [+1]
     1193 LOADNIL                          R30
     1194 SETTABLEKS                       R30 R29 K55 ["DependencyWarningDialog"]
     1196 GETUPVAL                         R31 13
     1197 CALL                             R31 0 1
     1198 JUMPIFNOT                        R31 ; [+61]
     1199 GETUPVAL                         R30 14
     1200 GETTABLEKS                       R30 R30 K39 ["createElement"]
     1202 GETUPVAL                         R31 24
     1203 DUPTABLE                         R32 K205 [{"Localization", "primaryButtonText", "onPrimaryButtonActivated", "showCloseLink", "showBackLink", "onGoToNextScreen", "onClose"}]
     1204 GETTABLEKS                       R33 R1 K30 ["Localization"]
     1206 SETTABLEKS                       R33 R32 K30 ["Localization"]
     1208 JUMPIFNOT                        R14 ; [+8]
     1209 GETTABLEKS                       R33 R1 K30 ["Localization"]
     1211 LOADK                            R35 K31 ["AssetUploadResult"]
     1212 LOADK                            R36 K206 ["SubmitAsDevelopmentItem"]
     1213 NAMECALL                         R33 R33 K33 ["getText"]
     1215 CALL                             R33 3 1
     1216 JUMP                             ; [+19]
     1217 JUMPIFNOT                        R17 ; [+8]
     1218 GETTABLEKS                       R33 R1 K30 ["Localization"]
     1220 LOADK                            R35 K31 ["AssetUploadResult"]
     1221 LOADK                            R36 K207 ["NextSubmit"]
     1222 NAMECALL                         R33 R33 K33 ["getText"]
     1224 CALL                             R33 3 1
     1225 JUMP                             ; [+10]
     1226 JUMPIFNOT                        R15 ; [+8]
     1227 GETTABLEKS                       R33 R1 K30 ["Localization"]
     1229 LOADK                            R35 K31 ["AssetUploadResult"]
     1230 LOADK                            R36 K208 ["Close"]
     1231 NAMECALL                         R33 R33 K33 ["getText"]
     1233 CALL                             R33 3 1
     1234 JUMP                             ; [+1]
     1235 LOADNIL                          R33
     1236 SETTABLEKS                       R33 R32 K199 ["primaryButtonText"]
     1238 JUMPIFNOT                        R14 ; [+3]
     1239 GETTABLEKS                       R33 R0 K209 ["goToNextScreen"]
     1241 JUMP                             ; [+2]
     1242 GETTABLEKS                       R33 R0 K204 ["onClose"]
     1244 SETTABLEKS                       R33 R32 K200 ["onPrimaryButtonActivated"]
     1246 SETTABLEKS                       R14 R32 K201 ["showCloseLink"]
     1248 SETTABLEKS                       R16 R32 K202 ["showBackLink"]
     1250 GETTABLEKS                       R33 R0 K209 ["goToNextScreen"]
     1252 SETTABLEKS                       R33 R32 K203 ["onGoToNextScreen"]
     1254 GETTABLEKS                       R33 R0 K204 ["onClose"]
     1256 SETTABLEKS                       R33 R32 K204 ["onClose"]
     1258 CALL                             R30 2 1
     1259 JUMP                             ; [+231]
     1260 GETUPVAL                         R30 10
     1261 GETTABLEKS                       R30 R30 K39 ["createElement"]
     1263 LOADK                            R31 K40 ["Frame"]
     1264 DUPTABLE                         R32 K210 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Position"], ["Size"]}]
     1265 GETIMPORT                        R33 K48 [Enum.AutomaticSize.Y]
     1267 SETTABLEKS                       R33 R32 K41 ["AutomaticSize"]
     1269 GETIMPORT                        R33 K69 [UDim2.new]
     1271 LOADN                            R34 0
     1272 LOADN                            R35 0
     1273 LOADN                            R36 1
     1274 MINUS                            R37 R18
     1275 CALL                             R33 4 1
     1276 SETTABLEKS                       R33 R32 K63 ["Position"]
     1278 GETIMPORT                        R33 K69 [UDim2.new]
     1280 LOADN                            R34 1
     1281 LOADN                            R35 0
     1282 LOADN                            R36 0
     1283 MOVE                             R37 R18
     1284 CALL                             R33 4 1
     1285 SETTABLEKS                       R33 R32 K45 ["Size"]
     1287 DUPTABLE                         R33 K215 [{"UIListLayout", "SubmitButton", "NextButton", "CloseLink", "CloseButton", "LinkText"}]
     1288 GETUPVAL                         R34 10
     1289 GETTABLEKS                       R34 R34 K39 ["createElement"]
     1291 LOADK                            R35 K97 ["UIListLayout"]
     1292 DUPTABLE                         R36 K216 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder"}]
     1293 GETIMPORT                        R37 K110 [Enum.FillDirection.Vertical]
     1295 SETTABLEKS                       R37 R36 K103 ["FillDirection"]
     1297 GETIMPORT                        R37 K112 [Enum.HorizontalAlignment.Center]
     1299 SETTABLEKS                       R37 R36 K104 ["HorizontalAlignment"]
     1301 GETIMPORT                        R37 K118 [UDim.new]
     1303 LOADN                            R38 0
     1304 LOADN                            R39 10
     1305 CALL                             R37 2 1
     1306 SETTABLEKS                       R37 R36 K107 ["Padding"]
     1308 GETIMPORT                        R37 K116 [Enum.SortOrder.LayoutOrder]
     1310 SETTABLEKS                       R37 R36 K106 ["SortOrder"]
     1312 CALL                             R34 2 1
     1313 SETTABLEKS                       R34 R33 K97 ["UIListLayout"]
     1315 JUMPIFNOT                        R14 ; [+38]
     1316 GETUPVAL                         R34 10
     1317 GETTABLEKS                       R34 R34 K39 ["createElement"]
     1319 GETUPVAL                         R35 25
     1320 DUPTABLE                         R36 K219 [{"AutomaticSize", "LayoutOrder", "onClick", "Size", "titleText"}]
     1321 GETIMPORT                        R37 K221 [Enum.AutomaticSize.X]
     1323 SETTABLEKS                       R37 R36 K41 ["AutomaticSize"]
     1325 NAMECALL                         R37 R23 K222 ["getNextOrder"]
     1327 CALL                             R37 1 1
     1328 SETTABLEKS                       R37 R36 K115 ["LayoutOrder"]
     1330 GETTABLEKS                       R37 R0 K209 ["goToNextScreen"]
     1332 SETTABLEKS                       R37 R36 K217 ["onClick"]
     1334 GETIMPORT                        R37 K69 [UDim2.new]
     1336 LOADN                            R38 0
     1337 GETUPVAL                         R39 26
     1338 LOADN                            R40 0
     1339 LOADN                            R41 32
     1340 CALL                             R37 4 1
     1341 SETTABLEKS                       R37 R36 K45 ["Size"]
     1343 GETTABLEKS                       R37 R1 K30 ["Localization"]
     1345 LOADK                            R39 K31 ["AssetUploadResult"]
     1346 LOADK                            R40 K206 ["SubmitAsDevelopmentItem"]
     1347 NAMECALL                         R37 R37 K33 ["getText"]
     1349 CALL                             R37 3 1
     1350 SETTABLEKS                       R37 R36 K218 ["titleText"]
     1352 CALL                             R34 2 1
     1353 JUMP                             ; [+1]
     1354 LOADNIL                          R34
     1355 SETTABLEKS                       R34 R33 K211 ["SubmitButton"]
     1357 JUMPIFNOT                        R17 ; [+38]
     1358 GETUPVAL                         R34 10
     1359 GETTABLEKS                       R34 R34 K39 ["createElement"]
     1361 GETUPVAL                         R35 25
     1362 DUPTABLE                         R36 K219 [{"AutomaticSize", "LayoutOrder", "onClick", "Size", "titleText"}]
     1363 GETIMPORT                        R37 K221 [Enum.AutomaticSize.X]
     1365 SETTABLEKS                       R37 R36 K41 ["AutomaticSize"]
     1367 NAMECALL                         R37 R23 K222 ["getNextOrder"]
     1369 CALL                             R37 1 1
     1370 SETTABLEKS                       R37 R36 K115 ["LayoutOrder"]
     1372 GETTABLEKS                       R37 R0 K204 ["onClose"]
     1374 SETTABLEKS                       R37 R36 K217 ["onClick"]
     1376 GETIMPORT                        R37 K69 [UDim2.new]
     1378 LOADN                            R38 0
     1379 LOADN                            R39 200
     1380 LOADN                            R40 0
     1381 LOADN                            R41 32
     1382 CALL                             R37 4 1
     1383 SETTABLEKS                       R37 R36 K45 ["Size"]
     1385 GETTABLEKS                       R37 R1 K30 ["Localization"]
     1387 LOADK                            R39 K31 ["AssetUploadResult"]
     1388 LOADK                            R40 K207 ["NextSubmit"]
     1389 NAMECALL                         R37 R37 K33 ["getText"]
     1391 CALL                             R37 3 1
     1392 SETTABLEKS                       R37 R36 K218 ["titleText"]
     1394 CALL                             R34 2 1
     1395 JUMP                             ; [+1]
     1396 LOADNIL                          R34
     1397 SETTABLEKS                       R34 R33 K212 ["NextButton"]
     1399 JUMPIFNOT                        R14 ; [+25]
     1400 GETUPVAL                         R34 10
     1401 GETTABLEKS                       R34 R34 K39 ["createElement"]
     1403 GETUPVAL                         R35 27
     1404 DUPTABLE                         R36 K224 [{"LayoutOrder", "OnClick", "Text"}]
     1405 NAMECALL                         R37 R23 K222 ["getNextOrder"]
     1407 CALL                             R37 1 1
     1408 SETTABLEKS                       R37 R36 K115 ["LayoutOrder"]
     1410 GETTABLEKS                       R37 R0 K204 ["onClose"]
     1412 SETTABLEKS                       R37 R36 K223 ["OnClick"]
     1414 GETTABLEKS                       R37 R1 K30 ["Localization"]
     1416 LOADK                            R39 K31 ["AssetUploadResult"]
     1417 LOADK                            R40 K208 ["Close"]
     1418 NAMECALL                         R37 R37 K33 ["getText"]
     1420 CALL                             R37 3 1
     1421 SETTABLEKS                       R37 R36 K86 ["Text"]
     1423 CALL                             R34 2 1
     1424 JUMP                             ; [+1]
     1425 LOADNIL                          R34
     1426 SETTABLEKS                       R34 R33 K213 ["CloseLink"]
     1428 JUMPIFNOT                        R15 ; [+34]
     1429 GETUPVAL                         R34 10
     1430 GETTABLEKS                       R34 R34 K39 ["createElement"]
     1432 GETUPVAL                         R35 25
     1433 DUPTABLE                         R36 K225 [{"LayoutOrder", "onClick", "Size", "titleText"}]
     1434 NAMECALL                         R37 R23 K222 ["getNextOrder"]
     1436 CALL                             R37 1 1
     1437 SETTABLEKS                       R37 R36 K115 ["LayoutOrder"]
     1439 GETTABLEKS                       R37 R0 K204 ["onClose"]
     1441 SETTABLEKS                       R37 R36 K217 ["onClick"]
     1443 GETIMPORT                        R37 K69 [UDim2.new]
     1445 LOADN                            R38 0
     1446 LOADN                            R39 120
     1447 LOADN                            R40 0
     1448 LOADN                            R41 32
     1449 CALL                             R37 4 1
     1450 SETTABLEKS                       R37 R36 K45 ["Size"]
     1452 GETTABLEKS                       R37 R1 K30 ["Localization"]
     1454 LOADK                            R39 K31 ["AssetUploadResult"]
     1455 LOADK                            R40 K208 ["Close"]
     1456 NAMECALL                         R37 R37 K33 ["getText"]
     1458 CALL                             R37 3 1
     1459 SETTABLEKS                       R37 R36 K218 ["titleText"]
     1461 CALL                             R34 2 1
     1462 JUMP                             ; [+1]
     1463 LOADNIL                          R34
     1464 SETTABLEKS                       R34 R33 K214 ["CloseButton"]
     1466 JUMPIFNOT                        R16 ; [+20]
     1467 GETUPVAL                         R34 10
     1468 GETTABLEKS                       R34 R34 K39 ["createElement"]
     1470 GETUPVAL                         R35 27
     1471 DUPTABLE                         R36 K226 [{["LayoutOrder"] = 1, ["OnClick"], ["Text"]}]
     1472 GETTABLEKS                       R37 R0 K209 ["goToNextScreen"]
     1474 SETTABLEKS                       R37 R36 K223 ["OnClick"]
     1476 GETTABLEKS                       R37 R1 K30 ["Localization"]
     1478 LOADK                            R39 K31 ["AssetUploadResult"]
     1479 LOADK                            R40 K227 ["Back"]
     1480 NAMECALL                         R37 R37 K33 ["getText"]
     1482 CALL                             R37 3 1
     1483 SETTABLEKS                       R37 R36 K86 ["Text"]
     1485 CALL                             R34 2 1
     1486 JUMP                             ; [+1]
     1487 LOADNIL                          R34
     1488 SETTABLEKS                       R34 R33 K157 ["LinkText"]
     1490 CALL                             R30 3 1
     1491 SETTABLEKS                       R30 R29 K56 ["Footer"]
     1493 CALL                             R26 3 -1
     1494 CLOSEUPVALS                      R20
     1495 RETURN                           R26 -1

PROTO_18:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K18 [{"assetId", "assetName", "uploadSucceeded", "instances", "networkError", "screenFlowType", "assetConfigData", "assetTypeEnum", "thumbnailStatus", "networkTable", "iconFile", "hasSubsequent", "animationPackType", "animationPackSubName", "animationPackWeight", "animationPackParentModelName", "animationSectionValid", "nonBlockingDependencyIssues"}]
        6 GETTABLEKS                       R3 R0 K0 ["assetId"]
        8 SETTABLEKS                       R3 R2 K0 ["assetId"]
       10 GETTABLEKS                       R4 R0 K19 ["changed"]
       12 JUMPIFNOT                        R4 ; [+5]
       13 GETTABLEKS                       R3 R0 K19 ["changed"]
       15 GETTABLEKS                       R3 R3 K20 ["AssetConfigName"]
       17 JUMPIF                           R3 ; [+2]
       18 GETTABLEKS                       R3 R0 K1 ["assetName"]
       20 SETTABLEKS                       R3 R2 K1 ["assetName"]
       22 GETTABLEKS                       R3 R0 K2 ["uploadSucceeded"]
       24 SETTABLEKS                       R3 R2 K2 ["uploadSucceeded"]
       26 GETTABLEKS                       R3 R0 K3 ["instances"]
       28 SETTABLEKS                       R3 R2 K3 ["instances"]
       30 GETTABLEKS                       R3 R0 K4 ["networkError"]
       32 SETTABLEKS                       R3 R2 K4 ["networkError"]
       34 GETTABLEKS                       R3 R0 K5 ["screenFlowType"]
       36 SETTABLEKS                       R3 R2 K5 ["screenFlowType"]
       38 GETTABLEKS                       R3 R0 K6 ["assetConfigData"]
       40 SETTABLEKS                       R3 R2 K6 ["assetConfigData"]
       42 GETTABLEKS                       R3 R0 K7 ["assetTypeEnum"]
       44 SETTABLEKS                       R3 R2 K7 ["assetTypeEnum"]
       46 GETTABLEKS                       R3 R0 K8 ["thumbnailStatus"]
       48 SETTABLEKS                       R3 R2 K8 ["thumbnailStatus"]
       50 GETTABLEKS                       R3 R0 K9 ["networkTable"]
       52 JUMPIF                           R3 ; [+2]
       53 NEWTABLE                         R3 0 0
       55 SETTABLEKS                       R3 R2 K9 ["networkTable"]
       57 GETTABLEKS                       R3 R0 K10 ["iconFile"]
       59 SETTABLEKS                       R3 R2 K10 ["iconFile"]
       61 GETTABLEKS                       R3 R0 K11 ["hasSubsequent"]
       63 SETTABLEKS                       R3 R2 K11 ["hasSubsequent"]
       65 GETUPVAL                         R4 0
       66 CALL                             R4 0 1
       67 JUMPIFNOT                        R4 ; [+3]
       68 GETTABLEKS                       R3 R0 K12 ["animationPackType"]
       70 JUMP                             ; [+1]
       71 LOADNIL                          R3
       72 SETTABLEKS                       R3 R2 K12 ["animationPackType"]
       74 GETUPVAL                         R4 0
       75 CALL                             R4 0 1
       76 JUMPIFNOT                        R4 ; [+3]
       77 GETTABLEKS                       R3 R0 K13 ["animationPackSubName"]
       79 JUMP                             ; [+1]
       80 LOADNIL                          R3
       81 SETTABLEKS                       R3 R2 K13 ["animationPackSubName"]
       83 GETUPVAL                         R4 0
       84 CALL                             R4 0 1
       85 JUMPIFNOT                        R4 ; [+3]
       86 GETTABLEKS                       R3 R0 K14 ["animationPackWeight"]
       88 JUMP                             ; [+1]
       89 LOADNIL                          R3
       90 SETTABLEKS                       R3 R2 K14 ["animationPackWeight"]
       92 GETUPVAL                         R4 0
       93 CALL                             R4 0 1
       94 JUMPIFNOT                        R4 ; [+3]
       95 GETTABLEKS                       R3 R0 K15 ["animationPackParentModelName"]
       97 JUMP                             ; [+1]
       98 LOADNIL                          R3
       99 SETTABLEKS                       R3 R2 K15 ["animationPackParentModelName"]
      101 GETUPVAL                         R4 0
      102 CALL                             R4 0 1
      103 JUMPIFNOT                        R4 ; [+3]
      104 GETTABLEKS                       R3 R0 K16 ["animationSectionValid"]
      106 JUMP                             ; [+1]
      107 LOADNIL                          R3
      108 SETTABLEKS                       R3 R2 K16 ["animationSectionValid"]
      110 GETUPVAL                         R4 1
      111 CALL                             R4 0 1
      112 JUMPIFNOT                        R4 ; [+3]
      113 GETTABLEKS                       R3 R0 K17 ["nonBlockingDependencyIssues"]
      115 JUMP                             ; [+1]
      116 LOADNIL                          R3
      117 SETTABLEKS                       R3 R2 K17 ["nonBlockingDependencyIssues"]
      119 RETURN                           R2 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+10]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETUPVAL                         R2 3
        6 GETTABLEKS                       R2 R2 K0 ["SCREENS"]
        8 GETTABLEKS                       R2 R2 K1 ["CONFIGURE_ASSET"]
       10 CALL                             R1 1 -1
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R1 4
       15 CALL                             R1 0 -1
       16 CALL                             R0 -1 0
       17 RETURN                           R0 0

PROTO_21:
        0 DUPTABLE                         R1 K2 [{"clearChange", "goToNextScreen"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["clearChange"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 SETTABLEKS                       R2 R1 K1 ["goToNextScreen"]
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ContentProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["GuiService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["HttpService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["UpdateAssetUploadResultBundleConfigureLink2"]
       22 NAMECALL                         R3 R3 K7 ["GetFastFlag"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K1 [game]
       27 LOADK                            R6 K8 ["ChangeAvatarAssetCreatorDashboardLink"]
       28 NAMECALL                         R4 R4 K7 ["GetFastFlag"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K1 [game]
       33 LOADK                            R7 K9 ["ToolboxFixSubmitDevelopmentItemWidth"]
       34 LOADB                            R8 0
       35 NAMECALL                         R5 R5 K10 ["DefineFastFlag"]
       37 CALL                             R5 3 0
       38 GETIMPORT                        R5 K12 [script]
       40 GETTABLEKS                       R5 R5 K13 ["Parent"]
       42 GETTABLEKS                       R5 R5 K13 ["Parent"]
       44 GETTABLEKS                       R5 R5 K13 ["Parent"]
       46 GETTABLEKS                       R5 R5 K13 ["Parent"]
       48 GETTABLEKS                       R6 R5 K14 ["Packages"]
       50 GETIMPORT                        R7 K16 [require]
       52 GETTABLEKS                       R8 R6 K17 ["Roact"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K16 [require]
       57 GETTABLEKS                       R9 R6 K18 ["React"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K16 [require]
       62 GETTABLEKS                       R10 R6 K19 ["RoactRodux"]
       64 CALL                             R9 1 1
       65 GETTABLEKS                       R10 R5 K20 ["Src"]
       67 GETTABLEKS                       R10 R10 K21 ["Util"]
       69 GETIMPORT                        R11 K16 [require]
       71 GETTABLEKS                       R12 R10 K22 ["Constants"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K16 [require]
       76 GETTABLEKS                       R13 R10 K23 ["AssetConfigConstants"]
       78 CALL                             R12 1 1
       79 GETTABLEKS                       R13 R12 K24 ["PreviewTypes"]
       81 GETIMPORT                        R14 K16 [require]
       83 GETTABLEKS                       R15 R10 K25 ["AssetConfigUtil"]
       85 CALL                             R14 1 1
       86 GETIMPORT                        R15 K16 [require]
       88 GETTABLEKS                       R16 R10 K26 ["AssetUploadUtil"]
       90 CALL                             R15 1 1
       91 GETIMPORT                        R16 K16 [require]
       93 GETTABLEKS                       R17 R10 K27 ["AnimationConfigUtil"]
       95 CALL                             R16 1 1
       96 GETIMPORT                        R17 K16 [require]
       98 GETTABLEKS                       R18 R10 K28 ["Urls"]
      100 CALL                             R17 1 1
      101 GETIMPORT                        R18 K16 [require]
      103 GETTABLEKS                       R19 R6 K29 ["Framework"]
      105 CALL                             R18 1 1
      106 GETTABLEKS                       R18 R18 K30 ["ContextServices"]
      108 GETTABLEKS                       R19 R18 K31 ["withContext"]
      110 GETTABLEKS                       R20 R5 K20 ["Src"]
      112 GETTABLEKS                       R20 R20 K32 ["Components"]
      114 GETIMPORT                        R21 K16 [require]
      116 GETTABLEKS                       R22 R20 K33 ["NavButton"]
      118 CALL                             R21 1 1
      119 GETTABLEKS                       R22 R20 K34 ["AssetConfiguration"]
      121 GETIMPORT                        R23 K16 [require]
      123 GETTABLEKS                       R24 R22 K35 ["AssetThumbnailPreview"]
      125 CALL                             R23 1 1
      126 GETIMPORT                        R24 K16 [require]
      128 GETTABLEKS                       R25 R22 K36 ["ReasonFrame"]
      130 CALL                             R24 1 1
      131 GETIMPORT                        R25 K16 [require]
      133 GETTABLEKS                       R26 R22 K37 ["CopyID"]
      135 CALL                             R25 1 1
      136 GETIMPORT                        R26 K16 [require]
      138 GETTABLEKS                       R27 R22 K38 ["ModelUploadWarningDialog"]
      140 CALL                             R26 1 1
      141 GETIMPORT                        R27 K16 [require]
      143 GETTABLEKS                       R28 R22 K39 ["LoadingResultSuccess"]
      145 CALL                             R27 1 1
      146 GETIMPORT                        R28 K16 [require]
      148 GETTABLEKS                       R29 R22 K40 ["LoadingResultFailure"]
      150 CALL                             R28 1 1
      151 GETIMPORT                        R29 K16 [require]
      153 GETTABLEKS                       R30 R22 K41 ["AssetUploadResultFooter"]
      155 CALL                             R29 1 1
      156 GETIMPORT                        R30 K16 [require]
      158 GETTABLEKS                       R31 R6 K29 ["Framework"]
      160 CALL                             R30 1 1
      161 GETTABLEKS                       R31 R30 K42 ["UI"]
      163 GETTABLEKS                       R31 R31 K43 ["LinkText"]
      165 GETTABLEKS                       R32 R30 K42 ["UI"]
      167 GETTABLEKS                       R32 R32 K44 ["Pane"]
      169 GETTABLEKS                       R33 R30 K42 ["UI"]
      171 GETTABLEKS                       R33 R33 K45 ["TextWithInlineLink"]
      173 GETTABLEKS                       R34 R30 K21 ["Util"]
      175 GETTABLEKS                       R34 R34 K46 ["LayoutOrderIterator"]
      177 GETTABLEKS                       R35 R5 K20 ["Src"]
      179 GETTABLEKS                       R35 R35 K47 ["Actions"]
      181 GETIMPORT                        R36 K16 [require]
      183 GETTABLEKS                       R37 R35 K48 ["SetCurrentScreen"]
      185 CALL                             R36 1 1
      186 GETIMPORT                        R37 K16 [require]
      188 GETTABLEKS                       R38 R35 K49 ["ClearChange"]
      190 CALL                             R37 1 1
      191 GETTABLEKS                       R38 R5 K20 ["Src"]
      193 GETTABLEKS                       R38 R38 K50 ["Thunks"]
      195 GETIMPORT                        R39 K16 [require]
      197 GETTABLEKS                       R40 R5 K20 ["Src"]
      199 GETTABLEKS                       R40 R40 K51 ["Flags"]
      201 GETTABLEKS                       R40 R40 K52 ["getFFlagToolboxDeprecateAssetSelection"]
      203 CALL                             R39 1 1
      204 LOADNIL                          R40
      205 MOVE                             R41 R39
      206 CALL                             R41 0 1
      207 JUMPIF                           R41 ; [+8]
      208 GETIMPORT                        R41 K16 [require]
      210 GETTABLEKS                       R42 R38 K34 ["AssetConfiguration"]
      212 GETTABLEKS                       R42 R42 K53 ["GoToNextScreen"]
      214 CALL                             R41 1 1
      215 MOVE                             R40 R41
      216 GETIMPORT                        R41 K16 [require]
      218 GETTABLEKS                       R42 R5 K20 ["Src"]
      220 GETTABLEKS                       R42 R42 K21 ["Util"]
      222 GETTABLEKS                       R42 R42 K54 ["SharedFlags"]
      224 GETTABLEKS                       R42 R42 K55 ["getFFlagToolboxFixAssetConfigResultTranslations"]
      226 CALL                             R41 1 1
      227 GETIMPORT                        R42 K16 [require]
      229 GETTABLEKS                       R43 R5 K20 ["Src"]
      231 GETTABLEKS                       R43 R43 K51 ["Flags"]
      233 GETTABLEKS                       R43 R43 K56 ["getFFlagAllowModelUploadErrorMessageToBeSelectable"]
      235 CALL                             R42 1 1
      236 GETIMPORT                        R43 K16 [require]
      238 GETTABLEKS                       R44 R5 K20 ["Src"]
      240 GETTABLEKS                       R44 R44 K51 ["Flags"]
      242 GETTABLEKS                       R44 R44 K57 ["getFFlagEnableUploadingAvatarAnimations"]
      244 CALL                             R43 1 1
      245 GETIMPORT                        R44 K16 [require]
      247 GETTABLEKS                       R45 R10 K58 ["AvatarAnimationStudioToolboxTextures"]
      249 CALL                             R44 1 1
      250 GETIMPORT                        R45 K16 [require]
      252 GETTABLEKS                       R46 R5 K20 ["Src"]
      254 GETTABLEKS                       R46 R46 K21 ["Util"]
      256 GETTABLEKS                       R46 R46 K54 ["SharedFlags"]
      258 GETTABLEKS                       R46 R46 K59 ["getFFlagToolboxModelCreationWarningWindow"]
      260 CALL                             R45 1 1
      261 GETIMPORT                        R46 K16 [require]
      263 GETTABLEKS                       R47 R5 K20 ["Src"]
      265 GETTABLEKS                       R47 R47 K51 ["Flags"]
      267 GETTABLEKS                       R47 R47 K60 ["getFFlagToolboxAssetConfigFoundationMigration"]
      269 CALL                             R46 1 1
      270 GETIMPORT                        R48 K1 [game]
      272 LOADK                            R50 K9 ["ToolboxFixSubmitDevelopmentItemWidth"]
      273 NAMECALL                         R48 R48 K7 ["GetFastFlag"]
      275 CALL                             R48 2 1
      276 JUMPIFNOT                        R48 ; [+2]
      277 LOADN                            R47 225
      278 JUMP                             ; [+1]
      279 LOADN                            R47 150
      280 GETTABLEKS                       R48 R7 K61 ["PureComponent"]
      282 LOADK                            R50 K62 ["AssetUploadResult"]
      283 NAMECALL                         R48 R48 K63 ["extend"]
      285 CALL                             R48 2 1
      286 DUPCLOSURE                       R49 K64 [PROTO_7]
      287 CAPTURE                          VAL R45
      288 CAPTURE                          VAL R12
      289 CAPTURE                          VAL R4
      290 CAPTURE                          VAL R17
      291 CAPTURE                          VAL R1
      292 CAPTURE                          VAL R3
      293 SETTABLEKS                       R49 R48 K65 ["init"]
      295 DUPCLOSURE                       R49 K66 [PROTO_8]
      296 CAPTURE                          VAL R45
      297 CAPTURE                          VAL R15
      298 CAPTURE                          VAL R43
      299 CAPTURE                          VAL R16
      300 SETTABLEKS                       R49 R48 K67 ["didMount"]
      302 DUPCLOSURE                       R49 K68 [PROTO_9]
      303 CAPTURE                          VAL R12
      304 CAPTURE                          VAL R14
      305 CAPTURE                          VAL R0
      306 CAPTURE                          VAL R17
      307 CAPTURE                          VAL R2
      308 DUPCLOSURE                       R50 K69 [PROTO_10]
      309 DUPCLOSURE                       R51 K70 [PROTO_17]
      310 CAPTURE                          VAL R12
      311 CAPTURE                          VAL R14
      312 CAPTURE                          VAL R43
      313 CAPTURE                          VAL R44
      314 CAPTURE                          VAL R13
      315 CAPTURE                          VAL R11
      316 CAPTURE                          VAL R49
      317 CAPTURE                          VAL R17
      318 CAPTURE                          VAL R34
      319 CAPTURE                          VAL R41
      320 CAPTURE                          VAL R7
      321 CAPTURE                          VAL R23
      322 CAPTURE                          VAL R25
      323 CAPTURE                          VAL R46
      324 CAPTURE                          VAL R8
      325 CAPTURE                          VAL R27
      326 CAPTURE                          VAL R1
      327 CAPTURE                          VAL R33
      328 CAPTURE                          VAL R4
      329 CAPTURE                          VAL R28
      330 CAPTURE                          VAL R32
      331 CAPTURE                          VAL R42
      332 CAPTURE                          VAL R45
      333 CAPTURE                          VAL R26
      334 CAPTURE                          VAL R29
      335 CAPTURE                          VAL R21
      336 CAPTURE                          VAL R47
      337 CAPTURE                          VAL R31
      338 SETTABLEKS                       R51 R48 K71 ["render"]
      340 DUPCLOSURE                       R51 K72 [PROTO_18]
      341 CAPTURE                          VAL R43
      342 CAPTURE                          VAL R45
      343 NEWCLOSURE                       R52 P6
      344 CAPTURE                          VAL R37
      345 CAPTURE                          VAL R39
      346 CAPTURE                          VAL R36
      347 CAPTURE                          VAL R12
      348 CAPTURE                          REF R40
      349 MOVE                             R53 R19
      350 DUPTABLE                         R54 K75 [{"Stylizer", "Localization"}]
      351 GETTABLEKS                       R55 R18 K73 ["Stylizer"]
      353 SETTABLEKS                       R55 R54 K73 ["Stylizer"]
      355 GETTABLEKS                       R55 R18 K74 ["Localization"]
      357 SETTABLEKS                       R55 R54 K74 ["Localization"]
      359 CALL                             R53 1 1
      360 MOVE                             R54 R48
      361 CALL                             R53 1 1
      362 MOVE                             R48 R53
      363 GETTABLEKS                       R53 R9 K76 ["connect"]
      365 MOVE                             R54 R51
      366 MOVE                             R55 R52
      367 CALL                             R53 2 1
      368 MOVE                             R54 R48
      369 CALL                             R53 1 -1
      370 CLOSEUPVALS                      R40
      371 RETURN                           R53 -1
