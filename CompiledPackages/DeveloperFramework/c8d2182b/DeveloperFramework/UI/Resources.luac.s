MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 DUPTABLE                         R1 K7 [{["LOCALIZATION_PROJECT_NAME"] = "Framework", ["SourceStrings"], ["LocalizedStrings"]}]
        8 GETTABLEKS                       R2 R0 K8 ["Resources"]
       10 GETTABLEKS                       R2 R2 K5 ["SourceStrings"]
       12 SETTABLEKS                       R2 R1 K5 ["SourceStrings"]
       14 GETTABLEKS                       R2 R0 K8 ["Resources"]
       16 GETTABLEKS                       R2 R2 K6 ["LocalizedStrings"]
       18 SETTABLEKS                       R2 R1 K6 ["LocalizedStrings"]
       20 RETURN                           R1 1
