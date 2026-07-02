PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 GETTABLE                         R8 R1 R6
        8 GETTABLE                         R9 R0 R6
        9 JUMPIFEQ                         R8 R9 ; [+2]
       11 SETTABLE                         R7 R2 R6
       12 FORGLOOP                         R3 2 ; [-6]
       14 GETIMPORT                        R3 K1 [pairs]
       16 MOVE                             R4 R1
       17 CALL                             R3 1 3
       18 FORGPREP_NEXT                    R3
       19 GETTABLE                         R8 R1 R6
       20 GETTABLE                         R9 R0 R6
       21 JUMPIFEQ                         R8 R9 ; [+2]
       23 SETTABLE                         R7 R2 R6
       24 FORGLOOP                         R3 2 ; [-6]
       26 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
