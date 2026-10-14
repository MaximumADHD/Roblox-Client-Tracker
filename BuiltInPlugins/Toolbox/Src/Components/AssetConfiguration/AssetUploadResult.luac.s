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
       21 GETTABLEKS                       R1 R0 K0 ["props"]
       23 GETTABLEKS                       R1 R1 K1 ["uploadSucceeded"]
       25 JUMPIFNOT                        R1 ; [+40]
       26 GETTABLEKS                       R1 R0 K0 ["props"]
       28 GETTABLEKS                       R2 R1 K8 ["animationPackType"]
       30 JUMPIFNOT                        R2 ; [+35]
       31 GETTABLEKS                       R3 R1 K9 ["assetId"]
       33 JUMPIFNOT                        R3 ; [+32]
       34 GETTABLEKS                       R3 R1 K10 ["animationSectionValid"]
       36 JUMPIFEQKB                       R3 FALSE ; [+29]
       38 JUMPIFNOTEQKS                    R2 K11 ["EmoteAnimation"] ; [+11]
       40 GETUPVAL                         R3 2
       41 GETTABLEKS                       R3 R3 K12 ["createEmoteAnimationInstanceInWorkspace"]
       43 GETTABLEKS                       R5 R1 K13 ["assetName"]
       45 OR                               R4 R5 R2
       46 GETTABLEKS                       R5 R1 K9 ["assetId"]
       48 CALL                             R3 2 0
       49 RETURN                           R0 0
       50 GETTABLEKS                       R3 R1 K14 ["animationPackSubName"]
       52 JUMPIFNOT                        R3 ; [+13]
       53 GETUPVAL                         R3 2
       54 GETTABLEKS                       R3 R3 K15 ["createAnimationInstanceInWorkspace"]
       56 MOVE                             R4 R2
       57 GETTABLEKS                       R5 R1 K14 ["animationPackSubName"]
       59 GETTABLEKS                       R6 R1 K9 ["assetId"]
       61 GETTABLEKS                       R7 R1 K16 ["animationPackWeight"]
       63 GETTABLEKS                       R8 R1 K17 ["animationPackParentModelName"]
       65 CALL                             R3 5 0
       66 RETURN                           R0 0

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
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

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
       49 GETTABLEKS                       R9 R1 K13 ["animationPackType"]
       51 JUMPIFEQKNIL                     R9 ; [+8]
       53 GETUPVAL                         R8 4
       54 GETTABLEKS                       R8 R8 K14 ["getAvatarAnimationPartThumbnailUri"]
       56 GETTABLEKS                       R9 R1 K13 ["animationPackType"]
       58 CALL                             R8 1 1
       59 JUMP                             ; [+1]
       60 LOADNIL                          R8
       61 LOADB                            R9 0
       62 GETUPVAL                         R10 5
       63 GETTABLEKS                       R10 R10 K15 ["ModelPreview"]
       65 JUMPIFNOTEQ                      R7 R10 ; [+5]
       67 JUMPIFEQKNIL                     R8 ; [+2]
       69 LOADB                            R9 0 +1
       70 LOADB                            R9 1
       71 LOADB                            R10 1
       72 GETUPVAL                         R11 5
       73 GETTABLEKS                       R11 R11 K16 ["Thumbnail"]
       75 JUMPIFEQ                         R7 R11 ; [+11]
       77 LOADB                            R10 1
       78 GETUPVAL                         R11 5
       79 GETTABLEKS                       R11 R11 K17 ["ImagePicker"]
       81 JUMPIFEQ                         R7 R11 ; [+5]
       83 JUMPIFNOTEQKNIL                  R8 ; [+2]
       85 LOADB                            R10 0 +1
       86 LOADB                            R10 1
       87 GETTABLEKS                       R11 R1 K18 ["uploadSucceeded"]
       89 NOT                              R12 R11
       90 GETUPVAL                         R13 1
       91 GETTABLEKS                       R13 R13 K6 ["isCatalogAsset"]
       93 GETTABLEKS                       R14 R1 K7 ["assetTypeEnum"]
       95 CALL                             R13 1 1
       96 AND                              R14 R11 R13
       97 JUMPIF                           R11 ; [+2]
       98 MOVE                             R15 R13
       99 JUMPIF                           R15 ; [+1]
      100 NOT                              R15 R13
      101 LOADB                            R16 1
      102 LOADNIL                          R17
      103 GETTABLEKS                       R18 R1 K19 ["hasSubsequent"]
      105 JUMPIFNOT                        R18 ; [+4]
      106 LOADB                            R14 0
      107 LOADB                            R16 0
      108 LOADB                            R15 0
      109 LOADB                            R17 1
      110 GETUPVAL                         R18 1
      111 GETTABLEKS                       R18 R18 K6 ["isCatalogAsset"]
      113 GETTABLEKS                       R19 R1 K7 ["assetTypeEnum"]
      115 CALL                             R18 1 1
      116 JUMPIF                           R18 ; [+6]
      117 GETUPVAL                         R18 1
      118 GETTABLEKS                       R18 R18 K20 ["isUGCBundleType"]
      120 GETTABLEKS                       R19 R1 K7 ["assetTypeEnum"]
      122 CALL                             R18 1 1
      123 LOADNIL                          R19
      124 JUMPIF                           R18 ; [+13]
      125 GETTABLEKS                       R20 R1 K18 ["uploadSucceeded"]
      127 JUMPIFNOT                        R20 ; [+10]
      128 GETUPVAL                         R20 6
      129 GETTABLEKS                       R21 R1 K3 ["screenFlowType"]
      131 GETTABLEKS                       R23 R1 K22 ["assetId"]
      133 ORK                              R22 R23 K21 [0]
      134 GETTABLEKS                       R23 R1 K7 ["assetTypeEnum"]
      136 CALL                             R20 3 1
      137 MOVE                             R19 R20
      138 GETUPVAL                         R20 7
      139 GETTABLEKS                       R20 R20 K23 ["constructCreatorStoreConfigurationUrl"]
      141 GETTABLEKS                       R22 R1 K22 ["assetId"]
      143 ORK                              R21 R22 K21 [0]
      144 CALL                             R20 1 1
      145 GETUPVAL                         R21 1
      146 GETTABLEKS                       R21 R21 K24 ["isCreatorStoreAssetNotIncludingAnimation"]
      148 GETTABLEKS                       R22 R1 K7 ["assetTypeEnum"]
      150 CALL                             R21 1 1
      151 JUMPIFNOT                        R21 ; [+1]
      152 NOT                              R21 R18
      153 GETTABLEKS                       R23 R1 K7 ["assetTypeEnum"]
      155 GETIMPORT                        R24 K28 [Enum.AssetType.EmoteAnimation]
      157 JUMPIFNOTEQ                      R23 R24 ; [+3]
      159 LOADN                            R22 150
      160 JUMP                             ; [+1]
      161 LOADN                            R22 186
      162 GETTABLEKS                       R23 R1 K29 ["updateOriginalAssetId"]
      164 MOVE                             R24 R6
      165 JUMPIFNOT                        R24 ; [+9]
      166 MOVE                             R24 R11
      167 JUMPIFNOT                        R24 ; [+7]
      168 LOADB                            R24 0
      169 JUMPIFEQKNIL                     R23 ; [+5]
      171 JUMPIFNOTEQKN                    R23 K21 [0] ; [+2]
      173 LOADB                            R24 0 +1
      174 LOADB                            R24 1
      175 JUMPIFNOT                        R24 ; [+2]
      176 MOVE                             R25 R23
      177 JUMP                             ; [+2]
      178 GETTABLEKS                       R25 R1 K22 ["assetId"]
      180 GETUPVAL                         R26 8
      181 GETTABLEKS                       R26 R26 K30 ["createElement"]
      183 LOADK                            R27 K31 ["Frame"]
      184 DUPTABLE                         R28 K37 [{["AutomaticSize"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["Size"]}]
      185 GETIMPORT                        R29 K39 [Enum.AutomaticSize.Y]
      187 SETTABLEKS                       R29 R28 K32 ["AutomaticSize"]
      189 GETTABLEKS                       R29 R2 K40 ["uploadResult"]
      191 GETTABLEKS                       R29 R29 K41 ["background"]
      193 SETTABLEKS                       R29 R28 K33 ["BackgroundColor3"]
      195 GETTABLEKS                       R29 R1 K36 ["Size"]
      197 SETTABLEKS                       R29 R28 K36 ["Size"]
      199 DUPTABLE                         R29 K50 [{"ModelPreview", "ThumbnailPreview", "CopyID", "OriginalCopyID", "NewCopyID", "LoadingResultSuccess", "LoadingResultFailure", "DependencyWarningDialog", "Footer"}]
      200 MOVE                             R30 R9
      201 JUMPIFNOT                        R30 ; [+37]
      202 GETUPVAL                         R30 8
      203 GETTABLEKS                       R30 R30 K30 ["createElement"]
      205 GETUPVAL                         R31 9
      206 DUPTABLE                         R32 K58 [{["title"], ["titleHeight"] = 24, ["titlePadding"] = 12, ["Position"], ["Size"], ["AssetType"], ["UploadSucceeded"]}]
      207 GETTABLEKS                       R34 R1 K60 ["assetName"]
      209 ORK                              R33 R34 K59 []
      210 SETTABLEKS                       R33 R32 K51 ["title"]
      212 GETIMPORT                        R33 K63 [UDim2.new]
      214 LOADK                            R34 K64 [0.5]
      215 LOADN                            R35 -75
      216 LOADN                            R36 0
      217 LOADN                            R37 48
      218 CALL                             R33 4 1
      219 SETTABLEKS                       R33 R32 K56 ["Position"]
      221 GETIMPORT                        R33 K63 [UDim2.new]
      223 LOADN                            R34 0
      224 LOADN                            R35 150
      225 LOADN                            R36 0
      226 MOVE                             R37 R22
      227 CALL                             R33 4 1
      228 SETTABLEKS                       R33 R32 K36 ["Size"]
      230 GETTABLEKS                       R33 R1 K7 ["assetTypeEnum"]
      232 SETTABLEKS                       R33 R32 K26 ["AssetType"]
      234 GETTABLEKS                       R33 R1 K18 ["uploadSucceeded"]
      236 SETTABLEKS                       R33 R32 K57 ["UploadSucceeded"]
      238 CALL                             R30 2 1
      239 SETTABLEKS                       R30 R29 K15 ["ModelPreview"]
      241 MOVE                             R30 R10
      242 JUMPIFNOT                        R30 ; [+44]
      243 GETUPVAL                         R30 8
      244 GETTABLEKS                       R30 R30 K30 ["createElement"]
      246 LOADK                            R31 K65 ["ImageLabel"]
      247 DUPTABLE                         R32 K69 [{["Position"], ["Size"], ["Image"], ["ScaleType"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      248 GETIMPORT                        R33 K63 [UDim2.new]
      250 LOADK                            R34 K64 [0.5]
      251 LOADN                            R35 -75
      252 LOADN                            R36 0
      253 LOADN                            R37 48
      254 CALL                             R33 4 1
      255 SETTABLEKS                       R33 R32 K56 ["Position"]
      257 GETIMPORT                        R33 K63 [UDim2.new]
      259 LOADN                            R34 0
      260 LOADN                            R35 150
      261 LOADN                            R36 0
      262 LOADN                            R37 150
      263 CALL                             R33 4 1
      264 SETTABLEKS                       R33 R32 K36 ["Size"]
      266 MOVE                             R33 R8
      267 JUMPIF                           R33 ; [+8]
      268 GETUPVAL                         R33 1
      269 GETTABLEKS                       R33 R33 K70 ["getResultThumbnail"]
      271 GETTABLEKS                       R34 R1 K22 ["assetId"]
      273 GETTABLEKS                       R35 R1 K71 ["iconFile"]
      275 CALL                             R33 2 1
      276 SETTABLEKS                       R33 R32 K66 ["Image"]
      278 JUMPIFEQKNIL                     R8 ; [+4]
      280 GETIMPORT                        R33 K73 [Enum.ScaleType.Fit]
      282 JUMP                             ; [+1]
      283 LOADNIL                          R33
      284 SETTABLEKS                       R33 R32 K67 ["ScaleType"]
      286 CALL                             R30 2 1
      287 SETTABLEKS                       R30 R29 K42 ["ThumbnailPreview"]
      289 MOVE                             R30 R11
      290 JUMPIFNOT                        R30 ; [+12]
      291 NOT                              R30 R24
      292 JUMPIFNOT                        R30 ; [+10]
      293 GETUPVAL                         R30 8
      294 GETTABLEKS                       R30 R30 K30 ["createElement"]
      296 GETUPVAL                         R31 10
      297 DUPTABLE                         R32 K77 [{["YPos"] = 240, ["AssetId"]}]
      298 GETTABLEKS                       R33 R1 K22 ["assetId"]
      300 SETTABLEKS                       R33 R32 K76 ["AssetId"]
      302 CALL                             R30 2 1
      303 SETTABLEKS                       R30 R29 K43 ["CopyID"]
      305 MOVE                             R30 R24
      306 JUMPIFNOT                        R30 ; [+17]
      307 GETUPVAL                         R30 8
      308 GETTABLEKS                       R30 R30 K30 ["createElement"]
      310 GETUPVAL                         R31 10
      311 DUPTABLE                         R32 K79 [{["YPos"] = 240, ["AssetId"], ["Label"]}]
      312 SETTABLEKS                       R23 R32 K76 ["AssetId"]
      314 GETTABLEKS                       R33 R1 K80 ["Localization"]
      316 LOADK                            R35 K81 ["AssetUploadResult"]
      317 LOADK                            R36 K82 ["UpdateOriginalIdLabel"]
      318 NAMECALL                         R33 R33 K83 ["getText"]
      320 CALL                             R33 3 1
      321 SETTABLEKS                       R33 R32 K78 ["Label"]
      323 CALL                             R30 2 1
      324 SETTABLEKS                       R30 R29 K44 ["OriginalCopyID"]
      326 MOVE                             R30 R24
      327 JUMPIFNOT                        R30 ; [+19]
      328 GETUPVAL                         R30 8
      329 GETTABLEKS                       R30 R30 K30 ["createElement"]
      331 GETUPVAL                         R31 10
      332 DUPTABLE                         R32 K85 [{["YPos"] = 268, ["AssetId"], ["Label"]}]
      333 GETTABLEKS                       R33 R1 K22 ["assetId"]
      335 SETTABLEKS                       R33 R32 K76 ["AssetId"]
      337 GETTABLEKS                       R33 R1 K80 ["Localization"]
      339 LOADK                            R35 K81 ["AssetUploadResult"]
      340 LOADK                            R36 K86 ["UpdateRefIdLabel"]
      341 NAMECALL                         R33 R33 K83 ["getText"]
      343 CALL                             R33 3 1
      344 SETTABLEKS                       R33 R32 K78 ["Label"]
      346 CALL                             R30 2 1
      347 SETTABLEKS                       R30 R29 K45 ["NewCopyID"]
      349 MOVE                             R30 R11
      350 JUMPIFNOT                        R30 ; [+71]
      351 GETUPVAL                         R30 11
      352 GETTABLEKS                       R30 R30 K30 ["createElement"]
      354 GETUPVAL                         R31 12
      355 DUPTABLE                         R32 K96 [{"displayCreatorDashboardMessage", "onDashboardLinkClicked", "Text", "showCreatorStoreConfigurationLink", "showModeration", "moderationMessageOverride", "creatorStoreConfigurationUrl", "url", "resultYPos", "Localization", "Stylizer"}]
      356 SETTABLEKS                       R18 R32 K87 ["displayCreatorDashboardMessage"]
      358 GETUPVAL                         R34 1
      359 GETTABLEKS                       R34 R34 K20 ["isUGCBundleType"]
      361 GETTABLEKS                       R35 R1 K7 ["assetTypeEnum"]
      363 CALL                             R34 1 1
      364 JUMPIFNOT                        R34 ; [+4]
      365 NEWCLOSURE                       R33 P0
      366 CAPTURE                          VAL R0
      367 CAPTURE                          VAL R1
      368 JUMP                             ; [+3]
      369 NEWCLOSURE                       R33 P1
      370 CAPTURE                          VAL R0
      371 CAPTURE                          VAL R25
      372 SETTABLEKS                       R33 R32 K88 ["onDashboardLinkClicked"]
      374 GETTABLEKS                       R33 R1 K80 ["Localization"]
      376 LOADK                            R35 K81 ["AssetUploadResult"]
      377 LOADK                            R36 K97 ["CreatorDashboardMessage"]
      378 DUPTABLE                         R37 K99 [{"creatorDashboardLink"}]
      379 GETUPVAL                         R38 13
      380 GETTABLEKS                       R38 R38 K100 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      382 SETTABLEKS                       R38 R37 K98 ["creatorDashboardLink"]
      384 NAMECALL                         R33 R33 K83 ["getText"]
      386 CALL                             R33 4 1
      387 SETTABLEKS                       R33 R32 K89 ["Text"]
      389 SETTABLEKS                       R21 R32 K90 ["showCreatorStoreConfigurationLink"]
      391 SETTABLEKS                       R5 R32 K91 ["showModeration"]
      393 JUMPIFNOT                        R6 ; [+8]
      394 GETTABLEKS                       R33 R1 K80 ["Localization"]
      396 LOADK                            R35 K81 ["AssetUploadResult"]
      397 LOADK                            R36 K101 ["UpdateSubmittedMessage"]
      398 NAMECALL                         R33 R33 K83 ["getText"]
      400 CALL                             R33 3 1
      401 JUMPIF                           R33 ; [+1]
      402 LOADNIL                          R33
      403 SETTABLEKS                       R33 R32 K92 ["moderationMessageOverride"]
      405 SETTABLEKS                       R20 R32 K93 ["creatorStoreConfigurationUrl"]
      407 SETTABLEKS                       R19 R32 K94 ["url"]
      409 JUMPIFNOT                        R24 ; [+2]
      410 LOADN                            R33 300
      411 JUMP                             ; [+1]
      412 LOADNIL                          R33
      413 SETTABLEKS                       R33 R32 K95 ["resultYPos"]
      415 GETTABLEKS                       R33 R1 K80 ["Localization"]
      417 SETTABLEKS                       R33 R32 K80 ["Localization"]
      419 SETTABLEKS                       R2 R32 K1 ["Stylizer"]
      421 CALL                             R30 2 1
      422 SETTABLEKS                       R30 R29 K46 ["LoadingResultSuccess"]
      424 MOVE                             R30 R12
      425 JUMPIFNOT                        R30 ; [+18]
      426 GETUPVAL                         R30 11
      427 GETTABLEKS                       R30 R30 K30 ["createElement"]
      429 GETUPVAL                         R31 14
      430 DUPTABLE                         R32 K102 [{"Localization", "Stylizer", "networkError", "onDashboardLinkClicked"}]
      431 GETTABLEKS                       R33 R1 K80 ["Localization"]
      433 SETTABLEKS                       R33 R32 K80 ["Localization"]
      435 SETTABLEKS                       R2 R32 K1 ["Stylizer"]
      437 SETTABLEKS                       R3 R32 K2 ["networkError"]
      439 GETTABLEKS                       R33 R0 K103 ["openCreatorDashboardCreationsPage"]
      441 SETTABLEKS                       R33 R32 K88 ["onDashboardLinkClicked"]
      443 CALL                             R30 2 1
      444 SETTABLEKS                       R30 R29 K47 ["LoadingResultFailure"]
      446 GETUPVAL                         R31 15
      447 CALL                             R31 0 1
      448 JUMPIFNOT                        R31 ; [+20]
      449 GETTABLEKS                       R31 R0 K104 ["state"]
      451 GETTABLEKS                       R31 R31 K105 ["showWarning"]
      453 JUMPIFNOT                        R31 ; [+15]
      454 GETUPVAL                         R30 8
      455 GETTABLEKS                       R30 R30 K30 ["createElement"]
      457 GETUPVAL                         R31 16
      458 DUPTABLE                         R32 K108 [{"NonBlockingDependencyIssues", "OnClose"}]
      459 GETTABLEKS                       R33 R1 K109 ["nonBlockingDependencyIssues"]
      461 SETTABLEKS                       R33 R32 K106 ["NonBlockingDependencyIssues"]
      463 GETTABLEKS                       R33 R0 K110 ["onWarningDialogClose"]
      465 SETTABLEKS                       R33 R32 K107 ["OnClose"]
      467 CALL                             R30 2 1
      468 JUMP                             ; [+1]
      469 LOADNIL                          R30
      470 SETTABLEKS                       R30 R29 K48 ["DependencyWarningDialog"]
      472 GETUPVAL                         R30 11
      473 GETTABLEKS                       R30 R30 K30 ["createElement"]
      475 GETUPVAL                         R31 17
      476 DUPTABLE                         R32 K117 [{"Localization", "primaryButtonText", "onPrimaryButtonActivated", "showCloseLink", "showBackLink", "onGoToNextScreen", "onClose"}]
      477 GETTABLEKS                       R33 R1 K80 ["Localization"]
      479 SETTABLEKS                       R33 R32 K80 ["Localization"]
      481 JUMPIFNOT                        R14 ; [+8]
      482 GETTABLEKS                       R33 R1 K80 ["Localization"]
      484 LOADK                            R35 K81 ["AssetUploadResult"]
      485 LOADK                            R36 K118 ["SubmitAsDevelopmentItem"]
      486 NAMECALL                         R33 R33 K83 ["getText"]
      488 CALL                             R33 3 1
      489 JUMP                             ; [+19]
      490 JUMPIFNOT                        R17 ; [+8]
      491 GETTABLEKS                       R33 R1 K80 ["Localization"]
      493 LOADK                            R35 K81 ["AssetUploadResult"]
      494 LOADK                            R36 K119 ["NextSubmit"]
      495 NAMECALL                         R33 R33 K83 ["getText"]
      497 CALL                             R33 3 1
      498 JUMP                             ; [+10]
      499 JUMPIFNOT                        R15 ; [+8]
      500 GETTABLEKS                       R33 R1 K80 ["Localization"]
      502 LOADK                            R35 K81 ["AssetUploadResult"]
      503 LOADK                            R36 K120 ["Close"]
      504 NAMECALL                         R33 R33 K83 ["getText"]
      506 CALL                             R33 3 1
      507 JUMP                             ; [+1]
      508 LOADNIL                          R33
      509 SETTABLEKS                       R33 R32 K111 ["primaryButtonText"]
      511 JUMPIFNOT                        R14 ; [+3]
      512 GETTABLEKS                       R33 R0 K121 ["goToNextScreen"]
      514 JUMP                             ; [+2]
      515 GETTABLEKS                       R33 R0 K116 ["onClose"]
      517 SETTABLEKS                       R33 R32 K112 ["onPrimaryButtonActivated"]
      519 SETTABLEKS                       R14 R32 K113 ["showCloseLink"]
      521 SETTABLEKS                       R16 R32 K114 ["showBackLink"]
      523 GETTABLEKS                       R33 R0 K121 ["goToNextScreen"]
      525 SETTABLEKS                       R33 R32 K115 ["onGoToNextScreen"]
      527 GETTABLEKS                       R33 R0 K116 ["onClose"]
      529 SETTABLEKS                       R33 R32 K116 ["onClose"]
      531 CALL                             R30 2 1
      532 SETTABLEKS                       R30 R29 K49 ["Footer"]
      534 CALL                             R26 3 -1
      535 RETURN                           R26 -1

PROTO_13:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K20 [{"assetId", "assetName", "uploadSucceeded", "instances", "networkError", "screenFlowType", "assetConfigData", "assetTypeEnum", "currentTab", "updateOriginalAssetId", "thumbnailStatus", "networkTable", "iconFile", "hasSubsequent", "animationPackType", "animationPackSubName", "animationPackWeight", "animationPackParentModelName", "animationSectionValid", "nonBlockingDependencyIssues"}]
        6 GETTABLEKS                       R3 R0 K0 ["assetId"]
        8 SETTABLEKS                       R3 R2 K0 ["assetId"]
       10 GETTABLEKS                       R4 R0 K21 ["changed"]
       12 JUMPIFNOT                        R4 ; [+5]
       13 GETTABLEKS                       R3 R0 K21 ["changed"]
       15 GETTABLEKS                       R3 R3 K22 ["AssetConfigName"]
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
       55 GETUPVAL                         R4 0
       56 CALL                             R4 0 1
       57 JUMPIFNOT                        R4 ; [+3]
       58 GETTABLEKS                       R3 R0 K9 ["updateOriginalAssetId"]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R3
       62 SETTABLEKS                       R3 R2 K9 ["updateOriginalAssetId"]
       64 GETTABLEKS                       R3 R0 K10 ["thumbnailStatus"]
       66 SETTABLEKS                       R3 R2 K10 ["thumbnailStatus"]
       68 GETTABLEKS                       R3 R0 K11 ["networkTable"]
       70 JUMPIF                           R3 ; [+2]
       71 NEWTABLE                         R3 0 0
       73 SETTABLEKS                       R3 R2 K11 ["networkTable"]
       75 GETTABLEKS                       R3 R0 K12 ["iconFile"]
       77 SETTABLEKS                       R3 R2 K12 ["iconFile"]
       79 GETTABLEKS                       R3 R0 K13 ["hasSubsequent"]
       81 SETTABLEKS                       R3 R2 K13 ["hasSubsequent"]
       83 GETTABLEKS                       R3 R0 K14 ["animationPackType"]
       85 SETTABLEKS                       R3 R2 K14 ["animationPackType"]
       87 GETTABLEKS                       R3 R0 K15 ["animationPackSubName"]
       89 SETTABLEKS                       R3 R2 K15 ["animationPackSubName"]
       91 GETTABLEKS                       R3 R0 K16 ["animationPackWeight"]
       93 SETTABLEKS                       R3 R2 K16 ["animationPackWeight"]
       95 GETTABLEKS                       R3 R0 K17 ["animationPackParentModelName"]
       97 SETTABLEKS                       R3 R2 K17 ["animationPackParentModelName"]
       99 GETTABLEKS                       R3 R0 K18 ["animationSectionValid"]
      101 SETTABLEKS                       R3 R2 K18 ["animationSectionValid"]
      103 GETUPVAL                         R4 1
      104 CALL                             R4 0 1
      105 JUMPIFNOT                        R4 ; [+3]
      106 GETTABLEKS                       R3 R0 K19 ["nonBlockingDependencyIssues"]
      108 JUMP                             ; [+1]
      109 LOADNIL                          R3
      110 SETTABLEKS                       R3 R2 K19 ["nonBlockingDependencyIssues"]
      112 RETURN                           R2 1

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
      171 GETTABLEKS                       R33 R10 K45 ["AvatarAnimationStudioToolboxTextures"]
      173 CALL                             R32 1 1
      174 GETIMPORT                        R33 K16 [require]
      176 GETTABLEKS                       R34 R5 K20 ["Src"]
      178 GETTABLEKS                       R34 R34 K21 ["Util"]
      180 GETTABLEKS                       R34 R34 K46 ["SharedFlags"]
      182 GETTABLEKS                       R34 R34 K47 ["getFFlagToolboxModelCreationWarningWindow"]
      184 CALL                             R33 1 1
      185 GETIMPORT                        R34 K16 [require]
      187 GETTABLEKS                       R35 R5 K20 ["Src"]
      189 GETTABLEKS                       R35 R35 K48 ["Flags"]
      191 GETTABLEKS                       R35 R35 K49 ["getFFlagEnableUpdateAvatarItem"]
      193 CALL                             R34 1 1
      194 GETTABLEKS                       R35 R7 K50 ["PureComponent"]
      196 LOADK                            R37 K51 ["AssetUploadResult"]
      197 NAMECALL                         R35 R35 K52 ["extend"]
      199 CALL                             R35 2 1
      200 DUPCLOSURE                       R36 K53 [PROTO_7]
      201 CAPTURE                          VAL R33
      202 CAPTURE                          VAL R12
      203 CAPTURE                          VAL R4
      204 CAPTURE                          VAL R18
      205 CAPTURE                          VAL R1
      206 CAPTURE                          VAL R3
      207 SETTABLEKS                       R36 R35 K54 ["init"]
      209 DUPCLOSURE                       R36 K55 [PROTO_8]
      210 CAPTURE                          VAL R33
      211 CAPTURE                          VAL R15
      212 CAPTURE                          VAL R16
      213 SETTABLEKS                       R36 R35 K56 ["didMount"]
      215 DUPCLOSURE                       R36 K57 [PROTO_9]
      216 CAPTURE                          VAL R12
      217 CAPTURE                          VAL R14
      218 CAPTURE                          VAL R0
      219 CAPTURE                          VAL R18
      220 CAPTURE                          VAL R2
      221 DUPCLOSURE                       R37 K58 [PROTO_12]
      222 CAPTURE                          VAL R12
      223 CAPTURE                          VAL R14
      224 CAPTURE                          VAL R34
      225 CAPTURE                          VAL R17
      226 CAPTURE                          VAL R32
      227 CAPTURE                          VAL R13
      228 CAPTURE                          VAL R36
      229 CAPTURE                          VAL R18
      230 CAPTURE                          VAL R7
      231 CAPTURE                          VAL R23
      232 CAPTURE                          VAL R24
      233 CAPTURE                          VAL R8
      234 CAPTURE                          VAL R26
      235 CAPTURE                          VAL R11
      236 CAPTURE                          VAL R27
      237 CAPTURE                          VAL R33
      238 CAPTURE                          VAL R25
      239 CAPTURE                          VAL R28
      240 SETTABLEKS                       R37 R35 K59 ["render"]
      242 DUPCLOSURE                       R37 K60 [PROTO_13]
      243 CAPTURE                          VAL R34
      244 CAPTURE                          VAL R33
      245 DUPCLOSURE                       R38 K61 [PROTO_16]
      246 CAPTURE                          VAL R31
      247 CAPTURE                          VAL R30
      248 CAPTURE                          VAL R12
      249 MOVE                             R39 R20
      250 DUPTABLE                         R40 K64 [{"Stylizer", "Localization"}]
      251 GETTABLEKS                       R41 R19 K62 ["Stylizer"]
      253 SETTABLEKS                       R41 R40 K62 ["Stylizer"]
      255 GETTABLEKS                       R41 R19 K63 ["Localization"]
      257 SETTABLEKS                       R41 R40 K63 ["Localization"]
      259 CALL                             R39 1 1
      260 MOVE                             R40 R35
      261 CALL                             R39 1 1
      262 MOVE                             R35 R39
      263 GETTABLEKS                       R39 R9 K65 ["connect"]
      265 MOVE                             R40 R37
      266 MOVE                             R41 R38
      267 CALL                             R39 2 1
      268 MOVE                             R40 R35
      269 CALL                             R39 1 -1
      270 RETURN                           R39 -1
