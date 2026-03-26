PROTO_0:
        0 DUPTABLE                         R2 K1 [{"value"}]
        1 DUPTABLE                         R3 K3 [{"value", "multiple"}]
        2 SETTABLEKS                       R1 R3 K0 ["value"]
        4 LOADB                            R4 0
        5 SETTABLEKS                       R4 R3 K2 ["multiple"]
        7 SETTABLEKS                       R3 R2 K0 ["value"]
        9 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R4 R1 K0 ["value"]
        2 GETTABLEKS                       R3 R4 K1 ["multiple"]
        4 JUMPIFNOT                        R3 ; [+2]
        5 LOADB                            R3 1
        6 RETURN                           R3 1
        7 GETTABLEKS                       R4 R1 K0 ["value"]
        9 GETTABLEKS                       R3 R4 K0 ["value"]
       11 JUMPIFEQ                         R3 R2 ; [+6]
       13 GETUPVAL                         R3 0
       14 SETTABLEKS                       R3 R1 K0 ["value"]
       16 LOADB                            R3 1
       17 RETURN                           R3 1
       18 LOADB                            R3 0
       19 RETURN                           R3 1

PROTO_2:
        0 JUMPIFEQKS                       R4 K0 ["value"] ; [+2]
        2 LOADB                            R7 0 +1
        3 LOADB                            R7 1
        4 FASTCALL2K                       ASSERT R7 K1 ; [+4]
        6 LOADK                            R8 K1 ["Basic aggregator does not support sub-parts"]
        7 GETIMPORT                        R6 K3 [assert]
        9 CALL                             R6 2 0
       10 MOVE                             R8 R2
       11 LENGTH                           R6 R1
       12 LOADN                            R7 1
       13 FORNPREP                         R6
       14 SETTABLE                         R5 R1 R8
       15 FORNLOOP                         R6
       16 LOADNIL                          R6
       17 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["RpcTypes"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETTABLEKS                       R5 R0 K8 ["Util"]
       21 GETTABLEKS                       R4 R5 K9 ["genericMultiplePart"]
       23 CALL                             R3 1 1
       24 DUPCLOSURE                       R4 K10 [PROTO_0]
       25 DUPCLOSURE                       R5 K11 [PROTO_1]
       26 CAPTURE                          VAL R3
       27 DUPCLOSURE                       R6 K12 [PROTO_2]
       28 DUPTABLE                         R7 K16 [{"initParts", "addToAggregation", "setPart"}]
       29 SETTABLEKS                       R4 R7 K13 ["initParts"]
       31 SETTABLEKS                       R5 R7 K14 ["addToAggregation"]
       33 SETTABLEKS                       R6 R7 K15 ["setPart"]
       35 RETURN                           R7 1
