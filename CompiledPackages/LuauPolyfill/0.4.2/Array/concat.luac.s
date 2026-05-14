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
       41 JUMP                             ; [+26]
       42 JUMPIFNOTEQKS                    R7 K0 ["table"] ; [+23]
       44 GETIMPORT                        R8 K10 [_G]
       46 GETTABLEKS                       R8 R8 K11 ["__DEV__"]
       48 JUMPIFNOT                        R8 ; [+8]
       49 GETUPVAL                         R8 0
       50 MOVE                             R9 R6
       51 CALL                             R8 1 1
       52 JUMPIF                           R8 ; [+4]
       53 GETIMPORT                        R8 K13 [error]
       55 LOADK                            R9 K14 ["Array.concat(...) only works with array-like tables but it received an object-like table.\nYou can avoid this error by wrapping the object-like table into an array. Example: `concat({1, 2}, {a = true})` should be `concat({1, 2}, { {a = true} }`"]
       56 CALL                             R8 1 0
       57 LOADN                            R10 1
       58 LENGTH                           R8 R6
       59 LOADN                            R9 1
       60 FORNPREP                         R8
       61 ADDK                             R2 R2 K3 [1]
       62 GETTABLE                         R11 R6 R10
       63 SETTABLE                         R11 R1 R2
       64 FORNLOOP                         R8
       65 JUMP                             ; [+2]
       66 ADDK                             R2 R2 K3 [1]
       67 SETTABLE                         R6 R1 R2
       68 FORNLOOP                         R3
       69 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["isArray"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R0 K2 ["Parent"]
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R2 K6 ["types"]
       16 CALL                             R3 1 1
       17 DUPCLOSURE                       R4 K7 [PROTO_0]
       18 CAPTURE                          VAL R1
       19 RETURN                           R4 1
