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
       20 LOADK                            R4 K6 ["runEvalClient"]
       21 CALL                             R2 2 1
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R3 R3 K5 ["invoke"]
       25 MOVE                             R4 R1
       26 LOADK                            R5 K7 ["startScreenRecording"]
       27 CALL                             R3 2 1
       28 GETUPVAL                         R4 3
       29 GETTABLEKS                       R4 R4 K5 ["invoke"]
       31 MOVE                             R5 R1
       32 LOADK                            R6 K8 ["stopScreenRecording"]
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
       69 LOADK                            R4 K6 ["runEvalClient"]
       70 DUPCLOSURE                       R5 K15 [PROTO_4]
       71 CAPTURE                          UPVAL U4
       72 NAMECALL                         R2 R0 K16 ["OnHostInvokeAsync"]
       74 CALL                             R2 3 0
       75 LOADK                            R4 K7 ["startScreenRecording"]
       76 DUPCLOSURE                       R5 K17 [PROTO_5]
       77 CAPTURE                          UPVAL U5
       78 NAMECALL                         R2 R0 K16 ["OnHostInvokeAsync"]
       80 CALL                             R2 3 0
       81 LOADK                            R4 K8 ["stopScreenRecording"]
       82 DUPCLOSURE                       R5 K18 [PROTO_6]
       83 CAPTURE                          UPVAL U5
       84 NAMECALL                         R2 R0 K16 ["OnHostInvokeAsync"]
       86 CALL                             R2 3 0
       87 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
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
       21 LOADK                            R5 K3 ["EvalDriverPlaySoloClientDM requires the new networking when FFlagAssistantUseNewDMNetworking is on"]
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
       39 GETTABLEKS                       R7 R7 K11 ["Client"]
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
       55 LOADK                            R5 K15 ["EvalDriverPlaySoloClientDM requires networking"]
       56 GETIMPORT                        R3 K5 [assert]
       58 CALL                             R3 2 0
       59 LOADK                            R5 K7 ["DataModelStarted"]
       60 GETUPVAL                         R6 5
       61 GETTABLEKS                       R6 R6 K10 ["Types"]
       63 GETTABLEKS                       R6 R6 K9 ["Standalone"]
       65 GETUPVAL                         R7 5
       66 GETTABLEKS                       R7 R7 K10 ["Types"]
       68 GETTABLEKS                       R7 R7 K11 ["Client"]
       70 NAMECALL                         R3 R1 K16 ["FireGuest"]
       72 CALL                             R3 4 0
       73 RETURN                           R0 0

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
       56 GETTABLEKS                       R9 R9 K17 ["TestAutomationUtils"]
       58 GETTABLEKS                       R10 R2 K16 ["Utils"]
       60 GETTABLEKS                       R10 R10 K18 ["DataModelType"]
       62 GETTABLEKS                       R11 R4 K19 ["Remote"]
       64 DUPCLOSURE                       R12 K20 [PROTO_0]
       65 CAPTURE                          VAL R6
       66 NEWTABLE                         R13 0 0
       68 LOADNIL                          R14
       69 NEWCLOSURE                       R15 P1
       70 CAPTURE                          VAL R7
       71 CAPTURE                          REF R14
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R9
       76 NEWCLOSURE                       R16 P2
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R15
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R10
       83 CAPTURE                          REF R14
       84 NEWCLOSURE                       R17 P3
       85 CAPTURE                          REF R13
       86 DUPTABLE                         R18 K23 [{"init", "close"}]
       87 SETTABLEKS                       R16 R18 K21 ["init"]
       89 SETTABLEKS                       R17 R18 K22 ["close"]
       91 CLOSEUPVALS                      R13
       92 RETURN                           R18 1
