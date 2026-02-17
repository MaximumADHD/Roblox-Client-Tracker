PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K5 [{"Visible", "LayoutOrder", "tag", "testId"}]
  GETTABLEKS R5 R0 K1 ["Visible"]
  SETTABLEKS R5 R4 K1 ["Visible"]
  LOADN R5 3
  SETTABLEKS R5 R4 K2 ["LayoutOrder"]
  LOADK R5 K6 ["auto-y size-full-0 shrink"]
  SETTABLEKS R5 R4 K3 ["tag"]
  LOADK R6 K7 ["%*--actions"]
  GETTABLEKS R8 R1 K4 ["testId"]
  NAMECALL R6 R6 K8 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  SETTABLEKS R5 R4 K4 ["testId"]
  GETTABLEKS R5 R0 K9 ["children"]
  CALL R2 3 -1
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
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K9 ["Tile"]
  GETTABLEKS R4 R5 K10 ["useTile"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K11 ["View"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K8 ["Components"]
  GETTABLEKS R6 R7 K12 ["Types"]
  CALL R5 1 1
  DUPCLOSURE R6 K13 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R4
  RETURN R6 1
