PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K1 [pairs]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 GETTABLEKS                       R7 R6 K2 ["key"]
       10 GETTABLEKS                       R9 R0 K3 ["FilterPills"]
       12 GETTABLEKS                       R8 R9 K4 ["SelectedFilterPill"]
       14 JUMPIFNOTEQ                      R7 R8 ; [+2]
       16 RETURN                           R6 1
       17 FORGLOOP                         R2 2 ; [-10]
       19 GETTABLEN                        R2 R1 1
       20 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Selectors"]
       15 GETTABLEKS                       R2 R3 K7 ["GetFilterPills"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
