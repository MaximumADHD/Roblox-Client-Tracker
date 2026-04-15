PROTO_0:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K2 ["isValidElementType"]
        5 MOVE                             R3 R0
        6 CALL                             R1 2 2
        7 JUMPIFNOT                        R1 ; [+44]
        8 JUMPIFNOT                        R2 ; [+43]
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R4 R0
       11 GETIMPORT                        R3 K4 [typeof]
       13 CALL                             R3 1 1
       14 JUMPIFNOTEQKS                    R3 K5 ["function"] ; [+28]
       16 GETIMPORT                        R3 K8 [debug.info]
       18 MOVE                             R4 R0
       19 LOADK                            R5 K9 ["a"]
       20 CALL                             R3 2 2
       21 GETIMPORT                        R7 K8 [debug.info]
       23 MOVE                             R8 R0
       24 LOADK                            R9 K10 ["n"]
       25 CALL                             R7 2 1
       26 LOADN                            R8 1
       27 LOADN                            R9 3
       28 FASTCALL                         STRING_SUB ; [+2]
       29 GETIMPORT                        R6 K13 [string.sub]
       31 CALL                             R6 3 1
       32 JUMPIFEQKS                       R6 K14 ["use"] ; [+2]
       34 LOADB                            R5 0 +1
       35 LOADB                            R5 1
       36 JUMPIFNOTEQKN                    R3 K15 [1] ; [+15]
       38 JUMPIF                           R4 ; [+13]
       39 JUMPIF                           R5 ; [+12]
       40 LOADB                            R6 1
       41 RETURN                           R6 1
       42 JUMP                             ; [+9]
       43 FASTCALL1                        TYPEOF R0 ; [+3]
       44 MOVE                             R4 R0
       45 GETIMPORT                        R3 K4 [typeof]
       47 CALL                             R3 1 1
       48 JUMPIFNOTEQKS                    R3 K16 ["table"] ; [+3]
       50 LOADB                            R3 1
       51 RETURN                           R3 1
       52 LOADB                            R3 0
       53 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UsageTracker"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["ReactIs"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
