PROTO_0:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 LOADK                            R3 K2 ["function"]
        8 LOADK                            R4 K3 ["Attempted to call Dash.forEachArgs with argument #1 of type {left:?} not {right:?}"]
        9 CALL                             R1 3 0
       10 LOADN                            R3 1
       11 LOADK                            R5 K4 ["#"]
       12 FASTCALL1                        SELECT_VARARG R5 ; [+3]
       13 GETIMPORT                        R4 K6 [select]
       15 GETVARARGS                       R6 -1
       16 CALL                             R4 -1 1
       17 MOVE                             R1 R4
       18 LOADN                            R2 1
       19 FORNPREP                         R1
       20 MOVE                             R4 R0
       21 FASTCALL1                        SELECT_VARARG R3 ; [+4]
       22 GETIMPORT                        R5 K6 [select]
       24 MOVE                             R6 R3
       25 GETVARARGS                       R7 -1
       26 CALL                             R5 -1 1
       27 MOVE                             R6 R3
       28 CALL                             R4 2 0
       29 FORNLOOP                         R1
       30 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Types"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["assertEqual"]
       14 CALL                             R2 1 1
       15 DUPCLOSURE                       R3 K7 [PROTO_0]
       16 CAPTURE                          VAL R2
       17 RETURN                           R3 1
