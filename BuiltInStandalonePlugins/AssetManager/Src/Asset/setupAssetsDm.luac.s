PROTO_0:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 FASTCALL1                        TYPE R5 ; [+3]
        5 MOVE                             R7 R5
        6 GETIMPORT                        R6 K1 [type]
        8 CALL                             R6 1 1
        9 JUMPIFNOTEQKS                    R6 K2 ["table"] ; [+7]
       11 GETIMPORT                        R6 K4 [table.concat]
       13 MOVE                             R7 R5
       14 LOADK                            R8 K5 [","]
       15 CALL                             R6 2 1
       16 SETTABLE                         R6 R0 R4
       17 FORGLOOP                         R1 2 ; [-14]
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["GameId"]
        2 GETIMPORT                        R3 K2 [game]
        4 GETTABLEKS                       R3 R3 K0 ["GameId"]
        6 NAMECALL                         R0 R0 K3 ["SetItem"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 CALL                             R2 4 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["OpenPlace"]
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R0
        7 CALL                             R1 3 2
        8 JUMPIF                           R1 ; [+4]
        9 GETIMPORT                        R3 K4 [warn]
       11 LOADK                            R4 K5 ["Failed to open place"]
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["AddNewPlace"]
        5 GETUPVAL                         R2 0
        6 GETIMPORT                        R3 K4 [game]
        8 GETTABLEKS                       R3 R3 K5 ["GameId"]
       10 CALL                             R0 3 2
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETUPVAL                         R2 1
       13 LOADK                            R4 K6 ["OnAddPlaceSucceeded"]
       14 NAMECALL                         R2 R2 K7 ["Invoke"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0
       18 GETIMPORT                        R2 K9 [warn]
       20 LOADK                            R3 K10 ["Failed to add new place"]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["RemovePlace"]
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R0
        7 CALL                             R1 3 1
        8 JUMPIFNOT                        R1 ; [+7]
        9 GETUPVAL                         R2 1
       10 LOADK                            R4 K3 ["OnRemovePlaceFromGameSucceeded"]
       11 MOVE                             R5 R0
       12 NAMECALL                         R2 R2 K4 ["Invoke"]
       14 CALL                             R2 3 0
       15 RETURN                           R0 0
       16 GETIMPORT                        R2 K6 [warn]
       18 LOADK                            R3 K7 ["Failed to remove place"]
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["RenamePlace"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R4 R0 K3 ["Id"]
        8 GETTABLEKS                       R5 R0 K4 ["Name"]
       10 CALL                             R1 4 2
       11 JUMPIFNOT                        R1 ; [+7]
       12 GETUPVAL                         R3 1
       13 LOADK                            R5 K5 ["OnRenamePlaceSucceeded"]
       14 MOVE                             R6 R0
       15 NAMECALL                         R3 R3 K6 ["Invoke"]
       17 CALL                             R3 3 0
       18 RETURN                           R0 0
       19 GETIMPORT                        R3 K8 [warn]
       21 LOADK                            R4 K9 ["Failed to rename place"]
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K5 [{"eventType", "placeId", "universeId", "studioSid", "clientId"}]
        1 GETTABLEKS                       R2 R0 K6 ["Event"]
        3 SETTABLEKS                       R2 R1 K0 ["eventType"]
        5 GETIMPORT                        R2 K8 [game]
        7 GETTABLEKS                       R2 R2 K9 ["PlaceId"]
        9 SETTABLEKS                       R2 R1 K1 ["placeId"]
       11 GETIMPORT                        R2 K8 [game]
       13 GETTABLEKS                       R2 R2 K10 ["GameId"]
       15 SETTABLEKS                       R2 R1 K2 ["universeId"]
       17 GETUPVAL                         R2 0
       18 NAMECALL                         R2 R2 K11 ["GetSessionId"]
       20 CALL                             R2 1 1
       21 SETTABLEKS                       R2 R1 K3 ["studioSid"]
       23 GETUPVAL                         R2 0
       24 NAMECALL                         R2 R2 K12 ["GetClientId"]
       26 CALL                             R2 1 1
       27 SETTABLEKS                       R2 R1 K4 ["clientId"]
       29 GETUPVAL                         R2 1
       30 GETTABLEKS                       R3 R0 K13 ["Args"]
       32 CALL                             R2 1 0
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R2 R2 K14 ["join"]
       36 MOVE                             R3 R1
       37 GETTABLEKS                       R4 R0 K13 ["Args"]
       39 CALL                             R2 2 1
       40 GETUPVAL                         R3 0
       41 LOADK                            R5 K15 ["studio"]
       42 LOADK                            R6 K16 ["AssetManager"]
       43 LOADK                            R7 K6 ["Event"]
       44 MOVE                             R8 R2
       45 NAMECALL                         R3 R3 K17 ["SendEventDeferred"]
       47 CALL                             R3 5 0
       48 RETURN                           R0 0

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
       32 GETUPVAL                         R3 2
       33 CALL                             R3 0 1
       34 JUMPIFNOT                        R3 ; [+9]
       35 LOADK                            R5 K10 ["OnInsertAndGrantItems"]
       36 NEWCLOSURE                       R6 P1
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          VAL R0
       39 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       41 CALL                             R3 3 1
       42 SETTABLEKS                       R3 R2 K12 ["OnInsertAndGrantItemsConnection"]
       44 LOADK                            R5 K13 ["OnInsertItems"]
       45 GETUPVAL                         R6 4
       46 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       48 CALL                             R3 3 1
       49 SETTABLEKS                       R3 R2 K14 ["OnInsertItemsConnection"]
       51 LOADK                            R5 K15 ["OnSelectItems"]
       52 NEWCLOSURE                       R6 P2
       53 CAPTURE                          UPVAL U5
       54 CAPTURE                          VAL R0
       55 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       57 CALL                             R3 3 1
       58 SETTABLEKS                       R3 R2 K16 ["OnSelectItemsConnection"]
       60 LOADK                            R5 K17 ["OnOpenPlace"]
       61 DUPCLOSURE                       R6 K18 [PROTO_4]
       62 CAPTURE                          UPVAL U6
       63 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       65 CALL                             R3 3 1
       66 SETTABLEKS                       R3 R2 K19 ["OnOpenPlaceConnection"]
       68 LOADK                            R5 K20 ["OnAddPlace"]
       69 NEWCLOSURE                       R6 P4
       70 CAPTURE                          UPVAL U6
       71 CAPTURE                          VAL R0
       72 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       74 CALL                             R3 3 1
       75 SETTABLEKS                       R3 R2 K21 ["OnAddPlaceConnection"]
       77 LOADK                            R5 K22 ["OnRemovePlace"]
       78 NEWCLOSURE                       R6 P5
       79 CAPTURE                          UPVAL U6
       80 CAPTURE                          VAL R0
       81 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       83 CALL                             R3 3 1
       84 SETTABLEKS                       R3 R2 K23 ["OnRemovePlaceConnection"]
       86 LOADK                            R5 K24 ["OnRenamePlace"]
       87 NEWCLOSURE                       R6 P6
       88 CAPTURE                          UPVAL U6
       89 CAPTURE                          VAL R0
       90 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       92 CALL                             R3 3 1
       93 SETTABLEKS                       R3 R2 K25 ["OnRenamePlaceConnection"]
       95 LOADK                            R5 K26 ["SendAnalyticsEvent"]
       96 DUPCLOSURE                       R6 K27 [PROTO_8]
       97 CAPTURE                          UPVAL U7
       98 CAPTURE                          UPVAL U8
       99 CAPTURE                          UPVAL U9
      100 NAMECALL                         R3 R0 K11 ["OnInvoke"]
      102 CALL                             R3 3 1
      103 SETTABLEKS                       R3 R2 K28 ["SendAnalyticsEventConnection"]
      105 LOADK                            R5 K29 ["ImportAssetVersion"]
      106 NEWCLOSURE                       R6 P8
      107 CAPTURE                          VAL R1
      108 CAPTURE                          UPVAL U1
      109 NAMECALL                         R3 R0 K11 ["OnInvoke"]
      111 CALL                             R3 3 1
      112 SETTABLEKS                       R3 R2 K30 ["OnImportAssetVersionConnection"]
      114 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["SharedPluginConstants"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["Util"]
       30 GETTABLEKS                       R4 R4 K11 ["CrossPluginCommunication"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Src"]
       36 GETTABLEKS                       R6 R6 K10 ["Util"]
       38 GETTABLEKS                       R6 R6 K13 ["Services"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R5 K14 ["GetService"]
       43 LOADK                            R7 K15 ["AssetManagerService"]
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R7 R5 K14 ["GetService"]
       47 LOADK                            R8 K16 ["RbxAnalyticsService"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K5 [require]
       51 GETTABLEKS                       R9 R0 K12 ["Src"]
       53 GETTABLEKS                       R9 R9 K17 ["Analytics"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R10 R0 K12 ["Src"]
       60 GETTABLEKS                       R10 R10 K18 ["Asset"]
       62 GETTABLEKS                       R10 R10 K10 ["Util"]
       64 GETTABLEKS                       R10 R10 K19 ["handleInvokeOnInsertItems"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K5 [require]
       69 GETTABLEKS                       R11 R0 K12 ["Src"]
       71 GETTABLEKS                       R11 R11 K18 ["Asset"]
       73 GETTABLEKS                       R11 R11 K10 ["Util"]
       75 GETTABLEKS                       R11 R11 K20 ["handleInvokeOnGrantAndInsertItems"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K5 [require]
       80 GETTABLEKS                       R12 R0 K12 ["Src"]
       82 GETTABLEKS                       R12 R12 K18 ["Asset"]
       84 GETTABLEKS                       R12 R12 K10 ["Util"]
       86 GETTABLEKS                       R12 R12 K21 ["handleInvokeOnSelectItems"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K5 [require]
       91 GETTABLEKS                       R13 R0 K12 ["Src"]
       93 GETTABLEKS                       R13 R13 K22 ["Flags"]
       95 GETTABLEKS                       R13 R13 K23 ["getFFlagAmrUseAssetAccessController"]
       97 CALL                             R12 1 1
       98 DUPCLOSURE                       R13 K24 [PROTO_0]
       99 DUPCLOSURE                       R14 K25 [PROTO_10]
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R1
      110 RETURN                           R14 1
