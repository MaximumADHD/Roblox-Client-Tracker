PROTO_0:
  DUPTABLE R2 K2 [{"enabled", "assetId"}]
  SETTABLEKS R0 R2 K0 ["enabled"]
  SETTABLEKS R1 R2 K1 ["assetId"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Components"]
  GETTABLEKS R4 R5 K8 ["Contexts"]
  GETTABLEKS R3 R4 K9 ["PublishProvider"]
  GETTABLEKS R2 R3 K10 ["PublishedSettingsTypes"]
  CALL R1 1 1
  DUPCLOSURE R2 K11 [PROTO_0]
  RETURN R2 1
