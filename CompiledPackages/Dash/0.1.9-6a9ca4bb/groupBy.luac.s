PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 LOADK                            R4 K2 ["table"]
        7 LOADK                            R5 K3 ["Attempted to call Dash.groupBy with argument #1 of type {left:?} not {right:?}"]
        8 CALL                             R2 3 0
        9 GETUPVAL                         R2 0
       10 JUMPIFEQKNIL                     R1 ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 LOADB                            R4 0
       15 LOADK                            R5 K4 ["Attempted to call Dash.groupBy with a nil getKey argument"]
       16 CALL                             R2 3 0
       17 NEWTABLE                         R2 0 0
       19 GETIMPORT                        R3 K6 [pairs]
       21 MOVE                             R4 R0
       22 CALL                             R3 1 3
       23 FORGPREP_NEXT                    R3
       24 LOADNIL                          R8
       25 FASTCALL1                        TYPEOF R1 ; [+3]
       26 MOVE                             R10 R1
       27 GETIMPORT                        R9 K1 [typeof]
       29 CALL                             R9 1 1
       30 JUMPIFNOTEQKS                    R9 K7 ["function"] ; [+7]
       32 MOVE                             R9 R1
       33 MOVE                             R10 R7
       34 MOVE                             R11 R6
       35 CALL                             R9 2 1
       36 MOVE                             R8 R9
       37 JUMP                             ; [+1]
       38 GETTABLE                         R8 R7 R1
       39 JUMPIFEQKNIL                     R8 ; [+17]
       41 GETTABLE                         R9 R2 R8
       42 JUMPIFEQKNIL                     R9 ; [+8]
       44 GETTABLE                         R10 R2 R8
       45 FASTCALL2                        TABLE_INSERT R10 R7 ; [+3]
       47 MOVE                             R11 R7
       48 GETUPVAL                         R9 1
       49 CALL                             R9 2 0
       50 JUMP                             ; [+6]
       51 NEWTABLE                         R9 0 1
       53 MOVE                             R10 R7
       54 SETLIST                          R9 R10 1 [1]
       56 SETTABLE                         R9 R2 R8
       57 FORGLOOP                         R3 2 ; [-34]
       59 RETURN                           R2 1

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
