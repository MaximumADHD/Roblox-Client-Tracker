PROTO_0:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K5 [{"name", "size", "variant"}]
  GETTABLEKS R5 R1 K2 ["name"]
  SETTABLEKS R5 R4 K2 ["name"]
  GETTABLEKS R5 R1 K3 ["size"]
  SETTABLEKS R5 R4 K3 ["size"]
  GETTABLEKS R5 R1 K4 ["variant"]
  SETTABLEKS R5 R4 K4 ["variant"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["BuilderIcons"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K9 ["Dash"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K10 ["Components"]
  GETTABLEKS R6 R7 K11 ["Icon"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K12 ["Enums"]
  GETTABLEKS R7 R8 K13 ["IconSize"]
  CALL R6 1 1
  DUPCLOSURE R7 K14 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R5
  DUPTABLE R8 K18 [{"summary", "story", "controls"}]
  LOADK R9 K19 ["Icon component for displaying icons"]
  SETTABLEKS R9 R8 K15 ["summary"]
  SETTABLEKS R7 R8 K16 ["story"]
  DUPTABLE R9 K23 [{"name", "variant", "size"}]
  GETTABLEKS R10 R4 K24 ["values"]
  GETTABLEKS R11 R3 K11 ["Icon"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K20 ["name"]
  GETTABLEKS R10 R4 K24 ["values"]
  GETTABLEKS R11 R3 K25 ["IconVariant"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K21 ["variant"]
  NEWTABLE R10 0 4
  GETTABLEKS R11 R6 K26 ["Large"]
  GETTABLEKS R12 R6 K27 ["XSmall"]
  GETTABLEKS R13 R6 K28 ["Small"]
  GETTABLEKS R14 R6 K29 ["Medium"]
  SETLIST R10 R11 4 [1]
  SETTABLEKS R10 R9 K22 ["size"]
  SETTABLEKS R9 R8 K17 ["controls"]
  RETURN R8 1
