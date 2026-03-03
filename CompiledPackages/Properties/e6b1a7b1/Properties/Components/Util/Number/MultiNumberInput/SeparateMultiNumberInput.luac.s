PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["beginEditingAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["finishEditing"]
        3 GETIMPORT                        R1 K4 [Enum.FinishRecordingOperation.Commit]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["beginEditingAsync"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K0 ["useCallback"]
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R4 0 1
       19 GETTABLEKS                       R5 R0 K2 ["finishEditing"]
       21 SETLIST                          R4 R5 1 [1]
       23 CALL                             R2 2 1
       24 NEWTABLE                         R3 0 0
       26 GETTABLEKS                       R4 R0 K3 ["partConfigs"]
       28 LOADNIL                          R5
       29 LOADNIL                          R6
       30 FORGPREP                         R4
       31 GETTABLEKS                       R9 R8 K4 ["name"]
       33 GETUPVAL                         R10 1
       34 GETUPVAL                         R11 2
       35 DUPTABLE                         R12 K13 [{"LayoutOrder", "partConfig", "part", "setPart", "readonly", "onEditStart", "onEditFinish", "Visible"}]
       36 SETTABLEKS                       R7 R12 K5 ["LayoutOrder"]
       38 SETTABLEKS                       R8 R12 K6 ["partConfig"]
       40 GETTABLEKS                       R15 R0 K14 ["info"]
       42 GETTABLEKS                       R14 R15 K15 ["parts"]
       44 GETTABLEKS                       R15 R8 K4 ["name"]
       46 GETTABLE                         R13 R14 R15
       47 SETTABLEKS                       R13 R12 K7 ["part"]
       49 GETTABLEKS                       R13 R0 K8 ["setPart"]
       51 SETTABLEKS                       R13 R12 K8 ["setPart"]
       53 GETTABLEKS                       R14 R0 K14 ["info"]
       55 GETTABLEKS                       R13 R14 K9 ["readonly"]
       57 SETTABLEKS                       R13 R12 K9 ["readonly"]
       59 SETTABLEKS                       R1 R12 K10 ["onEditStart"]
       61 SETTABLEKS                       R2 R12 K11 ["onEditFinish"]
       63 GETTABLEKS                       R13 R0 K12 ["Visible"]
       65 SETTABLEKS                       R13 R12 K12 ["Visible"]
       67 CALL                             R10 2 1
       68 SETTABLE                         R10 R3 R9
       69 FORGLOOP                         R4 2 ; [-39]
       71 GETUPVAL                         R4 1
       72 GETUPVAL                         R6 0
       73 GETTABLEKS                       R5 R6 K16 ["Fragment"]
       75 NEWTABLE                         R6 0 0
       77 NEWTABLE                         R7 0 0
       79 MOVE                             R8 R3
       80 CALL                             R4 4 -1
       81 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R7 R0 K7 ["Components"]
       13 GETTABLEKS                       R6 R7 K8 ["Util"]
       15 GETTABLEKS                       R5 R6 K9 ["Number"]
       17 GETTABLEKS                       R4 R5 K10 ["MultiNumberInput"]
       19 GETTABLEKS                       R3 R4 K11 ["NumberPartInput"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K6 [require]
       24 GETTABLEKS                       R4 R0 K12 ["PropertyEditorTypes"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R1 K13 ["React"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K14 ["createElement"]
       34 DUPCLOSURE                       R6 K15 [PROTO_2]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R2
       38 RETURN                           R6 1
