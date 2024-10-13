MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ModerationDialog"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".Component-DialogContainer"]
  DUPTABLE R5 K13 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R6 K14 ["$ForegroundMain"]
  SETTABLEKS R6 R5 K11 ["BackgroundColor3"]
  LOADN R6 0
  SETTABLEKS R6 R5 K12 ["BorderSizePixel"]
  NEWTABLE R6 0 3
  MOVE R7 R2
  LOADK R8 K15 ["> UIListLayout"]
  DUPTABLE R9 K17 [{"Padding"}]
  GETIMPORT R10 K20 [UDim.new]
  LOADN R11 0
  LOADN R12 16
  CALL R10 2 1
  SETTABLEKS R10 R9 K16 ["Padding"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K21 [">> Frame"]
  DUPTABLE R10 K23 [{"BackgroundTransparency"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K22 ["BackgroundTransparency"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K24 [">> .Separator"]
  DUPTABLE R11 K27 [{"Size", "BackgroundColor3", "AnchorPoint", "BorderSizePixel", "BackgroundTransparency"}]
  GETIMPORT R12 K29 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 1
  CALL R12 4 1
  SETTABLEKS R12 R11 K25 ["Size"]
  LOADK R12 K30 ["$Divider"]
  SETTABLEKS R12 R11 K11 ["BackgroundColor3"]
  GETIMPORT R12 K32 [Vector2.new]
  LOADK R13 K33 [0.5]
  LOADK R14 K33 [0.5]
  CALL R12 2 1
  SETTABLEKS R12 R11 K26 ["AnchorPoint"]
  LOADN R12 0
  SETTABLEKS R12 R11 K12 ["BorderSizePixel"]
  LOADN R12 0
  SETTABLEKS R12 R11 K22 ["BackgroundTransparency"]
  CALL R9 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
