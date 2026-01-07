MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Assistant"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  GETTABLEKS R4 R1 K8 ["Styling"]
  GETTABLEKS R3 R4 K10 ["createStyleSheet"]
  NEWTABLE R4 0 3
  MOVE R5 R2
  LOADK R6 K11 [".Component-ChatHistoryScrollView"]
  NEWTABLE R7 0 0
  NEWTABLE R8 0 1
  MOVE R9 R2
  LOADK R10 K12 ["> ScrollingFrame ::UIPadding"]
  DUPTABLE R11 K17 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R12 K20 [UDim.new]
  LOADN R13 0
  LOADN R14 20
  CALL R12 2 1
  SETTABLEKS R12 R11 K13 ["PaddingTop"]
  GETIMPORT R12 K20 [UDim.new]
  LOADN R13 0
  LOADN R14 20
  CALL R12 2 1
  SETTABLEKS R12 R11 K14 ["PaddingBottom"]
  GETIMPORT R12 K20 [UDim.new]
  LOADN R13 0
  LOADN R14 20
  CALL R12 2 1
  SETTABLEKS R12 R11 K15 ["PaddingLeft"]
  GETIMPORT R12 K20 [UDim.new]
  LOADN R13 0
  LOADN R14 20
  CALL R12 2 1
  SETTABLEKS R12 R11 K16 ["PaddingRight"]
  CALL R9 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 1
  MOVE R6 R2
  LOADK R7 K21 [".Assistant-CustomIconButton-Disabled GuiButton"]
  DUPTABLE R8 K23 [{"BackgroundTransparency"}]
  LOADK R9 K24 [0.5]
  SETTABLEKS R9 R8 K22 ["BackgroundTransparency"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K25 [".Assistant-CustomIconButton-Disabled"]
  DUPTABLE R9 K27 [{"ImageTransparency"}]
  LOADK R10 K24 [0.5]
  SETTABLEKS R10 R9 K26 ["ImageTransparency"]
  CALL R7 2 -1
  SETLIST R4 R5 -1 [1]
  NEWTABLE R5 0 0
  MOVE R6 R3
  LOADK R7 K2 ["Assistant"]
  MOVE R8 R4
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
