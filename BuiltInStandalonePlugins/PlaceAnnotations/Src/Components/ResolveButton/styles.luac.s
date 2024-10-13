MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleRule"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K9 ["Bin"]
  GETTABLEKS R5 R6 K10 ["Common"]
  GETTABLEKS R4 R5 K11 ["defineLuaFlags"]
  CALL R3 1 1
  MOVE R4 R2
  LOADK R5 K12 [".Component-ResolveButton"]
  DUPTABLE R6 K19 [{"Text", "Size", "Position", "AnchorPoint", "BackgroundColor3", "BackgroundTransparency"}]
  LOADK R7 K20 [""]
  SETTABLEKS R7 R6 K13 ["Text"]
  GETIMPORT R7 K23 [UDim2.fromOffset]
  LOADN R8 24
  LOADN R9 24
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["Size"]
  GETIMPORT R7 K25 [UDim2.fromScale]
  LOADN R8 1
  LOADK R9 K26 [0.5]
  CALL R7 2 1
  SETTABLEKS R7 R6 K15 ["Position"]
  GETIMPORT R7 K29 [Vector2.new]
  LOADN R8 1
  LOADK R9 K26 [0.5]
  CALL R7 2 1
  SETTABLEKS R7 R6 K16 ["AnchorPoint"]
  GETTABLEKS R8 R3 K30 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R8 [+2]
  LOADK R7 K31 ["$SemanticColorActionSecondaryFill"]
  JUMP [+1]
  LOADK R7 K32 ["$ResolveIconBase"]
  SETTABLEKS R7 R6 K17 ["BackgroundColor3"]
  GETTABLEKS R8 R3 K30 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R8 [+2]
  LOADK R7 K33 ["$SemanticColorActionSecondaryFillTransparency"]
  JUMP [+1]
  LOADK R7 K34 [0.3]
  SETTABLEKS R7 R6 K18 ["BackgroundTransparency"]
  NEWTABLE R7 0 4
  MOVE R8 R2
  LOADK R9 K35 [":hover"]
  DUPTABLE R10 K36 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETTABLEKS R12 R3 K30 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R12 [+2]
  LOADNIL R11
  JUMP [+1]
  LOADK R11 K37 ["$ResolveIconHovered"]
  SETTABLEKS R11 R10 K17 ["BackgroundColor3"]
  GETTABLEKS R12 R3 K30 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R12 [+2]
  LOADK R11 K38 ["$SemanticColorActionSecondaryFillHoverTransparency"]
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K18 ["BackgroundTransparency"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K39 [":pressed"]
  DUPTABLE R11 K36 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETTABLEKS R13 R3 K30 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R13 [+2]
  LOADNIL R12
  JUMP [+1]
  LOADK R12 K40 ["$ResolveIconSelected"]
  SETTABLEKS R12 R11 K17 ["BackgroundColor3"]
  GETTABLEKS R13 R3 K30 ["fflagAnnotationsModernColors"]
  JUMPIFNOT R13 [+2]
  LOADK R12 K41 ["$SemanticColorActionSecondaryFillPressTransparency"]
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K18 ["BackgroundTransparency"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K42 ["::UICorner"]
  DUPTABLE R12 K44 [{"CornerRadius"}]
  GETIMPORT R13 K46 [UDim.new]
  LOADN R14 1
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K43 ["CornerRadius"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K47 ["> ImageLabel"]
  DUPTABLE R13 K49 [{"AnchorPoint", "Position", "Image", "Size", "BackgroundTransparency"}]
  GETIMPORT R14 K29 [Vector2.new]
  LOADK R15 K26 [0.5]
  LOADK R16 K26 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K16 ["AnchorPoint"]
  GETIMPORT R14 K25 [UDim2.fromScale]
  LOADK R15 K26 [0.5]
  LOADK R16 K26 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K15 ["Position"]
  LOADK R14 K50 ["$ResolveIcon"]
  SETTABLEKS R14 R13 K48 ["Image"]
  GETIMPORT R14 K23 [UDim2.fromOffset]
  LOADN R15 14
  LOADN R16 14
  CALL R14 2 1
  SETTABLEKS R14 R13 K14 ["Size"]
  LOADN R14 1
  SETTABLEKS R14 R13 K18 ["BackgroundTransparency"]
  CALL R11 2 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
