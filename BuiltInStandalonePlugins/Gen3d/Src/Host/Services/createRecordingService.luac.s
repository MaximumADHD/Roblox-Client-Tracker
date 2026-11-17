PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADB                            R2 0
        4 RETURN                           R2 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R4 R1
        7 MOVE                             R5 R1
        8 NAMECALL                         R2 R2 K0 ["TryBeginRecording"]
       10 CALL                             R2 3 1
       11 JUMPIF                           R2 ; [+2]
       12 LOADB                            R3 0
       13 RETURN                           R3 1
       14 GETUPVAL                         R3 0
       15 SETTABLE                         R2 R3 R0
       16 LOADB                            R3 1
       17 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 LOADNIL                          R3
        6 SETTABLE                         R3 R2 R0
        7 GETUPVAL                         R2 1
        8 MOVE                             R4 R1
        9 GETIMPORT                        R5 K3 [Enum.FinishRecordingOperation.Commit]
       11 NAMECALL                         R2 R2 K4 ["FinishRecording"]
       13 CALL                             R2 3 0
       14 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 DUPTABLE                         R1 K2 [{"startRecording", "endRecording"}]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 SETTABLEKS                       R2 R1 K0 ["startRecording"]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 SETTABLEKS                       R2 R1 K1 ["endRecording"]
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_2]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
