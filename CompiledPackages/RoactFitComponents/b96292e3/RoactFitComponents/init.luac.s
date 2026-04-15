MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K5 [{"FitFrameHorizontal", "FitFrameOnAxis", "FitFrameVertical", "FitTextLabel", "Rect"}]
        2 GETIMPORT                        R1 K7 [require]
        4 GETIMPORT                        R3 K9 [script]
        6 GETTABLEKS                       R2 R3 K0 ["FitFrameHorizontal"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K0 ["FitFrameHorizontal"]
       11 GETIMPORT                        R1 K7 [require]
       13 GETIMPORT                        R3 K9 [script]
       15 GETTABLEKS                       R2 R3 K1 ["FitFrameOnAxis"]
       17 CALL                             R1 1 1
       18 SETTABLEKS                       R1 R0 K1 ["FitFrameOnAxis"]
       20 GETIMPORT                        R1 K7 [require]
       22 GETIMPORT                        R3 K9 [script]
       24 GETTABLEKS                       R2 R3 K2 ["FitFrameVertical"]
       26 CALL                             R1 1 1
       27 SETTABLEKS                       R1 R0 K2 ["FitFrameVertical"]
       29 GETIMPORT                        R1 K7 [require]
       31 GETIMPORT                        R3 K9 [script]
       33 GETTABLEKS                       R2 R3 K3 ["FitTextLabel"]
       35 CALL                             R1 1 1
       36 SETTABLEKS                       R1 R0 K3 ["FitTextLabel"]
       38 GETIMPORT                        R1 K7 [require]
       40 GETIMPORT                        R3 K9 [script]
       42 GETTABLEKS                       R2 R3 K4 ["Rect"]
       44 CALL                             R1 1 1
       45 SETTABLEKS                       R1 R0 K4 ["Rect"]
       47 RETURN                           R0 1
