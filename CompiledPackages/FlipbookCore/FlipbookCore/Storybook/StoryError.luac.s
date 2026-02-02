PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["ScrollView"]
  DUPTABLE R4 K5 [{"LayoutOrder", "scroll", "tag"}]
  GETTABLEKS R5 R0 K2 ["LayoutOrder"]
  SETTABLEKS R5 R4 K2 ["LayoutOrder"]
  DUPTABLE R5 K9 [{"ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
  GETIMPORT R6 K12 [Enum.ScrollingDirection.Y]
  SETTABLEKS R6 R5 K6 ["ScrollingDirection"]
  GETIMPORT R6 K14 [Enum.AutomaticSize.Y]
  SETTABLEKS R6 R5 K7 ["AutomaticCanvasSize"]
  GETIMPORT R6 K17 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["CanvasSize"]
  SETTABLEKS R5 R4 K3 ["scroll"]
  LOADK R5 K18 ["size-full padding-small gap-medium"]
  SETTABLEKS R5 R4 K4 ["tag"]
  DUPTABLE R5 K20 [{"CodeBlock"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K23 [{"source", "sourceColor"}]
  GETTABLEKS R9 R0 K24 ["errorMessage"]
  SETTABLEKS R9 R8 K21 ["source"]
  GETTABLEKS R12 R1 K25 ["Color"]
  GETTABLEKS R11 R12 K26 ["ActionAlert"]
  GETTABLEKS R10 R11 K27 ["Foreground"]
  GETTABLEKS R9 R10 K28 ["Color3"]
  SETTABLEKS R9 R8 K22 ["sourceColor"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K19 ["CodeBlock"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K5 ["RobloxPackages"]
  GETTABLEKS R1 R2 K6 ["Foundation"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K7 ["Packages"]
  GETTABLEKS R2 R3 K8 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K9 ["Common"]
  GETTABLEKS R3 R4 K10 ["CodeBlock"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K11 ["Hooks"]
  GETTABLEKS R3 R4 K12 ["useTokens"]
  DUPCLOSURE R4 K13 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R2
  RETURN R4 1
