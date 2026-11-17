PROTO_0:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["PendingPlayTesters"]
        3 JUMPIF                           R1 ; [+2]
        4 NEWTABLE                         R1 0 0
        6 GETTABLEKS                       R2 R1 K1 ["NewPlayTesters"]
        8 JUMPIF                           R2 ; [+5]
        9 GETTABLEKS                       R2 R1 K2 ["CurrentPlayTesters"]
       11 JUMPIF                           R2 ; [+2]
       12 NEWTABLE                         R2 0 0
       14 LOADN                            R3 0
       15 GETIMPORT                        R4 K4 [pairs]
       17 MOVE                             R5 R2
       18 CALL                             R4 1 3
       19 FORGPREP_NEXT                    R4
       20 ADDK                             R3 R3 K5 [1]
       21 FORGLOOP                         R4 1 ; [-2]
       23 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
