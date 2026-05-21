MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"CPC_ID", "CPC_EVENTS"}]
        2 LOADK                            R1 K3 ["CPC::AssetManager"]
        3 SETTABLEKS                       R1 R0 K0 ["CPC_ID"]
        5 DUPTABLE                         R1 K5 [{"IMPORT_ASSET_VERSION"}]
        6 LOADK                            R2 K6 ["ImportAssetVersion"]
        7 SETTABLEKS                       R2 R1 K4 ["IMPORT_ASSET_VERSION"]
        9 SETTABLEKS                       R1 R0 K1 ["CPC_EVENTS"]
       11 RETURN                           R0 1
