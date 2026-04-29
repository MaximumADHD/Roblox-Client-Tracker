MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"createGroupMotor", "createSingleMotor", "spring", "instant"}]
        2 GETIMPORT                        R1 K6 [require]
        4 GETIMPORT                        R3 K8 [script]
        6 GETTABLEKS                       R2 R3 K0 ["createGroupMotor"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K0 ["createGroupMotor"]
       11 GETIMPORT                        R1 K6 [require]
       13 GETIMPORT                        R3 K8 [script]
       15 GETTABLEKS                       R2 R3 K1 ["createSingleMotor"]
       17 CALL                             R1 1 1
       18 SETTABLEKS                       R1 R0 K1 ["createSingleMotor"]
       20 GETIMPORT                        R1 K6 [require]
       22 GETIMPORT                        R3 K8 [script]
       24 GETTABLEKS                       R2 R3 K2 ["spring"]
       26 CALL                             R1 1 1
       27 SETTABLEKS                       R1 R0 K2 ["spring"]
       29 GETIMPORT                        R1 K6 [require]
       31 GETIMPORT                        R3 K8 [script]
       33 GETTABLEKS                       R2 R3 K3 ["instant"]
       35 CALL                             R1 1 1
       36 SETTABLEKS                       R1 R0 K3 ["instant"]
       38 RETURN                           R0 1
