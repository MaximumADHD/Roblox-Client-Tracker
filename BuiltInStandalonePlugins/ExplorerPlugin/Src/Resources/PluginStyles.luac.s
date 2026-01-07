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
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K12 ["Flags"]
  GETTABLEKS R7 R8 K15 ["getFFlagExplorerUseBuilderSans"]
  CALL R6 1 1
  GETTABLEKS R9 R1 K16 ["Style"]
  GETTABLEKS R8 R9 K17 ["Themes"]
  GETTABLEKS R7 R8 K18 ["FoundationDark"]
  MOVE R8 R7
  LOADN R9 1
  CALL R8 1 1
  MOVE R10 R4
  CALL R10 0 1
  JUMPIFNOT R10 [+222]
  NEWTABLE R9 0 1
  MOVE R10 R2
  LOADK R11 K19 [".Component-useTooltip"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 7
  MOVE R14 R2
  LOADK R15 K20 [".Role-Tooltip"]
  DUPTABLE R16 K25 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
  LOADK R17 K26 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R17 R16 K21 ["BackgroundColor3"]
  LOADK R17 K27 ["$SemanticColorDivider"]
  SETTABLEKS R17 R16 K22 ["BorderColor3"]
  GETIMPORT R17 K30 [Enum.BorderMode.Inset]
  SETTABLEKS R17 R16 K23 ["BorderMode"]
  LOADN R17 2
  SETTABLEKS R17 R16 K24 ["BorderSizePixel"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K31 [">> .Role-Surface"]
  DUPTABLE R17 K33 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K32 ["BackgroundTransparency"]
  LOADN R18 0
  SETTABLEKS R18 R17 K24 ["BorderSizePixel"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K34 [">> .Text-Label"]
  DUPTABLE R18 K38 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  MOVE R20 R6
  CALL R20 0 1
  JUMPIFNOT R20 [+7]
  GETTABLEKS R21 R8 K39 ["Typography"]
  GETTABLEKS R20 R21 K40 ["BodySmall"]
  GETTABLEKS R19 R20 K35 ["Font"]
  JUMP [+2]
  GETIMPORT R19 K42 [Enum.Font.SourceSans]
  SETTABLEKS R19 R18 K35 ["Font"]
  LOADK R19 K43 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R19 R18 K36 ["TextColor3"]
  MOVE R20 R6
  CALL R20 0 1
  JUMPIFNOT R20 [+11]
  GETTABLEKS R22 R8 K39 ["Typography"]
  GETTABLEKS R21 R22 K40 ["BodySmall"]
  GETTABLEKS R20 R21 K44 ["FontSize"]
  FASTCALL1 MATH_ROUND R20 [+2]
  GETIMPORT R19 K47 [math.round]
  CALL R19 1 1
  JUMP [+6]
  MOVE R20 R5
  CALL R20 0 1
  JUMPIFNOT R20 [+2]
  LOADN R19 17
  JUMP [+1]
  LOADK R19 K48 [17.598]
  SETTABLEKS R19 R18 K37 ["TextSize"]
  LOADN R19 0
  SETTABLEKS R19 R18 K24 ["BorderSizePixel"]
  LOADN R19 1
  SETTABLEKS R19 R18 K32 ["BackgroundTransparency"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K49 [">> .Text-Title"]
  DUPTABLE R19 K50 [{"Font", "TextColor3", "TextSize", "BackgroundTransparency"}]
  MOVE R21 R6
  CALL R21 0 1
  JUMPIFNOT R21 [+7]
  GETTABLEKS R22 R8 K39 ["Typography"]
  GETTABLEKS R21 R22 K51 ["TitleSmall"]
  GETTABLEKS R20 R21 K35 ["Font"]
  JUMP [+2]
  GETIMPORT R20 K53 [Enum.Font.SourceSansBold]
  SETTABLEKS R20 R19 K35 ["Font"]
  LOADK R20 K43 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R20 R19 K36 ["TextColor3"]
  MOVE R21 R6
  CALL R21 0 1
  JUMPIFNOT R21 [+11]
  GETTABLEKS R23 R8 K39 ["Typography"]
  GETTABLEKS R22 R23 K51 ["TitleSmall"]
  GETTABLEKS R21 R22 K44 ["FontSize"]
  FASTCALL1 MATH_ROUND R21 [+2]
  GETIMPORT R20 K47 [math.round]
  CALL R20 1 1
  JUMP [+6]
  MOVE R21 R5
  CALL R21 0 1
  JUMPIFNOT R21 [+2]
  LOADN R20 17
  JUMP [+1]
  LOADK R20 K48 [17.598]
  SETTABLEKS R20 R19 K37 ["TextSize"]
  LOADN R20 1
  SETTABLEKS R20 R19 K32 ["BackgroundTransparency"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K54 [">> .TooltipTextBounds"]
  DUPTABLE R20 K57 [{"TextWrapped", "TextXAlignment"}]
  LOADB R21 1
  SETTABLEKS R21 R20 K55 ["TextWrapped"]
  GETIMPORT R21 K59 [Enum.TextXAlignment.Left]
  SETTABLEKS R21 R20 K56 ["TextXAlignment"]
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K60 ["::UISizeConstraint"]
  DUPTABLE R24 K62 [{"MaxSize"}]
  GETIMPORT R25 K65 [Vector2.new]
  LOADN R26 144
  LOADK R27 K66 [∞]
  CALL R25 2 1
  SETTABLEKS R25 R24 K61 ["MaxSize"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K67 [">> .X-PadTooltip ::UIPadding"]
  DUPTABLE R21 K72 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R22 K74 [UDim.new]
  LOADN R23 0
  LOADN R24 6
  CALL R22 2 1
  SETTABLEKS R22 R21 K68 ["PaddingLeft"]
  GETIMPORT R22 K74 [UDim.new]
  LOADN R23 0
  LOADN R24 6
  CALL R22 2 1
  SETTABLEKS R22 R21 K69 ["PaddingRight"]
  GETIMPORT R22 K74 [UDim.new]
  LOADN R23 0
  LOADN R24 4
  CALL R22 2 1
  SETTABLEKS R22 R21 K70 ["PaddingTop"]
  GETIMPORT R22 K74 [UDim.new]
  LOADN R23 0
  LOADN R24 4
  CALL R22 2 1
  SETTABLEKS R22 R21 K71 ["PaddingBottom"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K75 [">> .X-RowSpace50"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K76 ["::UIListLayout"]
  DUPTABLE R26 K80 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R27 K82 [Enum.FillDirection.Horizontal]
  SETTABLEKS R27 R26 K77 ["FillDirection"]
  GETIMPORT R27 K74 [UDim.new]
  LOADN R28 0
  LOADN R29 4
  CALL R27 2 1
  SETTABLEKS R27 R26 K78 ["Padding"]
  GETIMPORT R27 K84 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K79 ["SortOrder"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R9 R10 -1 [1]
  JUMP [+2]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 0
  MOVE R11 R3
  LOADK R12 K2 ["ExplorerPlugin"]
  MOVE R13 R9
  MOVE R14 R10
  CALL R11 3 -1
  RETURN R11 -1
