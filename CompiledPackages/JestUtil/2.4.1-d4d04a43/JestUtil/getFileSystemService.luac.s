PROTO_0:
        0 GETIMPORT                        R0 K1 [_G]
        2 GETTABLEKS                       R0 R0 K2 ["__MOCK_FILE_SYSTEM__"]
        4 JUMPIF                           R0 ; [+6]
        5 GETIMPORT                        R0 K4 [game]
        7 LOADK                            R2 K5 ["FileSystemService"]
        8 NAMECALL                         R0 R0 K6 ["GetService"]
       10 CALL                             R0 2 1
       11 RETURN                           R0 1

PROTO_1:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 FASTPCALL                        pcall 1 ; [+2]
        2 GETIMPORT                        R0 K2 [pcall]
        4 CALL                             R0 1 2
        5 JUMPIF                           R0 ; [+8]
        6 GETIMPORT                        R2 K4 [error]
        8 GETUPVAL                         R3 0
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
       14 DUPCLOSURE                       R4 K7 [PROTO_1]
       15 CAPTURE                          VAL R3
       16 RETURN                           R4 1
