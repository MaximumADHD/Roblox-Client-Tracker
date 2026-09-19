MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["PropertyRowTypes"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["PropertyRowsRoot"]
       14 CALL                             R1 1 1
       15 GETTABLEKS                       R2 R0 K6 ["ROW_TYPES"]
       17 DUPTABLE                         R3 K7 [{"ROW_TYPES", "PropertyRowsRoot"}]
       18 SETTABLEKS                       R2 R3 K6 ["ROW_TYPES"]
       20 SETTABLEKS                       R1 R3 K5 ["PropertyRowsRoot"]
       22 RETURN                           R3 1
