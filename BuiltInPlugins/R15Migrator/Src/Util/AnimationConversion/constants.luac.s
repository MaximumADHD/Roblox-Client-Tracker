MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPTABLE                         R1 K5 [{"NotStarted", "ScanningScripts", "ScanningWorkspace", "ConvertingAnimations", "Done"}]
        4 LOADK                            R2 K0 ["NotStarted"]
        5 SETTABLEKS                       R2 R1 K0 ["NotStarted"]
        7 LOADK                            R2 K1 ["ScanningScripts"]
        8 SETTABLEKS                       R2 R1 K1 ["ScanningScripts"]
       10 LOADK                            R2 K2 ["ScanningWorkspace"]
       11 SETTABLEKS                       R2 R1 K2 ["ScanningWorkspace"]
       13 LOADK                            R2 K3 ["ConvertingAnimations"]
       14 SETTABLEKS                       R2 R1 K3 ["ConvertingAnimations"]
       16 LOADK                            R2 K4 ["Done"]
       17 SETTABLEKS                       R2 R1 K4 ["Done"]
       19 DUPTABLE                         R2 K10 [{"RobloxAsset", "LocalAsset", "AnimationInstance", "AssetIdString"}]
       20 LOADN                            R3 1
       21 SETTABLEKS                       R3 R2 K6 ["RobloxAsset"]
       23 LOADN                            R3 2
       24 SETTABLEKS                       R3 R2 K7 ["LocalAsset"]
       26 LOADN                            R3 3
       27 SETTABLEKS                       R3 R2 K8 ["AnimationInstance"]
       29 LOADN                            R3 4
       30 SETTABLEKS                       R3 R2 K9 ["AssetIdString"]
       32 DUPTABLE                         R3 K15 [{"Uploading", "FailedSerialization", "FailedToGetProductInfo", "FailedWithError", "Done"}]
       33 LOADN                            R4 1
       34 SETTABLEKS                       R4 R3 K11 ["Uploading"]
       36 LOADK                            R4 K12 ["FailedSerialization"]
       37 SETTABLEKS                       R4 R3 K12 ["FailedSerialization"]
       39 LOADK                            R4 K13 ["FailedToGetProductInfo"]
       40 SETTABLEKS                       R4 R3 K13 ["FailedToGetProductInfo"]
       42 LOADK                            R4 K14 ["FailedWithError"]
       43 SETTABLEKS                       R4 R3 K14 ["FailedWithError"]
       45 LOADK                            R4 K4 ["Done"]
       46 SETTABLEKS                       R4 R3 K4 ["Done"]
       48 SETTABLEKS                       R1 R0 K16 ["Status"]
       50 SETTABLEKS                       R2 R0 K17 ["AssetType"]
       52 SETTABLEKS                       R3 R0 K18 ["AnimationStatus"]
       54 RETURN                           R0 1
