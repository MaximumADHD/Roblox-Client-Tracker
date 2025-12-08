PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R2 1
  DUPTABLE R3 K7 [{"tag", "Text", "TextXAlignment", "Font", "TextSize", "LayoutOrder", "TextWrapped"}]
  LOADK R4 K8 ["size-full-0 auto-y content-default"]
  SETTABLEKS R4 R3 K0 ["tag"]
  GETTABLEKS R4 R0 K9 ["Markdown"]
  SETTABLEKS R4 R3 K1 ["Text"]
  GETIMPORT R4 K12 [Enum.TextXAlignment.Left]
  SETTABLEKS R4 R3 K2 ["TextXAlignment"]
  GETIMPORT R4 K14 [Enum.Font.SourceSans]
  SETTABLEKS R4 R3 K3 ["Font"]
  LOADN R4 18
  SETTABLEKS R4 R3 K4 ["TextSize"]
  GETTABLEKS R5 R0 K15 ["WrapperProps"]
  JUMPIFNOT R5 [+5]
  GETTABLEKS R5 R0 K15 ["WrapperProps"]
  GETTABLEKS R4 R5 K5 ["LayoutOrder"]
  JUMPIF R4 [+1]
  LOADN R4 0
  SETTABLEKS R4 R3 K5 ["LayoutOrder"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["TextWrapped"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Foundation"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Parent"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["Text"]
  GETTABLEKS R4 R2 K10 ["createElement"]
  DUPCLOSURE R5 K11 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R3
  RETURN R5 1
