PROTO_0:
        0 LOADK                            R2 K0 ["        local evalStarter = require(game.ReplicatedStorage.AssistantEval.Modules.EvalStarter)\n        local evalName = \""]
        1 GETTABLEKS                       R3 R0 K1 ["evalName"]
        3 LOADK                            R4 K2 ["\"\n        return evalStarter.runEvalServer(evalName)\n    "]
        4 CONCAT                           R1 R2 R4
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K3 ["loadCode"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 2
       10 MOVE                             R4 R3
       11 CALL                             R4 0 1
       12 RETURN                           R4 1

PROTO_1:
        0 LOADK                            R2 K0 ["\t\tlocal evalStarter = require(game.ReplicatedStorage.AssistantEval.Modules.EvalStarter)\n\t\tlocal evalName = \""]
        1 GETTABLEKS                       R3 R0 K1 ["evalName"]
        3 LOADK                            R4 K2 ["\"\n\t\treturn evalStarter.runEvalCheckGame(evalName)\n\t"]
        4 CONCAT                           R1 R2 R4
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K3 ["loadCode"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 2
       10 MOVE                             R4 R3
       11 CALL                             R4 0 1
       12 RETURN                           R4 1

PROTO_2:
        0 LOADK                            R4 K0 ["        local evalStarter = require(game.ReplicatedStorage.AssistantEval.Modules.EvalStarter)\n        local evalName = \""]
        1 GETTABLEKS                       R5 R1 K1 ["evalName"]
        3 LOADK                            R6 K2 ["\"\n        return evalStarter.runEvalServer(evalName)\n    "]
        4 CONCAT                           R3 R4 R6
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K3 ["loadCode"]
        8 MOVE                             R5 R3
        9 CALL                             R4 1 2
       10 MOVE                             R6 R5
       11 CALL                             R6 0 1
       12 MOVE                             R2 R6
       13 RETURN                           R2 1

PROTO_3:
        0 LOADK                            R4 K0 ["\t\tlocal evalStarter = require(game.ReplicatedStorage.AssistantEval.Modules.EvalStarter)\n\t\tlocal evalName = \""]
        1 GETTABLEKS                       R5 R1 K1 ["evalName"]
        3 LOADK                            R6 K2 ["\"\n\t\treturn evalStarter.runEvalCheckGame(evalName)\n\t"]
        4 CONCAT                           R3 R4 R6
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K3 ["loadCode"]
        8 MOVE                             R5 R3
        9 CALL                             R4 1 2
       10 MOVE                             R6 R5
       11 CALL                             R6 0 1
       12 MOVE                             R2 R6
       13 RETURN                           R2 1

PROTO_4:
        0 LOADK                            R3 K0 ["runEvalServer"]
        1 DUPCLOSURE                       R4 K1 [PROTO_2]
        2 CAPTURE                          UPVAL U0
        3 NAMECALL                         R1 R0 K2 ["OnHostInvokeAsync"]
        5 CALL                             R1 3 0
        6 LOADK                            R3 K3 ["runEvalCheckGame"]
        7 DUPCLOSURE                       R4 K4 [PROTO_3]
        8 CAPTURE                          UPVAL U0
        9 NAMECALL                         R1 R0 K2 ["OnHostInvokeAsync"]
       11 CALL                             R1 3 0
       12 RETURN                           R0 0

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
       16 GETTABLEKS                       R6 R6 K4 ["Server"]
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
       34 GETTABLEKS                       R4 R4 K12 ["DataModelType"]
       36 GETIMPORT                        R5 K1 [require]
       38 GETTABLEKS                       R6 R2 K9 ["Packages"]
       40 GETTABLEKS                       R6 R6 K13 ["DMNetworking"]
       42 CALL                             R5 1 1
       43 DUPCLOSURE                       R6 K14 [PROTO_0]
       44 CAPTURE                          VAL R0
       45 DUPCLOSURE                       R7 K15 [PROTO_1]
       46 CAPTURE                          VAL R0
       47 NEWTABLE                         R8 0 0
       49 DUPCLOSURE                       R9 K16 [PROTO_4]
       50 CAPTURE                          VAL R0
       51 DUPCLOSURE                       R10 K17 [PROTO_5]
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R4
       55 NEWCLOSURE                       R11 P4
       56 CAPTURE                          REF R8
       57 DUPTABLE                         R12 K20 [{"init", "close"}]
       58 SETTABLEKS                       R10 R12 K18 ["init"]
       60 SETTABLEKS                       R11 R12 K19 ["close"]
       62 CLOSEUPVALS                      R8
       63 RETURN                           R12 1
