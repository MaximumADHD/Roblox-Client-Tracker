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
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Flags"]
  GETTABLEKS R3 R4 K9 ["getFFlagExplorerFixBlurryTextHopefully"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K10 ["Styling"]
  GETTABLEKS R3 R4 K11 ["createStyleRule"]
  MOVE R4 R3
  LOADK R5 K12 [".Explorer-RenameBox"]
  NEWTABLE R6 0 0
  NEWTABLE R7 0 3
  MOVE R8 R3
  LOADK R9 K13 [">> .Explorer-RenameBox-Background"]
  DUPTABLE R10 K16 [{"Position", "Size"}]
  GETIMPORT R11 K19 [UDim2.new]
  LOADN R12 0
  LOADN R13 252
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K14 ["Position"]
  GETIMPORT R11 K19 [UDim2.new]
  LOADN R12 1
  LOADN R13 4
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K15 ["Size"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K20 [">> .Explorer-RenameBox-BackgroundInner"]
  DUPTABLE R11 K22 [{"AnchorPoint", "Position", "Size"}]
  GETIMPORT R12 K24 [Vector2.new]
  LOADK R13 K25 [0.5]
  LOADK R14 K25 [0.5]
  CALL R12 2 1
  SETTABLEKS R12 R11 K21 ["AnchorPoint"]
  GETIMPORT R12 K27 [UDim2.fromScale]
  LOADK R13 K25 [0.5]
  LOADK R14 K25 [0.5]
  CALL R12 2 1
  SETTABLEKS R12 R11 K14 ["Position"]
  GETIMPORT R12 K19 [UDim2.new]
  LOADN R13 1
  LOADN R14 254
  LOADN R15 1
  LOADN R16 254
  CALL R12 4 1
  SETTABLEKS R12 R11 K15 ["Size"]
  NEWTABLE R12 0 2
  MOVE R13 R3
  LOADK R14 K28 ["::UICorner"]
  DUPTABLE R15 K30 [{"CornerRadius"}]
  GETIMPORT R16 K32 [UDim.new]
  LOADN R17 0
  LOADN R18 4
  CALL R16 2 1
  SETTABLEKS R16 R15 K29 ["CornerRadius"]
  CALL R13 2 1
  MOVE R14 R3
  LOADK R15 K33 ["::UIStroke"]
  DUPTABLE R16 K36 [{"Color", "Thickness"}]
  LOADK R17 K37 ["$RDLSemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R17 R16 K34 ["Color"]
  LOADN R17 2
  SETTABLEKS R17 R16 K35 ["Thickness"]
  CALL R14 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R3
  LOADK R11 K38 [">> TextBox"]
  DUPTABLE R12 K46 [{"BackgroundTransparency", "BorderSizePixel", "ClipsDescendants", "Font", "Size", "TextColor3", "TextSize", "TextXAlignment"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K39 ["BackgroundTransparency"]
  LOADN R13 0
  SETTABLEKS R13 R12 K40 ["BorderSizePixel"]
  LOADB R13 1
  SETTABLEKS R13 R12 K41 ["ClipsDescendants"]
  GETIMPORT R13 K49 [Enum.Font.SourceSans]
  SETTABLEKS R13 R12 K42 ["Font"]
  GETIMPORT R13 K27 [UDim2.fromScale]
  LOADN R14 1
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K15 ["Size"]
  MOVE R14 R2
  CALL R14 0 1
  JUMPIFNOT R14 [+2]
  LOADNIL R13
  JUMP [+1]
  LOADK R13 K50 ["$RDLSemanticColorContentMuted"]
  SETTABLEKS R13 R12 K43 ["TextColor3"]
  MOVE R14 R2
  CALL R14 0 1
  JUMPIFNOT R14 [+2]
  LOADNIL R13
  JUMP [+1]
  LOADK R13 K51 [17.598]
  SETTABLEKS R13 R12 K44 ["TextSize"]
  GETIMPORT R13 K53 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K45 ["TextXAlignment"]
  CALL R10 2 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
