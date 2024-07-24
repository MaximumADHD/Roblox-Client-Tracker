MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ControlsEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".Widget-Button"]
  DUPTABLE R5 K14 [{"BorderSizePixel", "BorderMode", "Size"}]
  LOADN R6 3
  SETTABLEKS R6 R5 K11 ["BorderSizePixel"]
  GETIMPORT R6 K17 [Enum.BorderMode.Outline]
  SETTABLEKS R6 R5 K12 ["BorderMode"]
  GETIMPORT R6 K20 [UDim2.new]
  LOADN R7 0
  LOADN R8 36
  LOADN R9 0
  LOADN R10 36
  CALL R6 4 1
  SETTABLEKS R6 R5 K13 ["Size"]
  NEWTABLE R6 0 3
  MOVE R7 R2
  LOADK R8 K21 ["::UICorner"]
  DUPTABLE R9 K23 [{"CornerRadius"}]
  GETIMPORT R10 K25 [UDim.new]
  LOADN R11 1
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K22 ["CornerRadius"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K26 [":hover"]
  DUPTABLE R10 K28 [{"BackgroundColor3"}]
  LOADK R11 K29 ["$BackgroundHover"]
  SETTABLEKS R11 R10 K27 ["BackgroundColor3"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K30 [".Active "]
  DUPTABLE R11 K28 [{"BackgroundColor3"}]
  LOADK R12 K31 ["$Red60"]
  SETTABLEKS R12 R11 K27 ["BackgroundColor3"]
  CALL R9 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
