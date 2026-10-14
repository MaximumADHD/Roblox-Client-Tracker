PROTO_0:
        0 NAMECALL                         R3 R0 K0 ["lower"]
        2 CALL                             R3 1 1
        3 NAMECALL                         R4 R1 K0 ["lower"]
        5 CALL                             R4 1 1
        6 JUMPIFLT                         R3 R4 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["List"]
        3 GETTABLEKS                       R1 R1 K1 ["sort"]
        5 MOVE                             R2 R0
        6 DUPCLOSURE                       R3 K2 [PROTO_0]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Cryo"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K8 [PROTO_1]
       15 CAPTURE                          VAL R2
       16 RETURN                           R3 1
