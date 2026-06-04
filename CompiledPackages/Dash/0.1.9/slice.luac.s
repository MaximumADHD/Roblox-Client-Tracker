PROTO_0:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K1 [typeof]
        5 CALL                             R4 1 1
        6 LOADK                            R5 K2 ["table"]
        7 LOADK                            R6 K3 ["Attempted to call Dash.slice with argument #1 of type {left:?} not {right:?}"]
        8 CALL                             R3 3 0
        9 NEWTABLE                         R3 0 0
       11 ORK                              R1 R1 K4 [1]
       12 MOVE                             R4 R2
       13 JUMPIF                           R4 ; [+1]
       14 LENGTH                           R4 R0
       15 MOVE                             R2 R4
       16 GETUPVAL                         R4 0
       17 FASTCALL1                        TYPEOF R1 ; [+3]
       18 MOVE                             R6 R1
       19 GETIMPORT                        R5 K1 [typeof]
       21 CALL                             R5 1 1
       22 LOADK                            R6 K5 ["number"]
       23 LOADK                            R7 K6 ["Attempted to call Dash.slice with argument #2 of type {left:?} not {right:?}"]
       24 CALL                             R4 3 0
       25 GETUPVAL                         R4 0
       26 FASTCALL1                        TYPEOF R2 ; [+3]
       27 MOVE                             R6 R2
       28 GETIMPORT                        R5 K1 [typeof]
       30 CALL                             R5 1 1
       31 LOADK                            R6 K5 ["number"]
       32 LOADK                            R7 K7 ["Attempted to call Dash.slice with argument #3 of type {left:?} not {right:?}"]
       33 CALL                             R4 3 0
       34 LOADN                            R4 0
       35 JUMPIFNOTLT                      R1 R4 ; [+3]
       37 LENGTH                           R4 R0
       38 ADD                              R1 R4 R1
       39 JUMPIFNOT                        R2 ; [+5]
       40 LOADN                            R4 0
       41 JUMPIFNOTLT                      R2 R4 ; [+3]
       43 LENGTH                           R4 R0
       44 ADD                              R2 R4 R2
       45 MOVE                             R6 R1
       46 MOVE                             R4 R2
       47 LOADN                            R5 1
       48 FORNPREP                         R4
       49 GETTABLE                         R9 R0 R6
       50 FASTCALL2                        TABLE_INSERT R3 R9 ; [+3]
       52 MOVE                             R8 R3
       53 GETUPVAL                         R7 1
       54 CALL                             R7 2 0
       55 FORNLOOP                         R4
       56 RETURN                           R3 1

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
