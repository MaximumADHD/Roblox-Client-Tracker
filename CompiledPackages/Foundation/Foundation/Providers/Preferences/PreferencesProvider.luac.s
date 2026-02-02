PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R2 K3 [{"preferredTextSize", "preferredTransparency", "reducedMotion"}]
  GETTABLEKS R3 R0 K0 ["preferredTextSize"]
  SETTABLEKS R3 R2 K0 ["preferredTextSize"]
  GETTABLEKS R3 R0 K1 ["preferredTransparency"]
  SETTABLEKS R3 R2 K1 ["preferredTransparency"]
  GETTABLEKS R3 R0 K2 ["reducedMotion"]
  SETTABLEKS R3 R2 K2 ["reducedMotion"]
  GETUPVAL R3 1
  CALL R1 2 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K4 ["createElement"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K5 ["Provider"]
  DUPTABLE R4 K7 [{"value"}]
  SETTABLEKS R1 R4 K6 ["value"]
  GETTABLEKS R5 R0 K8 ["children"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K1 [script]
  LOADK R3 K3 ["Foundation"]
  NAMECALL R1 R1 K4 ["FindFirstAncestor"]
  CALL R1 2 1
  GETTABLEKS R2 R1 K2 ["Parent"]
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R2 K7 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R0 K8 ["PreferencesContext"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R1 K9 ["Utility"]
  GETTABLEKS R6 R7 K10 ["withDefaults"]
  CALL R5 1 1
  DUPTABLE R6 K15 [{"preferredTextSize", "preferredTransparency", "reducedMotion", "scale"}]
  GETIMPORT R7 K19 [Enum.PreferredTextSize.Medium]
  SETTABLEKS R7 R6 K11 ["preferredTextSize"]
  LOADN R7 1
  SETTABLEKS R7 R6 K12 ["preferredTransparency"]
  LOADB R7 0
  SETTABLEKS R7 R6 K13 ["reducedMotion"]
  LOADN R7 1
  SETTABLEKS R7 R6 K14 ["scale"]
  DUPCLOSURE R7 K20 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R7 1
