PROTO_0:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K1 [typeof]
        5 CALL                             R4 1 1
        6 LOADK                            R5 K2 ["table"]
        7 LOADK                            R6 K3 ["Attempted to call Dash.getOrSet with argument #1 of type {left:?} not {right:?}"]
        8 CALL                             R3 3 0
        9 GETUPVAL                         R3 0
       10 JUMPIFEQKNIL                     R1 ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 LOADB                            R5 0
       15 LOADK                            R6 K4 ["Attempted to call Dash.getOrSet with a nil key argument"]
       16 CALL                             R3 3 0
       17 GETUPVAL                         R3 0
       18 FASTCALL1                        TYPEOF R2 ; [+3]
       19 MOVE                             R5 R2
       20 GETIMPORT                        R4 K1 [typeof]
       22 CALL                             R4 1 1
       23 LOADK                            R5 K5 ["function"]
       24 LOADK                            R6 K6 ["Attempted to call Dash.getOrSet with argument #3 of type {left:?} not {right:?}"]
       25 CALL                             R3 3 0
       26 GETTABLE                         R3 R0 R1
       27 JUMPIFNOTEQKNIL                  R3 ; [+6]
       29 MOVE                             R3 R2
       30 MOVE                             R4 R0
       31 MOVE                             R5 R1
       32 CALL                             R3 2 1
       33 SETTABLE                         R3 R0 R1
       34 GETTABLE                         R3 R0 R1
       35 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Types"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["Error"]
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K4 [require]
       17 GETTABLEKS                       R4 R0 K7 ["assertEqual"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R0 K8 ["format"]
       24 CALL                             R4 1 1
       25 DUPCLOSURE                       R5 K9 [PROTO_0]
       26 CAPTURE                          VAL R3
       27 RETURN                           R5 1
