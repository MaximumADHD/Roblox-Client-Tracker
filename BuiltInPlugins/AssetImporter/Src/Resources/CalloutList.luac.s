MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K1 [{"OpenAvatarPreviewCallout"}]
  DUPTABLE R1 K5 [{"Title", "Description", "Link"}]
  LOADK R2 K6 ["UgcValidationTitle"]
  SETTABLEKS R2 R1 K2 ["Title"]
  LOADK R2 K7 ["UgcValidationDesc"]
  SETTABLEKS R2 R1 K3 ["Description"]
  LOADK R2 K8 ["https://create.roblox.com/docs/art/marketplace/marketplace-policy#avatar-body-guidelines"]
  SETTABLEKS R2 R1 K4 ["Link"]
  SETTABLEKS R1 R0 K0 ["OpenAvatarPreviewCallout"]
  SETGLOBAL R0 K9 ["CalloutList"]
  GETGLOBAL R0 K9 ["CalloutList"]
  RETURN R0 1
