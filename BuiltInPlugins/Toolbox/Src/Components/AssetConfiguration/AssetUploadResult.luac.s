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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openCreatorDashboardBundle"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["assetId"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openCreatorDashboard"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["assetId"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_12:
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
       90 GETTABLEKS                       R11 R1 K18 ["uploadSucceeded"]
       92 NOT                              R12 R11
       93 GETUPVAL                         R13 1
       94 GETTABLEKS                       R13 R13 K6 ["isCatalogAsset"]
       96 GETTABLEKS                       R14 R1 K7 ["assetTypeEnum"]
       98 CALL                             R13 1 1
       99 AND                              R14 R11 R13
      100 JUMPIF                           R11 ; [+2]
      101 MOVE                             R15 R13
      102 JUMPIF                           R15 ; [+1]
      103 NOT                              R15 R13
      104 LOADB                            R16 1
      105 LOADNIL                          R17
      106 GETTABLEKS                       R18 R1 K19 ["hasSubsequent"]
      108 JUMPIFNOT                        R18 ; [+4]
      109 LOADB                            R14 0
      110 LOADB                            R16 0
      111 LOADB                            R15 0
      112 LOADB                            R17 1
      113 GETUPVAL                         R18 1
      114 GETTABLEKS                       R18 R18 K6 ["isCatalogAsset"]
      116 GETTABLEKS                       R19 R1 K7 ["assetTypeEnum"]
      118 CALL                             R18 1 1
      119 JUMPIF                           R18 ; [+6]
      120 GETUPVAL                         R18 1
      121 GETTABLEKS                       R18 R18 K20 ["isUGCBundleType"]
      123 GETTABLEKS                       R19 R1 K7 ["assetTypeEnum"]
      125 CALL                             R18 1 1
      126 LOADNIL                          R19
      127 JUMPIF                           R18 ; [+13]
      128 GETTABLEKS                       R20 R1 K18 ["uploadSucceeded"]
      130 JUMPIFNOT                        R20 ; [+10]
      131 GETUPVAL                         R20 7
      132 GETTABLEKS                       R21 R1 K3 ["screenFlowType"]
      134 GETTABLEKS                       R23 R1 K22 ["assetId"]
      136 ORK                              R22 R23 K21 [0]
      137 GETTABLEKS                       R23 R1 K7 ["assetTypeEnum"]
      139 CALL                             R20 3 1
      140 MOVE                             R19 R20
      141 GETUPVAL                         R20 8
      142 GETTABLEKS                       R20 R20 K23 ["constructCreatorStoreConfigurationUrl"]
      144 GETTABLEKS                       R22 R1 K22 ["assetId"]
      146 ORK                              R21 R22 K21 [0]
      147 CALL                             R20 1 1
      148 GETUPVAL                         R21 1
      149 GETTABLEKS                       R21 R21 K24 ["isCreatorStoreAssetNotIncludingAnimation"]
      151 GETTABLEKS                       R22 R1 K7 ["assetTypeEnum"]
      153 CALL                             R21 1 1
      154 JUMPIFNOT                        R21 ; [+1]
      155 NOT                              R21 R18
      156 GETTABLEKS                       R23 R1 K7 ["assetTypeEnum"]
      158 GETIMPORT                        R24 K28 [Enum.AssetType.EmoteAnimation]
      160 JUMPIFNOTEQ                      R23 R24 ; [+3]
      162 LOADN                            R22 150
      163 JUMP                             ; [+1]
      164 LOADN                            R22 186
      165 GETUPVAL                         R23 9
      166 GETTABLEKS                       R23 R23 K29 ["createElement"]
      168 LOADK                            R24 K30 ["Frame"]
      169 DUPTABLE                         R25 K36 [{["AutomaticSize"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["Size"]}]
      170 GETIMPORT                        R26 K38 [Enum.AutomaticSize.Y]
      172 SETTABLEKS                       R26 R25 K31 ["AutomaticSize"]
      174 GETTABLEKS                       R26 R2 K39 ["uploadResult"]
      176 GETTABLEKS                       R26 R26 K40 ["background"]
      178 SETTABLEKS                       R26 R25 K32 ["BackgroundColor3"]
      180 GETTABLEKS                       R26 R1 K35 ["Size"]
      182 SETTABLEKS                       R26 R25 K35 ["Size"]
      184 DUPTABLE                         R26 K47 [{"ModelPreview", "ThumbnailPreview", "CopyID", "LoadingResultSuccess", "LoadingResultFailure", "DependencyWarningDialog", "Footer"}]
      185 MOVE                             R27 R9
      186 JUMPIFNOT                        R27 ; [+37]
      187 GETUPVAL                         R27 9
      188 GETTABLEKS                       R27 R27 K29 ["createElement"]
      190 GETUPVAL                         R28 10
      191 DUPTABLE                         R29 K55 [{["title"], ["titleHeight"] = 24, ["titlePadding"] = 12, ["Position"], ["Size"], ["AssetType"], ["UploadSucceeded"]}]
      192 GETTABLEKS                       R31 R1 K57 ["assetName"]
      194 ORK                              R30 R31 K56 []
      195 SETTABLEKS                       R30 R29 K48 ["title"]
      197 GETIMPORT                        R30 K60 [UDim2.new]
      199 LOADK                            R31 K61 [0.5]
      200 LOADN                            R32 -75
      201 LOADN                            R33 0
      202 LOADN                            R34 48
      203 CALL                             R30 4 1
      204 SETTABLEKS                       R30 R29 K53 ["Position"]
      206 GETIMPORT                        R30 K60 [UDim2.new]
      208 LOADN                            R31 0
      209 LOADN                            R32 150
      210 LOADN                            R33 0
      211 MOVE                             R34 R22
      212 CALL                             R30 4 1
      213 SETTABLEKS                       R30 R29 K35 ["Size"]
      215 GETTABLEKS                       R30 R1 K7 ["assetTypeEnum"]
      217 SETTABLEKS                       R30 R29 K26 ["AssetType"]
      219 GETTABLEKS                       R30 R1 K18 ["uploadSucceeded"]
      221 SETTABLEKS                       R30 R29 K54 ["UploadSucceeded"]
      223 CALL                             R27 2 1
      224 SETTABLEKS                       R27 R26 K15 ["ModelPreview"]
      226 MOVE                             R27 R10
      227 JUMPIFNOT                        R27 ; [+50]
      228 GETUPVAL                         R27 9
      229 GETTABLEKS                       R27 R27 K29 ["createElement"]
      231 LOADK                            R28 K62 ["ImageLabel"]
      232 DUPTABLE                         R29 K66 [{["Position"], ["Size"], ["Image"], ["ScaleType"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      233 GETIMPORT                        R30 K60 [UDim2.new]
      235 LOADK                            R31 K61 [0.5]
      236 LOADN                            R32 -75
      237 LOADN                            R33 0
      238 LOADN                            R34 48
      239 CALL                             R30 4 1
      240 SETTABLEKS                       R30 R29 K53 ["Position"]
      242 GETIMPORT                        R30 K60 [UDim2.new]
      244 LOADN                            R31 0
      245 LOADN                            R32 150
      246 LOADN                            R33 0
      247 LOADN                            R34 150
      248 CALL                             R30 4 1
      249 SETTABLEKS                       R30 R29 K35 ["Size"]
      251 GETUPVAL                         R31 4
      252 CALL                             R31 0 1
      253 JUMPIFNOT                        R31 ; [+2]
      254 MOVE                             R30 R8
      255 JUMPIF                           R30 ; [+8]
      256 GETUPVAL                         R30 1
      257 GETTABLEKS                       R30 R30 K67 ["getResultThumbnail"]
      259 GETTABLEKS                       R31 R1 K22 ["assetId"]
      261 GETTABLEKS                       R32 R1 K68 ["iconFile"]
      263 CALL                             R30 2 1
      264 SETTABLEKS                       R30 R29 K63 ["Image"]
      266 GETUPVAL                         R31 4
      267 CALL                             R31 0 1
      268 JUMPIFNOT                        R31 ; [+5]
      269 JUMPIFEQKNIL                     R8 ; [+4]
      271 GETIMPORT                        R30 K70 [Enum.ScaleType.Fit]
      273 JUMP                             ; [+1]
      274 LOADNIL                          R30
      275 SETTABLEKS                       R30 R29 K64 ["ScaleType"]
      277 CALL                             R27 2 1
      278 SETTABLEKS                       R27 R26 K41 ["ThumbnailPreview"]
      280 MOVE                             R27 R11
      281 JUMPIFNOT                        R27 ; [+10]
      282 GETUPVAL                         R27 9
      283 GETTABLEKS                       R27 R27 K29 ["createElement"]
      285 GETUPVAL                         R28 11
      286 DUPTABLE                         R29 K74 [{["YPos"] = 240, ["AssetId"]}]
      287 GETTABLEKS                       R30 R1 K22 ["assetId"]
      289 SETTABLEKS                       R30 R29 K73 ["AssetId"]
      291 CALL                             R27 2 1
      292 SETTABLEKS                       R27 R26 K42 ["CopyID"]
      294 MOVE                             R27 R11
      295 JUMPIFNOT                        R27 ; [+65]
      296 GETUPVAL                         R27 12
      297 GETTABLEKS                       R27 R27 K29 ["createElement"]
      299 GETUPVAL                         R28 13
      300 DUPTABLE                         R29 K84 [{"displayCreatorDashboardMessage", "onDashboardLinkClicked", "Text", "showCreatorStoreConfigurationLink", "showModeration", "moderationMessageOverride", "creatorStoreConfigurationUrl", "url", "Localization", "Stylizer"}]
      301 SETTABLEKS                       R18 R29 K75 ["displayCreatorDashboardMessage"]
      303 GETUPVAL                         R31 1
      304 GETTABLEKS                       R31 R31 K20 ["isUGCBundleType"]
      306 GETTABLEKS                       R32 R1 K7 ["assetTypeEnum"]
      308 CALL                             R31 1 1
      309 JUMPIFNOT                        R31 ; [+4]
      310 NEWCLOSURE                       R30 P0
      311 CAPTURE                          VAL R0
      312 CAPTURE                          VAL R1
      313 JUMP                             ; [+3]
      314 NEWCLOSURE                       R30 P1
      315 CAPTURE                          VAL R0
      316 CAPTURE                          VAL R1
      317 SETTABLEKS                       R30 R29 K76 ["onDashboardLinkClicked"]
      319 GETTABLEKS                       R30 R1 K83 ["Localization"]
      321 LOADK                            R32 K85 ["AssetUploadResult"]
      322 LOADK                            R33 K86 ["CreatorDashboardMessage"]
      323 DUPTABLE                         R34 K88 [{"creatorDashboardLink"}]
      324 GETUPVAL                         R35 14
      325 GETTABLEKS                       R35 R35 K89 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      327 SETTABLEKS                       R35 R34 K87 ["creatorDashboardLink"]
      329 NAMECALL                         R30 R30 K90 ["getText"]
      331 CALL                             R30 4 1
      332 SETTABLEKS                       R30 R29 K77 ["Text"]
      334 SETTABLEKS                       R21 R29 K78 ["showCreatorStoreConfigurationLink"]
      336 SETTABLEKS                       R5 R29 K79 ["showModeration"]
      338 JUMPIFNOT                        R6 ; [+8]
      339 GETTABLEKS                       R30 R1 K83 ["Localization"]
      341 LOADK                            R32 K85 ["AssetUploadResult"]
      342 LOADK                            R33 K91 ["UpdateSubmittedMessage"]
      343 NAMECALL                         R30 R30 K90 ["getText"]
      345 CALL                             R30 3 1
      346 JUMPIF                           R30 ; [+1]
      347 LOADNIL                          R30
      348 SETTABLEKS                       R30 R29 K80 ["moderationMessageOverride"]
      350 SETTABLEKS                       R20 R29 K81 ["creatorStoreConfigurationUrl"]
      352 SETTABLEKS                       R19 R29 K82 ["url"]
      354 GETTABLEKS                       R30 R1 K83 ["Localization"]
      356 SETTABLEKS                       R30 R29 K83 ["Localization"]
      358 SETTABLEKS                       R2 R29 K1 ["Stylizer"]
      360 CALL                             R27 2 1
      361 SETTABLEKS                       R27 R26 K43 ["LoadingResultSuccess"]
      363 MOVE                             R27 R12
      364 JUMPIFNOT                        R27 ; [+18]
      365 GETUPVAL                         R27 12
      366 GETTABLEKS                       R27 R27 K29 ["createElement"]
      368 GETUPVAL                         R28 15
      369 DUPTABLE                         R29 K92 [{"Localization", "Stylizer", "networkError", "onDashboardLinkClicked"}]
      370 GETTABLEKS                       R30 R1 K83 ["Localization"]
      372 SETTABLEKS                       R30 R29 K83 ["Localization"]
      374 SETTABLEKS                       R2 R29 K1 ["Stylizer"]
      376 SETTABLEKS                       R3 R29 K2 ["networkError"]
      378 GETTABLEKS                       R30 R0 K93 ["openCreatorDashboardCreationsPage"]
      380 SETTABLEKS                       R30 R29 K76 ["onDashboardLinkClicked"]
      382 CALL                             R27 2 1
      383 SETTABLEKS                       R27 R26 K44 ["LoadingResultFailure"]
      385 GETUPVAL                         R28 16
      386 CALL                             R28 0 1
      387 JUMPIFNOT                        R28 ; [+20]
      388 GETTABLEKS                       R28 R0 K94 ["state"]
      390 GETTABLEKS                       R28 R28 K95 ["showWarning"]
      392 JUMPIFNOT                        R28 ; [+15]
      393 GETUPVAL                         R27 9
      394 GETTABLEKS                       R27 R27 K29 ["createElement"]
      396 GETUPVAL                         R28 17
      397 DUPTABLE                         R29 K98 [{"NonBlockingDependencyIssues", "OnClose"}]
      398 GETTABLEKS                       R30 R1 K99 ["nonBlockingDependencyIssues"]
      400 SETTABLEKS                       R30 R29 K96 ["NonBlockingDependencyIssues"]
      402 GETTABLEKS                       R30 R0 K100 ["onWarningDialogClose"]
      404 SETTABLEKS                       R30 R29 K97 ["OnClose"]
      406 CALL                             R27 2 1
      407 JUMP                             ; [+1]
      408 LOADNIL                          R27
      409 SETTABLEKS                       R27 R26 K45 ["DependencyWarningDialog"]
      411 GETUPVAL                         R27 12
      412 GETTABLEKS                       R27 R27 K29 ["createElement"]
      414 GETUPVAL                         R28 18
      415 DUPTABLE                         R29 K107 [{"Localization", "primaryButtonText", "onPrimaryButtonActivated", "showCloseLink", "showBackLink", "onGoToNextScreen", "onClose"}]
      416 GETTABLEKS                       R30 R1 K83 ["Localization"]
      418 SETTABLEKS                       R30 R29 K83 ["Localization"]
      420 JUMPIFNOT                        R14 ; [+8]
      421 GETTABLEKS                       R30 R1 K83 ["Localization"]
      423 LOADK                            R32 K85 ["AssetUploadResult"]
      424 LOADK                            R33 K108 ["SubmitAsDevelopmentItem"]
      425 NAMECALL                         R30 R30 K90 ["getText"]
      427 CALL                             R30 3 1
      428 JUMP                             ; [+19]
      429 JUMPIFNOT                        R17 ; [+8]
      430 GETTABLEKS                       R30 R1 K83 ["Localization"]
      432 LOADK                            R32 K85 ["AssetUploadResult"]
      433 LOADK                            R33 K109 ["NextSubmit"]
      434 NAMECALL                         R30 R30 K90 ["getText"]
      436 CALL                             R30 3 1
      437 JUMP                             ; [+10]
      438 JUMPIFNOT                        R15 ; [+8]
      439 GETTABLEKS                       R30 R1 K83 ["Localization"]
      441 LOADK                            R32 K85 ["AssetUploadResult"]
      442 LOADK                            R33 K110 ["Close"]
      443 NAMECALL                         R30 R30 K90 ["getText"]
      445 CALL                             R30 3 1
      446 JUMP                             ; [+1]
      447 LOADNIL                          R30
      448 SETTABLEKS                       R30 R29 K101 ["primaryButtonText"]
      450 JUMPIFNOT                        R14 ; [+3]
      451 GETTABLEKS                       R30 R0 K111 ["goToNextScreen"]
      453 JUMP                             ; [+2]
      454 GETTABLEKS                       R30 R0 K106 ["onClose"]
      456 SETTABLEKS                       R30 R29 K102 ["onPrimaryButtonActivated"]
      458 SETTABLEKS                       R14 R29 K103 ["showCloseLink"]
      460 SETTABLEKS                       R16 R29 K104 ["showBackLink"]
      462 GETTABLEKS                       R30 R0 K111 ["goToNextScreen"]
      464 SETTABLEKS                       R30 R29 K105 ["onGoToNextScreen"]
      466 GETTABLEKS                       R30 R0 K106 ["onClose"]
      468 SETTABLEKS                       R30 R29 K106 ["onClose"]
      470 CALL                             R27 2 1
      471 SETTABLEKS                       R27 R26 K46 ["Footer"]
      473 CALL                             R23 3 -1
      474 RETURN                           R23 -1

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["SCREENS"]
        5 GETTABLEKS                       R2 R2 K1 ["CONFIGURE_ASSET"]
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_16:
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
       98 GETTABLEKS                       R18 R5 K20 ["Src"]
      100 GETTABLEKS                       R18 R18 K28 ["Types"]
      102 GETTABLEKS                       R18 R18 K29 ["ConfigTypes"]
      104 CALL                             R17 1 1
      105 GETIMPORT                        R18 K16 [require]
      107 GETTABLEKS                       R19 R10 K30 ["Urls"]
      109 CALL                             R18 1 1
      110 GETIMPORT                        R19 K16 [require]
      112 GETTABLEKS                       R20 R6 K31 ["Framework"]
      114 CALL                             R19 1 1
      115 GETTABLEKS                       R19 R19 K32 ["ContextServices"]
      117 GETTABLEKS                       R20 R19 K33 ["withContext"]
      119 GETTABLEKS                       R21 R5 K20 ["Src"]
      121 GETTABLEKS                       R21 R21 K34 ["Components"]
      123 GETTABLEKS                       R22 R21 K35 ["AssetConfiguration"]
      125 GETIMPORT                        R23 K16 [require]
      127 GETTABLEKS                       R24 R22 K36 ["AssetThumbnailPreview"]
      129 CALL                             R23 1 1
      130 GETIMPORT                        R24 K16 [require]
      132 GETTABLEKS                       R25 R22 K37 ["CopyID"]
      134 CALL                             R24 1 1
      135 GETIMPORT                        R25 K16 [require]
      137 GETTABLEKS                       R26 R22 K38 ["ModelUploadWarningDialog"]
      139 CALL                             R25 1 1
      140 GETIMPORT                        R26 K16 [require]
      142 GETTABLEKS                       R27 R22 K39 ["LoadingResultSuccess"]
      144 CALL                             R26 1 1
      145 GETIMPORT                        R27 K16 [require]
      147 GETTABLEKS                       R28 R22 K40 ["LoadingResultFailure"]
      149 CALL                             R27 1 1
      150 GETIMPORT                        R28 K16 [require]
      152 GETTABLEKS                       R29 R22 K41 ["AssetUploadResultFooter"]
      154 CALL                             R28 1 1
      155 GETTABLEKS                       R29 R5 K20 ["Src"]
      157 GETTABLEKS                       R29 R29 K42 ["Actions"]
      159 GETIMPORT                        R30 K16 [require]
      161 GETTABLEKS                       R31 R29 K43 ["SetCurrentScreen"]
      163 CALL                             R30 1 1
      164 GETIMPORT                        R31 K16 [require]
      166 GETTABLEKS                       R32 R29 K44 ["ClearChange"]
      168 CALL                             R31 1 1
      169 GETIMPORT                        R32 K16 [require]
      171 GETTABLEKS                       R33 R5 K20 ["Src"]
      173 GETTABLEKS                       R33 R33 K45 ["Flags"]
      175 GETTABLEKS                       R33 R33 K46 ["getFFlagEnableUploadingAvatarAnimations"]
      177 CALL                             R32 1 1
      178 GETIMPORT                        R33 K16 [require]
      180 GETTABLEKS                       R34 R10 K47 ["AvatarAnimationStudioToolboxTextures"]
      182 CALL                             R33 1 1
      183 GETIMPORT                        R34 K16 [require]
      185 GETTABLEKS                       R35 R5 K20 ["Src"]
      187 GETTABLEKS                       R35 R35 K21 ["Util"]
      189 GETTABLEKS                       R35 R35 K48 ["SharedFlags"]
      191 GETTABLEKS                       R35 R35 K49 ["getFFlagToolboxModelCreationWarningWindow"]
      193 CALL                             R34 1 1
      194 GETIMPORT                        R35 K16 [require]
      196 GETTABLEKS                       R36 R5 K20 ["Src"]
      198 GETTABLEKS                       R36 R36 K45 ["Flags"]
      200 GETTABLEKS                       R36 R36 K50 ["getFFlagEnableUpdateAvatarItem"]
      202 CALL                             R35 1 1
      203 GETTABLEKS                       R36 R7 K51 ["PureComponent"]
      205 LOADK                            R38 K52 ["AssetUploadResult"]
      206 NAMECALL                         R36 R36 K53 ["extend"]
      208 CALL                             R36 2 1
      209 DUPCLOSURE                       R37 K54 [PROTO_7]
      210 CAPTURE                          VAL R34
      211 CAPTURE                          VAL R12
      212 CAPTURE                          VAL R4
      213 CAPTURE                          VAL R18
      214 CAPTURE                          VAL R1
      215 CAPTURE                          VAL R3
      216 SETTABLEKS                       R37 R36 K55 ["init"]
      218 DUPCLOSURE                       R37 K56 [PROTO_8]
      219 CAPTURE                          VAL R34
      220 CAPTURE                          VAL R15
      221 CAPTURE                          VAL R32
      222 CAPTURE                          VAL R16
      223 SETTABLEKS                       R37 R36 K57 ["didMount"]
      225 DUPCLOSURE                       R37 K58 [PROTO_9]
      226 CAPTURE                          VAL R12
      227 CAPTURE                          VAL R14
      228 CAPTURE                          VAL R0
      229 CAPTURE                          VAL R18
      230 CAPTURE                          VAL R2
      231 DUPCLOSURE                       R38 K59 [PROTO_12]
      232 CAPTURE                          VAL R12
      233 CAPTURE                          VAL R14
      234 CAPTURE                          VAL R35
      235 CAPTURE                          VAL R17
      236 CAPTURE                          VAL R32
      237 CAPTURE                          VAL R33
      238 CAPTURE                          VAL R13
      239 CAPTURE                          VAL R37
      240 CAPTURE                          VAL R18
      241 CAPTURE                          VAL R7
      242 CAPTURE                          VAL R23
      243 CAPTURE                          VAL R24
      244 CAPTURE                          VAL R8
      245 CAPTURE                          VAL R26
      246 CAPTURE                          VAL R11
      247 CAPTURE                          VAL R27
      248 CAPTURE                          VAL R34
      249 CAPTURE                          VAL R25
      250 CAPTURE                          VAL R28
      251 SETTABLEKS                       R38 R36 K60 ["render"]
      253 DUPCLOSURE                       R38 K61 [PROTO_13]
      254 CAPTURE                          VAL R35
      255 CAPTURE                          VAL R32
      256 CAPTURE                          VAL R34
      257 DUPCLOSURE                       R39 K62 [PROTO_16]
      258 CAPTURE                          VAL R31
      259 CAPTURE                          VAL R30
      260 CAPTURE                          VAL R12
      261 MOVE                             R40 R20
      262 DUPTABLE                         R41 K65 [{"Stylizer", "Localization"}]
      263 GETTABLEKS                       R42 R19 K63 ["Stylizer"]
      265 SETTABLEKS                       R42 R41 K63 ["Stylizer"]
      267 GETTABLEKS                       R42 R19 K64 ["Localization"]
      269 SETTABLEKS                       R42 R41 K64 ["Localization"]
      271 CALL                             R40 1 1
      272 MOVE                             R41 R36
      273 CALL                             R40 1 1
      274 MOVE                             R36 R40
      275 GETTABLEKS                       R40 R9 K66 ["connect"]
      277 MOVE                             R41 R38
      278 MOVE                             R42 R39
      279 CALL                             R40 2 1
      280 MOVE                             R41 R36
      281 CALL                             R40 1 -1
      282 RETURN                           R40 -1
