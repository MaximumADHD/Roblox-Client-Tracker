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
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+38]
        6 GETTABLEKS                       R1 R0 K1 ["animationPackType"]
        8 JUMPIFNOT                        R1 ; [+35]
        9 GETTABLEKS                       R2 R0 K2 ["assetId"]
       11 JUMPIFNOT                        R2 ; [+32]
       12 GETTABLEKS                       R2 R0 K3 ["animationSectionValid"]
       14 JUMPIFEQKB                       R2 FALSE ; [+29]
       16 JUMPIFNOTEQKS                    R1 K4 ["EmoteAnimation"] ; [+11]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K5 ["createEmoteAnimationInstanceInWorkspace"]
       21 GETTABLEKS                       R4 R0 K6 ["assetName"]
       23 OR                               R3 R4 R1
       24 GETTABLEKS                       R4 R0 K2 ["assetId"]
       26 CALL                             R2 2 0
       27 JUMP                             ; [+16]
       28 GETTABLEKS                       R2 R0 K7 ["animationPackSubName"]
       30 JUMPIFNOT                        R2 ; [+13]
       31 GETUPVAL                         R2 2
       32 GETTABLEKS                       R2 R2 K8 ["createAnimationInstanceInWorkspace"]
       34 MOVE                             R3 R1
       35 GETTABLEKS                       R4 R0 K7 ["animationPackSubName"]
       37 GETTABLEKS                       R5 R0 K2 ["assetId"]
       39 GETTABLEKS                       R6 R0 K9 ["animationPackWeight"]
       41 GETTABLEKS                       R7 R0 K10 ["animationPackParentModelName"]
       43 CALL                             R2 5 0
       44 GETTABLEKS                       R1 R0 K11 ["onClose"]
       46 CALL                             R1 0 0
       47 GETIMPORT                        R1 K13 [game]
       49 LOADK                            R3 K14 ["StudioAssetService"]
       50 NAMECALL                         R1 R1 K15 ["GetService"]
       52 CALL                             R1 2 1
       53 LOADB                            R3 0
       54 NAMECALL                         R1 R1 K16 ["FireOnUGCSubmitCompleted"]
       56 CALL                             R1 2 0
       57 RETURN                           R0 0

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
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U3
       23 SETTABLEKS                       R2 R0 K5 ["onClose"]
       25 GETUPVAL                         R2 4
       26 JUMPIFNOT                        R2 ; [+6]
       27 DUPCLOSURE                       R2 K6 [PROTO_2]
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 SETTABLEKS                       R2 R0 K7 ["openCreatorDashboard"]
       32 JUMP                             ; [+5]
       33 DUPCLOSURE                       R2 K8 [PROTO_3]
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          UPVAL U6
       36 SETTABLEKS                       R2 R0 K7 ["openCreatorDashboard"]
       38 DUPCLOSURE                       R2 K9 [PROTO_4]
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          UPVAL U6
       41 SETTABLEKS                       R2 R0 K10 ["openCreatorDashboardCreationsPage"]
       43 GETUPVAL                         R2 7
       44 JUMPIFNOT                        R2 ; [+5]
       45 DUPCLOSURE                       R2 K11 [PROTO_5]
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          UPVAL U6
       48 SETTABLEKS                       R2 R0 K12 ["openCreatorDashboardBundle"]
       50 GETUPVAL                         R2 0
       51 CALL                             R2 0 1
       52 JUMPIFNOT                        R2 ; [+4]
       53 NEWCLOSURE                       R2 P6
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R2 R0 K13 ["onWarningDialogClose"]
       57 RETURN                           R0 0

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
       24 RETURN                           R0 0

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
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openCreatorDashboardBundle"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["assetId"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openCreatorDashboard"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["assetId"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_15:
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
       34 GETTABLEKS                       R8 R8 K10 ["ModelPreview"]
       36 JUMPIFEQ                         R6 R8 ; [+2]
       38 LOADB                            R7 0 +1
       39 LOADB                            R7 1
       40 LOADB                            R8 1
       41 GETUPVAL                         R9 2
       42 GETTABLEKS                       R9 R9 K11 ["Thumbnail"]
       44 JUMPIFEQ                         R6 R9 ; [+8]
       46 GETUPVAL                         R9 2
       47 GETTABLEKS                       R9 R9 K12 ["ImagePicker"]
       49 JUMPIFEQ                         R6 R9 ; [+2]
       51 LOADB                            R8 0 +1
       52 LOADB                            R8 1
       53 GETTABLEKS                       R10 R1 K13 ["networkTable"]
       55 NEWTABLE                         R11 0 0
       57 GETIMPORT                        R12 K15 [pairs]
       59 MOVE                             R13 R10
       60 CALL                             R12 1 3
       61 FORGPREP_NEXT                    R12
       62 FASTCALL2                        TABLE_INSERT R11 R16 ; [+5]
       64 MOVE                             R18 R11
       65 MOVE                             R19 R16
       66 GETIMPORT                        R17 K18 [table.insert]
       68 CALL                             R17 2 0
       69 FORGLOOP                         R12 2 ; [-8]
       71 MOVE                             R9 R11
       72 GETTABLEKS                       R10 R1 K19 ["uploadSucceeded"]
       74 NOT                              R11 R10
       75 GETUPVAL                         R12 1
       76 GETTABLEKS                       R12 R12 K6 ["isCatalogAsset"]
       78 GETTABLEKS                       R13 R1 K7 ["assetTypeEnum"]
       80 CALL                             R12 1 1
       81 AND                              R13 R10 R12
       82 JUMPIF                           R10 ; [+2]
       83 MOVE                             R14 R12
       84 JUMPIF                           R14 ; [+1]
       85 NOT                              R14 R12
       86 LOADB                            R15 1
       87 LOADNIL                          R16
       88 GETTABLEKS                       R17 R1 K20 ["hasSubsequent"]
       90 JUMPIFNOT                        R17 ; [+4]
       91 LOADB                            R13 0
       92 LOADB                            R15 0
       93 LOADB                            R14 0
       94 LOADB                            R16 1
       95 LOADN                            R18 72
       96 GETUPVAL                         R19 3
       97 GETTABLEKS                       R19 R19 K21 ["FONT_SIZE_MEDIUM"]
       99 ADD                              R17 R18 R19
      100 GETUPVAL                         R18 1
      101 GETTABLEKS                       R18 R18 K6 ["isCatalogAsset"]
      103 GETTABLEKS                       R19 R1 K7 ["assetTypeEnum"]
      105 CALL                             R18 1 1
      106 JUMPIF                           R18 ; [+6]
      107 GETUPVAL                         R18 1
      108 GETTABLEKS                       R18 R18 K22 ["isUGCBundleType"]
      110 GETTABLEKS                       R19 R1 K7 ["assetTypeEnum"]
      112 CALL                             R18 1 1
      113 LOADNIL                          R19
      114 JUMPIF                           R18 ; [+13]
      115 GETTABLEKS                       R20 R1 K19 ["uploadSucceeded"]
      117 JUMPIFNOT                        R20 ; [+10]
      118 GETUPVAL                         R20 4
      119 GETTABLEKS                       R21 R1 K3 ["screenFlowType"]
      121 GETTABLEKS                       R23 R1 K24 ["assetId"]
      123 ORK                              R22 R23 K23 [0]
      124 GETTABLEKS                       R23 R1 K7 ["assetTypeEnum"]
      126 CALL                             R20 3 1
      127 MOVE                             R19 R20
      128 GETUPVAL                         R20 5
      129 GETTABLEKS                       R20 R20 K25 ["constructCreatorStoreConfigurationUrl"]
      131 GETTABLEKS                       R22 R1 K24 ["assetId"]
      133 ORK                              R21 R22 K23 [0]
      134 CALL                             R20 1 1
      135 GETUPVAL                         R21 1
      136 GETTABLEKS                       R21 R21 K26 ["isCreatorStoreAssetNotIncludingAnimation"]
      138 GETTABLEKS                       R22 R1 K7 ["assetTypeEnum"]
      140 CALL                             R21 1 1
      141 JUMPIFNOT                        R21 ; [+1]
      142 NOT                              R21 R18
      143 GETUPVAL                         R22 6
      144 GETTABLEKS                       R22 R22 K27 ["new"]
      146 CALL                             R22 0 1
      147 LOADNIL                          R23
      148 GETUPVAL                         R24 7
      149 CALL                             R24 0 1
      150 JUMPIFNOT                        R24 ; [+20]
      151 GETTABLEKS                       R24 R1 K19 ["uploadSucceeded"]
      153 JUMPIFNOT                        R24 ; [+9]
      154 GETTABLEKS                       R24 R1 K28 ["Localization"]
      156 LOADK                            R26 K29 ["AssetUploadResult"]
      157 LOADK                            R27 K30 ["SubmissionSucceeded"]
      158 NAMECALL                         R24 R24 K31 ["getText"]
      160 CALL                             R24 3 1
      161 MOVE                             R23 R24
      162 JUMP                             ; [+8]
      163 GETTABLEKS                       R24 R1 K28 ["Localization"]
      165 LOADK                            R26 K29 ["AssetUploadResult"]
      166 LOADK                            R27 K32 ["SubmissionFailed"]
      167 NAMECALL                         R24 R24 K31 ["getText"]
      169 CALL                             R24 3 1
      170 MOVE                             R23 R24
      171 GETTABLEKS                       R25 R1 K7 ["assetTypeEnum"]
      173 GETIMPORT                        R26 K36 [Enum.AssetType.EmoteAnimation]
      175 JUMPIFNOTEQ                      R25 R26 ; [+3]
      177 LOADN                            R24 150
      178 JUMP                             ; [+1]
      179 LOADN                            R24 186
      180 GETUPVAL                         R25 8
      181 GETTABLEKS                       R25 R25 K37 ["createElement"]
      183 LOADK                            R26 K38 ["Frame"]
      184 DUPTABLE                         R27 K44 [{"AutomaticSize", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
      185 GETIMPORT                        R28 K46 [Enum.AutomaticSize.Y]
      187 SETTABLEKS                       R28 R27 K39 ["AutomaticSize"]
      189 GETTABLEKS                       R28 R2 K47 ["uploadResult"]
      191 GETTABLEKS                       R28 R28 K48 ["background"]
      193 SETTABLEKS                       R28 R27 K40 ["BackgroundColor3"]
      195 LOADN                            R28 0
      196 SETTABLEKS                       R28 R27 K41 ["BackgroundTransparency"]
      198 LOADN                            R28 0
      199 SETTABLEKS                       R28 R27 K42 ["BorderSizePixel"]
      201 GETTABLEKS                       R28 R1 K43 ["Size"]
      203 SETTABLEKS                       R28 R27 K43 ["Size"]
      205 DUPTABLE                         R28 K55 [{"ModelPreview", "ThumbnailPreview", "CopyID", "LoadingResultSuccess", "LoadingResultFailure", "DependencyWarningDialog", "Footer"}]
      206 MOVE                             R29 R7
      207 JUMPIFNOT                        R29 ; [+43]
      208 GETUPVAL                         R29 8
      209 GETTABLEKS                       R29 R29 K37 ["createElement"]
      211 GETUPVAL                         R30 9
      212 DUPTABLE                         R31 K61 [{"title", "titleHeight", "titlePadding", "Position", "Size", "AssetType", "UploadSucceeded"}]
      213 GETTABLEKS                       R33 R1 K63 ["assetName"]
      215 ORK                              R32 R33 K62 []
      216 SETTABLEKS                       R32 R31 K56 ["title"]
      218 LOADN                            R32 24
      219 SETTABLEKS                       R32 R31 K57 ["titleHeight"]
      221 LOADN                            R32 12
      222 SETTABLEKS                       R32 R31 K58 ["titlePadding"]
      224 GETIMPORT                        R32 K65 [UDim2.new]
      226 LOADK                            R33 K66 [0.5]
      227 LOADN                            R34 181
      228 LOADN                            R35 0
      229 LOADN                            R36 48
      230 CALL                             R32 4 1
      231 SETTABLEKS                       R32 R31 K59 ["Position"]
      233 GETIMPORT                        R32 K65 [UDim2.new]
      235 LOADN                            R33 0
      236 LOADN                            R34 150
      237 LOADN                            R35 0
      238 MOVE                             R36 R24
      239 CALL                             R32 4 1
      240 SETTABLEKS                       R32 R31 K43 ["Size"]
      242 GETTABLEKS                       R32 R1 K7 ["assetTypeEnum"]
      244 SETTABLEKS                       R32 R31 K34 ["AssetType"]
      246 GETTABLEKS                       R32 R1 K19 ["uploadSucceeded"]
      248 SETTABLEKS                       R32 R31 K60 ["UploadSucceeded"]
      250 CALL                             R29 2 1
      251 SETTABLEKS                       R29 R28 K10 ["ModelPreview"]
      253 MOVE                             R29 R8
      254 JUMPIFNOT                        R29 ; [+40]
      255 GETUPVAL                         R29 8
      256 GETTABLEKS                       R29 R29 K37 ["createElement"]
      258 LOADK                            R30 K67 ["ImageLabel"]
      259 DUPTABLE                         R31 K69 [{"Position", "Size", "Image", "BackgroundTransparency", "BorderSizePixel"}]
      260 GETIMPORT                        R32 K65 [UDim2.new]
      262 LOADK                            R33 K66 [0.5]
      263 LOADN                            R34 181
      264 LOADN                            R35 0
      265 LOADN                            R36 48
      266 CALL                             R32 4 1
      267 SETTABLEKS                       R32 R31 K59 ["Position"]
      269 GETIMPORT                        R32 K65 [UDim2.new]
      271 LOADN                            R33 0
      272 LOADN                            R34 150
      273 LOADN                            R35 0
      274 LOADN                            R36 150
      275 CALL                             R32 4 1
      276 SETTABLEKS                       R32 R31 K43 ["Size"]
      278 GETUPVAL                         R32 1
      279 GETTABLEKS                       R32 R32 K70 ["getResultThumbnail"]
      281 GETTABLEKS                       R33 R1 K24 ["assetId"]
      283 GETTABLEKS                       R34 R1 K71 ["iconFile"]
      285 CALL                             R32 2 1
      286 SETTABLEKS                       R32 R31 K68 ["Image"]
      288 LOADN                            R32 1
      289 SETTABLEKS                       R32 R31 K41 ["BackgroundTransparency"]
      291 LOADN                            R32 0
      292 SETTABLEKS                       R32 R31 K42 ["BorderSizePixel"]
      294 CALL                             R29 2 1
      295 SETTABLEKS                       R29 R28 K49 ["ThumbnailPreview"]
      297 MOVE                             R29 R10
      298 JUMPIFNOT                        R29 ; [+13]
      299 GETUPVAL                         R29 8
      300 GETTABLEKS                       R29 R29 K37 ["createElement"]
      302 GETUPVAL                         R30 10
      303 DUPTABLE                         R31 K74 [{"YPos", "AssetId"}]
      304 LOADN                            R32 240
      305 SETTABLEKS                       R32 R31 K72 ["YPos"]
      307 GETTABLEKS                       R32 R1 K24 ["assetId"]
      309 SETTABLEKS                       R32 R31 K73 ["AssetId"]
      311 CALL                             R29 2 1
      312 SETTABLEKS                       R29 R28 K50 ["CopyID"]
      314 MOVE                             R29 R10
      315 JUMPIFNOT                        R29 ; [+582]
      316 GETUPVAL                         R29 8
      317 GETTABLEKS                       R29 R29 K37 ["createElement"]
      319 LOADK                            R30 K38 ["Frame"]
      320 DUPTABLE                         R31 K75 [{"Position", "Size", "BackgroundTransparency"}]
      321 GETIMPORT                        R32 K65 [UDim2.new]
      323 LOADN                            R33 0
      324 LOADN                            R34 0
      325 LOADN                            R35 0
      326 LOADN                            R36 23
      327 CALL                             R32 4 1
      328 SETTABLEKS                       R32 R31 K59 ["Position"]
      330 GETIMPORT                        R32 K65 [UDim2.new]
      332 LOADN                            R33 1
      333 LOADN                            R34 0
      334 LOADN                            R35 1
      335 LOADN                            R36 233
      336 CALL                             R32 4 1
      337 SETTABLEKS                       R32 R31 K43 ["Size"]
      339 LOADN                            R32 1
      340 SETTABLEKS                       R32 R31 K41 ["BackgroundTransparency"]
      342 DUPTABLE                         R32 K80 [{"UIListLayout", "Title", "ReasonFrame", "Rows"}]
      343 GETUPVAL                         R33 8
      344 GETTABLEKS                       R33 R33 K37 ["createElement"]
      346 LOADK                            R34 K76 ["UIListLayout"]
      347 DUPTABLE                         R35 K86 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      348 GETIMPORT                        R36 K88 [Enum.FillDirection.Vertical]
      350 SETTABLEKS                       R36 R35 K81 ["FillDirection"]
      352 GETIMPORT                        R36 K90 [Enum.HorizontalAlignment.Center]
      354 SETTABLEKS                       R36 R35 K82 ["HorizontalAlignment"]
      356 GETIMPORT                        R36 K92 [Enum.VerticalAlignment.Top]
      358 SETTABLEKS                       R36 R35 K83 ["VerticalAlignment"]
      360 GETIMPORT                        R36 K94 [Enum.SortOrder.LayoutOrder]
      362 SETTABLEKS                       R36 R35 K84 ["SortOrder"]
      364 GETIMPORT                        R36 K96 [UDim.new]
      366 LOADN                            R37 0
      367 LOADN                            R38 5
      368 CALL                             R36 2 1
      369 SETTABLEKS                       R36 R35 K85 ["Padding"]
      371 CALL                             R33 2 1
      372 SETTABLEKS                       R33 R32 K76 ["UIListLayout"]
      374 GETUPVAL                         R33 8
      375 GETTABLEKS                       R33 R33 K37 ["createElement"]
      377 LOADK                            R34 K97 ["TextLabel"]
      378 DUPTABLE                         R35 K104 [{"BackgroundTransparency", "Position", "Size", "Text", "Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment", "LayoutOrder"}]
      379 LOADN                            R36 1
      380 SETTABLEKS                       R36 R35 K41 ["BackgroundTransparency"]
      382 GETIMPORT                        R36 K65 [UDim2.new]
      384 LOADK                            R37 K66 [0.5]
      385 LOADN                            R38 56
      386 LOADN                            R39 0
      387 LOADN                            R40 0
      388 CALL                             R36 4 1
      389 SETTABLEKS                       R36 R35 K59 ["Position"]
      391 GETIMPORT                        R36 K65 [UDim2.new]
      393 LOADN                            R37 0
      394 LOADN                            R38 144
      395 LOADN                            R39 0
      396 LOADN                            R40 36
      397 CALL                             R36 4 1
      398 SETTABLEKS                       R36 R35 K43 ["Size"]
      400 GETUPVAL                         R37 7
      401 CALL                             R37 0 1
      402 JUMPIFNOT                        R37 ; [+2]
      403 MOVE                             R36 R23
      404 JUMP                             ; [+6]
      405 GETTABLEKS                       R37 R1 K19 ["uploadSucceeded"]
      407 JUMPIFNOT                        R37 ; [+2]
      408 LOADK                            R36 K105 ["Successfully submitted!"]
      409 JUMP                             ; [+1]
      410 LOADK                            R36 K106 ["Submission failed"]
      411 SETTABLEKS                       R36 R35 K98 ["Text"]
      413 GETUPVAL                         R36 3
      414 GETTABLEKS                       R36 R36 K107 ["FONT"]
      416 SETTABLEKS                       R36 R35 K99 ["Font"]
      418 GETTABLEKS                       R36 R2 K47 ["uploadResult"]
      420 GETTABLEKS                       R36 R36 K108 ["greenText"]
      422 SETTABLEKS                       R36 R35 K100 ["TextColor3"]
      424 GETUPVAL                         R36 3
      425 GETTABLEKS                       R36 R36 K109 ["FONT_SIZE_TITLE"]
      427 SETTABLEKS                       R36 R35 K101 ["TextSize"]
      429 GETIMPORT                        R36 K110 [Enum.TextXAlignment.Center]
      431 SETTABLEKS                       R36 R35 K102 ["TextXAlignment"]
      433 GETIMPORT                        R36 K111 [Enum.TextYAlignment.Center]
      435 SETTABLEKS                       R36 R35 K103 ["TextYAlignment"]
      437 LOADN                            R36 1
      438 SETTABLEKS                       R36 R35 K93 ["LayoutOrder"]
      440 CALL                             R33 2 1
      441 SETTABLEKS                       R33 R32 K77 ["Title"]
      443 LOADB                            R33 0
      444 SETTABLEKS                       R33 R32 K78 ["ReasonFrame"]
      446 GETUPVAL                         R33 8
      447 GETTABLEKS                       R33 R33 K37 ["createElement"]
      449 LOADK                            R34 K38 ["Frame"]
      450 DUPTABLE                         R35 K112 [{"BackgroundTransparency", "Size", "Position", "LayoutOrder"}]
      451 LOADN                            R36 1
      452 SETTABLEKS                       R36 R35 K41 ["BackgroundTransparency"]
      454 GETIMPORT                        R36 K65 [UDim2.new]
      456 LOADN                            R37 0
      457 LOADN                            R38 144
      458 LOADN                            R39 0
      459 LOADN                            R40 72
      460 CALL                             R36 4 1
      461 SETTABLEKS                       R36 R35 K43 ["Size"]
      463 GETIMPORT                        R36 K65 [UDim2.new]
      465 LOADK                            R37 K66 [0.5]
      466 LOADN                            R38 56
      467 LOADN                            R39 0
      468 LOADN                            R40 49
      469 CALL                             R36 4 1
      470 SETTABLEKS                       R36 R35 K59 ["Position"]
      472 LOADN                            R36 3
      473 SETTABLEKS                       R36 R35 K93 ["LayoutOrder"]
      475 DUPTABLE                         R36 K119 [{"UIListLayout", "ModerationMessage", "CreatorStoreConfigurationText", "CreatorStoreConfigurationLink", "ToolboxText", "ToolboxLink", "CreatorDashboardMsg"}]
      476 GETUPVAL                         R37 8
      477 GETTABLEKS                       R37 R37 K37 ["createElement"]
      479 LOADK                            R38 K76 ["UIListLayout"]
      480 DUPTABLE                         R39 K120 [{"Padding", "SortOrder"}]
      481 GETIMPORT                        R40 K96 [UDim.new]
      483 LOADN                            R41 0
      484 LOADN                            R42 12
      485 CALL                             R40 2 1
      486 SETTABLEKS                       R40 R39 K85 ["Padding"]
      488 GETIMPORT                        R40 K94 [Enum.SortOrder.LayoutOrder]
      490 SETTABLEKS                       R40 R39 K84 ["SortOrder"]
      492 CALL                             R37 2 1
      493 SETTABLEKS                       R37 R36 K76 ["UIListLayout"]
      495 MOVE                             R37 R5
      496 JUMPIFNOT                        R37 ; [+55]
      497 GETUPVAL                         R37 8
      498 GETTABLEKS                       R37 R37 K37 ["createElement"]
      500 LOADK                            R38 K97 ["TextLabel"]
      501 DUPTABLE                         R39 K121 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "LayoutOrder"}]
      502 LOADN                            R40 1
      503 SETTABLEKS                       R40 R39 K41 ["BackgroundTransparency"]
      505 GETUPVAL                         R40 3
      506 GETTABLEKS                       R40 R40 K107 ["FONT"]
      508 SETTABLEKS                       R40 R39 K99 ["Font"]
      510 GETUPVAL                         R41 7
      511 CALL                             R41 0 1
      512 JUMPIFNOT                        R41 ; [+8]
      513 GETTABLEKS                       R40 R1 K28 ["Localization"]
      515 LOADK                            R42 K29 ["AssetUploadResult"]
      516 LOADK                            R43 K122 ["AddedToModerationQueueMessage"]
      517 NAMECALL                         R40 R40 K31 ["getText"]
      519 CALL                             R40 3 1
      520 JUMP                             ; [+1]
      521 LOADK                            R40 K123 ["Asset has been added to moderation queue."]
      522 SETTABLEKS                       R40 R39 K98 ["Text"]
      524 GETTABLEKS                       R40 R2 K47 ["uploadResult"]
      526 GETTABLEKS                       R40 R40 K124 ["text"]
      528 SETTABLEKS                       R40 R39 K100 ["TextColor3"]
      530 GETUPVAL                         R40 3
      531 GETTABLEKS                       R40 R40 K21 ["FONT_SIZE_MEDIUM"]
      533 SETTABLEKS                       R40 R39 K101 ["TextSize"]
      535 GETIMPORT                        R40 K65 [UDim2.new]
      537 LOADN                            R41 1
      538 LOADN                            R42 0
      539 LOADN                            R43 0
      540 LOADN                            R44 24
      541 CALL                             R40 4 1
      542 SETTABLEKS                       R40 R39 K43 ["Size"]
      544 GETIMPORT                        R40 K111 [Enum.TextYAlignment.Center]
      546 SETTABLEKS                       R40 R39 K103 ["TextYAlignment"]
      548 LOADN                            R40 0
      549 SETTABLEKS                       R40 R39 K93 ["LayoutOrder"]
      551 CALL                             R37 2 1
      552 SETTABLEKS                       R37 R36 K113 ["ModerationMessage"]
      554 JUMPIFNOT                        R21 ; [+51]
      555 GETUPVAL                         R37 8
      556 GETTABLEKS                       R37 R37 K37 ["createElement"]
      558 LOADK                            R38 K97 ["TextLabel"]
      559 DUPTABLE                         R39 K121 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "LayoutOrder"}]
      560 LOADN                            R40 1
      561 SETTABLEKS                       R40 R39 K41 ["BackgroundTransparency"]
      563 GETUPVAL                         R40 3
      564 GETTABLEKS                       R40 R40 K107 ["FONT"]
      566 SETTABLEKS                       R40 R39 K99 ["Font"]
      568 GETTABLEKS                       R40 R1 K28 ["Localization"]
      570 LOADK                            R42 K29 ["AssetUploadResult"]
      571 LOADK                            R43 K125 ["CreatorStoreConfigurationMessage"]
      572 NAMECALL                         R40 R40 K31 ["getText"]
      574 CALL                             R40 3 1
      575 SETTABLEKS                       R40 R39 K98 ["Text"]
      577 GETTABLEKS                       R40 R2 K47 ["uploadResult"]
      579 GETTABLEKS                       R40 R40 K124 ["text"]
      581 SETTABLEKS                       R40 R39 K100 ["TextColor3"]
      583 GETUPVAL                         R40 3
      584 GETTABLEKS                       R40 R40 K21 ["FONT_SIZE_MEDIUM"]
      586 SETTABLEKS                       R40 R39 K101 ["TextSize"]
      588 GETIMPORT                        R40 K65 [UDim2.new]
      590 LOADN                            R41 1
      591 LOADN                            R42 0
      592 LOADN                            R43 0
      593 LOADN                            R44 24
      594 CALL                             R40 4 1
      595 SETTABLEKS                       R40 R39 K43 ["Size"]
      597 GETIMPORT                        R40 K111 [Enum.TextYAlignment.Center]
      599 SETTABLEKS                       R40 R39 K103 ["TextYAlignment"]
      601 LOADN                            R40 1
      602 SETTABLEKS                       R40 R39 K93 ["LayoutOrder"]
      604 CALL                             R37 2 1
      605 JUMP                             ; [+1]
      606 LOADNIL                          R37
      607 SETTABLEKS                       R37 R36 K114 ["CreatorStoreConfigurationText"]
      609 JUMPIFNOT                        R21 ; [+54]
      610 GETUPVAL                         R37 8
      611 GETTABLEKS                       R37 R37 K37 ["createElement"]
      613 LOADK                            R38 K126 ["TextButton"]
      614 NEWTABLE                         R39 16 0
      616 LOADN                            R40 1
      617 SETTABLEKS                       R40 R39 K41 ["BackgroundTransparency"]
      619 GETUPVAL                         R40 3
      620 GETTABLEKS                       R40 R40 K107 ["FONT"]
      622 SETTABLEKS                       R40 R39 K99 ["Font"]
      624 SETTABLEKS                       R20 R39 K98 ["Text"]
      626 GETTABLEKS                       R40 R2 K47 ["uploadResult"]
      628 GETTABLEKS                       R40 R40 K127 ["link"]
      630 SETTABLEKS                       R40 R39 K100 ["TextColor3"]
      632 GETUPVAL                         R40 3
      633 GETTABLEKS                       R40 R40 K21 ["FONT_SIZE_MEDIUM"]
      635 SETTABLEKS                       R40 R39 K101 ["TextSize"]
      637 GETIMPORT                        R40 K65 [UDim2.new]
      639 LOADN                            R41 1
      640 LOADN                            R42 0
      641 LOADN                            R43 0
      642 LOADN                            R44 24
      643 CALL                             R40 4 1
      644 SETTABLEKS                       R40 R39 K43 ["Size"]
      646 GETIMPORT                        R40 K111 [Enum.TextYAlignment.Center]
      648 SETTABLEKS                       R40 R39 K103 ["TextYAlignment"]
      650 LOADN                            R40 2
      651 SETTABLEKS                       R40 R39 K93 ["LayoutOrder"]
      653 GETUPVAL                         R40 8
      654 GETTABLEKS                       R40 R40 K128 ["Event"]
      656 GETTABLEKS                       R40 R40 K129 ["Activated"]
      658 NEWCLOSURE                       R41 P0
      659 CAPTURE                          UPVAL U11
      660 CAPTURE                          VAL R20
      661 SETTABLE                         R41 R39 R40
      662 CALL                             R37 2 1
      663 JUMP                             ; [+1]
      664 LOADNIL                          R37
      665 SETTABLEKS                       R37 R36 K115 ["CreatorStoreConfigurationLink"]
      667 JUMPIF                           R18 ; [+56]
      668 GETUPVAL                         R37 8
      669 GETTABLEKS                       R37 R37 K37 ["createElement"]
      671 LOADK                            R38 K97 ["TextLabel"]
      672 DUPTABLE                         R39 K121 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "LayoutOrder"}]
      673 LOADN                            R40 1
      674 SETTABLEKS                       R40 R39 K41 ["BackgroundTransparency"]
      676 GETUPVAL                         R40 3
      677 GETTABLEKS                       R40 R40 K107 ["FONT"]
      679 SETTABLEKS                       R40 R39 K99 ["Font"]
      681 GETUPVAL                         R41 7
      682 CALL                             R41 0 1
      683 JUMPIFNOT                        R41 ; [+8]
      684 GETTABLEKS                       R40 R1 K28 ["Localization"]
      686 LOADK                            R42 K29 ["AssetUploadResult"]
      687 LOADK                            R43 K130 ["WebsiteUrlNoticeMessage"]
      688 NAMECALL                         R40 R40 K31 ["getText"]
      690 CALL                             R40 3 1
      691 JUMP                             ; [+1]
      692 LOADK                            R40 K131 ["You may find your asset in Toolbox or on web:"]
      693 SETTABLEKS                       R40 R39 K98 ["Text"]
      695 GETTABLEKS                       R40 R2 K47 ["uploadResult"]
      697 GETTABLEKS                       R40 R40 K124 ["text"]
      699 SETTABLEKS                       R40 R39 K100 ["TextColor3"]
      701 GETUPVAL                         R40 3
      702 GETTABLEKS                       R40 R40 K21 ["FONT_SIZE_MEDIUM"]
      704 SETTABLEKS                       R40 R39 K101 ["TextSize"]
      706 GETIMPORT                        R40 K65 [UDim2.new]
      708 LOADN                            R41 1
      709 LOADN                            R42 0
      710 LOADN                            R43 0
      711 LOADN                            R44 24
      712 CALL                             R40 4 1
      713 SETTABLEKS                       R40 R39 K43 ["Size"]
      715 GETIMPORT                        R40 K111 [Enum.TextYAlignment.Center]
      717 SETTABLEKS                       R40 R39 K103 ["TextYAlignment"]
      719 LOADN                            R40 3
      720 SETTABLEKS                       R40 R39 K93 ["LayoutOrder"]
      722 CALL                             R37 2 1
      723 JUMP                             ; [+1]
      724 LOADNIL                          R37
      725 SETTABLEKS                       R37 R36 K116 ["ToolboxText"]
      727 JUMPIF                           R18 ; [+54]
      728 GETUPVAL                         R37 8
      729 GETTABLEKS                       R37 R37 K37 ["createElement"]
      731 LOADK                            R38 K126 ["TextButton"]
      732 NEWTABLE                         R39 16 0
      734 LOADN                            R40 1
      735 SETTABLEKS                       R40 R39 K41 ["BackgroundTransparency"]
      737 GETUPVAL                         R40 3
      738 GETTABLEKS                       R40 R40 K107 ["FONT"]
      740 SETTABLEKS                       R40 R39 K99 ["Font"]
      742 SETTABLEKS                       R19 R39 K98 ["Text"]
      744 GETTABLEKS                       R40 R2 K47 ["uploadResult"]
      746 GETTABLEKS                       R40 R40 K127 ["link"]
      748 SETTABLEKS                       R40 R39 K100 ["TextColor3"]
      750 GETUPVAL                         R40 3
      751 GETTABLEKS                       R40 R40 K21 ["FONT_SIZE_MEDIUM"]
      753 SETTABLEKS                       R40 R39 K101 ["TextSize"]
      755 GETIMPORT                        R40 K65 [UDim2.new]
      757 LOADN                            R41 1
      758 LOADN                            R42 0
      759 LOADN                            R43 0
      760 LOADN                            R44 24
      761 CALL                             R40 4 1
      762 SETTABLEKS                       R40 R39 K43 ["Size"]
      764 GETIMPORT                        R40 K111 [Enum.TextYAlignment.Center]
      766 SETTABLEKS                       R40 R39 K103 ["TextYAlignment"]
      768 LOADN                            R40 4
      769 SETTABLEKS                       R40 R39 K93 ["LayoutOrder"]
      771 GETUPVAL                         R40 8
      772 GETTABLEKS                       R40 R40 K128 ["Event"]
      774 GETTABLEKS                       R40 R40 K129 ["Activated"]
      776 NEWCLOSURE                       R41 P1
      777 CAPTURE                          UPVAL U11
      778 CAPTURE                          REF R19
      779 SETTABLE                         R41 R39 R40
      780 CALL                             R37 2 1
      781 JUMP                             ; [+1]
      782 LOADNIL                          R37
      783 SETTABLEKS                       R37 R36 K117 ["ToolboxLink"]
      785 JUMPIFNOT                        R18 ; [+105]
      786 GETUPVAL                         R37 8
      787 GETTABLEKS                       R37 R37 K37 ["createElement"]
      789 GETUPVAL                         R38 12
      790 DUPTABLE                         R39 K137 [{"OnLinkClicked", "Text", "LinkText", "LinkPlaceholder", "AutomaticSize", "TextXAlignment", "HorizontalAlignment", "MaxWidth", "TextProps", "LayoutOrder"}]
      791 GETIMPORT                        R41 K139 [game]
      793 LOADK                            R43 K140 ["UpdateAssetUploadResultBundleConfigureLink2"]
      794 NAMECALL                         R41 R41 K141 ["GetFastFlag"]
      796 CALL                             R41 2 1
      797 JUMPIFNOT                        R41 ; [+11]
      798 GETUPVAL                         R41 1
      799 GETTABLEKS                       R41 R41 K22 ["isUGCBundleType"]
      801 GETTABLEKS                       R42 R1 K7 ["assetTypeEnum"]
      803 CALL                             R41 1 1
      804 JUMPIFNOT                        R41 ; [+4]
      805 NEWCLOSURE                       R40 P2
      806 CAPTURE                          VAL R0
      807 CAPTURE                          VAL R1
      808 JUMP                             ; [+8]
      809 GETUPVAL                         R41 13
      810 JUMPIFNOT                        R41 ; [+4]
      811 NEWCLOSURE                       R40 P3
      812 CAPTURE                          VAL R0
      813 CAPTURE                          VAL R1
      814 JUMP                             ; [+2]
      815 GETTABLEKS                       R40 R0 K142 ["openCreatorDashboard"]
      817 SETTABLEKS                       R40 R39 K132 ["OnLinkClicked"]
      819 GETTABLEKS                       R40 R1 K28 ["Localization"]
      821 LOADK                            R42 K29 ["AssetUploadResult"]
      822 LOADK                            R43 K143 ["CreatorDashboardMessage"]
      823 DUPTABLE                         R44 K145 [{"creatorDashboardLink"}]
      824 GETUPVAL                         R45 3
      825 GETTABLEKS                       R45 R45 K146 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      827 SETTABLEKS                       R45 R44 K144 ["creatorDashboardLink"]
      829 NAMECALL                         R40 R40 K31 ["getText"]
      831 CALL                             R40 4 1
      832 SETTABLEKS                       R40 R39 K98 ["Text"]
      834 GETTABLEKS                       R40 R1 K28 ["Localization"]
      836 LOADK                            R42 K147 ["General"]
      837 LOADK                            R43 K148 ["CreatorDashboard"]
      838 NAMECALL                         R40 R40 K31 ["getText"]
      840 CALL                             R40 3 1
      841 SETTABLEKS                       R40 R39 K133 ["LinkText"]
      843 GETUPVAL                         R40 3
      844 GETTABLEKS                       R40 R40 K146 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      846 SETTABLEKS                       R40 R39 K134 ["LinkPlaceholder"]
      848 GETIMPORT                        R40 K46 [Enum.AutomaticSize.Y]
      850 SETTABLEKS                       R40 R39 K39 ["AutomaticSize"]
      852 GETIMPORT                        R40 K110 [Enum.TextXAlignment.Center]
      854 SETTABLEKS                       R40 R39 K102 ["TextXAlignment"]
      856 GETIMPORT                        R40 K90 [Enum.HorizontalAlignment.Center]
      858 SETTABLEKS                       R40 R39 K82 ["HorizontalAlignment"]
      860 LOADN                            R40 144
      861 SETTABLEKS                       R40 R39 K135 ["MaxWidth"]
      863 DUPTABLE                         R40 K149 [{"Font", "TextColor3", "TextSize", "TextXAlignment"}]
      864 GETUPVAL                         R41 3
      865 GETTABLEKS                       R41 R41 K107 ["FONT"]
      867 SETTABLEKS                       R41 R40 K99 ["Font"]
      869 GETTABLEKS                       R41 R2 K47 ["uploadResult"]
      871 GETTABLEKS                       R41 R41 K124 ["text"]
      873 SETTABLEKS                       R41 R40 K100 ["TextColor3"]
      875 GETUPVAL                         R41 3
      876 GETTABLEKS                       R41 R41 K109 ["FONT_SIZE_TITLE"]
      878 SETTABLEKS                       R41 R40 K101 ["TextSize"]
      880 GETIMPORT                        R41 K110 [Enum.TextXAlignment.Center]
      882 SETTABLEKS                       R41 R40 K102 ["TextXAlignment"]
      884 SETTABLEKS                       R40 R39 K136 ["TextProps"]
      886 LOADN                            R40 5
      887 SETTABLEKS                       R40 R39 K93 ["LayoutOrder"]
      889 CALL                             R37 2 1
      890 JUMP                             ; [+1]
      891 LOADNIL                          R37
      892 SETTABLEKS                       R37 R36 K118 ["CreatorDashboardMsg"]
      894 CALL                             R33 3 1
      895 SETTABLEKS                       R33 R32 K79 ["Rows"]
      897 CALL                             R29 3 1
      898 SETTABLEKS                       R29 R28 K51 ["LoadingResultSuccess"]
      900 MOVE                             R29 R11
      901 JUMPIFNOT                        R29 ; [+239]
      902 GETUPVAL                         R29 8
      903 GETTABLEKS                       R29 R29 K37 ["createElement"]
      905 LOADK                            R30 K38 ["Frame"]
      906 DUPTABLE                         R31 K75 [{"Position", "Size", "BackgroundTransparency"}]
      907 GETIMPORT                        R32 K65 [UDim2.new]
      909 LOADN                            R33 0
      910 LOADN                            R34 0
      911 LOADN                            R35 0
      912 LOADN                            R36 23
      913 CALL                             R32 4 1
      914 SETTABLEKS                       R32 R31 K59 ["Position"]
      916 GETIMPORT                        R32 K65 [UDim2.new]
      918 LOADN                            R33 1
      919 LOADN                            R34 0
      920 LOADN                            R35 1
      921 LOADN                            R36 233
      922 CALL                             R32 4 1
      923 SETTABLEKS                       R32 R31 K43 ["Size"]
      925 LOADN                            R32 1
      926 SETTABLEKS                       R32 R31 K41 ["BackgroundTransparency"]
      928 DUPTABLE                         R32 K151 [{"ReasonTextFrame"}]
      929 GETUPVAL                         R33 8
      930 GETTABLEKS                       R33 R33 K37 ["createElement"]
      932 GETUPVAL                         R34 14
      933 DUPTABLE                         R35 K154 [{"AutomaticSize", "BackgroundTransparency", "Layout", "LayoutOrder", "Padding", "Size", "Spacing"}]
      934 GETIMPORT                        R36 K46 [Enum.AutomaticSize.Y]
      936 SETTABLEKS                       R36 R35 K39 ["AutomaticSize"]
      938 LOADN                            R36 1
      939 SETTABLEKS                       R36 R35 K41 ["BackgroundTransparency"]
      941 GETIMPORT                        R36 K88 [Enum.FillDirection.Vertical]
      943 SETTABLEKS                       R36 R35 K152 ["Layout"]
      945 LOADN                            R36 1
      946 SETTABLEKS                       R36 R35 K93 ["LayoutOrder"]
      948 LOADN                            R36 8
      949 SETTABLEKS                       R36 R35 K85 ["Padding"]
      951 GETIMPORT                        R36 K65 [UDim2.new]
      953 LOADN                            R37 1
      954 LOADN                            R38 0
      955 LOADN                            R39 0
      956 LOADN                            R40 0
      957 CALL                             R36 4 1
      958 SETTABLEKS                       R36 R35 K43 ["Size"]
      960 LOADN                            R36 12
      961 SETTABLEKS                       R36 R35 K153 ["Spacing"]
      963 DUPTABLE                         R36 K156 [{"Title", "ReasonWithDashboardLink"}]
      964 GETUPVAL                         R37 8
      965 GETTABLEKS                       R37 R37 K37 ["createElement"]
      967 LOADK                            R38 K97 ["TextLabel"]
      968 DUPTABLE                         R39 K157 [{"BackgroundTransparency", "Font", "LayoutOrder", "Position", "Size", "Text", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
      969 LOADN                            R40 1
      970 SETTABLEKS                       R40 R39 K41 ["BackgroundTransparency"]
      972 GETUPVAL                         R40 3
      973 GETTABLEKS                       R40 R40 K107 ["FONT"]
      975 SETTABLEKS                       R40 R39 K99 ["Font"]
      977 LOADN                            R40 1
      978 SETTABLEKS                       R40 R39 K93 ["LayoutOrder"]
      980 GETIMPORT                        R40 K65 [UDim2.new]
      982 LOADK                            R41 K66 [0.5]
      983 LOADN                            R42 56
      984 LOADN                            R43 0
      985 LOADN                            R44 0
      986 CALL                             R40 4 1
      987 SETTABLEKS                       R40 R39 K59 ["Position"]
      989 GETIMPORT                        R40 K65 [UDim2.new]
      991 LOADN                            R41 0
      992 LOADN                            R42 144
      993 LOADN                            R43 0
      994 LOADN                            R44 36
      995 CALL                             R40 4 1
      996 SETTABLEKS                       R40 R39 K43 ["Size"]
      998 GETUPVAL                         R41 7
      999 CALL                             R41 0 1
     1000 JUMPIFNOT                        R41 ; [+8]
     1001 GETTABLEKS                       R40 R1 K28 ["Localization"]
     1003 LOADK                            R42 K29 ["AssetUploadResult"]
     1004 LOADK                            R43 K32 ["SubmissionFailed"]
     1005 NAMECALL                         R40 R40 K31 ["getText"]
     1007 CALL                             R40 3 1
     1008 JUMP                             ; [+1]
     1009 LOADK                            R40 K106 ["Submission failed"]
     1010 SETTABLEKS                       R40 R39 K98 ["Text"]
     1012 GETTABLEKS                       R40 R2 K47 ["uploadResult"]
     1014 GETTABLEKS                       R40 R40 K158 ["redText"]
     1016 SETTABLEKS                       R40 R39 K100 ["TextColor3"]
     1018 GETUPVAL                         R40 3
     1019 GETTABLEKS                       R40 R40 K109 ["FONT_SIZE_TITLE"]
     1021 SETTABLEKS                       R40 R39 K101 ["TextSize"]
     1023 GETIMPORT                        R40 K110 [Enum.TextXAlignment.Center]
     1025 SETTABLEKS                       R40 R39 K102 ["TextXAlignment"]
     1027 GETIMPORT                        R40 K111 [Enum.TextYAlignment.Center]
     1029 SETTABLEKS                       R40 R39 K103 ["TextYAlignment"]
     1031 CALL                             R37 2 1
     1032 SETTABLEKS                       R37 R36 K77 ["Title"]
     1034 GETUPVAL                         R37 8
     1035 GETTABLEKS                       R37 R37 K37 ["createElement"]
     1037 GETUPVAL                         R38 12
     1038 DUPTABLE                         R39 K159 [{"HorizontalAlignment", "LayoutOrder", "LinkPlaceholder", "LinkText", "MaxWidth", "OnLinkClicked", "Text", "TextProps"}]
     1039 GETIMPORT                        R40 K90 [Enum.HorizontalAlignment.Center]
     1041 SETTABLEKS                       R40 R39 K82 ["HorizontalAlignment"]
     1043 LOADN                            R40 3
     1044 SETTABLEKS                       R40 R39 K93 ["LayoutOrder"]
     1046 GETUPVAL                         R40 3
     1047 GETTABLEKS                       R40 R40 K146 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
     1049 SETTABLEKS                       R40 R39 K134 ["LinkPlaceholder"]
     1051 GETTABLEKS                       R40 R0 K0 ["props"]
     1053 GETTABLEKS                       R40 R40 K28 ["Localization"]
     1055 LOADK                            R42 K147 ["General"]
     1056 LOADK                            R43 K148 ["CreatorDashboard"]
     1057 NAMECALL                         R40 R40 K31 ["getText"]
     1059 CALL                             R40 3 1
     1060 SETTABLEKS                       R40 R39 K133 ["LinkText"]
     1062 LOADN                            R40 144
     1063 SETTABLEKS                       R40 R39 K135 ["MaxWidth"]
     1065 GETTABLEKS                       R40 R0 K160 ["openCreatorDashboardCreationsPage"]
     1067 SETTABLEKS                       R40 R39 K132 ["OnLinkClicked"]
     1069 MOVE                             R40 R3
     1070 JUMPIFNOT                        R40 ; [+2]
     1071 GETTABLEKS                       R40 R3 K161 ["responseBody"]
     1073 SETTABLEKS                       R40 R39 K98 ["Text"]
     1075 GETUPVAL                         R41 15
     1076 CALL                             R41 0 1
     1077 JUMPIFNOT                        R41 ; [+29]
     1078 DUPTABLE                         R40 K164 [{"Font", "TextColor", "TextSelectable", "TextSize", "TextXAlignment", "TextYAlignment"}]
     1079 GETUPVAL                         R41 3
     1080 GETTABLEKS                       R41 R41 K107 ["FONT"]
     1082 SETTABLEKS                       R41 R40 K99 ["Font"]
     1084 GETTABLEKS                       R41 R2 K47 ["uploadResult"]
     1086 GETTABLEKS                       R41 R41 K124 ["text"]
     1088 SETTABLEKS                       R41 R40 K162 ["TextColor"]
     1090 LOADB                            R41 1
     1091 SETTABLEKS                       R41 R40 K163 ["TextSelectable"]
     1093 GETUPVAL                         R41 3
     1094 GETTABLEKS                       R41 R41 K21 ["FONT_SIZE_MEDIUM"]
     1096 SETTABLEKS                       R41 R40 K101 ["TextSize"]
     1098 GETIMPORT                        R41 K110 [Enum.TextXAlignment.Center]
     1100 SETTABLEKS                       R41 R40 K102 ["TextXAlignment"]
     1102 GETIMPORT                        R41 K165 [Enum.TextYAlignment.Top]
     1104 SETTABLEKS                       R41 R40 K103 ["TextYAlignment"]
     1106 JUMP                             ; [+25]
     1107 DUPTABLE                         R40 K166 [{"Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
     1108 GETUPVAL                         R41 3
     1109 GETTABLEKS                       R41 R41 K107 ["FONT"]
     1111 SETTABLEKS                       R41 R40 K99 ["Font"]
     1113 GETTABLEKS                       R41 R2 K47 ["uploadResult"]
     1115 GETTABLEKS                       R41 R41 K124 ["text"]
     1117 SETTABLEKS                       R41 R40 K100 ["TextColor3"]
     1119 GETUPVAL                         R41 3
     1120 GETTABLEKS                       R41 R41 K21 ["FONT_SIZE_MEDIUM"]
     1122 SETTABLEKS                       R41 R40 K101 ["TextSize"]
     1124 GETIMPORT                        R41 K110 [Enum.TextXAlignment.Center]
     1126 SETTABLEKS                       R41 R40 K102 ["TextXAlignment"]
     1128 GETIMPORT                        R41 K165 [Enum.TextYAlignment.Top]
     1130 SETTABLEKS                       R41 R40 K103 ["TextYAlignment"]
     1132 SETTABLEKS                       R40 R39 K136 ["TextProps"]
     1134 CALL                             R37 2 1
     1135 SETTABLEKS                       R37 R36 K155 ["ReasonWithDashboardLink"]
     1137 CALL                             R33 3 1
     1138 SETTABLEKS                       R33 R32 K150 ["ReasonTextFrame"]
     1140 CALL                             R29 3 1
     1141 SETTABLEKS                       R29 R28 K52 ["LoadingResultFailure"]
     1143 GETUPVAL                         R30 16
     1144 CALL                             R30 0 1
     1145 JUMPIFNOT                        R30 ; [+20]
     1146 GETTABLEKS                       R30 R0 K167 ["state"]
     1148 GETTABLEKS                       R30 R30 K168 ["showWarning"]
     1150 JUMPIFNOT                        R30 ; [+15]
     1151 GETUPVAL                         R29 8
     1152 GETTABLEKS                       R29 R29 K37 ["createElement"]
     1154 GETUPVAL                         R30 17
     1155 DUPTABLE                         R31 K171 [{"NonBlockingDependencyIssues", "OnClose"}]
     1156 GETTABLEKS                       R32 R1 K172 ["nonBlockingDependencyIssues"]
     1158 SETTABLEKS                       R32 R31 K169 ["NonBlockingDependencyIssues"]
     1160 GETTABLEKS                       R32 R0 K173 ["onWarningDialogClose"]
     1162 SETTABLEKS                       R32 R31 K170 ["OnClose"]
     1164 CALL                             R29 2 1
     1165 JUMP                             ; [+1]
     1166 LOADNIL                          R29
     1167 SETTABLEKS                       R29 R28 K53 ["DependencyWarningDialog"]
     1169 GETUPVAL                         R29 8
     1170 GETTABLEKS                       R29 R29 K37 ["createElement"]
     1172 LOADK                            R30 K38 ["Frame"]
     1173 DUPTABLE                         R31 K174 [{"AutomaticSize", "BackgroundTransparency", "Position", "Size"}]
     1174 GETIMPORT                        R32 K46 [Enum.AutomaticSize.Y]
     1176 SETTABLEKS                       R32 R31 K39 ["AutomaticSize"]
     1178 LOADN                            R32 1
     1179 SETTABLEKS                       R32 R31 K41 ["BackgroundTransparency"]
     1181 GETIMPORT                        R32 K65 [UDim2.new]
     1183 LOADN                            R33 0
     1184 LOADN                            R34 0
     1185 LOADN                            R35 1
     1186 MINUS                            R36 R17
     1187 CALL                             R32 4 1
     1188 SETTABLEKS                       R32 R31 K59 ["Position"]
     1190 GETIMPORT                        R32 K65 [UDim2.new]
     1192 LOADN                            R33 1
     1193 LOADN                            R34 0
     1194 LOADN                            R35 0
     1195 MOVE                             R36 R17
     1196 CALL                             R32 4 1
     1197 SETTABLEKS                       R32 R31 K43 ["Size"]
     1199 DUPTABLE                         R32 K179 [{"UIListLayout", "SubmitButton", "NextButton", "CloseLink", "CloseButton", "LinkText"}]
     1200 GETUPVAL                         R33 8
     1201 GETTABLEKS                       R33 R33 K37 ["createElement"]
     1203 LOADK                            R34 K76 ["UIListLayout"]
     1204 DUPTABLE                         R35 K180 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder"}]
     1205 GETIMPORT                        R36 K88 [Enum.FillDirection.Vertical]
     1207 SETTABLEKS                       R36 R35 K81 ["FillDirection"]
     1209 GETIMPORT                        R36 K90 [Enum.HorizontalAlignment.Center]
     1211 SETTABLEKS                       R36 R35 K82 ["HorizontalAlignment"]
     1213 GETIMPORT                        R36 K96 [UDim.new]
     1215 LOADN                            R37 0
     1216 LOADN                            R38 10
     1217 CALL                             R36 2 1
     1218 SETTABLEKS                       R36 R35 K85 ["Padding"]
     1220 GETIMPORT                        R36 K94 [Enum.SortOrder.LayoutOrder]
     1222 SETTABLEKS                       R36 R35 K84 ["SortOrder"]
     1224 CALL                             R33 2 1
     1225 SETTABLEKS                       R33 R32 K76 ["UIListLayout"]
     1227 JUMPIFNOT                        R13 ; [+38]
     1228 GETUPVAL                         R33 8
     1229 GETTABLEKS                       R33 R33 K37 ["createElement"]
     1231 GETUPVAL                         R34 18
     1232 DUPTABLE                         R35 K183 [{"AutomaticSize", "LayoutOrder", "onClick", "Size", "titleText"}]
     1233 GETIMPORT                        R36 K185 [Enum.AutomaticSize.X]
     1235 SETTABLEKS                       R36 R35 K39 ["AutomaticSize"]
     1237 NAMECALL                         R36 R22 K186 ["getNextOrder"]
     1239 CALL                             R36 1 1
     1240 SETTABLEKS                       R36 R35 K93 ["LayoutOrder"]
     1242 GETTABLEKS                       R36 R0 K187 ["goToNextScreen"]
     1244 SETTABLEKS                       R36 R35 K181 ["onClick"]
     1246 GETIMPORT                        R36 K65 [UDim2.new]
     1248 LOADN                            R37 0
     1249 GETUPVAL                         R38 19
     1250 LOADN                            R39 0
     1251 LOADN                            R40 32
     1252 CALL                             R36 4 1
     1253 SETTABLEKS                       R36 R35 K43 ["Size"]
     1255 GETTABLEKS                       R36 R1 K28 ["Localization"]
     1257 LOADK                            R38 K29 ["AssetUploadResult"]
     1258 LOADK                            R39 K188 ["SubmitAsDevelopmentItem"]
     1259 NAMECALL                         R36 R36 K31 ["getText"]
     1261 CALL                             R36 3 1
     1262 SETTABLEKS                       R36 R35 K182 ["titleText"]
     1264 CALL                             R33 2 1
     1265 JUMP                             ; [+1]
     1266 LOADNIL                          R33
     1267 SETTABLEKS                       R33 R32 K175 ["SubmitButton"]
     1269 JUMPIFNOT                        R16 ; [+38]
     1270 GETUPVAL                         R33 8
     1271 GETTABLEKS                       R33 R33 K37 ["createElement"]
     1273 GETUPVAL                         R34 18
     1274 DUPTABLE                         R35 K183 [{"AutomaticSize", "LayoutOrder", "onClick", "Size", "titleText"}]
     1275 GETIMPORT                        R36 K185 [Enum.AutomaticSize.X]
     1277 SETTABLEKS                       R36 R35 K39 ["AutomaticSize"]
     1279 NAMECALL                         R36 R22 K186 ["getNextOrder"]
     1281 CALL                             R36 1 1
     1282 SETTABLEKS                       R36 R35 K93 ["LayoutOrder"]
     1284 GETTABLEKS                       R36 R0 K189 ["onClose"]
     1286 SETTABLEKS                       R36 R35 K181 ["onClick"]
     1288 GETIMPORT                        R36 K65 [UDim2.new]
     1290 LOADN                            R37 0
     1291 LOADN                            R38 200
     1292 LOADN                            R39 0
     1293 LOADN                            R40 32
     1294 CALL                             R36 4 1
     1295 SETTABLEKS                       R36 R35 K43 ["Size"]
     1297 GETTABLEKS                       R36 R1 K28 ["Localization"]
     1299 LOADK                            R38 K29 ["AssetUploadResult"]
     1300 LOADK                            R39 K190 ["NextSubmit"]
     1301 NAMECALL                         R36 R36 K31 ["getText"]
     1303 CALL                             R36 3 1
     1304 SETTABLEKS                       R36 R35 K182 ["titleText"]
     1306 CALL                             R33 2 1
     1307 JUMP                             ; [+1]
     1308 LOADNIL                          R33
     1309 SETTABLEKS                       R33 R32 K176 ["NextButton"]
     1311 JUMPIFNOT                        R13 ; [+25]
     1312 GETUPVAL                         R33 8
     1313 GETTABLEKS                       R33 R33 K37 ["createElement"]
     1315 GETUPVAL                         R34 20
     1316 DUPTABLE                         R35 K192 [{"LayoutOrder", "OnClick", "Text"}]
     1317 NAMECALL                         R36 R22 K186 ["getNextOrder"]
     1319 CALL                             R36 1 1
     1320 SETTABLEKS                       R36 R35 K93 ["LayoutOrder"]
     1322 GETTABLEKS                       R36 R0 K189 ["onClose"]
     1324 SETTABLEKS                       R36 R35 K191 ["OnClick"]
     1326 GETTABLEKS                       R36 R1 K28 ["Localization"]
     1328 LOADK                            R38 K29 ["AssetUploadResult"]
     1329 LOADK                            R39 K193 ["Close"]
     1330 NAMECALL                         R36 R36 K31 ["getText"]
     1332 CALL                             R36 3 1
     1333 SETTABLEKS                       R36 R35 K98 ["Text"]
     1335 CALL                             R33 2 1
     1336 JUMP                             ; [+1]
     1337 LOADNIL                          R33
     1338 SETTABLEKS                       R33 R32 K177 ["CloseLink"]
     1340 JUMPIFNOT                        R14 ; [+34]
     1341 GETUPVAL                         R33 8
     1342 GETTABLEKS                       R33 R33 K37 ["createElement"]
     1344 GETUPVAL                         R34 18
     1345 DUPTABLE                         R35 K194 [{"LayoutOrder", "onClick", "Size", "titleText"}]
     1346 NAMECALL                         R36 R22 K186 ["getNextOrder"]
     1348 CALL                             R36 1 1
     1349 SETTABLEKS                       R36 R35 K93 ["LayoutOrder"]
     1351 GETTABLEKS                       R36 R0 K189 ["onClose"]
     1353 SETTABLEKS                       R36 R35 K181 ["onClick"]
     1355 GETIMPORT                        R36 K65 [UDim2.new]
     1357 LOADN                            R37 0
     1358 LOADN                            R38 120
     1359 LOADN                            R39 0
     1360 LOADN                            R40 32
     1361 CALL                             R36 4 1
     1362 SETTABLEKS                       R36 R35 K43 ["Size"]
     1364 GETTABLEKS                       R36 R1 K28 ["Localization"]
     1366 LOADK                            R38 K29 ["AssetUploadResult"]
     1367 LOADK                            R39 K193 ["Close"]
     1368 NAMECALL                         R36 R36 K31 ["getText"]
     1370 CALL                             R36 3 1
     1371 SETTABLEKS                       R36 R35 K182 ["titleText"]
     1373 CALL                             R33 2 1
     1374 JUMP                             ; [+1]
     1375 LOADNIL                          R33
     1376 SETTABLEKS                       R33 R32 K178 ["CloseButton"]
     1378 JUMPIFNOT                        R15 ; [+23]
     1379 GETUPVAL                         R33 8
     1380 GETTABLEKS                       R33 R33 K37 ["createElement"]
     1382 GETUPVAL                         R34 20
     1383 DUPTABLE                         R35 K192 [{"LayoutOrder", "OnClick", "Text"}]
     1384 LOADN                            R36 1
     1385 SETTABLEKS                       R36 R35 K93 ["LayoutOrder"]
     1387 GETTABLEKS                       R36 R0 K187 ["goToNextScreen"]
     1389 SETTABLEKS                       R36 R35 K191 ["OnClick"]
     1391 GETTABLEKS                       R36 R1 K28 ["Localization"]
     1393 LOADK                            R38 K29 ["AssetUploadResult"]
     1394 LOADK                            R39 K195 ["Back"]
     1395 NAMECALL                         R36 R36 K31 ["getText"]
     1397 CALL                             R36 3 1
     1398 SETTABLEKS                       R36 R35 K98 ["Text"]
     1400 CALL                             R33 2 1
     1401 JUMP                             ; [+1]
     1402 LOADNIL                          R33
     1403 SETTABLEKS                       R33 R32 K133 ["LinkText"]
     1405 CALL                             R29 3 1
     1406 SETTABLEKS                       R29 R28 K54 ["Footer"]
     1408 CALL                             R25 3 -1
     1409 CLOSEUPVALS                      R19
     1410 RETURN                           R25 -1

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
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
       57 GETTABLEKS                       R9 R6 K18 ["RoactRodux"]
       59 CALL                             R8 1 1
       60 GETTABLEKS                       R9 R5 K19 ["Src"]
       62 GETTABLEKS                       R9 R9 K20 ["Util"]
       64 GETIMPORT                        R10 K16 [require]
       66 GETTABLEKS                       R11 R9 K21 ["Constants"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K16 [require]
       71 GETTABLEKS                       R12 R9 K22 ["AssetConfigConstants"]
       73 CALL                             R11 1 1
       74 GETTABLEKS                       R12 R11 K23 ["PreviewTypes"]
       76 GETIMPORT                        R13 K16 [require]
       78 GETTABLEKS                       R14 R9 K24 ["AssetConfigUtil"]
       80 CALL                             R13 1 1
       81 GETIMPORT                        R14 K16 [require]
       83 GETTABLEKS                       R15 R9 K25 ["AssetUploadUtil"]
       85 CALL                             R14 1 1
       86 GETIMPORT                        R15 K16 [require]
       88 GETTABLEKS                       R16 R9 K26 ["AnimationConfigUtil"]
       90 CALL                             R15 1 1
       91 GETIMPORT                        R16 K16 [require]
       93 GETTABLEKS                       R17 R9 K27 ["Urls"]
       95 CALL                             R16 1 1
       96 GETIMPORT                        R17 K16 [require]
       98 GETTABLEKS                       R18 R6 K28 ["Framework"]
      100 CALL                             R17 1 1
      101 GETTABLEKS                       R17 R17 K29 ["ContextServices"]
      103 GETTABLEKS                       R18 R17 K30 ["withContext"]
      105 GETTABLEKS                       R19 R5 K19 ["Src"]
      107 GETTABLEKS                       R19 R19 K31 ["Components"]
      109 GETIMPORT                        R20 K16 [require]
      111 GETTABLEKS                       R21 R19 K32 ["NavButton"]
      113 CALL                             R20 1 1
      114 GETTABLEKS                       R21 R19 K33 ["AssetConfiguration"]
      116 GETIMPORT                        R22 K16 [require]
      118 GETTABLEKS                       R23 R21 K34 ["AssetThumbnailPreview"]
      120 CALL                             R22 1 1
      121 GETIMPORT                        R23 K16 [require]
      123 GETTABLEKS                       R24 R21 K35 ["ReasonFrame"]
      125 CALL                             R23 1 1
      126 GETIMPORT                        R24 K16 [require]
      128 GETTABLEKS                       R25 R21 K36 ["CopyID"]
      130 CALL                             R24 1 1
      131 GETIMPORT                        R25 K16 [require]
      133 GETTABLEKS                       R26 R21 K37 ["ModelUploadWarningDialog"]
      135 CALL                             R25 1 1
      136 GETIMPORT                        R26 K16 [require]
      138 GETTABLEKS                       R27 R6 K28 ["Framework"]
      140 CALL                             R26 1 1
      141 GETTABLEKS                       R27 R26 K38 ["UI"]
      143 GETTABLEKS                       R27 R27 K39 ["LinkText"]
      145 GETTABLEKS                       R28 R26 K38 ["UI"]
      147 GETTABLEKS                       R28 R28 K40 ["Pane"]
      149 GETTABLEKS                       R29 R26 K38 ["UI"]
      151 GETTABLEKS                       R29 R29 K41 ["TextWithInlineLink"]
      153 GETTABLEKS                       R30 R26 K20 ["Util"]
      155 GETTABLEKS                       R30 R30 K42 ["LayoutOrderIterator"]
      157 GETTABLEKS                       R31 R5 K19 ["Src"]
      159 GETTABLEKS                       R31 R31 K43 ["Actions"]
      161 GETIMPORT                        R32 K16 [require]
      163 GETTABLEKS                       R33 R31 K44 ["SetCurrentScreen"]
      165 CALL                             R32 1 1
      166 GETIMPORT                        R33 K16 [require]
      168 GETTABLEKS                       R34 R31 K45 ["ClearChange"]
      170 CALL                             R33 1 1
      171 GETTABLEKS                       R34 R5 K19 ["Src"]
      173 GETTABLEKS                       R34 R34 K46 ["Thunks"]
      175 GETIMPORT                        R35 K16 [require]
      177 GETTABLEKS                       R36 R5 K19 ["Src"]
      179 GETTABLEKS                       R36 R36 K47 ["Flags"]
      181 GETTABLEKS                       R36 R36 K48 ["getFFlagToolboxDeprecateAssetSelection"]
      183 CALL                             R35 1 1
      184 LOADNIL                          R36
      185 MOVE                             R37 R35
      186 CALL                             R37 0 1
      187 JUMPIF                           R37 ; [+8]
      188 GETIMPORT                        R37 K16 [require]
      190 GETTABLEKS                       R38 R34 K33 ["AssetConfiguration"]
      192 GETTABLEKS                       R38 R38 K49 ["GoToNextScreen"]
      194 CALL                             R37 1 1
      195 MOVE                             R36 R37
      196 GETIMPORT                        R37 K16 [require]
      198 GETTABLEKS                       R38 R5 K19 ["Src"]
      200 GETTABLEKS                       R38 R38 K20 ["Util"]
      202 GETTABLEKS                       R38 R38 K50 ["SharedFlags"]
      204 GETTABLEKS                       R38 R38 K51 ["getFFlagToolboxFixAssetConfigResultTranslations"]
      206 CALL                             R37 1 1
      207 GETIMPORT                        R38 K16 [require]
      209 GETTABLEKS                       R39 R5 K19 ["Src"]
      211 GETTABLEKS                       R39 R39 K47 ["Flags"]
      213 GETTABLEKS                       R39 R39 K52 ["getFFlagAllowModelUploadErrorMessageToBeSelectable"]
      215 CALL                             R38 1 1
      216 GETIMPORT                        R39 K16 [require]
      218 GETTABLEKS                       R40 R5 K19 ["Src"]
      220 GETTABLEKS                       R40 R40 K47 ["Flags"]
      222 GETTABLEKS                       R40 R40 K53 ["getFFlagEnableUploadingAvatarAnimations"]
      224 CALL                             R39 1 1
      225 GETIMPORT                        R40 K16 [require]
      227 GETTABLEKS                       R41 R5 K19 ["Src"]
      229 GETTABLEKS                       R41 R41 K20 ["Util"]
      231 GETTABLEKS                       R41 R41 K50 ["SharedFlags"]
      233 GETTABLEKS                       R41 R41 K54 ["getFFlagToolboxModelCreationWarningWindow"]
      235 CALL                             R40 1 1
      236 GETIMPORT                        R42 K1 [game]
      238 LOADK                            R44 K9 ["ToolboxFixSubmitDevelopmentItemWidth"]
      239 NAMECALL                         R42 R42 K7 ["GetFastFlag"]
      241 CALL                             R42 2 1
      242 JUMPIFNOT                        R42 ; [+2]
      243 LOADN                            R41 225
      244 JUMP                             ; [+1]
      245 LOADN                            R41 150
      246 GETTABLEKS                       R42 R7 K55 ["PureComponent"]
      248 LOADK                            R44 K56 ["AssetUploadResult"]
      249 NAMECALL                         R42 R42 K57 ["extend"]
      251 CALL                             R42 2 1
      252 DUPCLOSURE                       R43 K58 [PROTO_7]
      253 CAPTURE                          VAL R40
      254 CAPTURE                          VAL R11
      255 CAPTURE                          VAL R39
      256 CAPTURE                          VAL R15
      257 CAPTURE                          VAL R4
      258 CAPTURE                          VAL R16
      259 CAPTURE                          VAL R1
      260 CAPTURE                          VAL R3
      261 SETTABLEKS                       R43 R42 K59 ["init"]
      263 DUPCLOSURE                       R43 K60 [PROTO_8]
      264 CAPTURE                          VAL R40
      265 CAPTURE                          VAL R14
      266 SETTABLEKS                       R43 R42 K61 ["didMount"]
      268 DUPCLOSURE                       R43 K62 [PROTO_9]
      269 CAPTURE                          VAL R11
      270 CAPTURE                          VAL R13
      271 CAPTURE                          VAL R0
      272 CAPTURE                          VAL R16
      273 CAPTURE                          VAL R2
      274 DUPCLOSURE                       R44 K63 [PROTO_10]
      275 DUPCLOSURE                       R45 K64 [PROTO_15]
      276 CAPTURE                          VAL R11
      277 CAPTURE                          VAL R13
      278 CAPTURE                          VAL R12
      279 CAPTURE                          VAL R10
      280 CAPTURE                          VAL R43
      281 CAPTURE                          VAL R16
      282 CAPTURE                          VAL R30
      283 CAPTURE                          VAL R37
      284 CAPTURE                          VAL R7
      285 CAPTURE                          VAL R22
      286 CAPTURE                          VAL R24
      287 CAPTURE                          VAL R1
      288 CAPTURE                          VAL R29
      289 CAPTURE                          VAL R4
      290 CAPTURE                          VAL R28
      291 CAPTURE                          VAL R38
      292 CAPTURE                          VAL R40
      293 CAPTURE                          VAL R25
      294 CAPTURE                          VAL R20
      295 CAPTURE                          VAL R41
      296 CAPTURE                          VAL R27
      297 SETTABLEKS                       R45 R42 K65 ["render"]
      299 DUPCLOSURE                       R45 K66 [PROTO_16]
      300 CAPTURE                          VAL R39
      301 CAPTURE                          VAL R40
      302 NEWCLOSURE                       R46 P6
      303 CAPTURE                          VAL R33
      304 CAPTURE                          VAL R35
      305 CAPTURE                          VAL R32
      306 CAPTURE                          VAL R11
      307 CAPTURE                          REF R36
      308 MOVE                             R47 R18
      309 DUPTABLE                         R48 K69 [{"Stylizer", "Localization"}]
      310 GETTABLEKS                       R49 R17 K67 ["Stylizer"]
      312 SETTABLEKS                       R49 R48 K67 ["Stylizer"]
      314 GETTABLEKS                       R49 R17 K68 ["Localization"]
      316 SETTABLEKS                       R49 R48 K68 ["Localization"]
      318 CALL                             R47 1 1
      319 MOVE                             R48 R42
      320 CALL                             R47 1 1
      321 MOVE                             R42 R47
      322 GETTABLEKS                       R47 R8 K70 ["connect"]
      324 MOVE                             R48 R45
      325 MOVE                             R49 R46
      326 CALL                             R47 2 1
      327 MOVE                             R48 R42
      328 CALL                             R47 1 -1
      329 CLOSEUPVALS                      R36
      330 RETURN                           R47 -1
