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
        8 GETTABLEKS                       R5 R0 K2 ["Types"]
       10 GETTABLEKS                       R6 R0 K3 ["Names"]
       12 GETTABLEKS                       R7 R0 K4 ["IsPackage"]
       14 NAMECALL                         R2 R1 K5 ["start"]
       16 CALL                             R2 5 0
       17 RETURN                           R0 0

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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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
       34 JUMPIFNOT                        R3 ; [+10]
       35 LOADK                            R5 K10 ["RequestInsert"]
       36 NEWCLOSURE                       R6 P1
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          VAL R0
       39 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       41 CALL                             R3 3 1
       42 SETTABLEKS                       R3 R2 K12 ["RequestInsertConnection"]
       44 JUMP                             ; [+12]
       45 GETUPVAL                         R3 4
       46 CALL                             R3 0 1
       47 JUMPIFNOT                        R3 ; [+9]
       48 LOADK                            R5 K13 ["OnInsertAndGrantItems"]
       49 NEWCLOSURE                       R6 P2
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          VAL R0
       52 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       54 CALL                             R3 3 1
       55 SETTABLEKS                       R3 R2 K14 ["OnInsertAndGrantItemsConnection"]
       57 GETUPVAL                         R3 6
       58 CALL                             R3 0 1
       59 JUMPIFNOT                        R3 ; [+9]
       60 LOADK                            R5 K15 ["OnAddToExperience"]
       61 NEWCLOSURE                       R6 P3
       62 CAPTURE                          UPVAL U7
       63 CAPTURE                          VAL R0
       64 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       66 CALL                             R3 3 1
       67 SETTABLEKS                       R3 R2 K16 ["OnAddToExperienceConnection"]
       69 LOADNIL                          R3
       70 LOADK                            R6 K17 ["StartDragInsertManager"]
       71 NEWCLOSURE                       R7 P4
       72 CAPTURE                          UPVAL U8
       73 CAPTURE                          VAL R0
       74 CAPTURE                          REF R3
       75 NAMECALL                         R4 R0 K11 ["OnInvoke"]
       77 CALL                             R4 3 1
       78 SETTABLEKS                       R4 R2 K18 ["DragManagerStartConnection"]
       80 LOADK                            R6 K19 ["StopDragInsertManager"]
       81 NEWCLOSURE                       R7 P5
       82 CAPTURE                          REF R3
       83 CAPTURE                          VAL R0
       84 NAMECALL                         R4 R0 K11 ["OnInvoke"]
       86 CALL                             R4 3 1
       87 SETTABLEKS                       R4 R2 K20 ["DragManagerStopConnection"]
       89 LOADK                            R6 K21 ["OnInsertItems"]
       90 GETUPVAL                         R7 9
       91 NAMECALL                         R4 R0 K11 ["OnInvoke"]
       93 CALL                             R4 3 1
       94 SETTABLEKS                       R4 R2 K22 ["OnInsertItemsConnection"]
       96 LOADK                            R6 K23 ["OnSelectItems"]
       97 NEWCLOSURE                       R7 P6
       98 CAPTURE                          UPVAL U10
       99 CAPTURE                          VAL R0
      100 NAMECALL                         R4 R0 K11 ["OnInvoke"]
      102 CALL                             R4 3 1
      103 SETTABLEKS                       R4 R2 K24 ["OnSelectItemsConnection"]
      105 LOADK                            R6 K25 ["OnOpenPlace"]
      106 DUPCLOSURE                       R7 K26 [PROTO_7]
      107 CAPTURE                          UPVAL U11
      108 NAMECALL                         R4 R0 K11 ["OnInvoke"]
      110 CALL                             R4 3 1
      111 SETTABLEKS                       R4 R2 K27 ["OnOpenPlaceConnection"]
      113 LOADK                            R6 K28 ["OnAddPlace"]
      114 NEWCLOSURE                       R7 P8
      115 CAPTURE                          UPVAL U11
      116 CAPTURE                          VAL R0
      117 NAMECALL                         R4 R0 K11 ["OnInvoke"]
      119 CALL                             R4 3 1
      120 SETTABLEKS                       R4 R2 K29 ["OnAddPlaceConnection"]
      122 LOADK                            R6 K30 ["OnRemovePlace"]
      123 NEWCLOSURE                       R7 P9
      124 CAPTURE                          UPVAL U11
      125 CAPTURE                          VAL R0
      126 NAMECALL                         R4 R0 K11 ["OnInvoke"]
      128 CALL                             R4 3 1
      129 SETTABLEKS                       R4 R2 K31 ["OnRemovePlaceConnection"]
      131 LOADK                            R6 K32 ["OnRenamePlace"]
      132 NEWCLOSURE                       R7 P10
      133 CAPTURE                          UPVAL U11
      134 CAPTURE                          VAL R0
      135 NAMECALL                         R4 R0 K11 ["OnInvoke"]
      137 CALL                             R4 3 1
      138 SETTABLEKS                       R4 R2 K33 ["OnRenamePlaceConnection"]
      140 LOADK                            R6 K34 ["ImportAssetVersion"]
      141 NEWCLOSURE                       R7 P11
      142 CAPTURE                          VAL R1
      143 CAPTURE                          UPVAL U1
      144 NAMECALL                         R4 R0 K11 ["OnInvoke"]
      146 CALL                             R4 3 1
      147 SETTABLEKS                       R4 R2 K35 ["OnImportAssetVersionConnection"]
      149 CLOSEUPVALS                      R3
      150 RETURN                           R2 1

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
       84 GETTABLEKS                       R11 R11 K20 ["handleInvokeRequestInsert"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K11 ["Src"]
       91 GETTABLEKS                       R12 R12 K15 ["Asset"]
       93 GETTABLEKS                       R12 R12 K9 ["Util"]
       95 GETTABLEKS                       R12 R12 K21 ["handleInvokeOnSelectItems"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K11 ["Src"]
      102 GETTABLEKS                       R13 R13 K15 ["Asset"]
      104 GETTABLEKS                       R13 R13 K9 ["Util"]
      106 GETTABLEKS                       R13 R13 K22 ["handleInvokeOnAddToExperience"]
      108 CALL                             R12 1 1
      109 GETIMPORT                        R13 K5 [require]
      111 GETTABLEKS                       R14 R0 K11 ["Src"]
      113 GETTABLEKS                       R14 R14 K23 ["Flags"]
      115 GETTABLEKS                       R14 R14 K24 ["getFFlagAmrUseAssetAccessController"]
      117 CALL                             R13 1 1
      118 GETIMPORT                        R14 K5 [require]
      120 GETTABLEKS                       R15 R0 K11 ["Src"]
      122 GETTABLEKS                       R15 R15 K23 ["Flags"]
      124 GETTABLEKS                       R15 R15 K25 ["getFFlagAmrInsertUsesInsertFramework"]
      126 CALL                             R14 1 1
      127 GETIMPORT                        R15 K5 [require]
      129 GETTABLEKS                       R16 R0 K11 ["Src"]
      131 GETTABLEKS                       R16 R16 K23 ["Flags"]
      133 GETTABLEKS                       R16 R16 K26 ["getFFlagAmrAddToExperience"]
      135 CALL                             R15 1 1
      136 DUPCLOSURE                       R16 K27 [PROTO_12]
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R9
      143 CAPTURE                          VAL R15
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R6
      146 CAPTURE                          VAL R8
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R5
      149 RETURN                           R16 1
