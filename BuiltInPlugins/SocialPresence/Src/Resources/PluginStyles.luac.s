MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["SocialPresence"]
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
  NEWTABLE R4 0 2
  MOVE R5 R2
  LOADK R6 K11 [".RibbonElement"]
  DUPTABLE R7 K14 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R8 K17 [UDim2.new]
  LOADN R9 0
  LOADN R10 24
  LOADN R11 0
  LOADN R12 24
  CALL R8 4 1
  SETTABLEKS R8 R7 K12 ["Size"]
  LOADN R8 1
  SETTABLEKS R8 R7 K13 ["BackgroundTransparency"]
  NEWTABLE R8 0 1
  MOVE R9 R2
  LOADK R10 K18 ["::UICorner"]
  DUPTABLE R11 K20 [{"CornerRadius"}]
  GETIMPORT R12 K22 [UDim.new]
  LOADK R13 K23 [0.5]
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K19 ["CornerRadius"]
  CALL R9 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 1
  MOVE R6 R2
  LOADK R7 K24 [".Button"]
  DUPTABLE R8 K27 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel"}]
  LOADB R9 0
  SETTABLEKS R9 R8 K25 ["AutoButtonColor"]
  LOADN R9 1
  SETTABLEKS R9 R8 K13 ["BackgroundTransparency"]
  LOADN R9 0
  SETTABLEKS R9 R8 K26 ["BorderSizePixel"]
  NEWTABLE R9 0 2
  MOVE R10 R2
  LOADK R11 K28 [":hover"]
  DUPTABLE R12 K30 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R13 K31 ["$BackgroundPaper"]
  SETTABLEKS R13 R12 K29 ["BackgroundColor3"]
  LOADN R13 0
  SETTABLEKS R13 R12 K13 ["BackgroundTransparency"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K32 [":pressed"]
  DUPTABLE R13 K30 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R14 K33 ["$ActionActivated"]
  SETTABLEKS R14 R13 K29 ["BackgroundColor3"]
  LOADN R14 0
  SETTABLEKS R14 R13 K13 ["BackgroundTransparency"]
  CALL R11 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 -1
  SETLIST R4 R5 -1 [1]
  NEWTABLE R5 0 0
  MOVE R6 R3
  LOADK R7 K2 ["SocialPresence"]
  MOVE R8 R4
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
