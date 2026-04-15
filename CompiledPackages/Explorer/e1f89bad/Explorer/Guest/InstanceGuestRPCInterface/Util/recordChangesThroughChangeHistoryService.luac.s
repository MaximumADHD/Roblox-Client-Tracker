PROTO_0:
        0 GETUPVAL                         R0 1
        1 CALL                             R0 0 1
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R2 K0 ["%*\n%*"]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R5 K3 [debug.traceback]
        4 CALL                             R5 0 1
        5 NAMECALL                         R2 R2 K4 ["format"]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 SETUPVAL                         R1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["TryBeginRecording"]
        4 CALL                             R2 2 1
        5 GETIMPORT                        R3 K4 [Enum.FinishRecordingOperation.Cancel]
        7 LOADNIL                          R4
        8 GETIMPORT                        R5 K6 [xpcall]
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          REF R3
       12 CAPTURE                          VAL R1
       13 NEWCLOSURE                       R7 P1
       14 CAPTURE                          REF R4
       15 CALL                             R5 2 0
       16 JUMPIFEQKNIL                     R2 ; [+7]
       18 GETUPVAL                         R5 0
       19 MOVE                             R7 R2
       20 MOVE                             R8 R3
       21 NAMECALL                         R5 R5 K7 ["FinishRecording"]
       23 CALL                             R5 3 0
       24 JUMPIFEQKNIL                     R4 ; [+5]
       26 GETIMPORT                        R5 K9 [error]
       28 MOVE                             R6 R4
       29 CALL                             R5 1 0
       30 CLOSEUPVALS                      R3
       31 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_2]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
