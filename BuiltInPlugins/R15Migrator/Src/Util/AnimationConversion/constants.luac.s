MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPTABLE                         R1 K5 [{[1] = "NotStarted", ["ScanningScripts"] = "ScanningScripts", ["ScanningWorkspace"] = "ScanningWorkspace", ["ConvertingAnimations"] = "ConvertingAnimations", ["Done"] = "Done"}]
        4 DUPTABLE                         R2 K14 [{["RobloxAsset"] = 1, ["LocalAsset"] = 2, ["AnimationInstance"] = 3, ["AssetIdString"] = 4}]
        5 DUPTABLE                         R3 K19 [{["Uploading"] = 1, ["FailedSerialization"] = "FailedSerialization", ["FailedToGetProductInfo"] = "FailedToGetProductInfo", ["FailedWithError"] = "FailedWithError", ["Done"] = "Done"}]
        6 SETTABLEKS                       R1 R0 K20 ["Status"]
        8 SETTABLEKS                       R2 R0 K21 ["AssetType"]
       10 SETTABLEKS                       R3 R0 K22 ["AnimationStatus"]
       12 RETURN                           R0 1
