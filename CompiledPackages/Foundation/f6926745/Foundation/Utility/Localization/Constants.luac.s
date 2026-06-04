MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"LOCALIZATION_TABLE_NAME"}]
        2 LOADK                            R1 K2 ["FoundationLocalization"]
        3 SETTABLEKS                       R1 R0 K0 ["LOCALIZATION_TABLE_NAME"]
        5 RETURN                           R0 1
