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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 SETUPVAL                         R1 2
        6 GETTABLEKS                       R4 R0 K1 ["Ids"]
        8 GETTABLEKS                       R5 R0 K2 ["Types"]
       10 GETTABLEKS                       R6 R0 K3 ["Names"]
       12 NAMECALL                         R2 R1 K4 ["start"]
       14 CALL                             R2 4 0
       15 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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
       56 GETUPVAL                         R3 6
       57 CALL                             R3 0 1
       58 JUMPIFNOT                        R3 ; [+21]
       59 LOADNIL                          R3
       60 LOADK                            R6 K15 ["StartDragInsertManager"]
       61 NEWCLOSURE                       R7 P3
       62 CAPTURE                          UPVAL U7
       63 CAPTURE                          VAL R0
       64 CAPTURE                          REF R3
       65 NAMECALL                         R4 R0 K11 ["OnInvoke"]
       67 CALL                             R4 3 1
       68 SETTABLEKS                       R4 R2 K16 ["DragManagerStartConnection"]
       70 LOADK                            R6 K17 ["StopDragInsertManager"]
       71 NEWCLOSURE                       R7 P4
       72 CAPTURE                          REF R3
       73 CAPTURE                          VAL R0
       74 NAMECALL                         R4 R0 K11 ["OnInvoke"]
       76 CALL                             R4 3 1
       77 SETTABLEKS                       R4 R2 K18 ["DragManagerStopConnection"]
       79 CLOSEUPVALS                      R3
       80 LOADK                            R5 K19 ["OnInsertItems"]
       81 GETUPVAL                         R6 8
       82 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       84 CALL                             R3 3 1
       85 SETTABLEKS                       R3 R2 K20 ["OnInsertItemsConnection"]
       87 LOADK                            R5 K21 ["OnSelectItems"]
       88 NEWCLOSURE                       R6 P5
       89 CAPTURE                          UPVAL U9
       90 CAPTURE                          VAL R0
       91 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       93 CALL                             R3 3 1
       94 SETTABLEKS                       R3 R2 K22 ["OnSelectItemsConnection"]
       96 LOADK                            R5 K23 ["OnOpenPlace"]
       97 DUPCLOSURE                       R6 K24 [PROTO_6]
       98 CAPTURE                          UPVAL U10
       99 NAMECALL                         R3 R0 K11 ["OnInvoke"]
      101 CALL                             R3 3 1
      102 SETTABLEKS                       R3 R2 K25 ["OnOpenPlaceConnection"]
      104 LOADK                            R5 K26 ["OnAddPlace"]
      105 NEWCLOSURE                       R6 P7
      106 CAPTURE                          UPVAL U10
      107 CAPTURE                          VAL R0
      108 NAMECALL                         R3 R0 K11 ["OnInvoke"]
      110 CALL                             R3 3 1
      111 SETTABLEKS                       R3 R2 K27 ["OnAddPlaceConnection"]
      113 LOADK                            R5 K28 ["OnRemovePlace"]
      114 NEWCLOSURE                       R6 P8
      115 CAPTURE                          UPVAL U10
      116 CAPTURE                          VAL R0
      117 NAMECALL                         R3 R0 K11 ["OnInvoke"]
      119 CALL                             R3 3 1
      120 SETTABLEKS                       R3 R2 K29 ["OnRemovePlaceConnection"]
      122 LOADK                            R5 K30 ["OnRenamePlace"]
      123 NEWCLOSURE                       R6 P9
      124 CAPTURE                          UPVAL U10
      125 CAPTURE                          VAL R0
      126 NAMECALL                         R3 R0 K11 ["OnInvoke"]
      128 CALL                             R3 3 1
      129 SETTABLEKS                       R3 R2 K31 ["OnRenamePlaceConnection"]
      131 LOADK                            R5 K32 ["ImportAssetVersion"]
      132 NEWCLOSURE                       R6 P10
      133 CAPTURE                          VAL R1
      134 CAPTURE                          UPVAL U1
      135 NAMECALL                         R3 R0 K11 ["OnInvoke"]
      137 CALL                             R3 3 1
      138 SETTABLEKS                       R3 R2 K33 ["OnImportAssetVersionConnection"]
      140 RETURN                           R2 1

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
       29 GETTABLEKS                       R5 R5 K9 ["Util"]
       31 GETTABLEKS                       R5 R5 K12 ["Services"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K13 ["GetService"]
       36 LOADK                            R6 K14 ["AssetManagerService"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K11 ["Src"]
       42 GETTABLEKS                       R7 R7 K15 ["Asset"]
       44 GETTABLEKS                       R7 R7 K16 ["DragInsertManager"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K11 ["Src"]
       51 GETTABLEKS                       R8 R8 K17 ["Types"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K11 ["Src"]
       58 GETTABLEKS                       R9 R9 K15 ["Asset"]
       60 GETTABLEKS                       R9 R9 K9 ["Util"]
       62 GETTABLEKS                       R9 R9 K18 ["handleInvokeOnInsertItems"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K11 ["Src"]
       69 GETTABLEKS                       R10 R10 K15 ["Asset"]
       71 GETTABLEKS                       R10 R10 K9 ["Util"]
       73 GETTABLEKS                       R10 R10 K19 ["handleInvokeOnGrantAndInsertItems"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K11 ["Src"]
       80 GETTABLEKS                       R11 R11 K15 ["Asset"]
       82 GETTABLEKS                       R11 R11 K9 ["Util"]
       84 GETTABLEKS                       R11 R11 K20 ["handleInvokeOnSelectItems"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K11 ["Src"]
       91 GETTABLEKS                       R12 R12 K15 ["Asset"]
       93 GETTABLEKS                       R12 R12 K9 ["Util"]
       95 GETTABLEKS                       R12 R12 K21 ["handleInvokeOnAddToExperience"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K11 ["Src"]
      102 GETTABLEKS                       R13 R13 K22 ["Flags"]
      104 GETTABLEKS                       R13 R13 K23 ["getFFlagAmrUseAssetAccessController"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K11 ["Src"]
      111 GETTABLEKS                       R14 R14 K22 ["Flags"]
      113 GETTABLEKS                       R14 R14 K24 ["getFFlagAmrAddToExperience"]
      115 CALL                             R13 1 1
      116 GETIMPORT                        R14 K5 [require]
      118 GETTABLEKS                       R15 R0 K11 ["Src"]
      120 GETTABLEKS                       R15 R15 K22 ["Flags"]
      122 GETTABLEKS                       R15 R15 K25 ["getFFlagAmrDragToInsert"]
      124 CALL                             R14 1 1
      125 DUPCLOSURE                       R15 K26 [PROTO_11]
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R5
      137 RETURN                           R15 1
