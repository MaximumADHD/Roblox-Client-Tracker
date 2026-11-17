MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{[1] = "Top", ["Middle"] = "Middle"}]
        2 GETIMPORT                        R1 K4 [script]
        4 GETTABLEKS                       R1 R1 K5 ["Parent"]
        6 GETTABLEKS                       R1 R1 K5 ["Parent"]
        8 GETTABLEKS                       R1 R1 K5 ["Parent"]
       10 GETIMPORT                        R2 K7 [require]
       12 GETTABLEKS                       R3 R1 K8 ["Src"]
       14 GETTABLEKS                       R3 R3 K9 ["Util"]
       16 GETTABLEKS                       R3 R3 K10 ["getEventFilterTypes"]
       18 CALL                             R2 1 1
       19 MOVE                             R3 R2
       20 CALL                             R3 0 1
       21 DUPTABLE                         R4 K13 [{"SectionHeaderType", "EventFilterTypes"}]
       22 SETTABLEKS                       R0 R4 K11 ["SectionHeaderType"]
       24 SETTABLEKS                       R3 R4 K12 ["EventFilterTypes"]
       26 RETURN                           R4 1
