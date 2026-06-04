PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 LOADK                            R4 K2 ["table"]
        7 LOADK                            R5 K3 ["Attempted to call Dash.last with argument #1 of type {left:?} not {right:?}"]
        8 CALL                             R2 3 0
        9 LENGTH                           R4 R0
       10 LOADN                            R2 1
       11 LOADN                            R3 255
       12 FORNPREP                         R2
       13 GETTABLE                         R5 R0 R4
       14 JUMPIF                           R1 ; [+1]
       15 RETURN                           R5 1
       16 MOVE                             R6 R1
       17 MOVE                             R7 R5
       18 MOVE                             R8 R4
       19 CALL                             R6 2 1
       20 JUMPIFNOT                        R6 ; [+1]
       21 RETURN                           R5 1
       22 FORNLOOP                         R2
       23 RETURN                           R0 0

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
