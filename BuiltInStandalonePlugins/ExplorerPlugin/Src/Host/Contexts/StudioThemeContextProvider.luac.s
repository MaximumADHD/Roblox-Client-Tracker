PROTO_0:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["Theme"]
        7 GETTABLEKS                       R0 R0 K4 ["Name"]
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["useEventConnection"]
        8 GETIMPORT                        R4 K3 [settings]
       10 CALL                             R4 0 1
       11 GETTABLEKS                       R4 R4 K4 ["Studio"]
       13 GETTABLEKS                       R4 R4 K5 ["ThemeChanged"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U1
       18 NEWTABLE                         R6 0 0
       20 CALL                             R3 3 0
       21 GETUPVAL                         R3 3
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R4 R4 K6 ["Components"]
       25 GETTABLEKS                       R4 R4 K7 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K8 ["ThemeContextProvider"]
       29 DUPTABLE                         R5 K10 [{"theme"}]
       30 SETTABLEKS                       R1 R5 K9 ["theme"]
       32 GETTABLEKS                       R6 R0 K11 ["children"]
       34 CALL                             R3 3 -1
       35 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Explorer"]
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
       30 DUPCLOSURE                       R5 K11 [PROTO_0]
       31 DUPCLOSURE                       R6 K12 [PROTO_2]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R1
       37 RETURN                           R6 1
