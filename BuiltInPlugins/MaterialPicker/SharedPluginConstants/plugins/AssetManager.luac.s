MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{[1] = "CPC::AssetManager", ["CPC_EVENTS"]}]
        2 DUPTABLE                         R1 K6 [{["IMPORT_ASSET_VERSION"] = "ImportAssetVersion"}]
        3 SETTABLEKS                       R1 R0 K2 ["CPC_EVENTS"]
        5 RETURN                           R0 1
