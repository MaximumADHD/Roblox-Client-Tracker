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
  DUPTABLE R10 K20 [{"TextColor3", "Font"}]
  LOADK R11 K21 ["$TextPrimary"]
  SETTABLEKS R11 R10 K18 ["TextColor3"]
  GETIMPORT R11 K24 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R11 R10 K19 ["Font"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K25 [">> .SubtitleText"]
  DUPTABLE R11 K20 [{"TextColor3", "Font"}]
  LOADK R12 K26 ["$TextSecondary"]
  SETTABLEKS R12 R11 K18 ["TextColor3"]
  GETIMPORT R12 K24 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R12 R11 K19 ["Font"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K27 [">> .LoadingIconContainer"]
  DUPTABLE R12 K29 [{"Size"}]
  LOADK R13 K30 ["$IconSize"]
  SETTABLEKS R13 R12 K28 ["Size"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K31 [">> .LoadingIcon"]
  DUPTABLE R13 K36 [{"Size", "Image", "BackgroundTransparency", "AnchorPoint", "Position"}]
  LOADK R14 K30 ["$IconSize"]
  SETTABLEKS R14 R13 K28 ["Size"]
  LOADK R14 K37 ["$LoadingSpinnerImage"]
  SETTABLEKS R14 R13 K32 ["Image"]
  LOADN R14 1
  SETTABLEKS R14 R13 K33 ["BackgroundTransparency"]
  GETIMPORT R14 K39 [Vector2.new]
  LOADK R15 K40 [0.5]
  LOADK R16 K40 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K34 ["AnchorPoint"]
  GETIMPORT R14 K42 [UDim2.new]
  LOADK R15 K40 [0.5]
  LOADN R16 0
  LOADK R17 K40 [0.5]
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K35 ["Position"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K43 [">> .StatusTextFrame"]
  DUPTABLE R14 K29 [{"Size"}]
  GETIMPORT R15 K42 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 20
  CALL R15 4 1
  SETTABLEKS R15 R14 K28 ["Size"]
  NEWTABLE R15 0 2
  MOVE R16 R2
  LOADK R17 K11 ["::UIListLayout"]
  DUPTABLE R18 K45 [{"Padding", "VerticalAlignment"}]
  GETIMPORT R19 K16 [UDim.new]
  LOADN R20 0
  LOADN R21 4
  CALL R19 2 1
  SETTABLEKS R19 R18 K12 ["Padding"]
  GETIMPORT R19 K47 [Enum.VerticalAlignment.Center]
  SETTABLEKS R19 R18 K44 ["VerticalAlignment"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K48 [">> .StatusText"]
  DUPTABLE R19 K50 [{"TextColor3", "TextYAlignment"}]
  LOADK R20 K21 ["$TextPrimary"]
  SETTABLEKS R20 R19 K18 ["TextColor3"]
  GETIMPORT R20 K51 [Enum.TextYAlignment.Center]
  SETTABLEKS R20 R19 K49 ["TextYAlignment"]
  CALL R17 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  SETLIST R6 R7 -1 [1]
  DUPTABLE R7 K54 [{"IconSize", "IconToContentPadding"}]
  GETIMPORT R8 K56 [UDim2.fromOffset]
  LOADN R9 16
  LOADN R10 16
  CALL R8 2 1
  SETTABLEKS R8 R7 K52 ["IconSize"]
  GETIMPORT R8 K16 [UDim.new]
  LOADN R9 0
  LOADN R10 8
  CALL R8 2 1
  SETTABLEKS R8 R7 K53 ["IconToContentPadding"]
  CALL R3 4 -1
  RETURN R3 -1
