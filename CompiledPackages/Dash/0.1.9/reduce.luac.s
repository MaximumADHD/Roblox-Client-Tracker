PROTO_0:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K1 [typeof]
        5 CALL                             R4 1 1
        6 LOADK                            R5 K2 ["table"]
        7 LOADK                            R6 K3 ["Attempted to call Dash.reduce with argument #1 of type {left:?} not {right:?}"]
        8 CALL                             R3 3 0
        9 GETUPVAL                         R3 0
       10 FASTCALL1                        TYPEOF R1 ; [+3]
       11 MOVE                             R5 R1
       12 GETIMPORT                        R4 K1 [typeof]
       14 CALL                             R4 1 1
       15 LOADK                            R5 K4 ["function"]
       16 LOADK                            R6 K5 ["Attempted to call Dash.reduce with argument #2 of type {left:?} not {right:?}"]
       17 CALL                             R3 3 0
       18 MOVE                             R3 R2
       19 LOADN                            R6 1
       20 LENGTH                           R4 R0
       21 LOADN                            R5 1
       22 FORNPREP                         R4
       23 MOVE                             R7 R1
       24 MOVE                             R8 R3
       25 GETTABLE                         R9 R0 R6
       26 MOVE                             R10 R6
       27 CALL                             R7 3 1
       28 MOVE                             R3 R7
       29 FORNLOOP                         R4
       30 RETURN                           R3 1

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
