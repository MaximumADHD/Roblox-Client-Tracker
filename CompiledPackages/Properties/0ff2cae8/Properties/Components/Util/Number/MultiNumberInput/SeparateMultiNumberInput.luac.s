PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["beginEditingAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["finishEditing"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["parts"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["name"]
        5 GETTABLE                         R1 R2 R3
        6 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["partConfigs"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["name"]
       10 GETUPVAL                         R7 1
       11 GETUPVAL                         R8 2
       12 DUPTABLE                         R9 K10 [{"LayoutOrder", "partConfig", "part", "setPart", "readonly", "onEditStart", "onEditFinish", "Visible"}]
       13 SETTABLEKS                       R4 R9 K2 ["LayoutOrder"]
       15 SETTABLEKS                       R5 R9 K3 ["partConfig"]
       17 GETUPVAL                         R10 3
       18 NEWCLOSURE                       R12 P0
       19 CAPTURE                          VAL R5
       20 NAMECALL                         R10 R10 K11 ["map"]
       22 CALL                             R10 2 1
       23 SETTABLEKS                       R10 R9 K4 ["part"]
       25 GETUPVAL                         R10 0
       26 GETTABLEKS                       R10 R10 K5 ["setPart"]
       28 SETTABLEKS                       R10 R9 K5 ["setPart"]
       30 GETUPVAL                         R10 4
       31 SETTABLEKS                       R10 R9 K6 ["readonly"]
       33 GETUPVAL                         R10 5
       34 SETTABLEKS                       R10 R9 K7 ["onEditStart"]
       36 GETUPVAL                         R10 6
       37 SETTABLEKS                       R10 R9 K8 ["onEditFinish"]
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R10 R10 K9 ["Visible"]
       42 SETTABLEKS                       R10 R9 K9 ["Visible"]
       44 CALL                             R7 2 1
       45 SETTABLE                         R7 R0 R6
       46 FORGLOOP                         R1 2 ; [-39]
       48 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useSignalBinding"]
        3 GETTABLEKS                       R2 R0 K1 ["getInfo"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["useSignalState"]
        9 GETTABLEKS                       R3 R0 K1 ["getInfo"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R2 R2 K3 ["readonly"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K4 ["useCallback"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R5 0 1
       21 GETTABLEKS                       R6 R0 K5 ["beginEditingAsync"]
       23 SETLIST                          R5 R6 1 [1]
       25 CALL                             R3 2 1
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       29 NEWCLOSURE                       R5 P1
       30 CAPTURE                          VAL R0
       31 NEWTABLE                         R6 0 1
       33 GETTABLEKS                       R7 R0 K6 ["finishEditing"]
       35 SETLIST                          R6 R7 1 [1]
       37 CALL                             R4 2 1
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K7 ["useMemo"]
       41 NEWCLOSURE                       R6 P2
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R4
       49 NEWTABLE                         R7 0 4
       51 MOVE                             R8 R2
       52 GETTABLEKS                       R9 R0 K8 ["partConfigs"]
       54 GETTABLEKS                       R10 R0 K9 ["setPart"]
       56 GETTABLEKS                       R11 R0 K10 ["Visible"]
       58 SETLIST                          R7 R8 4 [1]
       60 CALL                             R5 2 1
       61 GETUPVAL                         R6 2
       62 GETUPVAL                         R7 1
       63 GETTABLEKS                       R7 R7 K11 ["Fragment"]
       65 NEWTABLE                         R8 0 0
       67 MOVE                             R9 R5
       68 CALL                             R6 3 -1
       69 RETURN                           R6 -1

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
       24 GETTABLEKS                       R4 R0 K12 ["PropertyEditorTypes"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R0 K13 ["PropertyTypes"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R1 K14 ["React"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R1 K15 ["SignalsReact"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R5 K16 ["createElement"]
       44 DUPCLOSURE                       R8 K17 [PROTO_4]
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R2
       49 RETURN                           R8 1
