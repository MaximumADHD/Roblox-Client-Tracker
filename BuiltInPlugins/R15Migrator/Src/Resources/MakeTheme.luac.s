PROTO_0:
  LOADNIL R1
  JUMPIFNOT R0 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["mock"]
  CALL R2 0 1
  MOVE R1 R2
  JUMP [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["new"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R4 3
  NAMECALL R2 R1 K2 ["extend"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["Style"]
  GETTABLEKS R4 R2 K8 ["Themes"]
  GETTABLEKS R3 R4 K9 ["StudioTheme"]
  GETTABLEKS R4 R2 K10 ["StyleKey"]
  GETTABLEKS R5 R2 K11 ["ComponentSymbols"]
  GETTABLEKS R6 R1 K12 ["Util"]
  GETTABLEKS R7 R6 K13 ["StyleModifier"]
  GETTABLEKS R8 R1 K14 ["UIData"]
  GETIMPORT R9 K4 [require]
  GETTABLEKS R11 R8 K15 ["TreeView"]
  GETTABLEKS R10 R11 K16 ["style"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R0 K5 ["Packages"]
  GETTABLEKS R11 R12 K17 ["Cryo"]
  CALL R10 1 1
  LOADK R13 K18 ["ProgressBar"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K20 ["PopUpFrame"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K21 ["TabInstructions"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K22 ["IconTab"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K23 ["MainTabsView"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K24 ["MainFooter"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K25 ["FinalizerPane"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K26 ["FinalizerPaneRow"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K27 ["CharacterConversionPane"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K28 ["CharacterConversionPaneFooter"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K29 ["CharacterConversionList"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K30 ["CharacterPreview"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K31 ["CharacterSplitView"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K32 ["CharacterInstanceTree"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K33 ["ExpandableCharacterListItem"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K34 ["ScriptIssueRow"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K35 ["ScriptIssueTreeView"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K36 ["ScriptConversionPane"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K37 ["ScriptConversionExpandablePane"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K38 ["ReplacementRulesExpandablePane"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K39 ["ScriptConversionPaneFooter"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K40 ["ScriptConversionPaneHeader"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K41 ["ConfirmRevertDialog"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K42 ["ReplaceOptionsPane"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K43 ["ReplaceOptionItem"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K44 ["ScriptIconView"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K45 ["LoadingScreenPrompt"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K46 ["ScriptConversionConsole"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K47 ["AnimationConversionPane"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K48 ["AnimationConversionPaneFooter"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K49 ["PreviewModelComponent"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K50 ["DisplayAvatarsComponent"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K51 ["ConvertDebugButtons"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K52 ["AnimationPreviewComponent"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K53 ["AnimationListRow"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K54 ["MediaPlayerControls"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K55 ["CollapsiblePane"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K56 ["AdapterPane"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K57 ["PublishBlockedDialog"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K58 ["Buttons"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  GETIMPORT R11 K61 [UDim2.new]
  LOADN R12 0
  LOADN R13 128
  LOADN R14 0
  LOADN R15 36
  CALL R11 4 1
  DUPTABLE R12 K65 [{"Color", "StretchMargin", "Weight"}]
  GETTABLEKS R13 R4 K66 ["MainText"]
  SETTABLEKS R13 R12 K62 ["Color"]
  LOADN R13 0
  SETTABLEKS R13 R12 K63 ["StretchMargin"]
  LOADN R13 1
  SETTABLEKS R13 R12 K64 ["Weight"]
  DUPTABLE R13 K68 [{"Right"}]
  LOADN R14 10
  SETTABLEKS R14 R13 K67 ["Right"]
  DUPTABLE R14 K73 [{"ResultContainerPadding", "ResultContainerSpacing", "ResultContainerSize", "ResultSize"}]
  DUPTABLE R15 K76 [{"Left", "Right", "Top"}]
  LOADN R16 12
  SETTABLEKS R16 R15 K74 ["Left"]
  LOADN R16 12
  SETTABLEKS R16 R15 K67 ["Right"]
  LOADN R16 5
  SETTABLEKS R16 R15 K75 ["Top"]
  SETTABLEKS R15 R14 K69 ["ResultContainerPadding"]
  LOADN R15 5
  SETTABLEKS R15 R14 K70 ["ResultContainerSpacing"]
  GETIMPORT R15 K61 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 35
  CALL R15 4 1
  SETTABLEKS R15 R14 K71 ["ResultContainerSize"]
  GETIMPORT R15 K61 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 22
  CALL R15 4 1
  SETTABLEKS R15 R14 K72 ["ResultSize"]
  DUPTABLE R15 K81 [{"Complete", "Reverted", "Warning", "Error"}]
  LOADK R16 K82 ["rbxasset://textures/R15Migrator/Icon_Checkmark.png"]
  SETTABLEKS R16 R15 K77 ["Complete"]
  LOADK R16 K83 ["rbxasset://textures/R15Migrator/Icon_Reverted.png"]
  SETTABLEKS R16 R15 K78 ["Reverted"]
  LOADK R16 K84 ["rbxasset://textures/R15Migrator/Icon_Warning.png"]
  SETTABLEKS R16 R15 K79 ["Warning"]
  LOADK R16 K85 ["rbxasset://textures/R15Migrator/Icon_Error.png"]
  SETTABLEKS R16 R15 K80 ["Error"]
  GETIMPORT R16 K88 [string.format]
  LOADK R17 K89 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R18 K90 ["Light"]
  CALL R16 2 1
  GETIMPORT R17 K88 [string.format]
  LOADK R18 K89 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R19 K91 ["Dark"]
  CALL R17 2 1
  NEWTABLE R18 1 0
  GETTABLEKS R19 R4 K92 ["Delete"]
  MOVE R21 R17
  LOADK R22 K93 ["Terrain_Delete.png"]
  CONCAT R20 R21 R22
  SETTABLE R20 R18 R19
  NEWTABLE R19 1 0
  GETTABLEKS R20 R4 K92 ["Delete"]
  MOVE R22 R16
  LOADK R23 K93 ["Terrain_Delete.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  DUPTABLE R20 K96 [{"Size", "TabPaneSize"}]
  GETIMPORT R21 K61 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 1
  LOADN R25 230
  CALL R21 4 1
  SETTABLEKS R21 R20 K94 ["Size"]
  GETIMPORT R21 K61 [UDim2.new]
  LOADN R22 1
  LOADN R23 220
  LOADN R24 1
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K95 ["TabPaneSize"]
  DUPTABLE R21 K101 [{"Spacing", "Size", "IconSize", "IconColor", "IconColorDisabled"}]
  LOADN R22 5
  SETTABLEKS R22 R21 K97 ["Spacing"]
  GETIMPORT R22 K61 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 0
  LOADN R26 26
  CALL R22 4 1
  SETTABLEKS R22 R21 K94 ["Size"]
  GETIMPORT R22 K61 [UDim2.new]
  LOADN R23 0
  LOADN R24 18
  LOADN R25 0
  LOADN R26 18
  CALL R22 4 1
  SETTABLEKS R22 R21 K98 ["IconSize"]
  GETIMPORT R22 K104 [Color3.fromRGB]
  LOADN R23 28
  LOADN R24 197
  LOADN R25 65
  CALL R22 3 1
  SETTABLEKS R22 R21 K99 ["IconColor"]
  GETTABLEKS R22 R4 K105 ["ButtonTextDisabled"]
  SETTABLEKS R22 R21 K100 ["IconColorDisabled"]
  DUPTABLE R22 K65 [{"Color", "StretchMargin", "Weight"}]
  GETTABLEKS R23 R4 K66 ["MainText"]
  SETTABLEKS R23 R22 K62 ["Color"]
  LOADN R23 0
  SETTABLEKS R23 R22 K63 ["StretchMargin"]
  LOADN R23 1
  SETTABLEKS R23 R22 K64 ["Weight"]
  DUPTABLE R23 K109 [{"Padding", "TextSize", "Font"}]
  DUPTABLE R24 K111 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R25 12
  SETTABLEKS R25 R24 K75 ["Top"]
  LOADN R25 12
  SETTABLEKS R25 R24 K110 ["Bottom"]
  LOADN R25 24
  SETTABLEKS R25 R24 K74 ["Left"]
  LOADN R25 24
  SETTABLEKS R25 R24 K67 ["Right"]
  SETTABLEKS R24 R23 K106 ["Padding"]
  LOADN R24 14
  SETTABLEKS R24 R23 K107 ["TextSize"]
  GETIMPORT R24 K114 [Enum.Font.SourceSans]
  SETTABLEKS R24 R23 K108 ["Font"]
  DUPTABLE R24 K122 [{"BackgroundColor", "BodyBackgroundColor", "Padding", "BodyPadding", "FooterHeight", "InstructionsHeight", "ButtonSize", "DialogMinContentSize"}]
  GETTABLEKS R25 R4 K123 ["MainBackground"]
  SETTABLEKS R25 R24 K115 ["BackgroundColor"]
  GETTABLEKS R25 R4 K124 ["SubBackground2"]
  SETTABLEKS R25 R24 K116 ["BodyBackgroundColor"]
  DUPTABLE R25 K125 [{"Left", "Right"}]
  LOADN R26 24
  SETTABLEKS R26 R25 K74 ["Left"]
  LOADN R26 24
  SETTABLEKS R26 R25 K67 ["Right"]
  SETTABLEKS R25 R24 K106 ["Padding"]
  DUPTABLE R25 K111 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R26 12
  SETTABLEKS R26 R25 K75 ["Top"]
  LOADN R26 12
  SETTABLEKS R26 R25 K110 ["Bottom"]
  LOADN R26 12
  SETTABLEKS R26 R25 K74 ["Left"]
  LOADN R26 12
  SETTABLEKS R26 R25 K67 ["Right"]
  SETTABLEKS R25 R24 K117 ["BodyPadding"]
  LOADN R25 72
  SETTABLEKS R25 R24 K118 ["FooterHeight"]
  LOADN R25 84
  SETTABLEKS R25 R24 K119 ["InstructionsHeight"]
  SETTABLEKS R11 R24 K120 ["ButtonSize"]
  GETIMPORT R25 K127 [Vector2.new]
  LOADN R26 144
  LOADN R27 100
  CALL R25 2 1
  SETTABLEKS R25 R24 K121 ["DialogMinContentSize"]
  DUPTABLE R25 K130 [{"Arrow", "Indent", "TextSize", "BackgroundColor"}]
  DUPTABLE R26 K134 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color", "Padding"}]
  LOADK R27 K135 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R27 R26 K131 ["Image"]
  LOADN R27 12
  SETTABLEKS R27 R26 K94 ["Size"]
  GETIMPORT R27 K127 [Vector2.new]
  LOADN R28 24
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K132 ["ExpandedOffset"]
  GETIMPORT R27 K127 [Vector2.new]
  LOADN R28 12
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K133 ["CollapsedOffset"]
  GETTABLEKS R27 R4 K66 ["MainText"]
  SETTABLEKS R27 R26 K62 ["Color"]
  LOADN R27 6
  SETTABLEKS R27 R26 K106 ["Padding"]
  SETTABLEKS R26 R25 K128 ["Arrow"]
  LOADN R26 16
  SETTABLEKS R26 R25 K129 ["Indent"]
  LOADN R26 14
  SETTABLEKS R26 R25 K107 ["TextSize"]
  GETTABLEKS R26 R4 K124 ["SubBackground2"]
  SETTABLEKS R26 R25 K115 ["BackgroundColor"]
  DUPTABLE R26 K138 [{"TextSize", "BackgroundColor", "BackgroundTransparency", "BarHeight", "Padding"}]
  LOADN R27 25
  SETTABLEKS R27 R26 K107 ["TextSize"]
  GETIMPORT R27 K104 [Color3.fromRGB]
  LOADN R28 0
  LOADN R29 0
  LOADN R30 0
  CALL R27 3 1
  SETTABLEKS R27 R26 K115 ["BackgroundColor"]
  LOADK R27 K139 [0.2]
  SETTABLEKS R27 R26 K136 ["BackgroundTransparency"]
  LOADN R27 12
  SETTABLEKS R27 R26 K137 ["BarHeight"]
  DUPTABLE R27 K125 [{"Left", "Right"}]
  LOADN R28 24
  SETTABLEKS R28 R27 K74 ["Left"]
  LOADN R28 24
  SETTABLEKS R28 R27 K67 ["Right"]
  SETTABLEKS R27 R26 K106 ["Padding"]
  DUPTABLE R27 K143 [{"TopBarColor", "BackgroundColor", "Arrow", "TopBarHeight", "TopBarPadding"}]
  GETTABLEKS R28 R4 K123 ["MainBackground"]
  SETTABLEKS R28 R27 K140 ["TopBarColor"]
  GETTABLEKS R28 R4 K144 ["SubBackground"]
  SETTABLEKS R28 R27 K115 ["BackgroundColor"]
  DUPTABLE R28 K147 [{"Image", "Size", "Offset", "Color", "HoverColor"}]
  LOADK R29 K135 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R29 R28 K131 ["Image"]
  LOADN R29 12
  SETTABLEKS R29 R28 K94 ["Size"]
  GETIMPORT R29 K127 [Vector2.new]
  LOADN R30 24
  LOADN R31 0
  CALL R29 2 1
  SETTABLEKS R29 R28 K145 ["Offset"]
  GETTABLEKS R29 R4 K148 ["DimmedText"]
  SETTABLEKS R29 R28 K62 ["Color"]
  GETTABLEKS R29 R4 K149 ["BrightText"]
  SETTABLEKS R29 R28 K146 ["HoverColor"]
  SETTABLEKS R28 R27 K128 ["Arrow"]
  LOADN R28 16
  SETTABLEKS R28 R27 K141 ["TopBarHeight"]
  DUPTABLE R28 K68 [{"Right"}]
  LOADN R29 8
  SETTABLEKS R29 R28 K67 ["Right"]
  SETTABLEKS R28 R27 K142 ["TopBarPadding"]
  DUPTABLE R28 K150 [{"BackgroundColor", "FooterHeight", "InstructionsHeight"}]
  GETTABLEKS R29 R4 K124 ["SubBackground2"]
  SETTABLEKS R29 R28 K115 ["BackgroundColor"]
  LOADN R29 88
  SETTABLEKS R29 R28 K118 ["FooterHeight"]
  LOADN R29 64
  SETTABLEKS R29 R28 K119 ["InstructionsHeight"]
  DUPTABLE R29 K157 [{"Spacing", "ProcessResultBackgroundColor", "SeparatorStyle", "RevertButtonSize", "ConvertButtonSize", "ButtonSpacing", "ButtonPadding"}]
  LOADN R30 5
  SETTABLEKS R30 R29 K97 ["Spacing"]
  GETTABLEKS R30 R4 K124 ["SubBackground2"]
  SETTABLEKS R30 R29 K151 ["ProcessResultBackgroundColor"]
  SETTABLEKS R12 R29 K152 ["SeparatorStyle"]
  SETTABLEKS R11 R29 K153 ["RevertButtonSize"]
  SETTABLEKS R11 R29 K154 ["ConvertButtonSize"]
  LOADN R30 10
  SETTABLEKS R30 R29 K155 ["ButtonSpacing"]
  SETTABLEKS R13 R29 K156 ["ButtonPadding"]
  GETTABLEKS R31 R10 K158 ["Dictionary"]
  GETTABLEKS R30 R31 K159 ["join"]
  MOVE R31 R29
  MOVE R32 R14
  CALL R30 2 1
  MOVE R29 R30
  DUPTABLE R30 K163 [{"RowHeight", "Spacing", "BackgroundColor", "SectionHeadBackgroundColor", "SelectedColor"}]
  LOADN R31 32
  SETTABLEKS R31 R30 K160 ["RowHeight"]
  LOADN R31 4
  SETTABLEKS R31 R30 K97 ["Spacing"]
  GETTABLEKS R31 R4 K124 ["SubBackground2"]
  SETTABLEKS R31 R30 K115 ["BackgroundColor"]
  GETTABLEKS R31 R4 K123 ["MainBackground"]
  SETTABLEKS R31 R30 K161 ["SectionHeadBackgroundColor"]
  GETTABLEKS R31 R4 K164 ["DialogMainButtonSelected"]
  SETTABLEKS R31 R30 K162 ["SelectedColor"]
  DUPTABLE R31 K171 [{"ViewportBackgroundColor", "TreeViewBackgroundColor", "ViewportAspectRatio", "SelectionColor", "ViewportHeight", "TreeHeight"}]
  GETTABLEKS R32 R4 K144 ["SubBackground"]
  SETTABLEKS R32 R31 K165 ["ViewportBackgroundColor"]
  GETTABLEKS R32 R4 K124 ["SubBackground2"]
  SETTABLEKS R32 R31 K166 ["TreeViewBackgroundColor"]
  LOADK R32 K172 [0.77027027027027]
  SETTABLEKS R32 R31 K167 ["ViewportAspectRatio"]
  GETIMPORT R32 K104 [Color3.fromRGB]
  LOADN R33 13
  LOADN R34 105
  LOADN R35 172
  CALL R32 3 1
  SETTABLEKS R32 R31 K168 ["SelectionColor"]
  LOADN R32 44
  SETTABLEKS R32 R31 K169 ["ViewportHeight"]
  LOADN R32 44
  SETTABLEKS R32 R31 K170 ["TreeHeight"]
  DUPTABLE R32 K177 [{"Arrow", "ArrowPadding", "Width", "HorizontalSpacing", "VerticalSpacing"}]
  DUPTABLE R33 K179 [{"Image", "Size", "ImageRectSize", "Offset", "Color"}]
  LOADK R34 K135 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R34 R33 K131 ["Image"]
  GETIMPORT R34 K181 [UDim2.fromOffset]
  LOADN R35 12
  LOADN R36 12
  CALL R34 2 1
  SETTABLEKS R34 R33 K94 ["Size"]
  GETIMPORT R34 K127 [Vector2.new]
  LOADN R35 12
  LOADN R36 12
  CALL R34 2 1
  SETTABLEKS R34 R33 K178 ["ImageRectSize"]
  GETIMPORT R34 K127 [Vector2.new]
  LOADN R35 12
  LOADN R36 0
  CALL R34 2 1
  SETTABLEKS R34 R33 K145 ["Offset"]
  GETTABLEKS R34 R4 K66 ["MainText"]
  SETTABLEKS R34 R33 K62 ["Color"]
  SETTABLEKS R33 R32 K128 ["Arrow"]
  LOADN R33 12
  SETTABLEKS R33 R32 K173 ["ArrowPadding"]
  LOADN R33 200
  SETTABLEKS R33 R32 K174 ["Width"]
  LOADN R33 8
  SETTABLEKS R33 R32 K175 ["HorizontalSpacing"]
  LOADN R33 8
  SETTABLEKS R33 R32 K176 ["VerticalSpacing"]
  DUPTABLE R33 K183 [{"RowHeight", "CompactNoBorder"}]
  LOADN R34 20
  SETTABLEKS R34 R33 K160 ["RowHeight"]
  GETTABLEKS R35 R10 K158 ["Dictionary"]
  GETTABLEKS R34 R35 K159 ["join"]
  MOVE R35 R9
  DUPTABLE R36 K187 [{"Text", "Indent", "RowHeight", "Arrow", "IconPadding", "HoverColor", "SelectedColor", "SelectedTextColor"}]
  DUPTABLE R37 K189 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R38 K114 [Enum.Font.SourceSans]
  SETTABLEKS R38 R37 K108 ["Font"]
  GETTABLEKS R38 R4 K66 ["MainText"]
  SETTABLEKS R38 R37 K188 ["TextColor"]
  LOADN R38 16
  SETTABLEKS R38 R37 K107 ["TextSize"]
  SETTABLEKS R37 R36 K184 ["Text"]
  LOADN R37 16
  SETTABLEKS R37 R36 K129 ["Indent"]
  LOADN R37 20
  SETTABLEKS R37 R36 K160 ["RowHeight"]
  DUPTABLE R37 K190 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color"}]
  LOADK R38 K135 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R38 R37 K131 ["Image"]
  LOADN R38 12
  SETTABLEKS R38 R37 K94 ["Size"]
  GETIMPORT R38 K127 [Vector2.new]
  LOADN R39 24
  LOADN R40 0
  CALL R38 2 1
  SETTABLEKS R38 R37 K132 ["ExpandedOffset"]
  GETIMPORT R38 K127 [Vector2.new]
  LOADN R39 12
  LOADN R40 0
  CALL R38 2 1
  SETTABLEKS R38 R37 K133 ["CollapsedOffset"]
  GETTABLEKS R38 R4 K66 ["MainText"]
  SETTABLEKS R38 R37 K62 ["Color"]
  SETTABLEKS R37 R36 K128 ["Arrow"]
  LOADN R37 3
  SETTABLEKS R37 R36 K185 ["IconPadding"]
  GETTABLEKS R37 R4 K191 ["ButtonHover"]
  SETTABLEKS R37 R36 K146 ["HoverColor"]
  GETTABLEKS R37 R4 K192 ["DialogMainButton"]
  SETTABLEKS R37 R36 K162 ["SelectedColor"]
  GETTABLEKS R37 R4 K193 ["DialogMainButtonText"]
  SETTABLEKS R37 R36 K186 ["SelectedTextColor"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K182 ["CompactNoBorder"]
  DUPTABLE R34 K194 [{"Size", "Color"}]
  LOADN R35 36
  SETTABLEKS R35 R34 K94 ["Size"]
  GETTABLEKS R35 R4 K66 ["MainText"]
  SETTABLEKS R35 R34 K62 ["Color"]
  DUPTABLE R35 K196 [{"ExpandablePaneHeaderSize", "BackgroundColor", "InstructionsHeight"}]
  GETIMPORT R36 K61 [UDim2.new]
  LOADN R37 1
  LOADN R38 0
  LOADN R39 0
  LOADN R40 36
  CALL R36 4 1
  SETTABLEKS R36 R35 K195 ["ExpandablePaneHeaderSize"]
  GETTABLEKS R36 R4 K124 ["SubBackground2"]
  SETTABLEKS R36 R35 K115 ["BackgroundColor"]
  LOADN R36 80
  SETTABLEKS R36 R35 K119 ["InstructionsHeight"]
  DUPTABLE R36 K199 [{"HeaderHeight", "FooterHeight", "HeaderColor", "BackgroundColor"}]
  LOADN R37 84
  SETTABLEKS R37 R36 K197 ["HeaderHeight"]
  LOADN R37 88
  SETTABLEKS R37 R36 K118 ["FooterHeight"]
  GETTABLEKS R37 R4 K144 ["SubBackground"]
  SETTABLEKS R37 R36 K198 ["HeaderColor"]
  GETTABLEKS R37 R4 K124 ["SubBackground2"]
  SETTABLEKS R37 R36 K115 ["BackgroundColor"]
  DUPTABLE R37 K200 [{"HeaderColor", "BackgroundColor"}]
  GETTABLEKS R38 R4 K144 ["SubBackground"]
  SETTABLEKS R38 R37 K198 ["HeaderColor"]
  GETTABLEKS R38 R4 K124 ["SubBackground2"]
  SETTABLEKS R38 R37 K115 ["BackgroundColor"]
  DUPTABLE R38 K201 [{"ProcessResultBackgroundColor", "RevertButtonSize", "ConvertButtonSize", "Spacing", "ButtonSpacing", "SeparatorStyle", "ButtonPadding"}]
  GETTABLEKS R39 R4 K124 ["SubBackground2"]
  SETTABLEKS R39 R38 K151 ["ProcessResultBackgroundColor"]
  SETTABLEKS R11 R38 K153 ["RevertButtonSize"]
  SETTABLEKS R11 R38 K154 ["ConvertButtonSize"]
  LOADN R39 5
  SETTABLEKS R39 R38 K97 ["Spacing"]
  LOADN R39 10
  SETTABLEKS R39 R38 K155 ["ButtonSpacing"]
  SETTABLEKS R12 R38 K152 ["SeparatorStyle"]
  SETTABLEKS R13 R38 K156 ["ButtonPadding"]
  GETTABLEKS R40 R10 K158 ["Dictionary"]
  GETTABLEKS R39 R40 K159 ["join"]
  MOVE R40 R38
  MOVE R41 R14
  CALL R39 2 1
  MOVE R38 R39
  DUPTABLE R39 K207 [{"FilterHeight", "FilterWidth", "ItemHeight", "ListItemTextSize", "ListItemPadding", "Padding", "Spacing", "SeparatorStyle"}]
  LOADN R40 36
  SETTABLEKS R40 R39 K202 ["FilterHeight"]
  LOADN R40 192
  SETTABLEKS R40 R39 K203 ["FilterWidth"]
  LOADN R40 22
  SETTABLEKS R40 R39 K204 ["ItemHeight"]
  LOADN R40 14
  SETTABLEKS R40 R39 K205 ["ListItemTextSize"]
  LOADN R40 6
  SETTABLEKS R40 R39 K206 ["ListItemPadding"]
  DUPTABLE R40 K208 [{"Left", "Top", "Right"}]
  LOADN R41 12
  SETTABLEKS R41 R40 K74 ["Left"]
  LOADN R41 5
  SETTABLEKS R41 R40 K75 ["Top"]
  LOADN R41 12
  SETTABLEKS R41 R40 K67 ["Right"]
  SETTABLEKS R40 R39 K106 ["Padding"]
  LOADN R40 5
  SETTABLEKS R40 R39 K97 ["Spacing"]
  SETTABLEKS R12 R39 K152 ["SeparatorStyle"]
  DUPTABLE R40 K213 [{"StatusImageSize", "Spacing", "CountTextSize", "StatusIcons", "RevertedIconColor"}]
  GETIMPORT R41 K181 [UDim2.fromOffset]
  LOADN R42 16
  LOADN R43 16
  CALL R41 2 1
  SETTABLEKS R41 R40 K209 ["StatusImageSize"]
  LOADN R41 4
  SETTABLEKS R41 R40 K97 ["Spacing"]
  LOADN R41 15
  SETTABLEKS R41 R40 K210 ["CountTextSize"]
  SETTABLEKS R15 R40 K211 ["StatusIcons"]
  GETTABLEKS R41 R4 K149 ["BrightText"]
  SETTABLEKS R41 R40 K212 ["RevertedIconColor"]
  DUPTABLE R41 K215 [{"StatusIcons", "RowHeight", "ConsoleHeight", "BackgroundColor", "IconSize", "Padding", "Arrow"}]
  SETTABLEKS R15 R41 K211 ["StatusIcons"]
  LOADN R42 24
  SETTABLEKS R42 R41 K160 ["RowHeight"]
  LOADN R42 48
  SETTABLEKS R42 R41 K214 ["ConsoleHeight"]
  GETTABLEKS R42 R4 K123 ["MainBackground"]
  SETTABLEKS R42 R41 K115 ["BackgroundColor"]
  GETIMPORT R42 K181 [UDim2.fromOffset]
  LOADN R43 16
  LOADN R44 16
  CALL R42 2 1
  SETTABLEKS R42 R41 K98 ["IconSize"]
  DUPTABLE R42 K125 [{"Left", "Right"}]
  LOADN R43 8
  SETTABLEKS R43 R42 K74 ["Left"]
  LOADN R43 8
  SETTABLEKS R43 R42 K67 ["Right"]
  SETTABLEKS R42 R41 K106 ["Padding"]
  DUPTABLE R42 K147 [{"Image", "Size", "Offset", "Color", "HoverColor"}]
  LOADK R43 K135 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R43 R42 K131 ["Image"]
  LOADN R43 12
  SETTABLEKS R43 R42 K94 ["Size"]
  GETIMPORT R43 K127 [Vector2.new]
  LOADN R44 0
  LOADN R45 0
  CALL R43 2 1
  SETTABLEKS R43 R42 K145 ["Offset"]
  GETTABLEKS R43 R4 K148 ["DimmedText"]
  SETTABLEKS R43 R42 K62 ["Color"]
  GETTABLEKS R43 R4 K149 ["BrightText"]
  SETTABLEKS R43 R42 K146 ["HoverColor"]
  SETTABLEKS R42 R41 K128 ["Arrow"]
  DUPTABLE R42 K218 [{"Arrow", "Spacing", "Indent", "TextSize", "LinkColor", "BackgroundColor", "IconViewSize"}]
  DUPTABLE R43 K134 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color", "Padding"}]
  LOADK R44 K135 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R44 R43 K131 ["Image"]
  LOADN R44 12
  SETTABLEKS R44 R43 K94 ["Size"]
  GETIMPORT R44 K127 [Vector2.new]
  LOADN R45 24
  LOADN R46 0
  CALL R44 2 1
  SETTABLEKS R44 R43 K132 ["ExpandedOffset"]
  GETIMPORT R44 K127 [Vector2.new]
  LOADN R45 12
  LOADN R46 0
  CALL R44 2 1
  SETTABLEKS R44 R43 K133 ["CollapsedOffset"]
  GETTABLEKS R44 R4 K66 ["MainText"]
  SETTABLEKS R44 R43 K62 ["Color"]
  LOADN R44 6
  SETTABLEKS R44 R43 K106 ["Padding"]
  SETTABLEKS R43 R42 K128 ["Arrow"]
  LOADN R43 12
  SETTABLEKS R43 R42 K97 ["Spacing"]
  LOADN R43 16
  SETTABLEKS R43 R42 K129 ["Indent"]
  LOADN R43 14
  SETTABLEKS R43 R42 K107 ["TextSize"]
  GETTABLEKS R43 R4 K219 ["LinkText"]
  SETTABLEKS R43 R42 K216 ["LinkColor"]
  GETTABLEKS R43 R4 K124 ["SubBackground2"]
  SETTABLEKS R43 R42 K115 ["BackgroundColor"]
  GETIMPORT R43 K181 [UDim2.fromOffset]
  LOADN R44 76
  LOADN R45 16
  CALL R43 2 1
  SETTABLEKS R43 R42 K217 ["IconViewSize"]
  DUPTABLE R43 K220 [{"ButtonSize", "Spacing", "Padding"}]
  GETIMPORT R44 K181 [UDim2.fromOffset]
  LOADN R45 72
  LOADN R46 36
  CALL R44 2 1
  SETTABLEKS R44 R43 K120 ["ButtonSize"]
  LOADN R44 8
  SETTABLEKS R44 R43 K97 ["Spacing"]
  DUPTABLE R44 K125 [{"Left", "Right"}]
  LOADN R45 24
  SETTABLEKS R45 R44 K74 ["Left"]
  LOADN R45 24
  SETTABLEKS R45 R44 K67 ["Right"]
  SETTABLEKS R44 R43 K106 ["Padding"]
  DUPTABLE R44 K221 [{"RowHeight"}]
  LOADN R45 32
  SETTABLEKS R45 R44 K160 ["RowHeight"]
  DUPTABLE R45 K223 [{"MinContentSize"}]
  GETIMPORT R46 K127 [Vector2.new]
  LOADN R47 144
  LOADN R48 100
  CALL R46 2 1
  SETTABLEKS R46 R45 K222 ["MinContentSize"]
  DUPTABLE R46 K228 [{"PaneHeight", "TitleTextSize", "SaveRulesSize", "Padding", "Spacing", "ListHeightOffset", "RowHeight", "SeparatorStyle"}]
  LOADN R47 250
  SETTABLEKS R47 R46 K224 ["PaneHeight"]
  LOADN R47 22
  SETTABLEKS R47 R46 K225 ["TitleTextSize"]
  GETIMPORT R47 K181 [UDim2.fromOffset]
  LOADN R48 100
  LOADN R49 36
  CALL R47 2 1
  SETTABLEKS R47 R46 K226 ["SaveRulesSize"]
  DUPTABLE R47 K229 [{"Left", "Right", "Top", "Bottom"}]
  LOADN R48 24
  SETTABLEKS R48 R47 K74 ["Left"]
  LOADN R48 24
  SETTABLEKS R48 R47 K67 ["Right"]
  LOADN R48 24
  SETTABLEKS R48 R47 K75 ["Top"]
  LOADN R48 24
  SETTABLEKS R48 R47 K110 ["Bottom"]
  SETTABLEKS R47 R46 K106 ["Padding"]
  LOADN R47 12
  SETTABLEKS R47 R46 K97 ["Spacing"]
  LOADN R47 194
  SETTABLEKS R47 R46 K227 ["ListHeightOffset"]
  LOADN R47 48
  SETTABLEKS R47 R46 K160 ["RowHeight"]
  SETTABLEKS R22 R46 K152 ["SeparatorStyle"]
  DUPTABLE R47 K234 [{"TextInputSize", "FromLabelSize", "ToggleSize", "ArrowSize", "BackgroundColor", "Spacing", "Arrow", "Padding"}]
  GETIMPORT R48 K181 [UDim2.fromOffset]
  LOADN R49 170
  LOADN R50 36
  CALL R48 2 1
  SETTABLEKS R48 R47 K230 ["TextInputSize"]
  GETIMPORT R48 K181 [UDim2.fromOffset]
  LOADN R49 85
  LOADN R50 36
  CALL R48 2 1
  SETTABLEKS R48 R47 K231 ["FromLabelSize"]
  GETIMPORT R48 K181 [UDim2.fromOffset]
  LOADN R49 48
  LOADN R50 0
  CALL R48 2 1
  SETTABLEKS R48 R47 K232 ["ToggleSize"]
  GETIMPORT R48 K181 [UDim2.fromOffset]
  LOADN R49 24
  LOADN R50 0
  CALL R48 2 1
  SETTABLEKS R48 R47 K233 ["ArrowSize"]
  GETTABLEKS R48 R4 K144 ["SubBackground"]
  SETTABLEKS R48 R47 K115 ["BackgroundColor"]
  LOADN R48 16
  SETTABLEKS R48 R47 K97 ["Spacing"]
  LOADK R48 K235 ["→"]
  SETTABLEKS R48 R47 K128 ["Arrow"]
  DUPTABLE R48 K125 [{"Left", "Right"}]
  LOADN R49 10
  SETTABLEKS R49 R48 K74 ["Left"]
  LOADN R49 10
  SETTABLEKS R49 R48 K67 ["Right"]
  SETTABLEKS R48 R47 K106 ["Padding"]
  DUPTABLE R48 K238 [{"Padding", "Spacing", "PreviewContainerSize", "ListSize", "FooterHeight", "BackgroundColor", "InstructionsHeight"}]
  LOADN R49 20
  SETTABLEKS R49 R48 K106 ["Padding"]
  LOADN R49 10
  SETTABLEKS R49 R48 K97 ["Spacing"]
  GETIMPORT R49 K240 [UDim2.fromScale]
  LOADN R50 1
  LOADK R51 K241 [0.4]
  CALL R49 2 1
  SETTABLEKS R49 R48 K236 ["PreviewContainerSize"]
  GETIMPORT R49 K240 [UDim2.fromScale]
  LOADN R50 1
  LOADK R51 K242 [0.6]
  CALL R49 2 1
  SETTABLEKS R49 R48 K237 ["ListSize"]
  LOADN R49 88
  SETTABLEKS R49 R48 K118 ["FooterHeight"]
  GETTABLEKS R49 R4 K124 ["SubBackground2"]
  SETTABLEKS R49 R48 K115 ["BackgroundColor"]
  LOADN R49 64
  SETTABLEKS R49 R48 K119 ["InstructionsHeight"]
  DUPTABLE R49 K247 [{"PanePadding", "BackgroundColor", "SubTextSize", "Spacing", "VerticalTextSpacing", "BoldFont"}]
  DUPTABLE R50 K248 [{"Left", "Top"}]
  LOADN R51 10
  SETTABLEKS R51 R50 K74 ["Left"]
  LOADN R51 20
  SETTABLEKS R51 R50 K75 ["Top"]
  SETTABLEKS R50 R49 K243 ["PanePadding"]
  GETTABLEKS R50 R4 K124 ["SubBackground2"]
  SETTABLEKS R50 R49 K115 ["BackgroundColor"]
  LOADN R50 13
  SETTABLEKS R50 R49 K244 ["SubTextSize"]
  LOADN R50 5
  SETTABLEKS R50 R49 K97 ["Spacing"]
  LOADN R50 10
  SETTABLEKS R50 R49 K245 ["VerticalTextSpacing"]
  GETIMPORT R50 K250 [Enum.Font.SourceSansBold]
  SETTABLEKS R50 R49 K246 ["BoldFont"]
  DUPTABLE R50 K251 [{"SeparatorStyle", "Spacing", "ButtonPadding"}]
  SETTABLEKS R12 R50 K152 ["SeparatorStyle"]
  LOADN R51 5
  SETTABLEKS R51 R50 K97 ["Spacing"]
  SETTABLEKS R13 R50 K156 ["ButtonPadding"]
  GETTABLEKS R52 R10 K158 ["Dictionary"]
  GETTABLEKS R51 R52 K159 ["join"]
  MOVE R52 R50
  MOVE R53 R14
  CALL R51 2 1
  MOVE R50 R51
  DUPTABLE R51 K252 [{"Spacing", "PreviewContainerSize"}]
  LOADN R52 10
  SETTABLEKS R52 R51 K97 ["Spacing"]
  GETIMPORT R52 K61 [UDim2.new]
  LOADN R53 1
  LOADN R54 0
  LOADN R55 1
  LOADN R56 172
  CALL R52 4 1
  SETTABLEKS R52 R51 K236 ["PreviewContainerSize"]
  DUPTABLE R52 K254 [{"Padding", "BackgroundColor", "ResetButtonSize"}]
  LOADN R53 5
  SETTABLEKS R53 R52 K106 ["Padding"]
  GETTABLEKS R53 R4 K255 ["ForegroundContrast"]
  SETTABLEKS R53 R52 K115 ["BackgroundColor"]
  GETIMPORT R53 K181 [UDim2.fromOffset]
  LOADN R54 28
  LOADN R55 28
  CALL R53 2 1
  SETTABLEKS R53 R52 K253 ["ResetButtonSize"]
  DUPTABLE R53 K258 [{"Arrow", "Padding", "PreviewWindowSize", "PreviewWindowPosition"}]
  DUPTABLE R54 K260 [{"Image", "Size", "ImageRectSize", "Position", "Offset", "Color"}]
  LOADK R55 K135 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R55 R54 K131 ["Image"]
  GETIMPORT R55 K181 [UDim2.fromOffset]
  LOADN R56 12
  LOADN R57 12
  CALL R55 2 1
  SETTABLEKS R55 R54 K94 ["Size"]
  GETIMPORT R55 K127 [Vector2.new]
  LOADN R56 12
  LOADN R57 12
  CALL R55 2 1
  SETTABLEKS R55 R54 K178 ["ImageRectSize"]
  GETIMPORT R55 K61 [UDim2.new]
  LOADK R56 K5 ["Packages"]
  LOADN R57 250
  LOADK R58 K5 ["Packages"]
  LOADN R59 250
  CALL R55 4 1
  SETTABLEKS R55 R54 K259 ["Position"]
  GETIMPORT R55 K127 [Vector2.new]
  LOADN R56 12
  LOADN R57 0
  CALL R55 2 1
  SETTABLEKS R55 R54 K145 ["Offset"]
  GETTABLEKS R55 R4 K66 ["MainText"]
  SETTABLEKS R55 R54 K62 ["Color"]
  SETTABLEKS R54 R53 K128 ["Arrow"]
  LOADN R54 10
  SETTABLEKS R54 R53 K106 ["Padding"]
  GETIMPORT R54 K61 [UDim2.new]
  LOADK R55 K5 ["Packages"]
  LOADN R56 246
  LOADN R57 1
  LOADN R58 0
  CALL R54 4 1
  SETTABLEKS R54 R53 K256 ["PreviewWindowSize"]
  GETIMPORT R54 K61 [UDim2.new]
  LOADK R55 K5 ["Packages"]
  LOADN R56 10
  LOADN R57 0
  LOADN R58 0
  CALL R54 4 1
  SETTABLEKS R54 R53 K257 ["PreviewWindowPosition"]
  DUPTABLE R54 K262 [{"ButtonSize", "Spacing"}]
  SETTABLEKS R11 R54 K120 ["ButtonSize"]
  LOADN R55 10
  SETTABLEKS R55 R54 K97 ["Spacing"]
  DUPTABLE R55 K267 [{"BackgroundColor", "SelectedBorderColor", "SelectedColor", "StatusImageSize", "Icons", "Content", "Header"}]
  GETTABLEKS R56 R4 K124 ["SubBackground2"]
  SETTABLEKS R56 R55 K115 ["BackgroundColor"]
  GETTABLEKS R56 R4 K164 ["DialogMainButtonSelected"]
  SETTABLEKS R56 R55 K263 ["SelectedBorderColor"]
  GETTABLEKS R56 R4 K123 ["MainBackground"]
  SETTABLEKS R56 R55 K162 ["SelectedColor"]
  GETIMPORT R56 K181 [UDim2.fromOffset]
  LOADN R57 16
  LOADN R58 16
  CALL R56 2 1
  SETTABLEKS R56 R55 K209 ["StatusImageSize"]
  DUPTABLE R56 K269 [{"Success", "Warning"}]
  LOADK R57 K82 ["rbxasset://textures/R15Migrator/Icon_Checkmark.png"]
  SETTABLEKS R57 R56 K268 ["Success"]
  LOADK R57 K84 ["rbxasset://textures/R15Migrator/Icon_Warning.png"]
  SETTABLEKS R57 R56 K79 ["Warning"]
  SETTABLEKS R56 R55 K264 ["Icons"]
  DUPTABLE R56 K270 [{"Padding"}]
  DUPTABLE R57 K271 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R58 28
  SETTABLEKS R58 R57 K74 ["Left"]
  LOADN R58 10
  SETTABLEKS R58 R57 K75 ["Top"]
  LOADN R58 28
  SETTABLEKS R58 R57 K67 ["Right"]
  LOADN R58 10
  SETTABLEKS R58 R57 K110 ["Bottom"]
  SETTABLEKS R57 R56 K106 ["Padding"]
  SETTABLEKS R56 R55 K265 ["Content"]
  DUPTABLE R56 K274 [{"Arrow", "HorizontalAlignment", "Padding", "Size", "Spacing", "Text", "VerticalAlignment"}]
  NEWTABLE R57 8 0
  GETTABLEKS R58 R4 K66 ["MainText"]
  SETTABLEKS R58 R57 K62 ["Color"]
  LOADK R58 K135 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R58 R57 K131 ["Image"]
  GETIMPORT R58 K127 [Vector2.new]
  LOADN R59 12
  LOADN R60 0
  CALL R58 2 1
  SETTABLEKS R58 R57 K275 ["ImageRectOffset"]
  GETIMPORT R58 K127 [Vector2.new]
  LOADN R59 12
  LOADN R60 12
  CALL R58 2 1
  SETTABLEKS R58 R57 K178 ["ImageRectSize"]
  GETIMPORT R58 K181 [UDim2.fromOffset]
  LOADN R59 12
  LOADN R60 12
  CALL R58 2 1
  SETTABLEKS R58 R57 K94 ["Size"]
  GETTABLEKS R58 R7 K276 ["Selected"]
  DUPTABLE R59 K277 [{"ImageRectOffset"}]
  GETIMPORT R60 K127 [Vector2.new]
  LOADN R61 24
  LOADN R62 0
  CALL R60 2 1
  SETTABLEKS R60 R59 K275 ["ImageRectOffset"]
  SETTABLE R59 R57 R58
  SETTABLEKS R57 R56 K128 ["Arrow"]
  GETIMPORT R57 K278 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R57 R56 K272 ["HorizontalAlignment"]
  DUPTABLE R57 K125 [{"Left", "Right"}]
  LOADN R58 16
  SETTABLEKS R58 R57 K74 ["Left"]
  LOADN R58 16
  SETTABLEKS R58 R57 K67 ["Right"]
  SETTABLEKS R57 R56 K106 ["Padding"]
  GETIMPORT R57 K61 [UDim2.new]
  LOADN R58 1
  LOADN R59 0
  LOADN R60 0
  LOADN R61 32
  CALL R57 4 1
  SETTABLEKS R57 R56 K94 ["Size"]
  LOADN R57 6
  SETTABLEKS R57 R56 K97 ["Spacing"]
  DUPTABLE R57 K189 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R58 K114 [Enum.Font.SourceSans]
  SETTABLEKS R58 R57 K108 ["Font"]
  GETTABLEKS R58 R4 K279 ["TitlebarText"]
  SETTABLEKS R58 R57 K188 ["TextColor"]
  LOADN R58 14
  SETTABLEKS R58 R57 K107 ["TextSize"]
  SETTABLEKS R57 R56 K184 ["Text"]
  GETIMPORT R57 K281 [Enum.VerticalAlignment.Center]
  SETTABLEKS R57 R56 K273 ["VerticalAlignment"]
  SETTABLEKS R56 R55 K266 ["Header"]
  DUPTABLE R56 K293 [{"Offset", "Padding", "ContentPadding", "Anchor", "LabelSize", "Label1Position", "Label2Position", "LoadingIcon", "WarningIcon", "FailedIcon", "DoneIcon", "Arrow", "ArrowPosition", "IconPosition", "IconSize", "Spacing", "TextSize"}]
  GETIMPORT R57 K181 [UDim2.fromOffset]
  LOADN R58 248
  LOADN R59 0
  CALL R57 2 1
  SETTABLEKS R57 R56 K145 ["Offset"]
  LOADN R57 5
  SETTABLEKS R57 R56 K106 ["Padding"]
  DUPTABLE R57 K125 [{"Left", "Right"}]
  LOADN R58 20
  SETTABLEKS R58 R57 K74 ["Left"]
  LOADN R58 20
  SETTABLEKS R58 R57 K67 ["Right"]
  SETTABLEKS R57 R56 K282 ["ContentPadding"]
  GETIMPORT R57 K127 [Vector2.new]
  LOADN R58 0
  LOADK R59 K5 ["Packages"]
  CALL R57 2 1
  SETTABLEKS R57 R56 K283 ["Anchor"]
  GETIMPORT R57 K61 [UDim2.new]
  LOADK R58 K5 ["Packages"]
  LOADN R59 222
  LOADN R60 1
  LOADN R61 0
  CALL R57 4 1
  SETTABLEKS R57 R56 K284 ["LabelSize"]
  GETIMPORT R57 K61 [UDim2.new]
  LOADN R58 0
  LOADN R59 0
  LOADK R60 K5 ["Packages"]
  LOADN R61 0
  CALL R57 4 1
  SETTABLEKS R57 R56 K285 ["Label1Position"]
  GETIMPORT R57 K61 [UDim2.new]
  LOADK R58 K5 ["Packages"]
  LOADN R59 10
  LOADK R60 K5 ["Packages"]
  LOADN R61 0
  CALL R57 4 1
  SETTABLEKS R57 R56 K286 ["Label2Position"]
  LOADK R57 K38 ["ReplacementRulesExpandablePane"]
  SETTABLEKS R57 R56 K287 ["LoadingIcon"]
  LOADK R57 K84 ["rbxasset://textures/R15Migrator/Icon_Warning.png"]
  SETTABLEKS R57 R56 K288 ["WarningIcon"]
  LOADK R57 K85 ["rbxasset://textures/R15Migrator/Icon_Error.png"]
  SETTABLEKS R57 R56 K289 ["FailedIcon"]
  LOADK R57 K82 ["rbxasset://textures/R15Migrator/Icon_Checkmark.png"]
  SETTABLEKS R57 R56 K290 ["DoneIcon"]
  LOADK R57 K235 ["→"]
  SETTABLEKS R57 R56 K128 ["Arrow"]
  GETIMPORT R57 K61 [UDim2.new]
  LOADK R58 K5 ["Packages"]
  LOADN R59 232
  LOADK R60 K5 ["Packages"]
  LOADN R61 0
  CALL R57 4 1
  SETTABLEKS R57 R56 K291 ["ArrowPosition"]
  GETIMPORT R57 K61 [UDim2.new]
  LOADN R58 1
  LOADN R59 240
  LOADK R60 K5 ["Packages"]
  LOADN R61 0
  CALL R57 4 1
  SETTABLEKS R57 R56 K292 ["IconPosition"]
  GETIMPORT R57 K181 [UDim2.fromOffset]
  LOADN R58 16
  LOADN R59 16
  CALL R57 2 1
  SETTABLEKS R57 R56 K98 ["IconSize"]
  LOADN R57 10
  SETTABLEKS R57 R56 K97 ["Spacing"]
  LOADN R57 14
  SETTABLEKS R57 R56 K107 ["TextSize"]
  DUPTABLE R57 K297 [{"Padding", "Spacing", "BackgroundColor", "ImageColor", "ButtonSize", "SliderSize"}]
  LOADN R58 2
  SETTABLEKS R58 R57 K106 ["Padding"]
  LOADN R58 15
  SETTABLEKS R58 R57 K97 ["Spacing"]
  GETTABLEKS R58 R4 K298 ["ForegroundMuted"]
  SETTABLEKS R58 R57 K115 ["BackgroundColor"]
  GETTABLEKS R58 R4 K66 ["MainText"]
  SETTABLEKS R58 R57 K295 ["ImageColor"]
  GETIMPORT R58 K181 [UDim2.fromOffset]
  LOADN R59 28
  LOADN R60 28
  CALL R58 2 1
  SETTABLEKS R58 R57 K120 ["ButtonSize"]
  GETIMPORT R58 K61 [UDim2.new]
  LOADN R59 1
  LOADN R60 213
  LOADN R61 1
  LOADN R62 0
  CALL R58 4 1
  SETTABLEKS R58 R57 K296 ["SliderSize"]
  DUPTABLE R58 K302 [{"Arrow", "Spacing", "HeaderColor", "HeaderIconPosition", "HeaderTextPosition", "HeaderAnchor", "HeaderHeight", "Font"}]
  DUPTABLE R59 K134 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color", "Padding"}]
  LOADK R60 K135 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R60 R59 K131 ["Image"]
  LOADN R60 12
  SETTABLEKS R60 R59 K94 ["Size"]
  GETIMPORT R60 K127 [Vector2.new]
  LOADN R61 24
  LOADN R62 0
  CALL R60 2 1
  SETTABLEKS R60 R59 K132 ["ExpandedOffset"]
  GETIMPORT R60 K127 [Vector2.new]
  LOADN R61 12
  LOADN R62 0
  CALL R60 2 1
  SETTABLEKS R60 R59 K133 ["CollapsedOffset"]
  GETTABLEKS R60 R4 K66 ["MainText"]
  SETTABLEKS R60 R59 K62 ["Color"]
  LOADN R60 6
  SETTABLEKS R60 R59 K106 ["Padding"]
  SETTABLEKS R59 R58 K128 ["Arrow"]
  LOADN R59 5
  SETTABLEKS R59 R58 K97 ["Spacing"]
  GETTABLEKS R59 R4 K255 ["ForegroundContrast"]
  SETTABLEKS R59 R58 K198 ["HeaderColor"]
  GETIMPORT R59 K61 [UDim2.new]
  LOADN R60 0
  LOADN R61 10
  LOADK R62 K5 ["Packages"]
  LOADN R63 0
  CALL R59 4 1
  SETTABLEKS R59 R58 K299 ["HeaderIconPosition"]
  GETIMPORT R59 K61 [UDim2.new]
  LOADN R60 0
  LOADN R61 32
  LOADK R62 K5 ["Packages"]
  LOADN R63 0
  CALL R59 4 1
  SETTABLEKS R59 R58 K300 ["HeaderTextPosition"]
  GETIMPORT R59 K127 [Vector2.new]
  LOADN R60 0
  LOADK R61 K5 ["Packages"]
  CALL R59 2 1
  SETTABLEKS R59 R58 K301 ["HeaderAnchor"]
  LOADN R59 32
  SETTABLEKS R59 R58 K197 ["HeaderHeight"]
  GETIMPORT R59 K250 [Enum.Font.SourceSansBold]
  SETTABLEKS R59 R58 K108 ["Font"]
  DUPTABLE R59 K305 [{"Spacing", "Padding", "TextSpacing", "ImageSize", "WarningIcon", "TextSize", "LabelSize"}]
  LOADN R60 30
  SETTABLEKS R60 R59 K97 ["Spacing"]
  LOADN R60 10
  SETTABLEKS R60 R59 K106 ["Padding"]
  LOADN R60 10
  SETTABLEKS R60 R59 K303 ["TextSpacing"]
  LOADN R60 40
  SETTABLEKS R60 R59 K304 ["ImageSize"]
  LOADK R60 K50 ["DisplayAvatarsComponent"]
  SETTABLEKS R60 R59 K288 ["WarningIcon"]
  GETIMPORT R60 K61 [UDim2.new]
  LOADN R61 1
  LOADN R62 186
  LOADN R63 1
  LOADN R64 0
  CALL R60 4 1
  SETTABLEKS R60 R59 K107 ["TextSize"]
  GETIMPORT R60 K61 [UDim2.new]
  LOADN R61 1
  LOADN R62 0
  LOADN R63 0
  LOADN R64 0
  CALL R60 4 1
  SETTABLEKS R60 R59 K284 ["LabelSize"]
  DUPTABLE R60 K309 [{"Spacing", "Padding", "CloseButtonSize", "GoToButtonSize"}]
  LOADN R61 10
  SETTABLEKS R61 R60 K97 ["Spacing"]
  LOADN R61 10
  SETTABLEKS R61 R60 K106 ["Padding"]
  GETIMPORT R61 K181 [UDim2.fromOffset]
  LOADN R62 120
  LOADN R63 32
  CALL R61 2 1
  SETTABLEKS R61 R60 K307 ["CloseButtonSize"]
  GETIMPORT R61 K181 [UDim2.fromOffset]
  LOADN R62 180
  LOADN R63 32
  CALL R61 2 1
  SETTABLEKS R61 R60 K308 ["GoToButtonSize"]
  NEWTABLE R61 64 0
  GETTABLEKS R62 R5 K18 ["ProgressBar"]
  SETTABLE R26 R61 R62
  GETTABLEKS R62 R5 K20 ["PopUpFrame"]
  SETTABLE R27 R61 R62
  GETTABLEKS R62 R5 K21 ["TabInstructions"]
  SETTABLE R23 R61 R62
  GETTABLEKS R62 R5 K22 ["IconTab"]
  SETTABLE R34 R61 R62
  GETTABLEKS R62 R5 K23 ["MainTabsView"]
  SETTABLE R20 R61 R62
  GETTABLEKS R62 R5 K24 ["MainFooter"]
  SETTABLE R21 R61 R62
  GETTABLEKS R62 R5 K25 ["FinalizerPane"]
  SETTABLE R24 R61 R62
  GETTABLEKS R62 R5 K26 ["FinalizerPaneRow"]
  SETTABLE R25 R61 R62
  GETTABLEKS R62 R5 K27 ["CharacterConversionPane"]
  SETTABLE R28 R61 R62
  GETTABLEKS R62 R5 K28 ["CharacterConversionPaneFooter"]
  SETTABLE R29 R61 R62
  GETTABLEKS R62 R5 K29 ["CharacterConversionList"]
  SETTABLE R30 R61 R62
  GETTABLEKS R62 R5 K30 ["CharacterPreview"]
  SETTABLE R31 R61 R62
  GETTABLEKS R62 R5 K31 ["CharacterSplitView"]
  SETTABLE R32 R61 R62
  GETTABLEKS R62 R5 K32 ["CharacterInstanceTree"]
  SETTABLE R33 R61 R62
  GETTABLEKS R62 R5 K33 ["ExpandableCharacterListItem"]
  SETTABLE R55 R61 R62
  GETTABLEKS R62 R5 K34 ["ScriptIssueRow"]
  SETTABLE R42 R61 R62
  GETTABLEKS R62 R5 K35 ["ScriptIssueTreeView"]
  SETTABLE R44 R61 R62
  GETTABLEKS R62 R5 K36 ["ScriptConversionPane"]
  SETTABLE R35 R61 R62
  GETTABLEKS R62 R5 K37 ["ScriptConversionExpandablePane"]
  SETTABLE R36 R61 R62
  GETTABLEKS R62 R5 K38 ["ReplacementRulesExpandablePane"]
  SETTABLE R37 R61 R62
  GETTABLEKS R62 R5 K39 ["ScriptConversionPaneFooter"]
  SETTABLE R38 R61 R62
  GETTABLEKS R62 R5 K40 ["ScriptConversionPaneHeader"]
  SETTABLE R39 R61 R62
  GETTABLEKS R62 R5 K41 ["ConfirmRevertDialog"]
  SETTABLE R45 R61 R62
  GETTABLEKS R62 R5 K42 ["ReplaceOptionsPane"]
  SETTABLE R46 R61 R62
  GETTABLEKS R62 R5 K43 ["ReplaceOptionItem"]
  SETTABLE R47 R61 R62
  GETTABLEKS R62 R5 K44 ["ScriptIconView"]
  SETTABLE R40 R61 R62
  GETTABLEKS R62 R5 K45 ["LoadingScreenPrompt"]
  SETTABLE R43 R61 R62
  GETTABLEKS R62 R5 K46 ["ScriptConversionConsole"]
  SETTABLE R41 R61 R62
  GETTABLEKS R62 R5 K47 ["AnimationConversionPane"]
  SETTABLE R48 R61 R62
  GETTABLEKS R62 R5 K48 ["AnimationConversionPaneFooter"]
  SETTABLE R50 R61 R62
  GETTABLEKS R62 R5 K49 ["PreviewModelComponent"]
  SETTABLE R52 R61 R62
  GETTABLEKS R62 R5 K50 ["DisplayAvatarsComponent"]
  SETTABLE R53 R61 R62
  GETTABLEKS R62 R5 K51 ["ConvertDebugButtons"]
  SETTABLE R54 R61 R62
  GETTABLEKS R62 R5 K52 ["AnimationPreviewComponent"]
  SETTABLE R51 R61 R62
  GETTABLEKS R62 R5 K53 ["AnimationListRow"]
  SETTABLE R56 R61 R62
  GETTABLEKS R62 R5 K54 ["MediaPlayerControls"]
  SETTABLE R57 R61 R62
  GETTABLEKS R62 R5 K55 ["CollapsiblePane"]
  SETTABLE R58 R61 R62
  GETTABLEKS R62 R5 K56 ["AdapterPane"]
  SETTABLE R49 R61 R62
  GETTABLEKS R62 R5 K57 ["PublishBlockedDialog"]
  SETTABLE R59 R61 R62
  GETTABLEKS R62 R5 K58 ["Buttons"]
  SETTABLE R60 R61 R62
  DUPCLOSURE R62 K310 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R61
  RETURN R62 1
