MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["Interfaces"]
  GETTABLEKS R2 R3 K9 ["InterfaceTypes"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K7 ["Util"]
  GETTABLEKS R5 R6 K8 ["Interfaces"]
  GETTABLEKS R4 R5 K10 ["PublishingInterface"]
  GETTABLEKS R3 R4 K11 ["connectRefreshPluginState"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K7 ["Util"]
  GETTABLEKS R6 R7 K8 ["Interfaces"]
  GETTABLEKS R5 R6 K10 ["PublishingInterface"]
  GETTABLEKS R4 R5 K12 ["onDiscardSettings"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K7 ["Util"]
  GETTABLEKS R7 R8 K8 ["Interfaces"]
  GETTABLEKS R6 R7 K10 ["PublishingInterface"]
  GETTABLEKS R5 R6 K13 ["onPublishSettings"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K7 ["Util"]
  GETTABLEKS R8 R9 K8 ["Interfaces"]
  GETTABLEKS R7 R8 K10 ["PublishingInterface"]
  GETTABLEKS R6 R7 K14 ["setupHolds"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K7 ["Util"]
  GETTABLEKS R9 R10 K8 ["Interfaces"]
  GETTABLEKS R8 R9 K10 ["PublishingInterface"]
  GETTABLEKS R7 R8 K15 ["showSaveOrPublishPlaceToRoblox"]
  CALL R6 1 1
  DUPTABLE R7 K16 [{"onPublishSettings", "onDiscardSettings", "setupHolds", "showSaveOrPublishPlaceToRoblox", "connectRefreshPluginState"}]
  SETTABLEKS R4 R7 K13 ["onPublishSettings"]
  SETTABLEKS R3 R7 K12 ["onDiscardSettings"]
  SETTABLEKS R5 R7 K14 ["setupHolds"]
  SETTABLEKS R6 R7 K15 ["showSaveOrPublishPlaceToRoblox"]
  SETTABLEKS R2 R7 K11 ["connectRefreshPluginState"]
  RETURN R7 1
