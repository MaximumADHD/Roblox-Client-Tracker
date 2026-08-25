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
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K13 ["Hooks"]
       40 GETTABLEKS                       R8 R8 K14 ["RESTRICTED_ExternalHooks"]
       42 CALL                             R7 1 1
       43 GETTABLEKS                       R8 R2 K15 ["Engine"]
       45 GETTABLEKS                       R8 R8 K16 ["Providers"]
       47 GETTABLEKS                       R8 R8 K17 ["ToolNames"]
       49 GETIMPORT                        R9 K6 [require]
       51 GETTABLEKS                       R10 R0 K18 ["Types"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K6 [require]
       56 GETTABLEKS                       R11 R0 K19 ["Components"]
       58 GETTABLEKS                       R11 R11 K20 ["UIToolRegistry"]
       60 CALL                             R10 1 1
       61 NEWTABLE                         R11 2 0
       63 SETTABLEKS                       R8 R11 K17 ["ToolNames"]
       65 DUPCLOSURE                       R12 K21 [PROTO_1]
       66 SETTABLEKS                       R12 R11 K22 ["createUnimplemented"]
       68 RETURN                           R11 1
