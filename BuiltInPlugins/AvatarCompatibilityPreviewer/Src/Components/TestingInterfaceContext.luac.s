MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Signal"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K15 [{["onIsColorableAcquired"] = , ["onRepresentEditorStateOnWorldModelDescriptionApplied"] = , ["onRepresentEditorStateOnWorldModelUnmounted"] = }]
       24 GETTABLEKS                       R4 R1 K16 ["createContext"]
       26 MOVE                             R5 R3
       27 CALL                             R4 1 1
       28 DUPTABLE                         R5 K18 [{"Context"}]
       29 SETTABLEKS                       R4 R5 K17 ["Context"]
       31 RETURN                           R5 1
