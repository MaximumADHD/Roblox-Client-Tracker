MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CancellableDialog"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".Component-TextInfo"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 5
  MOVE R7 R2
  LOADK R8 K11 ["::UIListLayout"]
  DUPTABLE R9 K13 [{"Padding"}]
  GETIMPORT R10 K16 [UDim.new]
  LOADN R11 0
  LOADN R12 8
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["Padding"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K17 [">> .SubtitleText"]
  DUPTABLE R10 K19 [{"TextColor3"}]
  LOADK R11 K20 ["$TextSecondary"]
  SETTABLEKS R11 R10 K18 ["TextColor3"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K21 [">> .LoadingIconContainer"]
  DUPTABLE R11 K23 [{"Size"}]
  LOADK R12 K24 ["$IconSize"]
  SETTABLEKS R12 R11 K22 ["Size"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K25 [">> .LoadingIcon"]
  DUPTABLE R12 K30 [{"Size", "Image", "BackgroundTransparency", "AnchorPoint", "Position"}]
  LOADK R13 K24 ["$IconSize"]
  SETTABLEKS R13 R12 K22 ["Size"]
  LOADK R13 K31 ["$LoadingSpinnerImage"]
  SETTABLEKS R13 R12 K26 ["Image"]
  LOADN R13 1
  SETTABLEKS R13 R12 K27 ["BackgroundTransparency"]
  GETIMPORT R13 K33 [Vector2.new]
  LOADK R14 K34 [0.5]
  LOADK R15 K34 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K28 ["AnchorPoint"]
  GETIMPORT R13 K36 [UDim2.new]
  LOADK R14 K34 [0.5]
  LOADN R15 0
  LOADK R16 K34 [0.5]
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K29 ["Position"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K37 [">> .StatusTextFrame"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K11 ["::UIListLayout"]
  DUPTABLE R17 K13 [{"Padding"}]
  GETIMPORT R18 K16 [UDim.new]
  LOADN R19 0
  LOADN R20 4
  CALL R18 2 1
  SETTABLEKS R18 R17 K12 ["Padding"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R6 R7 -1 [1]
  DUPTABLE R7 K40 [{"IconSize", "IconToContentPadding"}]
  GETIMPORT R8 K42 [UDim2.fromOffset]
  LOADN R9 16
  LOADN R10 16
  CALL R8 2 1
  SETTABLEKS R8 R7 K38 ["IconSize"]
  GETIMPORT R8 K16 [UDim.new]
  LOADN R9 0
  LOADN R10 8
  CALL R8 2 1
  SETTABLEKS R8 R7 K39 ["IconToContentPadding"]
  CALL R3 4 -1
  RETURN R3 -1
