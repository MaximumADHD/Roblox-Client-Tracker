PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["DoChange"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+2]
        5 GETIMPORT                        R0 K4 [Enum.FinishRecordingOperation.Cancel]
        7 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQKNIL                  R3 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        7 LOADK                            R3 K0 ["Expecting a valid ChangeHistoryService service"]
        8 GETIMPORT                        R1 K2 [assert]
       10 CALL                             R1 2 0
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETTABLEKS                       R1 R0 K3 ["Name"]
       14 JUMPIFNOT                        R1 ; [+3]
       15 GETTABLEKS                       R1 R0 K4 ["DoChange"]
       17 JUMPIF                           R1 ; [+1]
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R3 R0 K5 ["DisplayName"]
       22 JUMPIF                           R3 ; [+2]
       23 GETTABLEKS                       R3 R0 K3 ["Name"]
       25 GETTABLEKS                       R4 R0 K5 ["DisplayName"]
       27 NAMECALL                         R1 R1 K6 ["TryBeginRecording"]
       29 CALL                             R1 3 1
       30 GETIMPORT                        R2 K8 [pcall]
       32 NEWCLOSURE                       R3 P0
       33 CAPTURE                          VAL R0
       34 CALL                             R2 1 2
       35 JUMPIFNOT                        R1 ; [+11]
       36 JUMPIFNOT                        R2 ; [+2]
       37 MOVE                             R4 R3
       38 JUMP                             ; [+2]
       39 GETIMPORT                        R4 K12 [Enum.FinishRecordingOperation.Cancel]
       41 GETUPVAL                         R5 0
       42 MOVE                             R7 R1
       43 MOVE                             R8 R4
       44 NAMECALL                         R5 R5 K13 ["FinishRecording"]
       46 CALL                             R5 3 0
       47 JUMPIF                           R2 ; [+4]
       48 GETIMPORT                        R4 K15 [error]
       50 MOVE                             R5 R3
       51 CALL                             R4 1 0
       52 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_2]
        2 RETURN                           R0 1
