MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Flags"]
  GETTABLEKS R2 R3 K7 ["getFFlagAssetImporterApplyToAllFixes"]
  CALL R1 1 1
  DUPTABLE R2 K10 [{"OpenAvatarPreviewCallout", "ApplyToAllCallout"}]
  DUPTABLE R3 K14 [{"Title", "Description", "Link"}]
  LOADK R4 K15 ["UgcValidationTitle"]
  SETTABLEKS R4 R3 K11 ["Title"]
  LOADK R4 K16 ["UgcValidationDesc"]
  SETTABLEKS R4 R3 K12 ["Description"]
  LOADK R4 K17 ["https://create.roblox.com/docs/art/marketplace/marketplace-policy#avatar-body-guidelines"]
  SETTABLEKS R4 R3 K13 ["Link"]
  SETTABLEKS R3 R2 K8 ["OpenAvatarPreviewCallout"]
  MOVE R4 R1
  CALL R4 0 1
  JUMPIFNOT R4 [+11]
  DUPTABLE R3 K14 [{"Title", "Description", "Link"}]
  LOADK R4 K18 ["ApplyToAllTitle"]
  SETTABLEKS R4 R3 K11 ["Title"]
  LOADK R4 K19 ["ApplyToAllDesc"]
  SETTABLEKS R4 R3 K12 ["Description"]
  LOADK R4 K20 [""]
  SETTABLEKS R4 R3 K13 ["Link"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K9 ["ApplyToAllCallout"]
  SETGLOBAL R2 K21 ["CalloutList"]
  GETGLOBAL R2 K21 ["CalloutList"]
  RETURN R2 1
