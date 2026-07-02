MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["ImagesTypes"]
        7 CALL                             R0 1 1
        8 DUPTABLE                         R1 K9 [{"getResolutionScale", "Images", "IconImages_DEPRECATED", "Flags"}]
        9 GETIMPORT                        R2 K1 [require]
       11 GETIMPORT                        R3 K3 [script]
       13 GETTABLEKS                       R3 R3 K5 ["getResolutionScale"]
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R1 K5 ["getResolutionScale"]
       18 GETIMPORT                        R2 K1 [require]
       20 GETIMPORT                        R3 K3 [script]
       22 GETTABLEKS                       R3 R3 K6 ["Images"]
       24 CALL                             R2 1 1
       25 SETTABLEKS                       R2 R1 K6 ["Images"]
       27 GETIMPORT                        R2 K1 [require]
       29 GETIMPORT                        R3 K3 [script]
       31 GETTABLEKS                       R3 R3 K10 ["DeprecatedIconImages"]
       33 CALL                             R2 1 1
       34 SETTABLEKS                       R2 R1 K7 ["IconImages_DEPRECATED"]
       36 GETIMPORT                        R2 K1 [require]
       38 GETIMPORT                        R3 K3 [script]
       40 GETTABLEKS                       R3 R3 K8 ["Flags"]
       42 CALL                             R2 1 1
       43 SETTABLEKS                       R2 R1 K8 ["Flags"]
       45 RETURN                           R1 1
