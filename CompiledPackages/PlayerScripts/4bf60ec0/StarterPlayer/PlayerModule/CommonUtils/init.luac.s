PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_mocks"]
        3 SETTABLE                         R1 R2 R0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_mocks"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETIMPORT                        R1 K2 [require]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["_mocks"]
       10 GETTABLE                         R2 R3 R0
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1
       13 GETIMPORT                        R1 K4 [script]
       15 MOVE                             R3 R0
       16 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       18 CALL                             R1 2 1
       19 JUMPIFNOT                        R1 ; [+10]
       20 GETIMPORT                        R1 K2 [require]
       22 GETIMPORT                        R2 K4 [script]
       24 MOVE                             R4 R0
       25 NAMECALL                         R2 R2 K5 ["FindFirstChild"]
       27 CALL                             R2 2 -1
       28 CALL                             R1 -1 -1
       29 RETURN                           R1 -1
       30 LOADB                            R2 0
       31 LOADK                            R4 K6 ["Util does not exist: "]
       32 MOVE                             R5 R0
       33 CONCAT                           R3 R4 R5
       34 FASTCALL2                        ASSERT R2 R3 ; [+3]
       36 GETIMPORT                        R1 K8 [assert]
       38 CALL                             R1 2 0
       39 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 NEWTABLE                         R1 0 0
        5 SETTABLEKS                       R1 R0 K0 ["_mocks"]
        7 DUPCLOSURE                       R1 K1 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K2 ["mock"]
       11 DUPCLOSURE                       R1 K3 [PROTO_1]
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K4 ["get"]
       15 RETURN                           R0 1
