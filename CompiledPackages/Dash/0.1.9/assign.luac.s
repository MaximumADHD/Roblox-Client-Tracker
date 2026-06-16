PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+5]
        3 GETUPVAL                         R2 1
        4 LOADNIL                          R3
        5 SETTABLE                         R3 R2 R1
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 SETTABLE                         R0 R2 R1
        9 RETURN                           R0 0

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+4]
        2 GETUPVAL                         R1 0
        3 JUMPIFNOTEQ                      R0 R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U2
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 LOADK                            R3 K2 ["table"]
        8 LOADK                            R4 K3 ["Attempted to call Dash.assign with argument #1 of type {left:?} not {right:?}"]
        9 CALL                             R1 3 0
       10 GETUPVAL                         R1 1
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R0
       15 GETVARARGS                       R3 -1
       16 CALL                             R1 -1 0
       17 RETURN                           R0 1

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
       27 GETTABLEKS                       R6 R0 K9 ["forEachArgs"]
       29 CALL                             R5 1 1
       30 DUPCLOSURE                       R6 K10 [PROTO_2]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R4
       35 RETURN                           R6 1
