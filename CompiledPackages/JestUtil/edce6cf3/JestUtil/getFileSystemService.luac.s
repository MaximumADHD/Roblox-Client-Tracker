PROTO_0:
        0 GETIMPORT                        R0 K1 [_G]
        2 GETTABLEKS                       R0 R0 K2 ["__MOCK_FILE_SYSTEM__"]
        4 JUMPIF                           R0 ; [+3]
        5 GETUPVAL                         R0 0
        6 LOADK                            R1 K3 ["FileSystemService"]
        7 CALL                             R0 1 1
        8 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIF                           R0 ; [+8]
        6 GETIMPORT                        R2 K4 [error]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K5 ["new"]
       11 LOADK                            R4 K6 ["Attempting to save snapshots in an environment where FileSystemService is inaccessible."]
       12 CALL                             R3 1 -1
       13 CALL                             R2 -1 0
       14 RETURN                           R1 1

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
