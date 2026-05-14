PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+29]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["createElement"]
        5 GETUPVAL                         R2 2
        6 DUPTABLE                         R3 K7 [{"OnClick", "Size", "LayoutOrder", "Selected", "Stylizer", "Style"}]
        7 GETTABLEKS                       R4 R0 K8 ["OnToggleItem"]
        9 SETTABLEKS                       R4 R3 K1 ["OnClick"]
       11 GETTABLEKS                       R4 R0 K2 ["Size"]
       13 SETTABLEKS                       R4 R3 K2 ["Size"]
       15 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
       17 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       19 GETTABLEKS                       R4 R0 K9 ["Value"]
       21 SETTABLEKS                       R4 R3 K4 ["Selected"]
       23 GETUPVAL                         R4 3
       24 SETTABLEKS                       R4 R3 K5 ["Stylizer"]
       26 LOADK                            R4 K10 ["EyeIcon"]
       27 SETTABLEKS                       R4 R3 K6 ["Style"]
       29 CALL                             R1 2 1
       30 RETURN                           R1 1
       31 GETUPVAL                         R1 1
       32 GETTABLEKS                       R1 R1 K0 ["createElement"]
       34 GETUPVAL                         R2 2
       35 DUPTABLE                         R3 K11 [{"OnClick", "Size", "LayoutOrder", "Selected", "Stylizer"}]
       36 GETTABLEKS                       R4 R0 K8 ["OnToggleItem"]
       38 SETTABLEKS                       R4 R3 K1 ["OnClick"]
       40 GETTABLEKS                       R4 R0 K2 ["Size"]
       42 SETTABLEKS                       R4 R3 K2 ["Size"]
       44 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
       46 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       48 GETTABLEKS                       R4 R0 K9 ["Value"]
       50 SETTABLEKS                       R4 R3 K4 ["Selected"]
       52 GETUPVAL                         R4 3
       53 SETTABLEKS                       R4 R3 K5 ["Stylizer"]
       55 CALL                             R1 2 1
       56 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["DevFrameworkToggleAllowEyeIcon"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssetImporter"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["RoactCompat"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R2 K13 ["Style"]
       29 GETTABLEKS                       R4 R4 K14 ["Stylizer"]
       31 GETTABLEKS                       R5 R2 K15 ["UI"]
       33 GETTABLEKS                       R6 R5 K16 ["ToggleButton"]
       35 DUPCLOSURE                       R7 K17 [PROTO_0]
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R4
       40 RETURN                           R7 1
