MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K2 [{"OpenAvatarPreviewCallout", "ApplyToAllCallout"}]
  DUPTABLE R1 K6 [{"Title", "Description", "Link"}]
  LOADK R2 K7 ["UgcValidationTitle"]
  SETTABLEKS R2 R1 K3 ["Title"]
  LOADK R2 K8 ["UgcValidationDesc"]
  SETTABLEKS R2 R1 K4 ["Description"]
  LOADK R2 K9 ["https://create.roblox.com/docs/art/marketplace/marketplace-policy#avatar-body-guidelines"]
  SETTABLEKS R2 R1 K5 ["Link"]
  SETTABLEKS R1 R0 K0 ["OpenAvatarPreviewCallout"]
  DUPTABLE R1 K6 [{"Title", "Description", "Link"}]
  LOADK R2 K10 ["ApplyToAllTitle"]
  SETTABLEKS R2 R1 K3 ["Title"]
  LOADK R2 K11 ["ApplyToAllDesc"]
  SETTABLEKS R2 R1 K4 ["Description"]
  LOADK R2 K12 [""]
  SETTABLEKS R2 R1 K5 ["Link"]
  SETTABLEKS R1 R0 K1 ["ApplyToAllCallout"]
  SETGLOBAL R0 K13 ["CalloutList"]
  GETGLOBAL R0 K13 ["CalloutList"]
  RETURN R0 1
