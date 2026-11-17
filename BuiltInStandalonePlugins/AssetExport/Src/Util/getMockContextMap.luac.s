PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 LOADK                            R1 K1 ["AssetExport"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K2 ["mockComponents"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K0 ["new"]
       10 CALL                             R2 0 1
       11 SETTABLEKS                       R2 R1 K3 ["AssetExportController"]
       13 DUPTABLE                         R1 K7 [{"analytics", "localization", "exportController"}]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K8 ["Analytics"]
       17 GETTABLEKS                       R2 R2 K9 ["mock"]
       19 CALL                             R2 0 1
       20 SETTABLEKS                       R2 R1 K4 ["analytics"]
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K10 ["Localization"]
       25 GETTABLEKS                       R2 R2 K9 ["mock"]
       27 CALL                             R2 0 1
       28 SETTABLEKS                       R2 R1 K5 ["localization"]
       30 GETUPVAL                         R2 3
       31 GETTABLEKS                       R2 R2 K9 ["mock"]
       33 MOVE                             R3 R0
       34 CALL                             R2 1 1
       35 SETTABLEKS                       R2 R1 K6 ["exportController"]
       37 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Src"]
       20 GETTABLEKS                       R4 R4 K10 ["Controllers"]
       22 GETTABLEKS                       R4 R4 K11 ["ExportController"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R1 K12 ["TestHelpers"]
       27 GETTABLEKS                       R5 R4 K13 ["Instances"]
       29 GETTABLEKS                       R5 R5 K14 ["MockPlugin"]
       31 GETIMPORT                        R6 K5 [require]
       33 GETTABLEKS                       R7 R0 K9 ["Src"]
       35 GETTABLEKS                       R7 R7 K15 ["Util"]
       37 GETTABLEKS                       R7 R7 K16 ["mockAssetExportController"]
       39 CALL                             R6 1 1
       40 DUPCLOSURE                       R7 K17 [PROTO_0]
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 RETURN                           R7 1
