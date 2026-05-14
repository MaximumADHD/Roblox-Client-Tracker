PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsServer"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+5]
        5 LOADB                            R0 1
        6 SETUPVAL                         R0 1
        7 LOADK                            R0 K1 ["Server"]
        8 SETUPVAL                         R0 2
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 3
       11 GETTABLEKS                       R0 R0 K2 ["waitForLocalPlayerReady"]
       13 CALL                             R0 0 1
       14 LOADB                            R1 0
       15 SETUPVAL                         R1 1
       16 GETTABLEKS                       R2 R0 K3 ["UserId"]
       18 MINUS                            R1 R2
       19 SETUPVAL                         R1 4
       20 LOADK                            R2 K4 ["Client:%*"]
       21 GETUPVAL                         R4 4
       22 NAMECALL                         R2 R2 K5 ["format"]
       24 CALL                             R2 2 1
       25 MOVE                             R1 R2
       26 SETUPVAL                         R1 2
       27 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R4 K0 ["EvalResult:%*"]
        1 MOVE                             R6 R1
        2 NAMECALL                         R4 R4 K1 ["format"]
        4 CALL                             R4 2 1
        5 MOVE                             R3 R4
        6 DUPTABLE                         R4 K4 [{"sessionId", "evalResult"}]
        7 SETTABLEKS                       R0 R4 K2 ["sessionId"]
        9 SETTABLEKS                       R2 R4 K3 ["evalResult"]
       11 GETUPVAL                         R5 0
       12 MOVE                             R7 R4
       13 NAMECALL                         R5 R5 K5 ["JSONEncode"]
       15 CALL                             R5 2 1
       16 GETIMPORT                        R6 K7 [print]
       18 LOADK                            R7 K8 ["reportEvalResult, reportKey"]
       19 MOVE                             R8 R3
       20 MOVE                             R9 R5
       21 CALL                             R6 3 0
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K9 ["setUserSettingsAsync"]
       25 MOVE                             R7 R3
       26 MOVE                             R8 R5
       27 CALL                             R6 2 0
       28 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AssistantEval"]
        3 GETTABLEKS                       R0 R0 K1 ["RunTimeEvals"]
        5 LOADK                            R3 K2 ["ModuleScript"]
        6 NAMECALL                         R1 R0 K3 ["FindFirstChildOfClass"]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["AssistantEval"]
        3 GETTABLEKS                       R1 R1 K1 ["RunTimeEvals"]
        5 LOADK                            R4 K2 ["ModuleScript"]
        6 NAMECALL                         R2 R1 K3 ["FindFirstChildOfClass"]
        8 CALL                             R2 2 1
        9 MOVE                             R0 R2
       10 JUMPIF                           R0 ; [+4]
       11 GETIMPORT                        R1 K5 [error]
       13 LOADK                            R2 K6 ["Eval not found"]
       14 CALL                             R1 1 0
       15 GETTABLEKS                       R1 R0 K7 ["Name"]
       17 LOADNIL                          R2
       18 GETUPVAL                         R3 1
       19 JUMPIFNOT                        R3 ; [+5]
       20 LOADK                            R3 K8 ["        local PlayModeEvalStarter = require(game.ReplicatedStorage.AssistantEval.Modules.PlayModeEvalStarter)\n        local evalName = \""]
       21 MOVE                             R4 R1
       22 LOADK                            R5 K9 ["\"\n        return PlayModeEvalStarter.startEval(evalName)\n    "]
       23 CONCAT                           R2 R3 R5
       24 JUMP                             ; [+6]
       25 LOADK                            R3 K8 ["        local PlayModeEvalStarter = require(game.ReplicatedStorage.AssistantEval.Modules.PlayModeEvalStarter)\n        local evalName = \""]
       26 MOVE                             R4 R1
       27 LOADK                            R5 K10 ["\"\n        local clientId = "]
       28 GETUPVAL                         R6 2
       29 LOADK                            R7 K11 ["        return PlayModeEvalStarter.startEval(evalName, clientId)\n    "]
       30 CONCAT                           R2 R3 R7
       31 GETUPVAL                         R3 3
       32 GETTABLEKS                       R3 R3 K12 ["loadCode"]
       34 MOVE                             R4 R2
       35 CALL                             R3 1 2
       36 MOVE                             R5 R4
       37 CALL                             R5 0 1
       38 RETURN                           R5 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["AssistantEval"]
        3 GETTABLEKS                       R2 R2 K1 ["RunTimeEvals"]
        5 LOADK                            R5 K2 ["ModuleScript"]
        6 NAMECALL                         R3 R2 K3 ["FindFirstChildOfClass"]
        8 CALL                             R3 2 1
        9 MOVE                             R1 R3
       10 JUMPIF                           R1 ; [+4]
       11 GETIMPORT                        R2 K5 [error]
       13 LOADK                            R3 K6 ["Eval not found"]
       14 CALL                             R2 1 0
       15 GETTABLEKS                       R2 R1 K7 ["Name"]
       17 LOADNIL                          R3
       18 GETUPVAL                         R4 1
       19 JUMPIFNOT                        R4 ; [+5]
       20 LOADK                            R4 K8 ["        local PlayModeEvalStarter = require(game.ReplicatedStorage.AssistantEval.Modules.PlayModeEvalStarter)\n        local evalName = \""]
       21 MOVE                             R5 R2
       22 LOADK                            R6 K9 ["\"\n        return PlayModeEvalStarter.startEval(evalName)\n    "]
       23 CONCAT                           R3 R4 R6
       24 JUMP                             ; [+6]
       25 LOADK                            R4 K8 ["        local PlayModeEvalStarter = require(game.ReplicatedStorage.AssistantEval.Modules.PlayModeEvalStarter)\n        local evalName = \""]
       26 MOVE                             R5 R2
       27 LOADK                            R6 K10 ["\"\n        local clientId = "]
       28 GETUPVAL                         R7 2
       29 LOADK                            R8 K11 ["        return PlayModeEvalStarter.startEval(evalName, clientId)\n    "]
       30 CONCAT                           R3 R4 R8
       31 GETUPVAL                         R4 3
       32 GETTABLEKS                       R4 R4 K12 ["loadCode"]
       34 MOVE                             R5 R3
       35 CALL                             R4 1 2
       36 MOVE                             R6 R5
       37 CALL                             R6 0 1
       38 MOVE                             R0 R6
       39 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["IsServer"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 LOADB                            R1 1
        6 SETUPVAL                         R1 1
        7 LOADK                            R1 K1 ["Server"]
        8 SETUPVAL                         R1 2
        9 JUMP                             ; [+17]
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K2 ["waitForLocalPlayerReady"]
       13 CALL                             R1 0 1
       14 LOADB                            R2 0
       15 SETUPVAL                         R2 1
       16 GETTABLEKS                       R3 R1 K3 ["UserId"]
       18 MINUS                            R2 R3
       19 SETUPVAL                         R2 4
       20 LOADK                            R3 K4 ["Client:%*"]
       21 GETUPVAL                         R5 4
       22 NAMECALL                         R3 R3 K5 ["format"]
       24 CALL                             R3 2 1
       25 MOVE                             R2 R3
       26 SETUPVAL                         R2 2
       27 GETUPVAL                         R1 3
       28 GETTABLEKS                       R1 R1 K6 ["installLoadedCode"]
       30 CALL                             R1 0 0
       31 GETUPVAL                         R1 5
       32 GETTABLEKS                       R1 R1 K7 ["AssistantEval"]
       34 GETTABLEKS                       R1 R1 K8 ["RunTimeEvals"]
       36 LOADK                            R3 K9 ["MultiplayerRunSessionId"]
       37 NAMECALL                         R1 R1 K10 ["FindFirstChild"]
       39 CALL                             R1 2 1
       40 JUMPIFNOT                        R1 ; [+3]
       41 GETTABLEKS                       R2 R1 K11 ["Value"]
       43 JUMPIF                           R2 ; [+1]
       44 RETURN                           R0 0
       45 GETIMPORT                        R2 K13 [pcall]
       47 NEWCLOSURE                       R3 P0
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          UPVAL U3
       52 CALL                             R2 1 2
       53 DUPTABLE                         R4 K16 [{"success", "value"}]
       54 SETTABLEKS                       R2 R4 K14 ["success"]
       56 SETTABLEKS                       R3 R4 K15 ["value"]
       58 GETUPVAL                         R5 6
       59 GETTABLEKS                       R6 R1 K11 ["Value"]
       61 GETUPVAL                         R7 2
       62 MOVE                             R8 R4
       63 CALL                             R5 3 0
       64 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ReplicatedStorage"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["RunService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [require]
       21 GETIMPORT                        R4 K9 [script]
       23 GETTABLEKS                       R4 R4 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["EvalUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K7 [require]
       30 GETIMPORT                        R5 K9 [script]
       32 GETTABLEKS                       R5 R5 K10 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["Types"]
       36 CALL                             R4 1 1
       37 LOADNIL                          R5
       38 LOADNIL                          R6
       39 LOADNIL                          R7
       40 NEWCLOSURE                       R8 P0
       41 CAPTURE                          VAL R2
       42 CAPTURE                          REF R5
       43 CAPTURE                          REF R6
       44 CAPTURE                          VAL R3
       45 CAPTURE                          REF R7
       46 DUPCLOSURE                       R9 K13 [PROTO_1]
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R3
       49 DUPCLOSURE                       R10 K14 [PROTO_2]
       50 CAPTURE                          VAL R1
       51 NEWCLOSURE                       R11 P3
       52 CAPTURE                          VAL R1
       53 CAPTURE                          REF R5
       54 CAPTURE                          REF R7
       55 CAPTURE                          VAL R3
       56 NEWCLOSURE                       R12 P4
       57 CAPTURE                          VAL R2
       58 CAPTURE                          REF R5
       59 CAPTURE                          REF R6
       60 CAPTURE                          VAL R3
       61 CAPTURE                          REF R7
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R9
       64 DUPTABLE                         R13 K16 [{"init"}]
       65 SETTABLEKS                       R12 R13 K15 ["init"]
       67 CLOSEUPVALS                      R5
       68 RETURN                           R13 1
