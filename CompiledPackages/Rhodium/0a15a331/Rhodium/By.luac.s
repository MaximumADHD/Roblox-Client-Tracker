MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"TAGS", "TAGS_ANY", "TAGS_ALL", "XPATH"}]
        2 LOADK                            R1 K5 ["tags"]
        3 SETTABLEKS                       R1 R0 K0 ["TAGS"]
        5 LOADK                            R1 K6 ["tags_any"]
        6 SETTABLEKS                       R1 R0 K1 ["TAGS_ANY"]
        8 LOADK                            R1 K7 ["tags_all"]
        9 SETTABLEKS                       R1 R0 K2 ["TAGS_ALL"]
       11 LOADK                            R1 K8 ["xpath"]
       12 SETTABLEKS                       R1 R0 K3 ["XPATH"]
       14 RETURN                           R0 1
