PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["gameIdChanged"]
        4 GETIMPORT                        R3 K2 [game]
        6 GETTABLEKS                       R3 R3 K3 ["GameId"]
        8 NAMECALL                         R0 R0 K4 ["Invoke"]
       10 CALL                             R0 3 0
       11 GETIMPORT                        R0 K2 [game]
       13 GETTABLEKS                       R0 R0 K3 ["GameId"]
       15 JUMPIFEQKN                       R0 K5 [0] ; [+11]
       17 GETUPVAL                         R0 2
       18 JUMPIFNOT                        R0 ; [+8]
       19 GETUPVAL                         R0 2
       20 GETTABLEKS                       R0 R0 K6 ["Connected"]
       22 JUMPIFNOT                        R0 ; [+4]
       23 GETUPVAL                         R0 2
       24 NAMECALL                         R0 R0 K7 ["Disconnect"]
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["gameIdChanged"]
        4 GETIMPORT                        R3 K2 [game]
        6 GETTABLEKS                       R3 R3 K3 ["GameId"]
        8 NAMECALL                         R0 R0 K4 ["Invoke"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["showSaveOrPublishPlaceToRoblox"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["deactivePreviewOnDescendantAdded"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["CreateAvatarRules"]
       11 GETTABLEKS                       R2 R2 K3 ["fromAssetDm"]
       13 NAMECALL                         R0 R0 K1 ["Invoke"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clearConnections"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["createAvatarBodyRules"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K2 ["createAvatarCollisionRules"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K3 ["createAvatarAbilityRules"]
       15 CALL                             R0 0 0
       16 GETUPVAL                         R0 1
       17 GETTABLEKS                       R0 R0 K4 ["createAvatarAnimationRules"]
       19 CALL                             R0 0 0
       20 GETUPVAL                         R0 1
       21 GETTABLEKS                       R0 R0 K5 ["createAvatarAccessoryRules"]
       23 CALL                             R0 0 0
       24 GETUPVAL                         R0 1
       25 GETTABLEKS                       R0 R0 K6 ["createAvatarClothingRules"]
       27 CALL                             R0 0 0
       28 GETUPVAL                         R0 2
       29 GETTABLEKS                       R0 R0 K7 ["DescendantAdded"]
       31 NEWCLOSURE                       R2 P0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U4
       34 NAMECALL                         R0 R0 K8 ["Connect"]
       36 CALL                             R0 2 1
       37 GETUPVAL                         R1 0
       38 GETTABLEKS                       R1 R1 K9 ["addRBXScriptConnection"]
       40 MOVE                             R2 R0
       41 CALL                             R1 1 0
       42 GETUPVAL                         R1 3
       43 GETUPVAL                         R3 4
       44 GETTABLEKS                       R3 R3 K10 ["syncAvatarSettings"]
       46 GETUPVAL                         R4 5
       47 CALL                             R4 0 -1
       48 NAMECALL                         R1 R1 K11 ["Invoke"]
       50 CALL                             R1 -1 0
       51 GETUPVAL                         R1 6
       52 GETUPVAL                         R2 3
       53 CALL                             R1 1 0
       54 GETUPVAL                         R1 7
       55 GETUPVAL                         R2 3
       56 CALL                             R1 1 0
       57 GETUPVAL                         R1 8
       58 GETUPVAL                         R2 3
       59 CALL                             R1 1 0
       60 GETUPVAL                         R1 9
       61 GETUPVAL                         R2 3
       62 CALL                             R1 1 0
       63 GETUPVAL                         R1 10
       64 GETUPVAL                         R2 3
       65 CALL                             R1 1 0
       66 GETUPVAL                         R1 11
       67 GETUPVAL                         R2 3
       68 CALL                             R1 1 0
       69 GETUPVAL                         R1 12
       70 GETUPVAL                         R2 3
       71 CALL                             R1 1 0
       72 GETUPVAL                         R1 13
       73 GETUPVAL                         R2 3
       74 CALL                             R1 1 0
       75 GETUPVAL                         R1 14
       76 GETUPVAL                         R2 3
       77 CALL                             R1 1 0
       78 LOADNIL                          R1
       79 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onPublishSettings"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["setLatestPublishSuccess"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K2 ["onSettingsPublished"]
       13 NAMECALL                         R1 R1 K3 ["Invoke"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onDiscardSettings"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["onInitializationStarted"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K2 ["sendDatabaseLoadedOnInitialization"]
       10 GETUPVAL                         R1 0
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K3 ["listenToHasUnpublishedChanges"]
       15 GETUPVAL                         R1 0
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 2
       18 GETTABLEKS                       R0 R0 K4 ["setLatestPublishSuccess"]
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
       33 GETUPVAL                         R2 1
       34 GETTABLEKS                       R2 R2 K5 ["publishSettings"]
       36 NEWCLOSURE                       R3 P0
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          UPVAL U1
       41 NAMECALL                         R0 R0 K6 ["OnInvoke"]
       43 CALL                             R0 3 0
       44 GETUPVAL                         R0 0
       45 GETUPVAL                         R2 1
       46 GETTABLEKS                       R2 R2 K7 ["discardSettings"]
       48 DUPCLOSURE                       R3 K8 [PROTO_6]
       49 CAPTURE                          UPVAL U5
       50 NAMECALL                         R0 R0 K6 ["OnInvoke"]
       52 CALL                             R0 3 0
       53 GETUPVAL                         R0 5
       54 GETTABLEKS                       R0 R0 K9 ["setupHolds"]
       56 GETUPVAL                         R1 0
       57 CALL                             R0 1 0
       58 GETUPVAL                         R0 5
       59 GETTABLEKS                       R0 R0 K10 ["connectRefreshPluginState"]
       61 GETUPVAL                         R1 0
       62 CALL                             R0 1 0
       63 GETUPVAL                         R0 6
       64 LOADK                            R2 K11 ["AvatarSettings Initialization"]
       65 NAMECALL                         R0 R0 K12 ["SetWaypoint"]
       67 CALL                             R0 2 0
       68 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["registerPluginStyles"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["gameIdChanged"]
        8 GETIMPORT                        R4 K3 [game]
       10 GETTABLEKS                       R4 R4 K4 ["GameId"]
       12 NAMECALL                         R1 R0 K5 ["Invoke"]
       14 CALL                             R1 3 0
       15 GETIMPORT                        R1 K3 [game]
       17 GETTABLEKS                       R1 R1 K4 ["GameId"]
       19 JUMPIFNOTEQKN                    R1 K6 [0] ; [+17]
       21 LOADNIL                          R1
       22 GETIMPORT                        R2 K3 [game]
       24 LOADK                            R4 K4 ["GameId"]
       25 NAMECALL                         R2 R2 K7 ["GetPropertyChangedSignal"]
       27 CALL                             R2 2 1
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          REF R1
       32 NAMECALL                         R2 R2 K8 ["Connect"]
       34 CALL                             R2 2 1
       35 MOVE                             R1 R2
       36 CLOSEUPVALS                      R1
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R3 R3 K9 ["requestLatestGameId"]
       40 NEWCLOSURE                       R4 P1
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U1
       43 NAMECALL                         R1 R0 K10 ["OnInvoke"]
       45 CALL                             R1 3 0
       46 GETUPVAL                         R3 1
       47 GETTABLEKS                       R3 R3 K11 ["requestSaveToRoblox"]
       49 NEWCLOSURE                       R4 P2
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          VAL R0
       52 NAMECALL                         R1 R0 K10 ["OnInvoke"]
       54 CALL                             R1 3 0
       55 GETUPVAL                         R3 1
       56 GETTABLEKS                       R3 R3 K12 ["CreateAvatarRules"]
       58 GETTABLEKS                       R3 R3 K13 ["fromPlugin"]
       60 NEWCLOSURE                       R4 P3
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          UPVAL U5
       64 CAPTURE                          VAL R0
       65 CAPTURE                          UPVAL U1
       66 CAPTURE                          UPVAL U6
       67 CAPTURE                          UPVAL U7
       68 CAPTURE                          UPVAL U8
       69 CAPTURE                          UPVAL U9
       70 CAPTURE                          UPVAL U10
       71 CAPTURE                          UPVAL U11
       72 CAPTURE                          UPVAL U12
       73 CAPTURE                          UPVAL U13
       74 CAPTURE                          UPVAL U14
       75 CAPTURE                          UPVAL U15
       76 NAMECALL                         R1 R0 K10 ["OnInvoke"]
       78 CALL                             R1 3 0
       79 GETUPVAL                         R3 1
       80 GETTABLEKS                       R3 R3 K12 ["CreateAvatarRules"]
       82 GETTABLEKS                       R3 R3 K14 ["fromAssetDm"]
       84 NAMECALL                         R1 R0 K5 ["Invoke"]
       86 CALL                             R1 2 0
       87 GETUPVAL                         R3 1
       88 GETTABLEKS                       R3 R3 K15 ["onInitialization"]
       90 GETTABLEKS                       R3 R3 K13 ["fromPlugin"]
       92 NEWCLOSURE                       R4 P4
       93 CAPTURE                          VAL R0
       94 CAPTURE                          UPVAL U1
       95 CAPTURE                          UPVAL U16
       96 CAPTURE                          UPVAL U17
       97 CAPTURE                          UPVAL U18
       98 CAPTURE                          UPVAL U2
       99 CAPTURE                          UPVAL U19
      100 NAMECALL                         R1 R0 K10 ["OnInvoke"]
      102 CALL                             R1 3 0
      103 GETUPVAL                         R3 1
      104 GETTABLEKS                       R3 R3 K15 ["onInitialization"]
      106 GETTABLEKS                       R3 R3 K14 ["fromAssetDm"]
      108 NAMECALL                         R1 R0 K5 ["Invoke"]
      110 CALL                             R1 2 0
      111 RETURN                           R0 0

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
       21 GETTABLEKS                       R4 R0 K10 ["Src"]
       23 GETTABLEKS                       R4 R4 K11 ["Util"]
       25 GETTABLEKS                       R4 R4 K12 ["BridgingFiles"]
       27 GETTABLEKS                       R4 R4 K13 ["AssetDmFiles"]
       29 GETTABLEKS                       R4 R4 K14 ["assetDmConnectionManager"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K9 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Util"]
       38 GETTABLEKS                       R5 R5 K15 ["Interfaces"]
       40 GETTABLEKS                       R5 R5 K16 ["PublishingInterface"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K9 [require]
       45 GETTABLEKS                       R6 R0 K10 ["Src"]
       47 GETTABLEKS                       R6 R6 K11 ["Util"]
       49 GETTABLEKS                       R6 R6 K15 ["Interfaces"]
       51 GETTABLEKS                       R6 R6 K17 ["RegisterPluginStylesInterface"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K9 [require]
       56 GETTABLEKS                       R7 R0 K10 ["Src"]
       58 GETTABLEKS                       R7 R7 K11 ["Util"]
       60 GETTABLEKS                       R7 R7 K12 ["BridgingFiles"]
       62 GETTABLEKS                       R7 R7 K13 ["AssetDmFiles"]
       64 GETTABLEKS                       R7 R7 K18 ["assetDmDatabaseLoadedManager"]
       66 CALL                             R6 1 1
       67 GETIMPORT                        R7 K9 [require]
       69 GETTABLEKS                       R8 R0 K10 ["Src"]
       71 GETTABLEKS                       R8 R8 K11 ["Util"]
       73 GETTABLEKS                       R8 R8 K12 ["BridgingFiles"]
       75 GETTABLEKS                       R8 R8 K13 ["AssetDmFiles"]
       77 GETTABLEKS                       R8 R8 K19 ["assetDmUtils"]
       79 CALL                             R7 1 1
       80 GETIMPORT                        R8 K9 [require]
       82 GETTABLEKS                       R9 R0 K10 ["Src"]
       84 GETTABLEKS                       R9 R9 K11 ["Util"]
       86 GETTABLEKS                       R9 R9 K12 ["BridgingFiles"]
       88 GETTABLEKS                       R9 R9 K13 ["AssetDmFiles"]
       90 GETTABLEKS                       R9 R9 K20 ["assetDmAbilitySettingBridge"]
       92 CALL                             R8 1 1
       93 GETIMPORT                        R9 K9 [require]
       95 GETTABLEKS                       R10 R0 K10 ["Src"]
       97 GETTABLEKS                       R10 R10 K11 ["Util"]
       99 GETTABLEKS                       R10 R10 K12 ["BridgingFiles"]
      101 GETTABLEKS                       R10 R10 K13 ["AssetDmFiles"]
      103 GETTABLEKS                       R10 R10 K21 ["assetDmAccessoriesSettingBridge"]
      105 CALL                             R9 1 1
      106 GETIMPORT                        R10 K9 [require]
      108 GETTABLEKS                       R11 R0 K10 ["Src"]
      110 GETTABLEKS                       R11 R11 K11 ["Util"]
      112 GETTABLEKS                       R11 R11 K12 ["BridgingFiles"]
      114 GETTABLEKS                       R11 R11 K13 ["AssetDmFiles"]
      116 GETTABLEKS                       R11 R11 K22 ["assetDmAnimationSettingBridge"]
      118 CALL                             R10 1 1
      119 GETIMPORT                        R11 K9 [require]
      121 GETTABLEKS                       R12 R0 K10 ["Src"]
      123 GETTABLEKS                       R12 R12 K11 ["Util"]
      125 GETTABLEKS                       R12 R12 K12 ["BridgingFiles"]
      127 GETTABLEKS                       R12 R12 K13 ["AssetDmFiles"]
      129 GETTABLEKS                       R12 R12 K23 ["assetDmAvatarRulesSettingBridge"]
      131 CALL                             R11 1 1
      132 GETIMPORT                        R12 K9 [require]
      134 GETTABLEKS                       R13 R0 K10 ["Src"]
      136 GETTABLEKS                       R13 R13 K11 ["Util"]
      138 GETTABLEKS                       R13 R13 K12 ["BridgingFiles"]
      140 GETTABLEKS                       R13 R13 K13 ["AssetDmFiles"]
      142 GETTABLEKS                       R13 R13 K24 ["assetDmBodySettingBridge"]
      144 CALL                             R12 1 1
      145 GETIMPORT                        R13 K9 [require]
      147 GETTABLEKS                       R14 R0 K10 ["Src"]
      149 GETTABLEKS                       R14 R14 K11 ["Util"]
      151 GETTABLEKS                       R14 R14 K12 ["BridgingFiles"]
      153 GETTABLEKS                       R14 R14 K13 ["AssetDmFiles"]
      155 GETTABLEKS                       R14 R14 K25 ["assetDmClothingSettingBridge"]
      157 CALL                             R13 1 1
      158 GETIMPORT                        R14 K9 [require]
      160 GETTABLEKS                       R15 R0 K10 ["Src"]
      162 GETTABLEKS                       R15 R15 K11 ["Util"]
      164 GETTABLEKS                       R15 R15 K12 ["BridgingFiles"]
      166 GETTABLEKS                       R15 R15 K13 ["AssetDmFiles"]
      168 GETTABLEKS                       R15 R15 K26 ["assetDmCollisionSettingBridge"]
      170 CALL                             R14 1 1
      171 GETIMPORT                        R15 K9 [require]
      173 GETTABLEKS                       R16 R0 K10 ["Src"]
      175 GETTABLEKS                       R16 R16 K11 ["Util"]
      177 GETTABLEKS                       R16 R16 K12 ["BridgingFiles"]
      179 GETTABLEKS                       R16 R16 K13 ["AssetDmFiles"]
      181 GETTABLEKS                       R16 R16 K27 ["assetDmPreviewFunctionalityBridge"]
      183 CALL                             R15 1 1
      184 GETIMPORT                        R16 K9 [require]
      186 GETTABLEKS                       R17 R0 K10 ["Src"]
      188 GETTABLEKS                       R17 R17 K11 ["Util"]
      190 GETTABLEKS                       R17 R17 K12 ["BridgingFiles"]
      192 GETTABLEKS                       R17 R17 K13 ["AssetDmFiles"]
      194 GETTABLEKS                       R17 R17 K28 ["assetDmWorkspaceSettingBridge"]
      196 CALL                             R16 1 1
      197 GETIMPORT                        R17 K9 [require]
      199 GETTABLEKS                       R18 R0 K10 ["Src"]
      201 GETTABLEKS                       R18 R18 K11 ["Util"]
      203 GETTABLEKS                       R18 R18 K12 ["BridgingFiles"]
      205 GETTABLEKS                       R18 R18 K13 ["AssetDmFiles"]
      207 GETTABLEKS                       R18 R18 K29 ["getPropertiesTable"]
      209 CALL                             R17 1 1
      210 GETIMPORT                        R18 K9 [require]
      212 GETTABLEKS                       R19 R0 K10 ["Src"]
      214 GETTABLEKS                       R19 R19 K11 ["Util"]
      216 GETTABLEKS                       R19 R19 K30 ["InvokeKeys"]
      218 CALL                             R18 1 1
      219 GETIMPORT                        R19 K9 [require]
      221 GETTABLEKS                       R20 R0 K10 ["Src"]
      223 GETTABLEKS                       R20 R20 K31 ["Flags"]
      225 GETTABLEKS                       R20 R20 K32 ["getFFlagPluginInvokeGuard"]
      227 CALL                             R19 1 1
      228 LOADB                            R20 0
      229 NEWCLOSURE                       R21 P0
      230 CAPTURE                          VAL R5
      231 CAPTURE                          VAL R18
      232 CAPTURE                          VAL R4
      233 CAPTURE                          VAL R3
      234 CAPTURE                          VAL R7
      235 CAPTURE                          VAL R1
      236 CAPTURE                          VAL R17
      237 CAPTURE                          VAL R11
      238 CAPTURE                          VAL R12
      239 CAPTURE                          VAL R14
      240 CAPTURE                          VAL R8
      241 CAPTURE                          VAL R10
      242 CAPTURE                          VAL R9
      243 CAPTURE                          VAL R13
      244 CAPTURE                          VAL R15
      245 CAPTURE                          VAL R16
      246 CAPTURE                          VAL R6
      247 CAPTURE                          VAL R19
      248 CAPTURE                          REF R20
      249 CAPTURE                          VAL R2
      250 CLOSEUPVALS                      R20
      251 RETURN                           R21 1
