PROTO_0:
        0 NEWTABLE                         R0 0 2
        2 DUPTABLE                         R1 K2 [{"name", "chip"}]
        3 LOADK                            R2 K3 ["x"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K5 [{"color"}]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K6 ["Vector"]
       10 GETTABLEKS                       R3 R3 K7 ["Chip"]
       12 GETTABLEKS                       R3 R3 K8 ["XColor"]
       14 SETTABLEKS                       R3 R2 K4 ["color"]
       16 SETTABLEKS                       R2 R1 K1 ["chip"]
       18 DUPTABLE                         R2 K2 [{"name", "chip"}]
       19 LOADK                            R3 K9 ["y"]
       20 SETTABLEKS                       R3 R2 K0 ["name"]
       22 DUPTABLE                         R3 K5 [{"color"}]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K6 ["Vector"]
       26 GETTABLEKS                       R4 R4 K7 ["Chip"]
       28 GETTABLEKS                       R4 R4 K10 ["YColor"]
       30 SETTABLEKS                       R4 R3 K4 ["color"]
       32 SETTABLEKS                       R3 R2 K1 ["chip"]
       34 SETLIST                          R0 R1 2 [1]
       36 RETURN                           R0 1

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
       27 GETIMPORT                        R5 K1 [script]
       29 GETTABLEKS                       R5 R5 K4 ["Parent"]
       31 GETTABLEKS                       R5 R5 K12 ["PropertyViewTypes"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R1 K13 ["React"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K14 ["Hooks"]
       43 GETTABLEKS                       R7 R7 K15 ["useVisualValues"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R5 K16 ["createElement"]
       48 DUPCLOSURE                       R8 K17 [PROTO_1]
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R2
       54 RETURN                           R8 1
