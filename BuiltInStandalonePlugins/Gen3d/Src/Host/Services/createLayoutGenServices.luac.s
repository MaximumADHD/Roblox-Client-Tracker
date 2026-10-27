PROTO_0:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K4 [{"Success", "StatusCode", "StatusMessage", "Body"}]
        2 MOVE                             R4 R0
        3 JUMPIFNOT                        R4 ; [+13]
        4 LOADB                            R4 0
        5 GETTABLEKS                       R5 R1 K1 ["StatusCode"]
        7 LOADN                            R6 200
        8 JUMPIFNOTLE                      R6 R5 ; [+8]
       10 GETTABLEKS                       R5 R1 K1 ["StatusCode"]
       12 LOADN                            R6 300
       13 JUMPIFLT                         R5 R6 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 SETTABLEKS                       R4 R3 K0 ["Success"]
       19 GETTABLEKS                       R4 R1 K1 ["StatusCode"]
       21 SETTABLEKS                       R4 R3 K1 ["StatusCode"]
       23 GETTABLEKS                       R4 R1 K2 ["StatusMessage"]
       25 JUMPIF                           R4 ; [+2]
       26 GETTABLEKS                       R4 R1 K5 ["HttpError"]
       28 SETTABLEKS                       R4 R3 K2 ["StatusMessage"]
       30 GETTABLEKS                       R4 R1 K3 ["Body"]
       32 SETTABLEKS                       R4 R3 K3 ["Body"]
       34 CALL                             R2 1 0
       35 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R2 R2 K0 ["Start"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["RequestInternal"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["new"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CALL                             R2 1 1
       11 NAMECALL                         R2 R2 K2 ["await"]
       13 CALL                             R2 1 2
       14 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getEngineFeatureAssistantExecuteLuauArguments"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 2
        7 LOADNIL                          R3
        8 NAMECALL                         R0 R0 K1 ["RunCodeAsync"]
       10 CALL                             R0 3 -1
       11 RETURN                           R0 -1
       12 GETUPVAL                         R0 1
       13 GETUPVAL                         R2 2
       14 NAMECALL                         R0 R0 K2 ["RunBoundCodeAsync"]
       16 CALL                             R0 2 -1
       17 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AssistantBridge"]
        2 NAMECALL                         R1 R1 K1 ["GetPluginComponent"]
        4 CALL                             R1 2 1
        5 MOVE                             R4 R0
        6 NAMECALL                         R2 R1 K2 ["BindCodeAsync"]
        8 CALL                             R2 2 1
        9 MOVE                             R3 R2
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R2
       14 RETURN                           R3 2

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AssistantBridge"]
        2 NAMECALL                         R1 R1 K1 ["GetPluginComponent"]
        4 CALL                             R1 2 1
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K2 ["StopCodeAsync"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 NAMECALL                         R2 R2 K0 ["UpdateSourceAsync"]
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 DUPTABLE                         R2 K5 [{"sceneGeneration", "http", "executeLuau", "applyScriptSourceDirectly", "capabilities"}]
        3 GETUPVAL                         R3 0
        4 CALL                             R3 0 1
        5 SETTABLEKS                       R3 R2 K0 ["sceneGeneration"]
        7 DUPTABLE                         R3 K7 [{"requestAsync"}]
        8 GETUPVAL                         R4 1
        9 SETTABLEKS                       R4 R3 K6 ["requestAsync"]
       11 SETTABLEKS                       R3 R2 K1 ["http"]
       13 DUPTABLE                         R3 K10 [{"loadCode", "stopCode"}]
       14 NEWCLOSURE                       R4 P1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U2
       17 SETTABLEKS                       R4 R3 K8 ["loadCode"]
       19 NEWCLOSURE                       R4 P2
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R4 R3 K9 ["stopCode"]
       23 SETTABLEKS                       R3 R2 K2 ["executeLuau"]
       25 DUPCLOSURE                       R3 K11 [PROTO_8]
       26 CAPTURE                          UPVAL U3
       27 SETTABLEKS                       R3 R2 K3 ["applyScriptSourceDirectly"]
       29 DUPTABLE                         R3 K13 [{"debugLog"}]
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R4 R4 K14 ["getFFlagDebugLogAssistantUI"]
       33 CALL                             R4 0 1
       34 SETTABLEKS                       R4 R3 K12 ["debugLog"]
       36 SETTABLEKS                       R3 R2 K4 ["capabilities"]
       38 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ScriptEditorService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["Gen3d"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["Gen3dCore"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R2 K11 ["Packages"]
       30 GETTABLEKS                       R5 R5 K13 ["Promise"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R2 K14 ["Src"]
       37 GETTABLEKS                       R6 R6 K15 ["Host"]
       39 GETTABLEKS                       R6 R6 K16 ["Services"]
       41 GETTABLEKS                       R6 R6 K17 ["createSceneGenerationService"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K10 [require]
       46 GETTABLEKS                       R7 R2 K18 ["Bin"]
       48 GETTABLEKS                       R7 R7 K19 ["Common"]
       50 GETTABLEKS                       R7 R7 K20 ["defineLuaFlags"]
       52 CALL                             R6 1 1
       53 DUPCLOSURE                       R7 K21 [PROTO_2]
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R4
       56 DUPCLOSURE                       R8 K22 [PROTO_9]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R1
       61 RETURN                           R8 1
