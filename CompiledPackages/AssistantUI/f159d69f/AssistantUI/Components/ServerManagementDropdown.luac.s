PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWTABLE                         R2 0 0
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["moveTo"]
        3 GETTABLEKS                       R3 R0 K1 ["AbsolutePosition"]
        5 GETIMPORT                        R4 K4 [Vector2.new]
        7 LOADN                            R5 0
        8 GETTABLEKS                       R6 R0 K5 ["AbsoluteSize"]
       10 GETTABLEKS                       R6 R6 K6 ["Y"]
       12 CALL                             R4 2 1
       13 ADD                              R2 R3 R4
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K7 ["show"]
       18 CALL                             R1 0 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["useMemo"]
        7 DUPCLOSURE                       R4 K1 [PROTO_0]
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 NEWTABLE                         R5 0 0
       12 CALL                             R3 2 1
       13 MOVE                             R4 R1
       14 DUPTABLE                         R5 K5 [{"InitialPosition", "InitialSize", "Contents"}]
       15 GETUPVAL                         R6 5
       16 SETTABLEKS                       R6 R5 K2 ["InitialPosition"]
       18 GETUPVAL                         R6 5
       19 SETTABLEKS                       R6 R5 K3 ["InitialSize"]
       21 SETTABLEKS                       R3 R5 K4 ["Contents"]
       23 CALL                             R4 1 1
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       27 NEWCLOSURE                       R6 P1
       28 CAPTURE                          VAL R4
       29 NEWTABLE                         R7 0 2
       31 GETTABLEKS                       R8 R4 K7 ["moveTo"]
       33 GETTABLEKS                       R9 R4 K8 ["show"]
       35 SETLIST                          R7 R8 2 [1]
       37 CALL                             R5 2 1
       38 GETUPVAL                         R6 6
       39 CALL                             R6 0 1
       40 GETUPVAL                         R7 3
       41 GETUPVAL                         R8 7
       42 DUPTABLE                         R9 K12 [{["tag"] = "auto-xy", ["LayoutOrder"]}]
       43 GETTABLEKS                       R10 R0 K11 ["LayoutOrder"]
       45 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
       47 DUPTABLE                         R10 K16 [{"IconButton", "PopoutMenu", "DialogWidget"}]
       48 GETUPVAL                         R11 3
       49 GETUPVAL                         R12 8
       50 DUPTABLE                         R13 K19 [{"LayoutOrder", "onActivated", "testId"}]
       51 MOVE                             R14 R6
       52 CALL                             R14 0 1
       53 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
       55 SETTABLEKS                       R5 R13 K17 ["onActivated"]
       57 GETUPVAL                         R14 9
       58 GETTABLEKS                       R14 R14 K20 ["ServerManagement"]
       60 GETTABLEKS                       R14 R14 K21 ["Button"]
       62 SETTABLEKS                       R14 R13 K18 ["testId"]
       64 CALL                             R11 2 1
       65 SETTABLEKS                       R11 R10 K13 ["IconButton"]
       67 GETTABLEKS                       R11 R4 K22 ["root"]
       69 SETTABLEKS                       R11 R10 K14 ["PopoutMenu"]
       71 GETTABLEKS                       R11 R2 K22 ["root"]
       73 SETTABLEKS                       R11 R10 K15 ["DialogWidget"]
       75 CALL                             R7 3 -1
       76 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Util"]
       32 GETTABLEKS                       R5 R5 K11 ["TestIds"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Components"]
       39 GETTABLEKS                       R6 R6 K13 ["ToolMenuView"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Components"]
       46 GETTABLEKS                       R7 R7 K14 ["WidgetTrackingIconButton"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K15 ["Hooks"]
       53 GETTABLEKS                       R8 R8 K16 ["useGetPopoutMenu"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K15 ["Hooks"]
       60 GETTABLEKS                       R9 R9 K17 ["useSettingsDialog"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R9 R1 K18 ["View"]
       65 GETTABLEKS                       R10 R3 K19 ["createNextOrder"]
       67 GETTABLEKS                       R11 R2 K20 ["createElement"]
       69 GETIMPORT                        R12 K23 [Vector2.new]
       71 LOADN                            R13 0
       72 LOADN                            R14 0
       73 CALL                             R12 2 1
       74 DUPCLOSURE                       R13 K24 [PROTO_2]
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R12
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R4
       85 GETTABLEKS                       R14 R2 K25 ["memo"]
       87 MOVE                             R15 R13
       88 CALL                             R14 1 -1
       89 RETURN                           R14 -1
