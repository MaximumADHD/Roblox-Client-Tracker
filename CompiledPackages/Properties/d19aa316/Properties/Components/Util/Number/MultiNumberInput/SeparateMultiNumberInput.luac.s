PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["beginEditingAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["finishEditing"]
        3 GETIMPORT                        R1 K4 [Enum.FinishRecordingOperation.Commit]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useSignalState"]
        3 GETTABLEKS                       R2 R0 K1 ["getInfo"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useCallback"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 NEWTABLE                         R4 0 1
       13 GETTABLEKS                       R5 R0 K3 ["beginEditingAsync"]
       15 SETLIST                          R4 R5 1 [1]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R5 0 1
       25 GETTABLEKS                       R6 R0 K4 ["finishEditing"]
       27 SETLIST                          R5 R6 1 [1]
       29 CALL                             R3 2 1
       30 NEWTABLE                         R4 0 0
       32 GETTABLEKS                       R5 R0 K5 ["partConfigs"]
       34 LOADNIL                          R6
       35 LOADNIL                          R7
       36 FORGPREP                         R5
       37 GETTABLEKS                       R10 R9 K6 ["name"]
       39 GETUPVAL                         R11 2
       40 GETUPVAL                         R12 3
       41 DUPTABLE                         R13 K15 [{"LayoutOrder", "partConfig", "part", "setPart", "readonly", "onEditStart", "onEditFinish", "Visible"}]
       42 SETTABLEKS                       R8 R13 K7 ["LayoutOrder"]
       44 SETTABLEKS                       R9 R13 K8 ["partConfig"]
       46 GETTABLEKS                       R15 R1 K16 ["parts"]
       48 GETTABLEKS                       R16 R9 K6 ["name"]
       50 GETTABLE                         R14 R15 R16
       51 SETTABLEKS                       R14 R13 K9 ["part"]
       53 GETTABLEKS                       R14 R0 K10 ["setPart"]
       55 SETTABLEKS                       R14 R13 K10 ["setPart"]
       57 GETTABLEKS                       R14 R1 K11 ["readonly"]
       59 SETTABLEKS                       R14 R13 K11 ["readonly"]
       61 SETTABLEKS                       R2 R13 K12 ["onEditStart"]
       63 SETTABLEKS                       R3 R13 K13 ["onEditFinish"]
       65 GETTABLEKS                       R14 R0 K14 ["Visible"]
       67 SETTABLEKS                       R14 R13 K14 ["Visible"]
       69 CALL                             R11 2 1
       70 SETTABLE                         R11 R4 R10
       71 FORGLOOP                         R5 2 ; [-35]
       73 GETUPVAL                         R5 2
       74 GETUPVAL                         R6 1
       75 GETTABLEKS                       R6 R6 K17 ["Fragment"]
       77 NEWTABLE                         R7 0 0
       79 NEWTABLE                         R8 0 0
       81 MOVE                             R9 R4
       82 CALL                             R5 4 -1
       83 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Util"]
       15 GETTABLEKS                       R3 R3 K9 ["Number"]
       17 GETTABLEKS                       R3 R3 K10 ["MultiNumberInput"]
       19 GETTABLEKS                       R3 R3 K11 ["NumberPartInput"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K6 [require]
       24 GETTABLEKS                       R4 R0 K7 ["Components"]
       26 GETTABLEKS                       R4 R4 K12 ["PropertyEntries"]
       28 GETTABLEKS                       R4 R4 K13 ["PropertyView"]
       30 GETTABLEKS                       R4 R4 K14 ["PropertyViewTypes"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K6 [require]
       35 GETTABLEKS                       R5 R1 K15 ["React"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K6 [require]
       40 GETTABLEKS                       R6 R1 K16 ["SignalsReact"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R4 K17 ["createElement"]
       45 DUPCLOSURE                       R7 K18 [PROTO_2]
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R2
       50 RETURN                           R7 1
