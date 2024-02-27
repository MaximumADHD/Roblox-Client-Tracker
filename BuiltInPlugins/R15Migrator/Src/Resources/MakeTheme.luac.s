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
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Style"]
  GETTABLEKS R4 R2 K9 ["Themes"]
  GETTABLEKS R3 R4 K10 ["StudioTheme"]
  GETTABLEKS R4 R2 K11 ["StyleKey"]
  GETTABLEKS R5 R2 K12 ["ComponentSymbols"]
  GETTABLEKS R6 R1 K13 ["Util"]
  GETTABLEKS R7 R6 K14 ["StyleModifier"]
  GETTABLEKS R8 R1 K15 ["UIData"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R8 K16 ["TreeView"]
  GETTABLEKS R10 R11 K17 ["style"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R0 K6 ["Packages"]
  GETTABLEKS R11 R12 K18 ["Cryo"]
  CALL R10 1 1
  LOADK R13 K19 ["ProgressBar"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K21 ["PopUpFrame"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K22 ["TabInstructions"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K23 ["IconTab"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K24 ["MainTabsView"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K25 ["MainFooter"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K26 ["SelectAllRow"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K27 ["FinalizerPane"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K28 ["FinalizerPaneRow"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K29 ["CharacterConversionPane"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K30 ["CharacterConversionPaneFooter"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K31 ["CharacterConversionList"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K32 ["CharacterPreview"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K33 ["CharacterSplitView"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K34 ["CharacterInstanceTree"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K35 ["ExpandableCharacterListItem"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K36 ["ScriptIssueRow"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K37 ["ScriptIssueTreeView"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K38 ["ScriptConversionPane"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K39 ["ScriptConversionExpandablePane"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K40 ["ReplacementRulesExpandablePane"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K41 ["ScriptConversionPaneFooter"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K42 ["ScriptConversionPaneHeader"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K43 ["ConfirmRevertDialog"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K44 ["ConfirmCommitDialog"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K45 ["ReplaceOptionsPane"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K46 ["ReplaceOptionItem"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K47 ["ScriptIconView"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K48 ["LoadingScreen"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K49 ["ScriptConversionConsole"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K50 ["AnimationConversionPane"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K51 ["AnimationConversionPaneFooter"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K52 ["PreviewModelComponent"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K53 ["DisplayAvatarsComponent"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K54 ["ReplaceRevertButtons"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K55 ["AnimationPreviewComponent"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K56 ["AnimationList"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K57 ["AnimationListRow"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K58 ["MediaPlayerControls"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K59 ["AdapterPane"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K60 ["InitialFlow"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K61 ["SummaryPane"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K62 ["StatusTable"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K63 ["PublishBlockedDialog"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K64 ["Buttons"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K65 ["PublishWarningDialog"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  GETIMPORT R11 K68 [UDim2.new]
  LOADN R12 0
  LOADN R13 128
  LOADN R14 0
  LOADN R15 36
  CALL R11 4 1
  DUPTABLE R12 K72 [{"Color", "StretchMargin", "Weight"}]
  GETTABLEKS R13 R4 K73 ["MainText"]
  SETTABLEKS R13 R12 K69 ["Color"]
  LOADN R13 0
  SETTABLEKS R13 R12 K70 ["StretchMargin"]
  LOADN R13 1
  SETTABLEKS R13 R12 K71 ["Weight"]
  DUPTABLE R13 K75 [{"Right"}]
  LOADN R14 10
  SETTABLEKS R14 R13 K74 ["Right"]
  DUPTABLE R14 K80 [{"ResultContainerPadding", "ResultContainerSpacing", "ResultContainerSize", "ResultSize"}]
  DUPTABLE R15 K83 [{"Left", "Right", "Top"}]
  LOADN R16 12
  SETTABLEKS R16 R15 K81 ["Left"]
  LOADN R16 12
  SETTABLEKS R16 R15 K74 ["Right"]
  LOADN R16 5
  SETTABLEKS R16 R15 K82 ["Top"]
  SETTABLEKS R15 R14 K76 ["ResultContainerPadding"]
  LOADN R15 5
  SETTABLEKS R15 R14 K77 ["ResultContainerSpacing"]
  GETIMPORT R15 K68 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 35
  CALL R15 4 1
  SETTABLEKS R15 R14 K78 ["ResultContainerSize"]
  GETIMPORT R15 K68 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 22
  CALL R15 4 1
  SETTABLEKS R15 R14 K79 ["ResultSize"]
  DUPTABLE R15 K88 [{"Complete", "Reverted", "Warning", "Error"}]
  LOADK R16 K89 ["rbxasset://textures/R15Migrator/Icon_Checkmark.png"]
  SETTABLEKS R16 R15 K84 ["Complete"]
  LOADK R16 K90 ["rbxasset://textures/R15Migrator/Icon_Reverted.png"]
  SETTABLEKS R16 R15 K85 ["Reverted"]
  LOADK R16 K91 ["rbxasset://textures/R15Migrator/Icon_Warning.png"]
  SETTABLEKS R16 R15 K86 ["Warning"]
  LOADK R16 K92 ["rbxasset://textures/R15Migrator/Icon_Error.png"]
  SETTABLEKS R16 R15 K87 ["Error"]
  NEWTABLE R16 8 0
  GETTABLEKS R17 R4 K73 ["MainText"]
  SETTABLEKS R17 R16 K69 ["Color"]
  LOADK R17 K93 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R17 R16 K94 ["Image"]
  GETIMPORT R17 K96 [Vector2.new]
  LOADN R18 12
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K97 ["ImageRectOffset"]
  GETIMPORT R17 K96 [Vector2.new]
  LOADN R18 12
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K98 ["ImageRectSize"]
  GETIMPORT R17 K100 [UDim2.fromOffset]
  LOADN R18 12
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K101 ["Size"]
  GETTABLEKS R17 R7 K102 ["Selected"]
  DUPTABLE R18 K103 [{"ImageRectOffset"}]
  GETIMPORT R19 K96 [Vector2.new]
  LOADN R20 24
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K97 ["ImageRectOffset"]
  SETTABLE R18 R16 R17
  GETIMPORT R17 K106 [string.format]
  LOADK R18 K107 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R19 K108 ["Light"]
  CALL R17 2 1
  GETIMPORT R18 K106 [string.format]
  LOADK R19 K107 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R20 K109 ["Dark"]
  CALL R18 2 1
  NEWTABLE R19 1 0
  GETTABLEKS R20 R4 K110 ["Delete"]
  MOVE R22 R18
  LOADK R23 K111 ["Terrain_Delete.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  NEWTABLE R20 1 0
  GETTABLEKS R21 R4 K110 ["Delete"]
  MOVE R23 R17
  LOADK R24 K111 ["Terrain_Delete.png"]
  CONCAT R22 R23 R24
  SETTABLE R22 R20 R21
  DUPTABLE R21 K115 [{"Size", "TabPaneSize", "BackgroundColor", "ViewBackgroundColor"}]
  GETIMPORT R22 K68 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 1
  LOADN R26 230
  CALL R22 4 1
  SETTABLEKS R22 R21 K101 ["Size"]
  GETIMPORT R22 K68 [UDim2.new]
  LOADN R23 1
  LOADN R24 220
  LOADN R25 1
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K112 ["TabPaneSize"]
  GETTABLEKS R22 R4 K116 ["BackgroundPaper"]
  SETTABLEKS R22 R21 K113 ["BackgroundColor"]
  GETTABLEKS R22 R4 K117 ["ForegroundMain"]
  SETTABLEKS R22 R21 K114 ["ViewBackgroundColor"]
  DUPTABLE R22 K122 [{"Spacing", "Size", "IconSize", "IconColor", "IconColorDisabled"}]
  LOADN R23 5
  SETTABLEKS R23 R22 K118 ["Spacing"]
  GETIMPORT R23 K68 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 0
  LOADN R27 26
  CALL R23 4 1
  SETTABLEKS R23 R22 K101 ["Size"]
  GETIMPORT R23 K68 [UDim2.new]
  LOADN R24 0
  LOADN R25 18
  LOADN R26 0
  LOADN R27 18
  CALL R23 4 1
  SETTABLEKS R23 R22 K119 ["IconSize"]
  GETIMPORT R23 K125 [Color3.fromRGB]
  LOADN R24 28
  LOADN R25 197
  LOADN R26 65
  CALL R23 3 1
  SETTABLEKS R23 R22 K120 ["IconColor"]
  GETTABLEKS R23 R4 K126 ["ButtonTextDisabled"]
  SETTABLEKS R23 R22 K121 ["IconColorDisabled"]
  DUPTABLE R23 K130 [{"RowHeight", "TextConfig", "Spacing", "Padding"}]
  LOADN R24 32
  SETTABLEKS R24 R23 K127 ["RowHeight"]
  DUPTABLE R24 K134 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R25 K137 [Enum.Font.SourceSans]
  SETTABLEKS R25 R24 K131 ["Font"]
  GETTABLEKS R25 R4 K138 ["TitlebarText"]
  SETTABLEKS R25 R24 K132 ["TextColor"]
  LOADN R25 14
  SETTABLEKS R25 R24 K133 ["TextSize"]
  SETTABLEKS R24 R23 K128 ["TextConfig"]
  LOADN R24 2
  SETTABLEKS R24 R23 K118 ["Spacing"]
  DUPTABLE R24 K139 [{"Left"}]
  LOADN R25 16
  SETTABLEKS R25 R24 K81 ["Left"]
  SETTABLEKS R24 R23 K129 ["Padding"]
  DUPTABLE R24 K72 [{"Color", "StretchMargin", "Weight"}]
  GETTABLEKS R25 R4 K73 ["MainText"]
  SETTABLEKS R25 R24 K69 ["Color"]
  LOADN R25 0
  SETTABLEKS R25 R24 K70 ["StretchMargin"]
  LOADN R25 1
  SETTABLEKS R25 R24 K71 ["Weight"]
  DUPTABLE R25 K140 [{"Padding", "TextSize", "Font"}]
  DUPTABLE R26 K142 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R27 12
  SETTABLEKS R27 R26 K82 ["Top"]
  LOADN R27 12
  SETTABLEKS R27 R26 K141 ["Bottom"]
  LOADN R27 24
  SETTABLEKS R27 R26 K81 ["Left"]
  LOADN R27 24
  SETTABLEKS R27 R26 K74 ["Right"]
  SETTABLEKS R26 R25 K129 ["Padding"]
  LOADN R26 14
  SETTABLEKS R26 R25 K133 ["TextSize"]
  GETIMPORT R26 K137 [Enum.Font.SourceSans]
  SETTABLEKS R26 R25 K131 ["Font"]
  DUPTABLE R26 K149 [{"BackgroundColor", "BodyBackgroundColor", "Padding", "BodyPadding", "FooterHeight", "InstructionsHeight", "ButtonSize", "DialogMinContentSize"}]
  GETTABLEKS R27 R4 K150 ["MainBackground"]
  SETTABLEKS R27 R26 K113 ["BackgroundColor"]
  GETTABLEKS R27 R4 K151 ["SubBackground2"]
  SETTABLEKS R27 R26 K143 ["BodyBackgroundColor"]
  DUPTABLE R27 K152 [{"Left", "Right"}]
  LOADN R28 24
  SETTABLEKS R28 R27 K81 ["Left"]
  LOADN R28 24
  SETTABLEKS R28 R27 K74 ["Right"]
  SETTABLEKS R27 R26 K129 ["Padding"]
  DUPTABLE R27 K142 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R28 12
  SETTABLEKS R28 R27 K82 ["Top"]
  LOADN R28 12
  SETTABLEKS R28 R27 K141 ["Bottom"]
  LOADN R28 12
  SETTABLEKS R28 R27 K81 ["Left"]
  LOADN R28 12
  SETTABLEKS R28 R27 K74 ["Right"]
  SETTABLEKS R27 R26 K144 ["BodyPadding"]
  LOADN R27 72
  SETTABLEKS R27 R26 K145 ["FooterHeight"]
  LOADN R27 84
  SETTABLEKS R27 R26 K146 ["InstructionsHeight"]
  SETTABLEKS R11 R26 K147 ["ButtonSize"]
  GETIMPORT R27 K96 [Vector2.new]
  LOADN R28 144
  LOADN R29 100
  CALL R27 2 1
  SETTABLEKS R27 R26 K148 ["DialogMinContentSize"]
  DUPTABLE R27 K155 [{"Arrow", "Indent", "TextSize", "BackgroundColor"}]
  DUPTABLE R28 K158 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color", "Padding"}]
  LOADK R29 K93 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R29 R28 K94 ["Image"]
  LOADN R29 12
  SETTABLEKS R29 R28 K101 ["Size"]
  GETIMPORT R29 K96 [Vector2.new]
  LOADN R30 24
  LOADN R31 0
  CALL R29 2 1
  SETTABLEKS R29 R28 K156 ["ExpandedOffset"]
  GETIMPORT R29 K96 [Vector2.new]
  LOADN R30 12
  LOADN R31 0
  CALL R29 2 1
  SETTABLEKS R29 R28 K157 ["CollapsedOffset"]
  GETTABLEKS R29 R4 K73 ["MainText"]
  SETTABLEKS R29 R28 K69 ["Color"]
  LOADN R29 6
  SETTABLEKS R29 R28 K129 ["Padding"]
  SETTABLEKS R28 R27 K153 ["Arrow"]
  LOADN R28 16
  SETTABLEKS R28 R27 K154 ["Indent"]
  LOADN R28 14
  SETTABLEKS R28 R27 K133 ["TextSize"]
  GETTABLEKS R28 R4 K151 ["SubBackground2"]
  SETTABLEKS R28 R27 K113 ["BackgroundColor"]
  DUPTABLE R28 K161 [{"TextSize", "BackgroundColor", "BackgroundTransparency", "BarHeight", "Padding"}]
  LOADN R29 25
  SETTABLEKS R29 R28 K133 ["TextSize"]
  GETIMPORT R29 K125 [Color3.fromRGB]
  LOADN R30 0
  LOADN R31 0
  LOADN R32 0
  CALL R29 3 1
  SETTABLEKS R29 R28 K113 ["BackgroundColor"]
  LOADK R29 K162 [0.2]
  SETTABLEKS R29 R28 K159 ["BackgroundTransparency"]
  LOADN R29 12
  SETTABLEKS R29 R28 K160 ["BarHeight"]
  DUPTABLE R29 K152 [{"Left", "Right"}]
  LOADN R30 24
  SETTABLEKS R30 R29 K81 ["Left"]
  LOADN R30 24
  SETTABLEKS R30 R29 K74 ["Right"]
  SETTABLEKS R29 R28 K129 ["Padding"]
  DUPTABLE R29 K166 [{"TopBarColor", "BackgroundColor", "Arrow", "TopBarHeight", "TopBarPadding"}]
  GETTABLEKS R30 R4 K151 ["SubBackground2"]
  SETTABLEKS R30 R29 K163 ["TopBarColor"]
  GETTABLEKS R30 R4 K167 ["SubBackground"]
  SETTABLEKS R30 R29 K113 ["BackgroundColor"]
  DUPTABLE R30 K170 [{"Image", "Size", "Offset", "Color", "HoverColor"}]
  LOADK R31 K93 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R31 R30 K94 ["Image"]
  LOADN R31 12
  SETTABLEKS R31 R30 K101 ["Size"]
  GETIMPORT R31 K96 [Vector2.new]
  LOADN R32 24
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K168 ["Offset"]
  GETTABLEKS R31 R4 K171 ["DimmedText"]
  SETTABLEKS R31 R30 K69 ["Color"]
  GETTABLEKS R31 R4 K172 ["BrightText"]
  SETTABLEKS R31 R30 K169 ["HoverColor"]
  SETTABLEKS R30 R29 K153 ["Arrow"]
  LOADN R30 16
  SETTABLEKS R30 R29 K164 ["TopBarHeight"]
  DUPTABLE R30 K75 [{"Right"}]
  LOADN R31 8
  SETTABLEKS R31 R30 K74 ["Right"]
  SETTABLEKS R30 R29 K165 ["TopBarPadding"]
  DUPTABLE R30 K173 [{"FooterHeight", "InstructionsHeight"}]
  LOADN R31 88
  SETTABLEKS R31 R30 K145 ["FooterHeight"]
  LOADN R31 64
  SETTABLEKS R31 R30 K146 ["InstructionsHeight"]
  DUPTABLE R31 K179 [{"Spacing", "SeparatorStyle", "RevertButtonSize", "ConvertButtonSize", "ButtonSpacing", "ButtonPadding"}]
  LOADN R32 5
  SETTABLEKS R32 R31 K118 ["Spacing"]
  SETTABLEKS R12 R31 K174 ["SeparatorStyle"]
  SETTABLEKS R11 R31 K175 ["RevertButtonSize"]
  SETTABLEKS R11 R31 K176 ["ConvertButtonSize"]
  LOADN R32 10
  SETTABLEKS R32 R31 K177 ["ButtonSpacing"]
  SETTABLEKS R13 R31 K178 ["ButtonPadding"]
  GETTABLEKS R33 R10 K180 ["Dictionary"]
  GETTABLEKS R32 R33 K181 ["join"]
  MOVE R33 R31
  MOVE R34 R14
  CALL R32 2 1
  MOVE R31 R32
  DUPTABLE R32 K184 [{"RowHeight", "Spacing", "SectionHeadBackgroundColor", "SelectedColor"}]
  LOADN R33 32
  SETTABLEKS R33 R32 K127 ["RowHeight"]
  LOADN R33 4
  SETTABLEKS R33 R32 K118 ["Spacing"]
  GETTABLEKS R33 R4 K150 ["MainBackground"]
  SETTABLEKS R33 R32 K182 ["SectionHeadBackgroundColor"]
  GETTABLEKS R33 R4 K185 ["DialogMainButtonSelected"]
  SETTABLEKS R33 R32 K183 ["SelectedColor"]
  DUPTABLE R33 K191 [{"ViewportBackgroundColor", "ViewportAspectRatio", "SelectionColor", "ViewportHeight", "TreeHeight"}]
  GETTABLEKS R34 R4 K167 ["SubBackground"]
  SETTABLEKS R34 R33 K186 ["ViewportBackgroundColor"]
  LOADK R34 K192 [0.77027027027027]
  SETTABLEKS R34 R33 K187 ["ViewportAspectRatio"]
  GETIMPORT R34 K125 [Color3.fromRGB]
  LOADN R35 13
  LOADN R36 105
  LOADN R37 172
  CALL R34 3 1
  SETTABLEKS R34 R33 K188 ["SelectionColor"]
  LOADN R34 44
  SETTABLEKS R34 R33 K189 ["ViewportHeight"]
  LOADN R34 44
  SETTABLEKS R34 R33 K190 ["TreeHeight"]
  DUPTABLE R34 K197 [{"Arrow", "ArrowPadding", "Width", "HorizontalSpacing", "VerticalSpacing"}]
  DUPTABLE R35 K198 [{"Image", "Size", "ImageRectSize", "Offset", "Color"}]
  LOADK R36 K93 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R36 R35 K94 ["Image"]
  GETIMPORT R36 K100 [UDim2.fromOffset]
  LOADN R37 12
  LOADN R38 12
  CALL R36 2 1
  SETTABLEKS R36 R35 K101 ["Size"]
  GETIMPORT R36 K96 [Vector2.new]
  LOADN R37 12
  LOADN R38 12
  CALL R36 2 1
  SETTABLEKS R36 R35 K98 ["ImageRectSize"]
  GETIMPORT R36 K96 [Vector2.new]
  LOADN R37 12
  LOADN R38 0
  CALL R36 2 1
  SETTABLEKS R36 R35 K168 ["Offset"]
  GETTABLEKS R36 R4 K73 ["MainText"]
  SETTABLEKS R36 R35 K69 ["Color"]
  SETTABLEKS R35 R34 K153 ["Arrow"]
  LOADN R35 12
  SETTABLEKS R35 R34 K193 ["ArrowPadding"]
  LOADN R35 200
  SETTABLEKS R35 R34 K194 ["Width"]
  LOADN R35 8
  SETTABLEKS R35 R34 K195 ["HorizontalSpacing"]
  LOADN R35 8
  SETTABLEKS R35 R34 K196 ["VerticalSpacing"]
  DUPTABLE R35 K200 [{"RowHeight", "CompactNoBorder"}]
  LOADN R36 20
  SETTABLEKS R36 R35 K127 ["RowHeight"]
  GETTABLEKS R37 R10 K180 ["Dictionary"]
  GETTABLEKS R36 R37 K181 ["join"]
  MOVE R37 R9
  DUPTABLE R38 K204 [{"Text", "Indent", "RowHeight", "Arrow", "IconPadding", "HoverColor", "SelectedColor", "SelectedTextColor"}]
  DUPTABLE R39 K134 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R40 K137 [Enum.Font.SourceSans]
  SETTABLEKS R40 R39 K131 ["Font"]
  GETTABLEKS R40 R4 K73 ["MainText"]
  SETTABLEKS R40 R39 K132 ["TextColor"]
  LOADN R40 16
  SETTABLEKS R40 R39 K133 ["TextSize"]
  SETTABLEKS R39 R38 K201 ["Text"]
  LOADN R39 16
  SETTABLEKS R39 R38 K154 ["Indent"]
  LOADN R39 20
  SETTABLEKS R39 R38 K127 ["RowHeight"]
  DUPTABLE R39 K205 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color"}]
  LOADK R40 K93 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R40 R39 K94 ["Image"]
  LOADN R40 12
  SETTABLEKS R40 R39 K101 ["Size"]
  GETIMPORT R40 K96 [Vector2.new]
  LOADN R41 24
  LOADN R42 0
  CALL R40 2 1
  SETTABLEKS R40 R39 K156 ["ExpandedOffset"]
  GETIMPORT R40 K96 [Vector2.new]
  LOADN R41 12
  LOADN R42 0
  CALL R40 2 1
  SETTABLEKS R40 R39 K157 ["CollapsedOffset"]
  GETTABLEKS R40 R4 K73 ["MainText"]
  SETTABLEKS R40 R39 K69 ["Color"]
  SETTABLEKS R39 R38 K153 ["Arrow"]
  LOADN R39 3
  SETTABLEKS R39 R38 K202 ["IconPadding"]
  GETTABLEKS R39 R4 K206 ["ButtonHover"]
  SETTABLEKS R39 R38 K169 ["HoverColor"]
  GETTABLEKS R39 R4 K207 ["DialogMainButton"]
  SETTABLEKS R39 R38 K183 ["SelectedColor"]
  GETTABLEKS R39 R4 K208 ["DialogMainButtonText"]
  SETTABLEKS R39 R38 K203 ["SelectedTextColor"]
  CALL R36 2 1
  SETTABLEKS R36 R35 K199 ["CompactNoBorder"]
  DUPTABLE R36 K209 [{"Size", "Color"}]
  LOADN R37 36
  SETTABLEKS R37 R36 K101 ["Size"]
  GETTABLEKS R37 R4 K73 ["MainText"]
  SETTABLEKS R37 R36 K69 ["Color"]
  DUPTABLE R37 K211 [{"ExpandablePaneHeaderSize", "InstructionsHeight"}]
  GETIMPORT R38 K68 [UDim2.new]
  LOADN R39 1
  LOADN R40 0
  LOADN R41 0
  LOADN R42 36
  CALL R38 4 1
  SETTABLEKS R38 R37 K210 ["ExpandablePaneHeaderSize"]
  LOADN R38 80
  SETTABLEKS R38 R37 K146 ["InstructionsHeight"]
  DUPTABLE R38 K214 [{"HeaderHeight", "FooterHeight", "HeaderColor"}]
  LOADN R39 42
  SETTABLEKS R39 R38 K212 ["HeaderHeight"]
  LOADN R39 88
  SETTABLEKS R39 R38 K145 ["FooterHeight"]
  GETTABLEKS R39 R4 K215 ["ForegroundContrast"]
  SETTABLEKS R39 R38 K213 ["HeaderColor"]
  DUPTABLE R39 K216 [{"HeaderColor"}]
  GETTABLEKS R40 R4 K215 ["ForegroundContrast"]
  SETTABLEKS R40 R39 K213 ["HeaderColor"]
  DUPTABLE R40 K217 [{"BackgroundColor", "RevertButtonSize", "ConvertButtonSize", "Spacing", "ButtonSpacing", "SeparatorStyle", "ButtonPadding"}]
  GETTABLEKS R41 R4 K151 ["SubBackground2"]
  SETTABLEKS R41 R40 K113 ["BackgroundColor"]
  SETTABLEKS R11 R40 K175 ["RevertButtonSize"]
  SETTABLEKS R11 R40 K176 ["ConvertButtonSize"]
  LOADN R41 5
  SETTABLEKS R41 R40 K118 ["Spacing"]
  LOADN R41 10
  SETTABLEKS R41 R40 K177 ["ButtonSpacing"]
  SETTABLEKS R12 R40 K174 ["SeparatorStyle"]
  SETTABLEKS R13 R40 K178 ["ButtonPadding"]
  GETTABLEKS R42 R10 K180 ["Dictionary"]
  GETTABLEKS R41 R42 K181 ["join"]
  MOVE R42 R40
  MOVE R43 R14
  CALL R41 2 1
  MOVE R40 R41
  DUPTABLE R41 K223 [{"FilterHeight", "FilterWidth", "ItemHeight", "ListItemTextSize", "ListItemPadding", "Padding", "Spacing", "SeparatorStyle"}]
  LOADN R42 36
  SETTABLEKS R42 R41 K218 ["FilterHeight"]
  LOADN R42 192
  SETTABLEKS R42 R41 K219 ["FilterWidth"]
  LOADN R42 22
  SETTABLEKS R42 R41 K220 ["ItemHeight"]
  LOADN R42 14
  SETTABLEKS R42 R41 K221 ["ListItemTextSize"]
  LOADN R42 6
  SETTABLEKS R42 R41 K222 ["ListItemPadding"]
  DUPTABLE R42 K224 [{"Left", "Top", "Right"}]
  LOADN R43 12
  SETTABLEKS R43 R42 K81 ["Left"]
  LOADN R43 5
  SETTABLEKS R43 R42 K82 ["Top"]
  LOADN R43 12
  SETTABLEKS R43 R42 K74 ["Right"]
  SETTABLEKS R42 R41 K129 ["Padding"]
  LOADN R42 5
  SETTABLEKS R42 R41 K118 ["Spacing"]
  SETTABLEKS R12 R41 K174 ["SeparatorStyle"]
  DUPTABLE R42 K229 [{"StatusImageSize", "Spacing", "CountTextSize", "StatusIcons", "RevertedIconColor"}]
  GETIMPORT R43 K100 [UDim2.fromOffset]
  LOADN R44 16
  LOADN R45 16
  CALL R43 2 1
  SETTABLEKS R43 R42 K225 ["StatusImageSize"]
  LOADN R43 4
  SETTABLEKS R43 R42 K118 ["Spacing"]
  LOADN R43 15
  SETTABLEKS R43 R42 K226 ["CountTextSize"]
  SETTABLEKS R15 R42 K227 ["StatusIcons"]
  GETTABLEKS R43 R4 K172 ["BrightText"]
  SETTABLEKS R43 R42 K228 ["RevertedIconColor"]
  DUPTABLE R43 K231 [{"StatusIcons", "RowHeight", "ConsoleHeight", "BackgroundColor", "IconSize", "Padding", "Arrow"}]
  SETTABLEKS R15 R43 K227 ["StatusIcons"]
  LOADN R44 24
  SETTABLEKS R44 R43 K127 ["RowHeight"]
  LOADN R44 48
  SETTABLEKS R44 R43 K230 ["ConsoleHeight"]
  GETTABLEKS R44 R4 K151 ["SubBackground2"]
  SETTABLEKS R44 R43 K113 ["BackgroundColor"]
  GETIMPORT R44 K100 [UDim2.fromOffset]
  LOADN R45 16
  LOADN R46 16
  CALL R44 2 1
  SETTABLEKS R44 R43 K119 ["IconSize"]
  DUPTABLE R44 K152 [{"Left", "Right"}]
  LOADN R45 8
  SETTABLEKS R45 R44 K81 ["Left"]
  LOADN R45 8
  SETTABLEKS R45 R44 K74 ["Right"]
  SETTABLEKS R44 R43 K129 ["Padding"]
  DUPTABLE R44 K170 [{"Image", "Size", "Offset", "Color", "HoverColor"}]
  LOADK R45 K93 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R45 R44 K94 ["Image"]
  LOADN R45 12
  SETTABLEKS R45 R44 K101 ["Size"]
  GETIMPORT R45 K96 [Vector2.new]
  LOADN R46 0
  LOADN R47 0
  CALL R45 2 1
  SETTABLEKS R45 R44 K168 ["Offset"]
  GETTABLEKS R45 R4 K171 ["DimmedText"]
  SETTABLEKS R45 R44 K69 ["Color"]
  GETTABLEKS R45 R4 K172 ["BrightText"]
  SETTABLEKS R45 R44 K169 ["HoverColor"]
  SETTABLEKS R44 R43 K153 ["Arrow"]
  DUPTABLE R44 K234 [{"Arrow", "Spacing", "Indent", "TextSize", "LinkColor", "IconViewSize"}]
  DUPTABLE R45 K158 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color", "Padding"}]
  LOADK R46 K93 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R46 R45 K94 ["Image"]
  LOADN R46 12
  SETTABLEKS R46 R45 K101 ["Size"]
  GETIMPORT R46 K96 [Vector2.new]
  LOADN R47 24
  LOADN R48 0
  CALL R46 2 1
  SETTABLEKS R46 R45 K156 ["ExpandedOffset"]
  GETIMPORT R46 K96 [Vector2.new]
  LOADN R47 12
  LOADN R48 0
  CALL R46 2 1
  SETTABLEKS R46 R45 K157 ["CollapsedOffset"]
  GETTABLEKS R46 R4 K73 ["MainText"]
  SETTABLEKS R46 R45 K69 ["Color"]
  LOADN R46 6
  SETTABLEKS R46 R45 K129 ["Padding"]
  SETTABLEKS R45 R44 K153 ["Arrow"]
  LOADN R45 12
  SETTABLEKS R45 R44 K118 ["Spacing"]
  LOADN R45 16
  SETTABLEKS R45 R44 K154 ["Indent"]
  LOADN R45 14
  SETTABLEKS R45 R44 K133 ["TextSize"]
  GETTABLEKS R45 R4 K235 ["LinkText"]
  SETTABLEKS R45 R44 K232 ["LinkColor"]
  GETIMPORT R45 K100 [UDim2.fromOffset]
  LOADN R46 76
  LOADN R47 16
  CALL R45 2 1
  SETTABLEKS R45 R44 K233 ["IconViewSize"]
  DUPTABLE R45 K236 [{"ButtonSize", "Spacing", "Padding"}]
  GETIMPORT R46 K100 [UDim2.fromOffset]
  LOADN R47 72
  LOADN R48 36
  CALL R46 2 1
  SETTABLEKS R46 R45 K147 ["ButtonSize"]
  LOADN R46 8
  SETTABLEKS R46 R45 K118 ["Spacing"]
  DUPTABLE R46 K152 [{"Left", "Right"}]
  LOADN R47 24
  SETTABLEKS R47 R46 K81 ["Left"]
  LOADN R47 24
  SETTABLEKS R47 R46 K74 ["Right"]
  SETTABLEKS R46 R45 K129 ["Padding"]
  DUPTABLE R46 K237 [{"SelectAllRow"}]
  DUPTABLE R47 K238 [{"RowHeight", "Padding"}]
  LOADN R48 20
  SETTABLEKS R48 R47 K127 ["RowHeight"]
  LOADN R48 2
  SETTABLEKS R48 R47 K129 ["Padding"]
  SETTABLEKS R47 R46 K26 ["SelectAllRow"]
  DUPTABLE R47 K240 [{"MinContentSize"}]
  GETIMPORT R48 K96 [Vector2.new]
  LOADN R49 144
  LOADN R50 100
  CALL R48 2 1
  SETTABLEKS R48 R47 K239 ["MinContentSize"]
  DUPTABLE R48 K240 [{"MinContentSize"}]
  GETIMPORT R49 K96 [Vector2.new]
  LOADN R50 144
  LOADN R51 100
  CALL R49 2 1
  SETTABLEKS R49 R48 K239 ["MinContentSize"]
  DUPTABLE R49 K245 [{"PaneHeight", "TitleTextSize", "SaveRulesSize", "Padding", "Spacing", "ListHeightOffset", "RowHeight", "SeparatorStyle"}]
  LOADN R50 250
  SETTABLEKS R50 R49 K241 ["PaneHeight"]
  LOADN R50 22
  SETTABLEKS R50 R49 K242 ["TitleTextSize"]
  GETIMPORT R50 K100 [UDim2.fromOffset]
  LOADN R51 100
  LOADN R52 36
  CALL R50 2 1
  SETTABLEKS R50 R49 K243 ["SaveRulesSize"]
  DUPTABLE R50 K246 [{"Left", "Right", "Top", "Bottom"}]
  LOADN R51 24
  SETTABLEKS R51 R50 K81 ["Left"]
  LOADN R51 24
  SETTABLEKS R51 R50 K74 ["Right"]
  LOADN R51 24
  SETTABLEKS R51 R50 K82 ["Top"]
  LOADN R51 24
  SETTABLEKS R51 R50 K141 ["Bottom"]
  SETTABLEKS R50 R49 K129 ["Padding"]
  LOADN R50 12
  SETTABLEKS R50 R49 K118 ["Spacing"]
  LOADN R50 194
  SETTABLEKS R50 R49 K244 ["ListHeightOffset"]
  LOADN R50 48
  SETTABLEKS R50 R49 K127 ["RowHeight"]
  SETTABLEKS R24 R49 K174 ["SeparatorStyle"]
  DUPTABLE R50 K251 [{"TextInputSize", "FromLabelSize", "ToggleSize", "ArrowSize", "BackgroundColor", "Spacing", "Arrow", "Padding"}]
  GETIMPORT R51 K100 [UDim2.fromOffset]
  LOADN R52 170
  LOADN R53 36
  CALL R51 2 1
  SETTABLEKS R51 R50 K247 ["TextInputSize"]
  GETIMPORT R51 K100 [UDim2.fromOffset]
  LOADN R52 85
  LOADN R53 36
  CALL R51 2 1
  SETTABLEKS R51 R50 K248 ["FromLabelSize"]
  GETIMPORT R51 K100 [UDim2.fromOffset]
  LOADN R52 48
  LOADN R53 0
  CALL R51 2 1
  SETTABLEKS R51 R50 K249 ["ToggleSize"]
  GETIMPORT R51 K100 [UDim2.fromOffset]
  LOADN R52 24
  LOADN R53 0
  CALL R51 2 1
  SETTABLEKS R51 R50 K250 ["ArrowSize"]
  GETTABLEKS R51 R4 K167 ["SubBackground"]
  SETTABLEKS R51 R50 K113 ["BackgroundColor"]
  LOADN R51 16
  SETTABLEKS R51 R50 K118 ["Spacing"]
  LOADK R51 K252 ["→"]
  SETTABLEKS R51 R50 K153 ["Arrow"]
  DUPTABLE R51 K152 [{"Left", "Right"}]
  LOADN R52 10
  SETTABLEKS R52 R51 K81 ["Left"]
  LOADN R52 10
  SETTABLEKS R52 R51 K74 ["Right"]
  SETTABLEKS R51 R50 K129 ["Padding"]
  DUPTABLE R51 K254 [{"FooterHeight", "InstructionsHeight", "Header", "ExpandedOffset", "CollapsedOffset", "HeaderHeight"}]
  LOADN R52 88
  SETTABLEKS R52 R51 K145 ["FooterHeight"]
  LOADN R52 64
  SETTABLEKS R52 R51 K146 ["InstructionsHeight"]
  DUPTABLE R52 K256 [{"Arrow", "Container", "Text"}]
  SETTABLEKS R16 R52 K153 ["Arrow"]
  DUPTABLE R53 K262 [{"Padding", "BackgroundColor", "BorderColor3", "BorderSizePixel", "Size", "Spacing", "Layout", "VerticalAlignment", "HorizontalAlignment"}]
  DUPTABLE R54 K152 [{"Left", "Right"}]
  LOADN R55 8
  SETTABLEKS R55 R54 K81 ["Left"]
  LOADN R55 8
  SETTABLEKS R55 R54 K74 ["Right"]
  SETTABLEKS R54 R53 K129 ["Padding"]
  GETTABLEKS R54 R4 K215 ["ForegroundContrast"]
  SETTABLEKS R54 R53 K113 ["BackgroundColor"]
  GETTABLEKS R54 R4 K263 ["OtherDivider"]
  SETTABLEKS R54 R53 K257 ["BorderColor3"]
  LOADN R54 1
  SETTABLEKS R54 R53 K258 ["BorderSizePixel"]
  GETIMPORT R54 K68 [UDim2.new]
  LOADN R55 1
  LOADN R56 0
  LOADN R57 0
  LOADN R58 20
  CALL R54 4 1
  SETTABLEKS R54 R53 K101 ["Size"]
  LOADN R54 6
  SETTABLEKS R54 R53 K118 ["Spacing"]
  GETIMPORT R54 K266 [Enum.FillDirection.Horizontal]
  SETTABLEKS R54 R53 K259 ["Layout"]
  GETIMPORT R54 K268 [Enum.VerticalAlignment.Center]
  SETTABLEKS R54 R53 K260 ["VerticalAlignment"]
  GETIMPORT R54 K269 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R54 R53 K261 ["HorizontalAlignment"]
  SETTABLEKS R53 R52 K255 ["Container"]
  DUPTABLE R53 K134 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R54 K271 [Enum.Font.SourceSansBold]
  SETTABLEKS R54 R53 K131 ["Font"]
  GETTABLEKS R54 R4 K73 ["MainText"]
  SETTABLEKS R54 R53 K132 ["TextColor"]
  LOADN R54 14
  SETTABLEKS R54 R53 K133 ["TextSize"]
  SETTABLEKS R53 R52 K201 ["Text"]
  SETTABLEKS R52 R51 K253 ["Header"]
  LOADN R52 16
  SETTABLEKS R52 R51 K156 ["ExpandedOffset"]
  LOADN R52 20
  SETTABLEKS R52 R51 K157 ["CollapsedOffset"]
  LOADN R52 20
  SETTABLEKS R52 R51 K212 ["HeaderHeight"]
  DUPTABLE R52 K279 [{"PanePadding", "SubTextSize", "Spacing", "VerticalTextSpacing", "BoldFont", "RemovalInstructionsHeight", "CommitButtonSize", "CommitTextHeight"}]
  DUPTABLE R53 K280 [{"Left", "Top"}]
  LOADN R54 10
  SETTABLEKS R54 R53 K81 ["Left"]
  LOADN R54 20
  SETTABLEKS R54 R53 K82 ["Top"]
  SETTABLEKS R53 R52 K272 ["PanePadding"]
  LOADN R53 13
  SETTABLEKS R53 R52 K273 ["SubTextSize"]
  LOADN R53 5
  SETTABLEKS R53 R52 K118 ["Spacing"]
  LOADN R53 10
  SETTABLEKS R53 R52 K274 ["VerticalTextSpacing"]
  GETIMPORT R53 K271 [Enum.Font.SourceSansBold]
  SETTABLEKS R53 R52 K275 ["BoldFont"]
  LOADN R53 50
  SETTABLEKS R53 R52 K276 ["RemovalInstructionsHeight"]
  SETTABLEKS R11 R52 K277 ["CommitButtonSize"]
  LOADN R53 50
  SETTABLEKS R53 R52 K278 ["CommitTextHeight"]
  DUPTABLE R53 K283 [{"PanePadding", "Spacing", "SubTextSize", "TextSize", "VerticalTextSpacing", "BackgroundColor", "Width", "ThumbnailHeight", "ButtonPadding", "ButtonPanePadding"}]
  DUPTABLE R54 K280 [{"Left", "Top"}]
  LOADN R55 10
  SETTABLEKS R55 R54 K81 ["Left"]
  LOADN R55 20
  SETTABLEKS R55 R54 K82 ["Top"]
  SETTABLEKS R54 R53 K272 ["PanePadding"]
  LOADN R54 5
  SETTABLEKS R54 R53 K118 ["Spacing"]
  LOADN R54 13
  SETTABLEKS R54 R53 K273 ["SubTextSize"]
  LOADN R54 16
  SETTABLEKS R54 R53 K133 ["TextSize"]
  LOADN R54 10
  SETTABLEKS R54 R53 K274 ["VerticalTextSpacing"]
  GETTABLEKS R54 R4 K117 ["ForegroundMain"]
  SETTABLEKS R54 R53 K113 ["BackgroundColor"]
  LOADN R54 144
  SETTABLEKS R54 R53 K194 ["Width"]
  LOADN R54 225
  SETTABLEKS R54 R53 K281 ["ThumbnailHeight"]
  GETIMPORT R54 K96 [Vector2.new]
  LOADN R55 30
  LOADN R56 10
  CALL R54 2 1
  SETTABLEKS R54 R53 K178 ["ButtonPadding"]
  GETIMPORT R54 K96 [Vector2.new]
  LOADN R55 30
  LOADN R56 30
  CALL R54 2 1
  SETTABLEKS R54 R53 K282 ["ButtonPanePadding"]
  DUPTABLE R54 K287 [{"HeaderColor", "DividerColor", "Arrow", "CompleteIcon", "SortBy"}]
  GETTABLEKS R55 R4 K215 ["ForegroundContrast"]
  SETTABLEKS R55 R54 K213 ["HeaderColor"]
  GETTABLEKS R55 R4 K263 ["OtherDivider"]
  SETTABLEKS R55 R54 K284 ["DividerColor"]
  SETTABLEKS R16 R54 K153 ["Arrow"]
  GETTABLEKS R55 R15 K84 ["Complete"]
  SETTABLEKS R55 R54 K285 ["CompleteIcon"]
  DUPTABLE R55 K289 [{"Height", "Width", "Spacing"}]
  LOADN R56 36
  SETTABLEKS R56 R55 K288 ["Height"]
  LOADN R56 192
  SETTABLEKS R56 R55 K194 ["Width"]
  LOADN R56 20
  SETTABLEKS R56 R55 K118 ["Spacing"]
  SETTABLEKS R55 R54 K286 ["SortBy"]
  DUPTABLE R55 K292 [{"RowHeight", "MaxTableHeight", "ColumnOffset"}]
  LOADN R56 28
  SETTABLEKS R56 R55 K127 ["RowHeight"]
  LOADN R56 196
  SETTABLEKS R56 R55 K290 ["MaxTableHeight"]
  LOADN R56 60
  SETTABLEKS R56 R55 K291 ["ColumnOffset"]
  DUPTABLE R56 K293 [{"SeparatorStyle", "Spacing", "Padding"}]
  SETTABLEKS R12 R56 K174 ["SeparatorStyle"]
  LOADN R57 5
  SETTABLEKS R57 R56 K118 ["Spacing"]
  SETTABLEKS R13 R56 K129 ["Padding"]
  GETTABLEKS R58 R10 K180 ["Dictionary"]
  GETTABLEKS R57 R58 K181 ["join"]
  MOVE R58 R56
  MOVE R59 R14
  CALL R57 2 1
  MOVE R56 R57
  DUPTABLE R57 K295 [{"Spacing", "PreviewContainerSize"}]
  LOADN R58 10
  SETTABLEKS R58 R57 K118 ["Spacing"]
  GETIMPORT R58 K68 [UDim2.new]
  LOADN R59 1
  LOADN R60 0
  LOADN R61 0
  LOADN R62 148
  CALL R58 4 1
  SETTABLEKS R58 R57 K294 ["PreviewContainerSize"]
  DUPTABLE R58 K297 [{"Padding", "BackgroundColor", "ResetButtonSize"}]
  LOADN R59 5
  SETTABLEKS R59 R58 K129 ["Padding"]
  GETTABLEKS R59 R4 K215 ["ForegroundContrast"]
  SETTABLEKS R59 R58 K113 ["BackgroundColor"]
  GETIMPORT R59 K100 [UDim2.fromOffset]
  LOADN R60 28
  LOADN R61 28
  CALL R59 2 1
  SETTABLEKS R59 R58 K296 ["ResetButtonSize"]
  DUPTABLE R59 K300 [{"Arrow", "Padding", "PreviewWindowSize", "PreviewWindowPosition"}]
  DUPTABLE R60 K302 [{"Image", "Size", "ImageRectSize", "Position", "Offset", "Color"}]
  LOADK R61 K93 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R61 R60 K94 ["Image"]
  GETIMPORT R61 K100 [UDim2.fromOffset]
  LOADN R62 12
  LOADN R63 12
  CALL R61 2 1
  SETTABLEKS R61 R60 K101 ["Size"]
  GETIMPORT R61 K96 [Vector2.new]
  LOADN R62 12
  LOADN R63 12
  CALL R61 2 1
  SETTABLEKS R61 R60 K98 ["ImageRectSize"]
  GETIMPORT R61 K68 [UDim2.new]
  LOADK R62 K47 ["ScriptIconView"]
  LOADN R63 250
  LOADK R64 K47 ["ScriptIconView"]
  LOADN R65 250
  CALL R61 4 1
  SETTABLEKS R61 R60 K301 ["Position"]
  GETIMPORT R61 K96 [Vector2.new]
  LOADN R62 12
  LOADN R63 0
  CALL R61 2 1
  SETTABLEKS R61 R60 K168 ["Offset"]
  GETTABLEKS R61 R4 K73 ["MainText"]
  SETTABLEKS R61 R60 K69 ["Color"]
  SETTABLEKS R60 R59 K153 ["Arrow"]
  LOADN R60 10
  SETTABLEKS R60 R59 K129 ["Padding"]
  GETIMPORT R60 K68 [UDim2.new]
  LOADK R61 K47 ["ScriptIconView"]
  LOADN R62 246
  LOADN R63 1
  LOADN R64 0
  CALL R60 4 1
  SETTABLEKS R60 R59 K298 ["PreviewWindowSize"]
  GETIMPORT R60 K68 [UDim2.new]
  LOADK R61 K47 ["ScriptIconView"]
  LOADN R62 10
  LOADN R63 0
  LOADN R64 0
  CALL R60 4 1
  SETTABLEKS R60 R59 K299 ["PreviewWindowPosition"]
  DUPTABLE R60 K304 [{"ButtonSize", "Spacing"}]
  GETIMPORT R61 K68 [UDim2.new]
  LOADN R62 0
  LOADN R63 71
  LOADN R64 0
  LOADN R65 28
  CALL R61 4 1
  SETTABLEKS R61 R60 K147 ["ButtonSize"]
  LOADN R61 10
  SETTABLEKS R61 R60 K118 ["Spacing"]
  DUPTABLE R61 K308 [{"SelectedBorderColor", "SelectedColor", "StatusImageSize", "Icons", "Content", "Header"}]
  GETTABLEKS R62 R4 K185 ["DialogMainButtonSelected"]
  SETTABLEKS R62 R61 K305 ["SelectedBorderColor"]
  GETTABLEKS R62 R4 K150 ["MainBackground"]
  SETTABLEKS R62 R61 K183 ["SelectedColor"]
  GETIMPORT R62 K100 [UDim2.fromOffset]
  LOADN R63 16
  LOADN R64 16
  CALL R62 2 1
  SETTABLEKS R62 R61 K225 ["StatusImageSize"]
  DUPTABLE R62 K310 [{"Success", "Warning"}]
  LOADK R63 K89 ["rbxasset://textures/R15Migrator/Icon_Checkmark.png"]
  SETTABLEKS R63 R62 K309 ["Success"]
  LOADK R63 K91 ["rbxasset://textures/R15Migrator/Icon_Warning.png"]
  SETTABLEKS R63 R62 K86 ["Warning"]
  SETTABLEKS R62 R61 K306 ["Icons"]
  DUPTABLE R62 K311 [{"Padding"}]
  DUPTABLE R63 K312 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R64 28
  SETTABLEKS R64 R63 K81 ["Left"]
  LOADN R64 10
  SETTABLEKS R64 R63 K82 ["Top"]
  LOADN R64 28
  SETTABLEKS R64 R63 K74 ["Right"]
  LOADN R64 10
  SETTABLEKS R64 R63 K141 ["Bottom"]
  SETTABLEKS R63 R62 K129 ["Padding"]
  SETTABLEKS R62 R61 K307 ["Content"]
  DUPTABLE R62 K313 [{"Arrow", "HorizontalAlignment", "Padding", "Size", "Spacing", "Text", "VerticalAlignment"}]
  SETTABLEKS R16 R62 K153 ["Arrow"]
  GETIMPORT R63 K269 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R63 R62 K261 ["HorizontalAlignment"]
  DUPTABLE R63 K152 [{"Left", "Right"}]
  LOADN R64 16
  SETTABLEKS R64 R63 K81 ["Left"]
  LOADN R64 16
  SETTABLEKS R64 R63 K74 ["Right"]
  SETTABLEKS R63 R62 K129 ["Padding"]
  GETIMPORT R63 K68 [UDim2.new]
  LOADN R64 1
  LOADN R65 0
  LOADN R66 0
  LOADN R67 32
  CALL R63 4 1
  SETTABLEKS R63 R62 K101 ["Size"]
  LOADN R63 6
  SETTABLEKS R63 R62 K118 ["Spacing"]
  DUPTABLE R63 K134 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R64 K137 [Enum.Font.SourceSans]
  SETTABLEKS R64 R63 K131 ["Font"]
  GETTABLEKS R64 R4 K138 ["TitlebarText"]
  SETTABLEKS R64 R63 K132 ["TextColor"]
  LOADN R64 14
  SETTABLEKS R64 R63 K133 ["TextSize"]
  SETTABLEKS R63 R62 K201 ["Text"]
  GETIMPORT R63 K268 [Enum.VerticalAlignment.Center]
  SETTABLEKS R63 R62 K260 ["VerticalAlignment"]
  SETTABLEKS R62 R61 K253 ["Header"]
  DUPTABLE R62 K314 [{"SelectAllRow", "Padding"}]
  DUPTABLE R63 K238 [{"RowHeight", "Padding"}]
  LOADN R64 40
  SETTABLEKS R64 R63 K127 ["RowHeight"]
  LOADN R64 8
  SETTABLEKS R64 R63 K129 ["Padding"]
  SETTABLEKS R63 R62 K26 ["SelectAllRow"]
  LOADN R63 10
  SETTABLEKS R63 R62 K129 ["Padding"]
  DUPTABLE R63 K325 [{"Offset", "Padding", "ContentPadding", "Anchor", "LabelSize", "Label1Position", "Label2Position", "LoadingIcon", "FailedIcon", "DoneIcon", "Arrow", "ArrowPosition", "IconPosition", "IconSize", "Spacing", "TextSize"}]
  GETIMPORT R64 K100 [UDim2.fromOffset]
  LOADN R65 248
  LOADN R66 0
  CALL R64 2 1
  SETTABLEKS R64 R63 K168 ["Offset"]
  LOADN R64 2
  SETTABLEKS R64 R63 K129 ["Padding"]
  DUPTABLE R64 K152 [{"Left", "Right"}]
  LOADN R65 20
  SETTABLEKS R65 R64 K81 ["Left"]
  LOADN R65 20
  SETTABLEKS R65 R64 K74 ["Right"]
  SETTABLEKS R64 R63 K315 ["ContentPadding"]
  GETIMPORT R64 K96 [Vector2.new]
  LOADN R65 0
  LOADK R66 K47 ["ScriptIconView"]
  CALL R64 2 1
  SETTABLEKS R64 R63 K316 ["Anchor"]
  GETIMPORT R64 K68 [UDim2.new]
  LOADK R65 K47 ["ScriptIconView"]
  LOADN R66 222
  LOADN R67 1
  LOADN R68 0
  CALL R64 4 1
  SETTABLEKS R64 R63 K317 ["LabelSize"]
  GETIMPORT R64 K68 [UDim2.new]
  LOADN R65 0
  LOADN R66 0
  LOADK R67 K47 ["ScriptIconView"]
  LOADN R68 0
  CALL R64 4 1
  SETTABLEKS R64 R63 K318 ["Label1Position"]
  GETIMPORT R64 K68 [UDim2.new]
  LOADK R65 K47 ["ScriptIconView"]
  LOADN R66 10
  LOADK R67 K47 ["ScriptIconView"]
  LOADN R68 0
  CALL R64 4 1
  SETTABLEKS R64 R63 K319 ["Label2Position"]
  LOADK R64 K70 ["StretchMargin"]
  SETTABLEKS R64 R63 K320 ["LoadingIcon"]
  LOADK R64 K92 ["rbxasset://textures/R15Migrator/Icon_Error.png"]
  SETTABLEKS R64 R63 K321 ["FailedIcon"]
  LOADK R64 K89 ["rbxasset://textures/R15Migrator/Icon_Checkmark.png"]
  SETTABLEKS R64 R63 K322 ["DoneIcon"]
  LOADK R64 K252 ["→"]
  SETTABLEKS R64 R63 K153 ["Arrow"]
  GETIMPORT R64 K68 [UDim2.new]
  LOADK R65 K47 ["ScriptIconView"]
  LOADN R66 232
  LOADK R67 K47 ["ScriptIconView"]
  LOADN R68 0
  CALL R64 4 1
  SETTABLEKS R64 R63 K323 ["ArrowPosition"]
  GETIMPORT R64 K68 [UDim2.new]
  LOADN R65 1
  LOADN R66 240
  LOADK R67 K47 ["ScriptIconView"]
  LOADN R68 0
  CALL R64 4 1
  SETTABLEKS R64 R63 K324 ["IconPosition"]
  GETIMPORT R64 K100 [UDim2.fromOffset]
  LOADN R65 16
  LOADN R66 16
  CALL R64 2 1
  SETTABLEKS R64 R63 K119 ["IconSize"]
  LOADN R64 10
  SETTABLEKS R64 R63 K118 ["Spacing"]
  LOADN R64 14
  SETTABLEKS R64 R63 K133 ["TextSize"]
  DUPTABLE R64 K329 [{"Padding", "Spacing", "BackgroundColor", "ImageColor", "ButtonSize", "SliderSize"}]
  LOADN R65 2
  SETTABLEKS R65 R64 K129 ["Padding"]
  LOADN R65 15
  SETTABLEKS R65 R64 K118 ["Spacing"]
  GETTABLEKS R65 R4 K330 ["ForegroundMuted"]
  SETTABLEKS R65 R64 K113 ["BackgroundColor"]
  GETTABLEKS R65 R4 K73 ["MainText"]
  SETTABLEKS R65 R64 K327 ["ImageColor"]
  GETIMPORT R65 K100 [UDim2.fromOffset]
  LOADN R66 28
  LOADN R67 28
  CALL R65 2 1
  SETTABLEKS R65 R64 K147 ["ButtonSize"]
  GETIMPORT R65 K68 [UDim2.new]
  LOADN R66 1
  LOADN R67 213
  LOADN R68 1
  LOADN R69 0
  CALL R65 4 1
  SETTABLEKS R65 R64 K328 ["SliderSize"]
  DUPTABLE R65 K334 [{"Spacing", "Padding", "TextSpacing", "ImageSize", "WarningIcon", "TextSize", "LabelSize"}]
  LOADN R66 30
  SETTABLEKS R66 R65 K118 ["Spacing"]
  LOADN R66 10
  SETTABLEKS R66 R65 K129 ["Padding"]
  LOADN R66 10
  SETTABLEKS R66 R65 K331 ["TextSpacing"]
  LOADN R66 40
  SETTABLEKS R66 R65 K332 ["ImageSize"]
  LOADK R66 K79 ["ResultSize"]
  SETTABLEKS R66 R65 K333 ["WarningIcon"]
  GETIMPORT R66 K68 [UDim2.new]
  LOADN R67 1
  LOADN R68 186
  LOADN R69 1
  LOADN R70 0
  CALL R66 4 1
  SETTABLEKS R66 R65 K133 ["TextSize"]
  GETIMPORT R66 K68 [UDim2.new]
  LOADN R67 1
  LOADN R68 0
  LOADN R69 0
  LOADN R70 0
  CALL R66 4 1
  SETTABLEKS R66 R65 K317 ["LabelSize"]
  DUPTABLE R66 K340 [{"Spacing", "Padding", "CloseButtonSize", "GoToButtonSize", "CancelButtonSize", "ContinueButtonSize"}]
  LOADN R67 10
  SETTABLEKS R67 R66 K118 ["Spacing"]
  LOADN R67 10
  SETTABLEKS R67 R66 K129 ["Padding"]
  GETIMPORT R67 K100 [UDim2.fromOffset]
  LOADN R68 120
  LOADN R69 32
  CALL R67 2 1
  SETTABLEKS R67 R66 K336 ["CloseButtonSize"]
  GETIMPORT R67 K100 [UDim2.fromOffset]
  LOADN R68 180
  LOADN R69 32
  CALL R67 2 1
  SETTABLEKS R67 R66 K337 ["GoToButtonSize"]
  GETIMPORT R67 K100 [UDim2.fromOffset]
  LOADN R68 120
  LOADN R69 32
  CALL R67 2 1
  SETTABLEKS R67 R66 K338 ["CancelButtonSize"]
  GETIMPORT R67 K100 [UDim2.fromOffset]
  LOADN R68 180
  LOADN R69 32
  CALL R67 2 1
  SETTABLEKS R67 R66 K339 ["ContinueButtonSize"]
  NEWTABLE R67 64 0
  GETTABLEKS R68 R5 K19 ["ProgressBar"]
  SETTABLE R28 R67 R68
  GETTABLEKS R68 R5 K21 ["PopUpFrame"]
  SETTABLE R29 R67 R68
  GETTABLEKS R68 R5 K22 ["TabInstructions"]
  SETTABLE R25 R67 R68
  GETTABLEKS R68 R5 K23 ["IconTab"]
  SETTABLE R36 R67 R68
  GETTABLEKS R68 R5 K24 ["MainTabsView"]
  SETTABLE R21 R67 R68
  GETTABLEKS R68 R5 K25 ["MainFooter"]
  SETTABLE R22 R67 R68
  GETTABLEKS R68 R5 K26 ["SelectAllRow"]
  SETTABLE R23 R67 R68
  GETTABLEKS R68 R5 K27 ["FinalizerPane"]
  SETTABLE R26 R67 R68
  GETTABLEKS R68 R5 K28 ["FinalizerPaneRow"]
  SETTABLE R27 R67 R68
  GETTABLEKS R68 R5 K29 ["CharacterConversionPane"]
  SETTABLE R30 R67 R68
  GETTABLEKS R68 R5 K30 ["CharacterConversionPaneFooter"]
  SETTABLE R31 R67 R68
  GETTABLEKS R68 R5 K31 ["CharacterConversionList"]
  SETTABLE R32 R67 R68
  GETTABLEKS R68 R5 K32 ["CharacterPreview"]
  SETTABLE R33 R67 R68
  GETTABLEKS R68 R5 K33 ["CharacterSplitView"]
  SETTABLE R34 R67 R68
  GETTABLEKS R68 R5 K34 ["CharacterInstanceTree"]
  SETTABLE R35 R67 R68
  GETTABLEKS R68 R5 K35 ["ExpandableCharacterListItem"]
  SETTABLE R61 R67 R68
  GETTABLEKS R68 R5 K36 ["ScriptIssueRow"]
  SETTABLE R44 R67 R68
  GETTABLEKS R68 R5 K37 ["ScriptIssueTreeView"]
  SETTABLE R46 R67 R68
  GETTABLEKS R68 R5 K38 ["ScriptConversionPane"]
  SETTABLE R37 R67 R68
  GETTABLEKS R68 R5 K39 ["ScriptConversionExpandablePane"]
  SETTABLE R38 R67 R68
  GETTABLEKS R68 R5 K40 ["ReplacementRulesExpandablePane"]
  SETTABLE R39 R67 R68
  GETTABLEKS R68 R5 K41 ["ScriptConversionPaneFooter"]
  SETTABLE R40 R67 R68
  GETTABLEKS R68 R5 K42 ["ScriptConversionPaneHeader"]
  SETTABLE R41 R67 R68
  GETTABLEKS R68 R5 K43 ["ConfirmRevertDialog"]
  SETTABLE R47 R67 R68
  GETTABLEKS R68 R5 K44 ["ConfirmCommitDialog"]
  SETTABLE R48 R67 R68
  GETTABLEKS R68 R5 K45 ["ReplaceOptionsPane"]
  SETTABLE R49 R67 R68
  GETTABLEKS R68 R5 K46 ["ReplaceOptionItem"]
  SETTABLE R50 R67 R68
  GETTABLEKS R68 R5 K47 ["ScriptIconView"]
  SETTABLE R42 R67 R68
  GETTABLEKS R68 R5 K48 ["LoadingScreen"]
  SETTABLE R45 R67 R68
  GETTABLEKS R68 R5 K49 ["ScriptConversionConsole"]
  SETTABLE R43 R67 R68
  GETTABLEKS R68 R5 K50 ["AnimationConversionPane"]
  SETTABLE R51 R67 R68
  GETTABLEKS R68 R5 K51 ["AnimationConversionPaneFooter"]
  SETTABLE R56 R67 R68
  GETTABLEKS R68 R5 K52 ["PreviewModelComponent"]
  SETTABLE R58 R67 R68
  GETTABLEKS R68 R5 K53 ["DisplayAvatarsComponent"]
  SETTABLE R59 R67 R68
  GETTABLEKS R68 R5 K54 ["ReplaceRevertButtons"]
  SETTABLE R60 R67 R68
  GETTABLEKS R68 R5 K55 ["AnimationPreviewComponent"]
  SETTABLE R57 R67 R68
  GETTABLEKS R68 R5 K56 ["AnimationList"]
  SETTABLE R62 R67 R68
  GETTABLEKS R68 R5 K57 ["AnimationListRow"]
  SETTABLE R63 R67 R68
  GETTABLEKS R68 R5 K58 ["MediaPlayerControls"]
  SETTABLE R64 R67 R68
  GETTABLEKS R68 R5 K59 ["AdapterPane"]
  SETTABLE R52 R67 R68
  GETTABLEKS R68 R5 K60 ["InitialFlow"]
  SETTABLE R53 R67 R68
  GETTABLEKS R68 R5 K61 ["SummaryPane"]
  SETTABLE R54 R67 R68
  GETTABLEKS R68 R5 K62 ["StatusTable"]
  SETTABLE R55 R67 R68
  GETTABLEKS R68 R5 K63 ["PublishBlockedDialog"]
  SETTABLE R65 R67 R68
  GETTABLEKS R68 R5 K64 ["Buttons"]
  SETTABLE R66 R67 R68
  GETTABLEKS R68 R5 K65 ["PublishWarningDialog"]
  SETTABLE R65 R67 R68
  DUPCLOSURE R68 K341 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R67
  RETURN R68 1
