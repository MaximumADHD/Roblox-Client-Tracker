MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["MaterialGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["ReactUtils"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["createUnimplemented"]
  DUPTABLE R4 K17 [{"session", "isGenerating", "currentPromptText", "errorMessage", "popError", "generateMaterialVariants", "uploadMaterialVariant"}]
  LOADNIL R5
  SETTABLEKS R5 R4 K10 ["session"]
  LOADB R5 0
  SETTABLEKS R5 R4 K11 ["isGenerating"]
  LOADK R5 K18 [""]
  SETTABLEKS R5 R4 K12 ["currentPromptText"]
  LOADNIL R5
  SETTABLEKS R5 R4 K13 ["errorMessage"]
  MOVE R5 R3
  LOADK R6 K14 ["popError"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K14 ["popError"]
  MOVE R5 R3
  LOADK R6 K15 ["generateMaterialVariants"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K15 ["generateMaterialVariants"]
  MOVE R5 R3
  LOADK R6 K16 ["uploadMaterialVariant"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K16 ["uploadMaterialVariant"]
  GETTABLEKS R5 R1 K19 ["createContext"]
  MOVE R6 R4
  CALL R5 1 1
  RETURN R5 1
