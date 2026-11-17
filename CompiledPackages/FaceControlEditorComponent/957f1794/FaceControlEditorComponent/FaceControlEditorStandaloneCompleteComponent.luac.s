PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["ContextStack"]
        8 DUPTABLE                         R4 K3 [{"providers"}]
        9 NEWTABLE                         R5 0 2
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K0 ["createElement"]
       14 GETUPVAL                         R7 3
       15 GETTABLEKS                       R7 R7 K4 ["FoundationProvider"]
       17 DUPTABLE                         R8 K8 [{["theme"], ["device"] = "Desktop"}]
       18 SETTABLEKS                       R1 R8 K5 ["theme"]
       20 CALL                             R6 2 1
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R7 R7 K0 ["createElement"]
       24 GETUPVAL                         R8 4
       25 DUPTABLE                         R9 K10 [{"plugin"}]
       26 GETTABLEKS                       R10 R0 K11 ["Plugin"]
       28 SETTABLEKS                       R10 R9 K9 ["plugin"]
       30 CALL                             R7 2 -1
       31 SETLIST                          R5 R6 -1 [1]
       33 SETTABLEKS                       R5 R4 K2 ["providers"]
       35 NEWTABLE                         R5 0 1
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K0 ["createElement"]
       40 GETUPVAL                         R7 5
       41 DUPTABLE                         R8 K13 [{"localizationFunction"}]
       42 GETTABLEKS                       R9 R0 K12 ["localizationFunction"]
       44 SETTABLEKS                       R9 R8 K12 ["localizationFunction"]
       46 CALL                             R6 2 -1
       47 SETLIST                          R5 R6 -1 [1]
       49 CALL                             R2 3 -1
       50 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FaceControlEditorComponent"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["FaceControlEditor"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K9 ["FaceControlEditorStandaloneProvider"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Hooks"]
       25 GETTABLEKS                       R5 R5 K11 ["useFoundationStudioTheme"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R1 K12 ["Foundation"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R1 K13 ["React"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R1 K14 ["ReactUtils"]
       42 CALL                             R7 1 1
       43 DUPCLOSURE                       R8 K15 [PROTO_0]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R2
       50 RETURN                           R8 1
