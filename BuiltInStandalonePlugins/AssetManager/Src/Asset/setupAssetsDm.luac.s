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
        2 GETIMPORT                        R4 K2 [game]
        4 GETTABLEKS                       R3 R4 K0 ["GameId"]
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
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K2 ["OpenPlace"]
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R0
        7 CALL                             R1 3 2
        8 JUMPIF                           R1 ; [+4]
        9 GETIMPORT                        R3 K4 [warn]
       11 LOADK                            R4 K5 ["Failed to open place"]
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K2 ["AddNewPlace"]
        5 GETUPVAL                         R2 0
        6 GETIMPORT                        R4 K4 [game]
        8 GETTABLEKS                       R3 R4 K5 ["GameId"]
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

PROTO_5:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K2 ["RemovePlace"]
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

PROTO_6:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K2 ["RenamePlace"]
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

PROTO_7:
        0 DUPTABLE                         R1 K5 [{"eventType", "placeId", "universeId", "studioSid", "clientId"}]
        1 GETTABLEKS                       R2 R0 K6 ["Event"]
        3 SETTABLEKS                       R2 R1 K0 ["eventType"]
        5 GETIMPORT                        R3 K8 [game]
        7 GETTABLEKS                       R2 R3 K9 ["PlaceId"]
        9 SETTABLEKS                       R2 R1 K1 ["placeId"]
       11 GETIMPORT                        R3 K8 [game]
       13 GETTABLEKS                       R2 R3 K10 ["GameId"]
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
       33 GETUPVAL                         R3 2
       34 GETTABLEKS                       R2 R3 K14 ["join"]
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

PROTO_8:
        0 GETUPVAL                         R3 0
        1 LOADK                            R5 K0 ["BulkImportAssetImported"]
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R3 K1 ["Invoke"]
        5 CALL                             R3 3 0
        6 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R1 16 0
        2 LOADK                            R4 K0 ["GameId"]
        3 GETIMPORT                        R6 K2 [game]
        5 GETTABLEKS                       R5 R6 K0 ["GameId"]
        7 NAMECALL                         R2 R0 K3 ["SetItem"]
        9 CALL                             R2 3 0
       10 GETIMPORT                        R2 K2 [game]
       12 LOADK                            R4 K0 ["GameId"]
       13 NAMECALL                         R2 R2 K4 ["GetPropertyChangedSignal"]
       15 CALL                             R2 2 1
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R0
       18 NAMECALL                         R2 R2 K5 ["Connect"]
       20 CALL                             R2 2 1
       21 SETTABLEKS                       R2 R1 K6 ["OnGameIdChangedConnection"]
       23 GETUPVAL                         R2 0
       24 CALL                             R2 0 1
       25 JUMPIFNOT                        R2 ; [+9]
       26 LOADK                            R4 K7 ["OnInsertAndGrantItems"]
       27 NEWCLOSURE                       R5 P1
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R0
       30 NAMECALL                         R2 R0 K8 ["OnInvoke"]
       32 CALL                             R2 3 1
       33 SETTABLEKS                       R2 R1 K9 ["OnInsertAndGrantItemsConnection"]
       35 LOADK                            R4 K10 ["OnInsertItems"]
       36 GETUPVAL                         R5 2
       37 NAMECALL                         R2 R0 K8 ["OnInvoke"]
       39 CALL                             R2 3 1
       40 SETTABLEKS                       R2 R1 K11 ["OnInsertItemsConnection"]
       42 GETUPVAL                         R2 3
       43 CALL                             R2 0 1
       44 JUMPIFNOT                        R2 ; [+7]
       45 LOADK                            R4 K12 ["OnSelectItems"]
       46 GETUPVAL                         R5 4
       47 NAMECALL                         R2 R0 K8 ["OnInvoke"]
       49 CALL                             R2 3 1
       50 SETTABLEKS                       R2 R1 K13 ["OnSelectItemsConnection"]
       52 LOADK                            R4 K14 ["OnOpenBulkImport"]
       53 GETUPVAL                         R5 5
       54 NAMECALL                         R2 R0 K8 ["OnInvoke"]
       56 CALL                             R2 3 1
       57 SETTABLEKS                       R2 R1 K15 ["OnOpenBulkImportConnection"]
       59 LOADK                            R4 K16 ["OnOpenPlace"]
       60 DUPCLOSURE                       R5 K17 [PROTO_3]
       61 CAPTURE                          UPVAL U6
       62 NAMECALL                         R2 R0 K8 ["OnInvoke"]
       64 CALL                             R2 3 1
       65 SETTABLEKS                       R2 R1 K18 ["OnOpenPlaceConnection"]
       67 LOADK                            R4 K19 ["OnAddPlace"]
       68 NEWCLOSURE                       R5 P3
       69 CAPTURE                          UPVAL U6
       70 CAPTURE                          VAL R0
       71 NAMECALL                         R2 R0 K8 ["OnInvoke"]
       73 CALL                             R2 3 1
       74 SETTABLEKS                       R2 R1 K20 ["OnAddPlaceConnection"]
       76 LOADK                            R4 K21 ["OnRemovePlace"]
       77 NEWCLOSURE                       R5 P4
       78 CAPTURE                          UPVAL U6
       79 CAPTURE                          VAL R0
       80 NAMECALL                         R2 R0 K8 ["OnInvoke"]
       82 CALL                             R2 3 1
       83 SETTABLEKS                       R2 R1 K22 ["OnRemovePlaceConnection"]
       85 LOADK                            R4 K23 ["OnRenamePlace"]
       86 NEWCLOSURE                       R5 P5
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          VAL R0
       89 NAMECALL                         R2 R0 K8 ["OnInvoke"]
       91 CALL                             R2 3 1
       92 SETTABLEKS                       R2 R1 K24 ["OnRenamePlaceConnection"]
       94 LOADK                            R4 K25 ["SendAnalyticsEvent"]
       95 DUPCLOSURE                       R5 K26 [PROTO_7]
       96 CAPTURE                          UPVAL U7
       97 CAPTURE                          UPVAL U8
       98 CAPTURE                          UPVAL U9
       99 NAMECALL                         R2 R0 K8 ["OnInvoke"]
      101 CALL                             R2 3 1
      102 SETTABLEKS                       R2 R1 K27 ["SendAnalyticsEventConnection"]
      104 GETUPVAL                         R2 10
      105 CALL                             R2 0 1
      106 JUMPIF                           R2 ; [+10]
      107 GETUPVAL                         R3 11
      108 GETTABLEKS                       R2 R3 K28 ["AssetImported"]
      110 NEWCLOSURE                       R4 P7
      111 CAPTURE                          VAL R0
      112 NAMECALL                         R2 R2 K5 ["Connect"]
      114 CALL                             R2 2 1
      115 SETTABLEKS                       R2 R1 K29 ["BulkImportImportedConnection"]
      117 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["Services"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["GetService"]
       25 LOADK                            R4 K12 ["AssetManagerService"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R2 K11 ["GetService"]
       29 LOADK                            R5 K13 ["BulkImportService"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R5 R2 K11 ["GetService"]
       33 LOADK                            R6 K14 ["RbxAnalyticsService"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K5 [require]
       37 GETTABLEKS                       R8 R0 K8 ["Src"]
       39 GETTABLEKS                       R7 R8 K15 ["Analytics"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K5 [require]
       44 GETTABLEKS                       R11 R0 K8 ["Src"]
       46 GETTABLEKS                       R10 R11 K16 ["Asset"]
       48 GETTABLEKS                       R9 R10 K9 ["Util"]
       50 GETTABLEKS                       R8 R9 K17 ["handleInvokeOnInsertItems"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K5 [require]
       55 GETTABLEKS                       R12 R0 K8 ["Src"]
       57 GETTABLEKS                       R11 R12 K16 ["Asset"]
       59 GETTABLEKS                       R10 R11 K9 ["Util"]
       61 GETTABLEKS                       R9 R10 K18 ["handleInvokeOnOpenBulkImport"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K5 [require]
       66 GETTABLEKS                       R13 R0 K8 ["Src"]
       68 GETTABLEKS                       R12 R13 K16 ["Asset"]
       70 GETTABLEKS                       R11 R12 K9 ["Util"]
       72 GETTABLEKS                       R10 R11 K19 ["handleInvokeOnGrantAndInsertItems"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K5 [require]
       77 GETTABLEKS                       R14 R0 K8 ["Src"]
       79 GETTABLEKS                       R13 R14 K16 ["Asset"]
       81 GETTABLEKS                       R12 R13 K9 ["Util"]
       83 GETTABLEKS                       R11 R12 K20 ["handleInvokeOnSelectItems"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K5 [require]
       88 GETTABLEKS                       R14 R0 K8 ["Src"]
       90 GETTABLEKS                       R13 R14 K21 ["Flags"]
       92 GETTABLEKS                       R12 R13 K22 ["getFFlagAmrUseAssetAccessController"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K5 [require]
       97 GETTABLEKS                       R15 R0 K8 ["Src"]
       99 GETTABLEKS                       R14 R15 K21 ["Flags"]
      101 GETTABLEKS                       R13 R14 K23 ["getEFCinUnifiedImportQueue"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K5 [require]
      106 GETTABLEKS                       R16 R0 K8 ["Src"]
      108 GETTABLEKS                       R15 R16 K21 ["Flags"]
      110 GETTABLEKS                       R14 R15 K24 ["getFFlagAmrSelectAssetsInExplorer"]
      112 CALL                             R13 1 1
      113 DUPCLOSURE                       R14 K25 [PROTO_0]
      114 DUPCLOSURE                       R15 K26 [PROTO_9]
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R4
      127 RETURN                           R15 1
