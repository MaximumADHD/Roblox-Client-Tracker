PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 LOADK                            R4 K1 ["\n"]
        3 CONCAT                           R2 R3 R4
        4 GETIMPORT                        R3 K4 [string.rep]
        6 LOADK                            R4 K5 [".."]
        7 MOVE                             R5 R1
        8 CALL                             R3 2 1
        9 GETIMPORT                        R4 K7 [pairs]
       11 NAMECALL                         R5 R0 K8 ["GetChildren"]
       13 CALL                             R5 1 -1
       14 CALL                             R4 -1 3
       15 FORGPREP_NEXT                    R4
       16 MOVE                             R9 R2
       17 MOVE                             R10 R3
       18 LOADK                            R11 K5 [".."]
       19 GETUPVAL                         R12 0
       20 MOVE                             R13 R8
       21 ADDK                             R14 R1 K9 [1]
       22 CALL                             R12 2 1
       23 CONCAT                           R2 R9 R12
       24 FORGLOOP                         R4 2 ; [-9]
       26 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETIMPORT                        R1 K1 [print]
        3 GETUPVAL                         R2 0
        4 MOVE                             R3 R0
        5 LOADN                            R4 0
        6 CALL                             R2 2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0
        9 GETIMPORT                        R1 K1 [print]
       11 LOADK                            R2 K2 ["<nil>"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 DUPCLOSURE                       R1 K1 [PROTO_1]
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1
