PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 NAMECALL                         R3 R3 K1 ["TryBeginRecording"]
        5 CALL                             R3 3 1
        6 ORK                              R2 R3 K0 [""]
        7 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R3 0
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 MOVE                             R7 R2
        7 NAMECALL                         R3 R3 K1 ["FinishRecording"]
        9 CALL                             R3 4 0
       10 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R0 K2 [{"BeginRecording", "FinishRecording"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["BeginRecording"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["FinishRecording"]
        7 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 DUPCLOSURE                       R2 K5 [PROTO_1]
       10 CAPTURE                          VAL R0
       11 DUPCLOSURE                       R3 K6 [PROTO_2]
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R2
       14 RETURN                           R3 1
