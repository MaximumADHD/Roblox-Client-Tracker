PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["beginEditingAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setPart"]
        3 LOADK                            R2 K1 ["value"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K2 ["finishEditing"]
        9 GETIMPORT                        R2 K6 [Enum.FinishRecordingOperation.Commit]
       11 CALL                             R1 1 0
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{"info", "beginEditingAsync", "finishEditing"}]
        5 GETTABLEKS                       R4 R0 K1 ["info"]
        7 SETTABLEKS                       R4 R3 K1 ["info"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R4 R3 K2 ["beginEditingAsync"]
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R4 R3 K3 ["finishEditing"]
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["EditorTextbox"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["PropertyEditorTypes"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R5 K10 ["React"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K11 [PROTO_2]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R1
       29 RETURN                           R4 1
