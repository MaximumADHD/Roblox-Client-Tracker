PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 NEWTABLE                         R0 0 0
        4 NEWTABLE                         R2 0 0
        6 GETIMPORT                        R3 K1 [pairs]
        8 GETUPVAL                         R4 0
        9 CALL                             R3 1 3
       10 FORGPREP_NEXT                    R3
       11 MOVE                             R8 R7
       12 GETTABLE                         R9 R0 R6
       13 MOVE                             R10 R1
       14 CALL                             R8 2 1
       15 SETTABLE                         R8 R2 R6
       16 FORGLOOP                         R3 2 ; [-6]
       18 RETURN                           R2 1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["types"]
        9 GETTABLEKS                       R1 R1 K6 ["actions"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K5 ["types"]
       20 GETTABLEKS                       R2 R2 K7 ["reducers"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R3 K3 [script]
       27 GETTABLEKS                       R3 R3 K4 ["Parent"]
       29 GETTABLEKS                       R3 R3 K5 ["types"]
       31 GETTABLEKS                       R3 R3 K8 ["store"]
       33 CALL                             R2 1 1
       34 DUPCLOSURE                       R3 K9 [PROTO_1]
       35 RETURN                           R3 1
