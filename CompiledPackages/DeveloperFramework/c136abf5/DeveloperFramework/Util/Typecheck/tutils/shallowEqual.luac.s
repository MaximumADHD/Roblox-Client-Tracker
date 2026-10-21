PROTO_0:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+2]
        2 LOADB                            R3 0
        3 RETURN                           R3 1
        4 JUMPIFNOTEQ                      R0 R1 ; [+3]
        6 LOADB                            R3 1
        7 RETURN                           R3 1
        8 JUMPIF                           R2 ; [+2]
        9 NEWTABLE                         R2 0 0
       11 GETIMPORT                        R3 K1 [pairs]
       13 MOVE                             R4 R0
       14 CALL                             R3 1 3
       15 FORGPREP_NEXT                    R3
       16 GETTABLE                         R8 R1 R6
       17 JUMPIFEQ                         R8 R7 ; [+5]
       19 GETTABLE                         R8 R2 R6
       20 JUMPIF                           R8 ; [+2]
       21 LOADB                            R8 0
       22 RETURN                           R8 1
       23 FORGLOOP                         R3 2 ; [-8]
       25 GETIMPORT                        R3 K1 [pairs]
       27 MOVE                             R4 R1
       28 CALL                             R3 1 3
       29 FORGPREP_NEXT                    R3
       30 GETTABLE                         R8 R0 R6
       31 JUMPIFEQ                         R8 R7 ; [+5]
       33 GETTABLE                         R8 R2 R6
       34 JUMPIF                           R8 ; [+2]
       35 LOADB                            R8 0
       36 RETURN                           R8 1
       37 FORGLOOP                         R3 2 ; [-8]
       39 LOADB                            R3 1
       40 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
