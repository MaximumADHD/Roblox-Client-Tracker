PROTO_0:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R7 R5 K0 ["Disconnect"]
        6 FASTCALL2K                       ASSERT R7 K1 ; [+4]
        8 LOADK                            R8 K1 ["Connection is not valid, it does not have a Disconnect method"]
        9 GETIMPORT                        R6 K3 [assert]
       11 CALL                             R6 2 0
       12 NAMECALL                         R6 R5 K0 ["Disconnect"]
       14 CALL                             R6 1 0
       15 FORGLOOP                         R1 2 ; [-12]
       17 GETIMPORT                        R1 K6 [table.clear]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
