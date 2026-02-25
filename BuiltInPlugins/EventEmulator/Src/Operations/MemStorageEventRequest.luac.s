PROTO_0:
        0 JUMPIFNOT                        R0 ; [+2]
        1 LOADB                            R1 1
        2 RETURN                           R1 1
        3 GETIMPORT                        R1 K1 [warn]
        5 LOADK                            R2 K2 ["Operation Invalid: Must provide key"]
        6 CALL                             R1 1 0
        7 LOADB                            R1 0
        8 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+2]
        1 LOADB                            R1 1
        2 JUMP                             ; [+5]
        3 GETIMPORT                        R2 K1 [warn]
        5 LOADK                            R3 K2 ["Operation Invalid: Must provide key"]
        6 CALL                             R2 1 0
        7 LOADB                            R1 0
        8 JUMPIFNOT                        R1 ; [+6]
        9 GETUPVAL                         R1 0
       10 MOVE                             R3 R0
       11 NAMECALL                         R1 R1 K3 ["GetItem"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1
       15 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+2]
        1 LOADB                            R2 1
        2 JUMP                             ; [+5]
        3 GETIMPORT                        R3 K1 [warn]
        5 LOADK                            R4 K2 ["Operation Invalid: Must provide key"]
        6 CALL                             R3 1 0
        7 LOADB                            R2 0
        8 JUMPIFNOT                        R2 ; [+8]
        9 GETUPVAL                         R2 0
       10 MOVE                             R4 R0
       11 MOVE                             R5 R1
       12 NAMECALL                         R2 R2 K3 ["SetItem"]
       14 CALL                             R2 3 0
       15 LOADB                            R2 1
       16 RETURN                           R2 1
       17 LOADB                            R2 0
       18 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MemStorageService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 2 0
        9 DUPCLOSURE                       R2 K4 [PROTO_0]
       10 DUPCLOSURE                       R3 K5 [PROTO_1]
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R3 R1 K6 ["GetValue"]
       14 DUPCLOSURE                       R3 K7 [PROTO_2]
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R3 R1 K8 ["SetValue"]
       18 RETURN                           R1 1
