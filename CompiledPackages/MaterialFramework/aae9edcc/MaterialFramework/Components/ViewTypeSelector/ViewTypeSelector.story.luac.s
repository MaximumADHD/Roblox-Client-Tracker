PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["useState"]
        8 LOADN                            R4 100
        9 CALL                             R3 1 2
       10 GETTABLEKS                       R6 R0 K1 ["controls"]
       12 GETTABLEKS                       R5 R6 K2 ["isDisabled"]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R6 R7 K3 ["createElement"]
       17 GETUPVAL                         R7 2
       18 DUPTABLE                         R8 K9 [{"Disabled", "GridSize", "OnGridSizeChanged", "OnViewTypeSelected", "ViewType"}]
       19 SETTABLEKS                       R5 R8 K4 ["Disabled"]
       21 SETTABLEKS                       R3 R8 K5 ["GridSize"]
       23 SETTABLEKS                       R4 R8 K6 ["OnGridSizeChanged"]
       25 SETTABLEKS                       R2 R8 K7 ["OnViewTypeSelected"]
       27 SETTABLEKS                       R1 R8 K8 ["ViewType"]
       29 CALL                             R6 2 -1
       30 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["React"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Components"]
       20 GETTABLEKS                       R4 R5 K7 ["ViewTypeSelector"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Enums"]
       27 GETTABLEKS                       R5 R6 K9 ["ViewType"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K10 ["Grid"]
       32 DUPTABLE                         R6 K13 [{"controls", "stories"}]
       33 DUPTABLE                         R7 K15 [{"isDisabled"}]
       34 LOADB                            R8 0
       35 SETTABLEKS                       R8 R7 K14 ["isDisabled"]
       37 SETTABLEKS                       R7 R6 K11 ["controls"]
       39 NEWTABLE                         R7 0 1
       41 DUPTABLE                         R8 K18 [{"name", "story"}]
       42 LOADK                            R9 K19 ["Default"]
       43 SETTABLEKS                       R9 R8 K16 ["name"]
       45 DUPCLOSURE                       R9 K20 [PROTO_0]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R3
       49 SETTABLEKS                       R9 R8 K17 ["story"]
       51 SETLIST                          R7 R8 1 [1]
       53 SETTABLEKS                       R7 R6 K12 ["stories"]
       55 RETURN                           R6 1
