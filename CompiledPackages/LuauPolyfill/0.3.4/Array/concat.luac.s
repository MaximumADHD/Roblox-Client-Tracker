PROTO_0:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 0
        3 LOADN                            R2 0
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 JUMPIFNOT                        R3 ; [+10]
        8 GETIMPORT                        R3 K1 [ipairs]
       10 MOVE                             R4 R0
       11 CALL                             R3 1 3
       12 FORGPREP_INEXT                   R3
       13 ADDK                             R2 R2 K2 [1]
       14 SETTABLE                         R7 R1 R2
       15 FORGLOOP                         R3 2 [inext] ; [-3]
       17 JUMP                             ; [+2]
       18 ADDK                             R2 R2 K2 [1]
       19 SETTABLE                         R0 R1 R2
       20 LOADN                            R5 1
       21 LOADK                            R7 K3 ["#"]
       22 FASTCALL1                        SELECT_VARARG R7 ; [+3]
       23 GETIMPORT                        R6 K5 [select]
       25 GETVARARGS                       R8 -1
       26 CALL                             R6 -1 1
       27 MOVE                             R3 R6
       28 LOADN                            R4 1
       29 FORNPREP                         R3
       30 FASTCALL1                        SELECT_VARARG R5 ; [+4]
       31 GETIMPORT                        R6 K5 [select]
       33 MOVE                             R7 R5
       34 GETVARARGS                       R8 -1
       35 CALL                             R6 -1 1
       36 FASTCALL1                        TYPEOF R6 ; [+3]
       37 MOVE                             R8 R6
       38 GETIMPORT                        R7 K7 [typeof]
       40 CALL                             R7 1 1
       41 JUMPIFNOTEQKNIL                  R6 ; [+2]
       43 JUMP                             ; [+26]
       44 JUMPIFNOTEQKS                    R7 K8 ["table"] ; [+23]
       46 GETIMPORT                        R9 K10 [_G]
       48 GETTABLEKS                       R8 R9 K11 ["__DEV__"]
       50 JUMPIFNOT                        R8 ; [+8]
       51 GETUPVAL                         R8 0
       52 MOVE                             R9 R6
       53 CALL                             R8 1 1
       54 JUMPIF                           R8 ; [+4]
       55 GETIMPORT                        R8 K13 [error]
       57 LOADK                            R9 K14 ["Array.concat(...) only works with array-like tables but it received an object-like table.\nYou can avoid this error by wrapping the object-like table into an array. Example: `concat({1, 2}, {a = true})` should be `concat({1, 2}, { {a = true} }`"]
       58 CALL                             R8 1 0
       59 LOADN                            R10 1
       60 LENGTH                           R8 R6
       61 LOADN                            R9 1
       62 FORNPREP                         R8
       63 ADDK                             R2 R2 K2 [1]
       64 GETTABLE                         R11 R6 R10
       65 SETTABLE                         R11 R1 R2
       66 FORNLOOP                         R8
       67 JUMP                             ; [+2]
       68 ADDK                             R2 R2 K2 [1]
       69 SETTABLE                         R6 R1 R2
       70 FORNLOOP                         R3
       71 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["isArray"]
        9 CALL                             R1 1 1
       10 DUPCLOSURE                       R2 K6 [PROTO_0]
       11 CAPTURE                          VAL R1
       12 RETURN                           R2 1
