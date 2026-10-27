PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADN                            R4 100
        9 CALL                             R3 1 2
       10 GETTABLEKS                       R5 R0 K1 ["controls"]
       12 GETTABLEKS                       R5 R5 K2 ["isDisabled"]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K3 ["createElement"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["React"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Components"]
       20 GETTABLEKS                       R4 R4 K7 ["ViewTypeSelector"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Enums"]
       27 GETTABLEKS                       R5 R5 K9 ["ViewType"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K10 ["Grid"]
       32 DUPTABLE                         R6 K13 [{"controls", "stories"}]
       33 DUPTABLE                         R7 K16 [{["isDisabled"] = False}]
       34 SETTABLEKS                       R7 R6 K11 ["controls"]
       36 NEWTABLE                         R7 0 1
       38 DUPTABLE                         R8 K20 [{["name"] = "Default", ["story"]}]
       39 DUPCLOSURE                       R9 K21 [PROTO_0]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R3
       43 SETTABLEKS                       R9 R8 K19 ["story"]
       45 SETLIST                          R7 R8 1 [1]
       47 SETTABLEKS                       R7 R6 K12 ["stories"]
       49 RETURN                           R6 1
