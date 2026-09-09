PROTO_0:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R2 K2 ["Calling unimplemented function %*"]
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["AssistantHarness"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["DMNetworking"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ModelContextProtocol"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Bridges"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Guest"]
       33 GETTABLEKS                       R7 R7 K12 ["Environment"]
       35 CALL                             R6 1 1
       36 GETTABLEKS                       R7 R2 K13 ["Engine"]
       38 GETTABLEKS                       R7 R7 K14 ["Providers"]
       40 GETTABLEKS                       R7 R7 K15 ["ToolNames"]
       42 GETIMPORT                        R8 K6 [require]
       44 GETTABLEKS                       R9 R0 K16 ["Types"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K6 [require]
       49 GETTABLEKS                       R10 R0 K17 ["Components"]
       51 GETTABLEKS                       R10 R10 K18 ["UIToolRegistry"]
       53 CALL                             R9 1 1
       54 NEWTABLE                         R10 2 0
       56 SETTABLEKS                       R7 R10 K15 ["ToolNames"]
       58 DUPCLOSURE                       R11 K19 [PROTO_1]
       59 SETTABLEKS                       R11 R10 K20 ["createUnimplemented"]
       61 RETURN                           R10 1
