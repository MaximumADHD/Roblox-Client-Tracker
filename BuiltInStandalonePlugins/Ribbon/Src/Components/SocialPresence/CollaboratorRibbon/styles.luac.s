MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".Component-CollaboratorRibbon"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 5
  MOVE R7 R2
  LOADK R8 K11 ["> #CollaboratorContainer"]
  DUPTABLE R9 K13 [{"LayoutOrder"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K12 ["LayoutOrder"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K14 ["> #CollaboratorButton"]
  DUPTABLE R10 K13 [{"LayoutOrder"}]
  LOADN R11 2
  SETTABLEKS R11 R10 K12 ["LayoutOrder"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K15 [">> .RibbonElement"]
  DUPTABLE R11 K17 [{"Size"}]
  LOADK R12 K18 ["$AvatarXS"]
  SETTABLEKS R12 R11 K16 ["Size"]
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K19 ["::UICorner"]
  DUPTABLE R15 K21 [{"CornerRadius"}]
  LOADK R16 K22 ["$GlobalRadiusCircle"]
  SETTABLEKS R16 R15 K20 ["CornerRadius"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K23 [">> .Component-OverflowBubble"]
  DUPTABLE R12 K27 [{"BackgroundTransparency", "BackgroundColor3", "LayoutOrder", "ZIndex"}]
  LOADK R13 K28 ["$BackgroundNonTransparent"]
  SETTABLEKS R13 R12 K24 ["BackgroundTransparency"]
  LOADK R13 K29 ["$Gray70"]
  SETTABLEKS R13 R12 K25 ["BackgroundColor3"]
  LOADN R13 4
  SETTABLEKS R13 R12 K12 ["LayoutOrder"]
  LOADN R13 4
  SETTABLEKS R13 R12 K26 ["ZIndex"]
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K30 ["> TextLabel"]
  DUPTABLE R16 K34 [{"TextSize", "TextColor3", "Font", "ZIndex"}]
  LOADK R17 K35 ["$FontSize75"]
  SETTABLEKS R17 R16 K31 ["TextSize"]
  LOADK R17 K36 ["$SemanticColorContentStaticLight"]
  SETTABLEKS R17 R16 K32 ["TextColor3"]
  GETIMPORT R17 K39 [Enum.Font.SourceSansBold]
  SETTABLEKS R17 R16 K33 ["Font"]
  LOADN R17 5
  SETTABLEKS R17 R16 K26 ["ZIndex"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K40 [">> .ThumbnailOverlap"]
  DUPTABLE R13 K17 [{"Size"}]
  GETIMPORT R14 K43 [UDim2.fromOffset]
  LOADN R15 20
  LOADN R16 24
  CALL R14 2 1
  SETTABLEKS R14 R13 K16 ["Size"]
  CALL R11 2 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
