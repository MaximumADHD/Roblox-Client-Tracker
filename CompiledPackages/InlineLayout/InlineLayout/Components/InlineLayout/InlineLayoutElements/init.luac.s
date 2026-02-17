MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["RenderableInlineElement"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K5 ["BaseTextElement"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["HoverContext"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K7 ["TextElement"]
  CALL R3 1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K8 ["LinkElement"]
  CALL R4 1 1
  GETIMPORT R5 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K9 ["ImageElement"]
  CALL R5 1 1
  GETIMPORT R6 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K10 ["HardBreakElement"]
  CALL R6 1 1
  GETIMPORT R7 K1 [require]
  GETIMPORT R9 K3 [script]
  GETTABLEKS R8 R9 K11 ["SelectableTextElement"]
  CALL R7 1 1
  DUPTABLE R8 K12 [{"RenderableInlineElement", "BaseTextElement", "HoverContext", "TextElement", "LinkElement", "ImageElement", "HardBreakElement", "SelectableTextElement"}]
  SETTABLEKS R0 R8 K4 ["RenderableInlineElement"]
  SETTABLEKS R1 R8 K5 ["BaseTextElement"]
  SETTABLEKS R2 R8 K6 ["HoverContext"]
  SETTABLEKS R3 R8 K7 ["TextElement"]
  SETTABLEKS R4 R8 K8 ["LinkElement"]
  SETTABLEKS R5 R8 K9 ["ImageElement"]
  SETTABLEKS R6 R8 K10 ["HardBreakElement"]
  SETTABLEKS R7 R8 K11 ["SelectableTextElement"]
  RETURN R8 1
