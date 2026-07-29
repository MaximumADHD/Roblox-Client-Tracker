MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Util"]
        9 GETTABLEKS                       R1 R1 K6 ["strict"]
       11 CALL                             R0 1 1
       12 MOVE                             R1 R0
       13 DUPTABLE                         R2 K11 [{["LOCALIZATION_PROJECT_NAME"] = "Framework", ["SourceStrings"], ["LocalizedStrings"]}]
       14 GETIMPORT                        R3 K3 [script]
       16 GETTABLEKS                       R3 R3 K9 ["SourceStrings"]
       18 SETTABLEKS                       R3 R2 K9 ["SourceStrings"]
       20 GETIMPORT                        R3 K3 [script]
       22 GETTABLEKS                       R3 R3 K10 ["LocalizedStrings"]
       24 SETTABLEKS                       R3 R2 K10 ["LocalizedStrings"]
       26 CALL                             R1 1 -1
       27 RETURN                           R1 -1
