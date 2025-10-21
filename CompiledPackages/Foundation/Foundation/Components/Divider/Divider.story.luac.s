PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"tag"}]
  LOADK R4 K3 ["size-full-2000 col align-y-center bg-surface-0"]
  SETTABLEKS R4 R3 K1 ["tag"]
  DUPTABLE R4 K5 [{"Divider"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K8 [{"variant", "orientation"}]
  GETTABLEKS R9 R0 K9 ["controls"]
  GETTABLEKS R8 R9 K6 ["variant"]
  SETTABLEKS R8 R7 K6 ["variant"]
  GETTABLEKS R9 R0 K9 ["controls"]
  GETTABLEKS R8 R9 K7 ["orientation"]
  SETTABLEKS R8 R7 K7 ["orientation"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["Divider"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["View"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K9 ["Components"]
  GETTABLEKS R6 R7 K11 ["Divider"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K12 ["Enums"]
  GETTABLEKS R7 R8 K13 ["DividerVariant"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K12 ["Enums"]
  GETTABLEKS R8 R9 K14 ["Orientation"]
  CALL R7 1 1
  DUPCLOSURE R8 K15 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  DUPTABLE R9 K19 [{"summary", "story", "controls"}]
  LOADK R10 K11 ["Divider"]
  SETTABLEKS R10 R9 K16 ["summary"]
  SETTABLEKS R8 R9 K17 ["story"]
  DUPTABLE R10 K22 [{"variant", "orientation"}]
  GETTABLEKS R11 R2 K23 ["values"]
  MOVE R12 R6
  CALL R11 1 1
  SETTABLEKS R11 R10 K20 ["variant"]
  GETTABLEKS R11 R2 K23 ["values"]
  MOVE R12 R7
  CALL R11 1 1
  SETTABLEKS R11 R10 K21 ["orientation"]
  SETTABLEKS R10 R9 K18 ["controls"]
  RETURN R9 1
