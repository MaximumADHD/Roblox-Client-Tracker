PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 LOADK                            R4 K2 ["table"]
        7 LOADK                            R5 K3 ["Attempted to call Dash.mapOne with argument #1 of type {left:?} not {right:?}"]
        8 CALL                             R2 3 0
        9 GETIMPORT                        R2 K5 [pairs]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 3
       13 FORGPREP_NEXT                    R2
       14 LOADNIL                          R7
       15 JUMPIFNOT                        R1 ; [+6]
       16 MOVE                             R8 R1
       17 MOVE                             R9 R6
       18 MOVE                             R10 R5
       19 CALL                             R8 2 1
       20 MOVE                             R7 R8
       21 JUMP                             ; [+1]
       22 MOVE                             R7 R6
       23 JUMPIFEQKNIL                     R7 ; [+2]
       25 RETURN                           R7 1
       26 FORGLOOP                         R2 2 ; [-13]
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
       15 DUPCLOSURE                       R3 K7 [PROTO_0]
       16 CAPTURE                          VAL R2
       17 RETURN                           R3 1
