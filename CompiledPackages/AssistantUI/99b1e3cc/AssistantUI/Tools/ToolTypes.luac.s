PROTO_0:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Calling unimplemented function %*"]
        3 GETUPVAL                         R3 0
        4 NAMECALL                         R1 R1 K3 ["format"]
        6 CALL                             R1 2 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

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
       21 GETTABLEKS                       R5 R1 K9 ["DMNetworkingOLD"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ModelContextProtocol"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R1 K11 ["Signal"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K6 [require]
       36 GETTABLEKS                       R8 R0 K12 ["Bridges"]
       38 CALL                             R7 1 1
       39 GETIMPORT                        R8 K6 [require]
       41 GETTABLEKS                       R9 R0 K13 ["Guest"]
       43 GETTABLEKS                       R9 R9 K14 ["Environment"]
       45 CALL                             R8 1 1
       46 GETTABLEKS                       R9 R2 K15 ["Engine"]
       48 GETTABLEKS                       R9 R9 K16 ["Providers"]
       50 GETTABLEKS                       R9 R9 K17 ["ToolNames"]
       52 GETIMPORT                        R10 K6 [require]
       54 GETTABLEKS                       R11 R0 K18 ["Types"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K6 [require]
       59 GETTABLEKS                       R12 R0 K19 ["Components"]
       61 GETTABLEKS                       R12 R12 K20 ["UIToolRegistry"]
       63 CALL                             R11 1 1
       64 NEWTABLE                         R12 2 0
       66 SETTABLEKS                       R9 R12 K17 ["ToolNames"]
       68 DUPCLOSURE                       R13 K21 [PROTO_1]
       69 SETTABLEKS                       R13 R12 K22 ["createUnimplemented"]
       71 RETURN                           R12 1
