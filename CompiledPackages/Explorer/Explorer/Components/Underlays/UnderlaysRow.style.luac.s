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
  LOADK R4 K10 [".Explorer-UnderlaysRow"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 4
  MOVE R7 R2
  LOADK R8 K11 [">> .Explorer-UnderlaysRow-Corners"]
  DUPTABLE R9 K13 [{"Size"}]
  GETIMPORT R10 K16 [UDim2.fromScale]
  LOADN R11 1
  LOADN R12 1
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["Size"]
  NEWTABLE R10 0 4
  MOVE R11 R2
  LOADK R12 K17 ["::UICorner"]
  DUPTABLE R13 K19 [{"CornerRadius"}]
  GETIMPORT R14 K22 [UDim.new]
  LOADN R15 0
  LOADN R16 6
  CALL R14 2 1
  SETTABLEKS R14 R13 K18 ["CornerRadius"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K23 [".Explorer-SelectionSegment-Top"]
  DUPTABLE R14 K13 [{"Size"}]
  GETIMPORT R15 K16 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 2
  CALL R15 2 1
  SETTABLEKS R15 R14 K12 ["Size"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K24 [".Explorer-SelectionSegment-Middle"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K17 ["::UICorner"]
  DUPTABLE R19 K19 [{"CornerRadius"}]
  GETIMPORT R20 K22 [UDim.new]
  LOADN R21 0
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K18 ["CornerRadius"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K25 [".Explorer-SelectionSegment-Bottom"]
  DUPTABLE R16 K28 [{"AnchorPoint", "Position", "Size"}]
  GETIMPORT R17 K30 [Vector2.new]
  LOADN R18 0
  LOADN R19 1
  CALL R17 2 1
  SETTABLEKS R17 R16 K26 ["AnchorPoint"]
  GETIMPORT R17 K16 [UDim2.fromScale]
  LOADN R18 0
  LOADN R19 1
  CALL R17 2 1
  SETTABLEKS R17 R16 K27 ["Position"]
  GETIMPORT R17 K16 [UDim2.fromScale]
  LOADN R18 1
  LOADN R19 2
  CALL R17 2 1
  SETTABLEKS R17 R16 K12 ["Size"]
  CALL R14 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K31 [">> .Explorer-UnderlaysRow-Background"]
  DUPTABLE R10 K33 [{"BackgroundTransparency"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K32 ["BackgroundTransparency"]
  NEWTABLE R11 0 3
  MOVE R12 R2
  LOADK R13 K34 [".Explorer-HoveredKind-Hovered"]
  DUPTABLE R14 K36 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R15 K37 ["$RDLSemanticColorStatesHover"]
  SETTABLEKS R15 R14 K35 ["BackgroundColor3"]
  LOADK R15 K38 ["$RDLSemanticColorStatesHoverTransparency"]
  SETTABLEKS R15 R14 K32 ["BackgroundTransparency"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K39 [".Explorer-SelectionKind-Selected"]
  DUPTABLE R15 K36 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R16 K40 ["$ExplorerSelected"]
  SETTABLEKS R16 R15 K35 ["BackgroundColor3"]
  LOADN R16 0
  SETTABLEKS R16 R15 K32 ["BackgroundTransparency"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K41 [".Explorer-SelectionKind-ParentSelected"]
  DUPTABLE R16 K36 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R17 K40 ["$ExplorerSelected"]
  SETTABLEKS R17 R16 K35 ["BackgroundColor3"]
  LOADK R17 K42 [0.8]
  SETTABLEKS R17 R16 K32 ["BackgroundTransparency"]
  CALL R14 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K43 [">> .Explorer-UnderlaysRow-BackgroundOverlay"]
  DUPTABLE R11 K33 [{"BackgroundTransparency"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K32 ["BackgroundTransparency"]
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K44 [".Explorer-SelectionKind-ParentSelected .Explorer-HoveredKind-Hovered"]
  DUPTABLE R15 K36 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R16 K37 ["$RDLSemanticColorStatesHover"]
  SETTABLEKS R16 R15 K35 ["BackgroundColor3"]
  LOADK R16 K45 [0.94]
  SETTABLEKS R16 R15 K32 ["BackgroundTransparency"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K46 [">> .Explorer-UnderlaysRow-Border"]
  DUPTABLE R12 K47 [{"AnchorPoint", "BackgroundTransparency", "Position", "Size"}]
  GETIMPORT R13 K30 [Vector2.new]
  LOADK R14 K48 [0.5]
  LOADK R15 K48 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K26 ["AnchorPoint"]
  LOADN R13 1
  SETTABLEKS R13 R12 K32 ["BackgroundTransparency"]
  GETIMPORT R13 K16 [UDim2.fromScale]
  LOADK R14 K48 [0.5]
  LOADK R15 K48 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K27 ["Position"]
  GETIMPORT R13 K49 [UDim2.new]
  LOADN R14 1
  LOADN R15 251
  LOADN R16 1
  LOADN R17 251
  CALL R13 4 1
  SETTABLEKS R13 R12 K12 ["Size"]
  NEWTABLE R13 0 3
  MOVE R14 R2
  LOADK R15 K17 ["::UICorner"]
  DUPTABLE R16 K19 [{"CornerRadius"}]
  GETIMPORT R17 K22 [UDim.new]
  LOADN R18 0
  LOADN R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K18 ["CornerRadius"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K50 [".Explorer-HoveredKind-HoveredWithin ::UIStroke"]
  DUPTABLE R17 K54 [{"Color", "Transparency", "Thickness"}]
  LOADK R18 K37 ["$RDLSemanticColorStatesHover"]
  SETTABLEKS R18 R17 K51 ["Color"]
  LOADK R18 K38 ["$RDLSemanticColorStatesHoverTransparency"]
  SETTABLEKS R18 R17 K52 ["Transparency"]
  LOADK R18 K55 [2.5]
  SETTABLEKS R18 R17 K53 ["Thickness"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K56 [".Explorer-SelectedWithin ::UIStroke"]
  DUPTABLE R18 K54 [{"Color", "Transparency", "Thickness"}]
  LOADK R19 K57 ["$RDLSemanticColorActionPrimaryBrandFill"]
  SETTABLEKS R19 R18 K51 ["Color"]
  LOADK R19 K58 [0.84]
  SETTABLEKS R19 R18 K52 ["Transparency"]
  LOADK R19 K55 [2.5]
  SETTABLEKS R19 R18 K53 ["Thickness"]
  CALL R16 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
