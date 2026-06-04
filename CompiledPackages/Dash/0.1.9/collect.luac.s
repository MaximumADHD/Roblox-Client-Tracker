PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 LOADK                            R4 K2 ["table"]
        7 LOADK                            R5 K3 ["Attempted to call Dash.collect with argument #1 of type {left:?} not {right:?}"]
        8 CALL                             R2 3 0
        9 GETUPVAL                         R2 0
       10 FASTCALL1                        TYPEOF R1 ; [+3]
       11 MOVE                             R4 R1
       12 GETIMPORT                        R3 K1 [typeof]
       14 CALL                             R3 1 1
       15 LOADK                            R4 K4 ["function"]
       16 LOADK                            R5 K5 ["Attempted to call Dash.collect with argument #2 of type {left:?} not {right:?}"]
       17 CALL                             R2 3 0
       18 NEWTABLE                         R2 0 0
       20 GETUPVAL                         R3 1
       21 MOVE                             R4 R0
       22 CALL                             R3 1 3
       23 FORGPREP                         R3
       24 MOVE                             R8 R1
       25 MOVE                             R9 R6
       26 MOVE                             R10 R7
       27 CALL                             R8 2 2
       28 JUMPIFEQKNIL                     R8 ; [+2]
       30 SETTABLE                         R9 R2 R8
       31 FORGLOOP                         R3 2 ; [-8]
       33 RETURN                           R2 1

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
