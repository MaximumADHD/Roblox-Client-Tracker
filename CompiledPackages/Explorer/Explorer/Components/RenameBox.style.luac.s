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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Flags"]
  GETTABLEKS R4 R5 K10 ["getFFlagExplorerUseBuilderSans"]
  CALL R3 1 1
  GETTABLEKS R5 R1 K11 ["Styling"]
  GETTABLEKS R4 R5 K12 ["createStyleRule"]
  MOVE R5 R4
  LOADK R6 K13 [".Explorer-RenameBox"]
  NEWTABLE R7 0 0
  NEWTABLE R8 0 3
  MOVE R9 R4
  LOADK R10 K14 [">> .Explorer-RenameBox-Background"]
  DUPTABLE R11 K17 [{"Position", "Size"}]
  GETIMPORT R12 K20 [UDim2.new]
  LOADN R13 0
  LOADN R14 252
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K15 ["Position"]
  GETIMPORT R12 K20 [UDim2.new]
  LOADN R13 1
  LOADN R14 4
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K16 ["Size"]
  CALL R9 2 1
  MOVE R10 R4
  LOADK R11 K21 [">> .Explorer-RenameBox-BackgroundInner"]
  DUPTABLE R12 K23 [{"AnchorPoint", "Position", "Size"}]
  GETIMPORT R13 K25 [Vector2.new]
  LOADK R14 K26 [0.5]
  LOADK R15 K26 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K22 ["AnchorPoint"]
  GETIMPORT R13 K28 [UDim2.fromScale]
  LOADK R14 K26 [0.5]
  LOADK R15 K26 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K15 ["Position"]
  GETIMPORT R13 K20 [UDim2.new]
  LOADN R14 1
  LOADN R15 254
  LOADN R16 1
  LOADN R17 254
  CALL R13 4 1
  SETTABLEKS R13 R12 K16 ["Size"]
  NEWTABLE R13 0 2
  MOVE R14 R4
  LOADK R15 K29 ["::UICorner"]
  DUPTABLE R16 K31 [{"CornerRadius"}]
  GETIMPORT R17 K33 [UDim.new]
  LOADN R18 0
  LOADN R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K30 ["CornerRadius"]
  CALL R14 2 1
  MOVE R15 R4
  LOADK R16 K34 ["::UIStroke"]
  DUPTABLE R17 K37 [{"Color", "Thickness"}]
  LOADK R18 K38 ["$RDLSemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R18 R17 K35 ["Color"]
  LOADN R18 2
  SETTABLEKS R18 R17 K36 ["Thickness"]
  CALL R15 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R4
  LOADK R12 K39 [">> TextBox"]
  DUPTABLE R13 K47 [{"BackgroundTransparency", "BorderSizePixel", "ClipsDescendants", "Font", "Size", "TextColor3", "TextSize", "TextXAlignment"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K40 ["BackgroundTransparency"]
  LOADN R14 0
  SETTABLEKS R14 R13 K41 ["BorderSizePixel"]
  LOADB R14 1
  SETTABLEKS R14 R13 K42 ["ClipsDescendants"]
  MOVE R15 R3
  CALL R15 0 1
  JUMPIFNOT R15 [+2]
  LOADNIL R14
  JUMP [+2]
  GETIMPORT R14 K50 [Enum.Font.SourceSans]
  SETTABLEKS R14 R13 K43 ["Font"]
  GETIMPORT R14 K28 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K16 ["Size"]
  MOVE R15 R2
  CALL R15 0 1
  JUMPIFNOT R15 [+2]
  LOADNIL R14
  JUMP [+1]
  LOADK R14 K51 ["$RDLSemanticColorContentMuted"]
  SETTABLEKS R14 R13 K44 ["TextColor3"]
  MOVE R15 R2
  CALL R15 0 1
  JUMPIFNOT R15 [+2]
  LOADNIL R14
  JUMP [+1]
  LOADK R14 K52 [17.598]
  SETTABLEKS R14 R13 K45 ["TextSize"]
  GETIMPORT R14 K54 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K46 ["TextXAlignment"]
  CALL R11 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 -1
  RETURN R5 -1
