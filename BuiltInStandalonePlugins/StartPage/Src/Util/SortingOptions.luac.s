MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K5 [{"GameName", "GameCreated", "LastUpdated", "Asc", "Desc"}]
        2 LOADK                            R1 K0 ["GameName"]
        3 SETTABLEKS                       R1 R0 K0 ["GameName"]
        5 LOADK                            R1 K1 ["GameCreated"]
        6 SETTABLEKS                       R1 R0 K1 ["GameCreated"]
        8 LOADK                            R1 K2 ["LastUpdated"]
        9 SETTABLEKS                       R1 R0 K2 ["LastUpdated"]
       11 LOADK                            R1 K3 ["Asc"]
       12 SETTABLEKS                       R1 R0 K3 ["Asc"]
       14 LOADK                            R1 K4 ["Desc"]
       15 SETTABLEKS                       R1 R0 K4 ["Desc"]
       17 RETURN                           R0 1
