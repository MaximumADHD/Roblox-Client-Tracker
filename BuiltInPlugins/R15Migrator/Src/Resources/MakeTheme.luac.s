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
  LOADK R13 K25 ["SelectAllRow"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K26 ["FinalizerPane"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K27 ["FinalizerPaneRow"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K28 ["CharacterConversionPane"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K29 ["CharacterConversionPaneFooter"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K30 ["CharacterConversionList"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K31 ["CharacterPreview"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K32 ["CharacterSplitView"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K33 ["CharacterInstanceTree"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K34 ["ExpandableCharacterListItem"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K35 ["ScriptIssueRow"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K36 ["ScriptIssueTreeView"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K37 ["ScriptConversionPane"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K38 ["ScriptConversionExpandablePane"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K39 ["ReplacementRulesExpandablePane"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K40 ["ScriptConversionPaneFooter"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K41 ["ScriptConversionPaneHeader"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K42 ["ConfirmRevertDialog"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K43 ["ReplaceOptionsPane"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K44 ["ReplaceOptionItem"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K45 ["ScriptIconView"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K46 ["LoadingScreenPrompt"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K47 ["ScriptConversionConsole"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K48 ["AnimationConversionPane"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K49 ["AnimationConversionPaneFooter"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K50 ["PreviewModelComponent"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K51 ["DisplayAvatarsComponent"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K52 ["ConvertDebugButtons"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K53 ["AnimationPreviewComponent"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K54 ["AnimationList"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K55 ["AnimationListRow"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K56 ["MediaPlayerControls"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K57 ["CollapsiblePane"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K58 ["AdapterPane"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K59 ["PublishBlockedDialog"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K60 ["Buttons"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  GETIMPORT R11 K63 [UDim2.new]
  LOADN R12 0
  LOADN R13 128
  LOADN R14 0
  LOADN R15 36
  CALL R11 4 1
  DUPTABLE R12 K67 [{"Color", "StretchMargin", "Weight"}]
  GETTABLEKS R13 R4 K68 ["MainText"]
  SETTABLEKS R13 R12 K64 ["Color"]
  LOADN R13 0
  SETTABLEKS R13 R12 K65 ["StretchMargin"]
  LOADN R13 1
  SETTABLEKS R13 R12 K66 ["Weight"]
  DUPTABLE R13 K70 [{"Right"}]
  LOADN R14 10
  SETTABLEKS R14 R13 K69 ["Right"]
  DUPTABLE R14 K75 [{"ResultContainerPadding", "ResultContainerSpacing", "ResultContainerSize", "ResultSize"}]
  DUPTABLE R15 K78 [{"Left", "Right", "Top"}]
  LOADN R16 12
  SETTABLEKS R16 R15 K76 ["Left"]
  LOADN R16 12
  SETTABLEKS R16 R15 K69 ["Right"]
  LOADN R16 5
  SETTABLEKS R16 R15 K77 ["Top"]
  SETTABLEKS R15 R14 K71 ["ResultContainerPadding"]
  LOADN R15 5
  SETTABLEKS R15 R14 K72 ["ResultContainerSpacing"]
  GETIMPORT R15 K63 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 35
  CALL R15 4 1
  SETTABLEKS R15 R14 K73 ["ResultContainerSize"]
  GETIMPORT R15 K63 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 22
  CALL R15 4 1
  SETTABLEKS R15 R14 K74 ["ResultSize"]
  DUPTABLE R15 K83 [{"Complete", "Reverted", "Warning", "Error"}]
  LOADK R16 K84 ["rbxasset://textures/R15Migrator/Icon_Checkmark.png"]
  SETTABLEKS R16 R15 K79 ["Complete"]
  LOADK R16 K85 ["rbxasset://textures/R15Migrator/Icon_Reverted.png"]
  SETTABLEKS R16 R15 K80 ["Reverted"]
  LOADK R16 K86 ["rbxasset://textures/R15Migrator/Icon_Warning.png"]
  SETTABLEKS R16 R15 K81 ["Warning"]
  LOADK R16 K87 ["rbxasset://textures/R15Migrator/Icon_Error.png"]
  SETTABLEKS R16 R15 K82 ["Error"]
  GETIMPORT R16 K90 [string.format]
  LOADK R17 K91 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R18 K92 ["Light"]
  CALL R16 2 1
  GETIMPORT R17 K90 [string.format]
  LOADK R18 K91 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R19 K93 ["Dark"]
  CALL R17 2 1
  NEWTABLE R18 1 0
  GETTABLEKS R19 R4 K94 ["Delete"]
  MOVE R21 R17
  LOADK R22 K95 ["Terrain_Delete.png"]
  CONCAT R20 R21 R22
  SETTABLE R20 R18 R19
  NEWTABLE R19 1 0
  GETTABLEKS R20 R4 K94 ["Delete"]
  MOVE R22 R16
  LOADK R23 K95 ["Terrain_Delete.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  DUPTABLE R20 K98 [{"Size", "TabPaneSize"}]
  GETIMPORT R21 K63 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 1
  LOADN R25 230
  CALL R21 4 1
  SETTABLEKS R21 R20 K96 ["Size"]
  GETIMPORT R21 K63 [UDim2.new]
  LOADN R22 1
  LOADN R23 220
  LOADN R24 1
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K97 ["TabPaneSize"]
  DUPTABLE R21 K103 [{"Spacing", "Size", "IconSize", "IconColor", "IconColorDisabled"}]
  LOADN R22 5
  SETTABLEKS R22 R21 K99 ["Spacing"]
  GETIMPORT R22 K63 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 0
  LOADN R26 26
  CALL R22 4 1
  SETTABLEKS R22 R21 K96 ["Size"]
  GETIMPORT R22 K63 [UDim2.new]
  LOADN R23 0
  LOADN R24 18
  LOADN R25 0
  LOADN R26 18
  CALL R22 4 1
  SETTABLEKS R22 R21 K100 ["IconSize"]
  GETIMPORT R22 K106 [Color3.fromRGB]
  LOADN R23 28
  LOADN R24 197
  LOADN R25 65
  CALL R22 3 1
  SETTABLEKS R22 R21 K101 ["IconColor"]
  GETTABLEKS R22 R4 K107 ["ButtonTextDisabled"]
  SETTABLEKS R22 R21 K102 ["IconColorDisabled"]
  DUPTABLE R22 K112 [{"BackgroundColor", "RowHeight", "TextConfig", "Spacing", "Padding"}]
  GETTABLEKS R23 R4 K113 ["SubBackground2"]
  SETTABLEKS R23 R22 K108 ["BackgroundColor"]
  LOADN R23 32
  SETTABLEKS R23 R22 K109 ["RowHeight"]
  DUPTABLE R23 K117 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R24 K120 [Enum.Font.SourceSans]
  SETTABLEKS R24 R23 K114 ["Font"]
  GETTABLEKS R24 R4 K121 ["TitlebarText"]
  SETTABLEKS R24 R23 K115 ["TextColor"]
  LOADN R24 14
  SETTABLEKS R24 R23 K116 ["TextSize"]
  SETTABLEKS R23 R22 K110 ["TextConfig"]
  LOADN R23 2
  SETTABLEKS R23 R22 K99 ["Spacing"]
  DUPTABLE R23 K122 [{"Left"}]
  LOADN R24 16
  SETTABLEKS R24 R23 K76 ["Left"]
  SETTABLEKS R23 R22 K111 ["Padding"]
  DUPTABLE R23 K67 [{"Color", "StretchMargin", "Weight"}]
  GETTABLEKS R24 R4 K68 ["MainText"]
  SETTABLEKS R24 R23 K64 ["Color"]
  LOADN R24 0
  SETTABLEKS R24 R23 K65 ["StretchMargin"]
  LOADN R24 1
  SETTABLEKS R24 R23 K66 ["Weight"]
  DUPTABLE R24 K123 [{"Padding", "TextSize", "Font"}]
  DUPTABLE R25 K125 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R26 12
  SETTABLEKS R26 R25 K77 ["Top"]
  LOADN R26 12
  SETTABLEKS R26 R25 K124 ["Bottom"]
  LOADN R26 24
  SETTABLEKS R26 R25 K76 ["Left"]
  LOADN R26 24
  SETTABLEKS R26 R25 K69 ["Right"]
  SETTABLEKS R25 R24 K111 ["Padding"]
  LOADN R25 14
  SETTABLEKS R25 R24 K116 ["TextSize"]
  GETIMPORT R25 K120 [Enum.Font.SourceSans]
  SETTABLEKS R25 R24 K114 ["Font"]
  DUPTABLE R25 K132 [{"BackgroundColor", "BodyBackgroundColor", "Padding", "BodyPadding", "FooterHeight", "InstructionsHeight", "ButtonSize", "DialogMinContentSize"}]
  GETTABLEKS R26 R4 K133 ["MainBackground"]
  SETTABLEKS R26 R25 K108 ["BackgroundColor"]
  GETTABLEKS R26 R4 K113 ["SubBackground2"]
  SETTABLEKS R26 R25 K126 ["BodyBackgroundColor"]
  DUPTABLE R26 K134 [{"Left", "Right"}]
  LOADN R27 24
  SETTABLEKS R27 R26 K76 ["Left"]
  LOADN R27 24
  SETTABLEKS R27 R26 K69 ["Right"]
  SETTABLEKS R26 R25 K111 ["Padding"]
  DUPTABLE R26 K125 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R27 12
  SETTABLEKS R27 R26 K77 ["Top"]
  LOADN R27 12
  SETTABLEKS R27 R26 K124 ["Bottom"]
  LOADN R27 12
  SETTABLEKS R27 R26 K76 ["Left"]
  LOADN R27 12
  SETTABLEKS R27 R26 K69 ["Right"]
  SETTABLEKS R26 R25 K127 ["BodyPadding"]
  LOADN R26 72
  SETTABLEKS R26 R25 K128 ["FooterHeight"]
  LOADN R26 84
  SETTABLEKS R26 R25 K129 ["InstructionsHeight"]
  SETTABLEKS R11 R25 K130 ["ButtonSize"]
  GETIMPORT R26 K136 [Vector2.new]
  LOADN R27 144
  LOADN R28 100
  CALL R26 2 1
  SETTABLEKS R26 R25 K131 ["DialogMinContentSize"]
  DUPTABLE R26 K139 [{"Arrow", "Indent", "TextSize", "BackgroundColor"}]
  DUPTABLE R27 K143 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color", "Padding"}]
  LOADK R28 K144 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R28 R27 K140 ["Image"]
  LOADN R28 12
  SETTABLEKS R28 R27 K96 ["Size"]
  GETIMPORT R28 K136 [Vector2.new]
  LOADN R29 24
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K141 ["ExpandedOffset"]
  GETIMPORT R28 K136 [Vector2.new]
  LOADN R29 12
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K142 ["CollapsedOffset"]
  GETTABLEKS R28 R4 K68 ["MainText"]
  SETTABLEKS R28 R27 K64 ["Color"]
  LOADN R28 6
  SETTABLEKS R28 R27 K111 ["Padding"]
  SETTABLEKS R27 R26 K137 ["Arrow"]
  LOADN R27 16
  SETTABLEKS R27 R26 K138 ["Indent"]
  LOADN R27 14
  SETTABLEKS R27 R26 K116 ["TextSize"]
  GETTABLEKS R27 R4 K113 ["SubBackground2"]
  SETTABLEKS R27 R26 K108 ["BackgroundColor"]
  DUPTABLE R27 K147 [{"TextSize", "BackgroundColor", "BackgroundTransparency", "BarHeight", "Padding"}]
  LOADN R28 25
  SETTABLEKS R28 R27 K116 ["TextSize"]
  GETIMPORT R28 K106 [Color3.fromRGB]
  LOADN R29 0
  LOADN R30 0
  LOADN R31 0
  CALL R28 3 1
  SETTABLEKS R28 R27 K108 ["BackgroundColor"]
  LOADK R28 K148 [0.2]
  SETTABLEKS R28 R27 K145 ["BackgroundTransparency"]
  LOADN R28 12
  SETTABLEKS R28 R27 K146 ["BarHeight"]
  DUPTABLE R28 K134 [{"Left", "Right"}]
  LOADN R29 24
  SETTABLEKS R29 R28 K76 ["Left"]
  LOADN R29 24
  SETTABLEKS R29 R28 K69 ["Right"]
  SETTABLEKS R28 R27 K111 ["Padding"]
  DUPTABLE R28 K152 [{"TopBarColor", "BackgroundColor", "Arrow", "TopBarHeight", "TopBarPadding"}]
  GETTABLEKS R29 R4 K133 ["MainBackground"]
  SETTABLEKS R29 R28 K149 ["TopBarColor"]
  GETTABLEKS R29 R4 K153 ["SubBackground"]
  SETTABLEKS R29 R28 K108 ["BackgroundColor"]
  DUPTABLE R29 K156 [{"Image", "Size", "Offset", "Color", "HoverColor"}]
  LOADK R30 K144 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R30 R29 K140 ["Image"]
  LOADN R30 12
  SETTABLEKS R30 R29 K96 ["Size"]
  GETIMPORT R30 K136 [Vector2.new]
  LOADN R31 24
  LOADN R32 0
  CALL R30 2 1
  SETTABLEKS R30 R29 K154 ["Offset"]
  GETTABLEKS R30 R4 K157 ["DimmedText"]
  SETTABLEKS R30 R29 K64 ["Color"]
  GETTABLEKS R30 R4 K158 ["BrightText"]
  SETTABLEKS R30 R29 K155 ["HoverColor"]
  SETTABLEKS R29 R28 K137 ["Arrow"]
  LOADN R29 16
  SETTABLEKS R29 R28 K150 ["TopBarHeight"]
  DUPTABLE R29 K70 [{"Right"}]
  LOADN R30 8
  SETTABLEKS R30 R29 K69 ["Right"]
  SETTABLEKS R29 R28 K151 ["TopBarPadding"]
  DUPTABLE R29 K159 [{"BackgroundColor", "FooterHeight", "InstructionsHeight"}]
  GETTABLEKS R30 R4 K113 ["SubBackground2"]
  SETTABLEKS R30 R29 K108 ["BackgroundColor"]
  LOADN R30 88
  SETTABLEKS R30 R29 K128 ["FooterHeight"]
  LOADN R30 64
  SETTABLEKS R30 R29 K129 ["InstructionsHeight"]
  DUPTABLE R30 K166 [{"Spacing", "ProcessResultBackgroundColor", "SeparatorStyle", "RevertButtonSize", "ConvertButtonSize", "ButtonSpacing", "ButtonPadding"}]
  LOADN R31 5
  SETTABLEKS R31 R30 K99 ["Spacing"]
  GETTABLEKS R31 R4 K113 ["SubBackground2"]
  SETTABLEKS R31 R30 K160 ["ProcessResultBackgroundColor"]
  SETTABLEKS R12 R30 K161 ["SeparatorStyle"]
  SETTABLEKS R11 R30 K162 ["RevertButtonSize"]
  SETTABLEKS R11 R30 K163 ["ConvertButtonSize"]
  LOADN R31 10
  SETTABLEKS R31 R30 K164 ["ButtonSpacing"]
  SETTABLEKS R13 R30 K165 ["ButtonPadding"]
  GETTABLEKS R32 R10 K167 ["Dictionary"]
  GETTABLEKS R31 R32 K168 ["join"]
  MOVE R32 R30
  MOVE R33 R14
  CALL R31 2 1
  MOVE R30 R31
  DUPTABLE R31 K171 [{"RowHeight", "Spacing", "BackgroundColor", "SectionHeadBackgroundColor", "SelectedColor"}]
  LOADN R32 32
  SETTABLEKS R32 R31 K109 ["RowHeight"]
  LOADN R32 4
  SETTABLEKS R32 R31 K99 ["Spacing"]
  GETTABLEKS R32 R4 K113 ["SubBackground2"]
  SETTABLEKS R32 R31 K108 ["BackgroundColor"]
  GETTABLEKS R32 R4 K133 ["MainBackground"]
  SETTABLEKS R32 R31 K169 ["SectionHeadBackgroundColor"]
  GETTABLEKS R32 R4 K172 ["DialogMainButtonSelected"]
  SETTABLEKS R32 R31 K170 ["SelectedColor"]
  DUPTABLE R32 K179 [{"ViewportBackgroundColor", "TreeViewBackgroundColor", "ViewportAspectRatio", "SelectionColor", "ViewportHeight", "TreeHeight"}]
  GETTABLEKS R33 R4 K153 ["SubBackground"]
  SETTABLEKS R33 R32 K173 ["ViewportBackgroundColor"]
  GETTABLEKS R33 R4 K113 ["SubBackground2"]
  SETTABLEKS R33 R32 K174 ["TreeViewBackgroundColor"]
  LOADK R33 K180 [0.77027027027027]
  SETTABLEKS R33 R32 K175 ["ViewportAspectRatio"]
  GETIMPORT R33 K106 [Color3.fromRGB]
  LOADN R34 13
  LOADN R35 105
  LOADN R36 172
  CALL R33 3 1
  SETTABLEKS R33 R32 K176 ["SelectionColor"]
  LOADN R33 44
  SETTABLEKS R33 R32 K177 ["ViewportHeight"]
  LOADN R33 44
  SETTABLEKS R33 R32 K178 ["TreeHeight"]
  DUPTABLE R33 K185 [{"Arrow", "ArrowPadding", "Width", "HorizontalSpacing", "VerticalSpacing"}]
  DUPTABLE R34 K187 [{"Image", "Size", "ImageRectSize", "Offset", "Color"}]
  LOADK R35 K144 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R35 R34 K140 ["Image"]
  GETIMPORT R35 K189 [UDim2.fromOffset]
  LOADN R36 12
  LOADN R37 12
  CALL R35 2 1
  SETTABLEKS R35 R34 K96 ["Size"]
  GETIMPORT R35 K136 [Vector2.new]
  LOADN R36 12
  LOADN R37 12
  CALL R35 2 1
  SETTABLEKS R35 R34 K186 ["ImageRectSize"]
  GETIMPORT R35 K136 [Vector2.new]
  LOADN R36 12
  LOADN R37 0
  CALL R35 2 1
  SETTABLEKS R35 R34 K154 ["Offset"]
  GETTABLEKS R35 R4 K68 ["MainText"]
  SETTABLEKS R35 R34 K64 ["Color"]
  SETTABLEKS R34 R33 K137 ["Arrow"]
  LOADN R34 12
  SETTABLEKS R34 R33 K181 ["ArrowPadding"]
  LOADN R34 200
  SETTABLEKS R34 R33 K182 ["Width"]
  LOADN R34 8
  SETTABLEKS R34 R33 K183 ["HorizontalSpacing"]
  LOADN R34 8
  SETTABLEKS R34 R33 K184 ["VerticalSpacing"]
  DUPTABLE R34 K191 [{"RowHeight", "CompactNoBorder"}]
  LOADN R35 20
  SETTABLEKS R35 R34 K109 ["RowHeight"]
  GETTABLEKS R36 R10 K167 ["Dictionary"]
  GETTABLEKS R35 R36 K168 ["join"]
  MOVE R36 R9
  DUPTABLE R37 K195 [{"Text", "Indent", "RowHeight", "Arrow", "IconPadding", "HoverColor", "SelectedColor", "SelectedTextColor"}]
  DUPTABLE R38 K117 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R39 K120 [Enum.Font.SourceSans]
  SETTABLEKS R39 R38 K114 ["Font"]
  GETTABLEKS R39 R4 K68 ["MainText"]
  SETTABLEKS R39 R38 K115 ["TextColor"]
  LOADN R39 16
  SETTABLEKS R39 R38 K116 ["TextSize"]
  SETTABLEKS R38 R37 K192 ["Text"]
  LOADN R38 16
  SETTABLEKS R38 R37 K138 ["Indent"]
  LOADN R38 20
  SETTABLEKS R38 R37 K109 ["RowHeight"]
  DUPTABLE R38 K196 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color"}]
  LOADK R39 K144 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R39 R38 K140 ["Image"]
  LOADN R39 12
  SETTABLEKS R39 R38 K96 ["Size"]
  GETIMPORT R39 K136 [Vector2.new]
  LOADN R40 24
  LOADN R41 0
  CALL R39 2 1
  SETTABLEKS R39 R38 K141 ["ExpandedOffset"]
  GETIMPORT R39 K136 [Vector2.new]
  LOADN R40 12
  LOADN R41 0
  CALL R39 2 1
  SETTABLEKS R39 R38 K142 ["CollapsedOffset"]
  GETTABLEKS R39 R4 K68 ["MainText"]
  SETTABLEKS R39 R38 K64 ["Color"]
  SETTABLEKS R38 R37 K137 ["Arrow"]
  LOADN R38 3
  SETTABLEKS R38 R37 K193 ["IconPadding"]
  GETTABLEKS R38 R4 K197 ["ButtonHover"]
  SETTABLEKS R38 R37 K155 ["HoverColor"]
  GETTABLEKS R38 R4 K198 ["DialogMainButton"]
  SETTABLEKS R38 R37 K170 ["SelectedColor"]
  GETTABLEKS R38 R4 K199 ["DialogMainButtonText"]
  SETTABLEKS R38 R37 K194 ["SelectedTextColor"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K190 ["CompactNoBorder"]
  DUPTABLE R35 K200 [{"Size", "Color"}]
  LOADN R36 36
  SETTABLEKS R36 R35 K96 ["Size"]
  GETTABLEKS R36 R4 K68 ["MainText"]
  SETTABLEKS R36 R35 K64 ["Color"]
  DUPTABLE R36 K202 [{"ExpandablePaneHeaderSize", "BackgroundColor", "InstructionsHeight"}]
  GETIMPORT R37 K63 [UDim2.new]
  LOADN R38 1
  LOADN R39 0
  LOADN R40 0
  LOADN R41 36
  CALL R37 4 1
  SETTABLEKS R37 R36 K201 ["ExpandablePaneHeaderSize"]
  GETTABLEKS R37 R4 K113 ["SubBackground2"]
  SETTABLEKS R37 R36 K108 ["BackgroundColor"]
  LOADN R37 80
  SETTABLEKS R37 R36 K129 ["InstructionsHeight"]
  DUPTABLE R37 K205 [{"HeaderHeight", "FooterHeight", "HeaderColor", "BackgroundColor"}]
  LOADN R38 42
  SETTABLEKS R38 R37 K203 ["HeaderHeight"]
  LOADN R38 88
  SETTABLEKS R38 R37 K128 ["FooterHeight"]
  GETTABLEKS R38 R4 K153 ["SubBackground"]
  SETTABLEKS R38 R37 K204 ["HeaderColor"]
  GETTABLEKS R38 R4 K113 ["SubBackground2"]
  SETTABLEKS R38 R37 K108 ["BackgroundColor"]
  DUPTABLE R38 K206 [{"HeaderColor", "BackgroundColor"}]
  GETTABLEKS R39 R4 K153 ["SubBackground"]
  SETTABLEKS R39 R38 K204 ["HeaderColor"]
  GETTABLEKS R39 R4 K113 ["SubBackground2"]
  SETTABLEKS R39 R38 K108 ["BackgroundColor"]
  DUPTABLE R39 K207 [{"ProcessResultBackgroundColor", "RevertButtonSize", "ConvertButtonSize", "Spacing", "ButtonSpacing", "SeparatorStyle", "ButtonPadding"}]
  GETTABLEKS R40 R4 K113 ["SubBackground2"]
  SETTABLEKS R40 R39 K160 ["ProcessResultBackgroundColor"]
  SETTABLEKS R11 R39 K162 ["RevertButtonSize"]
  SETTABLEKS R11 R39 K163 ["ConvertButtonSize"]
  LOADN R40 5
  SETTABLEKS R40 R39 K99 ["Spacing"]
  LOADN R40 10
  SETTABLEKS R40 R39 K164 ["ButtonSpacing"]
  SETTABLEKS R12 R39 K161 ["SeparatorStyle"]
  SETTABLEKS R13 R39 K165 ["ButtonPadding"]
  GETTABLEKS R41 R10 K167 ["Dictionary"]
  GETTABLEKS R40 R41 K168 ["join"]
  MOVE R41 R39
  MOVE R42 R14
  CALL R40 2 1
  MOVE R39 R40
  DUPTABLE R40 K213 [{"FilterHeight", "FilterWidth", "ItemHeight", "ListItemTextSize", "ListItemPadding", "Padding", "Spacing", "SeparatorStyle"}]
  LOADN R41 36
  SETTABLEKS R41 R40 K208 ["FilterHeight"]
  LOADN R41 192
  SETTABLEKS R41 R40 K209 ["FilterWidth"]
  LOADN R41 22
  SETTABLEKS R41 R40 K210 ["ItemHeight"]
  LOADN R41 14
  SETTABLEKS R41 R40 K211 ["ListItemTextSize"]
  LOADN R41 6
  SETTABLEKS R41 R40 K212 ["ListItemPadding"]
  DUPTABLE R41 K214 [{"Left", "Top", "Right"}]
  LOADN R42 12
  SETTABLEKS R42 R41 K76 ["Left"]
  LOADN R42 5
  SETTABLEKS R42 R41 K77 ["Top"]
  LOADN R42 12
  SETTABLEKS R42 R41 K69 ["Right"]
  SETTABLEKS R41 R40 K111 ["Padding"]
  LOADN R41 5
  SETTABLEKS R41 R40 K99 ["Spacing"]
  SETTABLEKS R12 R40 K161 ["SeparatorStyle"]
  DUPTABLE R41 K219 [{"StatusImageSize", "Spacing", "CountTextSize", "StatusIcons", "RevertedIconColor"}]
  GETIMPORT R42 K189 [UDim2.fromOffset]
  LOADN R43 16
  LOADN R44 16
  CALL R42 2 1
  SETTABLEKS R42 R41 K215 ["StatusImageSize"]
  LOADN R42 4
  SETTABLEKS R42 R41 K99 ["Spacing"]
  LOADN R42 15
  SETTABLEKS R42 R41 K216 ["CountTextSize"]
  SETTABLEKS R15 R41 K217 ["StatusIcons"]
  GETTABLEKS R42 R4 K158 ["BrightText"]
  SETTABLEKS R42 R41 K218 ["RevertedIconColor"]
  DUPTABLE R42 K221 [{"StatusIcons", "RowHeight", "ConsoleHeight", "BackgroundColor", "IconSize", "Padding", "Arrow"}]
  SETTABLEKS R15 R42 K217 ["StatusIcons"]
  LOADN R43 24
  SETTABLEKS R43 R42 K109 ["RowHeight"]
  LOADN R43 48
  SETTABLEKS R43 R42 K220 ["ConsoleHeight"]
  GETTABLEKS R43 R4 K133 ["MainBackground"]
  SETTABLEKS R43 R42 K108 ["BackgroundColor"]
  GETIMPORT R43 K189 [UDim2.fromOffset]
  LOADN R44 16
  LOADN R45 16
  CALL R43 2 1
  SETTABLEKS R43 R42 K100 ["IconSize"]
  DUPTABLE R43 K134 [{"Left", "Right"}]
  LOADN R44 8
  SETTABLEKS R44 R43 K76 ["Left"]
  LOADN R44 8
  SETTABLEKS R44 R43 K69 ["Right"]
  SETTABLEKS R43 R42 K111 ["Padding"]
  DUPTABLE R43 K156 [{"Image", "Size", "Offset", "Color", "HoverColor"}]
  LOADK R44 K144 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R44 R43 K140 ["Image"]
  LOADN R44 12
  SETTABLEKS R44 R43 K96 ["Size"]
  GETIMPORT R44 K136 [Vector2.new]
  LOADN R45 0
  LOADN R46 0
  CALL R44 2 1
  SETTABLEKS R44 R43 K154 ["Offset"]
  GETTABLEKS R44 R4 K157 ["DimmedText"]
  SETTABLEKS R44 R43 K64 ["Color"]
  GETTABLEKS R44 R4 K158 ["BrightText"]
  SETTABLEKS R44 R43 K155 ["HoverColor"]
  SETTABLEKS R43 R42 K137 ["Arrow"]
  DUPTABLE R43 K224 [{"Arrow", "Spacing", "Indent", "TextSize", "LinkColor", "BackgroundColor", "IconViewSize"}]
  DUPTABLE R44 K143 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color", "Padding"}]
  LOADK R45 K144 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R45 R44 K140 ["Image"]
  LOADN R45 12
  SETTABLEKS R45 R44 K96 ["Size"]
  GETIMPORT R45 K136 [Vector2.new]
  LOADN R46 24
  LOADN R47 0
  CALL R45 2 1
  SETTABLEKS R45 R44 K141 ["ExpandedOffset"]
  GETIMPORT R45 K136 [Vector2.new]
  LOADN R46 12
  LOADN R47 0
  CALL R45 2 1
  SETTABLEKS R45 R44 K142 ["CollapsedOffset"]
  GETTABLEKS R45 R4 K68 ["MainText"]
  SETTABLEKS R45 R44 K64 ["Color"]
  LOADN R45 6
  SETTABLEKS R45 R44 K111 ["Padding"]
  SETTABLEKS R44 R43 K137 ["Arrow"]
  LOADN R44 12
  SETTABLEKS R44 R43 K99 ["Spacing"]
  LOADN R44 16
  SETTABLEKS R44 R43 K138 ["Indent"]
  LOADN R44 14
  SETTABLEKS R44 R43 K116 ["TextSize"]
  GETTABLEKS R44 R4 K225 ["LinkText"]
  SETTABLEKS R44 R43 K222 ["LinkColor"]
  GETTABLEKS R44 R4 K113 ["SubBackground2"]
  SETTABLEKS R44 R43 K108 ["BackgroundColor"]
  GETIMPORT R44 K189 [UDim2.fromOffset]
  LOADN R45 76
  LOADN R46 16
  CALL R44 2 1
  SETTABLEKS R44 R43 K223 ["IconViewSize"]
  DUPTABLE R44 K226 [{"ButtonSize", "Spacing", "Padding"}]
  GETIMPORT R45 K189 [UDim2.fromOffset]
  LOADN R46 72
  LOADN R47 36
  CALL R45 2 1
  SETTABLEKS R45 R44 K130 ["ButtonSize"]
  LOADN R45 8
  SETTABLEKS R45 R44 K99 ["Spacing"]
  DUPTABLE R45 K134 [{"Left", "Right"}]
  LOADN R46 24
  SETTABLEKS R46 R45 K76 ["Left"]
  LOADN R46 24
  SETTABLEKS R46 R45 K69 ["Right"]
  SETTABLEKS R45 R44 K111 ["Padding"]
  DUPTABLE R45 K227 [{"SelectAllRow"}]
  DUPTABLE R46 K228 [{"RowHeight", "Padding"}]
  LOADN R47 20
  SETTABLEKS R47 R46 K109 ["RowHeight"]
  LOADN R47 2
  SETTABLEKS R47 R46 K111 ["Padding"]
  SETTABLEKS R46 R45 K25 ["SelectAllRow"]
  DUPTABLE R46 K230 [{"MinContentSize"}]
  GETIMPORT R47 K136 [Vector2.new]
  LOADN R48 144
  LOADN R49 100
  CALL R47 2 1
  SETTABLEKS R47 R46 K229 ["MinContentSize"]
  DUPTABLE R47 K235 [{"PaneHeight", "TitleTextSize", "SaveRulesSize", "Padding", "Spacing", "ListHeightOffset", "RowHeight", "SeparatorStyle"}]
  LOADN R48 250
  SETTABLEKS R48 R47 K231 ["PaneHeight"]
  LOADN R48 22
  SETTABLEKS R48 R47 K232 ["TitleTextSize"]
  GETIMPORT R48 K189 [UDim2.fromOffset]
  LOADN R49 100
  LOADN R50 36
  CALL R48 2 1
  SETTABLEKS R48 R47 K233 ["SaveRulesSize"]
  DUPTABLE R48 K236 [{"Left", "Right", "Top", "Bottom"}]
  LOADN R49 24
  SETTABLEKS R49 R48 K76 ["Left"]
  LOADN R49 24
  SETTABLEKS R49 R48 K69 ["Right"]
  LOADN R49 24
  SETTABLEKS R49 R48 K77 ["Top"]
  LOADN R49 24
  SETTABLEKS R49 R48 K124 ["Bottom"]
  SETTABLEKS R48 R47 K111 ["Padding"]
  LOADN R48 12
  SETTABLEKS R48 R47 K99 ["Spacing"]
  LOADN R48 194
  SETTABLEKS R48 R47 K234 ["ListHeightOffset"]
  LOADN R48 48
  SETTABLEKS R48 R47 K109 ["RowHeight"]
  SETTABLEKS R23 R47 K161 ["SeparatorStyle"]
  DUPTABLE R48 K241 [{"TextInputSize", "FromLabelSize", "ToggleSize", "ArrowSize", "BackgroundColor", "Spacing", "Arrow", "Padding"}]
  GETIMPORT R49 K189 [UDim2.fromOffset]
  LOADN R50 170
  LOADN R51 36
  CALL R49 2 1
  SETTABLEKS R49 R48 K237 ["TextInputSize"]
  GETIMPORT R49 K189 [UDim2.fromOffset]
  LOADN R50 85
  LOADN R51 36
  CALL R49 2 1
  SETTABLEKS R49 R48 K238 ["FromLabelSize"]
  GETIMPORT R49 K189 [UDim2.fromOffset]
  LOADN R50 48
  LOADN R51 0
  CALL R49 2 1
  SETTABLEKS R49 R48 K239 ["ToggleSize"]
  GETIMPORT R49 K189 [UDim2.fromOffset]
  LOADN R50 24
  LOADN R51 0
  CALL R49 2 1
  SETTABLEKS R49 R48 K240 ["ArrowSize"]
  GETTABLEKS R49 R4 K153 ["SubBackground"]
  SETTABLEKS R49 R48 K108 ["BackgroundColor"]
  LOADN R49 16
  SETTABLEKS R49 R48 K99 ["Spacing"]
  LOADK R49 K242 ["→"]
  SETTABLEKS R49 R48 K137 ["Arrow"]
  DUPTABLE R49 K134 [{"Left", "Right"}]
  LOADN R50 10
  SETTABLEKS R50 R49 K76 ["Left"]
  LOADN R50 10
  SETTABLEKS R50 R49 K69 ["Right"]
  SETTABLEKS R49 R48 K111 ["Padding"]
  DUPTABLE R49 K245 [{"Padding", "Spacing", "PreviewContainerSize", "ListSize", "FooterHeight", "BackgroundColor", "InstructionsHeight"}]
  LOADN R50 20
  SETTABLEKS R50 R49 K111 ["Padding"]
  LOADN R50 10
  SETTABLEKS R50 R49 K99 ["Spacing"]
  GETIMPORT R50 K247 [UDim2.fromScale]
  LOADN R51 1
  LOADK R52 K248 [0.4]
  CALL R50 2 1
  SETTABLEKS R50 R49 K243 ["PreviewContainerSize"]
  GETIMPORT R50 K247 [UDim2.fromScale]
  LOADN R51 1
  LOADK R52 K249 [0.6]
  CALL R50 2 1
  SETTABLEKS R50 R49 K244 ["ListSize"]
  LOADN R50 88
  SETTABLEKS R50 R49 K128 ["FooterHeight"]
  GETTABLEKS R50 R4 K113 ["SubBackground2"]
  SETTABLEKS R50 R49 K108 ["BackgroundColor"]
  LOADN R50 64
  SETTABLEKS R50 R49 K129 ["InstructionsHeight"]
  DUPTABLE R50 K254 [{"PanePadding", "BackgroundColor", "SubTextSize", "Spacing", "VerticalTextSpacing", "BoldFont"}]
  DUPTABLE R51 K255 [{"Left", "Top"}]
  LOADN R52 10
  SETTABLEKS R52 R51 K76 ["Left"]
  LOADN R52 20
  SETTABLEKS R52 R51 K77 ["Top"]
  SETTABLEKS R51 R50 K250 ["PanePadding"]
  GETTABLEKS R51 R4 K113 ["SubBackground2"]
  SETTABLEKS R51 R50 K108 ["BackgroundColor"]
  LOADN R51 13
  SETTABLEKS R51 R50 K251 ["SubTextSize"]
  LOADN R51 5
  SETTABLEKS R51 R50 K99 ["Spacing"]
  LOADN R51 10
  SETTABLEKS R51 R50 K252 ["VerticalTextSpacing"]
  GETIMPORT R51 K257 [Enum.Font.SourceSansBold]
  SETTABLEKS R51 R50 K253 ["BoldFont"]
  DUPTABLE R51 K258 [{"SeparatorStyle", "Spacing", "ButtonPadding"}]
  SETTABLEKS R12 R51 K161 ["SeparatorStyle"]
  LOADN R52 5
  SETTABLEKS R52 R51 K99 ["Spacing"]
  SETTABLEKS R13 R51 K165 ["ButtonPadding"]
  GETTABLEKS R53 R10 K167 ["Dictionary"]
  GETTABLEKS R52 R53 K168 ["join"]
  MOVE R53 R51
  MOVE R54 R14
  CALL R52 2 1
  MOVE R51 R52
  DUPTABLE R52 K259 [{"Spacing", "PreviewContainerSize"}]
  LOADN R53 10
  SETTABLEKS R53 R52 K99 ["Spacing"]
  GETIMPORT R53 K63 [UDim2.new]
  LOADN R54 1
  LOADN R55 0
  LOADN R56 1
  LOADN R57 172
  CALL R53 4 1
  SETTABLEKS R53 R52 K243 ["PreviewContainerSize"]
  DUPTABLE R53 K261 [{"Padding", "BackgroundColor", "ResetButtonSize"}]
  LOADN R54 5
  SETTABLEKS R54 R53 K111 ["Padding"]
  GETTABLEKS R54 R4 K262 ["ForegroundContrast"]
  SETTABLEKS R54 R53 K108 ["BackgroundColor"]
  GETIMPORT R54 K189 [UDim2.fromOffset]
  LOADN R55 28
  LOADN R56 28
  CALL R54 2 1
  SETTABLEKS R54 R53 K260 ["ResetButtonSize"]
  DUPTABLE R54 K265 [{"Arrow", "Padding", "PreviewWindowSize", "PreviewWindowPosition"}]
  DUPTABLE R55 K267 [{"Image", "Size", "ImageRectSize", "Position", "Offset", "Color"}]
  LOADK R56 K144 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R56 R55 K140 ["Image"]
  GETIMPORT R56 K189 [UDim2.fromOffset]
  LOADN R57 12
  LOADN R58 12
  CALL R56 2 1
  SETTABLEKS R56 R55 K96 ["Size"]
  GETIMPORT R56 K136 [Vector2.new]
  LOADN R57 12
  LOADN R58 12
  CALL R56 2 1
  SETTABLEKS R56 R55 K186 ["ImageRectSize"]
  GETIMPORT R56 K63 [UDim2.new]
  LOADK R57 K12 ["Util"]
  LOADN R58 250
  LOADK R59 K12 ["Util"]
  LOADN R60 250
  CALL R56 4 1
  SETTABLEKS R56 R55 K266 ["Position"]
  GETIMPORT R56 K136 [Vector2.new]
  LOADN R57 12
  LOADN R58 0
  CALL R56 2 1
  SETTABLEKS R56 R55 K154 ["Offset"]
  GETTABLEKS R56 R4 K68 ["MainText"]
  SETTABLEKS R56 R55 K64 ["Color"]
  SETTABLEKS R55 R54 K137 ["Arrow"]
  LOADN R55 10
  SETTABLEKS R55 R54 K111 ["Padding"]
  GETIMPORT R55 K63 [UDim2.new]
  LOADK R56 K12 ["Util"]
  LOADN R57 246
  LOADN R58 1
  LOADN R59 0
  CALL R55 4 1
  SETTABLEKS R55 R54 K263 ["PreviewWindowSize"]
  GETIMPORT R55 K63 [UDim2.new]
  LOADK R56 K12 ["Util"]
  LOADN R57 10
  LOADN R58 0
  LOADN R59 0
  CALL R55 4 1
  SETTABLEKS R55 R54 K264 ["PreviewWindowPosition"]
  DUPTABLE R55 K269 [{"ButtonSize", "Spacing"}]
  SETTABLEKS R11 R55 K130 ["ButtonSize"]
  LOADN R56 10
  SETTABLEKS R56 R55 K99 ["Spacing"]
  DUPTABLE R56 K274 [{"BackgroundColor", "SelectedBorderColor", "SelectedColor", "StatusImageSize", "Icons", "Content", "Header"}]
  GETTABLEKS R57 R4 K113 ["SubBackground2"]
  SETTABLEKS R57 R56 K108 ["BackgroundColor"]
  GETTABLEKS R57 R4 K172 ["DialogMainButtonSelected"]
  SETTABLEKS R57 R56 K270 ["SelectedBorderColor"]
  GETTABLEKS R57 R4 K133 ["MainBackground"]
  SETTABLEKS R57 R56 K170 ["SelectedColor"]
  GETIMPORT R57 K189 [UDim2.fromOffset]
  LOADN R58 16
  LOADN R59 16
  CALL R57 2 1
  SETTABLEKS R57 R56 K215 ["StatusImageSize"]
  DUPTABLE R57 K276 [{"Success", "Warning"}]
  LOADK R58 K84 ["rbxasset://textures/R15Migrator/Icon_Checkmark.png"]
  SETTABLEKS R58 R57 K275 ["Success"]
  LOADK R58 K86 ["rbxasset://textures/R15Migrator/Icon_Warning.png"]
  SETTABLEKS R58 R57 K81 ["Warning"]
  SETTABLEKS R57 R56 K271 ["Icons"]
  DUPTABLE R57 K277 [{"Padding"}]
  DUPTABLE R58 K278 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R59 28
  SETTABLEKS R59 R58 K76 ["Left"]
  LOADN R59 10
  SETTABLEKS R59 R58 K77 ["Top"]
  LOADN R59 28
  SETTABLEKS R59 R58 K69 ["Right"]
  LOADN R59 10
  SETTABLEKS R59 R58 K124 ["Bottom"]
  SETTABLEKS R58 R57 K111 ["Padding"]
  SETTABLEKS R57 R56 K272 ["Content"]
  DUPTABLE R57 K281 [{"Arrow", "HorizontalAlignment", "Padding", "Size", "Spacing", "Text", "VerticalAlignment"}]
  NEWTABLE R58 8 0
  GETTABLEKS R59 R4 K68 ["MainText"]
  SETTABLEKS R59 R58 K64 ["Color"]
  LOADK R59 K144 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R59 R58 K140 ["Image"]
  GETIMPORT R59 K136 [Vector2.new]
  LOADN R60 12
  LOADN R61 0
  CALL R59 2 1
  SETTABLEKS R59 R58 K282 ["ImageRectOffset"]
  GETIMPORT R59 K136 [Vector2.new]
  LOADN R60 12
  LOADN R61 12
  CALL R59 2 1
  SETTABLEKS R59 R58 K186 ["ImageRectSize"]
  GETIMPORT R59 K189 [UDim2.fromOffset]
  LOADN R60 12
  LOADN R61 12
  CALL R59 2 1
  SETTABLEKS R59 R58 K96 ["Size"]
  GETTABLEKS R59 R7 K283 ["Selected"]
  DUPTABLE R60 K284 [{"ImageRectOffset"}]
  GETIMPORT R61 K136 [Vector2.new]
  LOADN R62 24
  LOADN R63 0
  CALL R61 2 1
  SETTABLEKS R61 R60 K282 ["ImageRectOffset"]
  SETTABLE R60 R58 R59
  SETTABLEKS R58 R57 K137 ["Arrow"]
  GETIMPORT R58 K285 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R58 R57 K279 ["HorizontalAlignment"]
  DUPTABLE R58 K134 [{"Left", "Right"}]
  LOADN R59 16
  SETTABLEKS R59 R58 K76 ["Left"]
  LOADN R59 16
  SETTABLEKS R59 R58 K69 ["Right"]
  SETTABLEKS R58 R57 K111 ["Padding"]
  GETIMPORT R58 K63 [UDim2.new]
  LOADN R59 1
  LOADN R60 0
  LOADN R61 0
  LOADN R62 32
  CALL R58 4 1
  SETTABLEKS R58 R57 K96 ["Size"]
  LOADN R58 6
  SETTABLEKS R58 R57 K99 ["Spacing"]
  DUPTABLE R58 K117 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R59 K120 [Enum.Font.SourceSans]
  SETTABLEKS R59 R58 K114 ["Font"]
  GETTABLEKS R59 R4 K121 ["TitlebarText"]
  SETTABLEKS R59 R58 K115 ["TextColor"]
  LOADN R59 14
  SETTABLEKS R59 R58 K116 ["TextSize"]
  SETTABLEKS R58 R57 K192 ["Text"]
  GETIMPORT R58 K287 [Enum.VerticalAlignment.Center]
  SETTABLEKS R58 R57 K280 ["VerticalAlignment"]
  SETTABLEKS R57 R56 K273 ["Header"]
  DUPTABLE R57 K227 [{"SelectAllRow"}]
  DUPTABLE R58 K228 [{"RowHeight", "Padding"}]
  LOADN R59 20
  SETTABLEKS R59 R58 K109 ["RowHeight"]
  LOADN R59 2
  SETTABLEKS R59 R58 K111 ["Padding"]
  SETTABLEKS R58 R57 K25 ["SelectAllRow"]
  DUPTABLE R58 K299 [{"Offset", "Padding", "ContentPadding", "Anchor", "LabelSize", "Label1Position", "Label2Position", "LoadingIcon", "WarningIcon", "FailedIcon", "DoneIcon", "Arrow", "ArrowPosition", "IconPosition", "IconSize", "Spacing", "TextSize"}]
  GETIMPORT R59 K189 [UDim2.fromOffset]
  LOADN R60 248
  LOADN R61 0
  CALL R59 2 1
  SETTABLEKS R59 R58 K154 ["Offset"]
  LOADN R59 2
  SETTABLEKS R59 R58 K111 ["Padding"]
  DUPTABLE R59 K134 [{"Left", "Right"}]
  LOADN R60 20
  SETTABLEKS R60 R59 K76 ["Left"]
  LOADN R60 20
  SETTABLEKS R60 R59 K69 ["Right"]
  SETTABLEKS R59 R58 K288 ["ContentPadding"]
  GETIMPORT R59 K136 [Vector2.new]
  LOADN R60 0
  LOADK R61 K12 ["Util"]
  CALL R59 2 1
  SETTABLEKS R59 R58 K289 ["Anchor"]
  GETIMPORT R59 K63 [UDim2.new]
  LOADK R60 K12 ["Util"]
  LOADN R61 222
  LOADN R62 1
  LOADN R63 0
  CALL R59 4 1
  SETTABLEKS R59 R58 K290 ["LabelSize"]
  GETIMPORT R59 K63 [UDim2.new]
  LOADN R60 0
  LOADN R61 0
  LOADK R62 K12 ["Util"]
  LOADN R63 0
  CALL R59 4 1
  SETTABLEKS R59 R58 K291 ["Label1Position"]
  GETIMPORT R59 K63 [UDim2.new]
  LOADK R60 K12 ["Util"]
  LOADN R61 10
  LOADK R62 K12 ["Util"]
  LOADN R63 0
  CALL R59 4 1
  SETTABLEKS R59 R58 K292 ["Label2Position"]
  LOADK R59 K44 ["ReplaceOptionItem"]
  SETTABLEKS R59 R58 K293 ["LoadingIcon"]
  LOADK R59 K86 ["rbxasset://textures/R15Migrator/Icon_Warning.png"]
  SETTABLEKS R59 R58 K294 ["WarningIcon"]
  LOADK R59 K87 ["rbxasset://textures/R15Migrator/Icon_Error.png"]
  SETTABLEKS R59 R58 K295 ["FailedIcon"]
  LOADK R59 K84 ["rbxasset://textures/R15Migrator/Icon_Checkmark.png"]
  SETTABLEKS R59 R58 K296 ["DoneIcon"]
  LOADK R59 K242 ["→"]
  SETTABLEKS R59 R58 K137 ["Arrow"]
  GETIMPORT R59 K63 [UDim2.new]
  LOADK R60 K12 ["Util"]
  LOADN R61 232
  LOADK R62 K12 ["Util"]
  LOADN R63 0
  CALL R59 4 1
  SETTABLEKS R59 R58 K297 ["ArrowPosition"]
  GETIMPORT R59 K63 [UDim2.new]
  LOADN R60 1
  LOADN R61 240
  LOADK R62 K12 ["Util"]
  LOADN R63 0
  CALL R59 4 1
  SETTABLEKS R59 R58 K298 ["IconPosition"]
  GETIMPORT R59 K189 [UDim2.fromOffset]
  LOADN R60 16
  LOADN R61 16
  CALL R59 2 1
  SETTABLEKS R59 R58 K100 ["IconSize"]
  LOADN R59 10
  SETTABLEKS R59 R58 K99 ["Spacing"]
  LOADN R59 14
  SETTABLEKS R59 R58 K116 ["TextSize"]
  DUPTABLE R59 K303 [{"Padding", "Spacing", "BackgroundColor", "ImageColor", "ButtonSize", "SliderSize"}]
  LOADN R60 2
  SETTABLEKS R60 R59 K111 ["Padding"]
  LOADN R60 15
  SETTABLEKS R60 R59 K99 ["Spacing"]
  GETTABLEKS R60 R4 K304 ["ForegroundMuted"]
  SETTABLEKS R60 R59 K108 ["BackgroundColor"]
  GETTABLEKS R60 R4 K68 ["MainText"]
  SETTABLEKS R60 R59 K301 ["ImageColor"]
  GETIMPORT R60 K189 [UDim2.fromOffset]
  LOADN R61 28
  LOADN R62 28
  CALL R60 2 1
  SETTABLEKS R60 R59 K130 ["ButtonSize"]
  GETIMPORT R60 K63 [UDim2.new]
  LOADN R61 1
  LOADN R62 213
  LOADN R63 1
  LOADN R64 0
  CALL R60 4 1
  SETTABLEKS R60 R59 K302 ["SliderSize"]
  DUPTABLE R60 K308 [{"Arrow", "Spacing", "HeaderColor", "HeaderIconPosition", "HeaderTextPosition", "HeaderAnchor", "HeaderHeight", "Font"}]
  DUPTABLE R61 K143 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color", "Padding"}]
  LOADK R62 K144 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R62 R61 K140 ["Image"]
  LOADN R62 12
  SETTABLEKS R62 R61 K96 ["Size"]
  GETIMPORT R62 K136 [Vector2.new]
  LOADN R63 24
  LOADN R64 0
  CALL R62 2 1
  SETTABLEKS R62 R61 K141 ["ExpandedOffset"]
  GETIMPORT R62 K136 [Vector2.new]
  LOADN R63 12
  LOADN R64 0
  CALL R62 2 1
  SETTABLEKS R62 R61 K142 ["CollapsedOffset"]
  GETTABLEKS R62 R4 K68 ["MainText"]
  SETTABLEKS R62 R61 K64 ["Color"]
  LOADN R62 6
  SETTABLEKS R62 R61 K111 ["Padding"]
  SETTABLEKS R61 R60 K137 ["Arrow"]
  LOADN R61 5
  SETTABLEKS R61 R60 K99 ["Spacing"]
  GETTABLEKS R61 R4 K262 ["ForegroundContrast"]
  SETTABLEKS R61 R60 K204 ["HeaderColor"]
  GETIMPORT R61 K63 [UDim2.new]
  LOADN R62 0
  LOADN R63 10
  LOADK R64 K12 ["Util"]
  LOADN R65 0
  CALL R61 4 1
  SETTABLEKS R61 R60 K305 ["HeaderIconPosition"]
  GETIMPORT R61 K63 [UDim2.new]
  LOADN R62 0
  LOADN R63 32
  LOADK R64 K12 ["Util"]
  LOADN R65 0
  CALL R61 4 1
  SETTABLEKS R61 R60 K306 ["HeaderTextPosition"]
  GETIMPORT R61 K136 [Vector2.new]
  LOADN R62 0
  LOADK R63 K12 ["Util"]
  CALL R61 2 1
  SETTABLEKS R61 R60 K307 ["HeaderAnchor"]
  LOADN R61 32
  SETTABLEKS R61 R60 K203 ["HeaderHeight"]
  GETIMPORT R61 K257 [Enum.Font.SourceSansBold]
  SETTABLEKS R61 R60 K114 ["Font"]
  DUPTABLE R61 K311 [{"Spacing", "Padding", "TextSpacing", "ImageSize", "WarningIcon", "TextSize", "LabelSize"}]
  LOADN R62 30
  SETTABLEKS R62 R61 K99 ["Spacing"]
  LOADN R62 10
  SETTABLEKS R62 R61 K111 ["Padding"]
  LOADN R62 10
  SETTABLEKS R62 R61 K309 ["TextSpacing"]
  LOADN R62 40
  SETTABLEKS R62 R61 K310 ["ImageSize"]
  LOADK R62 K56 ["MediaPlayerControls"]
  SETTABLEKS R62 R61 K294 ["WarningIcon"]
  GETIMPORT R62 K63 [UDim2.new]
  LOADN R63 1
  LOADN R64 186
  LOADN R65 1
  LOADN R66 0
  CALL R62 4 1
  SETTABLEKS R62 R61 K116 ["TextSize"]
  GETIMPORT R62 K63 [UDim2.new]
  LOADN R63 1
  LOADN R64 0
  LOADN R65 0
  LOADN R66 0
  CALL R62 4 1
  SETTABLEKS R62 R61 K290 ["LabelSize"]
  DUPTABLE R62 K315 [{"Spacing", "Padding", "CloseButtonSize", "GoToButtonSize"}]
  LOADN R63 10
  SETTABLEKS R63 R62 K99 ["Spacing"]
  LOADN R63 10
  SETTABLEKS R63 R62 K111 ["Padding"]
  GETIMPORT R63 K189 [UDim2.fromOffset]
  LOADN R64 120
  LOADN R65 32
  CALL R63 2 1
  SETTABLEKS R63 R62 K313 ["CloseButtonSize"]
  GETIMPORT R63 K189 [UDim2.fromOffset]
  LOADN R64 180
  LOADN R65 32
  CALL R63 2 1
  SETTABLEKS R63 R62 K314 ["GoToButtonSize"]
  NEWTABLE R63 64 0
  GETTABLEKS R64 R5 K18 ["ProgressBar"]
  SETTABLE R27 R63 R64
  GETTABLEKS R64 R5 K20 ["PopUpFrame"]
  SETTABLE R28 R63 R64
  GETTABLEKS R64 R5 K21 ["TabInstructions"]
  SETTABLE R24 R63 R64
  GETTABLEKS R64 R5 K22 ["IconTab"]
  SETTABLE R35 R63 R64
  GETTABLEKS R64 R5 K23 ["MainTabsView"]
  SETTABLE R20 R63 R64
  GETTABLEKS R64 R5 K24 ["MainFooter"]
  SETTABLE R21 R63 R64
  GETTABLEKS R64 R5 K25 ["SelectAllRow"]
  SETTABLE R22 R63 R64
  GETTABLEKS R64 R5 K26 ["FinalizerPane"]
  SETTABLE R25 R63 R64
  GETTABLEKS R64 R5 K27 ["FinalizerPaneRow"]
  SETTABLE R26 R63 R64
  GETTABLEKS R64 R5 K28 ["CharacterConversionPane"]
  SETTABLE R29 R63 R64
  GETTABLEKS R64 R5 K29 ["CharacterConversionPaneFooter"]
  SETTABLE R30 R63 R64
  GETTABLEKS R64 R5 K30 ["CharacterConversionList"]
  SETTABLE R31 R63 R64
  GETTABLEKS R64 R5 K31 ["CharacterPreview"]
  SETTABLE R32 R63 R64
  GETTABLEKS R64 R5 K32 ["CharacterSplitView"]
  SETTABLE R33 R63 R64
  GETTABLEKS R64 R5 K33 ["CharacterInstanceTree"]
  SETTABLE R34 R63 R64
  GETTABLEKS R64 R5 K34 ["ExpandableCharacterListItem"]
  SETTABLE R56 R63 R64
  GETTABLEKS R64 R5 K35 ["ScriptIssueRow"]
  SETTABLE R43 R63 R64
  GETTABLEKS R64 R5 K36 ["ScriptIssueTreeView"]
  SETTABLE R45 R63 R64
  GETTABLEKS R64 R5 K37 ["ScriptConversionPane"]
  SETTABLE R36 R63 R64
  GETTABLEKS R64 R5 K38 ["ScriptConversionExpandablePane"]
  SETTABLE R37 R63 R64
  GETTABLEKS R64 R5 K39 ["ReplacementRulesExpandablePane"]
  SETTABLE R38 R63 R64
  GETTABLEKS R64 R5 K40 ["ScriptConversionPaneFooter"]
  SETTABLE R39 R63 R64
  GETTABLEKS R64 R5 K41 ["ScriptConversionPaneHeader"]
  SETTABLE R40 R63 R64
  GETTABLEKS R64 R5 K42 ["ConfirmRevertDialog"]
  SETTABLE R46 R63 R64
  GETTABLEKS R64 R5 K43 ["ReplaceOptionsPane"]
  SETTABLE R47 R63 R64
  GETTABLEKS R64 R5 K44 ["ReplaceOptionItem"]
  SETTABLE R48 R63 R64
  GETTABLEKS R64 R5 K45 ["ScriptIconView"]
  SETTABLE R41 R63 R64
  GETTABLEKS R64 R5 K46 ["LoadingScreenPrompt"]
  SETTABLE R44 R63 R64
  GETTABLEKS R64 R5 K47 ["ScriptConversionConsole"]
  SETTABLE R42 R63 R64
  GETTABLEKS R64 R5 K48 ["AnimationConversionPane"]
  SETTABLE R49 R63 R64
  GETTABLEKS R64 R5 K49 ["AnimationConversionPaneFooter"]
  SETTABLE R51 R63 R64
  GETTABLEKS R64 R5 K50 ["PreviewModelComponent"]
  SETTABLE R53 R63 R64
  GETTABLEKS R64 R5 K51 ["DisplayAvatarsComponent"]
  SETTABLE R54 R63 R64
  GETTABLEKS R64 R5 K52 ["ConvertDebugButtons"]
  SETTABLE R55 R63 R64
  GETTABLEKS R64 R5 K53 ["AnimationPreviewComponent"]
  SETTABLE R52 R63 R64
  GETTABLEKS R64 R5 K54 ["AnimationList"]
  SETTABLE R57 R63 R64
  GETTABLEKS R64 R5 K55 ["AnimationListRow"]
  SETTABLE R58 R63 R64
  GETTABLEKS R64 R5 K56 ["MediaPlayerControls"]
  SETTABLE R59 R63 R64
  GETTABLEKS R64 R5 K57 ["CollapsiblePane"]
  SETTABLE R60 R63 R64
  GETTABLEKS R64 R5 K58 ["AdapterPane"]
  SETTABLE R50 R63 R64
  GETTABLEKS R64 R5 K59 ["PublishBlockedDialog"]
  SETTABLE R61 R63 R64
  GETTABLEKS R64 R5 K60 ["Buttons"]
  SETTABLE R62 R63 R64
  DUPCLOSURE R64 K316 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R63
  RETURN R64 1
