PROTO_0:
        0 LOADNIL                          R2
        1 GETUPVAL                         R4 0
        2 FASTCALL1                        TYPEOF R4 ; [+2]
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["function"] ; [+7]
        8 GETUPVAL                         R3 0
        9 MOVE                             R4 R1
       10 MOVE                             R5 R0
       11 CALL                             R3 2 1
       12 MOVE                             R2 R3
       13 JUMP                             ; [+2]
       14 GETUPVAL                         R3 0
       15 GETTABLE                         R2 R1 R3
       16 MOVE                             R3 R2
       17 MOVE                             R4 R1
       18 RETURN                           R3 2

PROTO_1:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 LOADK                            R4 K2 ["table"]
        7 LOADK                            R5 K3 ["Attempted to call Dash.keyBy with argument #1 of type {left:?} not {right:?}"]
        8 CALL                             R2 3 0
        9 GETUPVAL                         R2 0
       10 JUMPIFEQKNIL                     R1 ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 LOADB                            R4 0
       15 LOADK                            R5 K4 ["Attempted to call Dash.keyBy with a nil getKey argument"]
       16 CALL                             R2 3 0
       17 GETUPVAL                         R2 1
       18 MOVE                             R3 R0
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          VAL R1
       21 CALL                             R2 2 -1
       22 RETURN                           R2 -1

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
       17 GETTABLEKS                       R4 R0 K7 ["collect"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [table.insert]
       22 DUPCLOSURE                       R5 K11 [PROTO_1]
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R3
       25 RETURN                           R5 1
