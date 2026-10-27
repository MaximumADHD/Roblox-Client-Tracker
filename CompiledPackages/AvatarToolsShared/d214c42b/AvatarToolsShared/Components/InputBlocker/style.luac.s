MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["Framework"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K6 ["Style"]
       18 GETTABLEKS                       R3 R3 K7 ["Colors"]
       20 DUPTABLE                         R4 K14 [{["TextSize"] = 25, ["TextColor"], ["BackgroundColor"], ["BackgroundTransparency"] = 0.2}]
       21 GETTABLEKS                       R5 R3 K15 ["White"]
       23 SETTABLEKS                       R5 R4 K10 ["TextColor"]
       25 GETIMPORT                        R5 K18 [Color3.fromRGB]
       27 LOADN                            R6 0
       28 LOADN                            R7 0
       29 LOADN                            R8 0
       30 CALL                             R5 3 1
       31 SETTABLEKS                       R5 R4 K11 ["BackgroundColor"]
       33 RETURN                           R4 1
