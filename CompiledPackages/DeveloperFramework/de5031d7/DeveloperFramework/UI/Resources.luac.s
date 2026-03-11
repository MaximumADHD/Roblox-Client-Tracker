MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 DUPTABLE                         R1 K6 [{"LOCALIZATION_PROJECT_NAME", "SourceStrings", "LocalizedStrings"}]
        8 LOADK                            R2 K7 ["Framework"]
        9 SETTABLEKS                       R2 R1 K3 ["LOCALIZATION_PROJECT_NAME"]
       11 GETTABLEKS                       R3 R0 K8 ["Resources"]
       13 GETTABLEKS                       R2 R3 K4 ["SourceStrings"]
       15 SETTABLEKS                       R2 R1 K4 ["SourceStrings"]
       17 GETTABLEKS                       R3 R0 K8 ["Resources"]
       19 GETTABLEKS                       R2 R3 K5 ["LocalizedStrings"]
       21 SETTABLEKS                       R2 R1 K5 ["LocalizedStrings"]
       23 RETURN                           R1 1
