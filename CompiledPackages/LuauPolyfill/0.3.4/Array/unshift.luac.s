PROTO_0:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R1 K1 [_G]
        3 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        5 JUMPIFNOT                        R1 ; [+16]
        6 GETUPVAL                         R1 0
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+12]
       10 GETIMPORT                        R1 K4 [error]
       12 GETIMPORT                        R2 K7 [string.format]
       14 LOADK                            R3 K8 ["Array.unshift called on non-array %s"]
       15 FASTCALL1                        TYPEOF R0 ; [+3]
       16 MOVE                             R5 R0
       17 GETIMPORT                        R4 K10 [typeof]
       19 CALL                             R4 1 1
       20 CALL                             R2 2 -1
       21 CALL                             R1 -1 0
       22 LOADK                            R2 K11 ["#"]
       23 FASTCALL1                        SELECT_VARARG R2 ; [+3]
       24 GETIMPORT                        R1 K13 [select]
       26 GETVARARGS                       R3 -1
       27 CALL                             R1 -1 1
       28 LOADN                            R2 0
       29 JUMPIFNOTLT                      R2 R1 ; [+20]
       31 MOVE                             R4 R1
       32 LOADN                            R2 1
       33 LOADN                            R3 255
       34 FORNPREP                         R2
       35 FASTCALL1                        SELECT_VARARG R4 ; [+4]
       36 GETIMPORT                        R5 K13 [select]
       38 MOVE                             R6 R4
       39 GETVARARGS                       R7 -1
       40 CALL                             R5 -1 1
       41 LOADN                            R8 1
       42 FASTCALL3                        TABLE_INSERT R0 R8 R5
       44 MOVE                             R7 R0
       45 MOVE                             R9 R5
       46 GETIMPORT                        R6 K16 [table.insert]
       48 CALL                             R6 3 0
       49 FORNLOOP                         R2
       50 LENGTH                           R2 R0
       51 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["isArray"]
        9 CALL                             R1 1 1
       10 DUPCLOSURE                       R2 K6 [PROTO_0]
       11 CAPTURE                          VAL R1
       12 RETURN                           R2 1
