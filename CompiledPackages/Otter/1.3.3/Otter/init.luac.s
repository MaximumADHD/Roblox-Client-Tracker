MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K3 [script]
        5 GETTABLEKS                       R1 R2 K4 ["createGroupMotor"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R3 K3 [script]
       12 GETTABLEKS                       R2 R3 K5 ["createSingleMotor"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R4 K3 [script]
       19 GETTABLEKS                       R3 R4 K6 ["ease"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R5 K3 [script]
       26 GETTABLEKS                       R4 R5 K7 ["spring"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K1 [require]
       31 GETIMPORT                        R6 K3 [script]
       33 GETTABLEKS                       R5 R6 K8 ["instant"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K1 [require]
       38 GETIMPORT                        R7 K3 [script]
       40 GETTABLEKS                       R6 R7 K9 ["types"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K1 [require]
       45 GETIMPORT                        R8 K3 [script]
       47 GETTABLEKS                       R7 R8 K10 ["AnimationStepSignal"]
       49 CALL                             R6 1 1
       50 DUPTABLE                         R7 K12 [{"createGroupMotor", "createSingleMotor", "ease", "spring", "instant", "__devAnimationStepSignal"}]
       51 SETTABLEKS                       R0 R7 K4 ["createGroupMotor"]
       53 SETTABLEKS                       R1 R7 K5 ["createSingleMotor"]
       55 SETTABLEKS                       R2 R7 K6 ["ease"]
       57 SETTABLEKS                       R3 R7 K7 ["spring"]
       59 SETTABLEKS                       R4 R7 K8 ["instant"]
       61 SETTABLEKS                       R6 R7 K11 ["__devAnimationStepSignal"]
       63 RETURN                           R7 1
