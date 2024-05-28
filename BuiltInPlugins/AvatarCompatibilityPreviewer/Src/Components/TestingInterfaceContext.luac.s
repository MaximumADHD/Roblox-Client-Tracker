MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["Signal"]
  CALL R2 1 1
  DUPTABLE R3 K14 [{"onIsColorableAcquired", "onRepresentEditorStateOnWorldModelDescriptionApplied", "onRepresentEditorStateOnWorldModelUnmounted"}]
  LOADNIL R4
  SETTABLEKS R4 R3 K11 ["onIsColorableAcquired"]
  LOADNIL R4
  SETTABLEKS R4 R3 K12 ["onRepresentEditorStateOnWorldModelDescriptionApplied"]
  LOADNIL R4
  SETTABLEKS R4 R3 K13 ["onRepresentEditorStateOnWorldModelUnmounted"]
  GETTABLEKS R4 R1 K15 ["createContext"]
  MOVE R5 R3
  CALL R4 1 1
  DUPTABLE R5 K17 [{"Context"}]
  SETTABLEKS R4 R5 K16 ["Context"]
  RETURN R5 1
