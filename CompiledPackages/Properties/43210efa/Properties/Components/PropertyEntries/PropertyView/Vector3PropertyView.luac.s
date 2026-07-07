PROTO_0:
        0 NEWTABLE                         R0 0 3
        2 DUPTABLE                         R1 K3 [{[1] = "x", ["chip"]}]
        3 DUPTABLE                         R2 K5 [{"color"}]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K6 ["Vector"]
        7 GETTABLEKS                       R3 R3 K7 ["Chip"]
        9 GETTABLEKS                       R3 R3 K8 ["XColor"]
       11 SETTABLEKS                       R3 R2 K4 ["color"]
       13 SETTABLEKS                       R2 R1 K2 ["chip"]
       15 DUPTABLE                         R2 K10 [{[1] = "y", ["chip"]}]
       16 DUPTABLE                         R3 K5 [{"color"}]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K6 ["Vector"]
       20 GETTABLEKS                       R4 R4 K7 ["Chip"]
       22 GETTABLEKS                       R4 R4 K11 ["YColor"]
       24 SETTABLEKS                       R4 R3 K4 ["color"]
       26 SETTABLEKS                       R3 R2 K2 ["chip"]
       28 DUPTABLE                         R3 K13 [{[1] = "z", ["chip"]}]
       29 DUPTABLE                         R4 K5 [{"color"}]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K6 ["Vector"]
       33 GETTABLEKS                       R5 R5 K7 ["Chip"]
       35 GETTABLEKS                       R5 R5 K14 ["ZColor"]
       37 SETTABLEKS                       R5 R4 K4 ["color"]
       39 SETTABLEKS                       R4 R3 K2 ["chip"]
       41 SETLIST                          R0 R1 3 [1]
       43 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 NEWTABLE                         R4 0 1
        9 MOVE                             R5 R1
       10 SETLIST                          R4 R5 1 [1]
       12 CALL                             R2 2 1
       13 GETUPVAL                         R3 2
       14 GETUPVAL                         R4 3
       15 GETUPVAL                         R5 4
       16 GETTABLEKS                       R5 R5 K1 ["Dictionary"]
       18 GETTABLEKS                       R5 R5 K2 ["join"]
       20 MOVE                             R6 R0
       21 DUPTABLE                         R7 K4 [{"partConfigs"}]
       22 SETTABLEKS                       R2 R7 K3 ["partConfigs"]
       24 CALL                             R5 2 1
       25 CALL                             R3 2 -1
       26 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Cryo"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Util"]
       20 GETTABLEKS                       R4 R4 K10 ["Number"]
       22 GETTABLEKS                       R4 R4 K11 ["MultiNumberInput"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K12 ["PropertyEditorTypes"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R1 K13 ["React"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K14 ["Hooks"]
       39 GETTABLEKS                       R7 R7 K15 ["useVisualValues"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R5 K16 ["createElement"]
       44 DUPCLOSURE                       R8 K17 [PROTO_1]
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R2
       50 RETURN                           R8 1
