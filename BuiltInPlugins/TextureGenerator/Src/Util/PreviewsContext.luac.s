MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TextureGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["createUnimplemented"]
  CALL R3 1 1
  DUPTABLE R4 K26 [{"previews", "addOrUpdatePreview", "updatePreview", "removePreview", "addError", "popError", "removeErrorById", "getTopError", "modelToPreview", "addOrUpdateModelToPreview", "quota", "setQuota", "total", "setTotal"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K12 ["previews"]
  MOVE R5 R3
  LOADK R6 K13 ["addOrUpdatePreview"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K13 ["addOrUpdatePreview"]
  MOVE R5 R3
  LOADK R6 K14 ["updatePreview"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K14 ["updatePreview"]
  MOVE R5 R3
  LOADK R6 K15 ["removePreview"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K15 ["removePreview"]
  MOVE R5 R3
  LOADK R6 K16 ["addError"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K16 ["addError"]
  MOVE R5 R3
  LOADK R6 K17 ["popError"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K17 ["popError"]
  MOVE R5 R3
  LOADK R6 K18 ["removeErrorById"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K18 ["removeErrorById"]
  MOVE R5 R3
  LOADK R6 K19 ["getTopError"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K19 ["getTopError"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K20 ["modelToPreview"]
  MOVE R5 R3
  LOADK R6 K21 ["addOrUpdateModelToPreview"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K21 ["addOrUpdateModelToPreview"]
  LOADN R5 0
  SETTABLEKS R5 R4 K22 ["quota"]
  MOVE R5 R3
  LOADK R6 K23 ["setQuota"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K23 ["setQuota"]
  LOADN R5 0
  SETTABLEKS R5 R4 K24 ["total"]
  MOVE R5 R3
  LOADK R6 K25 ["setTotal"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K25 ["setTotal"]
  GETTABLEKS R5 R1 K27 ["createContext"]
  MOVE R6 R4
  CALL R5 1 1
  RETURN R5 1
