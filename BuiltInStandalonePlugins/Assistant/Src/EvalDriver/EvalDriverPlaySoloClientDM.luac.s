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
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["invoke"]
        8 MOVE                             R2 R0
        9 LOADK                            R3 K2 ["runEvalClient"]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K1 ["invoke"]
       14 MOVE                             R3 R0
       15 LOADK                            R4 K3 ["startScreenRecording"]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K1 ["invoke"]
       20 MOVE                             R4 R0
       21 LOADK                            R5 K4 ["stopScreenRecording"]
       22 CALL                             R3 2 1
       23 GETUPVAL                         R4 0
       24 DUPCLOSURE                       R8 K5 [PROTO_1]
       25 CAPTURE                          UPVAL U3
       26 NAMECALL                         R6 R1 K6 ["Connect"]
       28 CALL                             R6 2 -1
       29 NAMECALL                         R4 R4 K7 ["Add"]
       31 CALL                             R4 -1 0
       32 GETUPVAL                         R4 0
       33 DUPCLOSURE                       R8 K8 [PROTO_2]
       34 CAPTURE                          UPVAL U4
       35 NAMECALL                         R6 R2 K6 ["Connect"]
       37 CALL                             R6 2 -1
       38 NAMECALL                         R4 R4 K7 ["Add"]
       40 CALL                             R4 -1 0
       41 GETUPVAL                         R4 0
       42 DUPCLOSURE                       R8 K9 [PROTO_3]
       43 CAPTURE                          UPVAL U4
       44 NAMECALL                         R6 R3 K6 ["Connect"]
       46 CALL                             R6 2 -1
       47 NAMECALL                         R4 R4 K7 ["Add"]
       49 CALL                             R4 -1 0
       50 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["hasAssistantEvalFolder"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["installLoadedCode"]
        9 CALL                             R2 0 0
       10 GETUPVAL                         R2 1
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K2 ["event"]
       16 MOVE                             R3 R1
       17 LOADK                            R4 K3 ["DataModelStarted"]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K4 ["Identity"]
       22 GETTABLEKS                       R5 R5 K5 ["Standalone"]
       24 GETUPVAL                         R6 4
       25 GETTABLEKS                       R6 R6 K6 ["Types"]
       27 GETTABLEKS                       R6 R6 K7 ["Client"]
       29 NAMECALL                         R3 R2 K8 ["Fire"]
       31 CALL                             R3 3 0
       32 GETTABLEKS                       R3 R0 K9 ["Unloading"]
       34 NEWCLOSURE                       R5 P0
       35 CAPTURE                          UPVAL U5
       36 NAMECALL                         R3 R3 K10 ["Once"]
       38 CALL                             R3 2 0
       39 RETURN                           R0 0

PROTO_7:
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
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["AssistantUI"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Bin"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["DMNetworking"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Src"]
       28 GETTABLEKS                       R6 R6 K11 ["EvalDriver"]
       30 GETTABLEKS                       R6 R6 K12 ["EvalUtils"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K10 ["Src"]
       37 GETTABLEKS                       R7 R7 K11 ["EvalDriver"]
       39 GETTABLEKS                       R7 R7 K13 ["Types"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R2 K14 ["Utils"]
       44 GETTABLEKS                       R7 R7 K15 ["TestAutomationUtils"]
       46 GETTABLEKS                       R8 R2 K14 ["Utils"]
       48 GETTABLEKS                       R8 R8 K16 ["DataModelType"]
       50 GETTABLEKS                       R9 R4 K17 ["Remote"]
       52 DUPCLOSURE                       R10 K18 [PROTO_0]
       53 CAPTURE                          VAL R5
       54 NEWTABLE                         R11 0 0
       56 LOADNIL                          R12
       57 NEWCLOSURE                       R13 P1
       58 CAPTURE                          REF R12
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R7
       63 NEWCLOSURE                       R14 P2
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R13
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R8
       69 CAPTURE                          REF R12
       70 NEWCLOSURE                       R15 P3
       71 CAPTURE                          REF R11
       72 DUPTABLE                         R16 K21 [{"init", "close"}]
       73 SETTABLEKS                       R14 R16 K19 ["init"]
       75 SETTABLEKS                       R15 R16 K20 ["close"]
       77 CLOSEUPVALS                      R11
       78 RETURN                           R16 1
