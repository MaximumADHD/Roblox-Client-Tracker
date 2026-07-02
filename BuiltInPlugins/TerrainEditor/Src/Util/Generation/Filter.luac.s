PROTO_0:
        0 JUMPIFEQKN                       R2 K0 [0] ; [+10]
        2 SUB                              R5 R0 R1
        3 DIV                              R4 R5 R2
        4 LOADN                            R5 0
        5 LOADN                            R6 1
        6 FASTCALL                         MATH_CLAMP ; [+2]
        7 GETIMPORT                        R3 K3 [math.clamp]
        9 CALL                             R3 3 1
       10 RETURN                           R3 1
       11 JUMPIFNOTLE                      R0 R1 ; [+3]
       13 LOADN                            R3 0
       14 RETURN                           R3 1
       15 LOADN                            R3 1
       16 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R2 K0 [0.5]
        1 JUMPIFNOTLT                      R0 R2 ; [+3]
        3 MULK                             R1 R0 K1 [2]
        4 RETURN                           R1 1
        5 MULK                             R2 R0 K1 [2]
        6 SUBRK                            R1 K1 [2] R2
        7 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R2 K0 [0.5]
        1 JUMPIFNOTLT                      R0 R2 ; [+4]
        3 MULK                             R2 R0 K2 [2]
        4 SUBRK                            R1 K1 [1] R2
        5 RETURN                           R1 1
        6 MULK                             R2 R0 K2 [2]
        7 SUBK                             R1 R2 K1 [1]
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["Threshold"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["Ridge"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["RidgeFlipped"]
       12 RETURN                           R0 1
