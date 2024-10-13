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
  DUPTABLE R5 K13 [{"BackgroundTransparency", "Size"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K11 ["BackgroundTransparency"]
  LOADK R6 K14 ["$HeaderButtonSize"]
  SETTABLEKS R6 R5 K12 ["Size"]
  NEWTABLE R6 0 3
  MOVE R7 R2
  LOADK R8 K15 [":hover"]
  DUPTABLE R9 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R10 K18 ["$ActionHover"]
  SETTABLEKS R10 R9 K16 ["BackgroundColor3"]
  LOADN R10 0
  SETTABLEKS R10 R9 K11 ["BackgroundTransparency"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K19 [".Disabled"]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 2
  MOVE R12 R2
  LOADK R13 K15 [":hover"]
  DUPTABLE R14 K20 [{"BackgroundTransparency"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K11 ["BackgroundTransparency"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K21 ["> ImageLabel"]
  DUPTABLE R15 K23 [{"ImageTransparency"}]
  LOADK R16 K24 ["$IconDisabled"]
  SETTABLEKS R16 R15 K22 ["ImageTransparency"]
  CALL R13 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K25 [".Enabled > ImageLabel"]
  DUPTABLE R11 K27 [{"ImageColor3"}]
  LOADK R12 K28 ["$ActionSelected"]
  SETTABLEKS R12 R11 K26 ["ImageColor3"]
  CALL R9 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
