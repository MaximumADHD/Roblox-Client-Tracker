MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PropertiesPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Properties"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Resources"]
       16 GETTABLEKS                       R2 R2 K9 ["Localization"]
       18 GETTABLEKS                       R2 R2 K9 ["Localization"]
       20 GETTABLEKS                       R3 R0 K10 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Resources"]
       24 GETTABLEKS                       R3 R3 K9 ["Localization"]
       26 GETTABLEKS                       R3 R3 K11 ["LocalizedStrings"]
       28 GETTABLEKS                       R4 R0 K10 ["Src"]
       30 GETTABLEKS                       R4 R4 K8 ["Resources"]
       32 GETTABLEKS                       R4 R4 K9 ["Localization"]
       34 GETTABLEKS                       R4 R4 K12 ["SourceStrings"]
       36 GETTABLEKS                       R5 R2 K13 ["new"]
       38 DUPTABLE                         R6 K17 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "PropertiesPlugin"}]
       39 SETTABLEKS                       R4 R6 K14 ["stringResourceTable"]
       41 SETTABLEKS                       R3 R6 K15 ["translationResourceTable"]
       43 CALL                             R5 1 1
       44 RETURN                           R5 1
