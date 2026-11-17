PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetUniverseInfoRequest"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 NAMECALL                         R1 R1 K1 ["makeRequest"]
        7 CALL                             R1 1 1
        8 DUPCLOSURE                       R3 K2 [PROTO_0]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K3 ["reject"]
       12 NAMECALL                         R1 R1 K4 ["andThen"]
       14 CALL                             R1 3 -1
       15 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Networking"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Networking"]
       18 GETTABLEKS                       R3 R3 K8 ["Shared"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K7 ["Types"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Networking"]
       30 GETTABLEKS                       R5 R5 K9 ["Urls"]
       32 CALL                             R4 1 1
       33 DUPCLOSURE                       R5 K10 [PROTO_1]
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R2
       36 RETURN                           R5 1
