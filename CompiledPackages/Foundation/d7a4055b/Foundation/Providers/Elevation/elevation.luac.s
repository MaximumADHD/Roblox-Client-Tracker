MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["ElevationLayer"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 8 0
       16 GETTABLEKS                       R3 R1 K8 ["Popover"]
       18 DUPTABLE                         R4 K15 [{["start"] = 4, ["finish"] = 99, ["step"] = 1}]
       19 SETTABLE                         R4 R2 R3
       20 GETTABLEKS                       R3 R1 K16 ["Drawer"]
       22 DUPTABLE                         R4 K20 [{["start"] = 100, ["finish"] = 199, ["step"] = 10}]
       23 SETTABLE                         R4 R2 R3
       24 GETTABLEKS                       R3 R1 K21 ["Sheet"]
       26 DUPTABLE                         R4 K24 [{["start"] = 200, ["finish"] = 299, ["step"] = 10}]
       27 SETTABLE                         R4 R2 R3
       28 GETTABLEKS                       R3 R1 K25 ["Dialog"]
       30 DUPTABLE                         R4 K28 [{["start"] = 300, ["finish"] = 399, ["step"] = 10}]
       31 SETTABLE                         R4 R2 R3
       32 GETTABLEKS                       R3 R1 K29 ["Notification"]
       34 DUPTABLE                         R4 K32 [{["start"] = 400, ["finish"] = 499, ["step"] = 1}]
       35 SETTABLE                         R4 R2 R3
       36 DUPTABLE                         R3 K34 [{"ELEVATION_LAYERS"}]
       37 SETTABLEKS                       R2 R3 K33 ["ELEVATION_LAYERS"]
       39 RETURN                           R3 1
