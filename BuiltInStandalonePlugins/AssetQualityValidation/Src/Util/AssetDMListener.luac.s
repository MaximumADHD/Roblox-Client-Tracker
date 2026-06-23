PROTO_0:
        0 DUPTABLE                         R0 K3 [{"currentData", "providerFunction", "setStateAndRefreshConnection"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["currentData"]
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K1 ["providerFunction"]
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K2 ["setStateAndRefreshConnection"]
       11 GETUPVAL                         R3 0
       12 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       14 MOVE                             R2 R0
       15 GETIMPORT                        R1 K5 [setmetatable]
       17 CALL                             R1 2 0
       18 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["currentData"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 GETTABLEKS                       R3 R0 K2 ["currentData"]
        7 MOVE                             R4 R1
        8 CALL                             R2 2 1
        9 SETTABLEKS                       R2 R0 K2 ["currentData"]
       11 GETTABLEKS                       R2 R0 K3 ["providerFunction"]
       13 JUMPIFNOT                        R2 ; [+5]
       14 GETTABLEKS                       R2 R0 K3 ["providerFunction"]
       16 GETTABLEKS                       R3 R0 K2 ["currentData"]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["refreshState"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R4 K0 ["SetStateAndRefresh"]
        1 NEWCLOSURE                       R5 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R2 R1 K1 ["OnInvoke"]
        5 CALL                             R2 3 1
        6 SETTABLEKS                       R2 R0 K2 ["setStateAndRefreshConnection"]
        8 GETTABLEKS                       R2 R0 K2 ["setStateAndRefreshConnection"]
       10 JUMPIFNOT                        R2 ; [+5]
       11 GETTABLEKS                       R2 R0 K2 ["setStateAndRefreshConnection"]
       13 LOADK                            R3 K3 ["setStateAndRefresh"]
       14 SETTABLEKS                       R3 R2 K4 ["Name"]
       16 RETURN                           R0 0

PROTO_5:
        0 SETTABLEKS                       R1 R0 K0 ["providerFunction"]
        2 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["setStateAndRefreshConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["setStateAndRefreshConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["setStateAndRefreshConnection"]
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetQualityValidation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 8 0
       16 SETTABLEKS                       R2 R2 K8 ["__index"]
       18 DUPCLOSURE                       R3 K9 [PROTO_0]
       19 CAPTURE                          VAL R2
       20 SETTABLEKS                       R3 R2 K10 ["new"]
       22 DUPCLOSURE                       R3 K11 [PROTO_1]
       23 SETTABLEKS                       R3 R2 K12 ["getCurrentState"]
       25 DUPCLOSURE                       R3 K13 [PROTO_2]
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R3 R2 K14 ["refreshState"]
       29 DUPCLOSURE                       R3 K15 [PROTO_4]
       30 SETTABLEKS                       R3 R2 K16 ["connect"]
       32 DUPCLOSURE                       R3 K17 [PROTO_5]
       33 SETTABLEKS                       R3 R2 K18 ["setProviderFunction"]
       35 DUPCLOSURE                       R3 K19 [PROTO_6]
       36 SETTABLEKS                       R3 R2 K20 ["disconnect"]
       38 RETURN                           R2 1
