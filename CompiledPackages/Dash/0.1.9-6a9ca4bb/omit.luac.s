PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIF                           R2 ; [+4]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R4 2
        5 GETTABLE                         R3 R4 R1
        6 SETTABLE                         R3 R2 R1
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 LOADK                            R4 K2 ["table"]
        7 LOADK                            R5 K3 ["Attempted to call Dash.omit with argument #1 of type {left:?} not {right:?}"]
        8 CALL                             R2 3 0
        9 GETUPVAL                         R2 0
       10 FASTCALL1                        TYPEOF R1 ; [+3]
       11 MOVE                             R4 R1
       12 GETIMPORT                        R3 K1 [typeof]
       14 CALL                             R3 1 1
       15 LOADK                            R4 K2 ["table"]
       16 LOADK                            R5 K4 ["Attempted to call Dash.omit with argument #2 of type {left:?} not {right:?}"]
       17 CALL                             R2 3 0
       18 NEWTABLE                         R2 0 0
       20 GETUPVAL                         R3 1
       21 MOVE                             R4 R1
       22 CALL                             R3 1 1
       23 GETUPVAL                         R4 2
       24 MOVE                             R5 R0
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R0
       29 CALL                             R4 2 0
       30 RETURN                           R2 1

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
       17 GETTABLEKS                       R4 R0 K7 ["collectSet"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R0 K8 ["forEach"]
       24 CALL                             R4 1 1
       25 DUPCLOSURE                       R5 K9 [PROTO_1]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R4
       29 RETURN                           R5 1
