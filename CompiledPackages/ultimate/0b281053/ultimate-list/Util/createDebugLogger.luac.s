PROTO_0:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["shouldLog"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 FASTCALL1                        TYPEOF R0 ; [+3]
        7 MOVE                             R2 R0
        8 GETIMPORT                        R1 K2 [typeof]
       10 CALL                             R1 1 1
       11 JUMPIFNOTEQKS                    R1 K3 ["string"] ; [+15]
       13 GETIMPORT                        R1 K5 [print]
       15 LOADK                            R2 K6 ["[%*] %*"]
       16 GETUPVAL                         R4 1
       17 GETIMPORT                        R5 K8 [string.format]
       19 MOVE                             R6 R0
       20 GETVARARGS                       R7 -1
       21 CALL                             R5 -1 1
       22 NAMECALL                         R2 R2 K7 ["format"]
       24 CALL                             R2 3 1
       25 CALL                             R1 1 0
       26 RETURN                           R0 0
       27 GETIMPORT                        R1 K5 [print]
       29 LOADK                            R2 K9 ["[%*]"]
       30 GETUPVAL                         R4 1
       31 NAMECALL                         R2 R2 K7 ["format"]
       33 CALL                             R2 2 1
       34 MOVE                             R3 R0
       35 GETVARARGS                       R4 -1
       36 CALL                             R3 -1 -1
       37 CALL                             R1 -1 0
       38 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ultimate-list"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["DebugFlags"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_1]
       13 CAPTURE                          VAL R1
       14 RETURN                           R2 1
