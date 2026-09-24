MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETIMPORT                        R1 K3 [require]
        5 GETTABLEKS                       R2 R0 K4 ["Enums"]
        7 CALL                             R1 1 1
        8 GETIMPORT                        R2 K3 [require]
       10 GETTABLEKS                       R3 R0 K5 ["Types"]
       12 CALL                             R2 1 1
       13 DUPTABLE                         R3 K7 [{"Enums", "Types", "Utils"}]
       14 SETTABLEKS                       R1 R3 K4 ["Enums"]
       16 SETTABLEKS                       R2 R3 K5 ["Types"]
       18 NEWTABLE                         R4 0 0
       20 SETTABLEKS                       R4 R3 K6 ["Utils"]
       22 RETURN                           R3 1
