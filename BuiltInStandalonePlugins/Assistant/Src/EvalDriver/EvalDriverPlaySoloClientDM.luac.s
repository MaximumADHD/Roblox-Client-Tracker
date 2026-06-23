PROTO_0:
        0 GETIMPORT                        R2 K1 [print]
        2 LOADK                            R3 K2 ["runEvalClient, waiting for local player ready"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["waitForLocalPlayerReady"]
        7 CALL                             R2 0 1
        8 GETIMPORT                        R3 K1 [print]
       10 LOADK                            R4 K4 ["runEvalClient, local player ready"]
       11 GETTABLEKS                       R5 R2 K5 ["Name"]
       13 GETTABLEKS                       R6 R2 K6 ["UserId"]
       15 CALL                             R3 3 0
       16 LOADK                            R4 K7 ["        local evalStarter = require(game.ReplicatedStorage.AssistantEval.Modules.EvalStarter)\n        local evalName = \""]
       17 GETTABLEKS                       R5 R0 K8 ["evalName"]
       19 LOADK                            R6 K9 ["\"\n        local clientId = "]
       20 MOVE                             R7 R1
       21 LOADK                            R8 K10 ["        return evalStarter.runEvalClient(evalName, clientId)\n    "]
       22 CONCAT                           R3 R4 R8
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K11 ["loadCode"]
       26 MOVE                             R5 R3
       27 CALL                             R4 1 2
       28 MOVE                             R6 R5
       29 CALL                             R6 0 1
       30 GETIMPORT                        R7 K1 [print]
       32 LOADK                            R8 K12 ["runEvalClient, evalResult"]
       33 MOVE                             R9 R6
       34 CALL                             R7 2 0
       35 RETURN                           R6 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 CALL                             R3 2 1
        4 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["startScreenRecording"]
        3 CALL                             R1 0 -1
        4 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["stopScreenRecording"]
        3 CALL                             R1 0 -1
        4 RETURN                           R1 -1

PROTO_4:
        0 LOADK                            R3 K0 ["runEvalClient"]
        1 DUPCLOSURE                       R4 K1 [PROTO_1]
        2 CAPTURE                          UPVAL U0
        3 NAMECALL                         R1 R0 K2 ["OnHostInvokeAsync"]
        5 CALL                             R1 3 0
        6 LOADK                            R3 K3 ["startScreenRecording"]
        7 DUPCLOSURE                       R4 K4 [PROTO_2]
        8 CAPTURE                          UPVAL U1
        9 NAMECALL                         R1 R0 K2 ["OnHostInvokeAsync"]
       11 CALL                             R1 3 0
       12 LOADK                            R3 K5 ["stopScreenRecording"]
       13 DUPCLOSURE                       R4 K6 [PROTO_3]
       14 CAPTURE                          UPVAL U1
       15 NAMECALL                         R1 R0 K2 ["OnHostInvokeAsync"]
       17 CALL                             R1 3 0
       18 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["installLoadedCode"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 LOADK                            R4 K1 ["DataModelStarted"]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K2 ["Types"]
       11 GETTABLEKS                       R5 R5 K3 ["Standalone"]
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R6 R6 K2 ["Types"]
       16 GETTABLEKS                       R6 R6 K4 ["Client"]
       18 NAMECALL                         R2 R1 K5 ["FireGuest"]
       20 CALL                             R2 4 0
       21 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 NEWTABLE                         R0 0 0
       11 SETUPVAL                         R0 0
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["EvalUtils"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["Types"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K3 [script]
       21 LOADK                            R4 K7 ["Assistant"]
       22 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       24 CALL                             R2 2 1
       25 GETIMPORT                        R3 K1 [require]
       27 GETTABLEKS                       R4 R2 K9 ["Packages"]
       29 GETTABLEKS                       R4 R4 K10 ["AssistantUI"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K11 ["Utils"]
       34 GETTABLEKS                       R4 R4 K12 ["TestAutomationUtils"]
       36 GETTABLEKS                       R5 R3 K11 ["Utils"]
       38 GETTABLEKS                       R5 R5 K13 ["DataModelType"]
       40 GETIMPORT                        R6 K1 [require]
       42 GETTABLEKS                       R7 R2 K9 ["Packages"]
       44 GETTABLEKS                       R7 R7 K14 ["DMNetworking"]
       46 CALL                             R6 1 1
       47 DUPCLOSURE                       R7 K15 [PROTO_0]
       48 CAPTURE                          VAL R0
       49 NEWTABLE                         R8 0 0
       51 DUPCLOSURE                       R9 K16 [PROTO_4]
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R4
       54 DUPCLOSURE                       R10 K17 [PROTO_5]
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R9
       57 CAPTURE                          VAL R5
       58 NEWCLOSURE                       R11 P3
       59 CAPTURE                          REF R8
       60 DUPTABLE                         R12 K20 [{"init", "close"}]
       61 SETTABLEKS                       R10 R12 K18 ["init"]
       63 SETTABLEKS                       R11 R12 K19 ["close"]
       65 CLOSEUPVALS                      R8
       66 RETURN                           R12 1
