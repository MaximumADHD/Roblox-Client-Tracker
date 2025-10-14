MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["InlineLayoutElements"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R2 R0 K6 ["RenderableInlineElement"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R0 K7 ["BaseTextElement"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R0 K8 ["HoverContext"]
  CALL R3 1 1
  DUPTABLE R4 K9 [{"RenderableInlineElement", "BaseTextElement", "HoverContext"}]
  SETTABLEKS R1 R4 K6 ["RenderableInlineElement"]
  SETTABLEKS R2 R4 K7 ["BaseTextElement"]
  SETTABLEKS R3 R4 K8 ["HoverContext"]
  RETURN R4 1
