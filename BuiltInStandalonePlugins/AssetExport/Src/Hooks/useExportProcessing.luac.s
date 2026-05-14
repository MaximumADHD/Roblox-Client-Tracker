MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Hooks"]
       13 GETTABLEKS                       R2 R2 K8 ["makeHook"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 ["getExportProcessing"]
       18 LOADK                            R4 K10 ["onExportProcessingChanged"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1
