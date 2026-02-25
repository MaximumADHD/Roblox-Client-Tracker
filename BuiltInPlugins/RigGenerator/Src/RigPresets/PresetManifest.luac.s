MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 NEWTABLE                         R1 0 6
        7 GETTABLEKS                       R2 R0 K3 ["UserAvatar"]
        9 GETTABLEKS                       R3 R0 K4 ["SkinnedAvatar"]
       11 GETTABLEKS                       R4 R0 K5 ["RthroAvatar"]
       13 GETTABLEKS                       R5 R0 K6 ["BlockAvatar"]
       15 GETTABLEKS                       R6 R0 K7 ["2016Avatar"]
       17 GETTABLEKS                       R7 R0 K8 ["2012Avatar"]
       19 SETLIST                          R1 R2 6 [1]
       21 RETURN                           R1 1
