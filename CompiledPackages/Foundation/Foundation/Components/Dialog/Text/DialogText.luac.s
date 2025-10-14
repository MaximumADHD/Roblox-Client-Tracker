PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K5 [{"Text", "RichText", "tag", "LayoutOrder"}]
  GETTABLEKS R4 R0 K1 ["Text"]
  SETTABLEKS R4 R3 K1 ["Text"]
  LOADB R4 1
  SETTABLEKS R4 R3 K2 ["RichText"]
  LOADK R4 K6 ["text-body-large text-wrap text-align-x-left text-align-y-top auto-y size-full-0"]
  SETTABLEKS R4 R3 K3 ["tag"]
  GETTABLEKS R4 R0 K4 ["LayoutOrder"]
  SETTABLEKS R4 R3 K4 ["LayoutOrder"]
  CALL R1 2 -1
  RETURN R1 -1

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
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["Text"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K10 ["Types"]
  CALL R4 1 1
  DUPCLOSURE R5 K11 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R5 1
