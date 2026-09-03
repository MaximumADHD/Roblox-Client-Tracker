PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["loadCode"]
        3 GETTABLEKS                       R3 R0 K1 ["code"]
        5 CALL                             R2 1 1
        6 FASTCALL2K                       ASSERT R2 K2 ; [+5]
        8 MOVE                             R4 R2
        9 LOADK                            R5 K2 ["Failed to load code"]
       10 GETIMPORT                        R3 K4 [assert]
       12 CALL                             R3 2 0
       13 DUPTABLE                         R3 K6 [{"id"}]
       14 SETTABLEKS                       R2 R3 K5 ["id"]
       16 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["runCode"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["id"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 LOADB                            R4 0
        2 NAMECALL                         R2 R2 K0 ["GenerateGUID"]
        4 CALL                             R2 2 1
        5 GETTABLEKS                       R3 R1 K1 ["initArgs"]
        7 GETTABLEKS                       R3 R3 K2 ["environment"]
        9 GETTABLEKS                       R3 R3 K3 ["startRecording"]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 0
       13 GETIMPORT                        R3 K5 [pcall]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R0
       18 CALL                             R3 1 2
       19 GETTABLEKS                       R5 R1 K1 ["initArgs"]
       21 GETTABLEKS                       R5 R5 K2 ["environment"]
       23 GETTABLEKS                       R5 R5 K6 ["endRecording"]
       25 MOVE                             R6 R2
       26 CALL                             R5 1 0
       27 DUPTABLE                         R5 K9 [{"success", "result"}]
       28 SETTABLEKS                       R3 R5 K7 ["success"]
       30 GETUPVAL                         R6 2
       31 GETTABLEKS                       R6 R6 K10 ["serializeToString"]
       33 MOVE                             R7 R4
       34 GETUPVAL                         R8 3
       35 GETTABLEKS                       R8 R8 K11 ["FIntExecuteLuauMaxStringLength"]
       37 GETUPVAL                         R9 3
       38 GETTABLEKS                       R9 R9 K12 ["FIntExecuteLuauMaxJsonLength"]
       40 CALL                             R6 3 1
       41 SETTABLEKS                       R6 R5 K8 ["result"]
       43 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["stopCode"]
        3 GETTABLEKS                       R3 R0 K1 ["id"]
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["CommandExecution"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Bridges"]
       24 GETTABLEKS                       R4 R4 K13 ["createExecuteLuauBridge"]
       26 GETTABLEKS                       R4 R4 K14 ["ExecuteLuauBridgeTypes"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R0 K15 ["Flags"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K10 ["Util"]
       38 GETTABLEKS                       R6 R6 K16 ["ToolUtils"]
       40 CALL                             R5 1 1
       41 DUPCLOSURE                       R6 K17 [PROTO_0]
       42 CAPTURE                          VAL R2
       43 DUPCLOSURE                       R7 K18 [PROTO_2]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R4
       48 DUPCLOSURE                       R8 K19 [PROTO_3]
       49 CAPTURE                          VAL R2
       50 DUPTABLE                         R9 K23 [{"loadCodeAsync", "runCodeAsync", "stopCode"}]
       51 SETTABLEKS                       R6 R9 K20 ["loadCodeAsync"]
       53 SETTABLEKS                       R7 R9 K21 ["runCodeAsync"]
       55 SETTABLEKS                       R8 R9 K22 ["stopCode"]
       57 DUPTABLE                         R10 K25 [{"bridge"}]
       58 SETTABLEKS                       R9 R10 K24 ["bridge"]
       60 RETURN                           R10 1
