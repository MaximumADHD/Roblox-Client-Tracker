PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Provider"]
        4 DUPTABLE                         R3 K2 [{"value"}]
        5 SETTABLEKS                       R0 R3 K1 ["value"]
        7 GETTABLEKS                       R4 R0 K3 ["children"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["RpcTypes"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K6 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["Signal"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Util"]
       30 GETTABLEKS                       R5 R5 K11 ["createUnimplemented"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R1 K12 ["createElement"]
       35 DUPTABLE                         R6 K17 [{"showContextMenu", "actionTriggeredSignal", "showStreamingContextMenu", "streamingActionTriggeredSignal"}]
       36 MOVE                             R7 R4
       37 LOADK                            R8 K13 ["showContextMenu"]
       38 CALL                             R7 1 1
       39 SETTABLEKS                       R7 R6 K13 ["showContextMenu"]
       41 GETTABLEKS                       R7 R3 K18 ["new"]
       43 CALL                             R7 0 1
       44 SETTABLEKS                       R7 R6 K14 ["actionTriggeredSignal"]
       46 MOVE                             R7 R4
       47 LOADK                            R8 K15 ["showStreamingContextMenu"]
       48 CALL                             R7 1 1
       49 SETTABLEKS                       R7 R6 K15 ["showStreamingContextMenu"]
       51 GETTABLEKS                       R7 R3 K18 ["new"]
       53 CALL                             R7 0 1
       54 SETTABLEKS                       R7 R6 K16 ["streamingActionTriggeredSignal"]
       56 GETTABLEKS                       R7 R1 K19 ["createContext"]
       58 MOVE                             R8 R6
       59 CALL                             R7 1 1
       60 DUPCLOSURE                       R8 K20 [PROTO_0]
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R7
       63 DUPTABLE                         R9 K23 [{"Context", "Provider"}]
       64 SETTABLEKS                       R7 R9 K21 ["Context"]
       66 SETTABLEKS                       R8 R9 K22 ["Provider"]
       68 RETURN                           R9 1
