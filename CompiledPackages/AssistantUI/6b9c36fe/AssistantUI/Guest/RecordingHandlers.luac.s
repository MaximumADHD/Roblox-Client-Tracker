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
        1 JUMPIFNOT                        R2 ; [+16]
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R2 R2 K0 ["IsRecordingInProgress"]
        6 CALL                             R2 2 1
        7 JUMPIF                           R2 ; [+8]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["FFlagDebugLogAssistantUI"]
       11 JUMPIFNOT                        R2 ; [+4]
       12 GETIMPORT                        R2 K3 [warn]
       14 LOADK                            R3 K4 ["StartRecording failed: currentRecording is set but not running"]
       15 CALL                             R2 1 0
       16 LOADB                            R2 0
       17 RETURN                           R2 1
       18 JUMPIF                           R1 ; [+15]
       19 GETUPVAL                         R4 3
       20 GETTABLE                         R3 R4 R0
       21 JUMPIFNOT                        R3 ; [+2]
       22 MOVE                             R2 R3
       23 JUMP                             ; [+7]
       24 GETUPVAL                         R4 4
       25 ADDK                             R4 R4 K5 [1]
       26 SETUPVAL                         R4 4
       27 GETUPVAL                         R4 4
       28 GETUPVAL                         R5 3
       29 SETTABLE                         R4 R5 R0
       30 MOVE                             R2 R4
       31 LOADK                            R3 K6 ["Assistant "]
       32 MOVE                             R4 R2
       33 CONCAT                           R1 R3 R4
       34 FASTCALL2K                       ASSERT R1 K7 ; [+5]
       36 MOVE                             R3 R1
       37 LOADK                            R4 K7 ["Bad recordingName"]
       38 GETIMPORT                        R2 K9 [assert]
       40 CALL                             R2 2 0
       41 GETUPVAL                         R2 1
       42 MOVE                             R4 R1
       43 NAMECALL                         R2 R2 K10 ["TryBeginRecording"]
       45 CALL                             R2 2 1
       46 JUMPIF                           R2 ; [+10]
       47 GETUPVAL                         R3 2
       48 GETTABLEKS                       R3 R3 K1 ["FFlagDebugLogAssistantUI"]
       50 JUMPIFNOT                        R3 ; [+4]
       51 GETIMPORT                        R3 K3 [warn]
       53 LOADK                            R4 K11 ["StartRecording failed: TryBeginRecording returned nil"]
       54 CALL                             R3 1 0
       55 LOADB                            R3 0
       56 RETURN                           R3 1
       57 SETUPVAL                         R2 0
       58 LOADB                            R3 1
       59 MOVE                             R4 R2
       60 RETURN                           R3 2

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+10]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETIMPORT                        R1 K2 [warn]
        8 LOADK                            R2 K3 ["EndRecording failed: currentRecording is nil"]
        9 CALL                             R1 1 0
       10 LOADB                            R1 0
       11 RETURN                           R1 1
       12 GETUPVAL                         R4 2
       13 GETTABLE                         R3 R4 R0
       14 JUMPIFNOT                        R3 ; [+2]
       15 MOVE                             R2 R3
       16 JUMP                             ; [+7]
       17 GETUPVAL                         R4 3
       18 ADDK                             R4 R4 K4 [1]
       19 SETUPVAL                         R4 3
       20 GETUPVAL                         R4 3
       21 GETUPVAL                         R5 2
       22 SETTABLE                         R4 R5 R0
       23 MOVE                             R2 R4
       24 LOADK                            R3 K5 ["Assistant "]
       25 MOVE                             R4 R2
       26 CONCAT                           R1 R3 R4
       27 GETIMPORT                        R2 K9 [Enum.FinishRecordingOperation.Append]
       29 GETUPVAL                         R3 4
       30 NAMECALL                         R3 R3 K10 ["GetCanUndo"]
       32 CALL                             R3 1 2
       33 JUMPIFEQ                         R4 R1 ; [+3]
       35 GETIMPORT                        R2 K12 [Enum.FinishRecordingOperation.Commit]
       37 GETUPVAL                         R5 4
       38 GETUPVAL                         R7 0
       39 MOVE                             R8 R2
       40 NAMECALL                         R5 R5 K13 ["FinishRecording"]
       42 CALL                             R5 3 0
       43 LOADNIL                          R5
       44 SETUPVAL                         R5 0
       45 LOADB                            R5 1
       46 RETURN                           R5 1

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
       11 GETTABLEKS                       R3 R1 K6 ["Flags"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K7 [PROTO_2]
       15 SETTABLEKS                       R3 R0 K8 ["getStandardHandlers"]
       17 DUPCLOSURE                       R3 K9 [PROTO_7]
       18 CAPTURE                          VAL R2
       19 SETTABLEKS                       R3 R0 K10 ["getPluginHandlers"]
       21 RETURN                           R0 1
