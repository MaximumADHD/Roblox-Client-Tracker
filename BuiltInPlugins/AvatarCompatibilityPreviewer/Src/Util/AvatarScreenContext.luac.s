PROTO_0:
  RETURN R0 0

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
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K9 ["Components"]
  GETTABLEKS R6 R7 K10 ["Screens"]
  GETTABLEKS R5 R6 K11 ["AvatarScreen"]
  GETTABLEKS R4 R5 K12 ["Stages"]
  GETTABLEKS R3 R4 K13 ["StageType"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K14 ["Util"]
  GETTABLEKS R4 R5 K15 ["createUnimplemented"]
  CALL R3 1 1
  DUPTABLE R4 K22 [{"openPalette", "dummyPreviewLocked", "incrementDummyPreviewLock", "decrementDummyPreviewLock", "resetCamera", "stage"}]
  MOVE R5 R3
  LOADK R6 K16 ["openPalette"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K16 ["openPalette"]
  LOADB R5 0
  SETTABLEKS R5 R4 K17 ["dummyPreviewLocked"]
  MOVE R5 R3
  LOADK R6 K18 ["incrementDummyPreviewLock"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K18 ["incrementDummyPreviewLock"]
  MOVE R5 R3
  LOADK R6 K19 ["decrementDummyPreviewLock"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K19 ["decrementDummyPreviewLock"]
  DUPCLOSURE R5 K23 [PROTO_0]
  SETTABLEKS R5 R4 K20 ["resetCamera"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K21 ["stage"]
  GETTABLEKS R5 R1 K24 ["createContext"]
  MOVE R6 R4
  CALL R5 1 1
  RETURN R5 1
