MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["StudioFoundation"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K8 ["Src"]
       16 GETTABLEKS                       R2 R2 K9 ["Resources"]
       18 GETTABLEKS                       R2 R2 K10 ["Localization"]
       20 GETTABLEKS                       R2 R2 K11 ["SourceStrings"]
       22 GETTABLEKS                       R3 R0 K8 ["Src"]
       24 GETTABLEKS                       R3 R3 K9 ["Resources"]
       26 GETTABLEKS                       R3 R3 K10 ["Localization"]
       28 GETTABLEKS                       R3 R3 K12 ["LocalizedStrings"]
       30 GETTABLEKS                       R4 R1 K13 ["Contexts"]
       32 GETTABLEKS                       R4 R4 K10 ["Localization"]
       34 GETTABLEKS                       R4 R4 K10 ["Localization"]
       36 GETTABLEKS                       R4 R4 K14 ["new"]
       38 DUPTABLE                         R5 K18 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "DesignAssist"}]
       39 SETTABLEKS                       R2 R5 K15 ["stringResourceTable"]
       41 SETTABLEKS                       R3 R5 K16 ["translationResourceTable"]
       43 CALL                             R4 1 1
       44 RETURN                           R4 1
