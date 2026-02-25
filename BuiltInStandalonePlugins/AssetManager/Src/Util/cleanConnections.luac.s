PROTO_0:
        0 LENGTH                           R3 R0
        1 LOADN                            R1 1
        2 LOADN                            R2 255
        3 FORNPREP                         R1
        4 GETTABLE                         R4 R0 R3
        5 GETTABLEKS                       R6 R4 K0 ["Disconnect"]
        7 FASTCALL2K                       ASSERT R6 K1 ; [+4]
        9 LOADK                            R7 K1 ["Connection is not valid, it does not have a Disconnect method"]
       10 GETIMPORT                        R5 K3 [assert]
       12 CALL                             R5 2 0
       13 NAMECALL                         R5 R4 K0 ["Disconnect"]
       15 CALL                             R5 1 0
       16 LOADNIL                          R5
       17 SETTABLE                         R5 R0 R3
       18 FORNLOOP                         R1
       19 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
