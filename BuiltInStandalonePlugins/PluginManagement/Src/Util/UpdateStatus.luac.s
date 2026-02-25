MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Symbol"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K10 [{"Updating", "Success", "Error"}]
       17 GETTABLEKS                       R3 R1 K11 ["named"]
       19 LOADK                            R4 K7 ["Updating"]
       20 CALL                             R3 1 1
       21 SETTABLEKS                       R3 R2 K7 ["Updating"]
       23 GETTABLEKS                       R3 R1 K11 ["named"]
       25 LOADK                            R4 K8 ["Success"]
       26 CALL                             R3 1 1
       27 SETTABLEKS                       R3 R2 K8 ["Success"]
       29 GETTABLEKS                       R3 R1 K11 ["named"]
       31 LOADK                            R4 K9 ["Error"]
       32 CALL                             R3 1 1
       33 SETTABLEKS                       R3 R2 K9 ["Error"]
       35 RETURN                           R2 1
