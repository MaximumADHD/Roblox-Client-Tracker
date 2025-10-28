PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K5 [{"LayoutOrder", "Size", "tag", "testId"}]
  GETTABLEKS R5 R0 K1 ["LayoutOrder"]
  SETTABLEKS R5 R4 K1 ["LayoutOrder"]
  GETIMPORT R5 K8 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  GETTABLEKS R10 R1 K9 ["Stroke"]
  GETTABLEKS R9 R10 K10 ["Standard"]
  CALL R5 4 1
  SETTABLEKS R5 R4 K2 ["Size"]
  LOADK R5 K11 ["row flex-x-fill"]
  SETTABLEKS R5 R4 K3 ["tag"]
  LOADK R5 K12 ["--foundation-menu-divider-item"]
  SETTABLEKS R5 R4 K4 ["testId"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K14 [{"tag", "backgroundStyle"}]
  LOADK R8 K15 ["size-0-full grow"]
  SETTABLEKS R8 R7 K3 ["tag"]
  GETTABLEKS R10 R1 K16 ["Color"]
  GETTABLEKS R9 R10 K9 ["Stroke"]
  GETTABLEKS R8 R9 K17 ["Default"]
  SETTABLEKS R8 R7 K13 ["backgroundStyle"]
  CALL R5 2 -1
  CALL R2 -1 -1
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
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["View"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R7 R0 K10 ["Providers"]
  GETTABLEKS R6 R7 K11 ["Style"]
  GETTABLEKS R5 R6 K12 ["useTokens"]
  CALL R4 1 1
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R5 1
