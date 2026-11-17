PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K2 [string.gmatch]
        4 MOVE                             R3 R0
        5 LOADK                            R4 K3 ["[^\n]+"]
        6 CALL                             R2 2 3
        7 FORGPREP                         R2
        8 LENGTH                           R8 R1
        9 ADDK                             R7 R8 K4 [1]
       10 SETTABLE                         R5 R1 R7
       11 FORGLOOP                         R2 1 ; [-4]
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
