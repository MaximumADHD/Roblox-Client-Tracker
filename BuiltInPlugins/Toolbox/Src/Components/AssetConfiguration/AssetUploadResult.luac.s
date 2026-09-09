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
       25 GETUPVAL                         R6 2
       26 CALL                             R6 0 1
       27 JUMPIFNOT                        R6 ; [+13]
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R8 R1 K8 ["currentTab"]
       31 NAMECALL                         R6 R6 K9 ["isOverride"]
       33 CALL                             R6 2 1
       34 JUMPIFNOT                        R6 ; [+6]
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R6 R6 K10 ["isAvatarItemUpdateSupported"]
       38 GETTABLEKS                       R7 R1 K7 ["assetTypeEnum"]
       40 CALL                             R6 1 1
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R7 R7 K11 ["getPreviewType"]
       44 GETTABLEKS                       R8 R1 K7 ["assetTypeEnum"]
       46 GETTABLEKS                       R9 R1 K12 ["instances"]
       48 CALL                             R7 2 1
       49 GETUPVAL                         R9 4
       50 CALL                             R9 0 1
       51 JUMPIFNOT                        R9 ; [+11]
       52 GETTABLEKS                       R9 R1 K13 ["animationPackType"]
       54 JUMPIFEQKNIL                     R9 ; [+8]
       56 GETUPVAL                         R8 5
       57 GETTABLEKS                       R8 R8 K14 ["getAvatarAnimationPartThumbnailUri"]
       59 GETTABLEKS                       R9 R1 K13 ["animationPackType"]
       61 CALL                             R8 1 1
       62 JUMP                             ; [+1]
       63 LOADNIL                          R8
       64 LOADB                            R9 0
       65 GETUPVAL                         R10 6
       66 GETTABLEKS                       R10 R10 K15 ["ModelPreview"]
       68 JUMPIFNOTEQ                      R7 R10 ; [+5]
       70 JUMPIFEQKNIL                     R8 ; [+2]
       72 LOADB                            R9 0 +1
       73 LOADB                            R9 1
       74 LOADB                            R10 1
       75 GETUPVAL                         R11 6
       76 GETTABLEKS                       R11 R11 K16 ["Thumbnail"]
       78 JUMPIFEQ                         R7 R11 ; [+11]
       80 LOADB                            R10 1
       81 GETUPVAL                         R11 6
       82 GETTABLEKS                       R11 R11 K17 ["ImagePicker"]
       84 JUMPIFEQ                         R7 R11 ; [+5]
       86 JUMPIFNOTEQKNIL                  R8 ; [+2]
       88 LOADB                            R10 0 +1
       89 LOADB                            R10 1
       90 GETTABLEKS                       R12 R1 K18 ["networkTable"]
       92 NEWTABLE                         R13 0 0
       94 GETIMPORT                        R14 K20 [pairs]
       96 MOVE                             R15 R12
       97 CALL                             R14 1 3
       98 FORGPREP_NEXT                    R14
       99 FASTCALL2                        TABLE_INSERT R13 R18 ; [+5]
      101 MOVE                             R20 R13
      102 MOVE                             R21 R18
      103 GETIMPORT                        R19 K23 [table.insert]
      105 CALL                             R19 2 0
      106 FORGLOOP                         R14 2 ; [-8]
      108 MOVE                             R11 R13
      109 GETTABLEKS                       R12 R1 K24 ["uploadSucceeded"]
      111 NOT                              R13 R12
      112 GETUPVAL                         R14 1
      113 GETTABLEKS                       R14 R14 K6 ["isCatalogAsset"]
      115 GETTABLEKS                       R15 R1 K7 ["assetTypeEnum"]
      117 CALL                             R14 1 1
      118 AND                              R15 R12 R14
      119 JUMPIF                           R12 ; [+2]
      120 MOVE                             R16 R14
      121 JUMPIF                           R16 ; [+1]
      122 NOT                              R16 R14
      123 LOADB                            R17 1
      124 LOADNIL                          R18
      125 GETTABLEKS                       R19 R1 K25 ["hasSubsequent"]
      127 JUMPIFNOT                        R19 ; [+4]
      128 LOADB                            R15 0
      129 LOADB                            R17 0
      130 LOADB                            R16 0
      131 LOADB                            R18 1
      132 LOADN                            R20 72
      133 GETUPVAL                         R21 7
      134 GETTABLEKS                       R21 R21 K26 ["FONT_SIZE_MEDIUM"]
      136 ADD                              R19 R20 R21
      137 GETUPVAL                         R20 1
      138 GETTABLEKS                       R20 R20 K6 ["isCatalogAsset"]
      140 GETTABLEKS                       R21 R1 K7 ["assetTypeEnum"]
      142 CALL                             R20 1 1
      143 JUMPIF                           R20 ; [+6]
      144 GETUPVAL                         R20 1
      145 GETTABLEKS                       R20 R20 K27 ["isUGCBundleType"]
      147 GETTABLEKS                       R21 R1 K7 ["assetTypeEnum"]
      149 CALL                             R20 1 1
      150 LOADNIL                          R21
      151 JUMPIF                           R20 ; [+13]
      152 GETTABLEKS                       R22 R1 K24 ["uploadSucceeded"]
      154 JUMPIFNOT                        R22 ; [+10]
      155 GETUPVAL                         R22 8
      156 GETTABLEKS                       R23 R1 K3 ["screenFlowType"]
      158 GETTABLEKS                       R25 R1 K29 ["assetId"]
      160 ORK                              R24 R25 K28 [0]
      161 GETTABLEKS                       R25 R1 K7 ["assetTypeEnum"]
      163 CALL                             R22 3 1
      164 MOVE                             R21 R22
      165 GETUPVAL                         R22 9
      166 GETTABLEKS                       R22 R22 K30 ["constructCreatorStoreConfigurationUrl"]
      168 GETTABLEKS                       R24 R1 K29 ["assetId"]
      170 ORK                              R23 R24 K28 [0]
      171 CALL                             R22 1 1
      172 GETUPVAL                         R23 1
      173 GETTABLEKS                       R23 R23 K31 ["isCreatorStoreAssetNotIncludingAnimation"]
      175 GETTABLEKS                       R24 R1 K7 ["assetTypeEnum"]
      177 CALL                             R23 1 1
      178 JUMPIFNOT                        R23 ; [+1]
      179 NOT                              R23 R20
      180 GETUPVAL                         R24 10
      181 GETTABLEKS                       R24 R24 K32 ["new"]
      183 CALL                             R24 0 1
      184 LOADNIL                          R25
      185 GETUPVAL                         R26 11
      186 CALL                             R26 0 1
      187 JUMPIFNOT                        R26 ; [+20]
      188 GETTABLEKS                       R26 R1 K24 ["uploadSucceeded"]
      190 JUMPIFNOT                        R26 ; [+9]
      191 GETTABLEKS                       R26 R1 K33 ["Localization"]
      193 LOADK                            R28 K34 ["AssetUploadResult"]
      194 LOADK                            R29 K35 ["SubmissionSucceeded"]
      195 NAMECALL                         R26 R26 K36 ["getText"]
      197 CALL                             R26 3 1
      198 MOVE                             R25 R26
      199 JUMP                             ; [+8]
      200 GETTABLEKS                       R26 R1 K33 ["Localization"]
      202 LOADK                            R28 K34 ["AssetUploadResult"]
      203 LOADK                            R29 K37 ["SubmissionFailed"]
      204 NAMECALL                         R26 R26 K36 ["getText"]
      206 CALL                             R26 3 1
      207 MOVE                             R25 R26
      208 GETTABLEKS                       R27 R1 K7 ["assetTypeEnum"]
      210 GETIMPORT                        R28 K41 [Enum.AssetType.EmoteAnimation]
      212 JUMPIFNOTEQ                      R27 R28 ; [+3]
      214 LOADN                            R26 150
      215 JUMP                             ; [+1]
      216 LOADN                            R26 186
      217 GETUPVAL                         R27 12
      218 GETTABLEKS                       R27 R27 K42 ["createElement"]
      220 LOADK                            R28 K43 ["Frame"]
      221 DUPTABLE                         R29 K49 [{["AutomaticSize"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["Size"]}]
      222 GETIMPORT                        R30 K51 [Enum.AutomaticSize.Y]
      224 SETTABLEKS                       R30 R29 K44 ["AutomaticSize"]
      226 GETTABLEKS                       R30 R2 K52 ["uploadResult"]
      228 GETTABLEKS                       R30 R30 K53 ["background"]
      230 SETTABLEKS                       R30 R29 K45 ["BackgroundColor3"]
      232 GETTABLEKS                       R30 R1 K48 ["Size"]
      234 SETTABLEKS                       R30 R29 K48 ["Size"]
      236 DUPTABLE                         R30 K60 [{"ModelPreview", "ThumbnailPreview", "CopyID", "LoadingResultSuccess", "LoadingResultFailure", "DependencyWarningDialog", "Footer"}]
      237 MOVE                             R31 R9
      238 JUMPIFNOT                        R31 ; [+37]
      239 GETUPVAL                         R31 12
      240 GETTABLEKS                       R31 R31 K42 ["createElement"]
      242 GETUPVAL                         R32 13
      243 DUPTABLE                         R33 K68 [{["title"], ["titleHeight"] = 24, ["titlePadding"] = 12, ["Position"], ["Size"], ["AssetType"], ["UploadSucceeded"]}]
      244 GETTABLEKS                       R35 R1 K70 ["assetName"]
      246 ORK                              R34 R35 K69 []
      247 SETTABLEKS                       R34 R33 K61 ["title"]
      249 GETIMPORT                        R34 K72 [UDim2.new]
      251 LOADK                            R35 K73 [0.5]
      252 LOADN                            R36 -75
      253 LOADN                            R37 0
      254 LOADN                            R38 48
      255 CALL                             R34 4 1
      256 SETTABLEKS                       R34 R33 K66 ["Position"]
      258 GETIMPORT                        R34 K72 [UDim2.new]
      260 LOADN                            R35 0
      261 LOADN                            R36 150
      262 LOADN                            R37 0
      263 MOVE                             R38 R26
      264 CALL                             R34 4 1
      265 SETTABLEKS                       R34 R33 K48 ["Size"]
      267 GETTABLEKS                       R34 R1 K7 ["assetTypeEnum"]
      269 SETTABLEKS                       R34 R33 K39 ["AssetType"]
      271 GETTABLEKS                       R34 R1 K24 ["uploadSucceeded"]
      273 SETTABLEKS                       R34 R33 K67 ["UploadSucceeded"]
      275 CALL                             R31 2 1
      276 SETTABLEKS                       R31 R30 K15 ["ModelPreview"]
      278 MOVE                             R31 R10
      279 JUMPIFNOT                        R31 ; [+50]
      280 GETUPVAL                         R31 12
      281 GETTABLEKS                       R31 R31 K42 ["createElement"]
      283 LOADK                            R32 K74 ["ImageLabel"]
      284 DUPTABLE                         R33 K78 [{["Position"], ["Size"], ["Image"], ["ScaleType"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      285 GETIMPORT                        R34 K72 [UDim2.new]
      287 LOADK                            R35 K73 [0.5]
      288 LOADN                            R36 -75
      289 LOADN                            R37 0
      290 LOADN                            R38 48
      291 CALL                             R34 4 1
      292 SETTABLEKS                       R34 R33 K66 ["Position"]
      294 GETIMPORT                        R34 K72 [UDim2.new]
      296 LOADN                            R35 0
      297 LOADN                            R36 150
      298 LOADN                            R37 0
      299 LOADN                            R38 150
      300 CALL                             R34 4 1
      301 SETTABLEKS                       R34 R33 K48 ["Size"]
      303 GETUPVAL                         R35 4
      304 CALL                             R35 0 1
      305 JUMPIFNOT                        R35 ; [+2]
      306 MOVE                             R34 R8
      307 JUMPIF                           R34 ; [+8]
      308 GETUPVAL                         R34 1
      309 GETTABLEKS                       R34 R34 K79 ["getResultThumbnail"]
      311 GETTABLEKS                       R35 R1 K29 ["assetId"]
      313 GETTABLEKS                       R36 R1 K80 ["iconFile"]
      315 CALL                             R34 2 1
      316 SETTABLEKS                       R34 R33 K75 ["Image"]
      318 GETUPVAL                         R35 4
      319 CALL                             R35 0 1
      320 JUMPIFNOT                        R35 ; [+5]
      321 JUMPIFEQKNIL                     R8 ; [+4]
      323 GETIMPORT                        R34 K82 [Enum.ScaleType.Fit]
      325 JUMP                             ; [+1]
      326 LOADNIL                          R34
      327 SETTABLEKS                       R34 R33 K76 ["ScaleType"]
      329 CALL                             R31 2 1
      330 SETTABLEKS                       R31 R30 K54 ["ThumbnailPreview"]
      332 MOVE                             R31 R12
      333 JUMPIFNOT                        R31 ; [+10]
      334 GETUPVAL                         R31 12
      335 GETTABLEKS                       R31 R31 K42 ["createElement"]
      337 GETUPVAL                         R32 14
      338 DUPTABLE                         R33 K86 [{["YPos"] = 240, ["AssetId"]}]
      339 GETTABLEKS                       R34 R1 K29 ["assetId"]
      341 SETTABLEKS                       R34 R33 K85 ["AssetId"]
      343 CALL                             R31 2 1
      344 SETTABLEKS                       R31 R30 K55 ["CopyID"]
      346 GETUPVAL                         R32 15
      347 CALL                             R32 0 1
      348 JUMPIFNOT                        R32 ; [+68]
      349 MOVE                             R31 R12
      350 JUMPIFNOT                        R31 ; [+650]
      351 GETUPVAL                         R31 16
      352 GETTABLEKS                       R31 R31 K42 ["createElement"]
      354 GETUPVAL                         R32 17
      355 DUPTABLE                         R33 K95 [{"displayCreatorDashboardMessage", "onDashboardLinkClicked", "Text", "showCreatorStoreConfigurationLink", "showModeration", "moderationMessageOverride", "creatorStoreConfigurationUrl", "url", "Localization", "Stylizer"}]
      356 SETTABLEKS                       R20 R33 K87 ["displayCreatorDashboardMessage"]
      358 GETUPVAL                         R35 1
      359 GETTABLEKS                       R35 R35 K27 ["isUGCBundleType"]
      361 GETTABLEKS                       R36 R1 K7 ["assetTypeEnum"]
      363 CALL                             R35 1 1
      364 JUMPIFNOT                        R35 ; [+4]
      365 NEWCLOSURE                       R34 P0
      366 CAPTURE                          VAL R0
      367 CAPTURE                          VAL R1
      368 JUMP                             ; [+3]
      369 NEWCLOSURE                       R34 P1
      370 CAPTURE                          VAL R0
      371 CAPTURE                          VAL R1
      372 SETTABLEKS                       R34 R33 K88 ["onDashboardLinkClicked"]
      374 GETTABLEKS                       R34 R1 K33 ["Localization"]
      376 LOADK                            R36 K34 ["AssetUploadResult"]
      377 LOADK                            R37 K96 ["CreatorDashboardMessage"]
      378 DUPTABLE                         R38 K98 [{"creatorDashboardLink"}]
      379 GETUPVAL                         R39 7
      380 GETTABLEKS                       R39 R39 K99 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      382 SETTABLEKS                       R39 R38 K97 ["creatorDashboardLink"]
      384 NAMECALL                         R34 R34 K36 ["getText"]
      386 CALL                             R34 4 1
      387 SETTABLEKS                       R34 R33 K89 ["Text"]
      389 SETTABLEKS                       R23 R33 K90 ["showCreatorStoreConfigurationLink"]
      391 SETTABLEKS                       R5 R33 K91 ["showModeration"]
      393 JUMPIFNOT                        R6 ; [+8]
      394 GETTABLEKS                       R34 R1 K33 ["Localization"]
      396 LOADK                            R36 K34 ["AssetUploadResult"]
      397 LOADK                            R37 K100 ["UpdateSubmittedMessage"]
      398 NAMECALL                         R34 R34 K36 ["getText"]
      400 CALL                             R34 3 1
      401 JUMPIF                           R34 ; [+1]
      402 LOADNIL                          R34
      403 SETTABLEKS                       R34 R33 K92 ["moderationMessageOverride"]
      405 SETTABLEKS                       R22 R33 K93 ["creatorStoreConfigurationUrl"]
      407 SETTABLEKS                       R21 R33 K94 ["url"]
      409 GETTABLEKS                       R34 R1 K33 ["Localization"]
      411 SETTABLEKS                       R34 R33 K33 ["Localization"]
      413 SETTABLEKS                       R2 R33 K1 ["Stylizer"]
      415 CALL                             R31 2 1
      416 JUMP                             ; [+584]
      417 MOVE                             R31 R12
      418 JUMPIFNOT                        R31 ; [+582]
      419 GETUPVAL                         R31 12
      420 GETTABLEKS                       R31 R31 K42 ["createElement"]
      422 LOADK                            R32 K43 ["Frame"]
      423 DUPTABLE                         R33 K101 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1}]
      424 GETIMPORT                        R34 K72 [UDim2.new]
      426 LOADN                            R35 0
      427 LOADN                            R36 0
      428 LOADN                            R37 0
      429 LOADN                            R38 279
      430 CALL                             R34 4 1
      431 SETTABLEKS                       R34 R33 K66 ["Position"]
      433 GETIMPORT                        R34 K72 [UDim2.new]
      435 LOADN                            R35 1
      436 LOADN                            R36 0
      437 LOADN                            R37 1
      438 LOADN                            R38 -279
      439 CALL                             R34 4 1
      440 SETTABLEKS                       R34 R33 K48 ["Size"]
      442 DUPTABLE                         R34 K107 [{["UIListLayout"], ["Title"], ["ReasonFrame"] = False, ["Rows"]}]
      443 GETUPVAL                         R35 12
      444 GETTABLEKS                       R35 R35 K42 ["createElement"]
      446 LOADK                            R36 K102 ["UIListLayout"]
      447 DUPTABLE                         R37 K113 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      448 GETIMPORT                        R38 K115 [Enum.FillDirection.Vertical]
      450 SETTABLEKS                       R38 R37 K108 ["FillDirection"]
      452 GETIMPORT                        R38 K117 [Enum.HorizontalAlignment.Center]
      454 SETTABLEKS                       R38 R37 K109 ["HorizontalAlignment"]
      456 GETIMPORT                        R38 K119 [Enum.VerticalAlignment.Top]
      458 SETTABLEKS                       R38 R37 K110 ["VerticalAlignment"]
      460 GETIMPORT                        R38 K121 [Enum.SortOrder.LayoutOrder]
      462 SETTABLEKS                       R38 R37 K111 ["SortOrder"]
      464 GETIMPORT                        R38 K123 [UDim.new]
      466 LOADN                            R39 0
      467 LOADN                            R40 5
      468 CALL                             R38 2 1
      469 SETTABLEKS                       R38 R37 K112 ["Padding"]
      471 CALL                             R35 2 1
      472 SETTABLEKS                       R35 R34 K102 ["UIListLayout"]
      474 GETUPVAL                         R35 12
      475 GETTABLEKS                       R35 R35 K42 ["createElement"]
      477 LOADK                            R36 K124 ["TextLabel"]
      478 DUPTABLE                         R37 K130 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"], ["Text"], ["Font"], ["TextColor3"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["LayoutOrder"] = 1}]
      479 GETIMPORT                        R38 K72 [UDim2.new]
      481 LOADK                            R39 K73 [0.5]
      482 LOADN                            R40 -200
      483 LOADN                            R41 0
      484 LOADN                            R42 0
      485 CALL                             R38 4 1
      486 SETTABLEKS                       R38 R37 K66 ["Position"]
      488 GETIMPORT                        R38 K72 [UDim2.new]
      490 LOADN                            R39 0
      491 LOADN                            R40 400
      492 LOADN                            R41 0
      493 LOADN                            R42 36
      494 CALL                             R38 4 1
      495 SETTABLEKS                       R38 R37 K48 ["Size"]
      497 GETUPVAL                         R39 11
      498 CALL                             R39 0 1
      499 JUMPIFNOT                        R39 ; [+2]
      500 MOVE                             R38 R25
      501 JUMP                             ; [+6]
      502 GETTABLEKS                       R39 R1 K24 ["uploadSucceeded"]
      504 JUMPIFNOT                        R39 ; [+2]
      505 LOADK                            R38 K131 ["Successfully submitted!"]
      506 JUMP                             ; [+1]
      507 LOADK                            R38 K132 ["Submission failed"]
      508 SETTABLEKS                       R38 R37 K89 ["Text"]
      510 GETUPVAL                         R38 7
      511 GETTABLEKS                       R38 R38 K133 ["FONT"]
      513 SETTABLEKS                       R38 R37 K125 ["Font"]
      515 GETTABLEKS                       R38 R2 K52 ["uploadResult"]
      517 GETTABLEKS                       R38 R38 K134 ["greenText"]
      519 SETTABLEKS                       R38 R37 K126 ["TextColor3"]
      521 GETUPVAL                         R38 7
      522 GETTABLEKS                       R38 R38 K135 ["FONT_SIZE_TITLE"]
      524 SETTABLEKS                       R38 R37 K127 ["TextSize"]
      526 GETIMPORT                        R38 K136 [Enum.TextXAlignment.Center]
      528 SETTABLEKS                       R38 R37 K128 ["TextXAlignment"]
      530 GETIMPORT                        R38 K137 [Enum.TextYAlignment.Center]
      532 SETTABLEKS                       R38 R37 K129 ["TextYAlignment"]
      534 CALL                             R35 2 1
      535 SETTABLEKS                       R35 R34 K103 ["Title"]
      537 GETUPVAL                         R35 12
      538 GETTABLEKS                       R35 R35 K42 ["createElement"]
      540 LOADK                            R36 K43 ["Frame"]
      541 DUPTABLE                         R37 K139 [{["BackgroundTransparency"] = 1, ["Size"], ["AutomaticSize"], ["Position"], ["LayoutOrder"] = 3}]
      542 JUMPIFNOT                        R6 ; [+8]
      543 GETIMPORT                        R38 K72 [UDim2.new]
      545 LOADN                            R39 0
      546 LOADN                            R40 400
      547 LOADN                            R41 0
      548 LOADN                            R42 0
      549 CALL                             R38 4 1
      550 JUMP                             ; [+7]
      551 GETIMPORT                        R38 K72 [UDim2.new]
      553 LOADN                            R39 0
      554 LOADN                            R40 400
      555 LOADN                            R41 0
      556 LOADN                            R42 72
      557 CALL                             R38 4 1
      558 SETTABLEKS                       R38 R37 K48 ["Size"]
      560 JUMPIFNOT                        R6 ; [+3]
      561 GETIMPORT                        R38 K51 [Enum.AutomaticSize.Y]
      563 JUMP                             ; [+1]
      564 LOADNIL                          R38
      565 SETTABLEKS                       R38 R37 K44 ["AutomaticSize"]
      567 GETIMPORT                        R38 K72 [UDim2.new]
      569 LOADK                            R39 K73 [0.5]
      570 LOADN                            R40 -200
      571 LOADN                            R41 0
      572 LOADN                            R42 49
      573 CALL                             R38 4 1
      574 SETTABLEKS                       R38 R37 K66 ["Position"]
      576 DUPTABLE                         R38 K146 [{"UIListLayout", "ModerationMessage", "CreatorStoreConfigurationText", "CreatorStoreConfigurationLink", "ToolboxText", "ToolboxLink", "CreatorDashboardMsg"}]
      577 GETUPVAL                         R39 12
      578 GETTABLEKS                       R39 R39 K42 ["createElement"]
      580 LOADK                            R40 K102 ["UIListLayout"]
      581 DUPTABLE                         R41 K147 [{"Padding", "SortOrder"}]
      582 GETIMPORT                        R42 K123 [UDim.new]
      584 LOADN                            R43 0
      585 LOADN                            R44 12
      586 CALL                             R42 2 1
      587 SETTABLEKS                       R42 R41 K112 ["Padding"]
      589 GETIMPORT                        R42 K121 [Enum.SortOrder.LayoutOrder]
      591 SETTABLEKS                       R42 R41 K111 ["SortOrder"]
      593 CALL                             R39 2 1
      594 SETTABLEKS                       R39 R38 K102 ["UIListLayout"]
      596 MOVE                             R39 R5
      597 JUMPIFNOT                        R39 ; [+75]
      598 JUMPIFNOT                        R6 ; [+25]
      599 GETUPVAL                         R39 16
      600 GETTABLEKS                       R39 R39 K42 ["createElement"]
      602 GETUPVAL                         R40 18
      603 GETTABLEKS                       R40 R40 K89 ["Text"]
      605 DUPTABLE                         R41 K150 [{["tag"] = "auto-y text-wrap text-body-large text-align-x-center", ["Size"], ["Text"], ["LayoutOrder"] = 0}]
      606 GETIMPORT                        R42 K152 [UDim2.fromOffset]
      608 LOADN                            R43 400
      609 LOADN                            R44 0
      610 CALL                             R42 2 1
      611 SETTABLEKS                       R42 R41 K48 ["Size"]
      613 GETTABLEKS                       R42 R1 K33 ["Localization"]
      615 LOADK                            R44 K34 ["AssetUploadResult"]
      616 LOADK                            R45 K100 ["UpdateSubmittedMessage"]
      617 NAMECALL                         R42 R42 K36 ["getText"]
      619 CALL                             R42 3 1
      620 SETTABLEKS                       R42 R41 K89 ["Text"]
      622 CALL                             R39 2 1
      623 JUMP                             ; [+49]
      624 GETUPVAL                         R39 12
      625 GETTABLEKS                       R39 R39 K42 ["createElement"]
      627 LOADK                            R40 K124 ["TextLabel"]
      628 DUPTABLE                         R41 K153 [{["BackgroundTransparency"] = 1, ["Font"], ["Text"], ["TextColor3"], ["TextSize"], ["Size"], ["TextYAlignment"], ["LayoutOrder"] = 0}]
      629 GETUPVAL                         R42 7
      630 GETTABLEKS                       R42 R42 K133 ["FONT"]
      632 SETTABLEKS                       R42 R41 K125 ["Font"]
      634 GETUPVAL                         R43 11
      635 CALL                             R43 0 1
      636 JUMPIFNOT                        R43 ; [+8]
      637 GETTABLEKS                       R42 R1 K33 ["Localization"]
      639 LOADK                            R44 K34 ["AssetUploadResult"]
      640 LOADK                            R45 K154 ["AddedToModerationQueueMessage"]
      641 NAMECALL                         R42 R42 K36 ["getText"]
      643 CALL                             R42 3 1
      644 JUMP                             ; [+1]
      645 LOADK                            R42 K155 ["Asset has been added to moderation queue."]
      646 SETTABLEKS                       R42 R41 K89 ["Text"]
      648 GETTABLEKS                       R42 R2 K52 ["uploadResult"]
      650 GETTABLEKS                       R42 R42 K156 ["text"]
      652 SETTABLEKS                       R42 R41 K126 ["TextColor3"]
      654 GETUPVAL                         R42 7
      655 GETTABLEKS                       R42 R42 K26 ["FONT_SIZE_MEDIUM"]
      657 SETTABLEKS                       R42 R41 K127 ["TextSize"]
      659 GETIMPORT                        R42 K72 [UDim2.new]
      661 LOADN                            R43 1
      662 LOADN                            R44 0
      663 LOADN                            R45 0
      664 LOADN                            R46 24
      665 CALL                             R42 4 1
      666 SETTABLEKS                       R42 R41 K48 ["Size"]
      668 GETIMPORT                        R42 K137 [Enum.TextYAlignment.Center]
      670 SETTABLEKS                       R42 R41 K129 ["TextYAlignment"]
      672 CALL                             R39 2 1
      673 SETTABLEKS                       R39 R38 K140 ["ModerationMessage"]
      675 JUMPIFNOT                        R23 ; [+45]
      676 GETUPVAL                         R39 12
      677 GETTABLEKS                       R39 R39 K42 ["createElement"]
      679 LOADK                            R40 K124 ["TextLabel"]
      680 DUPTABLE                         R41 K157 [{["BackgroundTransparency"] = 1, ["Font"], ["Text"], ["TextColor3"], ["TextSize"], ["Size"], ["TextYAlignment"], ["LayoutOrder"] = 1}]
      681 GETUPVAL                         R42 7
      682 GETTABLEKS                       R42 R42 K133 ["FONT"]
      684 SETTABLEKS                       R42 R41 K125 ["Font"]
      686 GETTABLEKS                       R42 R1 K33 ["Localization"]
      688 LOADK                            R44 K34 ["AssetUploadResult"]
      689 LOADK                            R45 K158 ["CreatorStoreConfigurationMessage"]
      690 NAMECALL                         R42 R42 K36 ["getText"]
      692 CALL                             R42 3 1
      693 SETTABLEKS                       R42 R41 K89 ["Text"]
      695 GETTABLEKS                       R42 R2 K52 ["uploadResult"]
      697 GETTABLEKS                       R42 R42 K156 ["text"]
      699 SETTABLEKS                       R42 R41 K126 ["TextColor3"]
      701 GETUPVAL                         R42 7
      702 GETTABLEKS                       R42 R42 K26 ["FONT_SIZE_MEDIUM"]
      704 SETTABLEKS                       R42 R41 K127 ["TextSize"]
      706 GETIMPORT                        R42 K72 [UDim2.new]
      708 LOADN                            R43 1
      709 LOADN                            R44 0
      710 LOADN                            R45 0
      711 LOADN                            R46 24
      712 CALL                             R42 4 1
      713 SETTABLEKS                       R42 R41 K48 ["Size"]
      715 GETIMPORT                        R42 K137 [Enum.TextYAlignment.Center]
      717 SETTABLEKS                       R42 R41 K129 ["TextYAlignment"]
      719 CALL                             R39 2 1
      720 JUMP                             ; [+1]
      721 LOADNIL                          R39
      722 SETTABLEKS                       R39 R38 K141 ["CreatorStoreConfigurationText"]
      724 JUMPIFNOT                        R23 ; [+54]
      725 GETUPVAL                         R39 12
      726 GETTABLEKS                       R39 R39 K42 ["createElement"]
      728 LOADK                            R40 K159 ["TextButton"]
      729 NEWTABLE                         R41 16 0
      731 LOADN                            R42 1
      732 SETTABLEKS                       R42 R41 K46 ["BackgroundTransparency"]
      734 GETUPVAL                         R42 7
      735 GETTABLEKS                       R42 R42 K133 ["FONT"]
      737 SETTABLEKS                       R42 R41 K125 ["Font"]
      739 SETTABLEKS                       R22 R41 K89 ["Text"]
      741 GETTABLEKS                       R42 R2 K52 ["uploadResult"]
      743 GETTABLEKS                       R42 R42 K160 ["link"]
      745 SETTABLEKS                       R42 R41 K126 ["TextColor3"]
      747 GETUPVAL                         R42 7
      748 GETTABLEKS                       R42 R42 K26 ["FONT_SIZE_MEDIUM"]
      750 SETTABLEKS                       R42 R41 K127 ["TextSize"]
      752 GETIMPORT                        R42 K72 [UDim2.new]
      754 LOADN                            R43 1
      755 LOADN                            R44 0
      756 LOADN                            R45 0
      757 LOADN                            R46 24
      758 CALL                             R42 4 1
      759 SETTABLEKS                       R42 R41 K48 ["Size"]
      761 GETIMPORT                        R42 K137 [Enum.TextYAlignment.Center]
      763 SETTABLEKS                       R42 R41 K129 ["TextYAlignment"]
      765 LOADN                            R42 2
      766 SETTABLEKS                       R42 R41 K120 ["LayoutOrder"]
      768 GETUPVAL                         R42 12
      769 GETTABLEKS                       R42 R42 K161 ["Event"]
      771 GETTABLEKS                       R42 R42 K162 ["Activated"]
      773 NEWCLOSURE                       R43 P2
      774 CAPTURE                          UPVAL U19
      775 CAPTURE                          VAL R22
      776 SETTABLE                         R43 R41 R42
      777 CALL                             R39 2 1
      778 JUMP                             ; [+1]
      779 LOADNIL                          R39
      780 SETTABLEKS                       R39 R38 K142 ["CreatorStoreConfigurationLink"]
      782 JUMPIF                           R20 ; [+50]
      783 GETUPVAL                         R39 12
      784 GETTABLEKS                       R39 R39 K42 ["createElement"]
      786 LOADK                            R40 K124 ["TextLabel"]
      787 DUPTABLE                         R41 K163 [{["BackgroundTransparency"] = 1, ["Font"], ["Text"], ["TextColor3"], ["TextSize"], ["Size"], ["TextYAlignment"], ["LayoutOrder"] = 3}]
      788 GETUPVAL                         R42 7
      789 GETTABLEKS                       R42 R42 K133 ["FONT"]
      791 SETTABLEKS                       R42 R41 K125 ["Font"]
      793 GETUPVAL                         R43 11
      794 CALL                             R43 0 1
      795 JUMPIFNOT                        R43 ; [+8]
      796 GETTABLEKS                       R42 R1 K33 ["Localization"]
      798 LOADK                            R44 K34 ["AssetUploadResult"]
      799 LOADK                            R45 K164 ["WebsiteUrlNoticeMessage"]
      800 NAMECALL                         R42 R42 K36 ["getText"]
      802 CALL                             R42 3 1
      803 JUMP                             ; [+1]
      804 LOADK                            R42 K165 ["You may find your asset in Toolbox or on web:"]
      805 SETTABLEKS                       R42 R41 K89 ["Text"]
      807 GETTABLEKS                       R42 R2 K52 ["uploadResult"]
      809 GETTABLEKS                       R42 R42 K156 ["text"]
      811 SETTABLEKS                       R42 R41 K126 ["TextColor3"]
      813 GETUPVAL                         R42 7
      814 GETTABLEKS                       R42 R42 K26 ["FONT_SIZE_MEDIUM"]
      816 SETTABLEKS                       R42 R41 K127 ["TextSize"]
      818 GETIMPORT                        R42 K72 [UDim2.new]
      820 LOADN                            R43 1
      821 LOADN                            R44 0
      822 LOADN                            R45 0
      823 LOADN                            R46 24
      824 CALL                             R42 4 1
      825 SETTABLEKS                       R42 R41 K48 ["Size"]
      827 GETIMPORT                        R42 K137 [Enum.TextYAlignment.Center]
      829 SETTABLEKS                       R42 R41 K129 ["TextYAlignment"]
      831 CALL                             R39 2 1
      832 JUMP                             ; [+1]
      833 LOADNIL                          R39
      834 SETTABLEKS                       R39 R38 K143 ["ToolboxText"]
      836 JUMPIF                           R20 ; [+54]
      837 GETUPVAL                         R39 12
      838 GETTABLEKS                       R39 R39 K42 ["createElement"]
      840 LOADK                            R40 K159 ["TextButton"]
      841 NEWTABLE                         R41 16 0
      843 LOADN                            R42 1
      844 SETTABLEKS                       R42 R41 K46 ["BackgroundTransparency"]
      846 GETUPVAL                         R42 7
      847 GETTABLEKS                       R42 R42 K133 ["FONT"]
      849 SETTABLEKS                       R42 R41 K125 ["Font"]
      851 SETTABLEKS                       R21 R41 K89 ["Text"]
      853 GETTABLEKS                       R42 R2 K52 ["uploadResult"]
      855 GETTABLEKS                       R42 R42 K160 ["link"]
      857 SETTABLEKS                       R42 R41 K126 ["TextColor3"]
      859 GETUPVAL                         R42 7
      860 GETTABLEKS                       R42 R42 K26 ["FONT_SIZE_MEDIUM"]
      862 SETTABLEKS                       R42 R41 K127 ["TextSize"]
      864 GETIMPORT                        R42 K72 [UDim2.new]
      866 LOADN                            R43 1
      867 LOADN                            R44 0
      868 LOADN                            R45 0
      869 LOADN                            R46 24
      870 CALL                             R42 4 1
      871 SETTABLEKS                       R42 R41 K48 ["Size"]
      873 GETIMPORT                        R42 K137 [Enum.TextYAlignment.Center]
      875 SETTABLEKS                       R42 R41 K129 ["TextYAlignment"]
      877 LOADN                            R42 4
      878 SETTABLEKS                       R42 R41 K120 ["LayoutOrder"]
      880 GETUPVAL                         R42 12
      881 GETTABLEKS                       R42 R42 K161 ["Event"]
      883 GETTABLEKS                       R42 R42 K162 ["Activated"]
      885 NEWCLOSURE                       R43 P3
      886 CAPTURE                          UPVAL U19
      887 CAPTURE                          REF R21
      888 SETTABLE                         R43 R41 R42
      889 CALL                             R39 2 1
      890 JUMP                             ; [+1]
      891 LOADNIL                          R39
      892 SETTABLEKS                       R39 R38 K144 ["ToolboxLink"]
      894 JUMPIFNOT                        R20 ; [+99]
      895 GETUPVAL                         R39 12
      896 GETTABLEKS                       R39 R39 K42 ["createElement"]
      898 GETUPVAL                         R40 20
      899 DUPTABLE                         R41 K173 [{["OnLinkClicked"], ["Text"], ["LinkText"], ["LinkPlaceholder"], ["AutomaticSize"], ["TextXAlignment"], ["HorizontalAlignment"], ["MaxWidth"] = 400, ["TextProps"], ["LayoutOrder"] = 5}]
      900 GETIMPORT                        R43 K175 [game]
      902 LOADK                            R45 K176 ["UpdateAssetUploadResultBundleConfigureLink2"]
      903 NAMECALL                         R43 R43 K177 ["GetFastFlag"]
      905 CALL                             R43 2 1
      906 JUMPIFNOT                        R43 ; [+11]
      907 GETUPVAL                         R43 1
      908 GETTABLEKS                       R43 R43 K27 ["isUGCBundleType"]
      910 GETTABLEKS                       R44 R1 K7 ["assetTypeEnum"]
      912 CALL                             R43 1 1
      913 JUMPIFNOT                        R43 ; [+4]
      914 NEWCLOSURE                       R42 P4
      915 CAPTURE                          VAL R0
      916 CAPTURE                          VAL R1
      917 JUMP                             ; [+8]
      918 GETUPVAL                         R43 21
      919 JUMPIFNOT                        R43 ; [+4]
      920 NEWCLOSURE                       R42 P5
      921 CAPTURE                          VAL R0
      922 CAPTURE                          VAL R1
      923 JUMP                             ; [+2]
      924 GETTABLEKS                       R42 R0 K178 ["openCreatorDashboard"]
      926 SETTABLEKS                       R42 R41 K166 ["OnLinkClicked"]
      928 GETTABLEKS                       R42 R1 K33 ["Localization"]
      930 LOADK                            R44 K34 ["AssetUploadResult"]
      931 LOADK                            R45 K96 ["CreatorDashboardMessage"]
      932 DUPTABLE                         R46 K98 [{"creatorDashboardLink"}]
      933 GETUPVAL                         R47 7
      934 GETTABLEKS                       R47 R47 K99 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      936 SETTABLEKS                       R47 R46 K97 ["creatorDashboardLink"]
      938 NAMECALL                         R42 R42 K36 ["getText"]
      940 CALL                             R42 4 1
      941 SETTABLEKS                       R42 R41 K89 ["Text"]
      943 GETTABLEKS                       R42 R1 K33 ["Localization"]
      945 LOADK                            R44 K179 ["General"]
      946 LOADK                            R45 K180 ["CreatorDashboard"]
      947 NAMECALL                         R42 R42 K36 ["getText"]
      949 CALL                             R42 3 1
      950 SETTABLEKS                       R42 R41 K167 ["LinkText"]
      952 GETUPVAL                         R42 7
      953 GETTABLEKS                       R42 R42 K99 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      955 SETTABLEKS                       R42 R41 K168 ["LinkPlaceholder"]
      957 GETIMPORT                        R42 K51 [Enum.AutomaticSize.Y]
      959 SETTABLEKS                       R42 R41 K44 ["AutomaticSize"]
      961 GETIMPORT                        R42 K136 [Enum.TextXAlignment.Center]
      963 SETTABLEKS                       R42 R41 K128 ["TextXAlignment"]
      965 GETIMPORT                        R42 K117 [Enum.HorizontalAlignment.Center]
      967 SETTABLEKS                       R42 R41 K109 ["HorizontalAlignment"]
      969 DUPTABLE                         R42 K181 [{"Font", "TextColor3", "TextSize", "TextXAlignment"}]
      970 GETUPVAL                         R43 7
      971 GETTABLEKS                       R43 R43 K133 ["FONT"]
      973 SETTABLEKS                       R43 R42 K125 ["Font"]
      975 GETTABLEKS                       R43 R2 K52 ["uploadResult"]
      977 GETTABLEKS                       R43 R43 K156 ["text"]
      979 SETTABLEKS                       R43 R42 K126 ["TextColor3"]
      981 GETUPVAL                         R43 7
      982 GETTABLEKS                       R43 R43 K135 ["FONT_SIZE_TITLE"]
      984 SETTABLEKS                       R43 R42 K127 ["TextSize"]
      986 GETIMPORT                        R43 K136 [Enum.TextXAlignment.Center]
      988 SETTABLEKS                       R43 R42 K128 ["TextXAlignment"]
      990 SETTABLEKS                       R42 R41 K171 ["TextProps"]
      992 CALL                             R39 2 1
      993 JUMP                             ; [+1]
      994 LOADNIL                          R39
      995 SETTABLEKS                       R39 R38 K145 ["CreatorDashboardMsg"]
      997 CALL                             R35 3 1
      998 SETTABLEKS                       R35 R34 K106 ["Rows"]
     1000 CALL                             R31 3 1
     1001 SETTABLEKS                       R31 R30 K56 ["LoadingResultSuccess"]
     1003 GETUPVAL                         R32 15
     1004 CALL                             R32 0 1
     1005 JUMPIFNOT                        R32 ; [+21]
     1006 MOVE                             R31 R13
     1007 JUMPIFNOT                        R31 ; [+230]
     1008 GETUPVAL                         R31 16
     1009 GETTABLEKS                       R31 R31 K42 ["createElement"]
     1011 GETUPVAL                         R32 22
     1012 DUPTABLE                         R33 K182 [{"Localization", "Stylizer", "networkError", "onDashboardLinkClicked"}]
     1013 GETTABLEKS                       R34 R1 K33 ["Localization"]
     1015 SETTABLEKS                       R34 R33 K33 ["Localization"]
     1017 SETTABLEKS                       R2 R33 K1 ["Stylizer"]
     1019 SETTABLEKS                       R3 R33 K2 ["networkError"]
     1021 GETTABLEKS                       R34 R0 K183 ["openCreatorDashboardCreationsPage"]
     1023 SETTABLEKS                       R34 R33 K88 ["onDashboardLinkClicked"]
     1025 CALL                             R31 2 1
     1026 JUMP                             ; [+211]
     1027 MOVE                             R31 R13
     1028 JUMPIFNOT                        R31 ; [+209]
     1029 GETUPVAL                         R31 12
     1030 GETTABLEKS                       R31 R31 K42 ["createElement"]
     1032 LOADK                            R32 K43 ["Frame"]
     1033 DUPTABLE                         R33 K101 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1}]
     1034 GETIMPORT                        R34 K72 [UDim2.new]
     1036 LOADN                            R35 0
     1037 LOADN                            R36 0
     1038 LOADN                            R37 0
     1039 LOADN                            R38 279
     1040 CALL                             R34 4 1
     1041 SETTABLEKS                       R34 R33 K66 ["Position"]
     1043 GETIMPORT                        R34 K72 [UDim2.new]
     1045 LOADN                            R35 1
     1046 LOADN                            R36 0
     1047 LOADN                            R37 1
     1048 LOADN                            R38 -279
     1049 CALL                             R34 4 1
     1050 SETTABLEKS                       R34 R33 K48 ["Size"]
     1052 DUPTABLE                         R34 K185 [{"ReasonTextFrame"}]
     1053 GETUPVAL                         R35 12
     1054 GETTABLEKS                       R35 R35 K42 ["createElement"]
     1056 GETUPVAL                         R36 23
     1057 DUPTABLE                         R37 K189 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Layout"], ["LayoutOrder"] = 1, ["Padding"] = 8, ["Size"], ["Spacing"] = 12}]
     1058 GETIMPORT                        R38 K51 [Enum.AutomaticSize.Y]
     1060 SETTABLEKS                       R38 R37 K44 ["AutomaticSize"]
     1062 GETIMPORT                        R38 K115 [Enum.FillDirection.Vertical]
     1064 SETTABLEKS                       R38 R37 K186 ["Layout"]
     1066 GETIMPORT                        R38 K72 [UDim2.new]
     1068 LOADN                            R39 1
     1069 LOADN                            R40 0
     1070 LOADN                            R41 0
     1071 LOADN                            R42 0
     1072 CALL                             R38 4 1
     1073 SETTABLEKS                       R38 R37 K48 ["Size"]
     1075 DUPTABLE                         R38 K191 [{"Title", "ReasonWithDashboardLink"}]
     1076 GETUPVAL                         R39 12
     1077 GETTABLEKS                       R39 R39 K42 ["createElement"]
     1079 LOADK                            R40 K124 ["TextLabel"]
     1080 DUPTABLE                         R41 K192 [{["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"] = 1, ["Position"], ["Size"], ["Text"], ["TextColor3"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"]}]
     1081 GETUPVAL                         R42 7
     1082 GETTABLEKS                       R42 R42 K133 ["FONT"]
     1084 SETTABLEKS                       R42 R41 K125 ["Font"]
     1086 GETIMPORT                        R42 K72 [UDim2.new]
     1088 LOADK                            R43 K73 [0.5]
     1089 LOADN                            R44 -200
     1090 LOADN                            R45 0
     1091 LOADN                            R46 0
     1092 CALL                             R42 4 1
     1093 SETTABLEKS                       R42 R41 K66 ["Position"]
     1095 GETIMPORT                        R42 K72 [UDim2.new]
     1097 LOADN                            R43 0
     1098 LOADN                            R44 400
     1099 LOADN                            R45 0
     1100 LOADN                            R46 36
     1101 CALL                             R42 4 1
     1102 SETTABLEKS                       R42 R41 K48 ["Size"]
     1104 GETUPVAL                         R43 11
     1105 CALL                             R43 0 1
     1106 JUMPIFNOT                        R43 ; [+8]
     1107 GETTABLEKS                       R42 R1 K33 ["Localization"]
     1109 LOADK                            R44 K34 ["AssetUploadResult"]
     1110 LOADK                            R45 K37 ["SubmissionFailed"]
     1111 NAMECALL                         R42 R42 K36 ["getText"]
     1113 CALL                             R42 3 1
     1114 JUMP                             ; [+1]
     1115 LOADK                            R42 K132 ["Submission failed"]
     1116 SETTABLEKS                       R42 R41 K89 ["Text"]
     1118 GETTABLEKS                       R42 R2 K52 ["uploadResult"]
     1120 GETTABLEKS                       R42 R42 K193 ["redText"]
     1122 SETTABLEKS                       R42 R41 K126 ["TextColor3"]
     1124 GETUPVAL                         R42 7
     1125 GETTABLEKS                       R42 R42 K135 ["FONT_SIZE_TITLE"]
     1127 SETTABLEKS                       R42 R41 K127 ["TextSize"]
     1129 GETIMPORT                        R42 K136 [Enum.TextXAlignment.Center]
     1131 SETTABLEKS                       R42 R41 K128 ["TextXAlignment"]
     1133 GETIMPORT                        R42 K137 [Enum.TextYAlignment.Center]
     1135 SETTABLEKS                       R42 R41 K129 ["TextYAlignment"]
     1137 CALL                             R39 2 1
     1138 SETTABLEKS                       R39 R38 K103 ["Title"]
     1140 GETUPVAL                         R39 12
     1141 GETTABLEKS                       R39 R39 K42 ["createElement"]
     1143 GETUPVAL                         R40 20
     1144 DUPTABLE                         R41 K194 [{["HorizontalAlignment"], ["LayoutOrder"] = 3, ["LinkPlaceholder"], ["LinkText"], ["MaxWidth"] = 400, ["OnLinkClicked"], ["Text"], ["TextProps"]}]
     1145 GETIMPORT                        R42 K117 [Enum.HorizontalAlignment.Center]
     1147 SETTABLEKS                       R42 R41 K109 ["HorizontalAlignment"]
     1149 GETUPVAL                         R42 7
     1150 GETTABLEKS                       R42 R42 K99 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
     1152 SETTABLEKS                       R42 R41 K168 ["LinkPlaceholder"]
     1154 GETTABLEKS                       R42 R0 K0 ["props"]
     1156 GETTABLEKS                       R42 R42 K33 ["Localization"]
     1158 LOADK                            R44 K179 ["General"]
     1159 LOADK                            R45 K180 ["CreatorDashboard"]
     1160 NAMECALL                         R42 R42 K36 ["getText"]
     1162 CALL                             R42 3 1
     1163 SETTABLEKS                       R42 R41 K167 ["LinkText"]
     1165 GETTABLEKS                       R42 R0 K183 ["openCreatorDashboardCreationsPage"]
     1167 SETTABLEKS                       R42 R41 K166 ["OnLinkClicked"]
     1169 MOVE                             R42 R3
     1170 JUMPIFNOT                        R42 ; [+2]
     1171 GETTABLEKS                       R42 R3 K195 ["responseBody"]
     1173 SETTABLEKS                       R42 R41 K89 ["Text"]
     1175 GETUPVAL                         R43 24
     1176 CALL                             R43 0 1
     1177 JUMPIFNOT                        R43 ; [+26]
     1178 DUPTABLE                         R42 K199 [{["Font"], ["TextColor"], ["TextSelectable"] = True, ["TextSize"], ["TextXAlignment"], ["TextYAlignment"]}]
     1179 GETUPVAL                         R43 7
     1180 GETTABLEKS                       R43 R43 K133 ["FONT"]
     1182 SETTABLEKS                       R43 R42 K125 ["Font"]
     1184 GETTABLEKS                       R43 R2 K52 ["uploadResult"]
     1186 GETTABLEKS                       R43 R43 K156 ["text"]
     1188 SETTABLEKS                       R43 R42 K196 ["TextColor"]
     1190 GETUPVAL                         R43 7
     1191 GETTABLEKS                       R43 R43 K26 ["FONT_SIZE_MEDIUM"]
     1193 SETTABLEKS                       R43 R42 K127 ["TextSize"]
     1195 GETIMPORT                        R43 K136 [Enum.TextXAlignment.Center]
     1197 SETTABLEKS                       R43 R42 K128 ["TextXAlignment"]
     1199 GETIMPORT                        R43 K200 [Enum.TextYAlignment.Top]
     1201 SETTABLEKS                       R43 R42 K129 ["TextYAlignment"]
     1203 JUMP                             ; [+25]
     1204 DUPTABLE                         R42 K201 [{"Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
     1205 GETUPVAL                         R43 7
     1206 GETTABLEKS                       R43 R43 K133 ["FONT"]
     1208 SETTABLEKS                       R43 R42 K125 ["Font"]
     1210 GETTABLEKS                       R43 R2 K52 ["uploadResult"]
     1212 GETTABLEKS                       R43 R43 K156 ["text"]
     1214 SETTABLEKS                       R43 R42 K126 ["TextColor3"]
     1216 GETUPVAL                         R43 7
     1217 GETTABLEKS                       R43 R43 K26 ["FONT_SIZE_MEDIUM"]
     1219 SETTABLEKS                       R43 R42 K127 ["TextSize"]
     1221 GETIMPORT                        R43 K136 [Enum.TextXAlignment.Center]
     1223 SETTABLEKS                       R43 R42 K128 ["TextXAlignment"]
     1225 GETIMPORT                        R43 K200 [Enum.TextYAlignment.Top]
     1227 SETTABLEKS                       R43 R42 K129 ["TextYAlignment"]
     1229 SETTABLEKS                       R42 R41 K171 ["TextProps"]
     1231 CALL                             R39 2 1
     1232 SETTABLEKS                       R39 R38 K190 ["ReasonWithDashboardLink"]
     1234 CALL                             R35 3 1
     1235 SETTABLEKS                       R35 R34 K184 ["ReasonTextFrame"]
     1237 CALL                             R31 3 1
     1238 SETTABLEKS                       R31 R30 K57 ["LoadingResultFailure"]
     1240 GETUPVAL                         R32 25
     1241 CALL                             R32 0 1
     1242 JUMPIFNOT                        R32 ; [+20]
     1243 GETTABLEKS                       R32 R0 K202 ["state"]
     1245 GETTABLEKS                       R32 R32 K203 ["showWarning"]
     1247 JUMPIFNOT                        R32 ; [+15]
     1248 GETUPVAL                         R31 12
     1249 GETTABLEKS                       R31 R31 K42 ["createElement"]
     1251 GETUPVAL                         R32 26
     1252 DUPTABLE                         R33 K206 [{"NonBlockingDependencyIssues", "OnClose"}]
     1253 GETTABLEKS                       R34 R1 K207 ["nonBlockingDependencyIssues"]
     1255 SETTABLEKS                       R34 R33 K204 ["NonBlockingDependencyIssues"]
     1257 GETTABLEKS                       R34 R0 K208 ["onWarningDialogClose"]
     1259 SETTABLEKS                       R34 R33 K205 ["OnClose"]
     1261 CALL                             R31 2 1
     1262 JUMP                             ; [+1]
     1263 LOADNIL                          R31
     1264 SETTABLEKS                       R31 R30 K58 ["DependencyWarningDialog"]
     1266 GETUPVAL                         R32 15
     1267 CALL                             R32 0 1
     1268 JUMPIFNOT                        R32 ; [+61]
     1269 GETUPVAL                         R31 16
     1270 GETTABLEKS                       R31 R31 K42 ["createElement"]
     1272 GETUPVAL                         R32 27
     1273 DUPTABLE                         R33 K215 [{"Localization", "primaryButtonText", "onPrimaryButtonActivated", "showCloseLink", "showBackLink", "onGoToNextScreen", "onClose"}]
     1274 GETTABLEKS                       R34 R1 K33 ["Localization"]
     1276 SETTABLEKS                       R34 R33 K33 ["Localization"]
     1278 JUMPIFNOT                        R15 ; [+8]
     1279 GETTABLEKS                       R34 R1 K33 ["Localization"]
     1281 LOADK                            R36 K34 ["AssetUploadResult"]
     1282 LOADK                            R37 K216 ["SubmitAsDevelopmentItem"]
     1283 NAMECALL                         R34 R34 K36 ["getText"]
     1285 CALL                             R34 3 1
     1286 JUMP                             ; [+19]
     1287 JUMPIFNOT                        R18 ; [+8]
     1288 GETTABLEKS                       R34 R1 K33 ["Localization"]
     1290 LOADK                            R36 K34 ["AssetUploadResult"]
     1291 LOADK                            R37 K217 ["NextSubmit"]
     1292 NAMECALL                         R34 R34 K36 ["getText"]
     1294 CALL                             R34 3 1
     1295 JUMP                             ; [+10]
     1296 JUMPIFNOT                        R16 ; [+8]
     1297 GETTABLEKS                       R34 R1 K33 ["Localization"]
     1299 LOADK                            R36 K34 ["AssetUploadResult"]
     1300 LOADK                            R37 K218 ["Close"]
     1301 NAMECALL                         R34 R34 K36 ["getText"]
     1303 CALL                             R34 3 1
     1304 JUMP                             ; [+1]
     1305 LOADNIL                          R34
     1306 SETTABLEKS                       R34 R33 K209 ["primaryButtonText"]
     1308 JUMPIFNOT                        R15 ; [+3]
     1309 GETTABLEKS                       R34 R0 K219 ["goToNextScreen"]
     1311 JUMP                             ; [+2]
     1312 GETTABLEKS                       R34 R0 K214 ["onClose"]
     1314 SETTABLEKS                       R34 R33 K210 ["onPrimaryButtonActivated"]
     1316 SETTABLEKS                       R15 R33 K211 ["showCloseLink"]
     1318 SETTABLEKS                       R17 R33 K212 ["showBackLink"]
     1320 GETTABLEKS                       R34 R0 K219 ["goToNextScreen"]
     1322 SETTABLEKS                       R34 R33 K213 ["onGoToNextScreen"]
     1324 GETTABLEKS                       R34 R0 K214 ["onClose"]
     1326 SETTABLEKS                       R34 R33 K214 ["onClose"]
     1328 CALL                             R31 2 1
     1329 JUMP                             ; [+231]
     1330 GETUPVAL                         R31 12
     1331 GETTABLEKS                       R31 R31 K42 ["createElement"]
     1333 LOADK                            R32 K43 ["Frame"]
     1334 DUPTABLE                         R33 K220 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Position"], ["Size"]}]
     1335 GETIMPORT                        R34 K51 [Enum.AutomaticSize.Y]
     1337 SETTABLEKS                       R34 R33 K44 ["AutomaticSize"]
     1339 GETIMPORT                        R34 K72 [UDim2.new]
     1341 LOADN                            R35 0
     1342 LOADN                            R36 0
     1343 LOADN                            R37 1
     1344 MINUS                            R38 R19
     1345 CALL                             R34 4 1
     1346 SETTABLEKS                       R34 R33 K66 ["Position"]
     1348 GETIMPORT                        R34 K72 [UDim2.new]
     1350 LOADN                            R35 1
     1351 LOADN                            R36 0
     1352 LOADN                            R37 0
     1353 MOVE                             R38 R19
     1354 CALL                             R34 4 1
     1355 SETTABLEKS                       R34 R33 K48 ["Size"]
     1357 DUPTABLE                         R34 K225 [{"UIListLayout", "SubmitButton", "NextButton", "CloseLink", "CloseButton", "LinkText"}]
     1358 GETUPVAL                         R35 12
     1359 GETTABLEKS                       R35 R35 K42 ["createElement"]
     1361 LOADK                            R36 K102 ["UIListLayout"]
     1362 DUPTABLE                         R37 K226 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder"}]
     1363 GETIMPORT                        R38 K115 [Enum.FillDirection.Vertical]
     1365 SETTABLEKS                       R38 R37 K108 ["FillDirection"]
     1367 GETIMPORT                        R38 K117 [Enum.HorizontalAlignment.Center]
     1369 SETTABLEKS                       R38 R37 K109 ["HorizontalAlignment"]
     1371 GETIMPORT                        R38 K123 [UDim.new]
     1373 LOADN                            R39 0
     1374 LOADN                            R40 10
     1375 CALL                             R38 2 1
     1376 SETTABLEKS                       R38 R37 K112 ["Padding"]
     1378 GETIMPORT                        R38 K121 [Enum.SortOrder.LayoutOrder]
     1380 SETTABLEKS                       R38 R37 K111 ["SortOrder"]
     1382 CALL                             R35 2 1
     1383 SETTABLEKS                       R35 R34 K102 ["UIListLayout"]
     1385 JUMPIFNOT                        R15 ; [+38]
     1386 GETUPVAL                         R35 12
     1387 GETTABLEKS                       R35 R35 K42 ["createElement"]
     1389 GETUPVAL                         R36 28
     1390 DUPTABLE                         R37 K229 [{"AutomaticSize", "LayoutOrder", "onClick", "Size", "titleText"}]
     1391 GETIMPORT                        R38 K231 [Enum.AutomaticSize.X]
     1393 SETTABLEKS                       R38 R37 K44 ["AutomaticSize"]
     1395 NAMECALL                         R38 R24 K232 ["getNextOrder"]
     1397 CALL                             R38 1 1
     1398 SETTABLEKS                       R38 R37 K120 ["LayoutOrder"]
     1400 GETTABLEKS                       R38 R0 K219 ["goToNextScreen"]
     1402 SETTABLEKS                       R38 R37 K227 ["onClick"]
     1404 GETIMPORT                        R38 K72 [UDim2.new]
     1406 LOADN                            R39 0
     1407 GETUPVAL                         R40 29
     1408 LOADN                            R41 0
     1409 LOADN                            R42 32
     1410 CALL                             R38 4 1
     1411 SETTABLEKS                       R38 R37 K48 ["Size"]
     1413 GETTABLEKS                       R38 R1 K33 ["Localization"]
     1415 LOADK                            R40 K34 ["AssetUploadResult"]
     1416 LOADK                            R41 K216 ["SubmitAsDevelopmentItem"]
     1417 NAMECALL                         R38 R38 K36 ["getText"]
     1419 CALL                             R38 3 1
     1420 SETTABLEKS                       R38 R37 K228 ["titleText"]
     1422 CALL                             R35 2 1
     1423 JUMP                             ; [+1]
     1424 LOADNIL                          R35
     1425 SETTABLEKS                       R35 R34 K221 ["SubmitButton"]
     1427 JUMPIFNOT                        R18 ; [+38]
     1428 GETUPVAL                         R35 12
     1429 GETTABLEKS                       R35 R35 K42 ["createElement"]
     1431 GETUPVAL                         R36 28
     1432 DUPTABLE                         R37 K229 [{"AutomaticSize", "LayoutOrder", "onClick", "Size", "titleText"}]
     1433 GETIMPORT                        R38 K231 [Enum.AutomaticSize.X]
     1435 SETTABLEKS                       R38 R37 K44 ["AutomaticSize"]
     1437 NAMECALL                         R38 R24 K232 ["getNextOrder"]
     1439 CALL                             R38 1 1
     1440 SETTABLEKS                       R38 R37 K120 ["LayoutOrder"]
     1442 GETTABLEKS                       R38 R0 K214 ["onClose"]
     1444 SETTABLEKS                       R38 R37 K227 ["onClick"]
     1446 GETIMPORT                        R38 K72 [UDim2.new]
     1448 LOADN                            R39 0
     1449 LOADN                            R40 200
     1450 LOADN                            R41 0
     1451 LOADN                            R42 32
     1452 CALL                             R38 4 1
     1453 SETTABLEKS                       R38 R37 K48 ["Size"]
     1455 GETTABLEKS                       R38 R1 K33 ["Localization"]
     1457 LOADK                            R40 K34 ["AssetUploadResult"]
     1458 LOADK                            R41 K217 ["NextSubmit"]
     1459 NAMECALL                         R38 R38 K36 ["getText"]
     1461 CALL                             R38 3 1
     1462 SETTABLEKS                       R38 R37 K228 ["titleText"]
     1464 CALL                             R35 2 1
     1465 JUMP                             ; [+1]
     1466 LOADNIL                          R35
     1467 SETTABLEKS                       R35 R34 K222 ["NextButton"]
     1469 JUMPIFNOT                        R15 ; [+25]
     1470 GETUPVAL                         R35 12
     1471 GETTABLEKS                       R35 R35 K42 ["createElement"]
     1473 GETUPVAL                         R36 30
     1474 DUPTABLE                         R37 K234 [{"LayoutOrder", "OnClick", "Text"}]
     1475 NAMECALL                         R38 R24 K232 ["getNextOrder"]
     1477 CALL                             R38 1 1
     1478 SETTABLEKS                       R38 R37 K120 ["LayoutOrder"]
     1480 GETTABLEKS                       R38 R0 K214 ["onClose"]
     1482 SETTABLEKS                       R38 R37 K233 ["OnClick"]
     1484 GETTABLEKS                       R38 R1 K33 ["Localization"]
     1486 LOADK                            R40 K34 ["AssetUploadResult"]
     1487 LOADK                            R41 K218 ["Close"]
     1488 NAMECALL                         R38 R38 K36 ["getText"]
     1490 CALL                             R38 3 1
     1491 SETTABLEKS                       R38 R37 K89 ["Text"]
     1493 CALL                             R35 2 1
     1494 JUMP                             ; [+1]
     1495 LOADNIL                          R35
     1496 SETTABLEKS                       R35 R34 K223 ["CloseLink"]
     1498 JUMPIFNOT                        R16 ; [+34]
     1499 GETUPVAL                         R35 12
     1500 GETTABLEKS                       R35 R35 K42 ["createElement"]
     1502 GETUPVAL                         R36 28
     1503 DUPTABLE                         R37 K235 [{"LayoutOrder", "onClick", "Size", "titleText"}]
     1504 NAMECALL                         R38 R24 K232 ["getNextOrder"]
     1506 CALL                             R38 1 1
     1507 SETTABLEKS                       R38 R37 K120 ["LayoutOrder"]
     1509 GETTABLEKS                       R38 R0 K214 ["onClose"]
     1511 SETTABLEKS                       R38 R37 K227 ["onClick"]
     1513 GETIMPORT                        R38 K72 [UDim2.new]
     1515 LOADN                            R39 0
     1516 LOADN                            R40 120
     1517 LOADN                            R41 0
     1518 LOADN                            R42 32
     1519 CALL                             R38 4 1
     1520 SETTABLEKS                       R38 R37 K48 ["Size"]
     1522 GETTABLEKS                       R38 R1 K33 ["Localization"]
     1524 LOADK                            R40 K34 ["AssetUploadResult"]
     1525 LOADK                            R41 K218 ["Close"]
     1526 NAMECALL                         R38 R38 K36 ["getText"]
     1528 CALL                             R38 3 1
     1529 SETTABLEKS                       R38 R37 K228 ["titleText"]
     1531 CALL                             R35 2 1
     1532 JUMP                             ; [+1]
     1533 LOADNIL                          R35
     1534 SETTABLEKS                       R35 R34 K224 ["CloseButton"]
     1536 JUMPIFNOT                        R17 ; [+20]
     1537 GETUPVAL                         R35 12
     1538 GETTABLEKS                       R35 R35 K42 ["createElement"]
     1540 GETUPVAL                         R36 30
     1541 DUPTABLE                         R37 K236 [{["LayoutOrder"] = 1, ["OnClick"], ["Text"]}]
     1542 GETTABLEKS                       R38 R0 K219 ["goToNextScreen"]
     1544 SETTABLEKS                       R38 R37 K233 ["OnClick"]
     1546 GETTABLEKS                       R38 R1 K33 ["Localization"]
     1548 LOADK                            R40 K34 ["AssetUploadResult"]
     1549 LOADK                            R41 K237 ["Back"]
     1550 NAMECALL                         R38 R38 K36 ["getText"]
     1552 CALL                             R38 3 1
     1553 SETTABLEKS                       R38 R37 K89 ["Text"]
     1555 CALL                             R35 2 1
     1556 JUMP                             ; [+1]
     1557 LOADNIL                          R35
     1558 SETTABLEKS                       R35 R34 K167 ["LinkText"]
     1560 CALL                             R31 3 1
     1561 SETTABLEKS                       R31 R30 K59 ["Footer"]
     1563 CALL                             R27 3 -1
     1564 CLOSEUPVALS                      R21
     1565 RETURN                           R27 -1

PROTO_18:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K19 [{"assetId", "assetName", "uploadSucceeded", "instances", "networkError", "screenFlowType", "assetConfigData", "assetTypeEnum", "currentTab", "thumbnailStatus", "networkTable", "iconFile", "hasSubsequent", "animationPackType", "animationPackSubName", "animationPackWeight", "animationPackParentModelName", "animationSectionValid", "nonBlockingDependencyIssues"}]
        6 GETTABLEKS                       R3 R0 K0 ["assetId"]
        8 SETTABLEKS                       R3 R2 K0 ["assetId"]
       10 GETTABLEKS                       R4 R0 K20 ["changed"]
       12 JUMPIFNOT                        R4 ; [+5]
       13 GETTABLEKS                       R3 R0 K20 ["changed"]
       15 GETTABLEKS                       R3 R3 K21 ["AssetConfigName"]
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
       46 GETUPVAL                         R4 0
       47 CALL                             R4 0 1
       48 JUMPIFNOT                        R4 ; [+3]
       49 GETTABLEKS                       R3 R0 K8 ["currentTab"]
       51 JUMP                             ; [+1]
       52 LOADNIL                          R3
       53 SETTABLEKS                       R3 R2 K8 ["currentTab"]
       55 GETTABLEKS                       R3 R0 K9 ["thumbnailStatus"]
       57 SETTABLEKS                       R3 R2 K9 ["thumbnailStatus"]
       59 GETTABLEKS                       R3 R0 K10 ["networkTable"]
       61 JUMPIF                           R3 ; [+2]
       62 NEWTABLE                         R3 0 0
       64 SETTABLEKS                       R3 R2 K10 ["networkTable"]
       66 GETTABLEKS                       R3 R0 K11 ["iconFile"]
       68 SETTABLEKS                       R3 R2 K11 ["iconFile"]
       70 GETTABLEKS                       R3 R0 K12 ["hasSubsequent"]
       72 SETTABLEKS                       R3 R2 K12 ["hasSubsequent"]
       74 GETUPVAL                         R4 1
       75 CALL                             R4 0 1
       76 JUMPIFNOT                        R4 ; [+3]
       77 GETTABLEKS                       R3 R0 K13 ["animationPackType"]
       79 JUMP                             ; [+1]
       80 LOADNIL                          R3
       81 SETTABLEKS                       R3 R2 K13 ["animationPackType"]
       83 GETUPVAL                         R4 1
       84 CALL                             R4 0 1
       85 JUMPIFNOT                        R4 ; [+3]
       86 GETTABLEKS                       R3 R0 K14 ["animationPackSubName"]
       88 JUMP                             ; [+1]
       89 LOADNIL                          R3
       90 SETTABLEKS                       R3 R2 K14 ["animationPackSubName"]
       92 GETUPVAL                         R4 1
       93 CALL                             R4 0 1
       94 JUMPIFNOT                        R4 ; [+3]
       95 GETTABLEKS                       R3 R0 K15 ["animationPackWeight"]
       97 JUMP                             ; [+1]
       98 LOADNIL                          R3
       99 SETTABLEKS                       R3 R2 K15 ["animationPackWeight"]
      101 GETUPVAL                         R4 1
      102 CALL                             R4 0 1
      103 JUMPIFNOT                        R4 ; [+3]
      104 GETTABLEKS                       R3 R0 K16 ["animationPackParentModelName"]
      106 JUMP                             ; [+1]
      107 LOADNIL                          R3
      108 SETTABLEKS                       R3 R2 K16 ["animationPackParentModelName"]
      110 GETUPVAL                         R4 1
      111 CALL                             R4 0 1
      112 JUMPIFNOT                        R4 ; [+3]
      113 GETTABLEKS                       R3 R0 K17 ["animationSectionValid"]
      115 JUMP                             ; [+1]
      116 LOADNIL                          R3
      117 SETTABLEKS                       R3 R2 K17 ["animationSectionValid"]
      119 GETUPVAL                         R4 2
      120 CALL                             R4 0 1
      121 JUMPIFNOT                        R4 ; [+3]
      122 GETTABLEKS                       R3 R0 K18 ["nonBlockingDependencyIssues"]
      124 JUMP                             ; [+1]
      125 LOADNIL                          R3
      126 SETTABLEKS                       R3 R2 K18 ["nonBlockingDependencyIssues"]
      128 RETURN                           R2 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["SCREENS"]
        5 GETTABLEKS                       R2 R2 K1 ["CONFIGURE_ASSET"]
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_21:
        0 DUPTABLE                         R1 K2 [{"clearChange", "goToNextScreen"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["clearChange"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 SETTABLEKS                       R2 R1 K1 ["goToNextScreen"]
       12 RETURN                           R1 1

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
       62 GETTABLEKS                       R10 R6 K19 ["Foundation"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K16 [require]
       67 GETTABLEKS                       R11 R6 K20 ["RoactRodux"]
       69 CALL                             R10 1 1
       70 GETTABLEKS                       R11 R5 K21 ["Src"]
       72 GETTABLEKS                       R11 R11 K22 ["Util"]
       74 GETIMPORT                        R12 K16 [require]
       76 GETTABLEKS                       R13 R11 K23 ["Constants"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K16 [require]
       81 GETTABLEKS                       R14 R11 K24 ["AssetConfigConstants"]
       83 CALL                             R13 1 1
       84 GETTABLEKS                       R14 R13 K25 ["PreviewTypes"]
       86 GETIMPORT                        R15 K16 [require]
       88 GETTABLEKS                       R16 R11 K26 ["AssetConfigUtil"]
       90 CALL                             R15 1 1
       91 GETIMPORT                        R16 K16 [require]
       93 GETTABLEKS                       R17 R11 K27 ["AssetUploadUtil"]
       95 CALL                             R16 1 1
       96 GETIMPORT                        R17 K16 [require]
       98 GETTABLEKS                       R18 R11 K28 ["AnimationConfigUtil"]
      100 CALL                             R17 1 1
      101 GETIMPORT                        R18 K16 [require]
      103 GETTABLEKS                       R19 R5 K21 ["Src"]
      105 GETTABLEKS                       R19 R19 K29 ["Types"]
      107 GETTABLEKS                       R19 R19 K30 ["ConfigTypes"]
      109 CALL                             R18 1 1
      110 GETIMPORT                        R19 K16 [require]
      112 GETTABLEKS                       R20 R11 K31 ["Urls"]
      114 CALL                             R19 1 1
      115 GETIMPORT                        R20 K16 [require]
      117 GETTABLEKS                       R21 R6 K32 ["Framework"]
      119 CALL                             R20 1 1
      120 GETTABLEKS                       R20 R20 K33 ["ContextServices"]
      122 GETTABLEKS                       R21 R20 K34 ["withContext"]
      124 GETTABLEKS                       R22 R5 K21 ["Src"]
      126 GETTABLEKS                       R22 R22 K35 ["Components"]
      128 GETIMPORT                        R23 K16 [require]
      130 GETTABLEKS                       R24 R22 K36 ["NavButton"]
      132 CALL                             R23 1 1
      133 GETTABLEKS                       R24 R22 K37 ["AssetConfiguration"]
      135 GETIMPORT                        R25 K16 [require]
      137 GETTABLEKS                       R26 R24 K38 ["AssetThumbnailPreview"]
      139 CALL                             R25 1 1
      140 GETIMPORT                        R26 K16 [require]
      142 GETTABLEKS                       R27 R24 K39 ["ReasonFrame"]
      144 CALL                             R26 1 1
      145 GETIMPORT                        R27 K16 [require]
      147 GETTABLEKS                       R28 R24 K40 ["CopyID"]
      149 CALL                             R27 1 1
      150 GETIMPORT                        R28 K16 [require]
      152 GETTABLEKS                       R29 R24 K41 ["ModelUploadWarningDialog"]
      154 CALL                             R28 1 1
      155 GETIMPORT                        R29 K16 [require]
      157 GETTABLEKS                       R30 R24 K42 ["LoadingResultSuccess"]
      159 CALL                             R29 1 1
      160 GETIMPORT                        R30 K16 [require]
      162 GETTABLEKS                       R31 R24 K43 ["LoadingResultFailure"]
      164 CALL                             R30 1 1
      165 GETIMPORT                        R31 K16 [require]
      167 GETTABLEKS                       R32 R24 K44 ["AssetUploadResultFooter"]
      169 CALL                             R31 1 1
      170 GETIMPORT                        R32 K16 [require]
      172 GETTABLEKS                       R33 R6 K32 ["Framework"]
      174 CALL                             R32 1 1
      175 GETTABLEKS                       R33 R32 K45 ["UI"]
      177 GETTABLEKS                       R33 R33 K46 ["LinkText"]
      179 GETTABLEKS                       R34 R32 K45 ["UI"]
      181 GETTABLEKS                       R34 R34 K47 ["Pane"]
      183 GETTABLEKS                       R35 R32 K45 ["UI"]
      185 GETTABLEKS                       R35 R35 K48 ["TextWithInlineLink"]
      187 GETTABLEKS                       R36 R32 K22 ["Util"]
      189 GETTABLEKS                       R36 R36 K49 ["LayoutOrderIterator"]
      191 GETTABLEKS                       R37 R5 K21 ["Src"]
      193 GETTABLEKS                       R37 R37 K50 ["Actions"]
      195 GETIMPORT                        R38 K16 [require]
      197 GETTABLEKS                       R39 R37 K51 ["SetCurrentScreen"]
      199 CALL                             R38 1 1
      200 GETIMPORT                        R39 K16 [require]
      202 GETTABLEKS                       R40 R37 K52 ["ClearChange"]
      204 CALL                             R39 1 1
      205 GETIMPORT                        R40 K16 [require]
      207 GETTABLEKS                       R41 R5 K21 ["Src"]
      209 GETTABLEKS                       R41 R41 K22 ["Util"]
      211 GETTABLEKS                       R41 R41 K53 ["SharedFlags"]
      213 GETTABLEKS                       R41 R41 K54 ["getFFlagToolboxFixAssetConfigResultTranslations"]
      215 CALL                             R40 1 1
      216 GETIMPORT                        R41 K16 [require]
      218 GETTABLEKS                       R42 R5 K21 ["Src"]
      220 GETTABLEKS                       R42 R42 K55 ["Flags"]
      222 GETTABLEKS                       R42 R42 K56 ["getFFlagAllowModelUploadErrorMessageToBeSelectable"]
      224 CALL                             R41 1 1
      225 GETIMPORT                        R42 K16 [require]
      227 GETTABLEKS                       R43 R5 K21 ["Src"]
      229 GETTABLEKS                       R43 R43 K55 ["Flags"]
      231 GETTABLEKS                       R43 R43 K57 ["getFFlagEnableUploadingAvatarAnimations"]
      233 CALL                             R42 1 1
      234 GETIMPORT                        R43 K16 [require]
      236 GETTABLEKS                       R44 R11 K58 ["AvatarAnimationStudioToolboxTextures"]
      238 CALL                             R43 1 1
      239 GETIMPORT                        R44 K16 [require]
      241 GETTABLEKS                       R45 R5 K21 ["Src"]
      243 GETTABLEKS                       R45 R45 K22 ["Util"]
      245 GETTABLEKS                       R45 R45 K53 ["SharedFlags"]
      247 GETTABLEKS                       R45 R45 K59 ["getFFlagToolboxModelCreationWarningWindow"]
      249 CALL                             R44 1 1
      250 GETIMPORT                        R45 K16 [require]
      252 GETTABLEKS                       R46 R5 K21 ["Src"]
      254 GETTABLEKS                       R46 R46 K55 ["Flags"]
      256 GETTABLEKS                       R46 R46 K60 ["getFFlagToolboxAssetConfigFoundationMigration"]
      258 CALL                             R45 1 1
      259 GETIMPORT                        R46 K16 [require]
      261 GETTABLEKS                       R47 R5 K21 ["Src"]
      263 GETTABLEKS                       R47 R47 K55 ["Flags"]
      265 GETTABLEKS                       R47 R47 K61 ["getFFlagEnableUpdateAvatarItem"]
      267 CALL                             R46 1 1
      268 GETIMPORT                        R48 K1 [game]
      270 LOADK                            R50 K9 ["ToolboxFixSubmitDevelopmentItemWidth"]
      271 NAMECALL                         R48 R48 K7 ["GetFastFlag"]
      273 CALL                             R48 2 1
      274 JUMPIFNOT                        R48 ; [+2]
      275 LOADN                            R47 225
      276 JUMP                             ; [+1]
      277 LOADN                            R47 150
      278 GETTABLEKS                       R48 R7 K62 ["PureComponent"]
      280 LOADK                            R50 K63 ["AssetUploadResult"]
      281 NAMECALL                         R48 R48 K64 ["extend"]
      283 CALL                             R48 2 1
      284 DUPCLOSURE                       R49 K65 [PROTO_7]
      285 CAPTURE                          VAL R44
      286 CAPTURE                          VAL R13
      287 CAPTURE                          VAL R4
      288 CAPTURE                          VAL R19
      289 CAPTURE                          VAL R1
      290 CAPTURE                          VAL R3
      291 SETTABLEKS                       R49 R48 K66 ["init"]
      293 DUPCLOSURE                       R49 K67 [PROTO_8]
      294 CAPTURE                          VAL R44
      295 CAPTURE                          VAL R16
      296 CAPTURE                          VAL R42
      297 CAPTURE                          VAL R17
      298 SETTABLEKS                       R49 R48 K68 ["didMount"]
      300 DUPCLOSURE                       R49 K69 [PROTO_9]
      301 CAPTURE                          VAL R13
      302 CAPTURE                          VAL R15
      303 CAPTURE                          VAL R0
      304 CAPTURE                          VAL R19
      305 CAPTURE                          VAL R2
      306 DUPCLOSURE                       R50 K70 [PROTO_10]
      307 DUPCLOSURE                       R51 K71 [PROTO_17]
      308 CAPTURE                          VAL R13
      309 CAPTURE                          VAL R15
      310 CAPTURE                          VAL R46
      311 CAPTURE                          VAL R18
      312 CAPTURE                          VAL R42
      313 CAPTURE                          VAL R43
      314 CAPTURE                          VAL R14
      315 CAPTURE                          VAL R12
      316 CAPTURE                          VAL R49
      317 CAPTURE                          VAL R19
      318 CAPTURE                          VAL R36
      319 CAPTURE                          VAL R40
      320 CAPTURE                          VAL R7
      321 CAPTURE                          VAL R25
      322 CAPTURE                          VAL R27
      323 CAPTURE                          VAL R45
      324 CAPTURE                          VAL R8
      325 CAPTURE                          VAL R29
      326 CAPTURE                          VAL R9
      327 CAPTURE                          VAL R1
      328 CAPTURE                          VAL R35
      329 CAPTURE                          VAL R4
      330 CAPTURE                          VAL R30
      331 CAPTURE                          VAL R34
      332 CAPTURE                          VAL R41
      333 CAPTURE                          VAL R44
      334 CAPTURE                          VAL R28
      335 CAPTURE                          VAL R31
      336 CAPTURE                          VAL R23
      337 CAPTURE                          VAL R47
      338 CAPTURE                          VAL R33
      339 SETTABLEKS                       R51 R48 K72 ["render"]
      341 DUPCLOSURE                       R51 K73 [PROTO_18]
      342 CAPTURE                          VAL R46
      343 CAPTURE                          VAL R42
      344 CAPTURE                          VAL R44
      345 DUPCLOSURE                       R52 K74 [PROTO_21]
      346 CAPTURE                          VAL R39
      347 CAPTURE                          VAL R38
      348 CAPTURE                          VAL R13
      349 MOVE                             R53 R21
      350 DUPTABLE                         R54 K77 [{"Stylizer", "Localization"}]
      351 GETTABLEKS                       R55 R20 K75 ["Stylizer"]
      353 SETTABLEKS                       R55 R54 K75 ["Stylizer"]
      355 GETTABLEKS                       R55 R20 K76 ["Localization"]
      357 SETTABLEKS                       R55 R54 K76 ["Localization"]
      359 CALL                             R53 1 1
      360 MOVE                             R54 R48
      361 CALL                             R53 1 1
      362 MOVE                             R48 R53
      363 GETTABLEKS                       R53 R10 K78 ["connect"]
      365 MOVE                             R54 R51
      366 MOVE                             R55 R52
      367 CALL                             R53 2 1
      368 MOVE                             R54 R48
      369 CALL                             R53 1 -1
      370 RETURN                           R53 -1
