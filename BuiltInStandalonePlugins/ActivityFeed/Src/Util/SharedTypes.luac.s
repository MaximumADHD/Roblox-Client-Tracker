MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"Top", "Middle"}]
        2 LOADK                            R1 K0 ["Top"]
        3 SETTABLEKS                       R1 R0 K0 ["Top"]
        5 LOADK                            R1 K1 ["Middle"]
        6 SETTABLEKS                       R1 R0 K1 ["Middle"]
        8 GETIMPORT                        R1 K4 [script]
       10 GETTABLEKS                       R1 R1 K5 ["Parent"]
       12 GETTABLEKS                       R1 R1 K5 ["Parent"]
       14 GETTABLEKS                       R1 R1 K5 ["Parent"]
       16 GETIMPORT                        R2 K7 [require]
       18 GETTABLEKS                       R3 R1 K8 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Util"]
       22 GETTABLEKS                       R3 R3 K10 ["getEventFilterTypes"]
       24 CALL                             R2 1 1
       25 MOVE                             R3 R2
       26 CALL                             R3 0 1
       27 DUPTABLE                         R4 K13 [{"SectionHeaderType", "EventFilterTypes"}]
       28 SETTABLEKS                       R0 R4 K11 ["SectionHeaderType"]
       30 SETTABLEKS                       R3 R4 K12 ["EventFilterTypes"]
       32 RETURN                           R4 1
