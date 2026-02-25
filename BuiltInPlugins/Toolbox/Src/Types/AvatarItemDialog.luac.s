MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"Disabled", "AssetPrivacy", "RobuxSpend", "Error"}]
        2 LOADK                            R1 K0 ["Disabled"]
        3 SETTABLEKS                       R1 R0 K0 ["Disabled"]
        5 LOADK                            R1 K1 ["AssetPrivacy"]
        6 SETTABLEKS                       R1 R0 K1 ["AssetPrivacy"]
        8 LOADK                            R1 K2 ["RobuxSpend"]
        9 SETTABLEKS                       R1 R0 K2 ["RobuxSpend"]
       11 LOADK                            R1 K3 ["Error"]
       12 SETTABLEKS                       R1 R0 K3 ["Error"]
       14 RETURN                           R0 1
