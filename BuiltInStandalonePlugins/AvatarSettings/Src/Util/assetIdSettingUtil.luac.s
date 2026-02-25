PROTO_0:
        0 DUPTABLE                         R2 K2 [{"plugin", "assetIdSettingInvokeKeys"}]
        1 SETTABLEKS                       R0 R2 K0 ["plugin"]
        3 SETTABLEKS                       R1 R2 K1 ["assetIdSettingInvokeKeys"]
        5 RETURN                           R2 1

PROTO_1:
        0 JUMPIF                           R2 ; [+2]
        1 LOADNIL                          R3
        2 JUMP                             ; [+10]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K0 ["createInvokeArgs"]
        6 GETTABLEKS                       R4 R2 K1 ["plugin"]
        8 GETTABLEKS                       R6 R2 K2 ["assetIdSettingInvokeKeys"]
       10 GETTABLEKS                       R5 R6 K3 ["enabled"]
       12 CALL                             R3 2 1
       13 JUMPIF                           R2 ; [+2]
       14 LOADNIL                          R4
       15 JUMP                             ; [+10]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K0 ["createInvokeArgs"]
       19 GETTABLEKS                       R5 R2 K1 ["plugin"]
       21 GETTABLEKS                       R7 R2 K2 ["assetIdSettingInvokeKeys"]
       23 GETTABLEKS                       R6 R7 K4 ["assetId"]
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
        4 GETTABLEKS                       R9 R6 K0 ["assetIdSetting"]
        6 GETTABLEKS                       R8 R9 K1 ["enabled"]
        8 GETTABLEKS                       R7 R8 K2 ["set"]
       10 MOVE                             R8 R0
       11 CALL                             R7 1 0
       12 FORGLOOP                         R2 2 ; [-9]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K1 ["enabled"]
       17 GETTABLEKS                       R2 R3 K2 ["set"]
       19 MOVE                             R3 R0
       20 MOVE                             R4 R1
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["assetId"]
        3 GETTABLEKS                       R3 R4 K1 ["value"]
        5 JUMPIFEQ                         R3 R0 ; [+9]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["assetId"]
       10 GETTABLEKS                       R3 R4 K2 ["set"]
       12 MOVE                             R4 R0
       13 MOVE                             R5 R1
       14 CALL                             R3 2 0
       15 GETUPVAL                         R3 1
       16 LOADNIL                          R4
       17 LOADNIL                          R5
       18 FORGPREP                         R3
       19 GETUPVAL                         R9 2
       20 GETTABLEKS                       R8 R9 K3 ["INVALID_ASSETID"]
       22 JUMPIFEQ                         R0 R8 ; [+16]
       24 GETTABLEKS                       R9 R7 K4 ["assetType"]
       26 GETTABLEKS                       R8 R9 K5 ["Value"]
       28 JUMPIFNOTEQ                      R8 R2 ; [+10]
       30 GETTABLEKS                       R10 R7 K6 ["assetIdSetting"]
       32 GETTABLEKS                       R9 R10 K0 ["assetId"]
       34 GETTABLEKS                       R8 R9 K2 ["set"]
       36 MOVE                             R9 R0
       37 CALL                             R8 1 0
       38 JUMP                             ; [+10]
       39 GETTABLEKS                       R10 R7 K6 ["assetIdSetting"]
       41 GETTABLEKS                       R9 R10 K0 ["assetId"]
       43 GETTABLEKS                       R8 R9 K2 ["set"]
       45 GETUPVAL                         R10 2
       46 GETTABLEKS                       R9 R10 K3 ["INVALID_ASSETID"]
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
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["assetId"]
        3 GETTABLEKS                       R3 R4 K1 ["set"]
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 CALL                             R3 2 0
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K0 ["assetId"]
       11 GETTABLEKS                       R3 R4 K1 ["set"]
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 GETUPVAL                         R6 2
       16 CALL                             R3 3 0
       17 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R4 K2 [{"enabled", "assetId"}]
        1 DUPTABLE                         R5 K5 [{"value", "set"}]
        2 GETTABLEKS                       R7 R0 K0 ["enabled"]
        4 GETTABLEKS                       R6 R7 K3 ["value"]
        6 SETTABLEKS                       R6 R5 K3 ["value"]
        8 SETTABLEKS                       R3 R5 K4 ["set"]
       10 SETTABLEKS                       R5 R4 K0 ["enabled"]
       12 DUPTABLE                         R5 K5 [{"value", "set"}]
       13 GETTABLEKS                       R7 R0 K1 ["assetId"]
       15 GETTABLEKS                       R6 R7 K3 ["value"]
       17 SETTABLEKS                       R6 R5 K3 ["value"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R6 R5 K4 ["set"]
       25 SETTABLEKS                       R5 R4 K1 ["assetId"]
       27 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["AvatarSettingsProviderTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Util"]
       22 GETTABLEKS                       R3 R4 K9 ["Constants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K7 ["Util"]
       31 GETTABLEKS                       R4 R5 K10 ["InvokeKeys"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Src"]
       38 GETTABLEKS                       R6 R7 K7 ["Util"]
       40 GETTABLEKS                       R5 R6 K11 ["settingUtil"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R4 K12 ["useSetting"]
       45 NEWTABLE                         R6 4 0
       47 DUPCLOSURE                       R7 K13 [PROTO_0]
       48 SETTABLEKS                       R7 R6 K14 ["createAssetIdSettingInvokeArgs"]
       50 DUPCLOSURE                       R7 K15 [PROTO_1]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 SETTABLEKS                       R7 R6 K16 ["useAssetIdSetting"]
       55 DUPCLOSURE                       R7 K17 [PROTO_4]
       56 CAPTURE                          VAL R2
       57 SETTABLEKS                       R7 R6 K18 ["generateCategoryAssetIdSetting"]
       59 DUPCLOSURE                       R7 K19 [PROTO_6]
       60 SETTABLEKS                       R7 R6 K20 ["generateCategoryChildAssetIdSetter"]
       62 RETURN                           R6 1
