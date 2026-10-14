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
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 CALL                             R3 2 1
        4 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["startScreenRecording"]
        3 CALL                             R1 0 -1
        4 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["stopScreenRecording"]
        3 CALL                             R1 0 -1
        4 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R2 ; [+58]
        4 FASTCALL2K                       ASSERT R1 K1 ; [+5]
        6 MOVE                             R3 R1
        7 LOADK                            R4 K1 ["EvalDriverPlaySoloClientDM requires the new networking when FFlagAssistantUseNewDMNetworking is on"]
        8 GETIMPORT                        R2 K3 [assert]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K4 ["new"]
       14 CALL                             R2 0 1
       15 SETUPVAL                         R2 1
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K5 ["invoke"]
       19 MOVE                             R3 R1
       20 LOADK                            R4 K6 ["EvalDriverPlaySoloClientDM.runEvalClient"]
       21 CALL                             R2 2 1
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R3 R3 K5 ["invoke"]
       25 MOVE                             R4 R1
       26 LOADK                            R5 K7 ["EvalDriverPlaySoloClientDM.startScreenRecording"]
       27 CALL                             R3 2 1
       28 GETUPVAL                         R4 3
       29 GETTABLEKS                       R4 R4 K5 ["invoke"]
       31 MOVE                             R5 R1
       32 LOADK                            R6 K8 ["EvalDriverPlaySoloClientDM.stopScreenRecording"]
       33 CALL                             R4 2 1
       34 GETUPVAL                         R5 1
       35 DUPCLOSURE                       R9 K9 [PROTO_1]
       36 CAPTURE                          UPVAL U4
       37 NAMECALL                         R7 R2 K10 ["Connect"]
       39 CALL                             R7 2 -1
       40 NAMECALL                         R5 R5 K11 ["Add"]
       42 CALL                             R5 -1 0
       43 GETUPVAL                         R5 1
       44 DUPCLOSURE                       R9 K12 [PROTO_2]
       45 CAPTURE                          UPVAL U5
       46 NAMECALL                         R7 R3 K10 ["Connect"]
       48 CALL                             R7 2 -1
       49 NAMECALL                         R5 R5 K11 ["Add"]
       51 CALL                             R5 -1 0
       52 GETUPVAL                         R5 1
       53 DUPCLOSURE                       R9 K13 [PROTO_3]
       54 CAPTURE                          UPVAL U5
       55 NAMECALL                         R7 R4 K10 ["Connect"]
       57 CALL                             R7 2 -1
       58 NAMECALL                         R5 R5 K11 ["Add"]
       60 CALL                             R5 -1 0
       61 RETURN                           R0 0
       62 FASTCALL2K                       ASSERT R0 K14 ; [+5]
       64 MOVE                             R3 R0
       65 LOADK                            R4 K14 ["EvalDriverPlaySoloClientDM requires networking"]
       66 GETIMPORT                        R2 K3 [assert]
       68 CALL                             R2 2 0
       69 LOADK                            R4 K15 ["runEvalClient"]
       70 DUPCLOSURE                       R5 K16 [PROTO_4]
       71 CAPTURE                          UPVAL U4
       72 NAMECALL                         R2 R0 K17 ["OnHostInvokeAsync"]
       74 CALL                             R2 3 0
       75 LOADK                            R4 K18 ["startScreenRecording"]
       76 DUPCLOSURE                       R5 K19 [PROTO_5]
       77 CAPTURE                          UPVAL U5
       78 NAMECALL                         R2 R0 K17 ["OnHostInvokeAsync"]
       80 CALL                             R2 3 0
       81 LOADK                            R4 K20 ["stopScreenRecording"]
       82 DUPCLOSURE                       R5 K21 [PROTO_6]
       83 CAPTURE                          UPVAL U5
       84 NAMECALL                         R2 R0 K17 ["OnHostInvokeAsync"]
       86 CALL                             R2 3 0
       87 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
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
       15 LOADK                            R5 K2 ["EvalDriverPlaySoloClientDM requires the new networking when FFlagAssistantUseNewDMNetworking is on"]
       16 GETIMPORT                        R3 K4 [assert]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K5 ["event"]
       22 MOVE                             R4 R2
       23 LOADK                            R5 K6 ["EvalDriverPlaySoloClientDM.DataModelStarted"]
       24 CALL                             R3 2 1
       25 GETUPVAL                         R6 4
       26 GETTABLEKS                       R6 R6 K7 ["Identity"]
       28 GETTABLEKS                       R6 R6 K8 ["Standalone"]
       30 GETUPVAL                         R7 5
       31 GETTABLEKS                       R7 R7 K9 ["Types"]
       33 GETTABLEKS                       R7 R7 K10 ["Client"]
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
       49 LOADK                            R5 K14 ["EvalDriverPlaySoloClientDM requires networking"]
       50 GETIMPORT                        R3 K4 [assert]
       52 CALL                             R3 2 0
       53 LOADK                            R5 K15 ["DataModelStarted"]
       54 GETUPVAL                         R6 5
       55 GETTABLEKS                       R6 R6 K9 ["Types"]
       57 GETTABLEKS                       R6 R6 K8 ["Standalone"]
       59 GETUPVAL                         R7 5
       60 GETTABLEKS                       R7 R7 K9 ["Types"]
       62 GETTABLEKS                       R7 R7 K10 ["Client"]
       64 NAMECALL                         R3 R1 K16 ["FireGuest"]
       66 CALL                             R3 4 0
       67 RETURN                           R0 0

PROTO_10:
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
       47 GETIMPORT                        R7 K1 [require]
       49 GETTABLEKS                       R8 R2 K9 ["Packages"]
       51 GETTABLEKS                       R8 R8 K15 ["DMNetworkingOLD"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K1 [require]
       56 GETTABLEKS                       R9 R2 K16 ["Src"]
       58 GETTABLEKS                       R9 R9 K17 ["Flags"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R9 R3 K11 ["Utils"]
       63 GETTABLEKS                       R9 R9 K18 ["Bin"]
       65 GETTABLEKS                       R10 R6 K19 ["Remote"]
       67 DUPCLOSURE                       R11 K20 [PROTO_0]
       68 CAPTURE                          VAL R0
       69 NEWTABLE                         R12 0 0
       71 LOADNIL                          R13
       72 NEWCLOSURE                       R14 P1
       73 CAPTURE                          VAL R8
       74 CAPTURE                          REF R13
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R4
       79 NEWCLOSURE                       R15 P2
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R14
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R5
       86 CAPTURE                          REF R13
       87 NEWCLOSURE                       R16 P3
       88 CAPTURE                          REF R12
       89 DUPTABLE                         R17 K23 [{"init", "close"}]
       90 SETTABLEKS                       R15 R17 K21 ["init"]
       92 SETTABLEKS                       R16 R17 K22 ["close"]
       94 CLOSEUPVALS                      R12
       95 RETURN                           R17 1
