PROTO_0:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 LOADK                            R3 K2 ["table"]
        7 LOADK                            R4 K3 ["Attempted to call Dash.reverse with argument #1 of type {left:?} not {right:?}"]
        8 CALL                             R1 3 0
        9 NEWTABLE                         R1 0 0
       11 LENGTH                           R4 R0
       12 LOADN                            R2 1
       13 LOADN                            R3 255
       14 FORNPREP                         R2
       15 GETTABLE                         R7 R0 R4
       16 FASTCALL2                        TABLE_INSERT R1 R7 ; [+3]
       18 MOVE                             R6 R1
       19 GETUPVAL                         R5 1
       20 CALL                             R5 2 0
       21 FORNLOOP                         R2
       22 RETURN                           R1 1

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
       15 GETIMPORT                        R3 K9 [table.insert]
       17 DUPCLOSURE                       R4 K10 [PROTO_0]
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R3
       20 RETURN                           R4 1
