PROTO_0:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K6 [{"Text", "size", "isRequired", "RichText"}]
  GETTABLEKS R5 R1 K2 ["Text"]
  SETTABLEKS R5 R4 K2 ["Text"]
  GETTABLEKS R5 R1 K3 ["size"]
  SETTABLEKS R5 R4 K3 ["size"]
  GETTABLEKS R5 R1 K4 ["isRequired"]
  SETTABLEKS R5 R4 K4 ["isRequired"]
  GETTABLEKS R5 R1 K5 ["RichText"]
  SETTABLEKS R5 R4 K5 ["RichText"]
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
  GETTABLEKS R4 R1 K8 ["Dash"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["InputLabel"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K11 ["Enums"]
  GETTABLEKS R6 R7 K12 ["InputLabelSize"]
  CALL R5 1 1
  DUPCLOSURE R6 K13 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  DUPTABLE R7 K17 [{"summary", "story", "controls"}]
  LOADK R8 K18 ["Label put above inputs"]
  SETTABLEKS R8 R7 K14 ["summary"]
  SETTABLEKS R6 R7 K15 ["story"]
  DUPTABLE R8 K23 [{"Text", "size", "isRequired", "RichText"}]
  LOADK R9 K24 ["Input Label"]
  SETTABLEKS R9 R8 K19 ["Text"]
  GETTABLEKS R9 R3 K25 ["values"]
  MOVE R10 R5
  CALL R9 1 1
  SETTABLEKS R9 R8 K20 ["size"]
  NEWTABLE R9 0 3
  GETTABLEKS R10 R2 K26 ["None"]
  LOADB R11 0
  LOADB R12 1
  SETLIST R9 R10 3 [1]
  SETTABLEKS R9 R8 K21 ["isRequired"]
  LOADB R9 0
  SETTABLEKS R9 R8 K22 ["RichText"]
  SETTABLEKS R8 R7 K16 ["controls"]
  RETURN R7 1
