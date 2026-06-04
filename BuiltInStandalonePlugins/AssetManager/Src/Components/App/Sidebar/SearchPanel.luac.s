PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K5 [{"LayoutOrder", "Size", "tag"}]
        7 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       11 GETIMPORT                        R4 K8 [UDim2.new]
       13 LOADN                            R5 1
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K9 ["PaddingSmall"]
       17 LOADN                            R7 0
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K10 ["TopBarHeight"]
       21 CALL                             R4 4 1
       22 SETTABLEKS                       R4 R3 K3 ["Size"]
       24 LOADK                            R4 K11 ["row padding-small"]
       25 SETTABLEKS                       R4 R3 K4 ["tag"]
       27 DUPTABLE                         R4 K14 [{"ToggleButtonPadding", "SearchInput"}]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K0 ["createElement"]
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K1 ["View"]
       34 DUPTABLE                         R7 K15 [{"LayoutOrder", "tag"}]
       35 LOADN                            R8 1
       36 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       38 LOADK                            R8 K16 ["TopSidebarButtonPadding"]
       39 SETTABLEKS                       R8 R7 K4 ["tag"]
       41 CALL                             R5 2 1
       42 SETTABLEKS                       R5 R4 K12 ["ToggleButtonPadding"]
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K0 ["createElement"]
       47 GETUPVAL                         R6 3
       48 DUPTABLE                         R7 K17 [{"LayoutOrder"}]
       49 LOADN                            R8 2
       50 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       52 CALL                             R5 2 1
       53 SETTABLEKS                       R5 R4 K13 ["SearchInput"]
       55 CALL                             R1 3 -1
       56 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["App"]
       29 GETTABLEKS                       R4 R4 K12 ["MainView"]
       31 GETTABLEKS                       R4 R4 K13 ["SearchInput"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K9 ["Src"]
       38 GETTABLEKS                       R5 R5 K14 ["Resources"]
       40 GETTABLEKS                       R5 R5 K15 ["StyleConstants"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K16 [PROTO_0]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R3
       48 RETURN                           R5 1
