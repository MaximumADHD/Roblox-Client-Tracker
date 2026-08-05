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
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Bridges"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K6 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["DMNetworking"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Guest"]
       30 GETTABLEKS                       R5 R5 K11 ["Environment"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Hooks"]
       37 GETTABLEKS                       R6 R6 K13 ["RESTRICTED_ExternalHooks"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K6 ["Parent"]
       44 GETTABLEKS                       R7 R7 K14 ["ModelContextProtocol"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R1 K15 ["Engine"]
       49 GETTABLEKS                       R7 R7 K16 ["Providers"]
       51 GETTABLEKS                       R7 R7 K17 ["ToolNames"]
       53 GETIMPORT                        R8 K5 [require]
       55 GETTABLEKS                       R9 R0 K18 ["Types"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K5 [require]
       60 GETTABLEKS                       R10 R0 K19 ["Components"]
       62 GETTABLEKS                       R10 R10 K20 ["UIToolRegistry"]
       64 CALL                             R9 1 1
       65 NEWTABLE                         R10 2 0
       67 SETTABLEKS                       R7 R10 K17 ["ToolNames"]
       69 DUPCLOSURE                       R11 K21 [PROTO_1]
       70 SETTABLEKS                       R11 R10 K22 ["createUnimplemented"]
       72 RETURN                           R10 1
