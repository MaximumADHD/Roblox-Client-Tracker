MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Otter"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R3 K3 [script]
       14 GETTABLEKS                       R2 R3 K6 ["useAnimatedBinding"]
       16 CALL                             R1 1 1
       17 GETIMPORT                        R2 K1 [require]
       19 GETIMPORT                        R4 K3 [script]
       21 GETTABLEKS                       R3 R4 K7 ["useMotor"]
       23 CALL                             R2 1 1
       24 DUPTABLE                         R3 K11 [{"useAnimatedBinding", "useMotor", "ease", "spring", "instant"}]
       25 SETTABLEKS                       R1 R3 K6 ["useAnimatedBinding"]
       27 SETTABLEKS                       R2 R3 K7 ["useMotor"]
       29 GETTABLEKS                       R4 R0 K8 ["ease"]
       31 SETTABLEKS                       R4 R3 K8 ["ease"]
       33 GETTABLEKS                       R4 R0 K9 ["spring"]
       35 SETTABLEKS                       R4 R3 K9 ["spring"]
       37 GETTABLEKS                       R4 R0 K10 ["instant"]
       39 SETTABLEKS                       R4 R3 K10 ["instant"]
       41 RETURN                           R3 1
