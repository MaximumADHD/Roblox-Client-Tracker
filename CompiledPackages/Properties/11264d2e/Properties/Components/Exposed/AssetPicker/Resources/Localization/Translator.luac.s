MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Resources"]
       11 GETTABLEKS                       R3 R4 K7 ["Localization"]
       13 GETTABLEKS                       R2 R3 K7 ["Localization"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R4 R0 K6 ["Resources"]
       18 GETTABLEKS                       R3 R4 K7 ["Localization"]
       20 GETTABLEKS                       R2 R3 K8 ["LocalizedStrings"]
       22 GETTABLEKS                       R5 R0 K6 ["Resources"]
       24 GETTABLEKS                       R4 R5 K7 ["Localization"]
       26 GETTABLEKS                       R3 R4 K9 ["SourceStrings"]
       28 GETTABLEKS                       R4 R1 K10 ["new"]
       30 DUPTABLE                         R5 K14 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       31 SETTABLEKS                       R3 R5 K11 ["stringResourceTable"]
       33 SETTABLEKS                       R2 R5 K12 ["translationResourceTable"]
       35 LOADK                            R6 K15 ["AssetPicker"]
       36 SETTABLEKS                       R6 R5 K13 ["pluginName"]
       38 CALL                             R4 1 1
       39 RETURN                           R4 1
