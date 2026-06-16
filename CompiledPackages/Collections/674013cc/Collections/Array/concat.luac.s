PROTO_0:
        0 PREPVARARGS                      1
        1 LOADNIL                          R1
        2 LOADN                            R2 0
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R0
        5 CALL                             R3 1 1
        6 JUMPIFNOT                        R3 ; [+7]
        7 GETIMPORT                        R3 K2 [table.clone]
        9 MOVE                             R4 R0
       10 CALL                             R3 1 1
       11 MOVE                             R1 R3
       12 LENGTH                           R2 R0
       13 JUMP                             ; [+4]
       14 ADDK                             R2 R2 K3 [1]
       15 NEWTABLE                         R1 0 0
       17 SETTABLE                         R0 R1 R2
       18 LOADN                            R5 1
       19 LOADK                            R7 K4 ["#"]
       20 FASTCALL1                        SELECT_VARARG R7 ; [+3]
       21 GETIMPORT                        R6 K6 [select]
       23 GETVARARGS                       R8 -1
       24 CALL                             R6 -1 1
       25 MOVE                             R3 R6
       26 LOADN                            R4 1
       27 FORNPREP                         R3
       28 FASTCALL1                        SELECT_VARARG R5 ; [+4]
       29 GETIMPORT                        R6 K6 [select]
       31 MOVE                             R7 R5
       32 GETVARARGS                       R8 -1
       33 CALL                             R6 -1 1
       34 FASTCALL1                        TYPEOF R6 ; [+3]
       35 MOVE                             R8 R6
       36 GETIMPORT                        R7 K8 [typeof]
       38 CALL                             R7 1 1
       39 JUMPIFNOTEQKNIL                  R6 ; [+2]
       41 JUMP                             ; [+23]
       42 JUMPIFNOTEQKS                    R7 K0 ["table"] ; [+20]
       44 GETUPVAL                         R8 1
       45 JUMPIFNOT                        R8 ; [+8]
       46 GETUPVAL                         R8 0
       47 MOVE                             R9 R6
       48 CALL                             R8 1 1
       49 JUMPIF                           R8 ; [+4]
       50 GETIMPORT                        R8 K10 [error]
       52 LOADK                            R9 K11 ["Array.concat(...) only works with array-like tables but it received an object-like table.\nYou can avoid this error by wrapping the object-like table into an array. Example: `concat({1, 2}, {a = true})` should be `concat({1, 2}, { {a = true} }`"]
       53 CALL                             R8 1 0
       54 LOADN                            R10 1
       55 LENGTH                           R8 R6
       56 LOADN                            R9 1
       57 FORNPREP                         R8
       58 ADDK                             R2 R2 K3 [1]
       59 GETTABLE                         R11 R6 R10
       60 SETTABLE                         R11 R1 R2
       61 FORNLOOP                         R8
       62 JUMP                             ; [+2]
       63 ADDK                             R2 R2 K3 [1]
       64 SETTABLE                         R6 R1 R2
       65 FORNLOOP                         R3
       66 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [_G]
        3 GETTABLEKS                       R0 R0 K2 ["__DEV__"]
        5 GETIMPORT                        R1 K4 [script]
        7 GETTABLEKS                       R1 R1 K5 ["Parent"]
        9 GETTABLEKS                       R2 R1 K5 ["Parent"]
       11 GETTABLEKS                       R2 R2 K5 ["Parent"]
       13 GETIMPORT                        R3 K7 [require]
       15 GETTABLEKS                       R4 R1 K8 ["isArray"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K7 [require]
       20 GETTABLEKS                       R5 R2 K9 ["ES7Types"]
       22 CALL                             R4 1 1
       23 DUPCLOSURE                       R5 K10 [PROTO_0]
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R0
       26 RETURN                           R5 1
