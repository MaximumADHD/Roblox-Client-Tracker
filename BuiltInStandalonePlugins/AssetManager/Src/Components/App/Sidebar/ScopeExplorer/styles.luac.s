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
  LOADK R4 K10 [".Explorer"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 1
  MOVE R7 R2
  LOADK R8 K11 [">> .Element"]
  DUPTABLE R9 K13 [{"Size"}]
  GETIMPORT R10 K16 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  LOADN R14 24
  CALL R10 4 1
  SETTABLEKS R10 R9 K12 ["Size"]
  NEWTABLE R10 0 3
  MOVE R11 R2
  LOADK R12 K17 [":hover"]
  DUPTABLE R13 K20 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R14 K21 ["$ActionHover"]
  SETTABLEKS R14 R13 K18 ["BackgroundColor3"]
  LOADN R14 0
  SETTABLEKS R14 R13 K19 ["BackgroundTransparency"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K22 [".Selected"]
  DUPTABLE R14 K20 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R15 K23 ["$ActionSelected"]
  SETTABLEKS R15 R14 K18 ["BackgroundColor3"]
  LOADN R15 0
  SETTABLEKS R15 R14 K19 ["BackgroundTransparency"]
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K17 [":hover"]
  DUPTABLE R18 K24 [{"BackgroundColor3"}]
  LOADK R19 K21 ["$ActionHover"]
  SETTABLEKS R19 R18 K18 ["BackgroundColor3"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K25 ["> .ScopeIcon"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K26 ["::UICorner"]
  DUPTABLE R19 K28 [{"CornerRadius"}]
  GETIMPORT R20 K30 [UDim.new]
  LOADN R21 1
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K27 ["CornerRadius"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 -1
  SETLIST R6 R7 -1 [1]
  DUPTABLE R7 K32 [{"RowHeight"}]
  LOADN R8 24
  SETTABLEKS R8 R7 K31 ["RowHeight"]
  CALL R3 4 -1
  RETURN R3 -1
