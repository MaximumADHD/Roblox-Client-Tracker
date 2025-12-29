MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["MoveSpatialVoice"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["GameSettingsExperienceGuidelines"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K5 ["GameSettingsPlayabilityWarning"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K6 ["GameSettingsPlayabilityWarningBefore30Sept"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K7 ["EnableRestartServersRedirectInGameSettings"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K8 ["RemoveGameSettingsPermissionsPage"]
  LOADN R3 2
  NAMECALL R0 R0 K9 ["SetFlagVersion"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K8 ["RemoveGameSettingsPermissionsPage"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K10 ["PaidAccessInFiat"]
  LOADN R3 2
  NAMECALL R0 R0 K9 ["SetFlagVersion"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K10 ["PaidAccessInFiat"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K11 ["FixGameSettingsLabelRegression"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K12 ["GameSettingsAddCreatorHubLinkToFooter"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K13 ["GameSettingsCreatorHubManageExperienceLink"]
  LOADK R3 K14 ["https://create.roblox.com/dashboard/creations/experiences/{}/configure"]
  NAMECALL R0 R0 K15 ["DefineFastString"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K16 ["StudioGenreOverhaulExplainationLink"]
  LOADK R3 K17 ["https://devforum.roblox.com/t/testing-an-enhanced-discover-page-top-charts-and-new-sorts/2954676#genre-specific-sorts-4"]
  NAMECALL R0 R0 K15 ["DefineFastString"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K18 ["CU1320ExperienceGenre"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  LOADNIL R0
  RETURN R0 1
