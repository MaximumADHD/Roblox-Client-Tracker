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
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K4 ["FFlagAssistantRestoreCameraStateInExec"]
       16 JUMPIFNOT                        R4 ; [+12]
       17 GETIMPORT                        R4 K6 [workspace]
       19 GETTABLEKS                       R4 R4 K7 ["CurrentCamera"]
       21 JUMPIFNOT                        R4 ; [+7]
       22 GETIMPORT                        R3 K6 [workspace]
       24 GETTABLEKS                       R3 R3 K7 ["CurrentCamera"]
       26 GETTABLEKS                       R3 R3 K8 ["CameraType"]
       28 JUMP                             ; [+1]
       29 LOADNIL                          R3
       30 GETIMPORT                        R4 K10 [pcall]
       32 NEWCLOSURE                       R5 P0
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R0
       35 CALL                             R4 1 2
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K4 ["FFlagAssistantRestoreCameraStateInExec"]
       39 JUMPIFNOT                        R6 ; [+36]
       40 JUMPIFNOT                        R3 ; [+35]
       41 GETIMPORT                        R6 K6 [workspace]
       43 GETTABLEKS                       R6 R6 K7 ["CurrentCamera"]
       45 JUMPIFNOT                        R6 ; [+30]
       46 GETIMPORT                        R6 K6 [workspace]
       48 GETTABLEKS                       R6 R6 K7 ["CurrentCamera"]
       50 GETTABLEKS                       R6 R6 K8 ["CameraType"]
       52 JUMPIFEQ                         R6 R3 ; [+23]
       54 GETUPVAL                         R6 1
       55 GETTABLEKS                       R6 R6 K11 ["FFlagAssistantRestoreCameraStateInExecWarn"]
       57 JUMPIFNOT                        R6 ; [+12]
       58 GETIMPORT                        R6 K13 [warn]
       60 LOADK                            R7 K14 ["The execute_luau changed camera type. Resetting from"]
       61 GETIMPORT                        R8 K6 [workspace]
       63 GETTABLEKS                       R8 R8 K7 ["CurrentCamera"]
       65 GETTABLEKS                       R8 R8 K8 ["CameraType"]
       67 LOADK                            R9 K15 ["back to"]
       68 MOVE                             R10 R3
       69 CALL                             R6 4 0
       70 GETIMPORT                        R6 K6 [workspace]
       72 GETTABLEKS                       R6 R6 K7 ["CurrentCamera"]
       74 SETTABLEKS                       R3 R6 K8 ["CameraType"]
       76 GETTABLEKS                       R6 R1 K1 ["initArgs"]
       78 GETTABLEKS                       R6 R6 K2 ["environment"]
       80 GETTABLEKS                       R6 R6 K16 ["endRecording"]
       82 MOVE                             R7 R2
       83 CALL                             R6 1 0
       84 DUPTABLE                         R6 K19 [{"success", "result"}]
       85 SETTABLEKS                       R4 R6 K17 ["success"]
       87 GETUPVAL                         R7 3
       88 GETTABLEKS                       R7 R7 K20 ["serializeToString"]
       90 MOVE                             R8 R5
       91 GETUPVAL                         R9 1
       92 GETTABLEKS                       R9 R9 K21 ["FIntExecuteLuauMaxStringLength"]
       94 GETUPVAL                         R10 1
       95 GETTABLEKS                       R10 R10 K22 ["FIntExecuteLuauMaxJsonLength"]
       97 CALL                             R7 3 1
       98 SETTABLEKS                       R7 R6 K18 ["result"]
      100 RETURN                           R6 1

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
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 DUPCLOSURE                       R8 K19 [PROTO_3]
       49 CAPTURE                          VAL R2
       50 DUPTABLE                         R9 K23 [{"loadCodeAsync", "runCodeAsync", "stopCode"}]
       51 SETTABLEKS                       R6 R9 K20 ["loadCodeAsync"]
       53 SETTABLEKS                       R7 R9 K21 ["runCodeAsync"]
       55 SETTABLEKS                       R8 R9 K22 ["stopCode"]
       57 DUPTABLE                         R10 K25 [{"bridge"}]
       58 SETTABLEKS                       R9 R10 K24 ["bridge"]
       60 RETURN                           R10 1
