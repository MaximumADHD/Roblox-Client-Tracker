PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R7 R0
        2 GETIMPORT                        R6 K1 [type]
        4 CALL                             R6 1 1
        5 MOVE                             R4 R6
        6 FASTCALL1                        TOSTRING R0 ; [+3]
        7 MOVE                             R6 R0
        8 GETIMPORT                        R5 K3 [tostring]
       10 CALL                             R5 1 1
       11 CONCAT                           R3 R4 R5
       12 FASTCALL1                        TYPE R1 ; [+3]
       13 MOVE                             R8 R1
       14 GETIMPORT                        R7 K1 [type]
       16 CALL                             R7 1 1
       17 MOVE                             R5 R7
       18 FASTCALL1                        TOSTRING R1 ; [+3]
       19 MOVE                             R7 R1
       20 GETIMPORT                        R6 K3 [tostring]
       22 CALL                             R6 1 1
       23 CONCAT                           R4 R5 R6
       24 JUMPIFLT                         R3 R4 ; [+2]
       26 LOADB                            R2 0 +1
       27 LOADB                            R2 1
       28 RETURN                           R2 1

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
        1 JUMPIFEQKNIL                     R1 ; [+17]
        3 GETUPVAL                         R3 1
        4 JUMPIFEQ                         R1 R3 ; [+14]
        6 FASTCALL1                        TYPEOF R1 ; [+3]
        7 MOVE                             R4 R1
        8 GETIMPORT                        R3 K1 [typeof]
       10 CALL                             R3 1 1
       11 JUMPIFEQKS                       R3 K2 ["function"] ; [+5]
       13 GETIMPORT                        R3 K4 [error]
       15 LOADK                            R4 K5 ["invalid argument to Array.sort: compareFunction must be a function"]
       16 CALL                             R3 1 0
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          VAL R1
       19 GETIMPORT                        R3 K8 [table.sort]
       21 MOVE                             R4 R0
       22 MOVE                             R5 R2
       23 CALL                             R3 2 0
       24 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K2 ["Parent"]
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R4 R1 K5 ["Object"]
       13 GETTABLEKS                       R4 R4 K6 ["None"]
       15 CALL                             R3 1 1
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R2 K7 ["ES7Types"]
       20 CALL                             R4 1 1
       21 DUPCLOSURE                       R5 K8 [PROTO_0]
       22 DUPCLOSURE                       R6 K9 [PROTO_2]
       23 CAPTURE                          VAL R5
       24 CAPTURE                          VAL R3
       25 RETURN                           R6 1
