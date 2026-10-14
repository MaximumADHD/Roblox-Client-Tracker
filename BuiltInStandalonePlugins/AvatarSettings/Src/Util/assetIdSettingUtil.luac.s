PROTO_0:
        0 DUPTABLE                         R2 K2 [{"plugin", "assetIdSettingInvokeKeys"}]
        1 SETTABLEKS                       R0 R2 K0 ["plugin"]
        3 SETTABLEKS                       R1 R2 K1 ["assetIdSettingInvokeKeys"]
        5 RETURN                           R2 1

PROTO_1:
        0 JUMPIF                           R2 ; [+2]
        1 LOADNIL                          R3
        2 JUMP                             ; [+10]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["createInvokeArgs"]
        6 GETTABLEKS                       R4 R2 K1 ["plugin"]
        8 GETTABLEKS                       R5 R2 K2 ["assetIdSettingInvokeKeys"]
       10 GETTABLEKS                       R5 R5 K3 ["enabled"]
       12 CALL                             R3 2 1
       13 JUMPIF                           R2 ; [+2]
       14 LOADNIL                          R4
       15 JUMP                             ; [+10]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["createInvokeArgs"]
       19 GETTABLEKS                       R5 R2 K1 ["plugin"]
       21 GETTABLEKS                       R6 R2 K2 ["assetIdSettingInvokeKeys"]
       23 GETTABLEKS                       R6 R6 K4 ["assetId"]
       25 CALL                             R4 2 1
       26 DUPTABLE                         R5 K5 [{"enabled", "assetId"}]
       27 GETUPVAL                         R6 1
       28 MOVE                             R7 R0
       29 MOVE                             R8 R3
       30 CALL                             R6 2 1
       31 SETTABLEKS                       R6 R5 K3 ["enabled"]
       33 GETUPVAL                         R6 1
       34 MOVE                             R7 R1
       35 MOVE                             R8 R4
       36 CALL                             R6 2 1
       37 SETTABLEKS                       R6 R5 K4 ["assetId"]
       39 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R6 K0 ["assetIdSetting"]
        6 GETTABLEKS                       R7 R7 K1 ["enabled"]
        8 GETTABLEKS                       R7 R7 K2 ["set"]
       10 MOVE                             R8 R0
       11 CALL                             R7 1 0
       12 FORGLOOP                         R2 2 ; [-9]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K1 ["enabled"]
       17 GETTABLEKS                       R2 R2 K2 ["set"]
       19 MOVE                             R3 R0
       20 MOVE                             R4 R1
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["assetId"]
        3 GETTABLEKS                       R3 R3 K1 ["value"]
        5 JUMPIFEQ                         R3 R0 ; [+9]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["assetId"]
       10 GETTABLEKS                       R3 R3 K2 ["set"]
       12 MOVE                             R4 R0
       13 MOVE                             R5 R1
       14 CALL                             R3 2 0
       15 GETUPVAL                         R3 1
       16 LOADNIL                          R4
       17 LOADNIL                          R5
       18 FORGPREP                         R3
       19 GETUPVAL                         R8 2
       20 GETTABLEKS                       R8 R8 K3 ["INVALID_ASSETID"]
       22 JUMPIFEQ                         R0 R8 ; [+16]
       24 GETTABLEKS                       R8 R7 K4 ["assetType"]
       26 GETTABLEKS                       R8 R8 K5 ["Value"]
       28 JUMPIFNOTEQ                      R8 R2 ; [+10]
       30 GETTABLEKS                       R8 R7 K6 ["assetIdSetting"]
       32 GETTABLEKS                       R8 R8 K0 ["assetId"]
       34 GETTABLEKS                       R8 R8 K2 ["set"]
       36 MOVE                             R9 R0
       37 CALL                             R8 1 0
       38 JUMP                             ; [+10]
       39 GETTABLEKS                       R8 R7 K6 ["assetIdSetting"]
       41 GETTABLEKS                       R8 R8 K0 ["assetId"]
       43 GETTABLEKS                       R8 R8 K2 ["set"]
       45 GETUPVAL                         R9 2
       46 GETTABLEKS                       R9 R9 K3 ["INVALID_ASSETID"]
       48 CALL                             R8 1 0
       49 FORGLOOP                         R3 2 ; [-31]
       51 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 NEWCLOSURE                       R3 P1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U0
        7 RETURN                           R2 2

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["assetId"]
        3 GETTABLEKS                       R3 R3 K1 ["set"]
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 CALL                             R3 2 0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K0 ["assetId"]
       11 GETTABLEKS                       R3 R3 K1 ["set"]
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 GETUPVAL                         R6 2
       16 CALL                             R3 3 0
       17 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R4 K2 [{"enabled", "assetId"}]
        1 DUPTABLE                         R5 K5 [{"value", "set"}]
        2 GETTABLEKS                       R6 R0 K0 ["enabled"]
        4 GETTABLEKS                       R6 R6 K3 ["value"]
        6 SETTABLEKS                       R6 R5 K3 ["value"]
        8 SETTABLEKS                       R3 R5 K4 ["set"]
       10 SETTABLEKS                       R5 R4 K0 ["enabled"]
       12 DUPTABLE                         R5 K5 [{"value", "set"}]
       13 GETTABLEKS                       R6 R0 K1 ["assetId"]
       15 GETTABLEKS                       R6 R6 K3 ["value"]
       17 SETTABLEKS                       R6 R5 K3 ["value"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R6 R5 K4 ["set"]
       25 SETTABLEKS                       R5 R4 K1 ["assetId"]
       27 GETUPVAL                         R5 0
       28 CALL                             R5 0 1
       29 JUMPIFNOT                        R5 ; [+6]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K6 ["addSnapshotSetter"]
       33 MOVE                             R6 R4
       34 MOVE                             R7 R0
       35 CALL                             R5 2 0
       36 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["assetId"]
        3 GETTABLEKS                       R2 R2 K1 ["set"]
        5 MOVE                             R3 R0
        6 LOADB                            R4 1
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["enabled"]
       11 GETTABLEKS                       R2 R2 K1 ["set"]
       13 MOVE                             R3 R1
       14 LOADB                            R4 1
       15 CALL                             R2 2 0
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K0 ["assetId"]
       19 SETTABLEKS                       R0 R2 K3 ["value"]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K2 ["enabled"]
       24 SETTABLEKS                       R1 R2 K3 ["value"]
       26 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 SETTABLEKS                       R2 R0 K0 ["syncFromAssetDm"]
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarSettingsProviderTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["Constants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Flags"]
       31 GETTABLEKS                       R4 R4 K11 ["getFFlagAvatarSettingsSyncPublishedSnapshot"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K7 ["Util"]
       40 GETTABLEKS                       R5 R5 K12 ["InvokeKeys"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K7 ["Util"]
       49 GETTABLEKS                       R6 R6 K13 ["settingUtil"]
       51 CALL                             R5 1 1
       52 GETTABLEKS                       R6 R5 K14 ["useSetting"]
       54 NEWTABLE                         R7 8 0
       56 DUPCLOSURE                       R8 K15 [PROTO_0]
       57 SETTABLEKS                       R8 R7 K16 ["createAssetIdSettingInvokeArgs"]
       59 DUPCLOSURE                       R8 K17 [PROTO_1]
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R6
       62 SETTABLEKS                       R8 R7 K18 ["useAssetIdSetting"]
       64 DUPCLOSURE                       R8 K19 [PROTO_4]
       65 CAPTURE                          VAL R2
       66 SETTABLEKS                       R8 R7 K20 ["generateCategoryAssetIdSetting"]
       68 DUPCLOSURE                       R8 K21 [PROTO_6]
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R7
       71 SETTABLEKS                       R8 R7 K22 ["generateCategoryChildAssetIdSetter"]
       73 DUPCLOSURE                       R8 K23 [PROTO_8]
       74 SETTABLEKS                       R8 R7 K24 ["addSnapshotSetter"]
       76 RETURN                           R7 1
