PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+32]
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFEQKS                       R2 K2 ["table"] ; [+13]
        9 GETIMPORT                        R2 K4 [error]
       11 GETIMPORT                        R3 K7 [string.format]
       13 LOADK                            R4 K8 ["Array.flat called on %s"]
       14 FASTCALL1                        TYPEOF R0 ; [+3]
       15 MOVE                             R6 R0
       16 GETIMPORT                        R5 K1 [typeof]
       18 CALL                             R5 1 1
       19 CALL                             R3 2 -1
       20 CALL                             R2 -1 0
       21 JUMPIFEQKNIL                     R1 ; [+12]
       23 FASTCALL1                        TYPEOF R1 ; [+3]
       24 MOVE                             R3 R1
       25 GETIMPORT                        R2 K1 [typeof]
       27 CALL                             R2 1 1
       28 JUMPIFEQKS                       R2 K9 ["number"] ; [+5]
       30 GETIMPORT                        R2 K4 [error]
       32 LOADK                            R3 K10 ["depth is not a number or nil"]
       33 CALL                             R2 1 0
       34 ORK                              R2 R1 K11 [1]
       35 NEWTABLE                         R3 0 0
       37 MOVE                             R4 R0
       38 LOADNIL                          R5
       39 LOADNIL                          R6
       40 FORGPREP                         R4
       41 GETUPVAL                         R9 1
       42 MOVE                             R10 R8
       43 CALL                             R9 1 1
       44 JUMPIFNOT                        R9 ; [+23]
       45 LOADN                            R10 1
       46 JUMPIFNOTLT                      R10 R2 ; [+6]
       48 GETUPVAL                         R9 2
       49 MOVE                             R10 R8
       50 SUBK                             R11 R2 K11 [1]
       51 CALL                             R9 2 1
       52 JUMP                             ; [+1]
       53 MOVE                             R9 R8
       54 MOVE                             R10 R9
       55 LOADNIL                          R11
       56 LOADNIL                          R12
       57 FORGPREP                         R10
       58 FASTCALL2                        TABLE_INSERT R3 R14 ; [+5]
       60 MOVE                             R16 R3
       61 MOVE                             R17 R14
       62 GETIMPORT                        R15 K13 [table.insert]
       64 CALL                             R15 2 0
       65 FORGLOOP                         R10 2 ; [-8]
       67 JUMP                             ; [+7]
       68 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       70 MOVE                             R10 R3
       71 MOVE                             R11 R8
       72 GETIMPORT                        R9 K13 [table.insert]
       74 CALL                             R9 2 0
       75 FORGLOOP                         R4 2 ; [-35]
       77 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [_G]
        3 GETTABLEKS                       R0 R1 K2 ["__DEV__"]
        5 GETIMPORT                        R2 K4 [script]
        7 GETTABLEKS                       R1 R2 K5 ["Parent"]
        9 GETTABLEKS                       R3 R1 K5 ["Parent"]
       11 GETTABLEKS                       R2 R3 K5 ["Parent"]
       13 GETIMPORT                        R3 K7 [require]
       15 GETTABLEKS                       R4 R1 K8 ["isArray"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K7 [require]
       20 GETTABLEKS                       R5 R2 K9 ["ES7Types"]
       22 CALL                             R4 1 1
       23 DUPCLOSURE                       R5 K10 [PROTO_0]
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R5
       27 RETURN                           R5 1
