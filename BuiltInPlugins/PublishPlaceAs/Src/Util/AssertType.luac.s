PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R6 R0
        2 GETIMPORT                        R5 K1 [type]
        4 CALL                             R5 1 1
        5 JUMPIFEQ                         R5 R1 ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 MOVE                             R6 R2
       10 LOADK                            R7 K2 [" must be "]
       11 MOVE                             R8 R1
       12 LOADK                            R9 K3 [", received ("]
       13 FASTCALL1                        TYPE R0 ; [+3]
       14 MOVE                             R13 R0
       15 GETIMPORT                        R12 K1 [type]
       17 CALL                             R12 1 1
       18 MOVE                             R10 R12
       19 LOADK                            R11 K4 [")"]
       20 CONCAT                           R5 R6 R11
       21 FASTCALL2                        ASSERT R4 R5 ; [+3]
       23 GETIMPORT                        R3 K6 [assert]
       25 CALL                             R3 2 0
       26 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R4 1
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R6 R0
        3 GETIMPORT                        R5 K1 [type]
        5 CALL                             R5 1 1
        6 JUMPIFEQ                         R5 R1 ; [+10]
        8 FASTCALL1                        TYPE R0 ; [+3]
        9 MOVE                             R6 R0
       10 GETIMPORT                        R5 K1 [type]
       12 CALL                             R5 1 1
       13 JUMPIFEQKS                       R5 K2 ["nil"] ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 MOVE                             R6 R2
       18 LOADK                            R7 K3 [" must be "]
       19 MOVE                             R8 R1
       20 LOADK                            R9 K4 [" or nil, received ("]
       21 FASTCALL1                        TYPE R0 ; [+3]
       22 MOVE                             R13 R0
       23 GETIMPORT                        R12 K1 [type]
       25 CALL                             R12 1 1
       26 MOVE                             R10 R12
       27 LOADK                            R11 K5 [")"]
       28 CONCAT                           R5 R6 R11
       29 FASTCALL2                        ASSERT R4 R5 ; [+3]
       31 GETIMPORT                        R3 K7 [assert]
       33 CALL                             R3 2 0
       34 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["assertType"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["assertNullableType"]
        9 RETURN                           R0 1
