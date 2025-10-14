MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".Explorer-RenameBox"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 3
  MOVE R7 R2
  LOADK R8 K11 [">> .Explorer-RenameBox-Background"]
  DUPTABLE R9 K14 [{"Position", "Size"}]
  GETIMPORT R10 K17 [UDim2.new]
  LOADN R11 0
  LOADN R12 252
  LOADN R13 0
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K12 ["Position"]
  GETIMPORT R10 K17 [UDim2.new]
  LOADN R11 1
  LOADN R12 4
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K13 ["Size"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K18 [">> .Explorer-RenameBox-BackgroundInner"]
  DUPTABLE R10 K20 [{"AnchorPoint", "Position", "Size"}]
  GETIMPORT R11 K22 [Vector2.new]
  LOADK R12 K23 [0.5]
  LOADK R13 K23 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K19 ["AnchorPoint"]
  GETIMPORT R11 K25 [UDim2.fromScale]
  LOADK R12 K23 [0.5]
  LOADK R13 K23 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K12 ["Position"]
  GETIMPORT R11 K17 [UDim2.new]
  LOADN R12 1
  LOADN R13 254
  LOADN R14 1
  LOADN R15 254
  CALL R11 4 1
  SETTABLEKS R11 R10 K13 ["Size"]
  NEWTABLE R11 0 2
  MOVE R12 R2
  LOADK R13 K26 ["::UICorner"]
  DUPTABLE R14 K28 [{"CornerRadius"}]
  GETIMPORT R15 K30 [UDim.new]
  LOADN R16 0
  LOADN R17 4
  CALL R15 2 1
  SETTABLEKS R15 R14 K27 ["CornerRadius"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K31 ["::UIStroke"]
  DUPTABLE R15 K34 [{"Color", "Thickness"}]
  LOADK R16 K35 ["$RDLSemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R16 R15 K32 ["Color"]
  LOADN R16 2
  SETTABLEKS R16 R15 K33 ["Thickness"]
  CALL R13 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K36 [">> TextBox"]
  DUPTABLE R11 K44 [{"BackgroundTransparency", "BorderSizePixel", "ClipsDescendants", "Font", "Size", "TextColor3", "TextSize", "TextXAlignment"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K37 ["BackgroundTransparency"]
  LOADN R12 0
  SETTABLEKS R12 R11 K38 ["BorderSizePixel"]
  LOADB R12 1
  SETTABLEKS R12 R11 K39 ["ClipsDescendants"]
  GETIMPORT R12 K47 [Enum.Font.SourceSans]
  SETTABLEKS R12 R11 K40 ["Font"]
  GETIMPORT R12 K25 [UDim2.fromScale]
  LOADN R13 1
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K13 ["Size"]
  LOADK R12 K48 ["$RDLSemanticColorContentMuted"]
  SETTABLEKS R12 R11 K41 ["TextColor3"]
  LOADK R12 K49 [17.598]
  SETTABLEKS R12 R11 K42 ["TextSize"]
  GETIMPORT R12 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K43 ["TextXAlignment"]
  CALL R9 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
