PROTO_0:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+16]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 JUMPIF                           R1 ; [+12]
        7 GETIMPORT                        R1 K1 [error]
        9 GETIMPORT                        R2 K4 [string.format]
       11 LOADK                            R3 K5 ["Array.unshift called on non-array %s"]
       12 FASTCALL1                        TYPEOF R0 ; [+3]
       13 MOVE                             R5 R0
       14 GETIMPORT                        R4 K7 [typeof]
       16 CALL                             R4 1 1
       17 CALL                             R2 2 -1
       18 CALL                             R1 -1 0
       19 LOADK                            R2 K8 ["#"]
       20 FASTCALL1                        SELECT_VARARG R2 ; [+3]
       21 GETIMPORT                        R1 K10 [select]
       23 GETVARARGS                       R3 -1
       24 CALL                             R1 -1 1
       25 LOADN                            R2 0
       26 JUMPIFNOTLT                      R2 R1 ; [+20]
       28 MOVE                             R4 R1
       29 LOADN                            R2 1
       30 LOADN                            R3 255
       31 FORNPREP                         R2
       32 FASTCALL1                        SELECT_VARARG R4 ; [+4]
       33 GETIMPORT                        R5 K10 [select]
       35 MOVE                             R6 R4
       36 GETVARARGS                       R7 -1
       37 CALL                             R5 -1 1
       38 LOADN                            R8 1
       39 FASTCALL3                        TABLE_INSERT R0 R8 R5
       41 MOVE                             R7 R0
       42 MOVE                             R9 R5
       43 GETIMPORT                        R6 K13 [table.insert]
       45 CALL                             R6 3 0
       46 FORNLOOP                         R2
       47 LENGTH                           R2 R0
       48 RETURN                           R2 1

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
       26 RETURN                           R5 1
