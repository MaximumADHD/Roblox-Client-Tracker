PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["ShouldImport"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADN                            R1 1
        4 JUMP                             ; [+1]
        5 LOADN                            R1 0
        6 GETIMPORT                        R2 K2 [pairs]
        8 NAMECALL                         R3 R0 K3 ["GetDescendants"]
       10 CALL                             R3 1 -1
       11 CALL                             R2 -1 3
       12 FORGPREP_NEXT                    R2
       13 GETTABLEKS                       R7 R6 K0 ["ShouldImport"]
       15 JUMPIFNOT                        R7 ; [+1]
       16 ADDK                             R1 R1 K4 [1]
       17 FORGLOOP                         R2 2 ; [-5]
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
