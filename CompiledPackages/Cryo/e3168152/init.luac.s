MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"Dictionary", "List", "isEmpty", "None"}]
        2 GETIMPORT                        R1 K6 [require]
        4 GETIMPORT                        R2 K8 [script]
        6 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K0 ["Dictionary"]
       11 GETIMPORT                        R1 K6 [require]
       13 GETIMPORT                        R2 K8 [script]
       15 GETTABLEKS                       R2 R2 K1 ["List"]
       17 CALL                             R1 1 1
       18 SETTABLEKS                       R1 R0 K1 ["List"]
       20 GETIMPORT                        R1 K6 [require]
       22 GETIMPORT                        R2 K8 [script]
       24 GETTABLEKS                       R2 R2 K2 ["isEmpty"]
       26 CALL                             R1 1 1
       27 SETTABLEKS                       R1 R0 K2 ["isEmpty"]
       29 GETIMPORT                        R1 K6 [require]
       31 GETIMPORT                        R2 K8 [script]
       33 GETTABLEKS                       R2 R2 K3 ["None"]
       35 CALL                             R1 1 1
       36 SETTABLEKS                       R1 R0 K3 ["None"]
       38 RETURN                           R0 1
