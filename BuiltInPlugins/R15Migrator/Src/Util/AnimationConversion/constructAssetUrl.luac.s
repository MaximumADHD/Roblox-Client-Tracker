PROTO_0:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [tonumber]
        4 CALL                             R2 1 1
        5 FASTCALL1                        ASSERT R2 ; [+2]
        6 GETIMPORT                        R1 K3 [assert]
        8 CALL                             R1 1 0
        9 LOADK                            R2 K4 ["https://www.roblox.com/asset/?id="]
       10 MOVE                             R3 R0
       11 CONCAT                           R1 R2 R3
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
