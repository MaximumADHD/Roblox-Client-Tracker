PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 JUMPIFNOT                        R1 ; [+23]
        3 NEWTABLE                         R3 0 0
        5 MOVE                             R4 R0
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 JUMPIFEQKNIL                     R2 ; [+8]
       11 MOVE                             R9 R1
       12 MOVE                             R10 R2
       13 MOVE                             R11 R8
       14 MOVE                             R12 R7
       15 CALL                             R9 3 1
       16 SETTABLE                         R9 R3 R7
       17 JUMP                             ; [+5]
       18 MOVE                             R9 R1
       19 MOVE                             R10 R8
       20 MOVE                             R11 R7
       21 CALL                             R9 2 1
       22 SETTABLE                         R9 R3 R7
       23 FORGLOOP                         R4 2 ; [-15]
       25 RETURN                           R3 1
       26 NEWTABLE                         R3 0 0
       28 MOVE                             R4 R0
       29 LOADNIL                          R5
       30 LOADNIL                          R6
       31 FORGPREP                         R4
       32 SETTABLE                         R8 R3 R7
       33 FORGLOOP                         R4 2 ; [-2]
       35 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["ES7Types"]
       15 CALL                             R2 1 1
       16 DUPCLOSURE                       R3 K6 [PROTO_0]
       17 RETURN                           R3 1
