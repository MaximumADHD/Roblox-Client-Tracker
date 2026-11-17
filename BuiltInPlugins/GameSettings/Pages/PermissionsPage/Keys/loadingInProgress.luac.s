PROTO_0:
        0 LOADK                            R0 K0 ["Symbol(LoadingInProgress)"]
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [newproxy]
        3 LOADB                            R1 1
        4 CALL                             R0 1 1
        5 FASTCALL1                        GETMETATABLE R0 ; [+3]
        6 MOVE                             R2 R0
        7 GETIMPORT                        R1 K3 [getmetatable]
        9 CALL                             R1 1 1
       10 DUPCLOSURE                       R2 K4 [PROTO_0]
       11 SETTABLEKS                       R2 R1 K5 ["__tostring"]
       13 RETURN                           R0 1
