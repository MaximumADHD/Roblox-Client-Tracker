MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Util"]
        9 GETTABLEKS                       R1 R1 K6 ["strict"]
       11 CALL                             R0 1 1
       12 MOVE                             R1 R0
       13 DUPTABLE                         R2 K10 [{"LOCALIZATION_PROJECT_NAME", "SourceStrings", "LocalizedStrings"}]
       14 LOADK                            R3 K11 ["Framework"]
       15 SETTABLEKS                       R3 R2 K7 ["LOCALIZATION_PROJECT_NAME"]
       17 GETIMPORT                        R3 K3 [script]
       19 GETTABLEKS                       R3 R3 K8 ["SourceStrings"]
       21 SETTABLEKS                       R3 R2 K8 ["SourceStrings"]
       23 GETIMPORT                        R3 K3 [script]
       25 GETTABLEKS                       R3 R3 K9 ["LocalizedStrings"]
       27 SETTABLEKS                       R3 R2 K9 ["LocalizedStrings"]
       29 CALL                             R1 1 -1
       30 RETURN                           R1 -1
