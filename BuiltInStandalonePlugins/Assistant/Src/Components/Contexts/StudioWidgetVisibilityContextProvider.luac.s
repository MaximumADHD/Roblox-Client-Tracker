PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["dockWidget"]
        4 GETTABLEKS                       R1 R1 K1 ["Enabled"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["dockWidget"]
        4 GETTABLEKS                       R1 R1 K1 ["Enabled"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETTABLEKS                       R2 R0 K1 ["dockWidget"]
        5 GETTABLEKS                       R2 R2 K2 ["Enabled"]
        7 CALL                             R1 1 2
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["useEffect"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R0
       14 NEWTABLE                         R5 0 1
       16 GETTABLEKS                       R6 R0 K1 ["dockWidget"]
       18 SETLIST                          R5 R6 1 [1]
       20 CALL                             R3 2 0
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K4 ["useEventConnection"]
       24 GETTABLEKS                       R4 R0 K1 ["dockWidget"]
       26 LOADK                            R6 K2 ["Enabled"]
       27 NAMECALL                         R4 R4 K5 ["GetPropertyChangedSignal"]
       29 CALL                             R4 2 1
       30 NEWCLOSURE                       R5 P1
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R0
       33 NEWTABLE                         R6 0 1
       35 GETTABLEKS                       R7 R0 K1 ["dockWidget"]
       37 SETLIST                          R6 R7 1 [1]
       39 CALL                             R3 3 0
       40 GETUPVAL                         R3 2
       41 GETUPVAL                         R4 3
       42 GETTABLEKS                       R4 R4 K6 ["Components"]
       44 GETTABLEKS                       R4 R4 K7 ["Contexts"]
       46 GETTABLEKS                       R4 R4 K8 ["WidgetVisibilityContextProvider"]
       48 DUPTABLE                         R5 K10 [{"isVisible"}]
       49 SETTABLEKS                       R1 R5 K9 ["isVisible"]
       51 GETTABLEKS                       R6 R0 K11 ["children"]
       53 CALL                             R3 3 -1
       54 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["createElement"]
       30 DUPCLOSURE                       R5 K11 [PROTO_2]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R1
       35 RETURN                           R5 1
