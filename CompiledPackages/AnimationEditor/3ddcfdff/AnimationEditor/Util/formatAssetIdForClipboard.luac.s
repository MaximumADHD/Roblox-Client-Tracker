PROTO_0:
        0 LOADK                            R2 K0 ["rbxassetid://"]
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K2 [tostring]
        5 CALL                             R3 1 1
        6 CONCAT                           R1 R2 R3
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
