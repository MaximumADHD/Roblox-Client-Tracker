MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  GETIMPORT R3 K12 [UDim2.fromOffset]
  LOADN R4 16
  LOADN R5 16
  CALL R3 2 1
  MOVE R4 R2
  LOADK R5 K13 [".HeaderOptions"]
  NEWTABLE R6 0 0
  NEWTABLE R7 0 3
  MOVE R8 R2
  LOADK R9 K14 ["> .ClearFilter"]
  DUPTABLE R10 K16 [{"Size"}]
  SETTABLEKS R3 R10 K15 ["Size"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K17 ["> .HoverableButton"]
  DUPTABLE R11 K16 [{"Size"}]
  LOADK R12 K18 ["$HeaderButtonSize"]
  SETTABLEKS R12 R11 K15 ["Size"]
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K19 [":hover"]
  DUPTABLE R15 K22 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R16 K23 ["$ActionHover"]
  SETTABLEKS R16 R15 K20 ["BackgroundColor3"]
  LOADN R16 0
  SETTABLEKS R16 R15 K21 ["BackgroundTransparency"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K24 ["::UIPadding"]
  DUPTABLE R12 K28 [{"PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R13 K31 [UDim.new]
  LOADN R14 0
  LOADN R15 20
  CALL R13 2 1
  SETTABLEKS R13 R12 K25 ["PaddingRight"]
  GETIMPORT R13 K31 [UDim.new]
  LOADN R14 0
  LOADN R15 5
  CALL R13 2 1
  SETTABLEKS R13 R12 K26 ["PaddingTop"]
  GETIMPORT R13 K31 [UDim.new]
  LOADN R14 0
  LOADN R15 5
  CALL R13 2 1
  SETTABLEKS R13 R12 K27 ["PaddingBottom"]
  CALL R10 2 -1
  SETLIST R7 R8 -1 [1]
  DUPTABLE R8 K34 [{"FilterSize", "FilterIconSize"}]
  GETIMPORT R9 K12 [UDim2.fromOffset]
  LOADN R10 80
  LOADN R11 32
  CALL R9 2 1
  SETTABLEKS R9 R8 K32 ["FilterSize"]
  SETTABLEKS R3 R8 K33 ["FilterIconSize"]
  CALL R4 4 -1
  RETURN R4 -1
