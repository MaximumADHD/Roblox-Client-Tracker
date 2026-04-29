PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["Name"]
        4 GETUPVAL                         R5 1
        5 GETTABLE                         R4 R5 R1
        6 GETTABLE                         R3 R4 R2
        7 JUMPIFNOT                        R3 ; [+1]
        8 RETURN                           R3 1
        9 GETUPVAL                         R7 1
       10 GETUPVAL                         R9 2
       11 GETTABLEKS                       R8 R9 K1 ["Default"]
       13 GETTABLE                         R6 R7 R8
       14 GETTABLE                         R5 R6 R2
       15 LOADK                            R7 K2 ["%* has no associated BuilderIcon"]
       16 MOVE                             R9 R2
       17 NAMECALL                         R7 R7 K3 ["format"]
       19 CALL                             R7 2 1
       20 MOVE                             R6 R7
       21 FASTCALL2                        ASSERT R5 R6 ; [+3]
       23 GETIMPORT                        R4 K5 [assert]
       25 CALL                             R4 2 0
       26 GETUPVAL                         R6 1
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R7 R8 K1 ["Default"]
       30 GETTABLE                         R5 R6 R7
       31 GETTABLE                         R4 R5 R2
       32 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["KeycodeMappings"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["Platform"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R5 K3 [script]
       23 GETTABLEKS                       R4 R5 K4 ["Parent"]
       25 GETTABLEKS                       R3 R4 K7 ["getInputPlatform"]
       27 CALL                             R2 1 1
       28 DUPCLOSURE                       R3 K8 [PROTO_0]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R1
       32 RETURN                           R3 1
