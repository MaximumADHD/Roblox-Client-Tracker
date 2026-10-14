PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createPlaceAvatarRules"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 LOADNIL                          R1
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["createPlaceAvatarRules"]
        8 GETTABLEKS                       R3 R3 K1 ["fromPlugin"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 NAMECALL                         R1 R0 K2 ["OnInvoke"]
       15 CALL                             R1 3 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["gameIdChanged"]
        4 GETIMPORT                        R3 K2 [game]
        6 GETTABLEKS                       R3 R3 K3 ["GameId"]
        8 NAMECALL                         R0 R0 K4 ["Invoke"]
       10 CALL                             R0 3 0
       11 GETUPVAL                         R0 2
       12 CALL                             R0 0 1
       13 JUMPIFNOT                        R0 ; [+11]
       14 GETUPVAL                         R0 0
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K5 ["gameId"]
       18 GETIMPORT                        R3 K2 [game]
       20 GETTABLEKS                       R3 R3 K3 ["GameId"]
       22 NAMECALL                         R0 R0 K6 ["SetItem"]
       24 CALL                             R0 3 0
       25 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["gameIdChanged"]
        4 GETIMPORT                        R3 K2 [game]
        6 GETTABLEKS                       R3 R3 K3 ["GameId"]
        8 NAMECALL                         R0 R0 K4 ["Invoke"]
       10 CALL                             R0 3 0
       11 GETUPVAL                         R0 2
       12 CALL                             R0 0 1
       13 JUMPIFNOT                        R0 ; [+11]
       14 GETUPVAL                         R0 0
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K5 ["gameId"]
       18 GETIMPORT                        R3 K2 [game]
       20 GETTABLEKS                       R3 R3 K3 ["GameId"]
       22 NAMECALL                         R0 R0 K6 ["SetItem"]
       24 CALL                             R0 3 0
       25 GETIMPORT                        R0 K2 [game]
       27 GETTABLEKS                       R0 R0 K3 ["GameId"]
       29 JUMPIFEQKN                       R0 K7 [0] ; [+11]
       31 GETUPVAL                         R0 4
       32 JUMPIFNOT                        R0 ; [+8]
       33 GETUPVAL                         R0 4
       34 GETTABLEKS                       R0 R0 K8 ["Connected"]
       36 JUMPIFNOT                        R0 ; [+4]
       37 GETUPVAL                         R0 4
       38 NAMECALL                         R0 R0 K9 ["Disconnect"]
       40 CALL                             R0 1 0
       41 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["gameIdChanged"]
        4 GETIMPORT                        R3 K2 [game]
        6 GETTABLEKS                       R3 R3 K3 ["GameId"]
        8 NAMECALL                         R0 R0 K4 ["Invoke"]
       10 CALL                             R0 3 0
       11 GETUPVAL                         R0 2
       12 CALL                             R0 0 1
       13 JUMPIFNOT                        R0 ; [+11]
       14 GETUPVAL                         R0 0
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K5 ["gameId"]
       18 GETIMPORT                        R3 K2 [game]
       20 GETTABLEKS                       R3 R3 K3 ["GameId"]
       22 NAMECALL                         R0 R0 K6 ["SetItem"]
       24 CALL                             R0 3 0
       25 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["showSaveOrPublishPlaceToRoblox"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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
       42 GETUPVAL                         R1 5
       43 CALL                             R1 0 1
       44 JUMPIFNOT                        R1 ; [+25]
       45 GETUPVAL                         R1 6
       46 GETTABLEKS                       R1 R1 K10 ["capture"]
       48 CALL                             R1 0 3
       49 JUMPIFNOT                        R1 ; [+29]
       50 GETUPVAL                         R4 3
       51 GETUPVAL                         R6 4
       52 GETTABLEKS                       R6 R6 K11 ["syncAvatarSettings"]
       54 MOVE                             R7 R1
       55 MOVE                             R8 R2
       56 NAMECALL                         R4 R4 K12 ["Invoke"]
       58 CALL                             R4 4 0
       59 JUMPIFNOT                        R3 ; [+19]
       60 GETUPVAL                         R4 3
       61 GETUPVAL                         R6 4
       62 GETTABLEKS                       R6 R6 K13 ["refreshPluginState"]
       64 MOVE                             R7 R1
       65 MOVE                             R8 R2
       66 NAMECALL                         R4 R4 K12 ["Invoke"]
       68 CALL                             R4 4 0
       69 JUMP                             ; [+9]
       70 GETUPVAL                         R1 3
       71 GETUPVAL                         R3 4
       72 GETTABLEKS                       R3 R3 K11 ["syncAvatarSettings"]
       74 GETUPVAL                         R4 7
       75 CALL                             R4 0 -1
       76 NAMECALL                         R1 R1 K12 ["Invoke"]
       78 CALL                             R1 -1 0
       79 GETUPVAL                         R1 8
       80 GETUPVAL                         R2 3
       81 CALL                             R1 1 0
       82 GETUPVAL                         R1 9
       83 GETUPVAL                         R2 3
       84 CALL                             R1 1 0
       85 GETUPVAL                         R1 10
       86 GETUPVAL                         R2 3
       87 CALL                             R1 1 0
       88 GETUPVAL                         R1 11
       89 GETUPVAL                         R2 3
       90 CALL                             R1 1 0
       91 GETUPVAL                         R1 12
       92 GETUPVAL                         R2 3
       93 CALL                             R1 1 0
       94 GETUPVAL                         R1 13
       95 GETUPVAL                         R2 3
       96 CALL                             R1 1 0
       97 GETUPVAL                         R1 14
       98 GETUPVAL                         R2 3
       99 CALL                             R1 1 0
      100 GETUPVAL                         R1 15
      101 GETUPVAL                         R2 3
      102 CALL                             R1 1 0
      103 GETUPVAL                         R1 16
      104 GETUPVAL                         R2 3
      105 CALL                             R1 1 0
      106 LOADNIL                          R1
      107 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onPublishSettings"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["setLatestPublishSuccess"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+6]
       12 JUMPIFNOT                        R0 ; [+5]
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R1 R1 K2 ["captureBaseline"]
       16 GETUPVAL                         R2 4
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 4
       19 GETUPVAL                         R3 5
       20 GETTABLEKS                       R3 R3 K3 ["onSettingsPublished"]
       22 NAMECALL                         R1 R1 K4 ["Invoke"]
       24 CALL                             R1 2 0
       25 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onDiscardSettings"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["cancelPendingLoad"]
        6 CALL                             R0 0 0
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R2 R2 K1 ["onInitializationStarted"]
       11 NAMECALL                         R0 R0 K2 ["Invoke"]
       13 CALL                             R0 2 0
       14 GETUPVAL                         R0 4
       15 GETTABLEKS                       R0 R0 K3 ["sendDatabaseLoadedOnInitialization"]
       17 GETUPVAL                         R1 2
       18 CALL                             R0 1 0
       19 GETUPVAL                         R0 4
       20 GETTABLEKS                       R0 R0 K4 ["listenToHasUnpublishedChanges"]
       22 GETUPVAL                         R1 2
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 5
       25 CALL                             R0 0 1
       26 JUMPIFNOT                        R0 ; [+22]
       27 GETUPVAL                         R0 6
       28 GETTABLEKS                       R0 R0 K5 ["connect"]
       30 GETUPVAL                         R1 2
       31 CALL                             R0 1 0
       32 GETUPVAL                         R0 2
       33 GETUPVAL                         R1 7
       34 JUMPIFNOT                        R1 ; [+1]
       35 JUMP                             ; [+13]
       36 LOADB                            R1 1
       37 SETUPVAL                         R1 7
       38 GETUPVAL                         R3 3
       39 GETTABLEKS                       R3 R3 K6 ["createPlaceAvatarRules"]
       41 GETTABLEKS                       R3 R3 K7 ["fromPlugin"]
       43 NEWCLOSURE                       R4 P0
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          VAL R0
       46 NAMECALL                         R1 R0 K8 ["OnInvoke"]
       48 CALL                             R1 3 0
       49 GETUPVAL                         R0 4
       50 GETTABLEKS                       R0 R0 K9 ["setLatestPublishSuccess"]
       52 LOADB                            R1 0
       53 CALL                             R0 1 0
       54 GETUPVAL                         R0 8
       55 CALL                             R0 0 1
       56 JUMPIFNOT                        R0 ; [+2]
       57 GETUPVAL                         R0 9
       58 JUMPIF                           R0 ; [+19]
       59 GETUPVAL                         R0 8
       60 CALL                             R0 0 1
       61 JUMPIFNOT                        R0 ; [+2]
       62 LOADB                            R0 1
       63 SETUPVAL                         R0 9
       64 GETUPVAL                         R0 2
       65 GETUPVAL                         R2 3
       66 GETTABLEKS                       R2 R2 K10 ["publishSettings"]
       68 NEWCLOSURE                       R3 P1
       69 CAPTURE                          UPVAL U10
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          UPVAL U5
       72 CAPTURE                          UPVAL U6
       73 CAPTURE                          UPVAL U2
       74 CAPTURE                          UPVAL U3
       75 NAMECALL                         R0 R0 K8 ["OnInvoke"]
       77 CALL                             R0 3 0
       78 GETUPVAL                         R0 2
       79 GETUPVAL                         R2 3
       80 GETTABLEKS                       R2 R2 K11 ["discardSettings"]
       82 DUPCLOSURE                       R3 K12 [PROTO_9]
       83 CAPTURE                          UPVAL U10
       84 NAMECALL                         R0 R0 K8 ["OnInvoke"]
       86 CALL                             R0 3 0
       87 GETUPVAL                         R0 10
       88 GETTABLEKS                       R0 R0 K13 ["setupHolds"]
       90 GETUPVAL                         R1 2
       91 CALL                             R0 1 0
       92 GETUPVAL                         R0 10
       93 GETTABLEKS                       R0 R0 K14 ["connectRefreshPluginState"]
       95 GETUPVAL                         R1 2
       96 CALL                             R0 1 0
       97 GETUPVAL                         R0 11
       98 LOADK                            R2 K15 ["AvatarSettings Initialization"]
       99 NAMECALL                         R0 R0 K16 ["SetWaypoint"]
      101 CALL                             R0 2 0
      102 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K0 ["IsEdit"]
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+7]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["legacyCollisionModeAvailable"]
       11 LOADB                            R4 0
       12 NAMECALL                         R1 R0 K2 ["SetItem"]
       14 CALL                             R1 3 0
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K3 ["registerPluginStyles"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 NEWCLOSURE                       R1 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          UPVAL U2
       25 GETUPVAL                         R4 4
       26 GETTABLEKS                       R4 R4 K4 ["gameIdChanged"]
       28 GETIMPORT                        R5 K6 [game]
       30 GETTABLEKS                       R5 R5 K7 ["GameId"]
       32 NAMECALL                         R2 R0 K8 ["Invoke"]
       34 CALL                             R2 3 0
       35 GETUPVAL                         R2 5
       36 CALL                             R2 0 1
       37 JUMPIFNOT                        R2 ; [+10]
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R4 R4 K9 ["gameId"]
       41 GETIMPORT                        R5 K6 [game]
       43 GETTABLEKS                       R5 R5 K7 ["GameId"]
       45 NAMECALL                         R2 R0 K2 ["SetItem"]
       47 CALL                             R2 3 0
       48 GETIMPORT                        R2 K6 [game]
       50 GETTABLEKS                       R2 R2 K7 ["GameId"]
       52 JUMPIFNOTEQKN                    R2 K10 [0] ; [+19]
       54 LOADNIL                          R2
       55 GETIMPORT                        R3 K6 [game]
       57 LOADK                            R5 K7 ["GameId"]
       58 NAMECALL                         R3 R3 K11 ["GetPropertyChangedSignal"]
       60 CALL                             R3 2 1
       61 NEWCLOSURE                       R5 P1
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U4
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          UPVAL U2
       66 CAPTURE                          REF R2
       67 NAMECALL                         R3 R3 K12 ["Connect"]
       69 CALL                             R3 2 1
       70 MOVE                             R2 R3
       71 CLOSEUPVALS                      R2
       72 GETUPVAL                         R4 4
       73 GETTABLEKS                       R4 R4 K13 ["requestLatestGameId"]
       75 NEWCLOSURE                       R5 P2
       76 CAPTURE                          VAL R0
       77 CAPTURE                          UPVAL U4
       78 CAPTURE                          UPVAL U5
       79 CAPTURE                          UPVAL U2
       80 NAMECALL                         R2 R0 K14 ["OnInvoke"]
       82 CALL                             R2 3 0
       83 GETUPVAL                         R4 4
       84 GETTABLEKS                       R4 R4 K15 ["requestSaveToRoblox"]
       86 NEWCLOSURE                       R5 P3
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          VAL R0
       89 NAMECALL                         R2 R0 K14 ["OnInvoke"]
       91 CALL                             R2 3 0
       92 GETUPVAL                         R4 4
       93 GETTABLEKS                       R4 R4 K16 ["CreateAvatarRules"]
       95 GETTABLEKS                       R4 R4 K17 ["fromPlugin"]
       97 NEWCLOSURE                       R5 P4
       98 CAPTURE                          UPVAL U7
       99 CAPTURE                          UPVAL U8
      100 CAPTURE                          UPVAL U9
      101 CAPTURE                          VAL R0
      102 CAPTURE                          UPVAL U4
      103 CAPTURE                          UPVAL U10
      104 CAPTURE                          UPVAL U11
      105 CAPTURE                          UPVAL U12
      106 CAPTURE                          UPVAL U13
      107 CAPTURE                          UPVAL U14
      108 CAPTURE                          UPVAL U15
      109 CAPTURE                          UPVAL U16
      110 CAPTURE                          UPVAL U17
      111 CAPTURE                          UPVAL U18
      112 CAPTURE                          UPVAL U19
      113 CAPTURE                          UPVAL U20
      114 CAPTURE                          UPVAL U21
      115 NAMECALL                         R2 R0 K14 ["OnInvoke"]
      117 CALL                             R2 3 0
      118 GETUPVAL                         R4 4
      119 GETTABLEKS                       R4 R4 K16 ["CreateAvatarRules"]
      121 GETTABLEKS                       R4 R4 K18 ["fromAssetDm"]
      123 NAMECALL                         R2 R0 K8 ["Invoke"]
      125 CALL                             R2 2 0
      126 GETUPVAL                         R4 4
      127 GETTABLEKS                       R4 R4 K19 ["onInitialization"]
      129 GETTABLEKS                       R4 R4 K17 ["fromPlugin"]
      131 NEWCLOSURE                       R5 P5
      132 CAPTURE                          UPVAL U10
      133 CAPTURE                          UPVAL U11
      134 CAPTURE                          VAL R0
      135 CAPTURE                          UPVAL U4
      136 CAPTURE                          UPVAL U22
      137 CAPTURE                          UPVAL U23
      138 CAPTURE                          UPVAL U24
      139 CAPTURE                          UPVAL U25
      140 CAPTURE                          UPVAL U26
      141 CAPTURE                          UPVAL U27
      142 CAPTURE                          UPVAL U6
      143 CAPTURE                          UPVAL U28
      144 NAMECALL                         R2 R0 K14 ["OnInvoke"]
      146 CALL                             R2 3 0
      147 GETUPVAL                         R4 4
      148 GETTABLEKS                       R4 R4 K19 ["onInitialization"]
      150 GETTABLEKS                       R4 R4 K18 ["fromAssetDm"]
      152 NAMECALL                         R2 R0 K8 ["Invoke"]
      154 CALL                             R2 2 0
      155 RETURN                           R0 0

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
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K8 ["RunService"]
       22 NAMECALL                         R3 R3 K6 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K10 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Util"]
       31 GETTABLEKS                       R5 R5 K13 ["BridgingFiles"]
       33 GETTABLEKS                       R5 R5 K14 ["AssetDmFiles"]
       35 GETTABLEKS                       R5 R5 K15 ["assetDmConnectionManager"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K10 [require]
       40 GETTABLEKS                       R6 R0 K11 ["Src"]
       42 GETTABLEKS                       R6 R6 K12 ["Util"]
       44 GETTABLEKS                       R6 R6 K16 ["Interfaces"]
       46 GETTABLEKS                       R6 R6 K17 ["PublishingInterface"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K10 [require]
       51 GETTABLEKS                       R7 R0 K11 ["Src"]
       53 GETTABLEKS                       R7 R7 K12 ["Util"]
       55 GETTABLEKS                       R7 R7 K16 ["Interfaces"]
       57 GETTABLEKS                       R7 R7 K18 ["RegisterPluginStylesInterface"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K10 [require]
       62 GETTABLEKS                       R8 R0 K11 ["Src"]
       64 GETTABLEKS                       R8 R8 K12 ["Util"]
       66 GETTABLEKS                       R8 R8 K13 ["BridgingFiles"]
       68 GETTABLEKS                       R8 R8 K14 ["AssetDmFiles"]
       70 GETTABLEKS                       R8 R8 K19 ["assetDmDatabaseLoadedManager"]
       72 CALL                             R7 1 1
       73 GETIMPORT                        R8 K10 [require]
       75 GETTABLEKS                       R9 R0 K11 ["Src"]
       77 GETTABLEKS                       R9 R9 K12 ["Util"]
       79 GETTABLEKS                       R9 R9 K13 ["BridgingFiles"]
       81 GETTABLEKS                       R9 R9 K14 ["AssetDmFiles"]
       83 GETTABLEKS                       R9 R9 K20 ["assetDmPlaceSettingsStatus"]
       85 CALL                             R8 1 1
       86 GETIMPORT                        R9 K10 [require]
       88 GETTABLEKS                       R10 R0 K11 ["Src"]
       90 GETTABLEKS                       R10 R10 K12 ["Util"]
       92 GETTABLEKS                       R10 R10 K13 ["BridgingFiles"]
       94 GETTABLEKS                       R10 R10 K14 ["AssetDmFiles"]
       96 GETTABLEKS                       R10 R10 K21 ["assetDmUtils"]
       98 CALL                             R9 1 1
       99 GETIMPORT                        R10 K10 [require]
      101 GETTABLEKS                       R11 R0 K11 ["Src"]
      103 GETTABLEKS                       R11 R11 K12 ["Util"]
      105 GETTABLEKS                       R11 R11 K13 ["BridgingFiles"]
      107 GETTABLEKS                       R11 R11 K14 ["AssetDmFiles"]
      109 GETTABLEKS                       R11 R11 K22 ["assetDmAbilitySettingBridge"]
      111 CALL                             R10 1 1
      112 GETIMPORT                        R11 K10 [require]
      114 GETTABLEKS                       R12 R0 K11 ["Src"]
      116 GETTABLEKS                       R12 R12 K12 ["Util"]
      118 GETTABLEKS                       R12 R12 K13 ["BridgingFiles"]
      120 GETTABLEKS                       R12 R12 K14 ["AssetDmFiles"]
      122 GETTABLEKS                       R12 R12 K23 ["assetDmAccessoriesSettingBridge"]
      124 CALL                             R11 1 1
      125 GETIMPORT                        R12 K10 [require]
      127 GETTABLEKS                       R13 R0 K11 ["Src"]
      129 GETTABLEKS                       R13 R13 K12 ["Util"]
      131 GETTABLEKS                       R13 R13 K13 ["BridgingFiles"]
      133 GETTABLEKS                       R13 R13 K14 ["AssetDmFiles"]
      135 GETTABLEKS                       R13 R13 K24 ["assetDmAnimationSettingBridge"]
      137 CALL                             R12 1 1
      138 GETIMPORT                        R13 K10 [require]
      140 GETTABLEKS                       R14 R0 K11 ["Src"]
      142 GETTABLEKS                       R14 R14 K12 ["Util"]
      144 GETTABLEKS                       R14 R14 K13 ["BridgingFiles"]
      146 GETTABLEKS                       R14 R14 K14 ["AssetDmFiles"]
      148 GETTABLEKS                       R14 R14 K25 ["assetDmAvatarRulesSettingBridge"]
      150 CALL                             R13 1 1
      151 GETIMPORT                        R14 K10 [require]
      153 GETTABLEKS                       R15 R0 K11 ["Src"]
      155 GETTABLEKS                       R15 R15 K12 ["Util"]
      157 GETTABLEKS                       R15 R15 K13 ["BridgingFiles"]
      159 GETTABLEKS                       R15 R15 K14 ["AssetDmFiles"]
      161 GETTABLEKS                       R15 R15 K26 ["assetDmBodySettingBridge"]
      163 CALL                             R14 1 1
      164 GETIMPORT                        R15 K10 [require]
      166 GETTABLEKS                       R16 R0 K11 ["Src"]
      168 GETTABLEKS                       R16 R16 K12 ["Util"]
      170 GETTABLEKS                       R16 R16 K13 ["BridgingFiles"]
      172 GETTABLEKS                       R16 R16 K14 ["AssetDmFiles"]
      174 GETTABLEKS                       R16 R16 K27 ["assetDmClothingSettingBridge"]
      176 CALL                             R15 1 1
      177 GETIMPORT                        R16 K10 [require]
      179 GETTABLEKS                       R17 R0 K11 ["Src"]
      181 GETTABLEKS                       R17 R17 K12 ["Util"]
      183 GETTABLEKS                       R17 R17 K13 ["BridgingFiles"]
      185 GETTABLEKS                       R17 R17 K14 ["AssetDmFiles"]
      187 GETTABLEKS                       R17 R17 K28 ["assetDmCollisionSettingBridge"]
      189 CALL                             R16 1 1
      190 GETIMPORT                        R17 K10 [require]
      192 GETTABLEKS                       R18 R0 K11 ["Src"]
      194 GETTABLEKS                       R18 R18 K12 ["Util"]
      196 GETTABLEKS                       R18 R18 K13 ["BridgingFiles"]
      198 GETTABLEKS                       R18 R18 K14 ["AssetDmFiles"]
      200 GETTABLEKS                       R18 R18 K29 ["assetDmPreviewFunctionalityBridge"]
      202 CALL                             R17 1 1
      203 GETIMPORT                        R18 K10 [require]
      205 GETTABLEKS                       R19 R0 K11 ["Src"]
      207 GETTABLEKS                       R19 R19 K12 ["Util"]
      209 GETTABLEKS                       R19 R19 K13 ["BridgingFiles"]
      211 GETTABLEKS                       R19 R19 K14 ["AssetDmFiles"]
      213 GETTABLEKS                       R19 R19 K30 ["assetDmWorkspaceSettingBridge"]
      215 CALL                             R18 1 1
      216 GETIMPORT                        R19 K10 [require]
      218 GETTABLEKS                       R20 R0 K11 ["Src"]
      220 GETTABLEKS                       R20 R20 K31 ["Flags"]
      222 GETTABLEKS                       R20 R20 K32 ["getFFlagAvatarSettingsEditUnsavedPlace"]
      224 CALL                             R19 1 1
      225 GETIMPORT                        R20 K10 [require]
      227 GETTABLEKS                       R21 R0 K11 ["Src"]
      229 GETTABLEKS                       R21 R21 K31 ["Flags"]
      231 GETTABLEKS                       R21 R21 K33 ["getFFlagAvatarSettingsRemoveLegacyCollisionMode"]
      233 CALL                             R20 1 1
      234 GETIMPORT                        R21 K10 [require]
      236 GETTABLEKS                       R22 R0 K11 ["Src"]
      238 GETTABLEKS                       R22 R22 K31 ["Flags"]
      240 GETTABLEKS                       R22 R22 K34 ["getFFlagAvatarSettingsSyncPublishedSnapshot"]
      242 CALL                             R21 1 1
      243 GETIMPORT                        R22 K10 [require]
      245 GETTABLEKS                       R23 R0 K11 ["Src"]
      247 GETTABLEKS                       R23 R23 K12 ["Util"]
      249 GETTABLEKS                       R23 R23 K13 ["BridgingFiles"]
      251 GETTABLEKS                       R23 R23 K14 ["AssetDmFiles"]
      253 GETTABLEKS                       R23 R23 K35 ["getPropertiesTable"]
      255 CALL                             R22 1 1
      256 GETIMPORT                        R23 K10 [require]
      258 GETTABLEKS                       R24 R0 K11 ["Src"]
      260 GETTABLEKS                       R24 R24 K12 ["Util"]
      262 GETTABLEKS                       R24 R24 K36 ["InvokeKeys"]
      264 CALL                             R23 1 1
      265 GETIMPORT                        R24 K10 [require]
      267 GETTABLEKS                       R25 R0 K11 ["Src"]
      269 GETTABLEKS                       R25 R25 K12 ["Util"]
      271 GETTABLEKS                       R25 R25 K37 ["PluginItemKeys"]
      273 CALL                             R24 1 1
      274 GETIMPORT                        R25 K10 [require]
      276 GETTABLEKS                       R26 R0 K11 ["Src"]
      278 GETTABLEKS                       R26 R26 K12 ["Util"]
      280 GETTABLEKS                       R26 R26 K13 ["BridgingFiles"]
      282 GETTABLEKS                       R26 R26 K14 ["AssetDmFiles"]
      284 GETTABLEKS                       R26 R26 K38 ["assetDmSettingsSnapshot"]
      286 CALL                             R25 1 1
      287 GETIMPORT                        R26 K10 [require]
      289 GETTABLEKS                       R27 R0 K11 ["Src"]
      291 GETTABLEKS                       R27 R27 K31 ["Flags"]
      293 GETTABLEKS                       R27 R27 K39 ["getEngineFeatureAvatarSettingsPlaceAvatarRules"]
      295 CALL                             R26 1 1
      296 GETIMPORT                        R27 K10 [require]
      298 GETTABLEKS                       R28 R0 K11 ["Src"]
      300 GETTABLEKS                       R28 R28 K31 ["Flags"]
      302 GETTABLEKS                       R28 R28 K40 ["getFFlagPluginInvokeGuard"]
      304 CALL                             R27 1 1
      305 LOADB                            R28 0
      306 LOADB                            R29 0
      307 NEWCLOSURE                       R30 P0
      308 CAPTURE                          REF R29
      309 CAPTURE                          VAL R23
      310 CAPTURE                          VAL R8
      311 NEWCLOSURE                       R31 P1
      312 CAPTURE                          VAL R20
      313 CAPTURE                          VAL R3
      314 CAPTURE                          VAL R24
      315 CAPTURE                          VAL R6
      316 CAPTURE                          VAL R23
      317 CAPTURE                          VAL R19
      318 CAPTURE                          VAL R5
      319 CAPTURE                          VAL R4
      320 CAPTURE                          VAL R9
      321 CAPTURE                          VAL R1
      322 CAPTURE                          VAL R21
      323 CAPTURE                          VAL R25
      324 CAPTURE                          VAL R22
      325 CAPTURE                          VAL R13
      326 CAPTURE                          VAL R14
      327 CAPTURE                          VAL R16
      328 CAPTURE                          VAL R10
      329 CAPTURE                          VAL R12
      330 CAPTURE                          VAL R11
      331 CAPTURE                          VAL R15
      332 CAPTURE                          VAL R17
      333 CAPTURE                          VAL R18
      334 CAPTURE                          VAL R7
      335 CAPTURE                          VAL R26
      336 CAPTURE                          VAL R8
      337 CAPTURE                          REF R29
      338 CAPTURE                          VAL R27
      339 CAPTURE                          REF R28
      340 CAPTURE                          VAL R2
      341 CLOSEUPVALS                      R28
      342 RETURN                           R31 1
