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
  LOADK R13 K43 ["ConfirmCommitDialog"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K44 ["ReplaceOptionsPane"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K45 ["ReplaceOptionItem"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K46 ["ScriptIconView"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K47 ["LoadingScreenPrompt"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K48 ["ScriptConversionConsole"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K49 ["AnimationConversionPane"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K50 ["AnimationConversionPaneFooter"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K51 ["PreviewModelComponent"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K52 ["DisplayAvatarsComponent"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K53 ["ConvertDebugButtons"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K54 ["AnimationPreviewComponent"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K55 ["AnimationList"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K56 ["AnimationListRow"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K57 ["MediaPlayerControls"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K58 ["CollapsiblePane"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K59 ["AdapterPane"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K60 ["PublishBlockedDialog"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  LOADK R13 K61 ["Buttons"]
  NAMECALL R11 R5 K19 ["add"]
  CALL R11 2 0
  GETIMPORT R11 K64 [UDim2.new]
  LOADN R12 0
  LOADN R13 128
  LOADN R14 0
  LOADN R15 36
  CALL R11 4 1
  DUPTABLE R12 K68 [{"Color", "StretchMargin", "Weight"}]
  GETTABLEKS R13 R4 K69 ["MainText"]
  SETTABLEKS R13 R12 K65 ["Color"]
  LOADN R13 0
  SETTABLEKS R13 R12 K66 ["StretchMargin"]
  LOADN R13 1
  SETTABLEKS R13 R12 K67 ["Weight"]
  DUPTABLE R13 K71 [{"Right"}]
  LOADN R14 10
  SETTABLEKS R14 R13 K70 ["Right"]
  DUPTABLE R14 K76 [{"ResultContainerPadding", "ResultContainerSpacing", "ResultContainerSize", "ResultSize"}]
  DUPTABLE R15 K79 [{"Left", "Right", "Top"}]
  LOADN R16 12
  SETTABLEKS R16 R15 K77 ["Left"]
  LOADN R16 12
  SETTABLEKS R16 R15 K70 ["Right"]
  LOADN R16 5
  SETTABLEKS R16 R15 K78 ["Top"]
  SETTABLEKS R15 R14 K72 ["ResultContainerPadding"]
  LOADN R15 5
  SETTABLEKS R15 R14 K73 ["ResultContainerSpacing"]
  GETIMPORT R15 K64 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 35
  CALL R15 4 1
  SETTABLEKS R15 R14 K74 ["ResultContainerSize"]
  GETIMPORT R15 K64 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 22
  CALL R15 4 1
  SETTABLEKS R15 R14 K75 ["ResultSize"]
  DUPTABLE R15 K84 [{"Complete", "Reverted", "Warning", "Error"}]
  LOADK R16 K85 ["rbxasset://textures/R15Migrator/Icon_Checkmark.png"]
  SETTABLEKS R16 R15 K80 ["Complete"]
  LOADK R16 K86 ["rbxasset://textures/R15Migrator/Icon_Reverted.png"]
  SETTABLEKS R16 R15 K81 ["Reverted"]
  LOADK R16 K87 ["rbxasset://textures/R15Migrator/Icon_Warning.png"]
  SETTABLEKS R16 R15 K82 ["Warning"]
  LOADK R16 K88 ["rbxasset://textures/R15Migrator/Icon_Error.png"]
  SETTABLEKS R16 R15 K83 ["Error"]
  GETIMPORT R16 K91 [string.format]
  LOADK R17 K92 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R18 K93 ["Light"]
  CALL R16 2 1
  GETIMPORT R17 K91 [string.format]
  LOADK R18 K92 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R19 K94 ["Dark"]
  CALL R17 2 1
  NEWTABLE R18 1 0
  GETTABLEKS R19 R4 K95 ["Delete"]
  MOVE R21 R17
  LOADK R22 K96 ["Terrain_Delete.png"]
  CONCAT R20 R21 R22
  SETTABLE R20 R18 R19
  NEWTABLE R19 1 0
  GETTABLEKS R20 R4 K95 ["Delete"]
  MOVE R22 R16
  LOADK R23 K96 ["Terrain_Delete.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  DUPTABLE R20 K99 [{"Size", "TabPaneSize"}]
  GETIMPORT R21 K64 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 1
  LOADN R25 230
  CALL R21 4 1
  SETTABLEKS R21 R20 K97 ["Size"]
  GETIMPORT R21 K64 [UDim2.new]
  LOADN R22 1
  LOADN R23 220
  LOADN R24 1
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K98 ["TabPaneSize"]
  DUPTABLE R21 K104 [{"Spacing", "Size", "IconSize", "IconColor", "IconColorDisabled"}]
  LOADN R22 5
  SETTABLEKS R22 R21 K100 ["Spacing"]
  GETIMPORT R22 K64 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 0
  LOADN R26 26
  CALL R22 4 1
  SETTABLEKS R22 R21 K97 ["Size"]
  GETIMPORT R22 K64 [UDim2.new]
  LOADN R23 0
  LOADN R24 18
  LOADN R25 0
  LOADN R26 18
  CALL R22 4 1
  SETTABLEKS R22 R21 K101 ["IconSize"]
  GETIMPORT R22 K107 [Color3.fromRGB]
  LOADN R23 28
  LOADN R24 197
  LOADN R25 65
  CALL R22 3 1
  SETTABLEKS R22 R21 K102 ["IconColor"]
  GETTABLEKS R22 R4 K108 ["ButtonTextDisabled"]
  SETTABLEKS R22 R21 K103 ["IconColorDisabled"]
  DUPTABLE R22 K113 [{"BackgroundColor", "RowHeight", "TextConfig", "Spacing", "Padding"}]
  GETTABLEKS R23 R4 K114 ["SubBackground2"]
  SETTABLEKS R23 R22 K109 ["BackgroundColor"]
  LOADN R23 32
  SETTABLEKS R23 R22 K110 ["RowHeight"]
  DUPTABLE R23 K118 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R24 K121 [Enum.Font.SourceSans]
  SETTABLEKS R24 R23 K115 ["Font"]
  GETTABLEKS R24 R4 K122 ["TitlebarText"]
  SETTABLEKS R24 R23 K116 ["TextColor"]
  LOADN R24 14
  SETTABLEKS R24 R23 K117 ["TextSize"]
  SETTABLEKS R23 R22 K111 ["TextConfig"]
  LOADN R23 2
  SETTABLEKS R23 R22 K100 ["Spacing"]
  DUPTABLE R23 K123 [{"Left"}]
  LOADN R24 16
  SETTABLEKS R24 R23 K77 ["Left"]
  SETTABLEKS R23 R22 K112 ["Padding"]
  DUPTABLE R23 K68 [{"Color", "StretchMargin", "Weight"}]
  GETTABLEKS R24 R4 K69 ["MainText"]
  SETTABLEKS R24 R23 K65 ["Color"]
  LOADN R24 0
  SETTABLEKS R24 R23 K66 ["StretchMargin"]
  LOADN R24 1
  SETTABLEKS R24 R23 K67 ["Weight"]
  DUPTABLE R24 K124 [{"Padding", "TextSize", "Font"}]
  DUPTABLE R25 K126 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R26 12
  SETTABLEKS R26 R25 K78 ["Top"]
  LOADN R26 12
  SETTABLEKS R26 R25 K125 ["Bottom"]
  LOADN R26 24
  SETTABLEKS R26 R25 K77 ["Left"]
  LOADN R26 24
  SETTABLEKS R26 R25 K70 ["Right"]
  SETTABLEKS R25 R24 K112 ["Padding"]
  LOADN R25 14
  SETTABLEKS R25 R24 K117 ["TextSize"]
  GETIMPORT R25 K121 [Enum.Font.SourceSans]
  SETTABLEKS R25 R24 K115 ["Font"]
  DUPTABLE R25 K133 [{"BackgroundColor", "BodyBackgroundColor", "Padding", "BodyPadding", "FooterHeight", "InstructionsHeight", "ButtonSize", "DialogMinContentSize"}]
  GETTABLEKS R26 R4 K134 ["MainBackground"]
  SETTABLEKS R26 R25 K109 ["BackgroundColor"]
  GETTABLEKS R26 R4 K114 ["SubBackground2"]
  SETTABLEKS R26 R25 K127 ["BodyBackgroundColor"]
  DUPTABLE R26 K135 [{"Left", "Right"}]
  LOADN R27 24
  SETTABLEKS R27 R26 K77 ["Left"]
  LOADN R27 24
  SETTABLEKS R27 R26 K70 ["Right"]
  SETTABLEKS R26 R25 K112 ["Padding"]
  DUPTABLE R26 K126 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R27 12
  SETTABLEKS R27 R26 K78 ["Top"]
  LOADN R27 12
  SETTABLEKS R27 R26 K125 ["Bottom"]
  LOADN R27 12
  SETTABLEKS R27 R26 K77 ["Left"]
  LOADN R27 12
  SETTABLEKS R27 R26 K70 ["Right"]
  SETTABLEKS R26 R25 K128 ["BodyPadding"]
  LOADN R26 72
  SETTABLEKS R26 R25 K129 ["FooterHeight"]
  LOADN R26 84
  SETTABLEKS R26 R25 K130 ["InstructionsHeight"]
  SETTABLEKS R11 R25 K131 ["ButtonSize"]
  GETIMPORT R26 K137 [Vector2.new]
  LOADN R27 144
  LOADN R28 100
  CALL R26 2 1
  SETTABLEKS R26 R25 K132 ["DialogMinContentSize"]
  DUPTABLE R26 K140 [{"Arrow", "Indent", "TextSize", "BackgroundColor"}]
  DUPTABLE R27 K144 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color", "Padding"}]
  LOADK R28 K145 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R28 R27 K141 ["Image"]
  LOADN R28 12
  SETTABLEKS R28 R27 K97 ["Size"]
  GETIMPORT R28 K137 [Vector2.new]
  LOADN R29 24
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K142 ["ExpandedOffset"]
  GETIMPORT R28 K137 [Vector2.new]
  LOADN R29 12
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K143 ["CollapsedOffset"]
  GETTABLEKS R28 R4 K69 ["MainText"]
  SETTABLEKS R28 R27 K65 ["Color"]
  LOADN R28 6
  SETTABLEKS R28 R27 K112 ["Padding"]
  SETTABLEKS R27 R26 K138 ["Arrow"]
  LOADN R27 16
  SETTABLEKS R27 R26 K139 ["Indent"]
  LOADN R27 14
  SETTABLEKS R27 R26 K117 ["TextSize"]
  GETTABLEKS R27 R4 K114 ["SubBackground2"]
  SETTABLEKS R27 R26 K109 ["BackgroundColor"]
  DUPTABLE R27 K148 [{"TextSize", "BackgroundColor", "BackgroundTransparency", "BarHeight", "Padding"}]
  LOADN R28 25
  SETTABLEKS R28 R27 K117 ["TextSize"]
  GETIMPORT R28 K107 [Color3.fromRGB]
  LOADN R29 0
  LOADN R30 0
  LOADN R31 0
  CALL R28 3 1
  SETTABLEKS R28 R27 K109 ["BackgroundColor"]
  LOADK R28 K149 [0.2]
  SETTABLEKS R28 R27 K146 ["BackgroundTransparency"]
  LOADN R28 12
  SETTABLEKS R28 R27 K147 ["BarHeight"]
  DUPTABLE R28 K135 [{"Left", "Right"}]
  LOADN R29 24
  SETTABLEKS R29 R28 K77 ["Left"]
  LOADN R29 24
  SETTABLEKS R29 R28 K70 ["Right"]
  SETTABLEKS R28 R27 K112 ["Padding"]
  DUPTABLE R28 K153 [{"TopBarColor", "BackgroundColor", "Arrow", "TopBarHeight", "TopBarPadding"}]
  GETTABLEKS R29 R4 K134 ["MainBackground"]
  SETTABLEKS R29 R28 K150 ["TopBarColor"]
  GETTABLEKS R29 R4 K154 ["SubBackground"]
  SETTABLEKS R29 R28 K109 ["BackgroundColor"]
  DUPTABLE R29 K157 [{"Image", "Size", "Offset", "Color", "HoverColor"}]
  LOADK R30 K145 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R30 R29 K141 ["Image"]
  LOADN R30 12
  SETTABLEKS R30 R29 K97 ["Size"]
  GETIMPORT R30 K137 [Vector2.new]
  LOADN R31 24
  LOADN R32 0
  CALL R30 2 1
  SETTABLEKS R30 R29 K155 ["Offset"]
  GETTABLEKS R30 R4 K158 ["DimmedText"]
  SETTABLEKS R30 R29 K65 ["Color"]
  GETTABLEKS R30 R4 K159 ["BrightText"]
  SETTABLEKS R30 R29 K156 ["HoverColor"]
  SETTABLEKS R29 R28 K138 ["Arrow"]
  LOADN R29 16
  SETTABLEKS R29 R28 K151 ["TopBarHeight"]
  DUPTABLE R29 K71 [{"Right"}]
  LOADN R30 8
  SETTABLEKS R30 R29 K70 ["Right"]
  SETTABLEKS R29 R28 K152 ["TopBarPadding"]
  DUPTABLE R29 K160 [{"BackgroundColor", "FooterHeight", "InstructionsHeight"}]
  GETTABLEKS R30 R4 K114 ["SubBackground2"]
  SETTABLEKS R30 R29 K109 ["BackgroundColor"]
  LOADN R30 88
  SETTABLEKS R30 R29 K129 ["FooterHeight"]
  LOADN R30 64
  SETTABLEKS R30 R29 K130 ["InstructionsHeight"]
  DUPTABLE R30 K167 [{"Spacing", "ProcessResultBackgroundColor", "SeparatorStyle", "RevertButtonSize", "ConvertButtonSize", "ButtonSpacing", "ButtonPadding"}]
  LOADN R31 5
  SETTABLEKS R31 R30 K100 ["Spacing"]
  GETTABLEKS R31 R4 K114 ["SubBackground2"]
  SETTABLEKS R31 R30 K161 ["ProcessResultBackgroundColor"]
  SETTABLEKS R12 R30 K162 ["SeparatorStyle"]
  SETTABLEKS R11 R30 K163 ["RevertButtonSize"]
  SETTABLEKS R11 R30 K164 ["ConvertButtonSize"]
  LOADN R31 10
  SETTABLEKS R31 R30 K165 ["ButtonSpacing"]
  SETTABLEKS R13 R30 K166 ["ButtonPadding"]
  GETTABLEKS R32 R10 K168 ["Dictionary"]
  GETTABLEKS R31 R32 K169 ["join"]
  MOVE R32 R30
  MOVE R33 R14
  CALL R31 2 1
  MOVE R30 R31
  DUPTABLE R31 K172 [{"RowHeight", "Spacing", "BackgroundColor", "SectionHeadBackgroundColor", "SelectedColor"}]
  LOADN R32 32
  SETTABLEKS R32 R31 K110 ["RowHeight"]
  LOADN R32 4
  SETTABLEKS R32 R31 K100 ["Spacing"]
  GETTABLEKS R32 R4 K114 ["SubBackground2"]
  SETTABLEKS R32 R31 K109 ["BackgroundColor"]
  GETTABLEKS R32 R4 K134 ["MainBackground"]
  SETTABLEKS R32 R31 K170 ["SectionHeadBackgroundColor"]
  GETTABLEKS R32 R4 K173 ["DialogMainButtonSelected"]
  SETTABLEKS R32 R31 K171 ["SelectedColor"]
  DUPTABLE R32 K180 [{"ViewportBackgroundColor", "TreeViewBackgroundColor", "ViewportAspectRatio", "SelectionColor", "ViewportHeight", "TreeHeight"}]
  GETTABLEKS R33 R4 K154 ["SubBackground"]
  SETTABLEKS R33 R32 K174 ["ViewportBackgroundColor"]
  GETTABLEKS R33 R4 K114 ["SubBackground2"]
  SETTABLEKS R33 R32 K175 ["TreeViewBackgroundColor"]
  LOADK R33 K181 [0.77027027027027]
  SETTABLEKS R33 R32 K176 ["ViewportAspectRatio"]
  GETIMPORT R33 K107 [Color3.fromRGB]
  LOADN R34 13
  LOADN R35 105
  LOADN R36 172
  CALL R33 3 1
  SETTABLEKS R33 R32 K177 ["SelectionColor"]
  LOADN R33 44
  SETTABLEKS R33 R32 K178 ["ViewportHeight"]
  LOADN R33 44
  SETTABLEKS R33 R32 K179 ["TreeHeight"]
  DUPTABLE R33 K186 [{"Arrow", "ArrowPadding", "Width", "HorizontalSpacing", "VerticalSpacing"}]
  DUPTABLE R34 K188 [{"Image", "Size", "ImageRectSize", "Offset", "Color"}]
  LOADK R35 K145 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R35 R34 K141 ["Image"]
  GETIMPORT R35 K190 [UDim2.fromOffset]
  LOADN R36 12
  LOADN R37 12
  CALL R35 2 1
  SETTABLEKS R35 R34 K97 ["Size"]
  GETIMPORT R35 K137 [Vector2.new]
  LOADN R36 12
  LOADN R37 12
  CALL R35 2 1
  SETTABLEKS R35 R34 K187 ["ImageRectSize"]
  GETIMPORT R35 K137 [Vector2.new]
  LOADN R36 12
  LOADN R37 0
  CALL R35 2 1
  SETTABLEKS R35 R34 K155 ["Offset"]
  GETTABLEKS R35 R4 K69 ["MainText"]
  SETTABLEKS R35 R34 K65 ["Color"]
  SETTABLEKS R34 R33 K138 ["Arrow"]
  LOADN R34 12
  SETTABLEKS R34 R33 K182 ["ArrowPadding"]
  LOADN R34 200
  SETTABLEKS R34 R33 K183 ["Width"]
  LOADN R34 8
  SETTABLEKS R34 R33 K184 ["HorizontalSpacing"]
  LOADN R34 8
  SETTABLEKS R34 R33 K185 ["VerticalSpacing"]
  DUPTABLE R34 K192 [{"RowHeight", "CompactNoBorder"}]
  LOADN R35 20
  SETTABLEKS R35 R34 K110 ["RowHeight"]
  GETTABLEKS R36 R10 K168 ["Dictionary"]
  GETTABLEKS R35 R36 K169 ["join"]
  MOVE R36 R9
  DUPTABLE R37 K196 [{"Text", "Indent", "RowHeight", "Arrow", "IconPadding", "HoverColor", "SelectedColor", "SelectedTextColor"}]
  DUPTABLE R38 K118 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R39 K121 [Enum.Font.SourceSans]
  SETTABLEKS R39 R38 K115 ["Font"]
  GETTABLEKS R39 R4 K69 ["MainText"]
  SETTABLEKS R39 R38 K116 ["TextColor"]
  LOADN R39 16
  SETTABLEKS R39 R38 K117 ["TextSize"]
  SETTABLEKS R38 R37 K193 ["Text"]
  LOADN R38 16
  SETTABLEKS R38 R37 K139 ["Indent"]
  LOADN R38 20
  SETTABLEKS R38 R37 K110 ["RowHeight"]
  DUPTABLE R38 K197 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color"}]
  LOADK R39 K145 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R39 R38 K141 ["Image"]
  LOADN R39 12
  SETTABLEKS R39 R38 K97 ["Size"]
  GETIMPORT R39 K137 [Vector2.new]
  LOADN R40 24
  LOADN R41 0
  CALL R39 2 1
  SETTABLEKS R39 R38 K142 ["ExpandedOffset"]
  GETIMPORT R39 K137 [Vector2.new]
  LOADN R40 12
  LOADN R41 0
  CALL R39 2 1
  SETTABLEKS R39 R38 K143 ["CollapsedOffset"]
  GETTABLEKS R39 R4 K69 ["MainText"]
  SETTABLEKS R39 R38 K65 ["Color"]
  SETTABLEKS R38 R37 K138 ["Arrow"]
  LOADN R38 3
  SETTABLEKS R38 R37 K194 ["IconPadding"]
  GETTABLEKS R38 R4 K198 ["ButtonHover"]
  SETTABLEKS R38 R37 K156 ["HoverColor"]
  GETTABLEKS R38 R4 K199 ["DialogMainButton"]
  SETTABLEKS R38 R37 K171 ["SelectedColor"]
  GETTABLEKS R38 R4 K200 ["DialogMainButtonText"]
  SETTABLEKS R38 R37 K195 ["SelectedTextColor"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K191 ["CompactNoBorder"]
  DUPTABLE R35 K201 [{"Size", "Color"}]
  LOADN R36 36
  SETTABLEKS R36 R35 K97 ["Size"]
  GETTABLEKS R36 R4 K69 ["MainText"]
  SETTABLEKS R36 R35 K65 ["Color"]
  DUPTABLE R36 K203 [{"ExpandablePaneHeaderSize", "BackgroundColor", "InstructionsHeight"}]
  GETIMPORT R37 K64 [UDim2.new]
  LOADN R38 1
  LOADN R39 0
  LOADN R40 0
  LOADN R41 36
  CALL R37 4 1
  SETTABLEKS R37 R36 K202 ["ExpandablePaneHeaderSize"]
  GETTABLEKS R37 R4 K114 ["SubBackground2"]
  SETTABLEKS R37 R36 K109 ["BackgroundColor"]
  LOADN R37 80
  SETTABLEKS R37 R36 K130 ["InstructionsHeight"]
  DUPTABLE R37 K206 [{"HeaderHeight", "FooterHeight", "HeaderColor", "BackgroundColor"}]
  LOADN R38 42
  SETTABLEKS R38 R37 K204 ["HeaderHeight"]
  LOADN R38 88
  SETTABLEKS R38 R37 K129 ["FooterHeight"]
  GETTABLEKS R38 R4 K154 ["SubBackground"]
  SETTABLEKS R38 R37 K205 ["HeaderColor"]
  GETTABLEKS R38 R4 K114 ["SubBackground2"]
  SETTABLEKS R38 R37 K109 ["BackgroundColor"]
  DUPTABLE R38 K207 [{"HeaderColor", "BackgroundColor"}]
  GETTABLEKS R39 R4 K154 ["SubBackground"]
  SETTABLEKS R39 R38 K205 ["HeaderColor"]
  GETTABLEKS R39 R4 K114 ["SubBackground2"]
  SETTABLEKS R39 R38 K109 ["BackgroundColor"]
  DUPTABLE R39 K208 [{"ProcessResultBackgroundColor", "RevertButtonSize", "ConvertButtonSize", "Spacing", "ButtonSpacing", "SeparatorStyle", "ButtonPadding"}]
  GETTABLEKS R40 R4 K114 ["SubBackground2"]
  SETTABLEKS R40 R39 K161 ["ProcessResultBackgroundColor"]
  SETTABLEKS R11 R39 K163 ["RevertButtonSize"]
  SETTABLEKS R11 R39 K164 ["ConvertButtonSize"]
  LOADN R40 5
  SETTABLEKS R40 R39 K100 ["Spacing"]
  LOADN R40 10
  SETTABLEKS R40 R39 K165 ["ButtonSpacing"]
  SETTABLEKS R12 R39 K162 ["SeparatorStyle"]
  SETTABLEKS R13 R39 K166 ["ButtonPadding"]
  GETTABLEKS R41 R10 K168 ["Dictionary"]
  GETTABLEKS R40 R41 K169 ["join"]
  MOVE R41 R39
  MOVE R42 R14
  CALL R40 2 1
  MOVE R39 R40
  DUPTABLE R40 K214 [{"FilterHeight", "FilterWidth", "ItemHeight", "ListItemTextSize", "ListItemPadding", "Padding", "Spacing", "SeparatorStyle"}]
  LOADN R41 36
  SETTABLEKS R41 R40 K209 ["FilterHeight"]
  LOADN R41 192
  SETTABLEKS R41 R40 K210 ["FilterWidth"]
  LOADN R41 22
  SETTABLEKS R41 R40 K211 ["ItemHeight"]
  LOADN R41 14
  SETTABLEKS R41 R40 K212 ["ListItemTextSize"]
  LOADN R41 6
  SETTABLEKS R41 R40 K213 ["ListItemPadding"]
  DUPTABLE R41 K215 [{"Left", "Top", "Right"}]
  LOADN R42 12
  SETTABLEKS R42 R41 K77 ["Left"]
  LOADN R42 5
  SETTABLEKS R42 R41 K78 ["Top"]
  LOADN R42 12
  SETTABLEKS R42 R41 K70 ["Right"]
  SETTABLEKS R41 R40 K112 ["Padding"]
  LOADN R41 5
  SETTABLEKS R41 R40 K100 ["Spacing"]
  SETTABLEKS R12 R40 K162 ["SeparatorStyle"]
  DUPTABLE R41 K220 [{"StatusImageSize", "Spacing", "CountTextSize", "StatusIcons", "RevertedIconColor"}]
  GETIMPORT R42 K190 [UDim2.fromOffset]
  LOADN R43 16
  LOADN R44 16
  CALL R42 2 1
  SETTABLEKS R42 R41 K216 ["StatusImageSize"]
  LOADN R42 4
  SETTABLEKS R42 R41 K100 ["Spacing"]
  LOADN R42 15
  SETTABLEKS R42 R41 K217 ["CountTextSize"]
  SETTABLEKS R15 R41 K218 ["StatusIcons"]
  GETTABLEKS R42 R4 K159 ["BrightText"]
  SETTABLEKS R42 R41 K219 ["RevertedIconColor"]
  DUPTABLE R42 K222 [{"StatusIcons", "RowHeight", "ConsoleHeight", "BackgroundColor", "IconSize", "Padding", "Arrow"}]
  SETTABLEKS R15 R42 K218 ["StatusIcons"]
  LOADN R43 24
  SETTABLEKS R43 R42 K110 ["RowHeight"]
  LOADN R43 48
  SETTABLEKS R43 R42 K221 ["ConsoleHeight"]
  GETTABLEKS R43 R4 K134 ["MainBackground"]
  SETTABLEKS R43 R42 K109 ["BackgroundColor"]
  GETIMPORT R43 K190 [UDim2.fromOffset]
  LOADN R44 16
  LOADN R45 16
  CALL R43 2 1
  SETTABLEKS R43 R42 K101 ["IconSize"]
  DUPTABLE R43 K135 [{"Left", "Right"}]
  LOADN R44 8
  SETTABLEKS R44 R43 K77 ["Left"]
  LOADN R44 8
  SETTABLEKS R44 R43 K70 ["Right"]
  SETTABLEKS R43 R42 K112 ["Padding"]
  DUPTABLE R43 K157 [{"Image", "Size", "Offset", "Color", "HoverColor"}]
  LOADK R44 K145 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R44 R43 K141 ["Image"]
  LOADN R44 12
  SETTABLEKS R44 R43 K97 ["Size"]
  GETIMPORT R44 K137 [Vector2.new]
  LOADN R45 0
  LOADN R46 0
  CALL R44 2 1
  SETTABLEKS R44 R43 K155 ["Offset"]
  GETTABLEKS R44 R4 K158 ["DimmedText"]
  SETTABLEKS R44 R43 K65 ["Color"]
  GETTABLEKS R44 R4 K159 ["BrightText"]
  SETTABLEKS R44 R43 K156 ["HoverColor"]
  SETTABLEKS R43 R42 K138 ["Arrow"]
  DUPTABLE R43 K225 [{"Arrow", "Spacing", "Indent", "TextSize", "LinkColor", "BackgroundColor", "IconViewSize"}]
  DUPTABLE R44 K144 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color", "Padding"}]
  LOADK R45 K145 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R45 R44 K141 ["Image"]
  LOADN R45 12
  SETTABLEKS R45 R44 K97 ["Size"]
  GETIMPORT R45 K137 [Vector2.new]
  LOADN R46 24
  LOADN R47 0
  CALL R45 2 1
  SETTABLEKS R45 R44 K142 ["ExpandedOffset"]
  GETIMPORT R45 K137 [Vector2.new]
  LOADN R46 12
  LOADN R47 0
  CALL R45 2 1
  SETTABLEKS R45 R44 K143 ["CollapsedOffset"]
  GETTABLEKS R45 R4 K69 ["MainText"]
  SETTABLEKS R45 R44 K65 ["Color"]
  LOADN R45 6
  SETTABLEKS R45 R44 K112 ["Padding"]
  SETTABLEKS R44 R43 K138 ["Arrow"]
  LOADN R44 12
  SETTABLEKS R44 R43 K100 ["Spacing"]
  LOADN R44 16
  SETTABLEKS R44 R43 K139 ["Indent"]
  LOADN R44 14
  SETTABLEKS R44 R43 K117 ["TextSize"]
  GETTABLEKS R44 R4 K226 ["LinkText"]
  SETTABLEKS R44 R43 K223 ["LinkColor"]
  GETTABLEKS R44 R4 K114 ["SubBackground2"]
  SETTABLEKS R44 R43 K109 ["BackgroundColor"]
  GETIMPORT R44 K190 [UDim2.fromOffset]
  LOADN R45 76
  LOADN R46 16
  CALL R44 2 1
  SETTABLEKS R44 R43 K224 ["IconViewSize"]
  DUPTABLE R44 K227 [{"ButtonSize", "Spacing", "Padding"}]
  GETIMPORT R45 K190 [UDim2.fromOffset]
  LOADN R46 72
  LOADN R47 36
  CALL R45 2 1
  SETTABLEKS R45 R44 K131 ["ButtonSize"]
  LOADN R45 8
  SETTABLEKS R45 R44 K100 ["Spacing"]
  DUPTABLE R45 K135 [{"Left", "Right"}]
  LOADN R46 24
  SETTABLEKS R46 R45 K77 ["Left"]
  LOADN R46 24
  SETTABLEKS R46 R45 K70 ["Right"]
  SETTABLEKS R45 R44 K112 ["Padding"]
  DUPTABLE R45 K228 [{"SelectAllRow"}]
  DUPTABLE R46 K229 [{"RowHeight", "Padding"}]
  LOADN R47 20
  SETTABLEKS R47 R46 K110 ["RowHeight"]
  LOADN R47 2
  SETTABLEKS R47 R46 K112 ["Padding"]
  SETTABLEKS R46 R45 K25 ["SelectAllRow"]
  DUPTABLE R46 K231 [{"MinContentSize"}]
  GETIMPORT R47 K137 [Vector2.new]
  LOADN R48 144
  LOADN R49 100
  CALL R47 2 1
  SETTABLEKS R47 R46 K230 ["MinContentSize"]
  DUPTABLE R47 K231 [{"MinContentSize"}]
  GETIMPORT R48 K137 [Vector2.new]
  LOADN R49 144
  LOADN R50 100
  CALL R48 2 1
  SETTABLEKS R48 R47 K230 ["MinContentSize"]
  DUPTABLE R48 K236 [{"PaneHeight", "TitleTextSize", "SaveRulesSize", "Padding", "Spacing", "ListHeightOffset", "RowHeight", "SeparatorStyle"}]
  LOADN R49 250
  SETTABLEKS R49 R48 K232 ["PaneHeight"]
  LOADN R49 22
  SETTABLEKS R49 R48 K233 ["TitleTextSize"]
  GETIMPORT R49 K190 [UDim2.fromOffset]
  LOADN R50 100
  LOADN R51 36
  CALL R49 2 1
  SETTABLEKS R49 R48 K234 ["SaveRulesSize"]
  DUPTABLE R49 K237 [{"Left", "Right", "Top", "Bottom"}]
  LOADN R50 24
  SETTABLEKS R50 R49 K77 ["Left"]
  LOADN R50 24
  SETTABLEKS R50 R49 K70 ["Right"]
  LOADN R50 24
  SETTABLEKS R50 R49 K78 ["Top"]
  LOADN R50 24
  SETTABLEKS R50 R49 K125 ["Bottom"]
  SETTABLEKS R49 R48 K112 ["Padding"]
  LOADN R49 12
  SETTABLEKS R49 R48 K100 ["Spacing"]
  LOADN R49 194
  SETTABLEKS R49 R48 K235 ["ListHeightOffset"]
  LOADN R49 48
  SETTABLEKS R49 R48 K110 ["RowHeight"]
  SETTABLEKS R23 R48 K162 ["SeparatorStyle"]
  DUPTABLE R49 K242 [{"TextInputSize", "FromLabelSize", "ToggleSize", "ArrowSize", "BackgroundColor", "Spacing", "Arrow", "Padding"}]
  GETIMPORT R50 K190 [UDim2.fromOffset]
  LOADN R51 170
  LOADN R52 36
  CALL R50 2 1
  SETTABLEKS R50 R49 K238 ["TextInputSize"]
  GETIMPORT R50 K190 [UDim2.fromOffset]
  LOADN R51 85
  LOADN R52 36
  CALL R50 2 1
  SETTABLEKS R50 R49 K239 ["FromLabelSize"]
  GETIMPORT R50 K190 [UDim2.fromOffset]
  LOADN R51 48
  LOADN R52 0
  CALL R50 2 1
  SETTABLEKS R50 R49 K240 ["ToggleSize"]
  GETIMPORT R50 K190 [UDim2.fromOffset]
  LOADN R51 24
  LOADN R52 0
  CALL R50 2 1
  SETTABLEKS R50 R49 K241 ["ArrowSize"]
  GETTABLEKS R50 R4 K154 ["SubBackground"]
  SETTABLEKS R50 R49 K109 ["BackgroundColor"]
  LOADN R50 16
  SETTABLEKS R50 R49 K100 ["Spacing"]
  LOADK R50 K243 ["→"]
  SETTABLEKS R50 R49 K138 ["Arrow"]
  DUPTABLE R50 K135 [{"Left", "Right"}]
  LOADN R51 10
  SETTABLEKS R51 R50 K77 ["Left"]
  LOADN R51 10
  SETTABLEKS R51 R50 K70 ["Right"]
  SETTABLEKS R50 R49 K112 ["Padding"]
  DUPTABLE R50 K246 [{"Padding", "Spacing", "PreviewContainerSize", "ListSize", "FooterHeight", "BackgroundColor", "InstructionsHeight"}]
  LOADN R51 20
  SETTABLEKS R51 R50 K112 ["Padding"]
  LOADN R51 10
  SETTABLEKS R51 R50 K100 ["Spacing"]
  GETIMPORT R51 K248 [UDim2.fromScale]
  LOADN R52 1
  LOADK R53 K249 [0.4]
  CALL R51 2 1
  SETTABLEKS R51 R50 K244 ["PreviewContainerSize"]
  GETIMPORT R51 K248 [UDim2.fromScale]
  LOADN R52 1
  LOADK R53 K250 [0.6]
  CALL R51 2 1
  SETTABLEKS R51 R50 K245 ["ListSize"]
  LOADN R51 88
  SETTABLEKS R51 R50 K129 ["FooterHeight"]
  GETTABLEKS R51 R4 K114 ["SubBackground2"]
  SETTABLEKS R51 R50 K109 ["BackgroundColor"]
  LOADN R51 64
  SETTABLEKS R51 R50 K130 ["InstructionsHeight"]
  DUPTABLE R51 K258 [{"PanePadding", "BackgroundColor", "SubTextSize", "Spacing", "VerticalTextSpacing", "BoldFont", "RemovalInstructionsHeight", "CommitButtonSize", "CommitTextHeight"}]
  DUPTABLE R52 K259 [{"Left", "Top"}]
  LOADN R53 10
  SETTABLEKS R53 R52 K77 ["Left"]
  LOADN R53 20
  SETTABLEKS R53 R52 K78 ["Top"]
  SETTABLEKS R52 R51 K251 ["PanePadding"]
  GETTABLEKS R52 R4 K114 ["SubBackground2"]
  SETTABLEKS R52 R51 K109 ["BackgroundColor"]
  LOADN R52 13
  SETTABLEKS R52 R51 K252 ["SubTextSize"]
  LOADN R52 5
  SETTABLEKS R52 R51 K100 ["Spacing"]
  LOADN R52 10
  SETTABLEKS R52 R51 K253 ["VerticalTextSpacing"]
  GETIMPORT R52 K261 [Enum.Font.SourceSansBold]
  SETTABLEKS R52 R51 K254 ["BoldFont"]
  LOADN R52 50
  SETTABLEKS R52 R51 K255 ["RemovalInstructionsHeight"]
  SETTABLEKS R11 R51 K256 ["CommitButtonSize"]
  LOADN R52 50
  SETTABLEKS R52 R51 K257 ["CommitTextHeight"]
  DUPTABLE R52 K262 [{"SeparatorStyle", "Spacing", "ButtonPadding"}]
  SETTABLEKS R12 R52 K162 ["SeparatorStyle"]
  LOADN R53 5
  SETTABLEKS R53 R52 K100 ["Spacing"]
  SETTABLEKS R13 R52 K166 ["ButtonPadding"]
  GETTABLEKS R54 R10 K168 ["Dictionary"]
  GETTABLEKS R53 R54 K169 ["join"]
  MOVE R54 R52
  MOVE R55 R14
  CALL R53 2 1
  MOVE R52 R53
  DUPTABLE R53 K263 [{"Spacing", "PreviewContainerSize"}]
  LOADN R54 10
  SETTABLEKS R54 R53 K100 ["Spacing"]
  GETIMPORT R54 K64 [UDim2.new]
  LOADN R55 1
  LOADN R56 0
  LOADN R57 1
  LOADN R58 172
  CALL R54 4 1
  SETTABLEKS R54 R53 K244 ["PreviewContainerSize"]
  DUPTABLE R54 K265 [{"Padding", "BackgroundColor", "ResetButtonSize"}]
  LOADN R55 5
  SETTABLEKS R55 R54 K112 ["Padding"]
  GETTABLEKS R55 R4 K266 ["ForegroundContrast"]
  SETTABLEKS R55 R54 K109 ["BackgroundColor"]
  GETIMPORT R55 K190 [UDim2.fromOffset]
  LOADN R56 28
  LOADN R57 28
  CALL R55 2 1
  SETTABLEKS R55 R54 K264 ["ResetButtonSize"]
  DUPTABLE R55 K269 [{"Arrow", "Padding", "PreviewWindowSize", "PreviewWindowPosition"}]
  DUPTABLE R56 K271 [{"Image", "Size", "ImageRectSize", "Position", "Offset", "Color"}]
  LOADK R57 K145 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R57 R56 K141 ["Image"]
  GETIMPORT R57 K190 [UDim2.fromOffset]
  LOADN R58 12
  LOADN R59 12
  CALL R57 2 1
  SETTABLEKS R57 R56 K97 ["Size"]
  GETIMPORT R57 K137 [Vector2.new]
  LOADN R58 12
  LOADN R59 12
  CALL R57 2 1
  SETTABLEKS R57 R56 K187 ["ImageRectSize"]
  GETIMPORT R57 K64 [UDim2.new]
  LOADK R58 K16 ["style"]
  LOADN R59 250
  LOADK R60 K16 ["style"]
  LOADN R61 250
  CALL R57 4 1
  SETTABLEKS R57 R56 K270 ["Position"]
  GETIMPORT R57 K137 [Vector2.new]
  LOADN R58 12
  LOADN R59 0
  CALL R57 2 1
  SETTABLEKS R57 R56 K155 ["Offset"]
  GETTABLEKS R57 R4 K69 ["MainText"]
  SETTABLEKS R57 R56 K65 ["Color"]
  SETTABLEKS R56 R55 K138 ["Arrow"]
  LOADN R56 10
  SETTABLEKS R56 R55 K112 ["Padding"]
  GETIMPORT R56 K64 [UDim2.new]
  LOADK R57 K16 ["style"]
  LOADN R58 246
  LOADN R59 1
  LOADN R60 0
  CALL R56 4 1
  SETTABLEKS R56 R55 K267 ["PreviewWindowSize"]
  GETIMPORT R56 K64 [UDim2.new]
  LOADK R57 K16 ["style"]
  LOADN R58 10
  LOADN R59 0
  LOADN R60 0
  CALL R56 4 1
  SETTABLEKS R56 R55 K268 ["PreviewWindowPosition"]
  DUPTABLE R56 K273 [{"ButtonSize", "Spacing"}]
  SETTABLEKS R11 R56 K131 ["ButtonSize"]
  LOADN R57 10
  SETTABLEKS R57 R56 K100 ["Spacing"]
  DUPTABLE R57 K278 [{"BackgroundColor", "SelectedBorderColor", "SelectedColor", "StatusImageSize", "Icons", "Content", "Header"}]
  GETTABLEKS R58 R4 K114 ["SubBackground2"]
  SETTABLEKS R58 R57 K109 ["BackgroundColor"]
  GETTABLEKS R58 R4 K173 ["DialogMainButtonSelected"]
  SETTABLEKS R58 R57 K274 ["SelectedBorderColor"]
  GETTABLEKS R58 R4 K134 ["MainBackground"]
  SETTABLEKS R58 R57 K171 ["SelectedColor"]
  GETIMPORT R58 K190 [UDim2.fromOffset]
  LOADN R59 16
  LOADN R60 16
  CALL R58 2 1
  SETTABLEKS R58 R57 K216 ["StatusImageSize"]
  DUPTABLE R58 K280 [{"Success", "Warning"}]
  LOADK R59 K85 ["rbxasset://textures/R15Migrator/Icon_Checkmark.png"]
  SETTABLEKS R59 R58 K279 ["Success"]
  LOADK R59 K87 ["rbxasset://textures/R15Migrator/Icon_Warning.png"]
  SETTABLEKS R59 R58 K82 ["Warning"]
  SETTABLEKS R58 R57 K275 ["Icons"]
  DUPTABLE R58 K281 [{"Padding"}]
  DUPTABLE R59 K282 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R60 28
  SETTABLEKS R60 R59 K77 ["Left"]
  LOADN R60 10
  SETTABLEKS R60 R59 K78 ["Top"]
  LOADN R60 28
  SETTABLEKS R60 R59 K70 ["Right"]
  LOADN R60 10
  SETTABLEKS R60 R59 K125 ["Bottom"]
  SETTABLEKS R59 R58 K112 ["Padding"]
  SETTABLEKS R58 R57 K276 ["Content"]
  DUPTABLE R58 K285 [{"Arrow", "HorizontalAlignment", "Padding", "Size", "Spacing", "Text", "VerticalAlignment"}]
  NEWTABLE R59 8 0
  GETTABLEKS R60 R4 K69 ["MainText"]
  SETTABLEKS R60 R59 K65 ["Color"]
  LOADK R60 K145 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R60 R59 K141 ["Image"]
  GETIMPORT R60 K137 [Vector2.new]
  LOADN R61 12
  LOADN R62 0
  CALL R60 2 1
  SETTABLEKS R60 R59 K286 ["ImageRectOffset"]
  GETIMPORT R60 K137 [Vector2.new]
  LOADN R61 12
  LOADN R62 12
  CALL R60 2 1
  SETTABLEKS R60 R59 K187 ["ImageRectSize"]
  GETIMPORT R60 K190 [UDim2.fromOffset]
  LOADN R61 12
  LOADN R62 12
  CALL R60 2 1
  SETTABLEKS R60 R59 K97 ["Size"]
  GETTABLEKS R60 R7 K287 ["Selected"]
  DUPTABLE R61 K288 [{"ImageRectOffset"}]
  GETIMPORT R62 K137 [Vector2.new]
  LOADN R63 24
  LOADN R64 0
  CALL R62 2 1
  SETTABLEKS R62 R61 K286 ["ImageRectOffset"]
  SETTABLE R61 R59 R60
  SETTABLEKS R59 R58 K138 ["Arrow"]
  GETIMPORT R59 K289 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R59 R58 K283 ["HorizontalAlignment"]
  DUPTABLE R59 K135 [{"Left", "Right"}]
  LOADN R60 16
  SETTABLEKS R60 R59 K77 ["Left"]
  LOADN R60 16
  SETTABLEKS R60 R59 K70 ["Right"]
  SETTABLEKS R59 R58 K112 ["Padding"]
  GETIMPORT R59 K64 [UDim2.new]
  LOADN R60 1
  LOADN R61 0
  LOADN R62 0
  LOADN R63 32
  CALL R59 4 1
  SETTABLEKS R59 R58 K97 ["Size"]
  LOADN R59 6
  SETTABLEKS R59 R58 K100 ["Spacing"]
  DUPTABLE R59 K118 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R60 K121 [Enum.Font.SourceSans]
  SETTABLEKS R60 R59 K115 ["Font"]
  GETTABLEKS R60 R4 K122 ["TitlebarText"]
  SETTABLEKS R60 R59 K116 ["TextColor"]
  LOADN R60 14
  SETTABLEKS R60 R59 K117 ["TextSize"]
  SETTABLEKS R59 R58 K193 ["Text"]
  GETIMPORT R59 K291 [Enum.VerticalAlignment.Center]
  SETTABLEKS R59 R58 K284 ["VerticalAlignment"]
  SETTABLEKS R58 R57 K277 ["Header"]
  DUPTABLE R58 K228 [{"SelectAllRow"}]
  DUPTABLE R59 K229 [{"RowHeight", "Padding"}]
  LOADN R60 20
  SETTABLEKS R60 R59 K110 ["RowHeight"]
  LOADN R60 2
  SETTABLEKS R60 R59 K112 ["Padding"]
  SETTABLEKS R59 R58 K25 ["SelectAllRow"]
  DUPTABLE R59 K303 [{"Offset", "Padding", "ContentPadding", "Anchor", "LabelSize", "Label1Position", "Label2Position", "LoadingIcon", "WarningIcon", "FailedIcon", "DoneIcon", "Arrow", "ArrowPosition", "IconPosition", "IconSize", "Spacing", "TextSize"}]
  GETIMPORT R60 K190 [UDim2.fromOffset]
  LOADN R61 248
  LOADN R62 0
  CALL R60 2 1
  SETTABLEKS R60 R59 K155 ["Offset"]
  LOADN R60 2
  SETTABLEKS R60 R59 K112 ["Padding"]
  DUPTABLE R60 K135 [{"Left", "Right"}]
  LOADN R61 20
  SETTABLEKS R61 R60 K77 ["Left"]
  LOADN R61 20
  SETTABLEKS R61 R60 K70 ["Right"]
  SETTABLEKS R60 R59 K292 ["ContentPadding"]
  GETIMPORT R60 K137 [Vector2.new]
  LOADN R61 0
  LOADK R62 K16 ["style"]
  CALL R60 2 1
  SETTABLEKS R60 R59 K293 ["Anchor"]
  GETIMPORT R60 K64 [UDim2.new]
  LOADK R61 K16 ["style"]
  LOADN R62 222
  LOADN R63 1
  LOADN R64 0
  CALL R60 4 1
  SETTABLEKS R60 R59 K294 ["LabelSize"]
  GETIMPORT R60 K64 [UDim2.new]
  LOADN R61 0
  LOADN R62 0
  LOADK R63 K16 ["style"]
  LOADN R64 0
  CALL R60 4 1
  SETTABLEKS R60 R59 K295 ["Label1Position"]
  GETIMPORT R60 K64 [UDim2.new]
  LOADK R61 K16 ["style"]
  LOADN R62 10
  LOADK R63 K16 ["style"]
  LOADN R64 0
  CALL R60 4 1
  SETTABLEKS R60 R59 K296 ["Label2Position"]
  LOADK R60 K48 ["ScriptConversionConsole"]
  SETTABLEKS R60 R59 K297 ["LoadingIcon"]
  LOADK R60 K87 ["rbxasset://textures/R15Migrator/Icon_Warning.png"]
  SETTABLEKS R60 R59 K298 ["WarningIcon"]
  LOADK R60 K88 ["rbxasset://textures/R15Migrator/Icon_Error.png"]
  SETTABLEKS R60 R59 K299 ["FailedIcon"]
  LOADK R60 K85 ["rbxasset://textures/R15Migrator/Icon_Checkmark.png"]
  SETTABLEKS R60 R59 K300 ["DoneIcon"]
  LOADK R60 K243 ["→"]
  SETTABLEKS R60 R59 K138 ["Arrow"]
  GETIMPORT R60 K64 [UDim2.new]
  LOADK R61 K16 ["style"]
  LOADN R62 232
  LOADK R63 K16 ["style"]
  LOADN R64 0
  CALL R60 4 1
  SETTABLEKS R60 R59 K301 ["ArrowPosition"]
  GETIMPORT R60 K64 [UDim2.new]
  LOADN R61 1
  LOADN R62 240
  LOADK R63 K16 ["style"]
  LOADN R64 0
  CALL R60 4 1
  SETTABLEKS R60 R59 K302 ["IconPosition"]
  GETIMPORT R60 K190 [UDim2.fromOffset]
  LOADN R61 16
  LOADN R62 16
  CALL R60 2 1
  SETTABLEKS R60 R59 K101 ["IconSize"]
  LOADN R60 10
  SETTABLEKS R60 R59 K100 ["Spacing"]
  LOADN R60 14
  SETTABLEKS R60 R59 K117 ["TextSize"]
  DUPTABLE R60 K307 [{"Padding", "Spacing", "BackgroundColor", "ImageColor", "ButtonSize", "SliderSize"}]
  LOADN R61 2
  SETTABLEKS R61 R60 K112 ["Padding"]
  LOADN R61 15
  SETTABLEKS R61 R60 K100 ["Spacing"]
  GETTABLEKS R61 R4 K308 ["ForegroundMuted"]
  SETTABLEKS R61 R60 K109 ["BackgroundColor"]
  GETTABLEKS R61 R4 K69 ["MainText"]
  SETTABLEKS R61 R60 K305 ["ImageColor"]
  GETIMPORT R61 K190 [UDim2.fromOffset]
  LOADN R62 28
  LOADN R63 28
  CALL R61 2 1
  SETTABLEKS R61 R60 K131 ["ButtonSize"]
  GETIMPORT R61 K64 [UDim2.new]
  LOADN R62 1
  LOADN R63 213
  LOADN R64 1
  LOADN R65 0
  CALL R61 4 1
  SETTABLEKS R61 R60 K306 ["SliderSize"]
  DUPTABLE R61 K312 [{"Arrow", "Spacing", "HeaderColor", "HeaderIconPosition", "HeaderTextPosition", "HeaderAnchor", "HeaderHeight", "Font"}]
  DUPTABLE R62 K144 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color", "Padding"}]
  LOADK R63 K145 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R63 R62 K141 ["Image"]
  LOADN R63 12
  SETTABLEKS R63 R62 K97 ["Size"]
  GETIMPORT R63 K137 [Vector2.new]
  LOADN R64 24
  LOADN R65 0
  CALL R63 2 1
  SETTABLEKS R63 R62 K142 ["ExpandedOffset"]
  GETIMPORT R63 K137 [Vector2.new]
  LOADN R64 12
  LOADN R65 0
  CALL R63 2 1
  SETTABLEKS R63 R62 K143 ["CollapsedOffset"]
  GETTABLEKS R63 R4 K69 ["MainText"]
  SETTABLEKS R63 R62 K65 ["Color"]
  LOADN R63 6
  SETTABLEKS R63 R62 K112 ["Padding"]
  SETTABLEKS R62 R61 K138 ["Arrow"]
  LOADN R62 5
  SETTABLEKS R62 R61 K100 ["Spacing"]
  GETTABLEKS R62 R4 K266 ["ForegroundContrast"]
  SETTABLEKS R62 R61 K205 ["HeaderColor"]
  GETIMPORT R62 K64 [UDim2.new]
  LOADN R63 0
  LOADN R64 10
  LOADK R65 K16 ["style"]
  LOADN R66 0
  CALL R62 4 1
  SETTABLEKS R62 R61 K309 ["HeaderIconPosition"]
  GETIMPORT R62 K64 [UDim2.new]
  LOADN R63 0
  LOADN R64 32
  LOADK R65 K16 ["style"]
  LOADN R66 0
  CALL R62 4 1
  SETTABLEKS R62 R61 K310 ["HeaderTextPosition"]
  GETIMPORT R62 K137 [Vector2.new]
  LOADN R63 0
  LOADK R64 K16 ["style"]
  CALL R62 2 1
  SETTABLEKS R62 R61 K311 ["HeaderAnchor"]
  LOADN R62 32
  SETTABLEKS R62 R61 K204 ["HeaderHeight"]
  GETIMPORT R62 K261 [Enum.Font.SourceSansBold]
  SETTABLEKS R62 R61 K115 ["Font"]
  DUPTABLE R62 K315 [{"Spacing", "Padding", "TextSpacing", "ImageSize", "WarningIcon", "TextSize", "LabelSize"}]
  LOADN R63 30
  SETTABLEKS R63 R62 K100 ["Spacing"]
  LOADN R63 10
  SETTABLEKS R63 R62 K112 ["Padding"]
  LOADN R63 10
  SETTABLEKS R63 R62 K313 ["TextSpacing"]
  LOADN R63 40
  SETTABLEKS R63 R62 K314 ["ImageSize"]
  LOADK R63 K60 ["PublishBlockedDialog"]
  SETTABLEKS R63 R62 K298 ["WarningIcon"]
  GETIMPORT R63 K64 [UDim2.new]
  LOADN R64 1
  LOADN R65 186
  LOADN R66 1
  LOADN R67 0
  CALL R63 4 1
  SETTABLEKS R63 R62 K117 ["TextSize"]
  GETIMPORT R63 K64 [UDim2.new]
  LOADN R64 1
  LOADN R65 0
  LOADN R66 0
  LOADN R67 0
  CALL R63 4 1
  SETTABLEKS R63 R62 K294 ["LabelSize"]
  DUPTABLE R63 K319 [{"Spacing", "Padding", "CloseButtonSize", "GoToButtonSize"}]
  LOADN R64 10
  SETTABLEKS R64 R63 K100 ["Spacing"]
  LOADN R64 10
  SETTABLEKS R64 R63 K112 ["Padding"]
  GETIMPORT R64 K190 [UDim2.fromOffset]
  LOADN R65 120
  LOADN R66 32
  CALL R64 2 1
  SETTABLEKS R64 R63 K317 ["CloseButtonSize"]
  GETIMPORT R64 K190 [UDim2.fromOffset]
  LOADN R65 180
  LOADN R66 32
  CALL R64 2 1
  SETTABLEKS R64 R63 K318 ["GoToButtonSize"]
  NEWTABLE R64 64 0
  GETTABLEKS R65 R5 K18 ["ProgressBar"]
  SETTABLE R27 R64 R65
  GETTABLEKS R65 R5 K20 ["PopUpFrame"]
  SETTABLE R28 R64 R65
  GETTABLEKS R65 R5 K21 ["TabInstructions"]
  SETTABLE R24 R64 R65
  GETTABLEKS R65 R5 K22 ["IconTab"]
  SETTABLE R35 R64 R65
  GETTABLEKS R65 R5 K23 ["MainTabsView"]
  SETTABLE R20 R64 R65
  GETTABLEKS R65 R5 K24 ["MainFooter"]
  SETTABLE R21 R64 R65
  GETTABLEKS R65 R5 K25 ["SelectAllRow"]
  SETTABLE R22 R64 R65
  GETTABLEKS R65 R5 K26 ["FinalizerPane"]
  SETTABLE R25 R64 R65
  GETTABLEKS R65 R5 K27 ["FinalizerPaneRow"]
  SETTABLE R26 R64 R65
  GETTABLEKS R65 R5 K28 ["CharacterConversionPane"]
  SETTABLE R29 R64 R65
  GETTABLEKS R65 R5 K29 ["CharacterConversionPaneFooter"]
  SETTABLE R30 R64 R65
  GETTABLEKS R65 R5 K30 ["CharacterConversionList"]
  SETTABLE R31 R64 R65
  GETTABLEKS R65 R5 K31 ["CharacterPreview"]
  SETTABLE R32 R64 R65
  GETTABLEKS R65 R5 K32 ["CharacterSplitView"]
  SETTABLE R33 R64 R65
  GETTABLEKS R65 R5 K33 ["CharacterInstanceTree"]
  SETTABLE R34 R64 R65
  GETTABLEKS R65 R5 K34 ["ExpandableCharacterListItem"]
  SETTABLE R57 R64 R65
  GETTABLEKS R65 R5 K35 ["ScriptIssueRow"]
  SETTABLE R43 R64 R65
  GETTABLEKS R65 R5 K36 ["ScriptIssueTreeView"]
  SETTABLE R45 R64 R65
  GETTABLEKS R65 R5 K37 ["ScriptConversionPane"]
  SETTABLE R36 R64 R65
  GETTABLEKS R65 R5 K38 ["ScriptConversionExpandablePane"]
  SETTABLE R37 R64 R65
  GETTABLEKS R65 R5 K39 ["ReplacementRulesExpandablePane"]
  SETTABLE R38 R64 R65
  GETTABLEKS R65 R5 K40 ["ScriptConversionPaneFooter"]
  SETTABLE R39 R64 R65
  GETTABLEKS R65 R5 K41 ["ScriptConversionPaneHeader"]
  SETTABLE R40 R64 R65
  GETTABLEKS R65 R5 K42 ["ConfirmRevertDialog"]
  SETTABLE R46 R64 R65
  GETTABLEKS R65 R5 K43 ["ConfirmCommitDialog"]
  SETTABLE R47 R64 R65
  GETTABLEKS R65 R5 K44 ["ReplaceOptionsPane"]
  SETTABLE R48 R64 R65
  GETTABLEKS R65 R5 K45 ["ReplaceOptionItem"]
  SETTABLE R49 R64 R65
  GETTABLEKS R65 R5 K46 ["ScriptIconView"]
  SETTABLE R41 R64 R65
  GETTABLEKS R65 R5 K47 ["LoadingScreenPrompt"]
  SETTABLE R44 R64 R65
  GETTABLEKS R65 R5 K48 ["ScriptConversionConsole"]
  SETTABLE R42 R64 R65
  GETTABLEKS R65 R5 K49 ["AnimationConversionPane"]
  SETTABLE R50 R64 R65
  GETTABLEKS R65 R5 K50 ["AnimationConversionPaneFooter"]
  SETTABLE R52 R64 R65
  GETTABLEKS R65 R5 K51 ["PreviewModelComponent"]
  SETTABLE R54 R64 R65
  GETTABLEKS R65 R5 K52 ["DisplayAvatarsComponent"]
  SETTABLE R55 R64 R65
  GETTABLEKS R65 R5 K53 ["ConvertDebugButtons"]
  SETTABLE R56 R64 R65
  GETTABLEKS R65 R5 K54 ["AnimationPreviewComponent"]
  SETTABLE R53 R64 R65
  GETTABLEKS R65 R5 K55 ["AnimationList"]
  SETTABLE R58 R64 R65
  GETTABLEKS R65 R5 K56 ["AnimationListRow"]
  SETTABLE R59 R64 R65
  GETTABLEKS R65 R5 K57 ["MediaPlayerControls"]
  SETTABLE R60 R64 R65
  GETTABLEKS R65 R5 K58 ["CollapsiblePane"]
  SETTABLE R61 R64 R65
  GETTABLEKS R65 R5 K59 ["AdapterPane"]
  SETTABLE R51 R64 R65
  GETTABLEKS R65 R5 K60 ["PublishBlockedDialog"]
  SETTABLE R62 R64 R65
  GETTABLEKS R65 R5 K61 ["Buttons"]
  SETTABLE R63 R64 R65
  DUPCLOSURE R65 K320 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R64
  RETURN R65 1
