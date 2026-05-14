PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["callCount"]
        5 ADDK                             R1 R2 K0 [1]
        6 SETTABLEKS                       R1 R0 K1 ["callCount"]
        8 GETUPVAL                         R0 0
        9 NEWTABLE                         R1 0 0
       11 GETVARARGS                       R2 -1
       12 SETLIST                          R1 R2 -1 [1]
       14 SETTABLEKS                       R1 R0 K2 ["values"]
       16 GETUPVAL                         R0 0
       17 LOADK                            R2 K3 ["#"]
       18 FASTCALL1                        SELECT_VARARG R2 ; [+3]
       19 GETIMPORT                        R1 K5 [select]
       21 GETVARARGS                       R3 -1
       22 CALL                             R1 -1 1
       23 SETTABLEKS                       R1 R0 K6 ["valuesLength"]
       25 GETUPVAL                         R0 1
       26 JUMPIFEQKNIL                     R0 ; [+5]
       28 GETUPVAL                         R0 1
       29 GETVARARGS                       R1 -1
       30 CALL                             R0 -1 -1
       31 RETURN                           R0 -1
       32 RETURN                           R0 0

PROTO_1:
        0 PREPVARARGS                      1
        1 LOADK                            R2 K0 ["#"]
        2 FASTCALL1                        SELECT_VARARG R2 ; [+3]
        3 GETIMPORT                        R1 K2 [select]
        5 GETVARARGS                       R3 -1
        6 CALL                             R1 -1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K3 ["valuesLength"]
       10 LOADK                            R5 K4 ["length of expected values differs from stored values"]
       11 FASTCALL3                        ASSERT R3 R1 R5
       13 MOVE                             R4 R1
       14 GETIMPORT                        R2 K6 [assert]
       16 CALL                             R2 3 0
       17 LOADN                            R4 1
       18 MOVE                             R2 R1
       19 LOADN                            R3 1
       20 FORNPREP                         R2
       21 FASTCALL1                        SELECT_VARARG R4 ; [+4]
       22 GETIMPORT                        R5 K2 [select]
       24 MOVE                             R6 R4
       25 GETVARARGS                       R7 -1
       26 CALL                             R5 -1 1
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K7 ["values"]
       30 GETTABLE                         R7 R8 R4
       31 LOADK                            R9 K8 ["value differs"]
       32 FASTCALL3                        ASSERT R7 R5 R9
       34 MOVE                             R8 R5
       35 GETIMPORT                        R6 K6 [assert]
       37 CALL                             R6 3 0
       38 FORNLOOP                         R2
       39 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K1 [error]
        2 LOADK                            R3 K2 ["%q is not a valid member of spy"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 -1
        7 CALL                             R2 -1 0
        8 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K3 [{"callCount", "values", "valuesLength"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["callCount"]
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R1 K1 ["values"]
        8 LOADN                            R2 0
        9 SETTABLEKS                       R2 R1 K2 ["valuesLength"]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R1 K4 ["value"]
       16 NEWCLOSURE                       R2 P1
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R2 R1 K5 ["assertCalledWith"]
       20 DUPTABLE                         R4 K7 [{"__index"}]
       21 DUPCLOSURE                       R5 K8 [PROTO_2]
       22 SETTABLEKS                       R5 R4 K6 ["__index"]
       24 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       26 MOVE                             R3 R1
       27 GETIMPORT                        R2 K10 [setmetatable]
       29 CALL                             R2 2 0
       30 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
