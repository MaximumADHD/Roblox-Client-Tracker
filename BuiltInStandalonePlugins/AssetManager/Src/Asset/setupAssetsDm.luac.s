PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["GameId"]
        2 GETIMPORT                        R3 K2 [game]
        4 GETTABLEKS                       R3 R3 K0 ["GameId"]
        6 NAMECALL                         R0 R0 K3 ["SetItem"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 CALL                             R2 4 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 CALL                             R2 4 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 CALL                             R2 4 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 SETUPVAL                         R1 2
        6 GETTABLEKS                       R4 R0 K1 ["Ids"]
        8 GETTABLEKS                       R5 R0 K2 ["VersionNumbers"]
       10 GETTABLEKS                       R6 R0 K3 ["Types"]
       12 GETTABLEKS                       R7 R0 K4 ["Names"]
       14 GETTABLEKS                       R8 R0 K5 ["IsPackage"]
       16 GETTABLEKS                       R9 R0 K6 ["Creators"]
       18 NAMECALL                         R2 R1 K7 ["start"]
       20 CALL                             R2 7 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+9]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R4 R0 K0 ["ShouldCancel"]
        6 NAMECALL                         R1 R1 K1 ["stop"]
        8 CALL                             R1 3 0
        9 LOADNIL                          R1
       10 SETUPVAL                         R1 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PlaceOpener"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 DUPTABLE                         R3 K3 [{"PlaceLaunchInfo"}]
        6 DUPTABLE                         R4 K6 [{"PlaceId", "UniverseId"}]
        7 GETUPVAL                         R5 1
        8 SETTABLEKS                       R5 R4 K4 ["PlaceId"]
       10 GETIMPORT                        R5 K8 [game]
       12 GETTABLEKS                       R5 R5 K9 ["GameId"]
       14 SETTABLEKS                       R5 R4 K5 ["UniverseId"]
       16 SETTABLEKS                       R4 R3 K2 ["PlaceLaunchInfo"]
       18 NAMECALL                         R1 R0 K10 ["OpenPlaceAsync"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 1
        6 JUMPIF                           R1 ; [+4]
        7 GETIMPORT                        R2 K3 [warn]
        9 LOADK                            R3 K4 ["Failed to open place"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["ASSET_MANAGER"]
        4 GETTABLEKS                       R4 R4 K1 ["CPC_EVENTS"]
        6 GETTABLEKS                       R4 R4 K2 ["IMPORT_ASSET_VERSION"]
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 NAMECALL                         R2 R2 K3 ["Fire"]
       12 CALL                             R2 4 0
       13 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ASSET_MANAGER"]
        6 GETTABLEKS                       R2 R2 K2 ["CPC_ID"]
        8 CALL                             R1 1 1
        9 NEWTABLE                         R2 16 0
       11 LOADK                            R5 K3 ["GameId"]
       12 GETIMPORT                        R6 K5 [game]
       14 GETTABLEKS                       R6 R6 K3 ["GameId"]
       16 NAMECALL                         R3 R0 K6 ["SetItem"]
       18 CALL                             R3 3 0
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K3 ["GameId"]
       22 NAMECALL                         R3 R3 K7 ["GetPropertyChangedSignal"]
       24 CALL                             R3 2 1
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R0
       27 NAMECALL                         R3 R3 K8 ["Connect"]
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R2 K9 ["OnGameIdChangedConnection"]
       32 LOADK                            R5 K10 ["RequestInsert"]
       33 NEWCLOSURE                       R6 P1
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          VAL R0
       36 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       38 CALL                             R3 3 1
       39 SETTABLEKS                       R3 R2 K12 ["RequestInsertConnection"]
       41 GETUPVAL                         R3 3
       42 CALL                             R3 0 1
       43 JUMPIFNOT                        R3 ; [+9]
       44 LOADK                            R5 K13 ["OnAddToExperience"]
       45 NEWCLOSURE                       R6 P2
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          VAL R0
       48 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       50 CALL                             R3 3 1
       51 SETTABLEKS                       R3 R2 K14 ["OnAddToExperienceConnection"]
       53 GETUPVAL                         R3 5
       54 CALL                             R3 0 1
       55 JUMPIFNOT                        R3 ; [+9]
       56 LOADK                            R5 K15 ["OnPublishItems"]
       57 NEWCLOSURE                       R6 P3
       58 CAPTURE                          UPVAL U6
       59 CAPTURE                          VAL R0
       60 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       62 CALL                             R3 3 1
       63 SETTABLEKS                       R3 R2 K16 ["OnPublishItemsConnection"]
       65 LOADNIL                          R3
       66 LOADK                            R6 K17 ["StartDragInsertManager"]
       67 NEWCLOSURE                       R7 P4
       68 CAPTURE                          UPVAL U7
       69 CAPTURE                          VAL R0
       70 CAPTURE                          REF R3
       71 NAMECALL                         R4 R0 K11 ["OnInvoke"]
       73 CALL                             R4 3 1
       74 SETTABLEKS                       R4 R2 K18 ["DragManagerStartConnection"]
       76 LOADK                            R6 K19 ["StopDragInsertManager"]
       77 NEWCLOSURE                       R7 P5
       78 CAPTURE                          REF R3
       79 CAPTURE                          VAL R0
       80 NAMECALL                         R4 R0 K11 ["OnInvoke"]
       82 CALL                             R4 3 1
       83 SETTABLEKS                       R4 R2 K20 ["DragManagerStopConnection"]
       85 LOADK                            R6 K21 ["OnSelectItems"]
       86 NEWCLOSURE                       R7 P6
       87 CAPTURE                          UPVAL U8
       88 CAPTURE                          VAL R0
       89 NAMECALL                         R4 R0 K11 ["OnInvoke"]
       91 CALL                             R4 3 1
       92 SETTABLEKS                       R4 R2 K22 ["OnSelectItemsConnection"]
       94 LOADK                            R6 K23 ["OnOpenPlace"]
       95 NEWCLOSURE                       R7 P7
       96 CAPTURE                          VAL R0
       97 NAMECALL                         R4 R0 K11 ["OnInvoke"]
       99 CALL                             R4 3 1
      100 SETTABLEKS                       R4 R2 K24 ["OnOpenPlaceConnection"]
      102 LOADK                            R6 K25 ["ImportAssetVersion"]
      103 NEWCLOSURE                       R7 P8
      104 CAPTURE                          VAL R1
      105 CAPTURE                          UPVAL U1
      106 NAMECALL                         R4 R0 K11 ["OnInvoke"]
      108 CALL                             R4 3 1
      109 SETTABLEKS                       R4 R2 K26 ["OnImportAssetVersionConnection"]
      111 CLOSEUPVALS                      R3
      112 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["SharedPluginConstants"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["Util"]
       23 GETTABLEKS                       R3 R3 K10 ["CrossPluginCommunication"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Asset"]
       31 GETTABLEKS                       R5 R5 K13 ["DragInsertManager"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K11 ["Src"]
       38 GETTABLEKS                       R6 R6 K14 ["Types"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K11 ["Src"]
       45 GETTABLEKS                       R7 R7 K12 ["Asset"]
       47 GETTABLEKS                       R7 R7 K9 ["Util"]
       49 GETTABLEKS                       R7 R7 K15 ["handleInvokeRequestInsert"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R8 R0 K11 ["Src"]
       56 GETTABLEKS                       R8 R8 K12 ["Asset"]
       58 GETTABLEKS                       R8 R8 K9 ["Util"]
       60 GETTABLEKS                       R8 R8 K16 ["handleInvokeOnSelectItems"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K5 [require]
       65 GETTABLEKS                       R9 R0 K11 ["Src"]
       67 GETTABLEKS                       R9 R9 K12 ["Asset"]
       69 GETTABLEKS                       R9 R9 K9 ["Util"]
       71 GETTABLEKS                       R9 R9 K17 ["handleInvokeOnAddToExperience"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K5 [require]
       76 GETTABLEKS                       R10 R0 K11 ["Src"]
       78 GETTABLEKS                       R10 R10 K12 ["Asset"]
       80 GETTABLEKS                       R10 R10 K9 ["Util"]
       82 GETTABLEKS                       R10 R10 K18 ["handleInvokeOnPublishItems"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K5 [require]
       87 GETTABLEKS                       R11 R0 K11 ["Src"]
       89 GETTABLEKS                       R11 R11 K19 ["Flags"]
       91 GETTABLEKS                       R11 R11 K20 ["getFFlagAmrAddToExperience"]
       93 CALL                             R10 1 1
       94 GETIMPORT                        R11 K5 [require]
       96 GETTABLEKS                       R12 R0 K11 ["Src"]
       98 GETTABLEKS                       R12 R12 K19 ["Flags"]
      100 GETTABLEKS                       R12 R12 K21 ["getFFlagAmrEnablePublishOption"]
      102 CALL                             R11 1 1
      103 DUPCLOSURE                       R12 K22 [PROTO_10]
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R7
      113 RETURN                           R12 1
