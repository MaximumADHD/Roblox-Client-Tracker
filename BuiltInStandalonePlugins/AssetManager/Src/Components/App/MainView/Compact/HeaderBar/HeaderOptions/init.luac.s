PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K4 [{"LayoutOrder", "tag"}]
        7 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       11 LOADK                            R4 K5 ["row auto-xy gap-xsmall align-y-center"]
       12 SETTABLEKS                       R4 R3 K3 ["tag"]
       14 DUPTABLE                         R4 K8 [{"MenuButton", "ImportButton"}]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K0 ["createElement"]
       18 GETUPVAL                         R6 2
       19 DUPTABLE                         R7 K9 [{"LayoutOrder"}]
       20 LOADN                            R8 1
       21 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       23 CALL                             R5 2 1
       24 SETTABLEKS                       R5 R4 K6 ["MenuButton"]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K0 ["createElement"]
       29 GETUPVAL                         R6 3
       30 DUPTABLE                         R7 K9 [{"LayoutOrder"}]
       31 LOADN                            R8 2
       32 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       34 CALL                             R5 2 1
       35 SETTABLEKS                       R5 R4 K7 ["ImportButton"]
       37 CALL                             R1 3 -1
       38 RETURN                           R1 -1

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
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["OptionsMenu"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Components"]
       34 GETTABLEKS                       R5 R5 K12 ["App"]
       36 GETTABLEKS                       R5 R5 K13 ["MainView"]
       38 GETTABLEKS                       R5 R5 K14 ["BulkImportButton"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K15 [PROTO_0]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 RETURN                           R5 1
