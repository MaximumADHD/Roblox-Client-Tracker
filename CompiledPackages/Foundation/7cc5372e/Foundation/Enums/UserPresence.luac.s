MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"None", "Active", "Away", "InExperience"}]
        2 LOADK                            R1 K0 ["None"]
        3 SETTABLEKS                       R1 R0 K0 ["None"]
        5 LOADK                            R1 K1 ["Active"]
        6 SETTABLEKS                       R1 R0 K1 ["Active"]
        8 LOADK                            R1 K2 ["Away"]
        9 SETTABLEKS                       R1 R0 K2 ["Away"]
       11 LOADK                            R1 K3 ["InExperience"]
       12 SETTABLEKS                       R1 R0 K3 ["InExperience"]
       14 RETURN                           R0 1
