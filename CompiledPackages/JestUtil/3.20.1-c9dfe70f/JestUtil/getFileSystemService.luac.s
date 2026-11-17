PROTO_0:
        0 GETIMPORT                        R0 K1 [_G]
        2 GETTABLEKS                       R0 R0 K2 ["__MOCK_FILE_SYSTEM__"]
        4 JUMPIF                           R0 ; [+3]
        5 GETUPVAL                         R0 0
        6 LOADK                            R1 K3 ["FileSystemService"]
        7 CALL                             R0 1 1
        8 RETURN                           R0 1

PROTO_1:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R0 K2 [pcall]
        5 CALL                             R0 1 2
        6 JUMPIF                           R0 ; [+8]
        7 GETIMPORT                        R2 K4 [error]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K5 ["new"]
       12 LOADK                            R4 K6 ["Attempting to save snapshots in an environment where FileSystemService is inaccessible."]
       13 CALL                             R3 1 -1
       14 CALL                             R2 -1 0
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Error"]
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R1 K7 ["RobloxShared"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R5 R4 K8 ["getDataModelService"]
       21 DUPCLOSURE                       R6 K9 [PROTO_1]
       22 CAPTURE                          VAL R5
       23 CAPTURE                          VAL R3
       24 RETURN                           R6 1
