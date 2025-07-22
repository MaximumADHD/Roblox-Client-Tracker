PROTO_0:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["Context has not been provided"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  GETTABLEKS R2 R0 K1 ["overlayStartsOpen"]
  CALL R1 1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["Provider"]
  DUPTABLE R5 K5 [{"value"}]
  DUPTABLE R6 K8 [{"overlayFocused", "setOverlayFocused"}]
  SETTABLEKS R1 R6 K6 ["overlayFocused"]
  SETTABLEKS R2 R6 K7 ["setOverlayFocused"]
  SETTABLEKS R6 R5 K4 ["value"]
  GETTABLEKS R6 R0 K9 ["children"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["VisualizationModes"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["createContext"]
  DUPTABLE R3 K11 [{"overlayFocused", "setOverlayFocused"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K9 ["overlayFocused"]
  DUPCLOSURE R4 K12 [PROTO_0]
  SETTABLEKS R4 R3 K10 ["setOverlayFocused"]
  CALL R2 1 1
  DUPCLOSURE R3 K13 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  DUPTABLE R4 K16 [{"Context", "Provider"}]
  SETTABLEKS R2 R4 K14 ["Context"]
  SETTABLEKS R3 R4 K15 ["Provider"]
  RETURN R4 1
