MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"LOCALIZATION_PROJECT_NAME", "SourceStrings", "LocalizedStrings"}]
        2 LOADK                            R1 K4 ["AvatarToolsShared"]
        3 SETTABLEKS                       R1 R0 K0 ["LOCALIZATION_PROJECT_NAME"]
        5 GETIMPORT                        R2 K6 [script]
        7 GETTABLEKS                       R1 R2 K1 ["SourceStrings"]
        9 SETTABLEKS                       R1 R0 K1 ["SourceStrings"]
       11 GETIMPORT                        R2 K6 [script]
       13 GETTABLEKS                       R1 R2 K2 ["LocalizedStrings"]
       15 SETTABLEKS                       R1 R0 K2 ["LocalizedStrings"]
       17 RETURN                           R0 1
