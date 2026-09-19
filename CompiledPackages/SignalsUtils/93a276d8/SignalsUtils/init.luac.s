MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Experimental"]
        7 GETTABLEKS                       R1 R1 K5 ["createComputed"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K6 ["forEach"]
       16 CALL                             R1 1 1
       17 GETIMPORT                        R2 K1 [require]
       19 GETIMPORT                        R3 K3 [script]
       21 GETTABLEKS                       R3 R3 K7 ["of"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K1 [require]
       26 GETIMPORT                        R4 K3 [script]
       28 GETTABLEKS                       R4 R4 K8 ["provide"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K1 [require]
       33 GETIMPORT                        R5 K3 [script]
       35 GETTABLEKS                       R5 R5 K9 ["switchMap"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K1 [require]
       40 GETIMPORT                        R6 K3 [script]
       42 GETTABLEKS                       R6 R6 K10 ["throttleDefer"]
       44 CALL                             R5 1 1
       45 DUPTABLE                         R6 K11 [{"forEach", "of", "provide", "switchMap", "throttleDefer", "Experimental"}]
       46 SETTABLEKS                       R1 R6 K6 ["forEach"]
       48 SETTABLEKS                       R2 R6 K7 ["of"]
       50 SETTABLEKS                       R3 R6 K8 ["provide"]
       52 SETTABLEKS                       R4 R6 K9 ["switchMap"]
       54 SETTABLEKS                       R5 R6 K10 ["throttleDefer"]
       56 DUPTABLE                         R7 K12 [{"createComputed"}]
       57 SETTABLEKS                       R0 R7 K5 ["createComputed"]
       59 SETTABLEKS                       R7 R6 K4 ["Experimental"]
       61 RETURN                           R6 1
