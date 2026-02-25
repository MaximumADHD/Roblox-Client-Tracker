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
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["finishEditing"]
        3 GETIMPORT                        R1 K4 [Enum.FinishRecordingOperation.Commit]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["info"]
        2 GETTABLEKS                       R3 R4 K1 ["parts"]
        4 GETTABLEKS                       R2 R3 K2 ["value"]
        6 GETTABLEKS                       R1 R2 K2 ["value"]
        8 GETTABLEKS                       R4 R0 K0 ["info"]
       10 GETTABLEKS                       R3 R4 K3 ["readonly"]
       12 NOT                              R2 R3
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K4 ["createElement"]
       16 GETUPVAL                         R4 1
       17 DUPTABLE                         R5 K11 [{"value", "onFocusGained", "onChange", "onFocusLost", "step", "multiple", "editable"}]
       18 SETTABLEKS                       R1 R5 K2 ["value"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R6 R5 K5 ["onFocusGained"]
       24 NEWCLOSURE                       R6 P1
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R6 R5 K6 ["onChange"]
       28 NEWCLOSURE                       R6 P2
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R6 R5 K7 ["onFocusLost"]
       32 LOADN                            R6 1
       33 SETTABLEKS                       R6 R5 K8 ["step"]
       35 GETTABLEKS                       R9 R0 K0 ["info"]
       37 GETTABLEKS                       R8 R9 K1 ["parts"]
       39 GETTABLEKS                       R7 R8 K2 ["value"]
       41 GETTABLEKS                       R6 R7 K9 ["multiple"]
       43 SETTABLEKS                       R6 R5 K9 ["multiple"]
       45 SETTABLEKS                       R2 R5 K10 ["editable"]
       47 CALL                             R3 2 -1
       48 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyEditorTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R4 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R4 K8 ["React"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R4 R5 K10 ["NumberPartInput"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K11 [PROTO_3]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 RETURN                           R4 1
