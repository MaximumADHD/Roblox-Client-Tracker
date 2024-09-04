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
  LOADK R4 K10 [".MinimalButton"]
  DUPTABLE R5 K12 [{"BackgroundTransparency"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K11 ["BackgroundTransparency"]
  NEWTABLE R6 0 3
  MOVE R7 R2
  LOADK R8 K13 ["> Image"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K14 [":hover"]
  DUPTABLE R13 K16 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R14 K17 ["$ActionHover"]
  SETTABLEKS R14 R13 K15 ["BackgroundColor3"]
  LOADN R14 0
  SETTABLEKS R14 R13 K11 ["BackgroundTransparency"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K18 ["> Image .Disabled"]
  DUPTABLE R10 K20 [{"ImageColor3"}]
  LOADK R11 K21 ["$TextDisabled"]
  SETTABLEKS R11 R10 K19 ["ImageColor3"]
  NEWTABLE R11 0 1
  MOVE R12 R2
  LOADK R13 K14 [":hover"]
  DUPTABLE R14 K16 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R15 K17 ["$ActionHover"]
  SETTABLEKS R15 R14 K15 ["BackgroundColor3"]
  LOADN R15 0
  SETTABLEKS R15 R14 K11 ["BackgroundTransparency"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K22 ["> Image .Enabled"]
  DUPTABLE R11 K20 [{"ImageColor3"}]
  LOADK R12 K23 ["$ActionSelected"]
  SETTABLEKS R12 R11 K19 ["ImageColor3"]
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K14 [":hover"]
  DUPTABLE R15 K16 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R16 K17 ["$ActionHover"]
  SETTABLEKS R16 R15 K15 ["BackgroundColor3"]
  LOADN R16 0
  SETTABLEKS R16 R15 K11 ["BackgroundTransparency"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
