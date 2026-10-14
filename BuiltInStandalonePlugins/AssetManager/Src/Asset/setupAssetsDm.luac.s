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
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 CALL                             R2 4 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 SETUPVAL                         R1 2
        6 GETTABLEKS                       R4 R0 K1 ["Ids"]
        8 GETTABLEKS                       R5 R0 K2 ["Types"]
       10 GETTABLEKS                       R6 R0 K3 ["Names"]
       12 GETTABLEKS                       R7 R0 K4 ["IsPackage"]
       14 GETTABLEKS                       R8 R0 K5 ["Creators"]
       16 NAMECALL                         R2 R1 K6 ["start"]
       18 CALL                             R2 6 0
       19 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETIMPORT                        R1 K1 [pcall]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+18]
       10 GETIMPORT                        R2 K3 [warn]
       12 LOADK                            R3 K4 ["Failed to open place"]
       13 CALL                             R2 1 0
       14 RETURN                           R0 0
       15 GETIMPORT                        R1 K1 [pcall]
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K5 ["OpenPlace"]
       20 GETUPVAL                         R3 2
       21 MOVE                             R4 R0
       22 CALL                             R1 3 2
       23 JUMPIF                           R1 ; [+4]
       24 GETIMPORT                        R3 K3 [warn]
       26 LOADK                            R4 K4 ["Failed to open place"]
       27 CALL                             R3 1 0
       28 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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
       69 GETUPVAL                         R3 8
       70 CALL                             R3 0 1
       71 JUMPIFNOT                        R3 ; [+9]
       72 LOADK                            R5 K17 ["OnPublishItems"]
       73 NEWCLOSURE                       R6 P4
       74 CAPTURE                          UPVAL U9
       75 CAPTURE                          VAL R0
       76 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       78 CALL                             R3 3 1
       79 SETTABLEKS                       R3 R2 K18 ["OnPublishItemsConnection"]
       81 LOADNIL                          R3
       82 LOADK                            R6 K19 ["StartDragInsertManager"]
       83 NEWCLOSURE                       R7 P5
       84 CAPTURE                          UPVAL U10
       85 CAPTURE                          VAL R0
       86 CAPTURE                          REF R3
       87 NAMECALL                         R4 R0 K11 ["OnInvoke"]
       89 CALL                             R4 3 1
       90 SETTABLEKS                       R4 R2 K20 ["DragManagerStartConnection"]
       92 LOADK                            R6 K21 ["StopDragInsertManager"]
       93 NEWCLOSURE                       R7 P6
       94 CAPTURE                          REF R3
       95 CAPTURE                          VAL R0
       96 NAMECALL                         R4 R0 K11 ["OnInvoke"]
       98 CALL                             R4 3 1
       99 SETTABLEKS                       R4 R2 K22 ["DragManagerStopConnection"]
      101 LOADK                            R6 K23 ["OnInsertItems"]
      102 GETUPVAL                         R7 11
      103 NAMECALL                         R4 R0 K11 ["OnInvoke"]
      105 CALL                             R4 3 1
      106 SETTABLEKS                       R4 R2 K24 ["OnInsertItemsConnection"]
      108 LOADK                            R6 K25 ["OnSelectItems"]
      109 NEWCLOSURE                       R7 P7
      110 CAPTURE                          UPVAL U12
      111 CAPTURE                          VAL R0
      112 NAMECALL                         R4 R0 K11 ["OnInvoke"]
      114 CALL                             R4 3 1
      115 SETTABLEKS                       R4 R2 K26 ["OnSelectItemsConnection"]
      117 LOADK                            R6 K27 ["OnOpenPlace"]
      118 NEWCLOSURE                       R7 P8
      119 CAPTURE                          UPVAL U13
      120 CAPTURE                          VAL R0
      121 CAPTURE                          UPVAL U14
      122 NAMECALL                         R4 R0 K11 ["OnInvoke"]
      124 CALL                             R4 3 1
      125 SETTABLEKS                       R4 R2 K28 ["OnOpenPlaceConnection"]
      127 GETUPVAL                         R4 13
      128 CALL                             R4 0 1
      129 JUMPIF                           R4 ; [+27]
      130 LOADK                            R6 K29 ["OnAddPlace"]
      131 NEWCLOSURE                       R7 P9
      132 CAPTURE                          UPVAL U14
      133 CAPTURE                          VAL R0
      134 NAMECALL                         R4 R0 K11 ["OnInvoke"]
      136 CALL                             R4 3 1
      137 SETTABLEKS                       R4 R2 K30 ["OnAddPlaceConnection"]
      139 LOADK                            R6 K31 ["OnRemovePlace"]
      140 NEWCLOSURE                       R7 P10
      141 CAPTURE                          UPVAL U14
      142 CAPTURE                          VAL R0
      143 NAMECALL                         R4 R0 K11 ["OnInvoke"]
      145 CALL                             R4 3 1
      146 SETTABLEKS                       R4 R2 K32 ["OnRemovePlaceConnection"]
      148 LOADK                            R6 K33 ["OnRenamePlace"]
      149 NEWCLOSURE                       R7 P11
      150 CAPTURE                          UPVAL U14
      151 CAPTURE                          VAL R0
      152 NAMECALL                         R4 R0 K11 ["OnInvoke"]
      154 CALL                             R4 3 1
      155 SETTABLEKS                       R4 R2 K34 ["OnRenamePlaceConnection"]
      157 LOADK                            R6 K35 ["ImportAssetVersion"]
      158 NEWCLOSURE                       R7 P12
      159 CAPTURE                          VAL R1
      160 CAPTURE                          UPVAL U1
      161 NAMECALL                         R4 R0 K11 ["OnInvoke"]
      163 CALL                             R4 3 1
      164 SETTABLEKS                       R4 R2 K36 ["OnImportAssetVersionConnection"]
      166 CLOSEUPVALS                      R3
      167 RETURN                           R2 1

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
      113 GETTABLEKS                       R14 R14 K15 ["Asset"]
      115 GETTABLEKS                       R14 R14 K9 ["Util"]
      117 GETTABLEKS                       R14 R14 K23 ["handleInvokeOnPublishItems"]
      119 CALL                             R13 1 1
      120 GETIMPORT                        R14 K5 [require]
      122 GETTABLEKS                       R15 R0 K11 ["Src"]
      124 GETTABLEKS                       R15 R15 K24 ["Flags"]
      126 GETTABLEKS                       R15 R15 K25 ["getFFlagAmrUseAssetAccessController"]
      128 CALL                             R14 1 1
      129 GETIMPORT                        R15 K5 [require]
      131 GETTABLEKS                       R16 R0 K11 ["Src"]
      133 GETTABLEKS                       R16 R16 K24 ["Flags"]
      135 GETTABLEKS                       R16 R16 K26 ["getFFlagAmrInsertUsesInsertFramework"]
      137 CALL                             R15 1 1
      138 GETIMPORT                        R16 K5 [require]
      140 GETTABLEKS                       R17 R0 K11 ["Src"]
      142 GETTABLEKS                       R17 R17 K24 ["Flags"]
      144 GETTABLEKS                       R17 R17 K27 ["getFFlagAmrAddToExperience"]
      146 CALL                             R16 1 1
      147 GETIMPORT                        R17 K5 [require]
      149 GETTABLEKS                       R18 R0 K11 ["Src"]
      151 GETTABLEKS                       R18 R18 K24 ["Flags"]
      153 GETTABLEKS                       R18 R18 K28 ["getFFlagAmrEnablePublishOption"]
      155 CALL                             R17 1 1
      156 GETIMPORT                        R18 K5 [require]
      158 GETTABLEKS                       R19 R0 K11 ["Src"]
      160 GETTABLEKS                       R19 R19 K24 ["Flags"]
      162 GETTABLEKS                       R19 R19 K29 ["getFFlagAmrRemoveAssetManagerServiceDependency"]
      164 CALL                             R18 1 1
      165 DUPCLOSURE                       R19 K30 [PROTO_14]
      166 CAPTURE                          VAL R3
      167 CAPTURE                          VAL R2
      168 CAPTURE                          VAL R15
      169 CAPTURE                          VAL R10
      170 CAPTURE                          VAL R14
      171 CAPTURE                          VAL R9
      172 CAPTURE                          VAL R16
      173 CAPTURE                          VAL R12
      174 CAPTURE                          VAL R17
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R6
      177 CAPTURE                          VAL R8
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R18
      180 CAPTURE                          VAL R5
      181 RETURN                           R19 1
