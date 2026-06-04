PROTO_0:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [tostring]
        4 CALL                             R3 1 1
        5 FASTCALL1                        TOSTRING R1 ; [+3]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R4 K1 [tostring]
        9 CALL                             R4 1 1
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 FASTCALL1                        TYPEOF R2 ; [+3]
        5 MOVE                             R4 R2
        6 GETIMPORT                        R3 K1 [typeof]
        8 CALL                             R3 1 1
        9 JUMPIFEQKS                       R3 K2 ["number"] ; [+13]
       11 GETIMPORT                        R3 K4 [error]
       13 LOADK                            R4 K5 ["invalid result from compare function, expected number but got %s"]
       14 FASTCALL1                        TYPEOF R2 ; [+3]
       15 MOVE                             R7 R2
       16 GETIMPORT                        R6 K1 [typeof]
       18 CALL                             R6 1 1
       19 NAMECALL                         R4 R4 K6 ["format"]
       21 CALL                             R4 2 -1
       22 CALL                             R3 -1 0
       23 LOADN                            R4 0
       24 JUMPIFLT                         R2 R4 ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R1 ; [+14]
        3 FASTCALL1                        TYPEOF R1 ; [+3]
        4 MOVE                             R4 R1
        5 GETIMPORT                        R3 K1 [typeof]
        7 CALL                             R3 1 1
        8 JUMPIFEQKS                       R3 K2 ["function"] ; [+5]
       10 GETIMPORT                        R3 K4 [error]
       12 LOADK                            R4 K5 ["invalid argument to Array.sort: compareFunction must be a function"]
       13 CALL                             R3 1 0
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          VAL R1
       16 GETIMPORT                        R3 K8 [table.sort]
       18 MOVE                             R4 R0
       19 MOVE                             R5 R2
       20 CALL                             R3 2 0
       21 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_2]
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1
