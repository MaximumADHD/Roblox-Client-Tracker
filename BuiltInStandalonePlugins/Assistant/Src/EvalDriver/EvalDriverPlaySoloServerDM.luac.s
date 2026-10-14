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
       20 LOADK                            R4 K6 ["EvalDriverPlaySoloServerDM.runEvalServer"]
       21 CALL                             R2 2 1
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R3 R3 K5 ["invoke"]
       25 MOVE                             R4 R1
       26 LOADK                            R5 K7 ["EvalDriverPlaySoloServerDM.runEvalCheckGame"]
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
       54 LOADK                            R4 K13 ["runEvalServer"]
       55 DUPCLOSURE                       R5 K14 [PROTO_4]
       56 CAPTURE                          UPVAL U4
       57 NAMECALL                         R2 R0 K15 ["OnHostInvokeAsync"]
       59 CALL                             R2 3 0
       60 LOADK                            R4 K16 ["runEvalCheckGame"]
       61 DUPCLOSURE                       R5 K17 [PROTO_5]
       62 CAPTURE                          UPVAL U4
       63 NAMECALL                         R2 R0 K15 ["OnHostInvokeAsync"]
       65 CALL                             R2 3 0
       66 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["installLoadedCode"]
        3 CALL                             R3 0 0
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R1
        6 MOVE                             R5 R2
        7 CALL                             R3 2 0
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["FFlagAssistantUseNewDMNetworking"]
       11 JUMPIFNOT                        R3 ; [+34]
       12 FASTCALL2K                       ASSERT R2 K2 ; [+5]
       14 MOVE                             R4 R2
       15 LOADK                            R5 K2 ["EvalDriverPlaySoloServerDM requires the new networking when FFlagAssistantUseNewDMNetworking is on"]
       16 GETIMPORT                        R3 K4 [assert]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K5 ["event"]
       22 MOVE                             R4 R2
       23 LOADK                            R5 K6 ["EvalDriverPlaySoloServerDM.DataModelStarted"]
       24 CALL                             R3 2 1
       25 GETUPVAL                         R6 4
       26 GETTABLEKS                       R6 R6 K7 ["Identity"]
       28 GETTABLEKS                       R6 R6 K8 ["Standalone"]
       30 GETUPVAL                         R7 5
       31 GETTABLEKS                       R7 R7 K9 ["Types"]
       33 GETTABLEKS                       R7 R7 K10 ["Server"]
       35 NAMECALL                         R4 R3 K11 ["Fire"]
       37 CALL                             R4 3 0
       38 GETTABLEKS                       R4 R0 K12 ["Unloading"]
       40 NEWCLOSURE                       R6 P0
       41 CAPTURE                          UPVAL U6
       42 NAMECALL                         R4 R4 K13 ["Once"]
       44 CALL                             R4 2 0
       45 RETURN                           R0 0
       46 FASTCALL2K                       ASSERT R1 K14 ; [+5]
       48 MOVE                             R4 R1
       49 LOADK                            R5 K14 ["EvalDriverPlaySoloServerDM requires networking"]
       50 GETIMPORT                        R3 K4 [assert]
       52 CALL                             R3 2 0
       53 LOADK                            R5 K15 ["DataModelStarted"]
       54 GETUPVAL                         R6 5
       55 GETTABLEKS                       R6 R6 K9 ["Types"]
       57 GETTABLEKS                       R6 R6 K8 ["Standalone"]
       59 GETUPVAL                         R7 5
       60 GETTABLEKS                       R7 R7 K9 ["Types"]
       62 GETTABLEKS                       R7 R7 K10 ["Server"]
       64 NAMECALL                         R3 R1 K16 ["FireGuest"]
       66 CALL                             R3 4 0
       67 RETURN                           R0 0

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
       43 GETIMPORT                        R6 K1 [require]
       45 GETTABLEKS                       R7 R2 K9 ["Packages"]
       47 GETTABLEKS                       R7 R7 K14 ["DMNetworkingOLD"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K1 [require]
       52 GETTABLEKS                       R8 R2 K15 ["Src"]
       54 GETTABLEKS                       R8 R8 K16 ["Flags"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R8 R3 K11 ["Utils"]
       59 GETTABLEKS                       R8 R8 K17 ["Bin"]
       61 GETTABLEKS                       R9 R5 K18 ["Remote"]
       63 DUPCLOSURE                       R10 K19 [PROTO_0]
       64 CAPTURE                          VAL R0
       65 DUPCLOSURE                       R11 K20 [PROTO_1]
       66 CAPTURE                          VAL R0
       67 NEWTABLE                         R12 0 0
       69 LOADNIL                          R13
       70 NEWCLOSURE                       R14 P2
       71 CAPTURE                          VAL R7
       72 CAPTURE                          REF R13
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R0
       76 NEWCLOSURE                       R15 P3
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R14
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R4
       83 CAPTURE                          REF R13
       84 NEWCLOSURE                       R16 P4
       85 CAPTURE                          REF R12
       86 DUPTABLE                         R17 K23 [{"init", "close"}]
       87 SETTABLEKS                       R15 R17 K21 ["init"]
       89 SETTABLEKS                       R16 R17 K22 ["close"]
       91 CLOSEUPVALS                      R12
       92 RETURN                           R17 1
