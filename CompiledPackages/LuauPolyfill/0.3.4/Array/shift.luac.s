PROTO_0:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+16]
        5 GETUPVAL                         R1 0
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 JUMPIF                           R1 ; [+12]
        9 GETIMPORT                        R1 K4 [error]
       11 GETIMPORT                        R2 K7 [string.format]
       13 LOADK                            R3 K8 ["Array.shift called on non-array %s"]
       14 FASTCALL1                        TYPEOF R0 ; [+3]
       15 MOVE                             R5 R0
       16 GETIMPORT                        R4 K10 [typeof]
       18 CALL                             R4 1 1
       19 CALL                             R2 2 -1
       20 CALL                             R1 -1 0
       21 LENGTH                           R1 R0
       22 LOADN                            R2 0
       23 JUMPIFNOTLT                      R2 R1 ; [+7]
       25 GETIMPORT                        R1 K13 [table.remove]
       27 MOVE                             R2 R0
       28 LOADN                            R3 1
       29 CALL                             R1 2 -1
       30 RETURN                           R1 -1
       31 LOADNIL                          R1
       32 RETURN                           R1 1

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
