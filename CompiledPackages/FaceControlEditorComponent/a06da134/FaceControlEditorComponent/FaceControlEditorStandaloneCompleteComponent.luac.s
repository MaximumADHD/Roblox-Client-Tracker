PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["createElement"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["ContextStack"]
        8 DUPTABLE                         R4 K3 [{"providers"}]
        9 NEWTABLE                         R5 0 2
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K0 ["createElement"]
       14 GETUPVAL                         R8 3
       15 GETTABLEKS                       R7 R8 K4 ["FoundationProvider"]
       17 DUPTABLE                         R8 K7 [{"theme", "device"}]
       18 SETTABLEKS                       R1 R8 K5 ["theme"]
       20 LOADK                            R9 K8 ["Desktop"]
       21 SETTABLEKS                       R9 R8 K6 ["device"]
       23 CALL                             R6 2 1
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R7 R8 K0 ["createElement"]
       27 GETUPVAL                         R8 4
       28 DUPTABLE                         R9 K10 [{"plugin"}]
       29 GETTABLEKS                       R10 R0 K11 ["Plugin"]
       31 SETTABLEKS                       R10 R9 K9 ["plugin"]
       33 CALL                             R7 2 -1
       34 SETLIST                          R5 R6 -1 [1]
       36 SETTABLEKS                       R5 R4 K2 ["providers"]
       38 NEWTABLE                         R5 0 1
       40 GETUPVAL                         R7 1
       41 GETTABLEKS                       R6 R7 K0 ["createElement"]
       43 GETUPVAL                         R7 5
       44 DUPTABLE                         R8 K13 [{"localizationFunction"}]
       45 GETTABLEKS                       R9 R0 K12 ["localizationFunction"]
       47 SETTABLEKS                       R9 R8 K12 ["localizationFunction"]
       49 CALL                             R6 2 -1
       50 SETLIST                          R5 R6 -1 [1]
       52 CALL                             R2 3 -1
       53 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FaceControlEditorComponent"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["FaceControlEditor"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K9 ["FaceControlEditorStandaloneProvider"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Hooks"]
       25 GETTABLEKS                       R5 R6 K11 ["useFoundationStudioTheme"]
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
