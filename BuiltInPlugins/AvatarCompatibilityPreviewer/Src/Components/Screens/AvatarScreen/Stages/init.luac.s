MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K3 [script]
        5 GETTABLEKS                       R1 R2 K4 ["StageType"]
        7 CALL                             R0 1 1
        8 DUPTABLE                         R1 K7 [{"CheckBody", "CheckFace"}]
        9 GETIMPORT                        R2 K1 [require]
       11 GETIMPORT                        R4 K3 [script]
       13 GETTABLEKS                       R3 R4 K5 ["CheckBody"]
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R1 K5 ["CheckBody"]
       18 GETIMPORT                        R2 K1 [require]
       20 GETIMPORT                        R4 K3 [script]
       22 GETTABLEKS                       R3 R4 K6 ["CheckFace"]
       24 CALL                             R2 1 1
       25 SETTABLEKS                       R2 R1 K6 ["CheckFace"]
       27 RETURN                           R1 1
