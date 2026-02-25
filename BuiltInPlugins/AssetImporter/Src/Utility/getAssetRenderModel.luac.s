PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+6]
        2 GETIMPORT                        R1 K2 [Instance.new]
        4 LOADK                            R2 K3 ["Model"]
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
        7 LOADK                            R3 K3 ["Model"]
        8 NAMECALL                         R1 R0 K4 ["IsA"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+1]
       12 RETURN                           R0 1
       13 GETIMPORT                        R1 K2 [Instance.new]
       15 LOADK                            R2 K3 ["Model"]
       16 CALL                             R1 1 1
       17 SETTABLEKS                       R1 R0 K5 ["Parent"]
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
