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
  NEWTABLE R6 0 6
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
  LOADK R9 K17 [">> .TitleText"]
  DUPTABLE R10 K19 [{"TextColor3"}]
  LOADK R11 K20 ["$TextPrimary"]
  SETTABLEKS R11 R10 K18 ["TextColor3"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K21 [">> .SubtitleText"]
  DUPTABLE R11 K19 [{"TextColor3"}]
  LOADK R12 K22 ["$TextSecondary"]
  SETTABLEKS R12 R11 K18 ["TextColor3"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K23 [">> .LoadingIconContainer"]
  DUPTABLE R12 K25 [{"Size"}]
  LOADK R13 K26 ["$IconSize"]
  SETTABLEKS R13 R12 K24 ["Size"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K27 [">> .LoadingIcon"]
  DUPTABLE R13 K32 [{"Size", "Image", "BackgroundTransparency", "AnchorPoint", "Position"}]
  LOADK R14 K26 ["$IconSize"]
  SETTABLEKS R14 R13 K24 ["Size"]
  LOADK R14 K33 ["$LoadingSpinnerImage"]
  SETTABLEKS R14 R13 K28 ["Image"]
  LOADN R14 1
  SETTABLEKS R14 R13 K29 ["BackgroundTransparency"]
  GETIMPORT R14 K35 [Vector2.new]
  LOADK R15 K36 [0.5]
  LOADK R16 K36 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K30 ["AnchorPoint"]
  GETIMPORT R14 K38 [UDim2.new]
  LOADK R15 K36 [0.5]
  LOADN R16 0
  LOADK R17 K36 [0.5]
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K31 ["Position"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K39 [">> .StatusTextFrame"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 2
  MOVE R16 R2
  LOADK R17 K11 ["::UIListLayout"]
  DUPTABLE R18 K13 [{"Padding"}]
  GETIMPORT R19 K16 [UDim.new]
  LOADN R20 0
  LOADN R21 4
  CALL R19 2 1
  SETTABLEKS R19 R18 K12 ["Padding"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K40 [">> .StatusText"]
  DUPTABLE R19 K19 [{"TextColor3"}]
  LOADK R20 K20 ["$TextPrimary"]
  SETTABLEKS R20 R19 K18 ["TextColor3"]
  CALL R17 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  SETLIST R6 R7 -1 [1]
  DUPTABLE R7 K43 [{"IconSize", "IconToContentPadding"}]
  GETIMPORT R8 K45 [UDim2.fromOffset]
  LOADN R9 16
  LOADN R10 16
  CALL R8 2 1
  SETTABLEKS R8 R7 K41 ["IconSize"]
  GETIMPORT R8 K16 [UDim.new]
  LOADN R9 0
  LOADN R10 8
  CALL R8 2 1
  SETTABLEKS R8 R7 K42 ["IconToContentPadding"]
  CALL R3 4 -1
  RETURN R3 -1
