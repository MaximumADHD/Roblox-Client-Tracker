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
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["invoke"]
        8 MOVE                             R2 R0
        9 LOADK                            R3 K2 ["runEvalServer"]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K1 ["invoke"]
       14 MOVE                             R3 R0
       15 LOADK                            R4 K3 ["runEvalCheckGame"]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 0
       18 DUPCLOSURE                       R7 K4 [PROTO_2]
       19 CAPTURE                          UPVAL U3
       20 NAMECALL                         R5 R1 K5 ["Connect"]
       22 CALL                             R5 2 -1
       23 NAMECALL                         R3 R3 K6 ["Add"]
       25 CALL                             R3 -1 0
       26 GETUPVAL                         R3 0
       27 DUPCLOSURE                       R7 K7 [PROTO_3]
       28 CAPTURE                          UPVAL U3
       29 NAMECALL                         R5 R2 K5 ["Connect"]
       31 CALL                             R5 2 -1
       32 NAMECALL                         R3 R3 K6 ["Add"]
       34 CALL                             R3 -1 0
       35 RETURN                           R0 0

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
       27 GETTABLEKS                       R6 R6 K7 ["Server"]
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
       44 GETTABLEKS                       R7 R7 K15 ["DataModelType"]
       46 GETTABLEKS                       R8 R4 K16 ["Remote"]
       48 DUPCLOSURE                       R9 K17 [PROTO_0]
       49 CAPTURE                          VAL R5
       50 DUPCLOSURE                       R10 K18 [PROTO_1]
       51 CAPTURE                          VAL R5
       52 NEWTABLE                         R11 0 0
       54 LOADNIL                          R12
       55 NEWCLOSURE                       R13 P2
       56 CAPTURE                          REF R12
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R5
       60 NEWCLOSURE                       R14 P3
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R13
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R7
       66 CAPTURE                          REF R12
       67 NEWCLOSURE                       R15 P4
       68 CAPTURE                          REF R11
       69 DUPTABLE                         R16 K21 [{"init", "close"}]
       70 SETTABLEKS                       R14 R16 K19 ["init"]
       72 SETTABLEKS                       R15 R16 K20 ["close"]
       74 CLOSEUPVALS                      R11
       75 RETURN                           R16 1
