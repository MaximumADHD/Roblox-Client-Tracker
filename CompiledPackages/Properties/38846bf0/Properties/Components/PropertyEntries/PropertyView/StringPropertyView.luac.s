PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["beginEditingAsync"]
        5 CALL                             R1 0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["setPart"]
        9 LOADK                            R2 K2 ["value"]
       10 MOVE                             R3 R0
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K3 ["finishEditing"]
       15 GETIMPORT                        R2 K7 [Enum.FinishRecordingOperation.Commit]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["parts"]
        2 GETTABLEKS                       R2 R2 K1 ["value"]
        4 GETTABLEKS                       R2 R2 K2 ["multiple"]
        6 JUMPIFNOT                        R2 ; [+2]
        7 LOADK                            R1 K3 ["-"]
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R0 K0 ["parts"]
       11 GETTABLEKS                       R1 R1 K1 ["value"]
       13 GETTABLEKS                       R1 R1 K1 ["value"]
       15 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useSignalBinding"]
        3 GETTABLEKS                       R2 R0 K1 ["getInfo"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["useSignalState"]
        9 GETTABLEKS                       R3 R0 K1 ["getInfo"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K3 ["readonly"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       17 DUPCLOSURE                       R5 K5 [PROTO_0]
       18 NEWTABLE                         R6 0 0
       20 CALL                             R4 2 1
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       24 NEWCLOSURE                       R6 P1
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R7 0 3
       28 GETTABLEKS                       R8 R0 K6 ["beginEditingAsync"]
       30 GETTABLEKS                       R9 R0 K7 ["setPart"]
       32 GETTABLEKS                       R10 R0 K8 ["finishEditing"]
       34 SETLIST                          R7 R8 3 [1]
       36 CALL                             R5 2 1
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K9 ["createElement"]
       40 GETUPVAL                         R7 2
       41 DUPTABLE                         R8 K11 [{"text", "readonly", "beginEditingAsync", "finishEditing"}]
       42 DUPCLOSURE                       R11 K12 [PROTO_2]
       43 NAMECALL                         R9 R1 K13 ["map"]
       45 CALL                             R9 2 1
       46 SETTABLEKS                       R9 R8 K10 ["text"]
       48 SETTABLEKS                       R3 R8 K3 ["readonly"]
       50 SETTABLEKS                       R4 R8 K6 ["beginEditingAsync"]
       52 SETTABLEKS                       R5 R8 K8 ["finishEditing"]
       54 CALL                             R6 2 -1
       55 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["EditorTextbox"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K9 ["PropertyEditorTypes"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K4 ["Parent"]
       25 GETTABLEKS                       R5 R5 K10 ["React"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R1 K11 ["SignalsReact"]
       32 CALL                             R5 1 1
       33 DUPCLOSURE                       R6 K12 [PROTO_3]
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R2
       37 GETTABLEKS                       R7 R4 K13 ["memo"]
       39 MOVE                             R8 R6
       40 CALL                             R7 1 -1
       41 RETURN                           R7 -1
