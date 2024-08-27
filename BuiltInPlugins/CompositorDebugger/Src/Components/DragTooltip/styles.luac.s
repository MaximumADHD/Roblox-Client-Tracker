MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".DragTooltip"]
  DUPTABLE R5 K13 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R6 K16 [UDim2.fromScale]
  LOADN R7 1
  LOADN R8 1
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["Size"]
  LOADN R6 1
  SETTABLEKS R6 R5 K12 ["BackgroundTransparency"]
  NEWTABLE R6 0 1
  MOVE R7 R2
  LOADK R8 K17 ["> #TooltipContainer > #Tooltip > #ContentPane"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 2
  MOVE R11 R2
  LOADK R12 K18 ["::UIPadding"]
  DUPTABLE R13 K23 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADN R14 16
  SETTABLEKS R14 R13 K19 ["PaddingBottom"]
  LOADN R14 16
  SETTABLEKS R14 R13 K20 ["PaddingLeft"]
  LOADN R14 16
  SETTABLEKS R14 R13 K21 ["PaddingRight"]
  LOADN R14 16
  SETTABLEKS R14 R13 K22 ["PaddingTop"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K24 ["> #Label"]
  DUPTABLE R14 K26 [{"Size", "TextWrapper"}]
  GETIMPORT R15 K16 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K11 ["Size"]
  LOADB R15 1
  SETTABLEKS R15 R14 K25 ["TextWrapper"]
  CALL R12 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
