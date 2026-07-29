PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["children"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K1 ["type"]
        7 JUMPIFNOTEQKS                    R7 K2 ["Template"] ; [+6]
        9 GETTABLEKS                       R7 R6 K3 ["name"]
       11 JUMPIFNOTEQ                      R7 R1 ; [+2]
       13 RETURN                           R6 1
       14 FORGLOOP                         R2 2 ; [-10]
       16 LOADNIL                          R2
       17 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["types"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K6 [PROTO_0]
       13 RETURN                           R2 1
