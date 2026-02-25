MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"LOCALIZATION_PROJECT_NAME", "SourceStrings", "LocalizedStrings", "Theme"}]
        2 LOADK                            R1 K5 ["MaterialFramework"]
        3 SETTABLEKS                       R1 R0 K0 ["LOCALIZATION_PROJECT_NAME"]
        5 GETIMPORT                        R2 K7 [script]
        7 GETTABLEKS                       R1 R2 K1 ["SourceStrings"]
        9 SETTABLEKS                       R1 R0 K1 ["SourceStrings"]
       11 GETIMPORT                        R2 K7 [script]
       13 GETTABLEKS                       R1 R2 K2 ["LocalizedStrings"]
       15 SETTABLEKS                       R1 R0 K2 ["LocalizedStrings"]
       17 GETIMPORT                        R1 K9 [require]
       19 GETIMPORT                        R3 K7 [script]
       21 GETTABLEKS                       R2 R3 K3 ["Theme"]
       23 CALL                             R1 1 1
       24 SETTABLEKS                       R1 R0 K3 ["Theme"]
       26 RETURN                           R0 1
