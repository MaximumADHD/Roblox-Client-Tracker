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
        1 DUPTABLE                         R2 K1 [{"showWarning"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showWarning"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R2 K2 [{"isLoading", "showWarning"}]
        1 LOADB                            R3 1
        2 SETTABLEKS                       R3 R2 K0 ["isLoading"]
        4 GETUPVAL                         R4 0
        5 CALL                             R4 0 1
        6 JUMPIFNOT                        R4 ; [+2]
        7 LOADB                            R3 0
        8 JUMP                             ; [+1]
        9 LOADNIL                          R3
       10 SETTABLEKS                       R3 R2 K1 ["showWarning"]
       12 SETTABLEKS                       R2 R0 K3 ["state"]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U1
       17 SETTABLEKS                       R2 R0 K4 ["goToNextScreen"]
       19 NEWCLOSURE                       R2 P1
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R2 R0 K5 ["onClose"]
       23 GETUPVAL                         R2 2
       24 JUMPIFNOT                        R2 ; [+6]
       25 DUPCLOSURE                       R2 K6 [PROTO_2]
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 SETTABLEKS                       R2 R0 K7 ["openCreatorDashboard"]
       30 JUMP                             ; [+5]
       31 DUPCLOSURE                       R2 K8 [PROTO_3]
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U4
       34 SETTABLEKS                       R2 R0 K7 ["openCreatorDashboard"]
       36 DUPCLOSURE                       R2 K9 [PROTO_4]
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U4
       39 SETTABLEKS                       R2 R0 K10 ["openCreatorDashboardCreationsPage"]
       41 GETUPVAL                         R2 5
       42 JUMPIFNOT                        R2 ; [+5]
       43 DUPCLOSURE                       R2 K11 [PROTO_5]
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U4
       46 SETTABLEKS                       R2 R0 K12 ["openCreatorDashboardBundle"]
       48 GETUPVAL                         R2 0
       49 CALL                             R2 0 1
       50 JUMPIFNOT                        R2 ; [+4]
       51 NEWCLOSURE                       R2 P6
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R2 R0 K13 ["onWarningDialogClose"]
       55 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+21]
        3 GETTABLEKS                       R1 R0 K0 ["props"]
        5 GETTABLEKS                       R1 R1 K1 ["uploadSucceeded"]
        7 JUMPIFNOT                        R1 ; [+16]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K2 ["hasNonEmptyDependencyIssues"]
       11 GETTABLEKS                       R2 R0 K0 ["props"]
       13 GETTABLEKS                       R2 R2 K3 ["nonBlockingDependencyIssues"]
       15 CALL                             R1 1 1
       16 JUMPIFNOT                        R1 ; [+7]
       17 DUPTABLE                         R3 K5 [{"showWarning"}]
       18 LOADB                            R4 1
       19 SETTABLEKS                       R4 R3 K4 ["showWarning"]
       21 NAMECALL                         R1 R0 K6 ["setState"]
       23 CALL                             R1 2 0
       24 GETUPVAL                         R1 2
       25 CALL                             R1 0 1
       26 JUMPIFNOT                        R1 ; [+45]
       27 GETTABLEKS                       R1 R0 K0 ["props"]
       29 GETTABLEKS                       R1 R1 K1 ["uploadSucceeded"]
       31 JUMPIFNOT                        R1 ; [+40]
       32 GETTABLEKS                       R1 R0 K0 ["props"]
       34 GETTABLEKS                       R2 R1 K7 ["animationPackType"]
       36 JUMPIFNOT                        R2 ; [+35]
       37 GETTABLEKS                       R3 R1 K8 ["assetId"]
       39 JUMPIFNOT                        R3 ; [+32]
       40 GETTABLEKS                       R3 R1 K9 ["animationSectionValid"]
       42 JUMPIFEQKB                       R3 FALSE ; [+29]
       44 JUMPIFNOTEQKS                    R2 K10 ["EmoteAnimation"] ; [+11]
       46 GETUPVAL                         R3 3
       47 GETTABLEKS                       R3 R3 K11 ["createEmoteAnimationInstanceInWorkspace"]
       49 GETTABLEKS                       R5 R1 K12 ["assetName"]
       51 OR                               R4 R5 R2
       52 GETTABLEKS                       R5 R1 K8 ["assetId"]
       54 CALL                             R3 2 0
       55 RETURN                           R0 0
       56 GETTABLEKS                       R3 R1 K13 ["animationPackSubName"]
       58 JUMPIFNOT                        R3 ; [+13]
       59 GETUPVAL                         R3 3
       60 GETTABLEKS                       R3 R3 K14 ["createAnimationInstanceInWorkspace"]
       62 MOVE                             R4 R2
       63 GETTABLEKS                       R5 R1 K13 ["animationPackSubName"]
       65 GETTABLEKS                       R6 R1 K8 ["assetId"]
       67 GETTABLEKS                       R7 R1 K15 ["animationPackWeight"]
       69 GETTABLEKS                       R8 R1 K16 ["animationPackParentModelName"]
       71 CALL                             R3 5 0
       72 RETURN                           R0 0

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
      205 DUPTABLE                         R28 K46 [{"AutomaticSize", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
      206 GETIMPORT                        R29 K48 [Enum.AutomaticSize.Y]
      208 SETTABLEKS                       R29 R28 K41 ["AutomaticSize"]
      210 GETTABLEKS                       R29 R2 K49 ["uploadResult"]
      212 GETTABLEKS                       R29 R29 K50 ["background"]
      214 SETTABLEKS                       R29 R28 K42 ["BackgroundColor3"]
      216 LOADN                            R29 0
      217 SETTABLEKS                       R29 R28 K43 ["BackgroundTransparency"]
      219 LOADN                            R29 0
      220 SETTABLEKS                       R29 R28 K44 ["BorderSizePixel"]
      222 GETTABLEKS                       R29 R1 K45 ["Size"]
      224 SETTABLEKS                       R29 R28 K45 ["Size"]
      226 DUPTABLE                         R29 K57 [{"ModelPreview", "ThumbnailPreview", "CopyID", "LoadingResultSuccess", "LoadingResultFailure", "DependencyWarningDialog", "Footer"}]
      227 MOVE                             R30 R8
      228 JUMPIFNOT                        R30 ; [+43]
      229 GETUPVAL                         R30 10
      230 GETTABLEKS                       R30 R30 K39 ["createElement"]
      232 GETUPVAL                         R31 11
      233 DUPTABLE                         R32 K63 [{"title", "titleHeight", "titlePadding", "Position", "Size", "AssetType", "UploadSucceeded"}]
      234 GETTABLEKS                       R34 R1 K65 ["assetName"]
      236 ORK                              R33 R34 K64 []
      237 SETTABLEKS                       R33 R32 K58 ["title"]
      239 LOADN                            R33 24
      240 SETTABLEKS                       R33 R32 K59 ["titleHeight"]
      242 LOADN                            R33 12
      243 SETTABLEKS                       R33 R32 K60 ["titlePadding"]
      245 GETIMPORT                        R33 K67 [UDim2.new]
      247 LOADK                            R34 K68 [0.5]
      248 LOADN                            R35 181
      249 LOADN                            R36 0
      250 LOADN                            R37 48
      251 CALL                             R33 4 1
      252 SETTABLEKS                       R33 R32 K61 ["Position"]
      254 GETIMPORT                        R33 K67 [UDim2.new]
      256 LOADN                            R34 0
      257 LOADN                            R35 150
      258 LOADN                            R36 0
      259 MOVE                             R37 R25
      260 CALL                             R33 4 1
      261 SETTABLEKS                       R33 R32 K45 ["Size"]
      263 GETTABLEKS                       R33 R1 K7 ["assetTypeEnum"]
      265 SETTABLEKS                       R33 R32 K36 ["AssetType"]
      267 GETTABLEKS                       R33 R1 K21 ["uploadSucceeded"]
      269 SETTABLEKS                       R33 R32 K62 ["UploadSucceeded"]
      271 CALL                             R30 2 1
      272 SETTABLEKS                       R30 R29 K12 ["ModelPreview"]
      274 MOVE                             R30 R9
      275 JUMPIFNOT                        R30 ; [+56]
      276 GETUPVAL                         R30 10
      277 GETTABLEKS                       R30 R30 K39 ["createElement"]
      279 LOADK                            R31 K69 ["ImageLabel"]
      280 DUPTABLE                         R32 K72 [{"Position", "Size", "Image", "ScaleType", "BackgroundTransparency", "BorderSizePixel"}]
      281 GETIMPORT                        R33 K67 [UDim2.new]
      283 LOADK                            R34 K68 [0.5]
      284 LOADN                            R35 181
      285 LOADN                            R36 0
      286 LOADN                            R37 48
      287 CALL                             R33 4 1
      288 SETTABLEKS                       R33 R32 K61 ["Position"]
      290 GETIMPORT                        R33 K67 [UDim2.new]
      292 LOADN                            R34 0
      293 LOADN                            R35 150
      294 LOADN                            R36 0
      295 LOADN                            R37 150
      296 CALL                             R33 4 1
      297 SETTABLEKS                       R33 R32 K45 ["Size"]
      299 GETUPVAL                         R34 2
      300 CALL                             R34 0 1
      301 JUMPIFNOT                        R34 ; [+2]
      302 MOVE                             R33 R7
      303 JUMPIF                           R33 ; [+8]
      304 GETUPVAL                         R33 1
      305 GETTABLEKS                       R33 R33 K73 ["getResultThumbnail"]
      307 GETTABLEKS                       R34 R1 K26 ["assetId"]
      309 GETTABLEKS                       R35 R1 K74 ["iconFile"]
      311 CALL                             R33 2 1
      312 SETTABLEKS                       R33 R32 K70 ["Image"]
      314 GETUPVAL                         R34 2
      315 CALL                             R34 0 1
      316 JUMPIFNOT                        R34 ; [+5]
      317 JUMPIFEQKNIL                     R7 ; [+4]
      319 GETIMPORT                        R33 K76 [Enum.ScaleType.Fit]
      321 JUMP                             ; [+1]
      322 LOADNIL                          R33
      323 SETTABLEKS                       R33 R32 K71 ["ScaleType"]
      325 LOADN                            R33 1
      326 SETTABLEKS                       R33 R32 K43 ["BackgroundTransparency"]
      328 LOADN                            R33 0
      329 SETTABLEKS                       R33 R32 K44 ["BorderSizePixel"]
      331 CALL                             R30 2 1
      332 SETTABLEKS                       R30 R29 K51 ["ThumbnailPreview"]
      334 MOVE                             R30 R11
      335 JUMPIFNOT                        R30 ; [+13]
      336 GETUPVAL                         R30 10
      337 GETTABLEKS                       R30 R30 K39 ["createElement"]
      339 GETUPVAL                         R31 12
      340 DUPTABLE                         R32 K79 [{"YPos", "AssetId"}]
      341 LOADN                            R33 240
      342 SETTABLEKS                       R33 R32 K77 ["YPos"]
      344 GETTABLEKS                       R33 R1 K26 ["assetId"]
      346 SETTABLEKS                       R33 R32 K78 ["AssetId"]
      348 CALL                             R30 2 1
      349 SETTABLEKS                       R30 R29 K52 ["CopyID"]
      351 GETUPVAL                         R31 13
      352 CALL                             R31 0 1
      353 JUMPIFNOT                        R31 ; [+56]
      354 MOVE                             R30 R11
      355 JUMPIFNOT                        R30 ; [+638]
      356 GETUPVAL                         R30 14
      357 GETTABLEKS                       R30 R30 K39 ["createElement"]
      359 GETUPVAL                         R31 15
      360 DUPTABLE                         R32 K87 [{"displayCreatorDashboardMessage", "onDashboardLinkClicked", "Text", "showCreatorStoreConfigurationLink", "showModeration", "creatorStoreConfigurationUrl", "url", "Localization", "Stylizer"}]
      361 SETTABLEKS                       R19 R32 K80 ["displayCreatorDashboardMessage"]
      363 GETUPVAL                         R34 1
      364 GETTABLEKS                       R34 R34 K24 ["isUGCBundleType"]
      366 GETTABLEKS                       R35 R1 K7 ["assetTypeEnum"]
      368 CALL                             R34 1 1
      369 JUMPIFNOT                        R34 ; [+4]
      370 NEWCLOSURE                       R33 P0
      371 CAPTURE                          VAL R0
      372 CAPTURE                          VAL R1
      373 JUMP                             ; [+3]
      374 NEWCLOSURE                       R33 P1
      375 CAPTURE                          VAL R0
      376 CAPTURE                          VAL R1
      377 SETTABLEKS                       R33 R32 K81 ["onDashboardLinkClicked"]
      379 GETTABLEKS                       R33 R1 K30 ["Localization"]
      381 LOADK                            R35 K31 ["AssetUploadResult"]
      382 LOADK                            R36 K88 ["CreatorDashboardMessage"]
      383 DUPTABLE                         R37 K90 [{"creatorDashboardLink"}]
      384 GETUPVAL                         R38 5
      385 GETTABLEKS                       R38 R38 K91 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      387 SETTABLEKS                       R38 R37 K89 ["creatorDashboardLink"]
      389 NAMECALL                         R33 R33 K33 ["getText"]
      391 CALL                             R33 4 1
      392 SETTABLEKS                       R33 R32 K82 ["Text"]
      394 SETTABLEKS                       R22 R32 K83 ["showCreatorStoreConfigurationLink"]
      396 SETTABLEKS                       R5 R32 K84 ["showModeration"]
      398 SETTABLEKS                       R21 R32 K85 ["creatorStoreConfigurationUrl"]
      400 SETTABLEKS                       R20 R32 K86 ["url"]
      402 GETTABLEKS                       R33 R1 K30 ["Localization"]
      404 SETTABLEKS                       R33 R32 K30 ["Localization"]
      406 SETTABLEKS                       R2 R32 K1 ["Stylizer"]
      408 CALL                             R30 2 1
      409 JUMP                             ; [+584]
      410 MOVE                             R30 R11
      411 JUMPIFNOT                        R30 ; [+582]
      412 GETUPVAL                         R30 10
      413 GETTABLEKS                       R30 R30 K39 ["createElement"]
      415 LOADK                            R31 K40 ["Frame"]
      416 DUPTABLE                         R32 K92 [{"Position", "Size", "BackgroundTransparency"}]
      417 GETIMPORT                        R33 K67 [UDim2.new]
      419 LOADN                            R34 0
      420 LOADN                            R35 0
      421 LOADN                            R36 0
      422 LOADN                            R37 23
      423 CALL                             R33 4 1
      424 SETTABLEKS                       R33 R32 K61 ["Position"]
      426 GETIMPORT                        R33 K67 [UDim2.new]
      428 LOADN                            R34 1
      429 LOADN                            R35 0
      430 LOADN                            R36 1
      431 LOADN                            R37 233
      432 CALL                             R33 4 1
      433 SETTABLEKS                       R33 R32 K45 ["Size"]
      435 LOADN                            R33 1
      436 SETTABLEKS                       R33 R32 K43 ["BackgroundTransparency"]
      438 DUPTABLE                         R33 K97 [{"UIListLayout", "Title", "ReasonFrame", "Rows"}]
      439 GETUPVAL                         R34 10
      440 GETTABLEKS                       R34 R34 K39 ["createElement"]
      442 LOADK                            R35 K93 ["UIListLayout"]
      443 DUPTABLE                         R36 K103 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      444 GETIMPORT                        R37 K105 [Enum.FillDirection.Vertical]
      446 SETTABLEKS                       R37 R36 K98 ["FillDirection"]
      448 GETIMPORT                        R37 K107 [Enum.HorizontalAlignment.Center]
      450 SETTABLEKS                       R37 R36 K99 ["HorizontalAlignment"]
      452 GETIMPORT                        R37 K109 [Enum.VerticalAlignment.Top]
      454 SETTABLEKS                       R37 R36 K100 ["VerticalAlignment"]
      456 GETIMPORT                        R37 K111 [Enum.SortOrder.LayoutOrder]
      458 SETTABLEKS                       R37 R36 K101 ["SortOrder"]
      460 GETIMPORT                        R37 K113 [UDim.new]
      462 LOADN                            R38 0
      463 LOADN                            R39 5
      464 CALL                             R37 2 1
      465 SETTABLEKS                       R37 R36 K102 ["Padding"]
      467 CALL                             R34 2 1
      468 SETTABLEKS                       R34 R33 K93 ["UIListLayout"]
      470 GETUPVAL                         R34 10
      471 GETTABLEKS                       R34 R34 K39 ["createElement"]
      473 LOADK                            R35 K114 ["TextLabel"]
      474 DUPTABLE                         R36 K120 [{"BackgroundTransparency", "Position", "Size", "Text", "Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment", "LayoutOrder"}]
      475 LOADN                            R37 1
      476 SETTABLEKS                       R37 R36 K43 ["BackgroundTransparency"]
      478 GETIMPORT                        R37 K67 [UDim2.new]
      480 LOADK                            R38 K68 [0.5]
      481 LOADN                            R39 56
      482 LOADN                            R40 0
      483 LOADN                            R41 0
      484 CALL                             R37 4 1
      485 SETTABLEKS                       R37 R36 K61 ["Position"]
      487 GETIMPORT                        R37 K67 [UDim2.new]
      489 LOADN                            R38 0
      490 LOADN                            R39 144
      491 LOADN                            R40 0
      492 LOADN                            R41 36
      493 CALL                             R37 4 1
      494 SETTABLEKS                       R37 R36 K45 ["Size"]
      496 GETUPVAL                         R38 9
      497 CALL                             R38 0 1
      498 JUMPIFNOT                        R38 ; [+2]
      499 MOVE                             R37 R24
      500 JUMP                             ; [+6]
      501 GETTABLEKS                       R38 R1 K21 ["uploadSucceeded"]
      503 JUMPIFNOT                        R38 ; [+2]
      504 LOADK                            R37 K121 ["Successfully submitted!"]
      505 JUMP                             ; [+1]
      506 LOADK                            R37 K122 ["Submission failed"]
      507 SETTABLEKS                       R37 R36 K82 ["Text"]
      509 GETUPVAL                         R37 5
      510 GETTABLEKS                       R37 R37 K123 ["FONT"]
      512 SETTABLEKS                       R37 R36 K115 ["Font"]
      514 GETTABLEKS                       R37 R2 K49 ["uploadResult"]
      516 GETTABLEKS                       R37 R37 K124 ["greenText"]
      518 SETTABLEKS                       R37 R36 K116 ["TextColor3"]
      520 GETUPVAL                         R37 5
      521 GETTABLEKS                       R37 R37 K125 ["FONT_SIZE_TITLE"]
      523 SETTABLEKS                       R37 R36 K117 ["TextSize"]
      525 GETIMPORT                        R37 K126 [Enum.TextXAlignment.Center]
      527 SETTABLEKS                       R37 R36 K118 ["TextXAlignment"]
      529 GETIMPORT                        R37 K127 [Enum.TextYAlignment.Center]
      531 SETTABLEKS                       R37 R36 K119 ["TextYAlignment"]
      533 LOADN                            R37 1
      534 SETTABLEKS                       R37 R36 K110 ["LayoutOrder"]
      536 CALL                             R34 2 1
      537 SETTABLEKS                       R34 R33 K94 ["Title"]
      539 LOADB                            R34 0
      540 SETTABLEKS                       R34 R33 K95 ["ReasonFrame"]
      542 GETUPVAL                         R34 10
      543 GETTABLEKS                       R34 R34 K39 ["createElement"]
      545 LOADK                            R35 K40 ["Frame"]
      546 DUPTABLE                         R36 K128 [{"BackgroundTransparency", "Size", "Position", "LayoutOrder"}]
      547 LOADN                            R37 1
      548 SETTABLEKS                       R37 R36 K43 ["BackgroundTransparency"]
      550 GETIMPORT                        R37 K67 [UDim2.new]
      552 LOADN                            R38 0
      553 LOADN                            R39 144
      554 LOADN                            R40 0
      555 LOADN                            R41 72
      556 CALL                             R37 4 1
      557 SETTABLEKS                       R37 R36 K45 ["Size"]
      559 GETIMPORT                        R37 K67 [UDim2.new]
      561 LOADK                            R38 K68 [0.5]
      562 LOADN                            R39 56
      563 LOADN                            R40 0
      564 LOADN                            R41 49
      565 CALL                             R37 4 1
      566 SETTABLEKS                       R37 R36 K61 ["Position"]
      568 LOADN                            R37 3
      569 SETTABLEKS                       R37 R36 K110 ["LayoutOrder"]
      571 DUPTABLE                         R37 K135 [{"UIListLayout", "ModerationMessage", "CreatorStoreConfigurationText", "CreatorStoreConfigurationLink", "ToolboxText", "ToolboxLink", "CreatorDashboardMsg"}]
      572 GETUPVAL                         R38 10
      573 GETTABLEKS                       R38 R38 K39 ["createElement"]
      575 LOADK                            R39 K93 ["UIListLayout"]
      576 DUPTABLE                         R40 K136 [{"Padding", "SortOrder"}]
      577 GETIMPORT                        R41 K113 [UDim.new]
      579 LOADN                            R42 0
      580 LOADN                            R43 12
      581 CALL                             R41 2 1
      582 SETTABLEKS                       R41 R40 K102 ["Padding"]
      584 GETIMPORT                        R41 K111 [Enum.SortOrder.LayoutOrder]
      586 SETTABLEKS                       R41 R40 K101 ["SortOrder"]
      588 CALL                             R38 2 1
      589 SETTABLEKS                       R38 R37 K93 ["UIListLayout"]
      591 MOVE                             R38 R5
      592 JUMPIFNOT                        R38 ; [+55]
      593 GETUPVAL                         R38 10
      594 GETTABLEKS                       R38 R38 K39 ["createElement"]
      596 LOADK                            R39 K114 ["TextLabel"]
      597 DUPTABLE                         R40 K137 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "LayoutOrder"}]
      598 LOADN                            R41 1
      599 SETTABLEKS                       R41 R40 K43 ["BackgroundTransparency"]
      601 GETUPVAL                         R41 5
      602 GETTABLEKS                       R41 R41 K123 ["FONT"]
      604 SETTABLEKS                       R41 R40 K115 ["Font"]
      606 GETUPVAL                         R42 9
      607 CALL                             R42 0 1
      608 JUMPIFNOT                        R42 ; [+8]
      609 GETTABLEKS                       R41 R1 K30 ["Localization"]
      611 LOADK                            R43 K31 ["AssetUploadResult"]
      612 LOADK                            R44 K138 ["AddedToModerationQueueMessage"]
      613 NAMECALL                         R41 R41 K33 ["getText"]
      615 CALL                             R41 3 1
      616 JUMP                             ; [+1]
      617 LOADK                            R41 K139 ["Asset has been added to moderation queue."]
      618 SETTABLEKS                       R41 R40 K82 ["Text"]
      620 GETTABLEKS                       R41 R2 K49 ["uploadResult"]
      622 GETTABLEKS                       R41 R41 K140 ["text"]
      624 SETTABLEKS                       R41 R40 K116 ["TextColor3"]
      626 GETUPVAL                         R41 5
      627 GETTABLEKS                       R41 R41 K23 ["FONT_SIZE_MEDIUM"]
      629 SETTABLEKS                       R41 R40 K117 ["TextSize"]
      631 GETIMPORT                        R41 K67 [UDim2.new]
      633 LOADN                            R42 1
      634 LOADN                            R43 0
      635 LOADN                            R44 0
      636 LOADN                            R45 24
      637 CALL                             R41 4 1
      638 SETTABLEKS                       R41 R40 K45 ["Size"]
      640 GETIMPORT                        R41 K127 [Enum.TextYAlignment.Center]
      642 SETTABLEKS                       R41 R40 K119 ["TextYAlignment"]
      644 LOADN                            R41 0
      645 SETTABLEKS                       R41 R40 K110 ["LayoutOrder"]
      647 CALL                             R38 2 1
      648 SETTABLEKS                       R38 R37 K129 ["ModerationMessage"]
      650 JUMPIFNOT                        R22 ; [+51]
      651 GETUPVAL                         R38 10
      652 GETTABLEKS                       R38 R38 K39 ["createElement"]
      654 LOADK                            R39 K114 ["TextLabel"]
      655 DUPTABLE                         R40 K137 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "LayoutOrder"}]
      656 LOADN                            R41 1
      657 SETTABLEKS                       R41 R40 K43 ["BackgroundTransparency"]
      659 GETUPVAL                         R41 5
      660 GETTABLEKS                       R41 R41 K123 ["FONT"]
      662 SETTABLEKS                       R41 R40 K115 ["Font"]
      664 GETTABLEKS                       R41 R1 K30 ["Localization"]
      666 LOADK                            R43 K31 ["AssetUploadResult"]
      667 LOADK                            R44 K141 ["CreatorStoreConfigurationMessage"]
      668 NAMECALL                         R41 R41 K33 ["getText"]
      670 CALL                             R41 3 1
      671 SETTABLEKS                       R41 R40 K82 ["Text"]
      673 GETTABLEKS                       R41 R2 K49 ["uploadResult"]
      675 GETTABLEKS                       R41 R41 K140 ["text"]
      677 SETTABLEKS                       R41 R40 K116 ["TextColor3"]
      679 GETUPVAL                         R41 5
      680 GETTABLEKS                       R41 R41 K23 ["FONT_SIZE_MEDIUM"]
      682 SETTABLEKS                       R41 R40 K117 ["TextSize"]
      684 GETIMPORT                        R41 K67 [UDim2.new]
      686 LOADN                            R42 1
      687 LOADN                            R43 0
      688 LOADN                            R44 0
      689 LOADN                            R45 24
      690 CALL                             R41 4 1
      691 SETTABLEKS                       R41 R40 K45 ["Size"]
      693 GETIMPORT                        R41 K127 [Enum.TextYAlignment.Center]
      695 SETTABLEKS                       R41 R40 K119 ["TextYAlignment"]
      697 LOADN                            R41 1
      698 SETTABLEKS                       R41 R40 K110 ["LayoutOrder"]
      700 CALL                             R38 2 1
      701 JUMP                             ; [+1]
      702 LOADNIL                          R38
      703 SETTABLEKS                       R38 R37 K130 ["CreatorStoreConfigurationText"]
      705 JUMPIFNOT                        R22 ; [+54]
      706 GETUPVAL                         R38 10
      707 GETTABLEKS                       R38 R38 K39 ["createElement"]
      709 LOADK                            R39 K142 ["TextButton"]
      710 NEWTABLE                         R40 16 0
      712 LOADN                            R41 1
      713 SETTABLEKS                       R41 R40 K43 ["BackgroundTransparency"]
      715 GETUPVAL                         R41 5
      716 GETTABLEKS                       R41 R41 K123 ["FONT"]
      718 SETTABLEKS                       R41 R40 K115 ["Font"]
      720 SETTABLEKS                       R21 R40 K82 ["Text"]
      722 GETTABLEKS                       R41 R2 K49 ["uploadResult"]
      724 GETTABLEKS                       R41 R41 K143 ["link"]
      726 SETTABLEKS                       R41 R40 K116 ["TextColor3"]
      728 GETUPVAL                         R41 5
      729 GETTABLEKS                       R41 R41 K23 ["FONT_SIZE_MEDIUM"]
      731 SETTABLEKS                       R41 R40 K117 ["TextSize"]
      733 GETIMPORT                        R41 K67 [UDim2.new]
      735 LOADN                            R42 1
      736 LOADN                            R43 0
      737 LOADN                            R44 0
      738 LOADN                            R45 24
      739 CALL                             R41 4 1
      740 SETTABLEKS                       R41 R40 K45 ["Size"]
      742 GETIMPORT                        R41 K127 [Enum.TextYAlignment.Center]
      744 SETTABLEKS                       R41 R40 K119 ["TextYAlignment"]
      746 LOADN                            R41 2
      747 SETTABLEKS                       R41 R40 K110 ["LayoutOrder"]
      749 GETUPVAL                         R41 10
      750 GETTABLEKS                       R41 R41 K144 ["Event"]
      752 GETTABLEKS                       R41 R41 K145 ["Activated"]
      754 NEWCLOSURE                       R42 P2
      755 CAPTURE                          UPVAL U16
      756 CAPTURE                          VAL R21
      757 SETTABLE                         R42 R40 R41
      758 CALL                             R38 2 1
      759 JUMP                             ; [+1]
      760 LOADNIL                          R38
      761 SETTABLEKS                       R38 R37 K131 ["CreatorStoreConfigurationLink"]
      763 JUMPIF                           R19 ; [+56]
      764 GETUPVAL                         R38 10
      765 GETTABLEKS                       R38 R38 K39 ["createElement"]
      767 LOADK                            R39 K114 ["TextLabel"]
      768 DUPTABLE                         R40 K137 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "LayoutOrder"}]
      769 LOADN                            R41 1
      770 SETTABLEKS                       R41 R40 K43 ["BackgroundTransparency"]
      772 GETUPVAL                         R41 5
      773 GETTABLEKS                       R41 R41 K123 ["FONT"]
      775 SETTABLEKS                       R41 R40 K115 ["Font"]
      777 GETUPVAL                         R42 9
      778 CALL                             R42 0 1
      779 JUMPIFNOT                        R42 ; [+8]
      780 GETTABLEKS                       R41 R1 K30 ["Localization"]
      782 LOADK                            R43 K31 ["AssetUploadResult"]
      783 LOADK                            R44 K146 ["WebsiteUrlNoticeMessage"]
      784 NAMECALL                         R41 R41 K33 ["getText"]
      786 CALL                             R41 3 1
      787 JUMP                             ; [+1]
      788 LOADK                            R41 K147 ["You may find your asset in Toolbox or on web:"]
      789 SETTABLEKS                       R41 R40 K82 ["Text"]
      791 GETTABLEKS                       R41 R2 K49 ["uploadResult"]
      793 GETTABLEKS                       R41 R41 K140 ["text"]
      795 SETTABLEKS                       R41 R40 K116 ["TextColor3"]
      797 GETUPVAL                         R41 5
      798 GETTABLEKS                       R41 R41 K23 ["FONT_SIZE_MEDIUM"]
      800 SETTABLEKS                       R41 R40 K117 ["TextSize"]
      802 GETIMPORT                        R41 K67 [UDim2.new]
      804 LOADN                            R42 1
      805 LOADN                            R43 0
      806 LOADN                            R44 0
      807 LOADN                            R45 24
      808 CALL                             R41 4 1
      809 SETTABLEKS                       R41 R40 K45 ["Size"]
      811 GETIMPORT                        R41 K127 [Enum.TextYAlignment.Center]
      813 SETTABLEKS                       R41 R40 K119 ["TextYAlignment"]
      815 LOADN                            R41 3
      816 SETTABLEKS                       R41 R40 K110 ["LayoutOrder"]
      818 CALL                             R38 2 1
      819 JUMP                             ; [+1]
      820 LOADNIL                          R38
      821 SETTABLEKS                       R38 R37 K132 ["ToolboxText"]
      823 JUMPIF                           R19 ; [+54]
      824 GETUPVAL                         R38 10
      825 GETTABLEKS                       R38 R38 K39 ["createElement"]
      827 LOADK                            R39 K142 ["TextButton"]
      828 NEWTABLE                         R40 16 0
      830 LOADN                            R41 1
      831 SETTABLEKS                       R41 R40 K43 ["BackgroundTransparency"]
      833 GETUPVAL                         R41 5
      834 GETTABLEKS                       R41 R41 K123 ["FONT"]
      836 SETTABLEKS                       R41 R40 K115 ["Font"]
      838 SETTABLEKS                       R20 R40 K82 ["Text"]
      840 GETTABLEKS                       R41 R2 K49 ["uploadResult"]
      842 GETTABLEKS                       R41 R41 K143 ["link"]
      844 SETTABLEKS                       R41 R40 K116 ["TextColor3"]
      846 GETUPVAL                         R41 5
      847 GETTABLEKS                       R41 R41 K23 ["FONT_SIZE_MEDIUM"]
      849 SETTABLEKS                       R41 R40 K117 ["TextSize"]
      851 GETIMPORT                        R41 K67 [UDim2.new]
      853 LOADN                            R42 1
      854 LOADN                            R43 0
      855 LOADN                            R44 0
      856 LOADN                            R45 24
      857 CALL                             R41 4 1
      858 SETTABLEKS                       R41 R40 K45 ["Size"]
      860 GETIMPORT                        R41 K127 [Enum.TextYAlignment.Center]
      862 SETTABLEKS                       R41 R40 K119 ["TextYAlignment"]
      864 LOADN                            R41 4
      865 SETTABLEKS                       R41 R40 K110 ["LayoutOrder"]
      867 GETUPVAL                         R41 10
      868 GETTABLEKS                       R41 R41 K144 ["Event"]
      870 GETTABLEKS                       R41 R41 K145 ["Activated"]
      872 NEWCLOSURE                       R42 P3
      873 CAPTURE                          UPVAL U16
      874 CAPTURE                          REF R20
      875 SETTABLE                         R42 R40 R41
      876 CALL                             R38 2 1
      877 JUMP                             ; [+1]
      878 LOADNIL                          R38
      879 SETTABLEKS                       R38 R37 K133 ["ToolboxLink"]
      881 JUMPIFNOT                        R19 ; [+105]
      882 GETUPVAL                         R38 10
      883 GETTABLEKS                       R38 R38 K39 ["createElement"]
      885 GETUPVAL                         R39 17
      886 DUPTABLE                         R40 K153 [{"OnLinkClicked", "Text", "LinkText", "LinkPlaceholder", "AutomaticSize", "TextXAlignment", "HorizontalAlignment", "MaxWidth", "TextProps", "LayoutOrder"}]
      887 GETIMPORT                        R42 K155 [game]
      889 LOADK                            R44 K156 ["UpdateAssetUploadResultBundleConfigureLink2"]
      890 NAMECALL                         R42 R42 K157 ["GetFastFlag"]
      892 CALL                             R42 2 1
      893 JUMPIFNOT                        R42 ; [+11]
      894 GETUPVAL                         R42 1
      895 GETTABLEKS                       R42 R42 K24 ["isUGCBundleType"]
      897 GETTABLEKS                       R43 R1 K7 ["assetTypeEnum"]
      899 CALL                             R42 1 1
      900 JUMPIFNOT                        R42 ; [+4]
      901 NEWCLOSURE                       R41 P4
      902 CAPTURE                          VAL R0
      903 CAPTURE                          VAL R1
      904 JUMP                             ; [+8]
      905 GETUPVAL                         R42 18
      906 JUMPIFNOT                        R42 ; [+4]
      907 NEWCLOSURE                       R41 P5
      908 CAPTURE                          VAL R0
      909 CAPTURE                          VAL R1
      910 JUMP                             ; [+2]
      911 GETTABLEKS                       R41 R0 K158 ["openCreatorDashboard"]
      913 SETTABLEKS                       R41 R40 K148 ["OnLinkClicked"]
      915 GETTABLEKS                       R41 R1 K30 ["Localization"]
      917 LOADK                            R43 K31 ["AssetUploadResult"]
      918 LOADK                            R44 K88 ["CreatorDashboardMessage"]
      919 DUPTABLE                         R45 K90 [{"creatorDashboardLink"}]
      920 GETUPVAL                         R46 5
      921 GETTABLEKS                       R46 R46 K91 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      923 SETTABLEKS                       R46 R45 K89 ["creatorDashboardLink"]
      925 NAMECALL                         R41 R41 K33 ["getText"]
      927 CALL                             R41 4 1
      928 SETTABLEKS                       R41 R40 K82 ["Text"]
      930 GETTABLEKS                       R41 R1 K30 ["Localization"]
      932 LOADK                            R43 K159 ["General"]
      933 LOADK                            R44 K160 ["CreatorDashboard"]
      934 NAMECALL                         R41 R41 K33 ["getText"]
      936 CALL                             R41 3 1
      937 SETTABLEKS                       R41 R40 K149 ["LinkText"]
      939 GETUPVAL                         R41 5
      940 GETTABLEKS                       R41 R41 K91 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      942 SETTABLEKS                       R41 R40 K150 ["LinkPlaceholder"]
      944 GETIMPORT                        R41 K48 [Enum.AutomaticSize.Y]
      946 SETTABLEKS                       R41 R40 K41 ["AutomaticSize"]
      948 GETIMPORT                        R41 K126 [Enum.TextXAlignment.Center]
      950 SETTABLEKS                       R41 R40 K118 ["TextXAlignment"]
      952 GETIMPORT                        R41 K107 [Enum.HorizontalAlignment.Center]
      954 SETTABLEKS                       R41 R40 K99 ["HorizontalAlignment"]
      956 LOADN                            R41 144
      957 SETTABLEKS                       R41 R40 K151 ["MaxWidth"]
      959 DUPTABLE                         R41 K161 [{"Font", "TextColor3", "TextSize", "TextXAlignment"}]
      960 GETUPVAL                         R42 5
      961 GETTABLEKS                       R42 R42 K123 ["FONT"]
      963 SETTABLEKS                       R42 R41 K115 ["Font"]
      965 GETTABLEKS                       R42 R2 K49 ["uploadResult"]
      967 GETTABLEKS                       R42 R42 K140 ["text"]
      969 SETTABLEKS                       R42 R41 K116 ["TextColor3"]
      971 GETUPVAL                         R42 5
      972 GETTABLEKS                       R42 R42 K125 ["FONT_SIZE_TITLE"]
      974 SETTABLEKS                       R42 R41 K117 ["TextSize"]
      976 GETIMPORT                        R42 K126 [Enum.TextXAlignment.Center]
      978 SETTABLEKS                       R42 R41 K118 ["TextXAlignment"]
      980 SETTABLEKS                       R41 R40 K152 ["TextProps"]
      982 LOADN                            R41 5
      983 SETTABLEKS                       R41 R40 K110 ["LayoutOrder"]
      985 CALL                             R38 2 1
      986 JUMP                             ; [+1]
      987 LOADNIL                          R38
      988 SETTABLEKS                       R38 R37 K134 ["CreatorDashboardMsg"]
      990 CALL                             R34 3 1
      991 SETTABLEKS                       R34 R33 K96 ["Rows"]
      993 CALL                             R30 3 1
      994 SETTABLEKS                       R30 R29 K53 ["LoadingResultSuccess"]
      996 GETUPVAL                         R31 13
      997 CALL                             R31 0 1
      998 JUMPIFNOT                        R31 ; [+21]
      999 MOVE                             R30 R12
     1000 JUMPIFNOT                        R30 ; [+260]
     1001 GETUPVAL                         R30 14
     1002 GETTABLEKS                       R30 R30 K39 ["createElement"]
     1004 GETUPVAL                         R31 19
     1005 DUPTABLE                         R32 K162 [{"Localization", "Stylizer", "networkError", "onDashboardLinkClicked"}]
     1006 GETTABLEKS                       R33 R1 K30 ["Localization"]
     1008 SETTABLEKS                       R33 R32 K30 ["Localization"]
     1010 SETTABLEKS                       R2 R32 K1 ["Stylizer"]
     1012 SETTABLEKS                       R3 R32 K2 ["networkError"]
     1014 GETTABLEKS                       R33 R0 K163 ["openCreatorDashboardCreationsPage"]
     1016 SETTABLEKS                       R33 R32 K81 ["onDashboardLinkClicked"]
     1018 CALL                             R30 2 1
     1019 JUMP                             ; [+241]
     1020 MOVE                             R30 R12
     1021 JUMPIFNOT                        R30 ; [+239]
     1022 GETUPVAL                         R30 10
     1023 GETTABLEKS                       R30 R30 K39 ["createElement"]
     1025 LOADK                            R31 K40 ["Frame"]
     1026 DUPTABLE                         R32 K92 [{"Position", "Size", "BackgroundTransparency"}]
     1027 GETIMPORT                        R33 K67 [UDim2.new]
     1029 LOADN                            R34 0
     1030 LOADN                            R35 0
     1031 LOADN                            R36 0
     1032 LOADN                            R37 23
     1033 CALL                             R33 4 1
     1034 SETTABLEKS                       R33 R32 K61 ["Position"]
     1036 GETIMPORT                        R33 K67 [UDim2.new]
     1038 LOADN                            R34 1
     1039 LOADN                            R35 0
     1040 LOADN                            R36 1
     1041 LOADN                            R37 233
     1042 CALL                             R33 4 1
     1043 SETTABLEKS                       R33 R32 K45 ["Size"]
     1045 LOADN                            R33 1
     1046 SETTABLEKS                       R33 R32 K43 ["BackgroundTransparency"]
     1048 DUPTABLE                         R33 K165 [{"ReasonTextFrame"}]
     1049 GETUPVAL                         R34 10
     1050 GETTABLEKS                       R34 R34 K39 ["createElement"]
     1052 GETUPVAL                         R35 20
     1053 DUPTABLE                         R36 K168 [{"AutomaticSize", "BackgroundTransparency", "Layout", "LayoutOrder", "Padding", "Size", "Spacing"}]
     1054 GETIMPORT                        R37 K48 [Enum.AutomaticSize.Y]
     1056 SETTABLEKS                       R37 R36 K41 ["AutomaticSize"]
     1058 LOADN                            R37 1
     1059 SETTABLEKS                       R37 R36 K43 ["BackgroundTransparency"]
     1061 GETIMPORT                        R37 K105 [Enum.FillDirection.Vertical]
     1063 SETTABLEKS                       R37 R36 K166 ["Layout"]
     1065 LOADN                            R37 1
     1066 SETTABLEKS                       R37 R36 K110 ["LayoutOrder"]
     1068 LOADN                            R37 8
     1069 SETTABLEKS                       R37 R36 K102 ["Padding"]
     1071 GETIMPORT                        R37 K67 [UDim2.new]
     1073 LOADN                            R38 1
     1074 LOADN                            R39 0
     1075 LOADN                            R40 0
     1076 LOADN                            R41 0
     1077 CALL                             R37 4 1
     1078 SETTABLEKS                       R37 R36 K45 ["Size"]
     1080 LOADN                            R37 12
     1081 SETTABLEKS                       R37 R36 K167 ["Spacing"]
     1083 DUPTABLE                         R37 K170 [{"Title", "ReasonWithDashboardLink"}]
     1084 GETUPVAL                         R38 10
     1085 GETTABLEKS                       R38 R38 K39 ["createElement"]
     1087 LOADK                            R39 K114 ["TextLabel"]
     1088 DUPTABLE                         R40 K171 [{"BackgroundTransparency", "Font", "LayoutOrder", "Position", "Size", "Text", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
     1089 LOADN                            R41 1
     1090 SETTABLEKS                       R41 R40 K43 ["BackgroundTransparency"]
     1092 GETUPVAL                         R41 5
     1093 GETTABLEKS                       R41 R41 K123 ["FONT"]
     1095 SETTABLEKS                       R41 R40 K115 ["Font"]
     1097 LOADN                            R41 1
     1098 SETTABLEKS                       R41 R40 K110 ["LayoutOrder"]
     1100 GETIMPORT                        R41 K67 [UDim2.new]
     1102 LOADK                            R42 K68 [0.5]
     1103 LOADN                            R43 56
     1104 LOADN                            R44 0
     1105 LOADN                            R45 0
     1106 CALL                             R41 4 1
     1107 SETTABLEKS                       R41 R40 K61 ["Position"]
     1109 GETIMPORT                        R41 K67 [UDim2.new]
     1111 LOADN                            R42 0
     1112 LOADN                            R43 144
     1113 LOADN                            R44 0
     1114 LOADN                            R45 36
     1115 CALL                             R41 4 1
     1116 SETTABLEKS                       R41 R40 K45 ["Size"]
     1118 GETUPVAL                         R42 9
     1119 CALL                             R42 0 1
     1120 JUMPIFNOT                        R42 ; [+8]
     1121 GETTABLEKS                       R41 R1 K30 ["Localization"]
     1123 LOADK                            R43 K31 ["AssetUploadResult"]
     1124 LOADK                            R44 K34 ["SubmissionFailed"]
     1125 NAMECALL                         R41 R41 K33 ["getText"]
     1127 CALL                             R41 3 1
     1128 JUMP                             ; [+1]
     1129 LOADK                            R41 K122 ["Submission failed"]
     1130 SETTABLEKS                       R41 R40 K82 ["Text"]
     1132 GETTABLEKS                       R41 R2 K49 ["uploadResult"]
     1134 GETTABLEKS                       R41 R41 K172 ["redText"]
     1136 SETTABLEKS                       R41 R40 K116 ["TextColor3"]
     1138 GETUPVAL                         R41 5
     1139 GETTABLEKS                       R41 R41 K125 ["FONT_SIZE_TITLE"]
     1141 SETTABLEKS                       R41 R40 K117 ["TextSize"]
     1143 GETIMPORT                        R41 K126 [Enum.TextXAlignment.Center]
     1145 SETTABLEKS                       R41 R40 K118 ["TextXAlignment"]
     1147 GETIMPORT                        R41 K127 [Enum.TextYAlignment.Center]
     1149 SETTABLEKS                       R41 R40 K119 ["TextYAlignment"]
     1151 CALL                             R38 2 1
     1152 SETTABLEKS                       R38 R37 K94 ["Title"]
     1154 GETUPVAL                         R38 10
     1155 GETTABLEKS                       R38 R38 K39 ["createElement"]
     1157 GETUPVAL                         R39 17
     1158 DUPTABLE                         R40 K173 [{"HorizontalAlignment", "LayoutOrder", "LinkPlaceholder", "LinkText", "MaxWidth", "OnLinkClicked", "Text", "TextProps"}]
     1159 GETIMPORT                        R41 K107 [Enum.HorizontalAlignment.Center]
     1161 SETTABLEKS                       R41 R40 K99 ["HorizontalAlignment"]
     1163 LOADN                            R41 3
     1164 SETTABLEKS                       R41 R40 K110 ["LayoutOrder"]
     1166 GETUPVAL                         R41 5
     1167 GETTABLEKS                       R41 R41 K91 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
     1169 SETTABLEKS                       R41 R40 K150 ["LinkPlaceholder"]
     1171 GETTABLEKS                       R41 R0 K0 ["props"]
     1173 GETTABLEKS                       R41 R41 K30 ["Localization"]
     1175 LOADK                            R43 K159 ["General"]
     1176 LOADK                            R44 K160 ["CreatorDashboard"]
     1177 NAMECALL                         R41 R41 K33 ["getText"]
     1179 CALL                             R41 3 1
     1180 SETTABLEKS                       R41 R40 K149 ["LinkText"]
     1182 LOADN                            R41 144
     1183 SETTABLEKS                       R41 R40 K151 ["MaxWidth"]
     1185 GETTABLEKS                       R41 R0 K163 ["openCreatorDashboardCreationsPage"]
     1187 SETTABLEKS                       R41 R40 K148 ["OnLinkClicked"]
     1189 MOVE                             R41 R3
     1190 JUMPIFNOT                        R41 ; [+2]
     1191 GETTABLEKS                       R41 R3 K174 ["responseBody"]
     1193 SETTABLEKS                       R41 R40 K82 ["Text"]
     1195 GETUPVAL                         R42 21
     1196 CALL                             R42 0 1
     1197 JUMPIFNOT                        R42 ; [+29]
     1198 DUPTABLE                         R41 K177 [{"Font", "TextColor", "TextSelectable", "TextSize", "TextXAlignment", "TextYAlignment"}]
     1199 GETUPVAL                         R42 5
     1200 GETTABLEKS                       R42 R42 K123 ["FONT"]
     1202 SETTABLEKS                       R42 R41 K115 ["Font"]
     1204 GETTABLEKS                       R42 R2 K49 ["uploadResult"]
     1206 GETTABLEKS                       R42 R42 K140 ["text"]
     1208 SETTABLEKS                       R42 R41 K175 ["TextColor"]
     1210 LOADB                            R42 1
     1211 SETTABLEKS                       R42 R41 K176 ["TextSelectable"]
     1213 GETUPVAL                         R42 5
     1214 GETTABLEKS                       R42 R42 K23 ["FONT_SIZE_MEDIUM"]
     1216 SETTABLEKS                       R42 R41 K117 ["TextSize"]
     1218 GETIMPORT                        R42 K126 [Enum.TextXAlignment.Center]
     1220 SETTABLEKS                       R42 R41 K118 ["TextXAlignment"]
     1222 GETIMPORT                        R42 K178 [Enum.TextYAlignment.Top]
     1224 SETTABLEKS                       R42 R41 K119 ["TextYAlignment"]
     1226 JUMP                             ; [+25]
     1227 DUPTABLE                         R41 K179 [{"Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
     1228 GETUPVAL                         R42 5
     1229 GETTABLEKS                       R42 R42 K123 ["FONT"]
     1231 SETTABLEKS                       R42 R41 K115 ["Font"]
     1233 GETTABLEKS                       R42 R2 K49 ["uploadResult"]
     1235 GETTABLEKS                       R42 R42 K140 ["text"]
     1237 SETTABLEKS                       R42 R41 K116 ["TextColor3"]
     1239 GETUPVAL                         R42 5
     1240 GETTABLEKS                       R42 R42 K23 ["FONT_SIZE_MEDIUM"]
     1242 SETTABLEKS                       R42 R41 K117 ["TextSize"]
     1244 GETIMPORT                        R42 K126 [Enum.TextXAlignment.Center]
     1246 SETTABLEKS                       R42 R41 K118 ["TextXAlignment"]
     1248 GETIMPORT                        R42 K178 [Enum.TextYAlignment.Top]
     1250 SETTABLEKS                       R42 R41 K119 ["TextYAlignment"]
     1252 SETTABLEKS                       R41 R40 K152 ["TextProps"]
     1254 CALL                             R38 2 1
     1255 SETTABLEKS                       R38 R37 K169 ["ReasonWithDashboardLink"]
     1257 CALL                             R34 3 1
     1258 SETTABLEKS                       R34 R33 K164 ["ReasonTextFrame"]
     1260 CALL                             R30 3 1
     1261 SETTABLEKS                       R30 R29 K54 ["LoadingResultFailure"]
     1263 GETUPVAL                         R31 22
     1264 CALL                             R31 0 1
     1265 JUMPIFNOT                        R31 ; [+20]
     1266 GETTABLEKS                       R31 R0 K180 ["state"]
     1268 GETTABLEKS                       R31 R31 K181 ["showWarning"]
     1270 JUMPIFNOT                        R31 ; [+15]
     1271 GETUPVAL                         R30 10
     1272 GETTABLEKS                       R30 R30 K39 ["createElement"]
     1274 GETUPVAL                         R31 23
     1275 DUPTABLE                         R32 K184 [{"NonBlockingDependencyIssues", "OnClose"}]
     1276 GETTABLEKS                       R33 R1 K185 ["nonBlockingDependencyIssues"]
     1278 SETTABLEKS                       R33 R32 K182 ["NonBlockingDependencyIssues"]
     1280 GETTABLEKS                       R33 R0 K186 ["onWarningDialogClose"]
     1282 SETTABLEKS                       R33 R32 K183 ["OnClose"]
     1284 CALL                             R30 2 1
     1285 JUMP                             ; [+1]
     1286 LOADNIL                          R30
     1287 SETTABLEKS                       R30 R29 K55 ["DependencyWarningDialog"]
     1289 GETUPVAL                         R31 13
     1290 CALL                             R31 0 1
     1291 JUMPIFNOT                        R31 ; [+61]
     1292 GETUPVAL                         R30 14
     1293 GETTABLEKS                       R30 R30 K39 ["createElement"]
     1295 GETUPVAL                         R31 24
     1296 DUPTABLE                         R32 K193 [{"Localization", "primaryButtonText", "onPrimaryButtonActivated", "showCloseLink", "showBackLink", "onGoToNextScreen", "onClose"}]
     1297 GETTABLEKS                       R33 R1 K30 ["Localization"]
     1299 SETTABLEKS                       R33 R32 K30 ["Localization"]
     1301 JUMPIFNOT                        R14 ; [+8]
     1302 GETTABLEKS                       R33 R1 K30 ["Localization"]
     1304 LOADK                            R35 K31 ["AssetUploadResult"]
     1305 LOADK                            R36 K194 ["SubmitAsDevelopmentItem"]
     1306 NAMECALL                         R33 R33 K33 ["getText"]
     1308 CALL                             R33 3 1
     1309 JUMP                             ; [+19]
     1310 JUMPIFNOT                        R17 ; [+8]
     1311 GETTABLEKS                       R33 R1 K30 ["Localization"]
     1313 LOADK                            R35 K31 ["AssetUploadResult"]
     1314 LOADK                            R36 K195 ["NextSubmit"]
     1315 NAMECALL                         R33 R33 K33 ["getText"]
     1317 CALL                             R33 3 1
     1318 JUMP                             ; [+10]
     1319 JUMPIFNOT                        R15 ; [+8]
     1320 GETTABLEKS                       R33 R1 K30 ["Localization"]
     1322 LOADK                            R35 K31 ["AssetUploadResult"]
     1323 LOADK                            R36 K196 ["Close"]
     1324 NAMECALL                         R33 R33 K33 ["getText"]
     1326 CALL                             R33 3 1
     1327 JUMP                             ; [+1]
     1328 LOADNIL                          R33
     1329 SETTABLEKS                       R33 R32 K187 ["primaryButtonText"]
     1331 JUMPIFNOT                        R14 ; [+3]
     1332 GETTABLEKS                       R33 R0 K197 ["goToNextScreen"]
     1334 JUMP                             ; [+2]
     1335 GETTABLEKS                       R33 R0 K192 ["onClose"]
     1337 SETTABLEKS                       R33 R32 K188 ["onPrimaryButtonActivated"]
     1339 SETTABLEKS                       R14 R32 K189 ["showCloseLink"]
     1341 SETTABLEKS                       R16 R32 K190 ["showBackLink"]
     1343 GETTABLEKS                       R33 R0 K197 ["goToNextScreen"]
     1345 SETTABLEKS                       R33 R32 K191 ["onGoToNextScreen"]
     1347 GETTABLEKS                       R33 R0 K192 ["onClose"]
     1349 SETTABLEKS                       R33 R32 K192 ["onClose"]
     1351 CALL                             R30 2 1
     1352 JUMP                             ; [+237]
     1353 GETUPVAL                         R30 10
     1354 GETTABLEKS                       R30 R30 K39 ["createElement"]
     1356 LOADK                            R31 K40 ["Frame"]
     1357 DUPTABLE                         R32 K198 [{"AutomaticSize", "BackgroundTransparency", "Position", "Size"}]
     1358 GETIMPORT                        R33 K48 [Enum.AutomaticSize.Y]
     1360 SETTABLEKS                       R33 R32 K41 ["AutomaticSize"]
     1362 LOADN                            R33 1
     1363 SETTABLEKS                       R33 R32 K43 ["BackgroundTransparency"]
     1365 GETIMPORT                        R33 K67 [UDim2.new]
     1367 LOADN                            R34 0
     1368 LOADN                            R35 0
     1369 LOADN                            R36 1
     1370 MINUS                            R37 R18
     1371 CALL                             R33 4 1
     1372 SETTABLEKS                       R33 R32 K61 ["Position"]
     1374 GETIMPORT                        R33 K67 [UDim2.new]
     1376 LOADN                            R34 1
     1377 LOADN                            R35 0
     1378 LOADN                            R36 0
     1379 MOVE                             R37 R18
     1380 CALL                             R33 4 1
     1381 SETTABLEKS                       R33 R32 K45 ["Size"]
     1383 DUPTABLE                         R33 K203 [{"UIListLayout", "SubmitButton", "NextButton", "CloseLink", "CloseButton", "LinkText"}]
     1384 GETUPVAL                         R34 10
     1385 GETTABLEKS                       R34 R34 K39 ["createElement"]
     1387 LOADK                            R35 K93 ["UIListLayout"]
     1388 DUPTABLE                         R36 K204 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder"}]
     1389 GETIMPORT                        R37 K105 [Enum.FillDirection.Vertical]
     1391 SETTABLEKS                       R37 R36 K98 ["FillDirection"]
     1393 GETIMPORT                        R37 K107 [Enum.HorizontalAlignment.Center]
     1395 SETTABLEKS                       R37 R36 K99 ["HorizontalAlignment"]
     1397 GETIMPORT                        R37 K113 [UDim.new]
     1399 LOADN                            R38 0
     1400 LOADN                            R39 10
     1401 CALL                             R37 2 1
     1402 SETTABLEKS                       R37 R36 K102 ["Padding"]
     1404 GETIMPORT                        R37 K111 [Enum.SortOrder.LayoutOrder]
     1406 SETTABLEKS                       R37 R36 K101 ["SortOrder"]
     1408 CALL                             R34 2 1
     1409 SETTABLEKS                       R34 R33 K93 ["UIListLayout"]
     1411 JUMPIFNOT                        R14 ; [+38]
     1412 GETUPVAL                         R34 10
     1413 GETTABLEKS                       R34 R34 K39 ["createElement"]
     1415 GETUPVAL                         R35 25
     1416 DUPTABLE                         R36 K207 [{"AutomaticSize", "LayoutOrder", "onClick", "Size", "titleText"}]
     1417 GETIMPORT                        R37 K209 [Enum.AutomaticSize.X]
     1419 SETTABLEKS                       R37 R36 K41 ["AutomaticSize"]
     1421 NAMECALL                         R37 R23 K210 ["getNextOrder"]
     1423 CALL                             R37 1 1
     1424 SETTABLEKS                       R37 R36 K110 ["LayoutOrder"]
     1426 GETTABLEKS                       R37 R0 K197 ["goToNextScreen"]
     1428 SETTABLEKS                       R37 R36 K205 ["onClick"]
     1430 GETIMPORT                        R37 K67 [UDim2.new]
     1432 LOADN                            R38 0
     1433 GETUPVAL                         R39 26
     1434 LOADN                            R40 0
     1435 LOADN                            R41 32
     1436 CALL                             R37 4 1
     1437 SETTABLEKS                       R37 R36 K45 ["Size"]
     1439 GETTABLEKS                       R37 R1 K30 ["Localization"]
     1441 LOADK                            R39 K31 ["AssetUploadResult"]
     1442 LOADK                            R40 K194 ["SubmitAsDevelopmentItem"]
     1443 NAMECALL                         R37 R37 K33 ["getText"]
     1445 CALL                             R37 3 1
     1446 SETTABLEKS                       R37 R36 K206 ["titleText"]
     1448 CALL                             R34 2 1
     1449 JUMP                             ; [+1]
     1450 LOADNIL                          R34
     1451 SETTABLEKS                       R34 R33 K199 ["SubmitButton"]
     1453 JUMPIFNOT                        R17 ; [+38]
     1454 GETUPVAL                         R34 10
     1455 GETTABLEKS                       R34 R34 K39 ["createElement"]
     1457 GETUPVAL                         R35 25
     1458 DUPTABLE                         R36 K207 [{"AutomaticSize", "LayoutOrder", "onClick", "Size", "titleText"}]
     1459 GETIMPORT                        R37 K209 [Enum.AutomaticSize.X]
     1461 SETTABLEKS                       R37 R36 K41 ["AutomaticSize"]
     1463 NAMECALL                         R37 R23 K210 ["getNextOrder"]
     1465 CALL                             R37 1 1
     1466 SETTABLEKS                       R37 R36 K110 ["LayoutOrder"]
     1468 GETTABLEKS                       R37 R0 K192 ["onClose"]
     1470 SETTABLEKS                       R37 R36 K205 ["onClick"]
     1472 GETIMPORT                        R37 K67 [UDim2.new]
     1474 LOADN                            R38 0
     1475 LOADN                            R39 200
     1476 LOADN                            R40 0
     1477 LOADN                            R41 32
     1478 CALL                             R37 4 1
     1479 SETTABLEKS                       R37 R36 K45 ["Size"]
     1481 GETTABLEKS                       R37 R1 K30 ["Localization"]
     1483 LOADK                            R39 K31 ["AssetUploadResult"]
     1484 LOADK                            R40 K195 ["NextSubmit"]
     1485 NAMECALL                         R37 R37 K33 ["getText"]
     1487 CALL                             R37 3 1
     1488 SETTABLEKS                       R37 R36 K206 ["titleText"]
     1490 CALL                             R34 2 1
     1491 JUMP                             ; [+1]
     1492 LOADNIL                          R34
     1493 SETTABLEKS                       R34 R33 K200 ["NextButton"]
     1495 JUMPIFNOT                        R14 ; [+25]
     1496 GETUPVAL                         R34 10
     1497 GETTABLEKS                       R34 R34 K39 ["createElement"]
     1499 GETUPVAL                         R35 27
     1500 DUPTABLE                         R36 K212 [{"LayoutOrder", "OnClick", "Text"}]
     1501 NAMECALL                         R37 R23 K210 ["getNextOrder"]
     1503 CALL                             R37 1 1
     1504 SETTABLEKS                       R37 R36 K110 ["LayoutOrder"]
     1506 GETTABLEKS                       R37 R0 K192 ["onClose"]
     1508 SETTABLEKS                       R37 R36 K211 ["OnClick"]
     1510 GETTABLEKS                       R37 R1 K30 ["Localization"]
     1512 LOADK                            R39 K31 ["AssetUploadResult"]
     1513 LOADK                            R40 K196 ["Close"]
     1514 NAMECALL                         R37 R37 K33 ["getText"]
     1516 CALL                             R37 3 1
     1517 SETTABLEKS                       R37 R36 K82 ["Text"]
     1519 CALL                             R34 2 1
     1520 JUMP                             ; [+1]
     1521 LOADNIL                          R34
     1522 SETTABLEKS                       R34 R33 K201 ["CloseLink"]
     1524 JUMPIFNOT                        R15 ; [+34]
     1525 GETUPVAL                         R34 10
     1526 GETTABLEKS                       R34 R34 K39 ["createElement"]
     1528 GETUPVAL                         R35 25
     1529 DUPTABLE                         R36 K213 [{"LayoutOrder", "onClick", "Size", "titleText"}]
     1530 NAMECALL                         R37 R23 K210 ["getNextOrder"]
     1532 CALL                             R37 1 1
     1533 SETTABLEKS                       R37 R36 K110 ["LayoutOrder"]
     1535 GETTABLEKS                       R37 R0 K192 ["onClose"]
     1537 SETTABLEKS                       R37 R36 K205 ["onClick"]
     1539 GETIMPORT                        R37 K67 [UDim2.new]
     1541 LOADN                            R38 0
     1542 LOADN                            R39 120
     1543 LOADN                            R40 0
     1544 LOADN                            R41 32
     1545 CALL                             R37 4 1
     1546 SETTABLEKS                       R37 R36 K45 ["Size"]
     1548 GETTABLEKS                       R37 R1 K30 ["Localization"]
     1550 LOADK                            R39 K31 ["AssetUploadResult"]
     1551 LOADK                            R40 K196 ["Close"]
     1552 NAMECALL                         R37 R37 K33 ["getText"]
     1554 CALL                             R37 3 1
     1555 SETTABLEKS                       R37 R36 K206 ["titleText"]
     1557 CALL                             R34 2 1
     1558 JUMP                             ; [+1]
     1559 LOADNIL                          R34
     1560 SETTABLEKS                       R34 R33 K202 ["CloseButton"]
     1562 JUMPIFNOT                        R16 ; [+23]
     1563 GETUPVAL                         R34 10
     1564 GETTABLEKS                       R34 R34 K39 ["createElement"]
     1566 GETUPVAL                         R35 27
     1567 DUPTABLE                         R36 K212 [{"LayoutOrder", "OnClick", "Text"}]
     1568 LOADN                            R37 1
     1569 SETTABLEKS                       R37 R36 K110 ["LayoutOrder"]
     1571 GETTABLEKS                       R37 R0 K197 ["goToNextScreen"]
     1573 SETTABLEKS                       R37 R36 K211 ["OnClick"]
     1575 GETTABLEKS                       R37 R1 K30 ["Localization"]
     1577 LOADK                            R39 K31 ["AssetUploadResult"]
     1578 LOADK                            R40 K214 ["Back"]
     1579 NAMECALL                         R37 R37 K33 ["getText"]
     1581 CALL                             R37 3 1
     1582 SETTABLEKS                       R37 R36 K82 ["Text"]
     1584 CALL                             R34 2 1
     1585 JUMP                             ; [+1]
     1586 LOADNIL                          R34
     1587 SETTABLEKS                       R34 R33 K149 ["LinkText"]
     1589 CALL                             R30 3 1
     1590 SETTABLEKS                       R30 R29 K56 ["Footer"]
     1592 CALL                             R26 3 -1
     1593 CLOSEUPVALS                      R20
     1594 RETURN                           R26 -1

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
