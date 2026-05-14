PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ShareAccessToAssetsAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R3 K0 ["AssetAccessController"]
        1 NAMECALL                         R1 R0 K1 ["GetPluginComponent"]
        3 CALL                             R1 2 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R1
        6 DUPCLOSURE                       R3 K2 [PROTO_2]
        7 DUPTABLE                         R4 K4 [{"shareAccessToAssetsAsync"}]
        8 SETTABLEKS                       R2 R4 K3 ["shareAccessToAssetsAsync"]
       10 MOVE                             R5 R3
       11 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PropertiesPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Properties"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_3]
       15 RETURN                           R2 1
