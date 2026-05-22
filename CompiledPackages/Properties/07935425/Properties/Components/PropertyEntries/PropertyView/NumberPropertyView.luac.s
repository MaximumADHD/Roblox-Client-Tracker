PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setPart"]
        3 LOADK                            R2 K1 ["value"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["beginEditingAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["finishEditing"]
        3 GETIMPORT                        R1 K4 [Enum.FinishRecordingOperation.Commit]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useSignalState"]
        3 GETTABLEKS                       R2 R0 K1 ["getInfo"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useCallback"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 NEWTABLE                         R4 0 1
       13 GETTABLEKS                       R5 R0 K3 ["setPart"]
       15 SETLIST                          R4 R5 1 [1]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R5 0 1
       25 GETTABLEKS                       R6 R0 K4 ["beginEditingAsync"]
       27 SETLIST                          R5 R6 1 [1]
       29 CALL                             R3 2 1
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       33 NEWCLOSURE                       R5 P2
       34 CAPTURE                          VAL R0
       35 NEWTABLE                         R6 0 1
       37 GETTABLEKS                       R7 R0 K5 ["finishEditing"]
       39 SETLIST                          R6 R7 1 [1]
       41 CALL                             R4 2 1
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R5 R5 K6 ["createElement"]
       45 GETUPVAL                         R6 2
       46 DUPTABLE                         R7 K12 [{"propertyPart", "readonly", "onEditStart", "onChange", "onEditFinish"}]
       47 GETTABLEKS                       R8 R1 K13 ["parts"]
       49 GETTABLEKS                       R8 R8 K14 ["value"]
       51 SETTABLEKS                       R8 R7 K7 ["propertyPart"]
       53 GETTABLEKS                       R8 R1 K8 ["readonly"]
       55 SETTABLEKS                       R8 R7 K8 ["readonly"]
       57 SETTABLEKS                       R3 R7 K9 ["onEditStart"]
       59 SETTABLEKS                       R2 R7 K10 ["onChange"]
       61 SETTABLEKS                       R4 R7 K11 ["onEditFinish"]
       63 CALL                             R5 2 -1
       64 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETIMPORT                        R3 K1 [script]
       13 GETTABLEKS                       R3 R3 K4 ["Parent"]
       15 GETTABLEKS                       R3 R3 K7 ["PropertyViewTypes"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K8 ["React"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K9 ["SignalsReact"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["Util"]
       34 GETTABLEKS                       R6 R6 K12 ["Number"]
       36 GETTABLEKS                       R6 R6 K13 ["SingleNumberInput"]
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R6 K14 [PROTO_3]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R5
       43 GETTABLEKS                       R7 R3 K15 ["memo"]
       45 MOVE                             R8 R6
       46 CALL                             R7 1 -1
       47 RETURN                           R7 -1
