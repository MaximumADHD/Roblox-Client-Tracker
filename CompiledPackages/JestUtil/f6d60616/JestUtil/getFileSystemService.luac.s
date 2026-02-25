PROTO_0:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R0 R1 K2 ["__MOCK_FILE_SYSTEM__"]
        4 JUMPIF                           R0 ; [+6]
        5 GETIMPORT                        R0 K4 [game]
        7 LOADK                            R2 K5 ["FileSystemService"]
        8 NAMECALL                         R0 R0 K6 ["GetService"]
       10 CALL                             R0 2 1
       11 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CALL                             R0 1 2
        4 JUMPIF                           R0 ; [+8]
        5 GETIMPORT                        R2 K4 [error]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K5 ["new"]
       10 LOADK                            R4 K6 ["Attempting to save snapshots in an environment where FileSystemService is inaccessible."]
       11 CALL                             R3 1 -1
       12 CALL                             R2 -1 0
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Error"]
       14 DUPCLOSURE                       R4 K7 [PROTO_1]
       15 CAPTURE                          VAL R3
       16 RETURN                           R4 1
