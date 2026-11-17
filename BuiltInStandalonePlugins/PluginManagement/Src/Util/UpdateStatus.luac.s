MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Symbol"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K10 [{"Updating", "Success", "Error"}]
       17 MOVE                             R3 R1
       18 LOADK                            R4 K7 ["Updating"]
       19 CALL                             R3 1 1
       20 SETTABLEKS                       R3 R2 K7 ["Updating"]
       22 MOVE                             R3 R1
       23 LOADK                            R4 K8 ["Success"]
       24 CALL                             R3 1 1
       25 SETTABLEKS                       R3 R2 K8 ["Success"]
       27 MOVE                             R3 R1
       28 LOADK                            R4 K9 ["Error"]
       29 CALL                             R3 1 1
       30 SETTABLEKS                       R3 R2 K9 ["Error"]
       32 RETURN                           R2 1
