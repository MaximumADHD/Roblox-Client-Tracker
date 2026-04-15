PROTO_0:
        0 LOADB                            R2 1
        1 LOADK                            R3 K0 [""]
        2 RETURN                           R2 2

PROTO_1:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_2:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 DUPCLOSURE                       R1 K1 [PROTO_1]
        2 DUPTABLE                         R2 K4 [{"startRecording", "endRecording"}]
        3 SETTABLEKS                       R0 R2 K2 ["startRecording"]
        5 SETTABLEKS                       R1 R2 K3 ["endRecording"]
        7 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R1 1
        4 GETUPVAL                         R2 1
        5 ADDK                             R2 R2 K0 [1]
        6 SETUPVAL                         R2 1
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 0
        9 SETTABLE                         R2 R3 R0
       10 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+2]
        3 MOVE                             R1 R2
        4 JUMP                             ; [+7]
        5 GETUPVAL                         R3 1
        6 ADDK                             R3 R3 K0 [1]
        7 SETUPVAL                         R3 1
        8 GETUPVAL                         R3 1
        9 GETUPVAL                         R4 0
       10 SETTABLE                         R3 R4 R0
       11 MOVE                             R1 R3
       12 LOADK                            R3 K1 ["Assistant "]
       13 MOVE                             R4 R1
       14 CONCAT                           R2 R3 R4
       15 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+15]
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R2 R2 K0 ["IsRecordingInProgress"]
        6 CALL                             R2 2 1
        7 JUMPIF                           R2 ; [+7]
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R2 ; [+4]
       11 GETIMPORT                        R2 K2 [warn]
       13 LOADK                            R3 K3 ["StartRecording failed: currentRecording is set but not running"]
       14 CALL                             R2 1 0
       15 LOADB                            R2 0
       16 RETURN                           R2 1
       17 JUMPIF                           R1 ; [+15]
       18 GETUPVAL                         R4 3
       19 GETTABLE                         R3 R4 R0
       20 JUMPIFNOT                        R3 ; [+2]
       21 MOVE                             R2 R3
       22 JUMP                             ; [+7]
       23 GETUPVAL                         R4 4
       24 ADDK                             R4 R4 K4 [1]
       25 SETUPVAL                         R4 4
       26 GETUPVAL                         R4 4
       27 GETUPVAL                         R5 3
       28 SETTABLE                         R4 R5 R0
       29 MOVE                             R2 R4
       30 LOADK                            R3 K5 ["Assistant "]
       31 MOVE                             R4 R2
       32 CONCAT                           R1 R3 R4
       33 FASTCALL2K                       ASSERT R1 K6 ; [+5]
       35 MOVE                             R3 R1
       36 LOADK                            R4 K6 ["Bad recordingName"]
       37 GETIMPORT                        R2 K8 [assert]
       39 CALL                             R2 2 0
       40 GETUPVAL                         R2 1
       41 MOVE                             R4 R1
       42 NAMECALL                         R2 R2 K9 ["TryBeginRecording"]
       44 CALL                             R2 2 1
       45 JUMPIF                           R2 ; [+9]
       46 GETUPVAL                         R3 2
       47 CALL                             R3 0 1
       48 JUMPIFNOT                        R3 ; [+4]
       49 GETIMPORT                        R3 K2 [warn]
       51 LOADK                            R4 K10 ["StartRecording failed: TryBeginRecording returned nil"]
       52 CALL                             R3 1 0
       53 LOADB                            R3 0
       54 RETURN                           R3 1
       55 SETUPVAL                         R2 0
       56 LOADB                            R3 1
       57 MOVE                             R4 R2
       58 RETURN                           R3 2

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+9]
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K1 [warn]
        7 LOADK                            R2 K2 ["EndRecording failed: currentRecording is nil"]
        8 CALL                             R1 1 0
        9 LOADB                            R1 0
       10 RETURN                           R1 1
       11 GETUPVAL                         R4 2
       12 GETTABLE                         R3 R4 R0
       13 JUMPIFNOT                        R3 ; [+2]
       14 MOVE                             R2 R3
       15 JUMP                             ; [+7]
       16 GETUPVAL                         R4 3
       17 ADDK                             R4 R4 K3 [1]
       18 SETUPVAL                         R4 3
       19 GETUPVAL                         R4 3
       20 GETUPVAL                         R5 2
       21 SETTABLE                         R4 R5 R0
       22 MOVE                             R2 R4
       23 LOADK                            R3 K4 ["Assistant "]
       24 MOVE                             R4 R2
       25 CONCAT                           R1 R3 R4
       26 GETIMPORT                        R2 K8 [Enum.FinishRecordingOperation.Append]
       28 GETUPVAL                         R3 4
       29 NAMECALL                         R3 R3 K9 ["GetCanUndo"]
       31 CALL                             R3 1 2
       32 JUMPIFEQ                         R4 R1 ; [+3]
       34 GETIMPORT                        R2 K11 [Enum.FinishRecordingOperation.Commit]
       36 GETUPVAL                         R5 4
       37 GETUPVAL                         R7 0
       38 MOVE                             R8 R2
       39 NAMECALL                         R5 R5 K12 ["FinishRecording"]
       41 CALL                             R5 3 0
       42 LOADNIL                          R5
       43 SETUPVAL                         R5 0
       44 LOADB                            R5 1
       45 RETURN                           R5 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 0
        3 LOADNIL                          R3
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          REF R2
        7 NEWCLOSURE                       R5 P1
        8 CAPTURE                          VAL R1
        9 CAPTURE                          REF R2
       10 NEWCLOSURE                       R6 P2
       11 CAPTURE                          REF R3
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          REF R2
       16 NEWCLOSURE                       R7 P3
       17 CAPTURE                          REF R3
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          REF R2
       21 CAPTURE                          VAL R0
       22 DUPTABLE                         R8 K2 [{"startRecording", "endRecording"}]
       23 SETTABLEKS                       R6 R8 K0 ["startRecording"]
       25 SETTABLEKS                       R7 R8 K1 ["endRecording"]
       27 CLOSEUPVALS                      R2
       28 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["AssistantUI"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R4 R1 K6 ["Flags"]
       13 GETTABLEKS                       R3 R4 K7 ["FFlagDebugLogAssistantUI"]
       15 CALL                             R2 1 1
       16 DUPCLOSURE                       R3 K8 [PROTO_2]
       17 SETTABLEKS                       R3 R0 K9 ["getStandardHandlers"]
       19 DUPCLOSURE                       R3 K10 [PROTO_7]
       20 CAPTURE                          VAL R2
       21 SETTABLEKS                       R3 R0 K11 ["getPluginHandlers"]
       23 RETURN                           R0 1
