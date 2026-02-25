PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setPart"]
        3 LOADK                            R2 K1 ["value"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["beginEditingAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["finishEditing"]
        3 GETIMPORT                        R1 K4 [Enum.FinishRecordingOperation.Commit]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["setPart"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K0 ["useCallback"]
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R4 0 1
       19 GETTABLEKS                       R5 R0 K2 ["beginEditingAsync"]
       21 SETLIST                          R4 R5 1 [1]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R3 R4 K0 ["useCallback"]
       27 NEWCLOSURE                       R4 P2
       28 CAPTURE                          VAL R0
       29 NEWTABLE                         R5 0 1
       31 GETTABLEKS                       R6 R0 K3 ["finishEditing"]
       33 SETLIST                          R5 R6 1 [1]
       35 CALL                             R3 2 1
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R4 R5 K4 ["createElement"]
       39 GETUPVAL                         R5 1
       40 DUPTABLE                         R6 K10 [{"propertyPart", "readonly", "onEditStart", "onChange", "onEditFinish"}]
       41 GETTABLEKS                       R9 R0 K11 ["info"]
       43 GETTABLEKS                       R8 R9 K12 ["parts"]
       45 GETTABLEKS                       R7 R8 K13 ["value"]
       47 SETTABLEKS                       R7 R6 K5 ["propertyPart"]
       49 GETTABLEKS                       R8 R0 K11 ["info"]
       51 GETTABLEKS                       R7 R8 K6 ["readonly"]
       53 SETTABLEKS                       R7 R6 K6 ["readonly"]
       55 SETTABLEKS                       R2 R6 K7 ["onEditStart"]
       57 SETTABLEKS                       R1 R6 K8 ["onChange"]
       59 SETTABLEKS                       R3 R6 K9 ["onEditFinish"]
       61 CALL                             R4 2 -1
       62 RETURN                           R4 -1

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
       21 GETTABLEKS                       R7 R0 K9 ["Components"]
       23 GETTABLEKS                       R6 R7 K10 ["Util"]
       25 GETTABLEKS                       R5 R6 K11 ["Number"]
       27 GETTABLEKS                       R4 R5 K12 ["SingleNumberInput"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K13 [PROTO_3]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R3
       33 RETURN                           R4 1
