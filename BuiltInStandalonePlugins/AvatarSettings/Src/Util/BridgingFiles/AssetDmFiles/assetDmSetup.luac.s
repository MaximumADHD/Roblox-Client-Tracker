PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["gameIdChanged"]
        4 GETIMPORT                        R4 K2 [game]
        6 GETTABLEKS                       R3 R4 K3 ["GameId"]
        8 NAMECALL                         R0 R0 K4 ["Invoke"]
       10 CALL                             R0 3 0
       11 GETIMPORT                        R1 K2 [game]
       13 GETTABLEKS                       R0 R1 K3 ["GameId"]
       15 JUMPIFEQKN                       R0 K5 [0] ; [+11]
       17 GETUPVAL                         R0 2
       18 JUMPIFNOT                        R0 ; [+8]
       19 GETUPVAL                         R1 2
       20 GETTABLEKS                       R0 R1 K6 ["Connected"]
       22 JUMPIFNOT                        R0 ; [+4]
       23 GETUPVAL                         R0 2
       24 NAMECALL                         R0 R0 K7 ["Disconnect"]
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["gameIdChanged"]
        4 GETIMPORT                        R4 K2 [game]
        6 GETTABLEKS                       R3 R4 K3 ["GameId"]
        8 NAMECALL                         R0 R0 K4 ["Invoke"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["showSaveOrPublishPlaceToRoblox"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["deactivePreviewOnDescendantAdded"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K2 ["CreateAvatarRules"]
       11 GETTABLEKS                       R2 R3 K3 ["fromAssetDm"]
       13 NAMECALL                         R0 R0 K1 ["Invoke"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["clearConnections"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["createAvatarBodyRules"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K2 ["createAvatarCollisionRules"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 2
       13 CALL                             R0 0 1
       14 JUMPIFNOT                        R0 ; [+4]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R0 R1 K3 ["createAvatarAbilityRules"]
       18 CALL                             R0 0 0
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R0 R1 K4 ["createAvatarAnimationRules"]
       22 CALL                             R0 0 0
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R0 R1 K5 ["createAvatarAccessoryRules"]
       26 CALL                             R0 0 0
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R0 R1 K6 ["createAvatarClothingRules"]
       30 CALL                             R0 0 0
       31 GETUPVAL                         R1 3
       32 GETTABLEKS                       R0 R1 K7 ["DescendantAdded"]
       34 NEWCLOSURE                       R2 P0
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U5
       37 NAMECALL                         R0 R0 K8 ["Connect"]
       39 CALL                             R0 2 1
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R1 R2 K9 ["addRBXScriptConnection"]
       43 MOVE                             R2 R0
       44 CALL                             R1 1 0
       45 GETUPVAL                         R1 4
       46 GETUPVAL                         R4 5
       47 GETTABLEKS                       R3 R4 K10 ["syncAvatarSettings"]
       49 GETUPVAL                         R4 6
       50 CALL                             R4 0 -1
       51 NAMECALL                         R1 R1 K11 ["Invoke"]
       53 CALL                             R1 -1 0
       54 GETUPVAL                         R1 7
       55 GETUPVAL                         R2 4
       56 CALL                             R1 1 0
       57 GETUPVAL                         R1 8
       58 GETUPVAL                         R2 4
       59 CALL                             R1 1 0
       60 GETUPVAL                         R1 9
       61 GETUPVAL                         R2 4
       62 CALL                             R1 1 0
       63 GETUPVAL                         R1 2
       64 CALL                             R1 0 1
       65 JUMPIFNOT                        R1 ; [+3]
       66 GETUPVAL                         R1 10
       67 GETUPVAL                         R2 4
       68 CALL                             R1 1 0
       69 GETUPVAL                         R1 11
       70 GETUPVAL                         R2 4
       71 CALL                             R1 1 0
       72 GETUPVAL                         R1 12
       73 GETUPVAL                         R2 4
       74 CALL                             R1 1 0
       75 GETUPVAL                         R1 13
       76 GETUPVAL                         R2 4
       77 CALL                             R1 1 0
       78 GETUPVAL                         R1 14
       79 GETUPVAL                         R2 4
       80 CALL                             R1 1 0
       81 GETUPVAL                         R1 15
       82 GETUPVAL                         R2 4
       83 CALL                             R1 1 0
       84 LOADNIL                          R1
       85 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onPublishSettings"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["setLatestPublishSuccess"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R3 R4 K2 ["onSettingsPublished"]
       13 NAMECALL                         R1 R1 K3 ["Invoke"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onDiscardSettings"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["onInitializationStarted"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R0 R1 K2 ["sendDatabaseLoadedOnInitialization"]
       10 GETUPVAL                         R1 0
       11 CALL                             R0 1 0
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R0 R1 K3 ["listenToHasUnpublishedChanges"]
       15 GETUPVAL                         R1 0
       16 CALL                             R0 1 0
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R0 R1 K4 ["setLatestPublishSuccess"]
       20 LOADB                            R1 0
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 3
       23 CALL                             R0 0 1
       24 JUMPIFNOT                        R0 ; [+2]
       25 GETUPVAL                         R0 4
       26 JUMPIF                           R0 ; [+17]
       27 GETUPVAL                         R0 3
       28 CALL                             R0 0 1
       29 JUMPIFNOT                        R0 ; [+2]
       30 LOADB                            R0 1
       31 SETUPVAL                         R0 4
       32 GETUPVAL                         R0 0
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R2 R3 K5 ["publishSettings"]
       36 NEWCLOSURE                       R3 P0
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          UPVAL U1
       41 NAMECALL                         R0 R0 K6 ["OnInvoke"]
       43 CALL                             R0 3 0
       44 GETUPVAL                         R0 0
       45 GETUPVAL                         R3 1
       46 GETTABLEKS                       R2 R3 K7 ["discardSettings"]
       48 DUPCLOSURE                       R3 K8 [PROTO_6]
       49 CAPTURE                          UPVAL U5
       50 NAMECALL                         R0 R0 K6 ["OnInvoke"]
       52 CALL                             R0 3 0
       53 GETUPVAL                         R1 5
       54 GETTABLEKS                       R0 R1 K9 ["setupHolds"]
       56 GETUPVAL                         R1 0
       57 CALL                             R0 1 0
       58 GETUPVAL                         R1 5
       59 GETTABLEKS                       R0 R1 K10 ["connectRefreshPluginState"]
       61 GETUPVAL                         R1 0
       62 CALL                             R0 1 0
       63 GETUPVAL                         R0 6
       64 LOADK                            R2 K11 ["AvatarSettings Initialization"]
       65 NAMECALL                         R0 R0 K12 ["SetWaypoint"]
       67 CALL                             R0 2 0
       68 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["registerPluginStyles"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 JUMP                             ; [+5]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K1 ["DEPRECATED_registerPluginStyles"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R3 R4 K2 ["gameIdChanged"]
       17 GETIMPORT                        R5 K4 [game]
       19 GETTABLEKS                       R4 R5 K5 ["GameId"]
       21 NAMECALL                         R1 R0 K6 ["Invoke"]
       23 CALL                             R1 3 0
       24 GETIMPORT                        R2 K4 [game]
       26 GETTABLEKS                       R1 R2 K5 ["GameId"]
       28 JUMPIFNOTEQKN                    R1 K7 [0] ; [+17]
       30 LOADNIL                          R1
       31 GETIMPORT                        R2 K4 [game]
       33 LOADK                            R4 K5 ["GameId"]
       34 NAMECALL                         R2 R2 K8 ["GetPropertyChangedSignal"]
       36 CALL                             R2 2 1
       37 NEWCLOSURE                       R4 P0
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          REF R1
       41 NAMECALL                         R2 R2 K9 ["Connect"]
       43 CALL                             R2 2 1
       44 MOVE                             R1 R2
       45 CLOSEUPVALS                      R1
       46 GETUPVAL                         R4 2
       47 GETTABLEKS                       R3 R4 K10 ["requestLatestGameId"]
       49 NEWCLOSURE                       R4 P1
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U2
       52 NAMECALL                         R1 R0 K11 ["OnInvoke"]
       54 CALL                             R1 3 0
       55 GETUPVAL                         R4 2
       56 GETTABLEKS                       R3 R4 K12 ["requestSaveToRoblox"]
       58 NEWCLOSURE                       R4 P2
       59 CAPTURE                          UPVAL U3
       60 CAPTURE                          VAL R0
       61 NAMECALL                         R1 R0 K11 ["OnInvoke"]
       63 CALL                             R1 3 0
       64 GETUPVAL                         R5 2
       65 GETTABLEKS                       R4 R5 K13 ["CreateAvatarRules"]
       67 GETTABLEKS                       R3 R4 K14 ["fromPlugin"]
       69 NEWCLOSURE                       R4 P3
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          UPVAL U5
       72 CAPTURE                          UPVAL U6
       73 CAPTURE                          UPVAL U7
       74 CAPTURE                          VAL R0
       75 CAPTURE                          UPVAL U2
       76 CAPTURE                          UPVAL U8
       77 CAPTURE                          UPVAL U9
       78 CAPTURE                          UPVAL U10
       79 CAPTURE                          UPVAL U11
       80 CAPTURE                          UPVAL U12
       81 CAPTURE                          UPVAL U13
       82 CAPTURE                          UPVAL U14
       83 CAPTURE                          UPVAL U15
       84 CAPTURE                          UPVAL U16
       85 CAPTURE                          UPVAL U17
       86 NAMECALL                         R1 R0 K11 ["OnInvoke"]
       88 CALL                             R1 3 0
       89 GETUPVAL                         R5 2
       90 GETTABLEKS                       R4 R5 K13 ["CreateAvatarRules"]
       92 GETTABLEKS                       R3 R4 K15 ["fromAssetDm"]
       94 NAMECALL                         R1 R0 K6 ["Invoke"]
       96 CALL                             R1 2 0
       97 GETUPVAL                         R5 2
       98 GETTABLEKS                       R4 R5 K16 ["onInitialization"]
      100 GETTABLEKS                       R3 R4 K14 ["fromPlugin"]
      102 NEWCLOSURE                       R4 P4
      103 CAPTURE                          VAL R0
      104 CAPTURE                          UPVAL U2
      105 CAPTURE                          UPVAL U18
      106 CAPTURE                          UPVAL U19
      107 CAPTURE                          UPVAL U20
      108 CAPTURE                          UPVAL U3
      109 CAPTURE                          UPVAL U21
      110 NAMECALL                         R1 R0 K11 ["OnInvoke"]
      112 CALL                             R1 3 0
      113 GETUPVAL                         R5 2
      114 GETTABLEKS                       R4 R5 K16 ["onInitialization"]
      116 GETTABLEKS                       R3 R4 K15 ["fromAssetDm"]
      118 NAMECALL                         R1 R0 K6 ["Invoke"]
      120 CALL                             R1 2 0
      121 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K2 ["AvatarSettings"]
       10 NAMECALL                         R1 R1 K6 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K7 ["ChangeHistoryService"]
       16 NAMECALL                         R2 R2 K6 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R8 R0 K10 ["Src"]
       23 GETTABLEKS                       R7 R8 K11 ["Util"]
       25 GETTABLEKS                       R6 R7 K12 ["BridgingFiles"]
       27 GETTABLEKS                       R5 R6 K13 ["AssetDmFiles"]
       29 GETTABLEKS                       R4 R5 K14 ["assetDmConnectionManager"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K9 [require]
       34 GETTABLEKS                       R8 R0 K10 ["Src"]
       36 GETTABLEKS                       R7 R8 K11 ["Util"]
       38 GETTABLEKS                       R6 R7 K15 ["Interfaces"]
       40 GETTABLEKS                       R5 R6 K16 ["PublishingInterface"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K9 [require]
       45 GETTABLEKS                       R9 R0 K10 ["Src"]
       47 GETTABLEKS                       R8 R9 K11 ["Util"]
       49 GETTABLEKS                       R7 R8 K15 ["Interfaces"]
       51 GETTABLEKS                       R6 R7 K17 ["RegisterPluginStylesInterface"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K9 [require]
       56 GETTABLEKS                       R11 R0 K10 ["Src"]
       58 GETTABLEKS                       R10 R11 K11 ["Util"]
       60 GETTABLEKS                       R9 R10 K12 ["BridgingFiles"]
       62 GETTABLEKS                       R8 R9 K13 ["AssetDmFiles"]
       64 GETTABLEKS                       R7 R8 K18 ["assetDmDatabaseLoadedManager"]
       66 CALL                             R6 1 1
       67 GETIMPORT                        R7 K9 [require]
       69 GETTABLEKS                       R12 R0 K10 ["Src"]
       71 GETTABLEKS                       R11 R12 K11 ["Util"]
       73 GETTABLEKS                       R10 R11 K12 ["BridgingFiles"]
       75 GETTABLEKS                       R9 R10 K13 ["AssetDmFiles"]
       77 GETTABLEKS                       R8 R9 K19 ["assetDmUtils"]
       79 CALL                             R7 1 1
       80 GETIMPORT                        R8 K9 [require]
       82 GETTABLEKS                       R13 R0 K10 ["Src"]
       84 GETTABLEKS                       R12 R13 K11 ["Util"]
       86 GETTABLEKS                       R11 R12 K12 ["BridgingFiles"]
       88 GETTABLEKS                       R10 R11 K13 ["AssetDmFiles"]
       90 GETTABLEKS                       R9 R10 K20 ["assetDmAbilitySettingBridge"]
       92 CALL                             R8 1 1
       93 GETIMPORT                        R9 K9 [require]
       95 GETTABLEKS                       R14 R0 K10 ["Src"]
       97 GETTABLEKS                       R13 R14 K11 ["Util"]
       99 GETTABLEKS                       R12 R13 K12 ["BridgingFiles"]
      101 GETTABLEKS                       R11 R12 K13 ["AssetDmFiles"]
      103 GETTABLEKS                       R10 R11 K21 ["assetDmAccessoriesSettingBridge"]
      105 CALL                             R9 1 1
      106 GETIMPORT                        R10 K9 [require]
      108 GETTABLEKS                       R15 R0 K10 ["Src"]
      110 GETTABLEKS                       R14 R15 K11 ["Util"]
      112 GETTABLEKS                       R13 R14 K12 ["BridgingFiles"]
      114 GETTABLEKS                       R12 R13 K13 ["AssetDmFiles"]
      116 GETTABLEKS                       R11 R12 K22 ["assetDmAnimationSettingBridge"]
      118 CALL                             R10 1 1
      119 GETIMPORT                        R11 K9 [require]
      121 GETTABLEKS                       R16 R0 K10 ["Src"]
      123 GETTABLEKS                       R15 R16 K11 ["Util"]
      125 GETTABLEKS                       R14 R15 K12 ["BridgingFiles"]
      127 GETTABLEKS                       R13 R14 K13 ["AssetDmFiles"]
      129 GETTABLEKS                       R12 R13 K23 ["assetDmAvatarRulesSettingBridge"]
      131 CALL                             R11 1 1
      132 GETIMPORT                        R12 K9 [require]
      134 GETTABLEKS                       R17 R0 K10 ["Src"]
      136 GETTABLEKS                       R16 R17 K11 ["Util"]
      138 GETTABLEKS                       R15 R16 K12 ["BridgingFiles"]
      140 GETTABLEKS                       R14 R15 K13 ["AssetDmFiles"]
      142 GETTABLEKS                       R13 R14 K24 ["assetDmBodySettingBridge"]
      144 CALL                             R12 1 1
      145 GETIMPORT                        R13 K9 [require]
      147 GETTABLEKS                       R18 R0 K10 ["Src"]
      149 GETTABLEKS                       R17 R18 K11 ["Util"]
      151 GETTABLEKS                       R16 R17 K12 ["BridgingFiles"]
      153 GETTABLEKS                       R15 R16 K13 ["AssetDmFiles"]
      155 GETTABLEKS                       R14 R15 K25 ["assetDmClothingSettingBridge"]
      157 CALL                             R13 1 1
      158 GETIMPORT                        R14 K9 [require]
      160 GETTABLEKS                       R19 R0 K10 ["Src"]
      162 GETTABLEKS                       R18 R19 K11 ["Util"]
      164 GETTABLEKS                       R17 R18 K12 ["BridgingFiles"]
      166 GETTABLEKS                       R16 R17 K13 ["AssetDmFiles"]
      168 GETTABLEKS                       R15 R16 K26 ["assetDmCollisionSettingBridge"]
      170 CALL                             R14 1 1
      171 GETIMPORT                        R15 K9 [require]
      173 GETTABLEKS                       R20 R0 K10 ["Src"]
      175 GETTABLEKS                       R19 R20 K11 ["Util"]
      177 GETTABLEKS                       R18 R19 K12 ["BridgingFiles"]
      179 GETTABLEKS                       R17 R18 K13 ["AssetDmFiles"]
      181 GETTABLEKS                       R16 R17 K27 ["assetDmPreviewFunctionalityBridge"]
      183 CALL                             R15 1 1
      184 GETIMPORT                        R16 K9 [require]
      186 GETTABLEKS                       R21 R0 K10 ["Src"]
      188 GETTABLEKS                       R20 R21 K11 ["Util"]
      190 GETTABLEKS                       R19 R20 K12 ["BridgingFiles"]
      192 GETTABLEKS                       R18 R19 K13 ["AssetDmFiles"]
      194 GETTABLEKS                       R17 R18 K28 ["assetDmWorkspaceSettingBridge"]
      196 CALL                             R16 1 1
      197 GETIMPORT                        R17 K9 [require]
      199 GETTABLEKS                       R22 R0 K10 ["Src"]
      201 GETTABLEKS                       R21 R22 K11 ["Util"]
      203 GETTABLEKS                       R20 R21 K12 ["BridgingFiles"]
      205 GETTABLEKS                       R19 R20 K13 ["AssetDmFiles"]
      207 GETTABLEKS                       R18 R19 K29 ["getPropertiesTable"]
      209 CALL                             R17 1 1
      210 GETIMPORT                        R18 K9 [require]
      212 GETTABLEKS                       R21 R0 K10 ["Src"]
      214 GETTABLEKS                       R20 R21 K11 ["Util"]
      216 GETTABLEKS                       R19 R20 K30 ["InvokeKeys"]
      218 CALL                             R18 1 1
      219 GETIMPORT                        R19 K9 [require]
      221 GETTABLEKS                       R22 R0 K10 ["Src"]
      223 GETTABLEKS                       R21 R22 K31 ["Flags"]
      225 GETTABLEKS                       R20 R21 K32 ["getFFlagAvatarSettingsEnableAbilities"]
      227 CALL                             R19 1 1
      228 GETIMPORT                        R20 K9 [require]
      230 GETTABLEKS                       R23 R0 K10 ["Src"]
      232 GETTABLEKS                       R22 R23 K31 ["Flags"]
      234 GETTABLEKS                       R21 R22 K33 ["getFFlagPluginInvokeGuard"]
      236 CALL                             R20 1 1
      237 GETIMPORT                        R21 K9 [require]
      239 GETTABLEKS                       R24 R0 K10 ["Src"]
      241 GETTABLEKS                       R23 R24 K31 ["Flags"]
      243 GETTABLEKS                       R22 R23 K34 ["getFFlagPreviewToolbar"]
      245 CALL                             R21 1 1
      246 LOADB                            R22 0
      247 NEWCLOSURE                       R23 P0
      248 CAPTURE                          VAL R21
      249 CAPTURE                          VAL R5
      250 CAPTURE                          VAL R18
      251 CAPTURE                          VAL R4
      252 CAPTURE                          VAL R3
      253 CAPTURE                          VAL R7
      254 CAPTURE                          VAL R19
      255 CAPTURE                          VAL R1
      256 CAPTURE                          VAL R17
      257 CAPTURE                          VAL R11
      258 CAPTURE                          VAL R12
      259 CAPTURE                          VAL R14
      260 CAPTURE                          VAL R8
      261 CAPTURE                          VAL R10
      262 CAPTURE                          VAL R9
      263 CAPTURE                          VAL R13
      264 CAPTURE                          VAL R15
      265 CAPTURE                          VAL R16
      266 CAPTURE                          VAL R6
      267 CAPTURE                          VAL R20
      268 CAPTURE                          REF R22
      269 CAPTURE                          VAL R2
      270 CLOSEUPVALS                      R22
      271 RETURN                           R23 1
