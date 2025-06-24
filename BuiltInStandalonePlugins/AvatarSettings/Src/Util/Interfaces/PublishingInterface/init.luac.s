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
  GETTABLEKS R3 R4 K11 ["connectGamePublishFinished"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K7 ["Util"]
  GETTABLEKS R6 R7 K8 ["Interfaces"]
  GETTABLEKS R5 R6 K10 ["PublishingInterface"]
  GETTABLEKS R4 R5 K12 ["onPublishSettings"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K7 ["Util"]
  GETTABLEKS R7 R8 K8 ["Interfaces"]
  GETTABLEKS R6 R7 K10 ["PublishingInterface"]
  GETTABLEKS R5 R6 K13 ["setupHolds"]
  CALL R4 1 1
  DUPTABLE R5 K14 [{"onPublishSettings", "setupHolds", "connectGamePublishFinished"}]
  SETTABLEKS R3 R5 K12 ["onPublishSettings"]
  SETTABLEKS R4 R5 K13 ["setupHolds"]
  SETTABLEKS R2 R5 K11 ["connectGamePublishFinished"]
  RETURN R5 1
