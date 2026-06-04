PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 LOADK                            R3 K2 ["table"]
        7 LOADK                            R4 K3 ["Attempted to call Dash.flat with argument #1 of type {left:?} not {right:?}"]
        8 CALL                             R1 3 0
        9 NEWTABLE                         R1 0 0
       11 GETUPVAL                         R2 1
       12 MOVE                             R3 R0
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R1
       16 CALL                             R2 2 0
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Types"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["append"]
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K4 [require]
       17 GETTABLEKS                       R4 R0 K7 ["assertEqual"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R0 K8 ["forEach"]
       24 CALL                             R4 1 1
       25 DUPCLOSURE                       R5 K9 [PROTO_1]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R2
       29 RETURN                           R5 1
