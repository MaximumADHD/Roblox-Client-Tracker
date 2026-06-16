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
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 CALL                             R2 4 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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
       44 GETUPVAL                         R3 4
       45 CALL                             R3 0 1
       46 JUMPIFNOT                        R3 ; [+9]
       47 LOADK                            R5 K13 ["OnAddToExperience"]
       48 NEWCLOSURE                       R6 P2
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          VAL R0
       51 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       53 CALL                             R3 3 1
       54 SETTABLEKS                       R3 R2 K14 ["OnAddToExperienceConnection"]
       56 LOADK                            R5 K15 ["OnInsertItems"]
       57 GETUPVAL                         R6 6
       58 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       60 CALL                             R3 3 1
       61 SETTABLEKS                       R3 R2 K16 ["OnInsertItemsConnection"]
       63 LOADK                            R5 K17 ["OnSelectItems"]
       64 NEWCLOSURE                       R6 P3
       65 CAPTURE                          UPVAL U7
       66 CAPTURE                          VAL R0
       67 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       69 CALL                             R3 3 1
       70 SETTABLEKS                       R3 R2 K18 ["OnSelectItemsConnection"]
       72 LOADK                            R5 K19 ["OnOpenPlace"]
       73 DUPCLOSURE                       R6 K20 [PROTO_5]
       74 CAPTURE                          UPVAL U8
       75 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       77 CALL                             R3 3 1
       78 SETTABLEKS                       R3 R2 K21 ["OnOpenPlaceConnection"]
       80 LOADK                            R5 K22 ["OnAddPlace"]
       81 NEWCLOSURE                       R6 P5
       82 CAPTURE                          UPVAL U8
       83 CAPTURE                          VAL R0
       84 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       86 CALL                             R3 3 1
       87 SETTABLEKS                       R3 R2 K23 ["OnAddPlaceConnection"]
       89 LOADK                            R5 K24 ["OnRemovePlace"]
       90 NEWCLOSURE                       R6 P6
       91 CAPTURE                          UPVAL U8
       92 CAPTURE                          VAL R0
       93 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       95 CALL                             R3 3 1
       96 SETTABLEKS                       R3 R2 K25 ["OnRemovePlaceConnection"]
       98 LOADK                            R5 K26 ["OnRenamePlace"]
       99 NEWCLOSURE                       R6 P7
      100 CAPTURE                          UPVAL U8
      101 CAPTURE                          VAL R0
      102 NAMECALL                         R3 R0 K11 ["OnInvoke"]
      104 CALL                             R3 3 1
      105 SETTABLEKS                       R3 R2 K27 ["OnRenamePlaceConnection"]
      107 LOADK                            R5 K28 ["SendAnalyticsEvent"]
      108 DUPCLOSURE                       R6 K29 [PROTO_9]
      109 CAPTURE                          UPVAL U9
      110 CAPTURE                          UPVAL U10
      111 CAPTURE                          UPVAL U11
      112 NAMECALL                         R3 R0 K11 ["OnInvoke"]
      114 CALL                             R3 3 1
      115 SETTABLEKS                       R3 R2 K30 ["SendAnalyticsEventConnection"]
      117 LOADK                            R5 K31 ["ImportAssetVersion"]
      118 NEWCLOSURE                       R6 P9
      119 CAPTURE                          VAL R1
      120 CAPTURE                          UPVAL U1
      121 NAMECALL                         R3 R0 K11 ["OnInvoke"]
      123 CALL                             R3 3 1
      124 SETTABLEKS                       R3 R2 K32 ["OnImportAssetVersionConnection"]
      126 RETURN                           R2 1

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
       60 GETTABLEKS                       R10 R10 K18 ["Types"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R11 R0 K12 ["Src"]
       67 GETTABLEKS                       R11 R11 K19 ["Asset"]
       69 GETTABLEKS                       R11 R11 K10 ["Util"]
       71 GETTABLEKS                       R11 R11 K20 ["handleInvokeOnInsertItems"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K5 [require]
       76 GETTABLEKS                       R12 R0 K12 ["Src"]
       78 GETTABLEKS                       R12 R12 K19 ["Asset"]
       80 GETTABLEKS                       R12 R12 K10 ["Util"]
       82 GETTABLEKS                       R12 R12 K21 ["handleInvokeOnGrantAndInsertItems"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K5 [require]
       87 GETTABLEKS                       R13 R0 K12 ["Src"]
       89 GETTABLEKS                       R13 R13 K19 ["Asset"]
       91 GETTABLEKS                       R13 R13 K10 ["Util"]
       93 GETTABLEKS                       R13 R13 K22 ["handleInvokeOnSelectItems"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K5 [require]
       98 GETTABLEKS                       R14 R0 K12 ["Src"]
      100 GETTABLEKS                       R14 R14 K19 ["Asset"]
      102 GETTABLEKS                       R14 R14 K10 ["Util"]
      104 GETTABLEKS                       R14 R14 K23 ["handleInvokeOnAddToExperience"]
      106 CALL                             R13 1 1
      107 GETIMPORT                        R14 K5 [require]
      109 GETTABLEKS                       R15 R0 K12 ["Src"]
      111 GETTABLEKS                       R15 R15 K24 ["Flags"]
      113 GETTABLEKS                       R15 R15 K25 ["getFFlagAmrUseAssetAccessController"]
      115 CALL                             R14 1 1
      116 GETIMPORT                        R15 K5 [require]
      118 GETTABLEKS                       R16 R0 K12 ["Src"]
      120 GETTABLEKS                       R16 R16 K24 ["Flags"]
      122 GETTABLEKS                       R16 R16 K26 ["getFFlagAmrAddToExperience"]
      124 CALL                             R15 1 1
      125 DUPCLOSURE                       R16 K27 [PROTO_0]
      126 DUPCLOSURE                       R17 K28 [PROTO_11]
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R14
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R1
      139 RETURN                           R17 1
