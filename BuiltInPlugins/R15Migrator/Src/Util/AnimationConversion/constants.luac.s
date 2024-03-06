MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  DUPTABLE R1 K5 [{"NotStarted", "ScanningScripts", "ScanningWorkspace", "ConvertingAnimations", "Done"}]
  LOADK R2 K0 ["NotStarted"]
  SETTABLEKS R2 R1 K0 ["NotStarted"]
  LOADK R2 K1 ["ScanningScripts"]
  SETTABLEKS R2 R1 K1 ["ScanningScripts"]
  LOADK R2 K2 ["ScanningWorkspace"]
  SETTABLEKS R2 R1 K2 ["ScanningWorkspace"]
  LOADK R2 K3 ["ConvertingAnimations"]
  SETTABLEKS R2 R1 K3 ["ConvertingAnimations"]
  LOADK R2 K4 ["Done"]
  SETTABLEKS R2 R1 K4 ["Done"]
  DUPTABLE R2 K10 [{"RobloxAsset", "LocalAsset", "AnimationInstance", "AssetIdString"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K6 ["RobloxAsset"]
  LOADN R3 2
  SETTABLEKS R3 R2 K7 ["LocalAsset"]
  LOADN R3 3
  SETTABLEKS R3 R2 K8 ["AnimationInstance"]
  LOADN R3 4
  SETTABLEKS R3 R2 K9 ["AssetIdString"]
  DUPTABLE R3 K15 [{"Uploading", "FailedSerialization", "FailedToGetProductInfo", "FailedWithError", "Done"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K11 ["Uploading"]
  LOADK R4 K12 ["FailedSerialization"]
  SETTABLEKS R4 R3 K12 ["FailedSerialization"]
  LOADK R4 K13 ["FailedToGetProductInfo"]
  SETTABLEKS R4 R3 K13 ["FailedToGetProductInfo"]
  LOADK R4 K14 ["FailedWithError"]
  SETTABLEKS R4 R3 K14 ["FailedWithError"]
  LOADK R4 K4 ["Done"]
  SETTABLEKS R4 R3 K4 ["Done"]
  SETTABLEKS R1 R0 K16 ["Status"]
  SETTABLEKS R2 R0 K17 ["AssetType"]
  SETTABLEKS R3 R0 K18 ["AnimationStatus"]
  RETURN R0 1
