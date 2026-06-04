PROTO_0:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 LOADN                            R1 0
        4 LOADN                            R4 1
        5 LOADK                            R6 K0 ["#"]
        6 FASTCALL1                        SELECT_VARARG R6 ; [+3]
        7 GETIMPORT                        R5 K2 [select]
        9 GETVARARGS                       R7 -1
       10 CALL                             R5 -1 1
       11 MOVE                             R2 R5
       12 LOADN                            R3 1
       13 FORNPREP                         R2
       14 FASTCALL1                        SELECT_VARARG R4 ; [+4]
       15 GETIMPORT                        R5 K2 [select]
       17 MOVE                             R6 R4
       18 GETVARARGS                       R7 -1
       19 CALL                             R5 -1 1
       20 FASTCALL1                        TYPEOF R5 ; [+3]
       21 MOVE                             R7 R5
       22 GETIMPORT                        R6 K4 [typeof]
       24 CALL                             R6 1 1
       25 JUMPIFNOTEQKNIL                  R5 ; [+2]
       27 JUMP                             ; [+26]
       28 JUMPIFNOTEQKS                    R6 K5 ["table"] ; [+23]
       30 GETIMPORT                        R7 K7 [_G]
       32 GETTABLEKS                       R7 R7 K8 ["__DEV__"]
       34 JUMPIFNOT                        R7 ; [+8]
       35 GETUPVAL                         R7 0
       36 MOVE                             R8 R5
       37 CALL                             R7 1 1
       38 JUMPIF                           R7 ; [+4]
       39 GETIMPORT                        R7 K10 [error]
       41 LOADK                            R8 K11 ["Array.concat(...) only works with array-like tables but it received an object-like table.\nYou can avoid this error by wrapping the object-like table into an array. Example: `concat({1, 2}, {a = true})` should be `concat({1, 2}, { {a = true} }`"]
       42 CALL                             R7 1 0
       43 LOADN                            R9 1
       44 LENGTH                           R7 R5
       45 LOADN                            R8 1
       46 FORNPREP                         R7
       47 ADDK                             R1 R1 K12 [1]
       48 GETTABLE                         R10 R5 R9
       49 SETTABLE                         R10 R0 R1
       50 FORNLOOP                         R7
       51 JUMP                             ; [+2]
       52 ADDK                             R1 R1 K12 [1]
       53 SETTABLE                         R5 R0 R1
       54 FORNLOOP                         R2
       55 RETURN                           R0 1

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
