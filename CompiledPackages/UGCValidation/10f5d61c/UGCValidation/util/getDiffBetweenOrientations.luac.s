PROTO_0:
        0 NAMECALL                         R3 R1 K0 ["Inverse"]
        2 CALL                             R3 1 1
        3 MUL                              R2 R0 R3
        4 NAMECALL                         R2 R2 K1 ["ToAxisAngle"]
        6 CALL                             R2 1 2
        7 FASTCALL1                        MATH_DEG R3 ; [+3]
        8 MOVE                             R5 R3
        9 GETIMPORT                        R4 K4 [math.deg]
       11 CALL                             R4 1 1
       12 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
