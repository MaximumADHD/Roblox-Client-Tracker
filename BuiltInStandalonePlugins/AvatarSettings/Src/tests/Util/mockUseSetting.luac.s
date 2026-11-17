PROTO_0:
        0 GETIMPORT                        R2 K1 [error]
        2 LOADK                            R3 K2 ["This function is a placeholder and should not be called."]
        3 CALL                             R2 1 0
        4 LOADNIL                          R2
        5 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R0 R2 K0 ["value"]
        3 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"value", "set"}]
        1 SETTABLEKS                       R0 R1 K0 ["value"]
        3 DUPCLOSURE                       R2 K3 [PROTO_0]
        4 SETTABLEKS                       R2 R1 K1 ["set"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R1
        8 SETTABLEKS                       R2 R1 K1 ["set"]
       10 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R2 K2 [{"enabled", "assetId"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K3 ["mockUseSetting"]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 1
        6 SETTABLEKS                       R3 R2 K0 ["enabled"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["mockUseSetting"]
       11 MOVE                             R4 R1
       12 CALL                             R3 1 1
       13 SETTABLEKS                       R3 R2 K1 ["assetId"]
       15 RETURN                           R2 1

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
       22 GETTABLEKS                       R3 R3 K9 ["ProviderTypes"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 2 0
       27 DUPCLOSURE                       R4 K10 [PROTO_2]
       28 SETTABLEKS                       R4 R3 K11 ["mockUseSetting"]
       30 DUPCLOSURE                       R4 K12 [PROTO_3]
       31 CAPTURE                          VAL R3
       32 SETTABLEKS                       R4 R3 K13 ["mockUseAssetIdSetting"]
       34 RETURN                           R3 1
