PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 JUMPIFEQKNIL                     R1 ; [+17]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["sort"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["filter"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K3 ["keys"]
       13 MOVE                             R5 R1
       14 CALL                             R4 1 1
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R1
       17 CALL                             R3 2 -1
       18 CALL                             R2 -1 1
       19 RETURN                           R2 1
       20 NEWTABLE                         R2 0 0
       22 RETURN                           R2 1

PROTO_2:
        0 ADDK                             R3 R3 K0 [1]
        1 GETTABLEKS                       R7 R1 K1 ["maxDepth"]
        3 JUMPIFNOTLT                      R7 R3 ; [+7]
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R7 R0 K2 ["type"]
        8 MOVE                             R8 R1
        9 CALL                             R6 2 1
       10 RETURN                           R6 1
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R7 R0 K2 ["type"]
       14 GETTABLEKS                       R9 R0 K3 ["props"]
       16 JUMPIFEQKNIL                     R9 ; [+17]
       18 GETUPVAL                         R8 2
       19 GETUPVAL                         R9 3
       20 MOVE                             R10 R0
       21 CALL                             R9 1 1
       22 GETTABLEKS                       R10 R0 K3 ["props"]
       24 MOVE                             R11 R1
       25 MOVE                             R13 R2
       26 GETTABLEKS                       R14 R1 K4 ["indent"]
       28 CONCAT                           R12 R13 R14
       29 MOVE                             R13 R3
       30 MOVE                             R14 R4
       31 MOVE                             R15 R5
       32 CALL                             R8 7 1
       33 JUMP                             ; [+1]
       34 LOADK                            R8 K5 [""]
       35 GETTABLEKS                       R10 R0 K6 ["children"]
       37 JUMPIFEQKNIL                     R10 ; [+14]
       39 GETUPVAL                         R9 4
       40 GETTABLEKS                       R10 R0 K6 ["children"]
       42 MOVE                             R11 R1
       43 MOVE                             R13 R2
       44 GETTABLEKS                       R14 R1 K4 ["indent"]
       46 CONCAT                           R12 R13 R14
       47 MOVE                             R13 R3
       48 MOVE                             R14 R4
       49 MOVE                             R15 R5
       50 CALL                             R9 6 1
       51 JUMP                             ; [+1]
       52 LOADK                            R9 K5 [""]
       53 MOVE                             R10 R1
       54 MOVE                             R11 R2
       55 CALL                             R6 5 1
       56 RETURN                           R6 1

PROTO_3:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+8]
        8 GETTABLEKS                       R2 R0 K3 ["$$typeof"]
       10 GETUPVAL                         R3 0
       11 JUMPIFEQ                         R2 R3 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Array"]
       16 GETTABLEKS                       R4 R2 K7 ["Object"]
       18 GETIMPORT                        R5 K4 [require]
       20 GETTABLEKS                       R6 R1 K8 ["Symbol"]
       22 CALL                             R5 1 1
       23 NEWTABLE                         R6 4 0
       25 GETIMPORT                        R7 K4 [require]
       27 GETIMPORT                        R8 K1 [script]
       29 GETTABLEKS                       R8 R8 K2 ["Parent"]
       31 GETTABLEKS                       R8 R8 K2 ["Parent"]
       33 GETTABLEKS                       R8 R8 K9 ["Types"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K4 [require]
       38 GETIMPORT                        R9 K1 [script]
       40 GETTABLEKS                       R9 R9 K2 ["Parent"]
       42 GETTABLEKS                       R9 R9 K10 ["lib"]
       44 GETTABLEKS                       R9 R9 K11 ["markup"]
       46 CALL                             R8 1 1
       47 GETTABLEKS                       R9 R8 K12 ["printChildren"]
       49 GETTABLEKS                       R10 R8 K13 ["printElement"]
       51 GETTABLEKS                       R11 R8 K14 ["printElementAsLeaf"]
       53 GETTABLEKS                       R12 R8 K15 ["printProps"]
       55 GETTABLEKS                       R13 R5 K16 ["for_"]
       57 LOADK                            R14 K17 ["react.test.json"]
       58 CALL                             R13 1 1
       59 DUPCLOSURE                       R14 K18 [PROTO_1]
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R4
       62 DUPCLOSURE                       R15 K19 [PROTO_2]
       63 CAPTURE                          VAL R11
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R12
       66 CAPTURE                          VAL R14
       67 CAPTURE                          VAL R9
       68 SETTABLEKS                       R15 R6 K20 ["serialize"]
       70 DUPCLOSURE                       R16 K21 [PROTO_3]
       71 CAPTURE                          VAL R13
       72 SETTABLEKS                       R16 R6 K22 ["test"]
       74 DUPTABLE                         R17 K23 [{"serialize", "test"}]
       75 SETTABLEKS                       R15 R17 K20 ["serialize"]
       77 SETTABLEKS                       R16 R17 K22 ["test"]
       79 SETTABLEKS                       R17 R6 K24 ["default"]
       81 RETURN                           R6 1
