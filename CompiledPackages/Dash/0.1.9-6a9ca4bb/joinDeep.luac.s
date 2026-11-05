PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R1
        2 FASTCALL1                        TYPEOF R3 ; [+2]
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+16]
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R3 R0
       10 GETIMPORT                        R2 K1 [typeof]
       12 CALL                             R2 1 1
       13 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+9]
       15 GETUPVAL                         R2 1
       16 GETUPVAL                         R3 2
       17 GETUPVAL                         R5 0
       18 GETTABLE                         R4 R5 R1
       19 MOVE                             R5 R0
       20 CALL                             R3 2 1
       21 SETTABLE                         R3 R2 R1
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 3
       24 JUMPIFNOTEQ                      R0 R2 ; [+5]
       26 GETUPVAL                         R2 1
       27 LOADNIL                          R3
       28 SETTABLE                         R3 R2 R1
       29 RETURN                           R0 0
       30 GETUPVAL                         R2 1
       31 SETTABLE                         R0 R2 R1
       32 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 LOADK                            R4 K2 ["table"]
        7 LOADK                            R5 K3 ["Attempted to call Dash.joinDeep with argument #1 of type {left:?} not {right:?}"]
        8 CALL                             R2 3 0
        9 GETUPVAL                         R2 0
       10 FASTCALL1                        TYPEOF R1 ; [+3]
       11 MOVE                             R4 R1
       12 GETIMPORT                        R3 K1 [typeof]
       14 CALL                             R3 1 1
       15 LOADK                            R4 K2 ["table"]
       16 LOADK                            R5 K4 ["Attempted to call Dash.joinDeep with argument #2 of type {left:?} not {right:?}"]
       17 CALL                             R2 3 0
       18 GETUPVAL                         R2 1
       19 MOVE                             R3 R0
       20 CALL                             R2 1 1
       21 GETUPVAL                         R3 2
       22 MOVE                             R4 R1
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 CALL                             R3 2 0
       29 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["None"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["Types"]
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K4 [require]
       17 GETTABLEKS                       R4 R0 K7 ["assertEqual"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R0 K8 ["forEach"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K4 [require]
       27 GETTABLEKS                       R6 R0 K9 ["copy"]
       29 CALL                             R5 1 1
       30 DUPCLOSURE                       R6 K10 [PROTO_1]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R1
       36 RETURN                           R6 1
