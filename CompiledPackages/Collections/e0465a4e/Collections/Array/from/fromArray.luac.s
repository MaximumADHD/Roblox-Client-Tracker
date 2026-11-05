PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 JUMPIFNOT                        R1 ; [+26]
        3 LENGTH                           R4 R0
        4 GETIMPORT                        R5 K2 [table.create]
        6 MOVE                             R6 R4
        7 CALL                             R5 1 1
        8 MOVE                             R3 R5
        9 LOADN                            R7 1
       10 MOVE                             R5 R4
       11 LOADN                            R6 1
       12 FORNPREP                         R5
       13 JUMPIFEQKNIL                     R2 ; [+8]
       15 MOVE                             R8 R1
       16 MOVE                             R9 R2
       17 GETTABLE                         R10 R0 R7
       18 MOVE                             R11 R7
       19 CALL                             R8 3 1
       20 SETTABLE                         R8 R3 R7
       21 JUMP                             ; [+5]
       22 MOVE                             R8 R1
       23 GETTABLE                         R9 R0 R7
       24 MOVE                             R10 R7
       25 CALL                             R8 2 1
       26 SETTABLE                         R8 R3 R7
       27 FORNLOOP                         R5
       28 RETURN                           R3 1
       29 GETIMPORT                        R4 K4 [table.clone]
       31 MOVE                             R5 R0
       32 CALL                             R4 1 1
       33 MOVE                             R3 R4
       34 RETURN                           R3 1

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
