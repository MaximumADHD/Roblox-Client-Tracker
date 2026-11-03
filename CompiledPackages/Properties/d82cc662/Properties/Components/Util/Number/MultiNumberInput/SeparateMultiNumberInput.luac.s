PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["parts"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["name"]
        5 GETTABLE                         R1 R2 R3
        6 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["partConfigs"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["name"]
       10 GETUPVAL                         R7 1
       11 GETUPVAL                         R8 2
       12 DUPTABLE                         R9 K8 [{"LayoutOrder", "partConfig", "part", "editProperty", "readonly", "Visible"}]
       13 SETTABLEKS                       R4 R9 K2 ["LayoutOrder"]
       15 SETTABLEKS                       R5 R9 K3 ["partConfig"]
       17 GETUPVAL                         R10 3
       18 NEWCLOSURE                       R12 P0
       19 CAPTURE                          VAL R5
       20 NAMECALL                         R10 R10 K9 ["map"]
       22 CALL                             R10 2 1
       23 SETTABLEKS                       R10 R9 K4 ["part"]
       25 GETUPVAL                         R10 0
       26 GETTABLEKS                       R10 R10 K5 ["editProperty"]
       28 SETTABLEKS                       R10 R9 K5 ["editProperty"]
       30 GETUPVAL                         R10 4
       31 SETTABLEKS                       R10 R9 K6 ["readonly"]
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R10 R10 K7 ["Visible"]
       36 SETTABLEKS                       R10 R9 K7 ["Visible"]
       38 CALL                             R7 2 1
       39 SETTABLE                         R7 R0 R6
       40 FORGLOOP                         R1 2 ; [-33]
       42 RETURN                           R0 1

PROTO_2:
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
       15 GETTABLEKS                       R3 R3 K4 ["useMemo"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 NEWTABLE                         R5 0 4
       25 MOVE                             R6 R2
       26 GETTABLEKS                       R7 R0 K5 ["partConfigs"]
       28 GETTABLEKS                       R8 R0 K6 ["editProperty"]
       30 GETTABLEKS                       R9 R0 K7 ["Visible"]
       32 SETLIST                          R5 R6 4 [1]
       34 CALL                             R3 2 1
       35 GETUPVAL                         R4 2
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K8 ["Fragment"]
       39 NEWTABLE                         R6 0 0
       41 MOVE                             R7 R3
       42 CALL                             R4 3 -1
       43 RETURN                           R4 -1

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
       44 DUPCLOSURE                       R8 K17 [PROTO_2]
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R2
       49 RETURN                           R8 1
