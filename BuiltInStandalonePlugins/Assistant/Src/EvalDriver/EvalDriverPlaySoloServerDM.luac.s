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

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R2 ; [+43]
        4 FASTCALL2K                       ASSERT R1 K1 ; [+5]
        6 MOVE                             R3 R1
        7 LOADK                            R4 K1 ["EvalDriverPlaySoloServerDM requires the new networking when FFlagAssistantUseNewDMNetworking is on"]
        8 GETIMPORT                        R2 K3 [assert]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K4 ["new"]
       14 CALL                             R2 0 1
       15 SETUPVAL                         R2 1
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K5 ["invoke"]
       19 MOVE                             R3 R1
       20 LOADK                            R4 K6 ["runEvalServer"]
       21 CALL                             R2 2 1
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R3 R3 K5 ["invoke"]
       25 MOVE                             R4 R1
       26 LOADK                            R5 K7 ["runEvalCheckGame"]
       27 CALL                             R3 2 1
       28 GETUPVAL                         R4 1
       29 DUPCLOSURE                       R8 K8 [PROTO_2]
       30 CAPTURE                          UPVAL U4
       31 NAMECALL                         R6 R2 K9 ["Connect"]
       33 CALL                             R6 2 -1
       34 NAMECALL                         R4 R4 K10 ["Add"]
       36 CALL                             R4 -1 0
       37 GETUPVAL                         R4 1
       38 DUPCLOSURE                       R8 K11 [PROTO_3]
       39 CAPTURE                          UPVAL U4
       40 NAMECALL                         R6 R3 K9 ["Connect"]
       42 CALL                             R6 2 -1
       43 NAMECALL                         R4 R4 K10 ["Add"]
       45 CALL                             R4 -1 0
       46 RETURN                           R0 0
       47 FASTCALL2K                       ASSERT R0 K12 ; [+5]
       49 MOVE                             R3 R0
       50 LOADK                            R4 K12 ["EvalDriverPlaySoloServerDM requires networking"]
       51 GETIMPORT                        R2 K3 [assert]
       53 CALL                             R2 2 0
       54 LOADK                            R4 K6 ["runEvalServer"]
       55 DUPCLOSURE                       R5 K13 [PROTO_4]
       56 CAPTURE                          UPVAL U4
       57 NAMECALL                         R2 R0 K14 ["OnHostInvokeAsync"]
       59 CALL                             R2 3 0
       60 LOADK                            R4 K7 ["runEvalCheckGame"]
       61 DUPCLOSURE                       R5 K15 [PROTO_5]
       62 CAPTURE                          UPVAL U4
       63 NAMECALL                         R2 R0 K14 ["OnHostInvokeAsync"]
       65 CALL                             R2 3 0
       66 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["hasAssistantEvalFolder"]
        3 CALL                             R3 0 1
        4 JUMPIF                           R3 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["installLoadedCode"]
        9 CALL                             R3 0 0
       10 GETUPVAL                         R3 1
       11 MOVE                             R4 R1
       12 MOVE                             R5 R2
       13 CALL                             R3 2 0
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K2 ["FFlagAssistantUseNewDMNetworking"]
       17 JUMPIFNOT                        R3 ; [+34]
       18 FASTCALL2K                       ASSERT R2 K3 ; [+5]
       20 MOVE                             R4 R2
       21 LOADK                            R5 K3 ["EvalDriverPlaySoloServerDM requires the new networking when FFlagAssistantUseNewDMNetworking is on"]
       22 GETIMPORT                        R3 K5 [assert]
       24 CALL                             R3 2 0
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R3 R3 K6 ["event"]
       28 MOVE                             R4 R2
       29 LOADK                            R5 K7 ["DataModelStarted"]
       30 CALL                             R3 2 1
       31 GETUPVAL                         R6 4
       32 GETTABLEKS                       R6 R6 K8 ["Identity"]
       34 GETTABLEKS                       R6 R6 K9 ["Standalone"]
       36 GETUPVAL                         R7 5
       37 GETTABLEKS                       R7 R7 K10 ["Types"]
       39 GETTABLEKS                       R7 R7 K11 ["Server"]
       41 NAMECALL                         R4 R3 K12 ["Fire"]
       43 CALL                             R4 3 0
       44 GETTABLEKS                       R4 R0 K13 ["Unloading"]
       46 NEWCLOSURE                       R6 P0
       47 CAPTURE                          UPVAL U6
       48 NAMECALL                         R4 R4 K14 ["Once"]
       50 CALL                             R4 2 0
       51 RETURN                           R0 0
       52 FASTCALL2K                       ASSERT R1 K15 ; [+5]
       54 MOVE                             R4 R1
       55 LOADK                            R5 K15 ["EvalDriverPlaySoloServerDM requires networking"]
       56 GETIMPORT                        R3 K5 [assert]
       58 CALL                             R3 2 0
       59 LOADK                            R5 K7 ["DataModelStarted"]
       60 GETUPVAL                         R6 5
       61 GETTABLEKS                       R6 R6 K10 ["Types"]
       63 GETTABLEKS                       R6 R6 K9 ["Standalone"]
       65 GETUPVAL                         R7 5
       66 GETTABLEKS                       R7 R7 K10 ["Types"]
       68 GETTABLEKS                       R7 R7 K11 ["Server"]
       70 NAMECALL                         R3 R1 K16 ["FireGuest"]
       72 CALL                             R3 4 0
       73 RETURN                           R0 0

PROTO_9:
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
       26 GETTABLEKS                       R6 R1 K10 ["DMNetworkingOLD"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Src"]
       33 GETTABLEKS                       R7 R7 K12 ["EvalDriver"]
       35 GETTABLEKS                       R7 R7 K13 ["EvalUtils"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K11 ["Src"]
       42 GETTABLEKS                       R8 R8 K14 ["Flags"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K11 ["Src"]
       49 GETTABLEKS                       R9 R9 K12 ["EvalDriver"]
       51 GETTABLEKS                       R9 R9 K15 ["Types"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R9 R2 K16 ["Utils"]
       56 GETTABLEKS                       R9 R9 K17 ["DataModelType"]
       58 GETTABLEKS                       R10 R4 K18 ["Remote"]
       60 DUPCLOSURE                       R11 K19 [PROTO_0]
       61 CAPTURE                          VAL R6
       62 DUPCLOSURE                       R12 K20 [PROTO_1]
       63 CAPTURE                          VAL R6
       64 NEWTABLE                         R13 0 0
       66 LOADNIL                          R14
       67 NEWCLOSURE                       R15 P2
       68 CAPTURE                          VAL R7
       69 CAPTURE                          REF R14
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R6
       73 NEWCLOSURE                       R16 P3
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R15
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R9
       80 CAPTURE                          REF R14
       81 NEWCLOSURE                       R17 P4
       82 CAPTURE                          REF R13
       83 DUPTABLE                         R18 K23 [{"init", "close"}]
       84 SETTABLEKS                       R16 R18 K21 ["init"]
       86 SETTABLEKS                       R17 R18 K22 ["close"]
       88 CLOSEUPVALS                      R13
       89 RETURN                           R18 1
