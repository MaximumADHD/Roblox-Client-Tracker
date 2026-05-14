PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["Fire"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["Fire"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["Fire"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["new"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useState"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K1 ["new"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["useState"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K1 ["new"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K2 ["useEventConnection"]
       24 GETTABLEKS                       R5 R0 K3 ["dockWidget"]
       26 GETTABLEKS                       R5 R5 K4 ["InputBegan"]
       28 NEWCLOSURE                       R6 P0
       29 CAPTURE                          VAL R1
       30 NEWTABLE                         R7 0 1
       32 MOVE                             R8 R1
       33 SETLIST                          R7 R8 1 [1]
       35 CALL                             R4 3 0
       36 GETUPVAL                         R4 2
       37 GETTABLEKS                       R4 R4 K2 ["useEventConnection"]
       39 GETTABLEKS                       R5 R0 K3 ["dockWidget"]
       41 GETTABLEKS                       R5 R5 K5 ["InputChanged"]
       43 NEWCLOSURE                       R6 P1
       44 CAPTURE                          VAL R2
       45 NEWTABLE                         R7 0 1
       47 MOVE                             R8 R2
       48 SETLIST                          R7 R8 1 [1]
       50 CALL                             R4 3 0
       51 GETUPVAL                         R4 2
       52 GETTABLEKS                       R4 R4 K2 ["useEventConnection"]
       54 GETTABLEKS                       R5 R0 K3 ["dockWidget"]
       56 GETTABLEKS                       R5 R5 K6 ["InputEnded"]
       58 NEWCLOSURE                       R6 P2
       59 CAPTURE                          VAL R3
       60 NEWTABLE                         R7 0 1
       62 MOVE                             R8 R3
       63 SETLIST                          R7 R8 1 [1]
       65 CALL                             R4 3 0
       66 GETUPVAL                         R4 3
       67 GETUPVAL                         R5 4
       68 GETTABLEKS                       R5 R5 K7 ["Components"]
       70 GETTABLEKS                       R5 R5 K8 ["Contexts"]
       72 GETTABLEKS                       R5 R5 K9 ["WindowInputContextProvider"]
       74 DUPTABLE                         R6 K13 [{"inputBeganSignal", "inputChangedSignal", "inputEndedSignal"}]
       75 SETTABLEKS                       R1 R6 K10 ["inputBeganSignal"]
       77 SETTABLEKS                       R2 R6 K11 ["inputChangedSignal"]
       79 SETTABLEKS                       R3 R6 K12 ["inputEndedSignal"]
       81 GETTABLEKS                       R7 R0 K14 ["children"]
       83 CALL                             R4 3 -1
       84 RETURN                           R4 -1

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
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Signal"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K11 ["createElement"]
       37 NEWTABLE                         R6 1 0
       39 DUPCLOSURE                       R7 K12 [PROTO_3]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R1
       45 SETTABLEKS                       R7 R6 K13 ["Provider"]
       47 RETURN                           R6 1
