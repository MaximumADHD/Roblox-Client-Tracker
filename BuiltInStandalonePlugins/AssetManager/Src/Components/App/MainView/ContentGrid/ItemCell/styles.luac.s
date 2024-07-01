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
  MOVE R3 R2
  LOADK R4 K10 [".ItemCell"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 1
  MOVE R7 R2
  LOADK R8 K11 ["> .ThumbnailContainer"]
  DUPTABLE R9 K14 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R10 K15 ["$ForegroundContrast"]
  SETTABLEKS R10 R9 K12 ["BackgroundColor3"]
  LOADN R10 0
  SETTABLEKS R10 R9 K13 ["BackgroundTransparency"]
  NEWTABLE R10 0 3
  MOVE R11 R2
  LOADK R12 K16 [":hover"]
  DUPTABLE R13 K17 [{"BackgroundColor3"}]
  LOADK R14 K18 ["$ActionHover"]
  SETTABLEKS R14 R13 K12 ["BackgroundColor3"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K19 [".SelectedCell"]
  DUPTABLE R14 K17 [{"BackgroundColor3"}]
  LOADK R15 K20 ["$ActionSelected"]
  SETTABLEKS R15 R14 K12 ["BackgroundColor3"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K21 [".FocusedCell ::UIStroke"]
  DUPTABLE R15 K25 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R16 K28 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R16 R15 K22 ["ApplyStrokeMode"]
  LOADK R16 K29 ["$ActionFocusBorder"]
  SETTABLEKS R16 R15 K23 ["Color"]
  LOADN R16 1
  SETTABLEKS R16 R15 K24 ["Thickness"]
  CALL R13 2 -1
  SETLIST R10 R11 -1 [1]
  NEWTABLE R11 0 0
  CALL R7 4 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
