PROTO_0:
        0 LOADK                            R3 K0 [0.75]
        1 LOADK                            R4 K1 [1.25]
        2 FASTCALL3                        MATH_CLAMP R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K4 [math.clamp]
        7 CALL                             R1 3 1
        8 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K3 ["clamp"]
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 SUBRK                            R3 K2 [1.25] R4
        6 DIVK                             R2 R3 K1 [0.5]
        7 MULK                             R1 R2 K0 [100]
        8 RETURN                           R1 1

PROTO_2:
        0 LOADN                            R6 0
        1 LOADN                            R7 100
        2 FASTCALL3                        MATH_CLAMP R0 R6 R7
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K5 [math.clamp]
        7 CALL                             R4 3 1
        8 DIVK                             R3 R4 K2 [100]
        9 MULK                             R2 R3 K1 [0.5]
       10 SUBRK                            R1 K0 [1.25] R2
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{[1] = 1, ["MAX_REACH"] = 1.25}]
        2 DUPCLOSURE                       R1 K5 [PROTO_0]
        3 SETTABLEKS                       R1 R0 K6 ["clamp"]
        5 DUPCLOSURE                       R1 K7 [PROTO_1]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K8 ["toPercent"]
        9 DUPCLOSURE                       R1 K9 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K10 ["fromPercent"]
       12 RETURN                           R0 1
