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
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K14 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K15 ["Util"]
  GETTABLEKS R5 R6 K16 ["createUnimplemented"]
  CALL R4 1 1
  DUPTABLE R5 K25 [{"openPalette", "focusedAttachments", "setFocusedAttachments", "dummyPreviewLocked", "incrementDummyPreviewLock", "decrementDummyPreviewLock", "resetCamera", "stage"}]
  MOVE R6 R4
  LOADK R7 K17 ["openPalette"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K17 ["openPalette"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K18 ["focusedAttachments"]
  MOVE R6 R4
  LOADK R7 K19 ["setFocusedAttachments"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K19 ["setFocusedAttachments"]
  LOADB R6 0
  SETTABLEKS R6 R5 K20 ["dummyPreviewLocked"]
  MOVE R6 R4
  LOADK R7 K21 ["incrementDummyPreviewLock"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K21 ["incrementDummyPreviewLock"]
  MOVE R6 R4
  LOADK R7 K22 ["decrementDummyPreviewLock"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K22 ["decrementDummyPreviewLock"]
  DUPCLOSURE R6 K26 [PROTO_0]
  SETTABLEKS R6 R5 K23 ["resetCamera"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K24 ["stage"]
  GETTABLEKS R6 R1 K27 ["createContext"]
  MOVE R7 R5
  CALL R6 1 1
  RETURN R6 1
