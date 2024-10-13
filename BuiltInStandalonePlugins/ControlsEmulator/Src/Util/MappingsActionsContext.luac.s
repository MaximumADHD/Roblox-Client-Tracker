MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ControlsEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["createContext"]
  DUPTABLE R3 K18 [{"connectGamepadId", "setMapping", "loadMappingsForGamepad", "setIsUpdatingMappingFor", "restoreDefaults", "saveMappings", "setIsMappingsDialogOpen", "setVRConnected", "changeEmulatedDevice"}]
  LOADNIL R4
  SETTABLEKS R4 R3 K9 ["connectGamepadId"]
  LOADNIL R4
  SETTABLEKS R4 R3 K10 ["setMapping"]
  LOADNIL R4
  SETTABLEKS R4 R3 K11 ["loadMappingsForGamepad"]
  LOADNIL R4
  SETTABLEKS R4 R3 K12 ["setIsUpdatingMappingFor"]
  LOADNIL R4
  SETTABLEKS R4 R3 K13 ["restoreDefaults"]
  LOADNIL R4
  SETTABLEKS R4 R3 K14 ["saveMappings"]
  LOADNIL R4
  SETTABLEKS R4 R3 K15 ["setIsMappingsDialogOpen"]
  LOADNIL R4
  SETTABLEKS R4 R3 K16 ["setVRConnected"]
  LOADNIL R4
  SETTABLEKS R4 R3 K17 ["changeEmulatedDevice"]
  CALL R2 1 1
  RETURN R2 1
