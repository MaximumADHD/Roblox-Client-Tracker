PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["PathReducer"]
        5 GETTABLEKS                       R2 R1 K2 ["ChangeHistoryServiceRecording"]
        7 GETUPVAL                         R3 0
        8 JUMPIFNOTEQKNIL                  R3 ; [+30]
       10 GETUPVAL                         R3 1
       11 NAMECALL                         R3 R3 K3 ["IsRecordingInProgress"]
       13 CALL                             R3 1 1
       14 JUMPIFNOT                        R3 ; [+17]
       15 JUMPIFEQKNIL                     R2 ; [+9]
       17 GETUPVAL                         R3 1
       18 MOVE                             R5 R2
       19 GETIMPORT                        R6 K7 [Enum.FinishRecordingOperation.Commit]
       21 NAMECALL                         R3 R3 K8 ["FinishRecording"]
       23 CALL                             R3 3 0
       24 JUMP                             ; [+7]
       25 GETUPVAL                         R3 1
       26 LOADK                            R5 K9 [""]
       27 GETIMPORT                        R6 K11 [Enum.FinishRecordingOperation.Cancel]
       29 NAMECALL                         R3 R3 K8 ["FinishRecording"]
       31 CALL                             R3 3 0
       32 GETUPVAL                         R5 2
       33 LOADNIL                          R6
       34 CALL                             R5 1 -1
       35 NAMECALL                         R3 R0 K12 ["dispatch"]
       37 CALL                             R3 -1 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R3 0
       40 JUMPIFEQKNIL                     R3 ; [+16]
       42 JUMPIFNOTEQKNIL                  R2 ; [+14]
       44 GETUPVAL                         R3 1
       45 GETUPVAL                         R5 0
       46 NAMECALL                         R3 R3 K13 ["TryBeginRecording"]
       48 CALL                             R3 2 1
       49 MOVE                             R2 R3
       50 JUMPIFNOT                        R2 ; [+6]
       51 GETUPVAL                         R5 2
       52 MOVE                             R6 R2
       53 CALL                             R5 1 -1
       54 NAMECALL                         R3 R0 K12 ["dispatch"]
       56 CALL                             R3 -1 0
       57 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["ChangeHistoryService"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETTABLEKS                       R3 R0 K7 ["Src"]
       17 GETTABLEKS                       R2 R3 K8 ["Actions"]
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["SetRecording"]
       23 CALL                             R3 1 1
       24 DUPCLOSURE                       R4 K12 [PROTO_1]
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R3
       27 RETURN                           R4 1
