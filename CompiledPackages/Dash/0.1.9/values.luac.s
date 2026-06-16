PROTO_0:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 LOADK                            R3 K2 ["table"]
        7 LOADK                            R4 K3 ["Attempted to call Dash.values with argument #1 of type {left:?} not {right:?}"]
        8 CALL                             R1 3 0
        9 NEWTABLE                         R1 0 0
       11 GETUPVAL                         R2 1
       12 MOVE                             R3 R0
       13 CALL                             R2 1 3
       14 FORGPREP                         R2
       15 FASTCALL2                        TABLE_INSERT R1 R6 ; [+4]
       17 MOVE                             R8 R1
       18 MOVE                             R9 R6
       19 GETUPVAL                         R7 2
       20 CALL                             R7 2 0
       21 FORGLOOP                         R2 2 ; [-7]
       23 RETURN                           R1 1

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
       20 GETIMPORT                        R4 K10 [table.insert]
       22 DUPCLOSURE                       R5 K11 [PROTO_0]
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R4
       26 RETURN                           R5 1
