MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FindReplaceAll"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["defineFlags"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K11 ["Resources"]
  GETTABLEKS R4 R5 K12 ["StyleConstants"]
  CALL R3 1 1
  GETTABLEKS R5 R1 K13 ["Styling"]
  GETTABLEKS R4 R5 K14 ["createStyleRule"]
  MOVE R5 R4
  LOADK R6 K15 [".Component-useTooltip"]
  NEWTABLE R7 0 0
  NEWTABLE R8 0 7
  MOVE R9 R4
  LOADK R10 K16 [".Role-Tooltip"]
  DUPTABLE R11 K21 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  LOADK R12 K22 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R12 R11 K17 ["BackgroundColor3"]
  LOADK R12 K23 ["$SemanticColorDivider"]
  SETTABLEKS R12 R11 K18 ["BorderColor3"]
  GETIMPORT R12 K26 [Enum.BorderMode.Inset]
  SETTABLEKS R12 R11 K19 ["BorderMode"]
  LOADN R12 2
  SETTABLEKS R12 R11 K20 ["BorderSizePixel"]
  CALL R9 2 1
  MOVE R10 R4
  LOADK R11 K27 [">> .Role-Surface"]
  DUPTABLE R12 K29 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K28 ["BackgroundTransparency"]
  LOADN R13 0
  SETTABLEKS R13 R12 K20 ["BorderSizePixel"]
  CALL R10 2 1
  MOVE R11 R4
  LOADK R12 K30 [">> .Text-Label"]
  DUPTABLE R13 K34 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  GETTABLEKS R15 R2 K35 ["getFFlagFindReplaceAllUseBuilderFont"]
  CALL R15 0 1
  JUMPIFNOT R15 [+3]
  GETIMPORT R14 K37 [Enum.Font.SourceSans]
  JUMP [+2]
  GETTABLEKS R14 R3 K38 ["defaultFont"]
  SETTABLEKS R14 R13 K31 ["Font"]
  LOADK R14 K39 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R14 R13 K32 ["TextColor3"]
  GETTABLEKS R15 R2 K35 ["getFFlagFindReplaceAllUseBuilderFont"]
  CALL R15 0 1
  JUMPIFNOT R15 [+5]
  LOADN R15 12
  GETTABLEKS R16 R3 K40 ["defaultFontScale"]
  MUL R14 R15 R16
  JUMP [+1]
  LOADK R14 K41 [17.598]
  SETTABLEKS R14 R13 K33 ["TextSize"]
  LOADN R14 0
  SETTABLEKS R14 R13 K20 ["BorderSizePixel"]
  LOADN R14 1
  SETTABLEKS R14 R13 K28 ["BackgroundTransparency"]
  CALL R11 2 1
  MOVE R12 R4
  LOADK R13 K42 [">> .Text-Title"]
  DUPTABLE R14 K34 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  GETTABLEKS R16 R2 K35 ["getFFlagFindReplaceAllUseBuilderFont"]
  CALL R16 0 1
  JUMPIFNOT R16 [+3]
  GETIMPORT R15 K44 [Enum.Font.SourceSansBold]
  JUMP [+2]
  GETTABLEKS R15 R3 K45 ["defaultFontBold"]
  SETTABLEKS R15 R14 K31 ["Font"]
  LOADK R15 K39 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R15 R14 K32 ["TextColor3"]
  GETTABLEKS R16 R2 K35 ["getFFlagFindReplaceAllUseBuilderFont"]
  CALL R16 0 1
  JUMPIFNOT R16 [+5]
  LOADN R16 12
  GETTABLEKS R17 R3 K40 ["defaultFontScale"]
  MUL R15 R16 R17
  JUMP [+1]
  LOADK R15 K41 [17.598]
  SETTABLEKS R15 R14 K33 ["TextSize"]
  LOADN R15 0
  SETTABLEKS R15 R14 K20 ["BorderSizePixel"]
  LOADN R15 1
  SETTABLEKS R15 R14 K28 ["BackgroundTransparency"]
  CALL R12 2 1
  MOVE R13 R4
  LOADK R14 K46 [">> .TooltipTextBounds"]
  DUPTABLE R15 K49 [{"TextWrapped", "TextXAlignment"}]
  LOADB R16 1
  SETTABLEKS R16 R15 K47 ["TextWrapped"]
  GETIMPORT R16 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K48 ["TextXAlignment"]
  NEWTABLE R16 0 1
  MOVE R17 R4
  LOADK R18 K52 ["::UISizeConstraint"]
  DUPTABLE R19 K54 [{"MaxSize"}]
  GETIMPORT R20 K57 [Vector2.new]
  LOADN R21 144
  LOADK R22 K58 [∞]
  CALL R20 2 1
  SETTABLEKS R20 R19 K53 ["MaxSize"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R4
  LOADK R15 K59 [">> .X-PadTooltip ::UIPadding"]
  DUPTABLE R16 K64 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R17 K66 [UDim.new]
  LOADN R18 0
  LOADN R19 6
  CALL R17 2 1
  SETTABLEKS R17 R16 K60 ["PaddingLeft"]
  GETIMPORT R17 K66 [UDim.new]
  LOADN R18 0
  LOADN R19 6
  CALL R17 2 1
  SETTABLEKS R17 R16 K61 ["PaddingRight"]
  GETIMPORT R17 K66 [UDim.new]
  LOADN R18 0
  LOADN R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K62 ["PaddingTop"]
  GETIMPORT R17 K66 [UDim.new]
  LOADN R18 0
  LOADN R19 4
  CALL R17 2 1
  SETTABLEKS R17 R16 K63 ["PaddingBottom"]
  CALL R14 2 1
  MOVE R15 R4
  LOADK R16 K67 [">> .X-RowSpace50"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 1
  MOVE R19 R4
  LOADK R20 K68 ["::UIListLayout"]
  DUPTABLE R21 K72 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R22 K74 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K69 ["FillDirection"]
  GETIMPORT R22 K66 [UDim.new]
  LOADN R23 0
  LOADN R24 4
  CALL R22 2 1
  SETTABLEKS R22 R21 K70 ["Padding"]
  GETIMPORT R22 K76 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K71 ["SortOrder"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 -1
  RETURN R5 -1
