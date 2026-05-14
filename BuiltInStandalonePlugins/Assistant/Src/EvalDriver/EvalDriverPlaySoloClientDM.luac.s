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
        0 LOADK                            R3 K0 ["runEvalClient"]
        1 DUPCLOSURE                       R4 K1 [PROTO_1]
        2 CAPTURE                          UPVAL U0
        3 NAMECALL                         R1 R0 K2 ["OnHostInvokeAsync"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["installLoadedCode"]
        3 CALL                             R2 0 0
        4 LOADK                            R4 K1 ["runEvalClient"]
        5 DUPCLOSURE                       R5 K2 [PROTO_1]
        6 CAPTURE                          UPVAL U1
        7 NAMECALL                         R2 R1 K3 ["OnHostInvokeAsync"]
        9 CALL                             R2 3 0
       10 LOADK                            R4 K4 ["DataModelStarted"]
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K5 ["Types"]
       14 GETTABLEKS                       R5 R5 K6 ["Standalone"]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K5 ["Types"]
       19 GETTABLEKS                       R6 R6 K7 ["Client"]
       21 NAMECALL                         R2 R1 K8 ["FireGuest"]
       23 CALL                             R2 4 0
       24 RETURN                           R0 0

PROTO_4:
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
       34 GETTABLEKS                       R4 R4 K12 ["DataModelType"]
       36 GETIMPORT                        R5 K1 [require]
       38 GETTABLEKS                       R6 R2 K9 ["Packages"]
       40 GETTABLEKS                       R6 R6 K13 ["DMNetworking"]
       42 CALL                             R5 1 1
       43 DUPCLOSURE                       R6 K14 [PROTO_0]
       44 CAPTURE                          VAL R0
       45 NEWTABLE                         R7 0 0
       47 DUPCLOSURE                       R8 K15 [PROTO_2]
       48 CAPTURE                          VAL R6
       49 DUPCLOSURE                       R9 K16 [PROTO_3]
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R4
       53 NEWCLOSURE                       R10 P3
       54 CAPTURE                          REF R7
       55 DUPTABLE                         R11 K19 [{"init", "close"}]
       56 SETTABLEKS                       R9 R11 K17 ["init"]
       58 SETTABLEKS                       R10 R11 K18 ["close"]
       60 CLOSEUPVALS                      R7
       61 RETURN                           R11 1
