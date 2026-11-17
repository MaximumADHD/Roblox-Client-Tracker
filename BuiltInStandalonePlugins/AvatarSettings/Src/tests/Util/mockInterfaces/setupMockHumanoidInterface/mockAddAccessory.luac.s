PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Parent"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Humanoid must be a child of a Model"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 SETTABLEKS                       R2 R1 K0 ["Parent"]
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
