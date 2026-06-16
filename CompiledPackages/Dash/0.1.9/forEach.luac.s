PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 LOADK                            R4 K2 ["table"]
        7 LOADK                            R5 K3 ["Attempted to call Dash.forEach with argument #1 of type {left:?} not {right:?}"]
        8 CALL                             R2 3 0
        9 GETUPVAL                         R2 0
       10 FASTCALL1                        TYPEOF R1 ; [+3]
       11 MOVE                             R4 R1
       12 GETIMPORT                        R3 K1 [typeof]
       14 CALL                             R3 1 1
       15 LOADK                            R4 K4 ["function"]
       16 LOADK                            R5 K5 ["Attempted to call Dash.forEach with argument #2 of type {left:?} not {right:?}"]
       17 CALL                             R2 3 0
       18 GETUPVAL                         R2 1
       19 MOVE                             R3 R0
       20 CALL                             R2 1 3
       21 FORGPREP                         R2
       22 MOVE                             R7 R1
       23 MOVE                             R8 R6
       24 MOVE                             R9 R5
       25 CALL                             R7 2 0
       26 FORGLOOP                         R2 2 ; [-5]
       28 RETURN                           R0 0

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
       15 GETIMPORT                        R3 K4 [require]
       17 GETTABLEKS                       R4 R0 K7 ["iterator"]
       19 CALL                             R3 1 1
       20 DUPCLOSURE                       R4 K8 [PROTO_0]
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R3
       23 RETURN                           R4 1
