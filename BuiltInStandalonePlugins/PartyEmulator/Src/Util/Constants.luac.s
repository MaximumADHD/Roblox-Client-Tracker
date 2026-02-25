MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"UNASSIGNED_PARTY_ID", "DISABLED_TRANSPARENCY", "MAX_PARTY_SIZE"}]
        2 LOADK                            R1 K4 ["UNASSIGNED"]
        3 SETTABLEKS                       R1 R0 K0 ["UNASSIGNED_PARTY_ID"]
        5 LOADK                            R1 K5 [0.6]
        6 SETTABLEKS                       R1 R0 K1 ["DISABLED_TRANSPARENCY"]
        8 LOADN                            R1 6
        9 SETTABLEKS                       R1 R0 K2 ["MAX_PARTY_SIZE"]
       11 RETURN                           R0 1
