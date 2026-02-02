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
  GETTABLEKS R5 R6 K13 ["getFFlagExplorerFixBlurryTextHopefully"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["Flags"]
  GETTABLEKS R6 R7 K14 ["getFFlagExplorerUseBuilderSans"]
  CALL R5 1 1
  GETTABLEKS R8 R1 K15 ["Style"]
  GETTABLEKS R7 R8 K16 ["Themes"]
  GETTABLEKS R6 R7 K17 ["FoundationDark"]
  MOVE R7 R6
  LOADN R8 1
  CALL R7 1 1
  NEWTABLE R8 0 3
  MOVE R9 R2
  LOADK R10 K18 [".Component-useTooltip"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 7
  MOVE R13 R2
  LOADK R14 K19 [".Role-Tooltip"]
  DUPTABLE R15 K24 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  LOADK R16 K25 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R16 R15 K20 ["BackgroundColor3"]
  LOADK R16 K26 ["$SemanticColorDivider"]
  SETTABLEKS R16 R15 K21 ["BorderColor3"]
  GETIMPORT R16 K29 [Enum.BorderMode.Inset]
  SETTABLEKS R16 R15 K22 ["BorderMode"]
  LOADN R16 2
  SETTABLEKS R16 R15 K23 ["BorderSizePixel"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K30 [">> .Role-Surface"]
  DUPTABLE R16 K32 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K31 ["BackgroundTransparency"]
  LOADN R17 0
  SETTABLEKS R17 R16 K23 ["BorderSizePixel"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K33 [">> .Text-Label"]
  DUPTABLE R17 K37 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  MOVE R19 R5
  CALL R19 0 1
  JUMPIFNOT R19 [+7]
  GETTABLEKS R20 R7 K38 ["Typography"]
  GETTABLEKS R19 R20 K39 ["BodySmall"]
  GETTABLEKS R18 R19 K34 ["Font"]
  JUMP [+2]
  GETIMPORT R18 K41 [Enum.Font.SourceSans]
  SETTABLEKS R18 R17 K34 ["Font"]
  LOADK R18 K42 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R18 R17 K35 ["TextColor3"]
  MOVE R19 R5
  CALL R19 0 1
  JUMPIFNOT R19 [+11]
  GETTABLEKS R21 R7 K38 ["Typography"]
  GETTABLEKS R20 R21 K39 ["BodySmall"]
  GETTABLEKS R19 R20 K43 ["FontSize"]
  FASTCALL1 MATH_ROUND R19 [+2]
  GETIMPORT R18 K46 [math.round]
  CALL R18 1 1
  JUMP [+6]
  MOVE R19 R4
  CALL R19 0 1
  JUMPIFNOT R19 [+2]
  LOADN R18 17
  JUMP [+1]
  LOADK R18 K47 [17.598]
  SETTABLEKS R18 R17 K36 ["TextSize"]
  LOADN R18 0
  SETTABLEKS R18 R17 K23 ["BorderSizePixel"]
  LOADN R18 1
  SETTABLEKS R18 R17 K31 ["BackgroundTransparency"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K48 [">> .Text-Title"]
  DUPTABLE R18 K49 [{"Font", "TextColor3", "TextSize", "BackgroundTransparency"}]
  MOVE R20 R5
  CALL R20 0 1
  JUMPIFNOT R20 [+7]
  GETTABLEKS R21 R7 K38 ["Typography"]
  GETTABLEKS R20 R21 K50 ["TitleSmall"]
  GETTABLEKS R19 R20 K34 ["Font"]
  JUMP [+2]
  GETIMPORT R19 K52 [Enum.Font.SourceSansBold]
  SETTABLEKS R19 R18 K34 ["Font"]
  LOADK R19 K42 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R19 R18 K35 ["TextColor3"]
  MOVE R20 R5
  CALL R20 0 1
  JUMPIFNOT R20 [+11]
  GETTABLEKS R22 R7 K38 ["Typography"]
  GETTABLEKS R21 R22 K50 ["TitleSmall"]
  GETTABLEKS R20 R21 K43 ["FontSize"]
  FASTCALL1 MATH_ROUND R20 [+2]
  GETIMPORT R19 K46 [math.round]
  CALL R19 1 1
  JUMP [+6]
  MOVE R20 R4
  CALL R20 0 1
  JUMPIFNOT R20 [+2]
  LOADN R19 17
  JUMP [+1]
  LOADK R19 K47 [17.598]
  SETTABLEKS R19 R18 K36 ["TextSize"]
  LOADN R19 1
  SETTABLEKS R19 R18 K31 ["BackgroundTransparency"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K53 [">> .TooltipTextBounds"]
  DUPTABLE R19 K56 [{"TextWrapped", "TextXAlignment"}]
  LOADB R20 1
  SETTABLEKS R20 R19 K54 ["TextWrapped"]
  GETIMPORT R20 K58 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K55 ["TextXAlignment"]
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K59 ["::UISizeConstraint"]
  DUPTABLE R23 K61 [{"MaxSize"}]
  GETIMPORT R24 K64 [Vector2.new]
  LOADN R25 144
  LOADK R26 K65 [∞]
  CALL R24 2 1
  SETTABLEKS R24 R23 K60 ["MaxSize"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K66 [">> .X-PadTooltip ::UIPadding"]
  DUPTABLE R20 K71 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R21 K73 [UDim.new]
  LOADN R22 0
  LOADN R23 6
  CALL R21 2 1
  SETTABLEKS R21 R20 K67 ["PaddingLeft"]
  GETIMPORT R21 K73 [UDim.new]
  LOADN R22 0
  LOADN R23 6
  CALL R21 2 1
  SETTABLEKS R21 R20 K68 ["PaddingRight"]
  GETIMPORT R21 K73 [UDim.new]
  LOADN R22 0
  LOADN R23 4
  CALL R21 2 1
  SETTABLEKS R21 R20 K69 ["PaddingTop"]
  GETIMPORT R21 K73 [UDim.new]
  LOADN R22 0
  LOADN R23 4
  CALL R21 2 1
  SETTABLEKS R21 R20 K70 ["PaddingBottom"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K74 [">> .X-RowSpace50"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K75 ["::UIListLayout"]
  DUPTABLE R25 K79 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R26 K81 [Enum.FillDirection.Horizontal]
  SETTABLEKS R26 R25 K76 ["FillDirection"]
  GETIMPORT R26 K73 [UDim.new]
  LOADN R27 0
  LOADN R28 4
  CALL R26 2 1
  SETTABLEKS R26 R25 K77 ["Padding"]
  GETIMPORT R26 K83 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R26 R25 K78 ["SortOrder"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K66 [">> .X-PadTooltip ::UIPadding"]
  DUPTABLE R12 K71 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R13 K73 [UDim.new]
  LOADN R14 0
  LOADN R15 6
  CALL R13 2 1
  SETTABLEKS R13 R12 K67 ["PaddingLeft"]
  GETIMPORT R13 K73 [UDim.new]
  LOADN R14 0
  LOADN R15 6
  CALL R13 2 1
  SETTABLEKS R13 R12 K68 ["PaddingRight"]
  GETIMPORT R13 K73 [UDim.new]
  LOADN R14 0
  LOADN R15 4
  CALL R13 2 1
  SETTABLEKS R13 R12 K69 ["PaddingTop"]
  GETIMPORT R13 K73 [UDim.new]
  LOADN R14 0
  LOADN R15 4
  CALL R13 2 1
  SETTABLEKS R13 R12 K70 ["PaddingBottom"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K74 [">> .X-RowSpace50"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K75 ["::UIListLayout"]
  DUPTABLE R17 K79 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R18 K81 [Enum.FillDirection.Horizontal]
  SETTABLEKS R18 R17 K76 ["FillDirection"]
  GETIMPORT R18 K73 [UDim.new]
  LOADN R19 0
  LOADN R20 4
  CALL R18 2 1
  SETTABLEKS R18 R17 K77 ["Padding"]
  GETIMPORT R18 K83 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K78 ["SortOrder"]
  CALL R15 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R8 R9 -1 [1]
  NEWTABLE R9 0 0
  MOVE R10 R3
  LOADK R11 K2 ["ExplorerPlugin"]
  MOVE R12 R8
  MOVE R13 R9
  CALL R10 3 -1
  RETURN R10 -1
