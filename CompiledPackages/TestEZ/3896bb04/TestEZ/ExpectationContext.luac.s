PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 SETTABLE                         R6 R1 R5
        8 FORGLOOP                         R2 2 ; [-2]
       10 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"_extensions"}]
        1 JUMPIFNOT                        R0 ; [+14]
        2 GETTABLEKS                       R3 R0 K0 ["_extensions"]
        4 NEWTABLE                         R4 0 0
        6 GETIMPORT                        R5 K3 [pairs]
        8 MOVE                             R6 R3
        9 CALL                             R5 1 3
       10 FORGPREP_NEXT                    R5
       11 SETTABLE                         R9 R4 R8
       12 FORGLOOP                         R5 2 ; [-2]
       14 MOVE                             R2 R4
       15 JUMPIF                           R2 ; [+2]
       16 NEWTABLE                         R2 0 0
       18 SETTABLEKS                       R2 R1 K0 ["_extensions"]
       20 GETUPVAL                         R4 0
       21 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       23 MOVE                             R3 R1
       24 GETIMPORT                        R2 K5 [setmetatable]
       26 CALL                             R2 2 1
       27 RETURN                           R2 1

PROTO_2:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["new"]
        4 GETVARARGS                       R2 -1
        5 CALL                             R1 -1 1
        6 GETTABLEKS                       R3 R0 K1 ["_extensions"]
        8 NAMECALL                         R1 R1 K2 ["extend"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_3:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 GETTABLEKS                       R10 R0 K2 ["_extensions"]
        7 GETTABLE                         R9 R10 R5
        8 JUMPIFEQKNIL                     R9 ; [+2]
       10 LOADB                            R8 0 +1
       11 LOADB                            R8 1
       12 GETIMPORT                        R9 K5 [string.format]
       14 LOADK                            R10 K6 ["Cannot reassign %q in expect.extend"]
       15 MOVE                             R11 R5
       16 CALL                             R9 2 -1
       17 FASTCALL                         ASSERT ; [+2]
       18 GETIMPORT                        R7 K8 [assert]
       20 CALL                             R7 -1 0
       21 GETUPVAL                         R8 0
       22 MOVE                             R9 R5
       23 CALL                             R8 1 1
       24 GETIMPORT                        R9 K5 [string.format]
       26 LOADK                            R10 K9 ["Cannot overwrite matcher %q; it already exists"]
       27 MOVE                             R11 R5
       28 CALL                             R9 2 -1
       29 FASTCALL                         ASSERT ; [+2]
       30 GETIMPORT                        R7 K8 [assert]
       32 CALL                             R7 -1 0
       33 GETTABLEKS                       R7 R0 K2 ["_extensions"]
       35 SETTABLE                         R6 R7 R5
       36 FORGLOOP                         R2 2 ; [-32]
       38 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Expectation"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K6 ["checkMatcherNameCollisions"]
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 NEWTABLE                         R3 4 0
       15 SETTABLEKS                       R3 R3 K8 ["__index"]
       17 DUPCLOSURE                       R4 K9 [PROTO_1]
       18 CAPTURE                          VAL R3
       19 SETTABLEKS                       R4 R3 K10 ["new"]
       21 DUPCLOSURE                       R4 K11 [PROTO_2]
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R4 R3 K12 ["startExpectationChain"]
       25 DUPCLOSURE                       R4 K13 [PROTO_3]
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R4 R3 K14 ["extend"]
       29 RETURN                           R3 1
