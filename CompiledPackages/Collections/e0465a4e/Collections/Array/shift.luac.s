PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+16]
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+12]
        6 GETIMPORT                        R1 K1 [error]
        8 GETIMPORT                        R2 K4 [string.format]
       10 LOADK                            R3 K5 ["Array.shift called on non-array %s"]
       11 FASTCALL1                        TYPEOF R0 ; [+3]
       12 MOVE                             R5 R0
       13 GETIMPORT                        R4 K7 [typeof]
       15 CALL                             R4 1 1
       16 CALL                             R2 2 -1
       17 CALL                             R1 -1 0
       18 LENGTH                           R1 R0
       19 LOADN                            R2 0
       20 JUMPIFNOTLT                      R2 R1 ; [+7]
       22 GETIMPORT                        R1 K10 [table.remove]
       24 MOVE                             R2 R0
       25 LOADN                            R3 1
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1
       28 LOADNIL                          R1
       29 RETURN                           R1 1

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
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R3
       26 RETURN                           R5 1
