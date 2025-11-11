MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ExplorerPlugin"]
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
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K12 ["Flags"]
  GETTABLEKS R5 R6 K13 ["getFFlagDevFrameworkExplorerTooltips"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["Flags"]
  GETTABLEKS R6 R7 K14 ["getFFlagExplorerFixBlurryTextHopefully"]
  CALL R5 1 1
  MOVE R7 R4
  CALL R7 0 1
  JUMPIFNOT R7 [+177]
  NEWTABLE R6 0 1
  MOVE R7 R2
  LOADK R8 K15 [".Component-useTooltip"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 7
  MOVE R11 R2
  LOADK R12 K16 [".Role-Tooltip"]
  DUPTABLE R13 K21 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  LOADK R14 K22 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R14 R13 K17 ["BackgroundColor3"]
  LOADK R14 K23 ["$SemanticColorDivider"]
  SETTABLEKS R14 R13 K18 ["BorderColor3"]
  GETIMPORT R14 K26 [Enum.BorderMode.Inset]
  SETTABLEKS R14 R13 K19 ["BorderMode"]
  LOADN R14 2
  SETTABLEKS R14 R13 K20 ["BorderSizePixel"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K27 [">> .Role-Surface"]
  DUPTABLE R14 K29 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K28 ["BackgroundTransparency"]
  LOADN R15 0
  SETTABLEKS R15 R14 K20 ["BorderSizePixel"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K30 [">> .Text-Label"]
  DUPTABLE R15 K34 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  GETIMPORT R16 K36 [Enum.Font.SourceSans]
  SETTABLEKS R16 R15 K31 ["Font"]
  LOADK R16 K37 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R16 R15 K32 ["TextColor3"]
  MOVE R17 R5
  CALL R17 0 1
  JUMPIFNOT R17 [+2]
  LOADN R16 17
  JUMP [+1]
  LOADK R16 K38 [17.598]
  SETTABLEKS R16 R15 K33 ["TextSize"]
  LOADN R16 0
  SETTABLEKS R16 R15 K20 ["BorderSizePixel"]
  LOADN R16 1
  SETTABLEKS R16 R15 K28 ["BackgroundTransparency"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K39 [">> .Text-Title"]
  DUPTABLE R16 K34 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  GETIMPORT R17 K41 [Enum.Font.SourceSansBold]
  SETTABLEKS R17 R16 K31 ["Font"]
  LOADK R17 K37 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R17 R16 K32 ["TextColor3"]
  MOVE R18 R5
  CALL R18 0 1
  JUMPIFNOT R18 [+2]
  LOADN R17 17
  JUMP [+1]
  LOADK R17 K38 [17.598]
  SETTABLEKS R17 R16 K33 ["TextSize"]
  LOADN R17 0
  SETTABLEKS R17 R16 K20 ["BorderSizePixel"]
  LOADN R17 1
  SETTABLEKS R17 R16 K28 ["BackgroundTransparency"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K42 [">> .TooltipTextBounds"]
  DUPTABLE R17 K45 [{"TextWrapped", "TextXAlignment"}]
  LOADB R18 1
  SETTABLEKS R18 R17 K43 ["TextWrapped"]
  GETIMPORT R18 K47 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K44 ["TextXAlignment"]
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K48 ["::UISizeConstraint"]
  DUPTABLE R21 K50 [{"MaxSize"}]
  GETIMPORT R22 K53 [Vector2.new]
  LOADN R23 144
  LOADK R24 K54 [∞]
  CALL R22 2 1
  SETTABLEKS R22 R21 K49 ["MaxSize"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K55 [">> .X-PadTooltip ::UIPadding"]
  DUPTABLE R18 K60 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R19 K62 [UDim.new]
  LOADN R20 0
  LOADN R21 6
  CALL R19 2 1
  SETTABLEKS R19 R18 K56 ["PaddingLeft"]
  GETIMPORT R19 K62 [UDim.new]
  LOADN R20 0
  LOADN R21 6
  CALL R19 2 1
  SETTABLEKS R19 R18 K57 ["PaddingRight"]
  GETIMPORT R19 K62 [UDim.new]
  LOADN R20 0
  LOADN R21 4
  CALL R19 2 1
  SETTABLEKS R19 R18 K58 ["PaddingTop"]
  GETIMPORT R19 K62 [UDim.new]
  LOADN R20 0
  LOADN R21 4
  CALL R19 2 1
  SETTABLEKS R19 R18 K59 ["PaddingBottom"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K63 [">> .X-RowSpace50"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K64 ["::UIListLayout"]
  DUPTABLE R23 K68 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R24 K70 [Enum.FillDirection.Horizontal]
  SETTABLEKS R24 R23 K65 ["FillDirection"]
  GETIMPORT R24 K62 [UDim.new]
  LOADN R25 0
  LOADN R26 4
  CALL R24 2 1
  SETTABLEKS R24 R23 K66 ["Padding"]
  GETIMPORT R24 K72 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R24 R23 K67 ["SortOrder"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 -1
  SETLIST R6 R7 -1 [1]
  JUMP [+2]
  NEWTABLE R6 0 0
  NEWTABLE R7 0 0
  MOVE R8 R3
  LOADK R9 K2 ["ExplorerPlugin"]
  MOVE R10 R6
  MOVE R11 R7
  CALL R8 3 -1
  RETURN R8 -1
