PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 LOADK                            R4 K2 ["table"]
        7 LOADK                            R5 K3 ["Attempted to call Dash.collectSet with argument #1 of type {left:?} not {right:?}"]
        8 CALL                             R2 3 0
        9 NEWTABLE                         R2 0 0
       11 GETUPVAL                         R3 1
       12 MOVE                             R4 R0
       13 CALL                             R3 1 3
       14 FORGPREP                         R3
       15 LOADNIL                          R8
       16 JUMPIFNOTEQKNIL                  R1 ; [+3]
       18 MOVE                             R8 R7
       19 JUMP                             ; [+5]
       20 MOVE                             R9 R1
       21 MOVE                             R10 R6
       22 MOVE                             R11 R7
       23 CALL                             R9 2 1
       24 MOVE                             R8 R9
       25 JUMPIFEQKNIL                     R8 ; [+3]
       27 LOADB                            R9 1
       28 SETTABLE                         R9 R2 R8
       29 FORGLOOP                         R3 2 ; [-15]
       31 RETURN                           R2 1

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
