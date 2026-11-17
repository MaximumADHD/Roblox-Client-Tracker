MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K5 [{[1] = "MaterialFramework", ["SourceStrings"], ["LocalizedStrings"], ["Theme"]}]
        2 GETIMPORT                        R1 K7 [script]
        4 GETTABLEKS                       R1 R1 K2 ["SourceStrings"]
        6 SETTABLEKS                       R1 R0 K2 ["SourceStrings"]
        8 GETIMPORT                        R1 K7 [script]
       10 GETTABLEKS                       R1 R1 K3 ["LocalizedStrings"]
       12 SETTABLEKS                       R1 R0 K3 ["LocalizedStrings"]
       14 GETIMPORT                        R1 K9 [require]
       16 GETIMPORT                        R2 K7 [script]
       18 GETTABLEKS                       R2 R2 K4 ["Theme"]
       20 CALL                             R1 1 1
       21 SETTABLEKS                       R1 R0 K4 ["Theme"]
       23 RETURN                           R0 1
