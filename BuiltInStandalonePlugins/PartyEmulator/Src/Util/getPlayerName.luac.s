PROTO_0:
        0 FASTCALL1                        MATH_ABS R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K2 [math.abs]
        4 CALL                             R1 1 1
        5 LOADK                            R3 K3 ["Player%*"]
        6 MOVE                             R5 R1
        7 NAMECALL                         R3 R3 K4 ["format"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
