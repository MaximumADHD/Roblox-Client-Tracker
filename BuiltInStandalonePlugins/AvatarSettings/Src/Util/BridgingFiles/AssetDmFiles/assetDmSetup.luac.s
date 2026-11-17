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
       44 JUMPIFNOT                        R1 ; [+21]
       45 GETUPVAL                         R1 6
       46 GETTABLEKS                       R1 R1 K10 ["isActive"]
       48 CALL                             R1 0 1
       49 JUMPIFNOT                        R1 ; [+16]
       50 GETUPVAL                         R1 7
       51 GETTABLEKS                       R1 R1 K11 ["connect"]
       53 GETUPVAL                         R2 1
       54 GETTABLEKS                       R2 R2 K12 ["avatarRules"]
       56 CALL                             R2 0 -1
       57 CALL                             R1 -1 3
       58 FORGPREP                         R1
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R6 R6 K9 ["addRBXScriptConnection"]
       62 MOVE                             R7 R5
       63 CALL                             R6 1 0
       64 FORGLOOP                         R1 2 ; [-6]
       66 GETUPVAL                         R1 8
       67 CALL                             R1 0 1
       68 JUMPIFNOT                        R1 ; [+25]
       69 GETUPVAL                         R1 9
       70 GETTABLEKS                       R1 R1 K13 ["capture"]
       72 CALL                             R1 0 3
       73 JUMPIFNOT                        R1 ; [+29]
       74 GETUPVAL                         R4 3
       75 GETUPVAL                         R6 4
       76 GETTABLEKS                       R6 R6 K14 ["syncAvatarSettings"]
       78 MOVE                             R7 R1
       79 MOVE                             R8 R2
       80 NAMECALL                         R4 R4 K15 ["Invoke"]
       82 CALL                             R4 4 0
       83 JUMPIFNOT                        R3 ; [+19]
       84 GETUPVAL                         R4 3
       85 GETUPVAL                         R6 4
       86 GETTABLEKS                       R6 R6 K16 ["refreshPluginState"]
       88 MOVE                             R7 R1
       89 MOVE                             R8 R2
       90 NAMECALL                         R4 R4 K15 ["Invoke"]
       92 CALL                             R4 4 0
       93 JUMP                             ; [+9]
       94 GETUPVAL                         R1 3
       95 GETUPVAL                         R3 4
       96 GETTABLEKS                       R3 R3 K14 ["syncAvatarSettings"]
       98 GETUPVAL                         R4 10
       99 CALL                             R4 0 -1
      100 NAMECALL                         R1 R1 K15 ["Invoke"]
      102 CALL                             R1 -1 0
      103 GETUPVAL                         R1 11
      104 GETUPVAL                         R2 3
      105 CALL                             R1 1 0
      106 GETUPVAL                         R1 12
      107 GETUPVAL                         R2 3
      108 CALL                             R1 1 0
      109 GETUPVAL                         R1 13
      110 GETUPVAL                         R2 3
      111 CALL                             R1 1 0
      112 GETUPVAL                         R1 14
      113 GETUPVAL                         R2 3
      114 CALL                             R1 1 0
      115 GETUPVAL                         R1 15
      116 GETUPVAL                         R2 3
      117 CALL                             R1 1 0
      118 GETUPVAL                         R1 16
      119 GETUPVAL                         R2 3
      120 CALL                             R1 1 0
      121 GETUPVAL                         R1 17
      122 GETUPVAL                         R2 3
      123 CALL                             R1 1 0
      124 GETUPVAL                         R1 18
      125 GETUPVAL                         R2 3
      126 CALL                             R1 1 0
      127 GETUPVAL                         R1 19
      128 GETUPVAL                         R2 3
      129 CALL                             R1 1 0
      130 LOADNIL                          R1
      131 RETURN                           R1 1

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
       16 CALL                             R1 0 1
       17 JUMPIFNOT                        R1 ; [+5]
       18 GETUPVAL                         R1 4
       19 GETTABLEKS                       R1 R1 K3 ["connect"]
       21 MOVE                             R2 R0
       22 CALL                             R1 1 0
       23 GETUPVAL                         R1 5
       24 GETTABLEKS                       R1 R1 K4 ["registerPluginStyles"]
       26 MOVE                             R2 R0
       27 CALL                             R1 1 0
       28 NEWCLOSURE                       R1 P0
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U6
       31 CAPTURE                          UPVAL U7
       32 CAPTURE                          UPVAL U2
       33 GETUPVAL                         R4 6
       34 GETTABLEKS                       R4 R4 K5 ["gameIdChanged"]
       36 GETIMPORT                        R5 K7 [game]
       38 GETTABLEKS                       R5 R5 K8 ["GameId"]
       40 NAMECALL                         R2 R0 K9 ["Invoke"]
       42 CALL                             R2 3 0
       43 GETUPVAL                         R2 7
       44 CALL                             R2 0 1
       45 JUMPIFNOT                        R2 ; [+10]
       46 GETUPVAL                         R4 2
       47 GETTABLEKS                       R4 R4 K10 ["gameId"]
       49 GETIMPORT                        R5 K7 [game]
       51 GETTABLEKS                       R5 R5 K8 ["GameId"]
       53 NAMECALL                         R2 R0 K2 ["SetItem"]
       55 CALL                             R2 3 0
       56 GETIMPORT                        R2 K7 [game]
       58 GETTABLEKS                       R2 R2 K8 ["GameId"]
       60 JUMPIFNOTEQKN                    R2 K11 [0] ; [+19]
       62 LOADNIL                          R2
       63 GETIMPORT                        R3 K7 [game]
       65 LOADK                            R5 K8 ["GameId"]
       66 NAMECALL                         R3 R3 K12 ["GetPropertyChangedSignal"]
       68 CALL                             R3 2 1
       69 NEWCLOSURE                       R5 P1
       70 CAPTURE                          VAL R0
       71 CAPTURE                          UPVAL U6
       72 CAPTURE                          UPVAL U7
       73 CAPTURE                          UPVAL U2
       74 CAPTURE                          REF R2
       75 NAMECALL                         R3 R3 K13 ["Connect"]
       77 CALL                             R3 2 1
       78 MOVE                             R2 R3
       79 CLOSEUPVALS                      R2
       80 GETUPVAL                         R4 6
       81 GETTABLEKS                       R4 R4 K14 ["requestLatestGameId"]
       83 NEWCLOSURE                       R5 P2
       84 CAPTURE                          VAL R0
       85 CAPTURE                          UPVAL U6
       86 CAPTURE                          UPVAL U7
       87 CAPTURE                          UPVAL U2
       88 NAMECALL                         R2 R0 K15 ["OnInvoke"]
       90 CALL                             R2 3 0
       91 GETUPVAL                         R4 6
       92 GETTABLEKS                       R4 R4 K16 ["requestSaveToRoblox"]
       94 NEWCLOSURE                       R5 P3
       95 CAPTURE                          UPVAL U8
       96 CAPTURE                          VAL R0
       97 NAMECALL                         R2 R0 K15 ["OnInvoke"]
       99 CALL                             R2 3 0
      100 GETUPVAL                         R4 6
      101 GETTABLEKS                       R4 R4 K17 ["CreateAvatarRules"]
      103 GETTABLEKS                       R4 R4 K18 ["fromPlugin"]
      105 NEWCLOSURE                       R5 P4
      106 CAPTURE                          UPVAL U9
      107 CAPTURE                          UPVAL U10
      108 CAPTURE                          UPVAL U11
      109 CAPTURE                          VAL R0
      110 CAPTURE                          UPVAL U6
      111 CAPTURE                          UPVAL U3
      112 CAPTURE                          UPVAL U4
      113 CAPTURE                          UPVAL U12
      114 CAPTURE                          UPVAL U13
      115 CAPTURE                          UPVAL U14
      116 CAPTURE                          UPVAL U15
      117 CAPTURE                          UPVAL U16
      118 CAPTURE                          UPVAL U17
      119 CAPTURE                          UPVAL U18
      120 CAPTURE                          UPVAL U19
      121 CAPTURE                          UPVAL U20
      122 CAPTURE                          UPVAL U21
      123 CAPTURE                          UPVAL U22
      124 CAPTURE                          UPVAL U23
      125 CAPTURE                          UPVAL U24
      126 NAMECALL                         R2 R0 K15 ["OnInvoke"]
      128 CALL                             R2 3 0
      129 GETUPVAL                         R4 6
      130 GETTABLEKS                       R4 R4 K17 ["CreateAvatarRules"]
      132 GETTABLEKS                       R4 R4 K19 ["fromAssetDm"]
      134 NAMECALL                         R2 R0 K9 ["Invoke"]
      136 CALL                             R2 2 0
      137 GETUPVAL                         R4 6
      138 GETTABLEKS                       R4 R4 K20 ["onInitialization"]
      140 GETTABLEKS                       R4 R4 K18 ["fromPlugin"]
      142 NEWCLOSURE                       R5 P5
      143 CAPTURE                          UPVAL U13
      144 CAPTURE                          UPVAL U14
      145 CAPTURE                          VAL R0
      146 CAPTURE                          UPVAL U6
      147 CAPTURE                          UPVAL U25
      148 CAPTURE                          UPVAL U26
      149 CAPTURE                          UPVAL U27
      150 CAPTURE                          UPVAL U28
      151 CAPTURE                          UPVAL U29
      152 CAPTURE                          UPVAL U30
      153 CAPTURE                          UPVAL U8
      154 CAPTURE                          UPVAL U31
      155 NAMECALL                         R2 R0 K15 ["OnInvoke"]
      157 CALL                             R2 3 0
      158 GETUPVAL                         R4 6
      159 GETTABLEKS                       R4 R4 K20 ["onInitialization"]
      161 GETTABLEKS                       R4 R4 K19 ["fromAssetDm"]
      163 NAMECALL                         R2 R0 K9 ["Invoke"]
      165 CALL                             R2 2 0
      166 RETURN                           R0 0

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
       83 GETTABLEKS                       R9 R9 K20 ["assetDmOverrideAdapter"]
       85 CALL                             R8 1 1
       86 GETIMPORT                        R9 K10 [require]
       88 GETTABLEKS                       R10 R0 K11 ["Src"]
       90 GETTABLEKS                       R10 R10 K12 ["Util"]
       92 GETTABLEKS                       R10 R10 K13 ["BridgingFiles"]
       94 GETTABLEKS                       R10 R10 K14 ["AssetDmFiles"]
       96 GETTABLEKS                       R10 R10 K21 ["assetDmOverrideRulesSchema"]
       98 CALL                             R9 1 1
       99 GETIMPORT                        R10 K10 [require]
      101 GETTABLEKS                       R11 R0 K11 ["Src"]
      103 GETTABLEKS                       R11 R11 K12 ["Util"]
      105 GETTABLEKS                       R11 R11 K13 ["BridgingFiles"]
      107 GETTABLEKS                       R11 R11 K14 ["AssetDmFiles"]
      109 GETTABLEKS                       R11 R11 K22 ["assetDmPlaceSettingsStatus"]
      111 CALL                             R10 1 1
      112 GETIMPORT                        R11 K10 [require]
      114 GETTABLEKS                       R12 R0 K11 ["Src"]
      116 GETTABLEKS                       R12 R12 K12 ["Util"]
      118 GETTABLEKS                       R12 R12 K13 ["BridgingFiles"]
      120 GETTABLEKS                       R12 R12 K14 ["AssetDmFiles"]
      122 GETTABLEKS                       R12 R12 K23 ["assetDmUtils"]
      124 CALL                             R11 1 1
      125 GETIMPORT                        R12 K10 [require]
      127 GETTABLEKS                       R13 R0 K11 ["Src"]
      129 GETTABLEKS                       R13 R13 K12 ["Util"]
      131 GETTABLEKS                       R13 R13 K13 ["BridgingFiles"]
      133 GETTABLEKS                       R13 R13 K14 ["AssetDmFiles"]
      135 GETTABLEKS                       R13 R13 K24 ["assetDmAbilitySettingBridge"]
      137 CALL                             R12 1 1
      138 GETIMPORT                        R13 K10 [require]
      140 GETTABLEKS                       R14 R0 K11 ["Src"]
      142 GETTABLEKS                       R14 R14 K12 ["Util"]
      144 GETTABLEKS                       R14 R14 K13 ["BridgingFiles"]
      146 GETTABLEKS                       R14 R14 K14 ["AssetDmFiles"]
      148 GETTABLEKS                       R14 R14 K25 ["assetDmAccessoriesSettingBridge"]
      150 CALL                             R13 1 1
      151 GETIMPORT                        R14 K10 [require]
      153 GETTABLEKS                       R15 R0 K11 ["Src"]
      155 GETTABLEKS                       R15 R15 K12 ["Util"]
      157 GETTABLEKS                       R15 R15 K13 ["BridgingFiles"]
      159 GETTABLEKS                       R15 R15 K14 ["AssetDmFiles"]
      161 GETTABLEKS                       R15 R15 K26 ["assetDmAnimationSettingBridge"]
      163 CALL                             R14 1 1
      164 GETIMPORT                        R15 K10 [require]
      166 GETTABLEKS                       R16 R0 K11 ["Src"]
      168 GETTABLEKS                       R16 R16 K12 ["Util"]
      170 GETTABLEKS                       R16 R16 K13 ["BridgingFiles"]
      172 GETTABLEKS                       R16 R16 K14 ["AssetDmFiles"]
      174 GETTABLEKS                       R16 R16 K27 ["assetDmAvatarRulesSettingBridge"]
      176 CALL                             R15 1 1
      177 GETIMPORT                        R16 K10 [require]
      179 GETTABLEKS                       R17 R0 K11 ["Src"]
      181 GETTABLEKS                       R17 R17 K12 ["Util"]
      183 GETTABLEKS                       R17 R17 K13 ["BridgingFiles"]
      185 GETTABLEKS                       R17 R17 K14 ["AssetDmFiles"]
      187 GETTABLEKS                       R17 R17 K28 ["assetDmBodySettingBridge"]
      189 CALL                             R16 1 1
      190 GETIMPORT                        R17 K10 [require]
      192 GETTABLEKS                       R18 R0 K11 ["Src"]
      194 GETTABLEKS                       R18 R18 K12 ["Util"]
      196 GETTABLEKS                       R18 R18 K13 ["BridgingFiles"]
      198 GETTABLEKS                       R18 R18 K14 ["AssetDmFiles"]
      200 GETTABLEKS                       R18 R18 K29 ["assetDmClothingSettingBridge"]
      202 CALL                             R17 1 1
      203 GETIMPORT                        R18 K10 [require]
      205 GETTABLEKS                       R19 R0 K11 ["Src"]
      207 GETTABLEKS                       R19 R19 K12 ["Util"]
      209 GETTABLEKS                       R19 R19 K13 ["BridgingFiles"]
      211 GETTABLEKS                       R19 R19 K14 ["AssetDmFiles"]
      213 GETTABLEKS                       R19 R19 K30 ["assetDmCollisionSettingBridge"]
      215 CALL                             R18 1 1
      216 GETIMPORT                        R19 K10 [require]
      218 GETTABLEKS                       R20 R0 K11 ["Src"]
      220 GETTABLEKS                       R20 R20 K12 ["Util"]
      222 GETTABLEKS                       R20 R20 K13 ["BridgingFiles"]
      224 GETTABLEKS                       R20 R20 K14 ["AssetDmFiles"]
      226 GETTABLEKS                       R20 R20 K31 ["assetDmPreviewFunctionalityBridge"]
      228 CALL                             R19 1 1
      229 GETIMPORT                        R20 K10 [require]
      231 GETTABLEKS                       R21 R0 K11 ["Src"]
      233 GETTABLEKS                       R21 R21 K12 ["Util"]
      235 GETTABLEKS                       R21 R21 K13 ["BridgingFiles"]
      237 GETTABLEKS                       R21 R21 K14 ["AssetDmFiles"]
      239 GETTABLEKS                       R21 R21 K32 ["assetDmWorkspaceSettingBridge"]
      241 CALL                             R20 1 1
      242 GETIMPORT                        R21 K10 [require]
      244 GETTABLEKS                       R22 R0 K11 ["Src"]
      246 GETTABLEKS                       R22 R22 K33 ["Flags"]
      248 GETTABLEKS                       R22 R22 K34 ["getFFlagAvatarSettingsEditUnsavedPlace"]
      250 CALL                             R21 1 1
      251 GETIMPORT                        R22 K10 [require]
      253 GETTABLEKS                       R23 R0 K11 ["Src"]
      255 GETTABLEKS                       R23 R23 K33 ["Flags"]
      257 GETTABLEKS                       R23 R23 K35 ["getFFlagAvatarSettingsRemoveLegacyCollisionMode"]
      259 CALL                             R22 1 1
      260 GETIMPORT                        R23 K10 [require]
      262 GETTABLEKS                       R24 R0 K11 ["Src"]
      264 GETTABLEKS                       R24 R24 K33 ["Flags"]
      266 GETTABLEKS                       R24 R24 K36 ["getFFlagAvatarSettingsSyncPublishedSnapshot"]
      268 CALL                             R23 1 1
      269 GETIMPORT                        R24 K10 [require]
      271 GETTABLEKS                       R25 R0 K11 ["Src"]
      273 GETTABLEKS                       R25 R25 K33 ["Flags"]
      275 GETTABLEKS                       R25 R25 K37 ["getFFlagAvatarSettingsWriteOverrides"]
      277 CALL                             R24 1 1
      278 GETIMPORT                        R25 K10 [require]
      280 GETTABLEKS                       R26 R0 K11 ["Src"]
      282 GETTABLEKS                       R26 R26 K12 ["Util"]
      284 GETTABLEKS                       R26 R26 K13 ["BridgingFiles"]
      286 GETTABLEKS                       R26 R26 K14 ["AssetDmFiles"]
      288 GETTABLEKS                       R26 R26 K38 ["getPropertiesTable"]
      290 CALL                             R25 1 1
      291 GETIMPORT                        R26 K10 [require]
      293 GETTABLEKS                       R27 R0 K11 ["Src"]
      295 GETTABLEKS                       R27 R27 K12 ["Util"]
      297 GETTABLEKS                       R27 R27 K39 ["InvokeKeys"]
      299 CALL                             R26 1 1
      300 GETIMPORT                        R27 K10 [require]
      302 GETTABLEKS                       R28 R0 K11 ["Src"]
      304 GETTABLEKS                       R28 R28 K12 ["Util"]
      306 GETTABLEKS                       R28 R28 K40 ["PluginItemKeys"]
      308 CALL                             R27 1 1
      309 GETIMPORT                        R28 K10 [require]
      311 GETTABLEKS                       R29 R0 K11 ["Src"]
      313 GETTABLEKS                       R29 R29 K12 ["Util"]
      315 GETTABLEKS                       R29 R29 K13 ["BridgingFiles"]
      317 GETTABLEKS                       R29 R29 K14 ["AssetDmFiles"]
      319 GETTABLEKS                       R29 R29 K41 ["assetDmSettingsSnapshot"]
      321 CALL                             R28 1 1
      322 GETIMPORT                        R29 K10 [require]
      324 GETTABLEKS                       R30 R0 K11 ["Src"]
      326 GETTABLEKS                       R30 R30 K33 ["Flags"]
      328 GETTABLEKS                       R30 R30 K42 ["getEngineFeatureAvatarSettingsPlaceAvatarRules"]
      330 CALL                             R29 1 1
      331 GETIMPORT                        R30 K10 [require]
      333 GETTABLEKS                       R31 R0 K11 ["Src"]
      335 GETTABLEKS                       R31 R31 K33 ["Flags"]
      337 GETTABLEKS                       R31 R31 K43 ["getFFlagPluginInvokeGuard"]
      339 CALL                             R30 1 1
      340 LOADB                            R31 0
      341 LOADB                            R32 0
      342 NEWCLOSURE                       R33 P0
      343 CAPTURE                          REF R32
      344 CAPTURE                          VAL R26
      345 CAPTURE                          VAL R10
      346 NEWCLOSURE                       R34 P1
      347 CAPTURE                          VAL R22
      348 CAPTURE                          VAL R3
      349 CAPTURE                          VAL R27
      350 CAPTURE                          VAL R24
      351 CAPTURE                          VAL R9
      352 CAPTURE                          VAL R6
      353 CAPTURE                          VAL R26
      354 CAPTURE                          VAL R21
      355 CAPTURE                          VAL R5
      356 CAPTURE                          VAL R4
      357 CAPTURE                          VAL R11
      358 CAPTURE                          VAL R1
      359 CAPTURE                          VAL R8
      360 CAPTURE                          VAL R23
      361 CAPTURE                          VAL R28
      362 CAPTURE                          VAL R25
      363 CAPTURE                          VAL R15
      364 CAPTURE                          VAL R16
      365 CAPTURE                          VAL R18
      366 CAPTURE                          VAL R12
      367 CAPTURE                          VAL R14
      368 CAPTURE                          VAL R13
      369 CAPTURE                          VAL R17
      370 CAPTURE                          VAL R19
      371 CAPTURE                          VAL R20
      372 CAPTURE                          VAL R7
      373 CAPTURE                          VAL R29
      374 CAPTURE                          VAL R10
      375 CAPTURE                          REF R32
      376 CAPTURE                          VAL R30
      377 CAPTURE                          REF R31
      378 CAPTURE                          VAL R2
      379 CLOSEUPVALS                      R31
      380 RETURN                           R34 1
