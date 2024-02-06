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
  LOADK R13 K48 ["LoadingScreenPrompt"]
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
  LOADK R13 K60 ["SummaryPane"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K61 ["StatusTable"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K62 ["PublishBlockedDialog"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K63 ["Buttons"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  GETIMPORT R11 K66 [UDim2.new]
  LOADN R12 0
  LOADN R13 128
  LOADN R14 0
  LOADN R15 36
  CALL R11 4 1
  DUPTABLE R12 K70 [{"Color", "StretchMargin", "Weight"}]
  GETTABLEKS R13 R4 K71 ["MainText"]
  SETTABLEKS R13 R12 K67 ["Color"]
  LOADN R13 0
  SETTABLEKS R13 R12 K68 ["StretchMargin"]
  LOADN R13 1
  SETTABLEKS R13 R12 K69 ["Weight"]
  DUPTABLE R13 K73 [{"Right"}]
  LOADN R14 10
  SETTABLEKS R14 R13 K72 ["Right"]
  DUPTABLE R14 K78 [{"ResultContainerPadding", "ResultContainerSpacing", "ResultContainerSize", "ResultSize"}]
  DUPTABLE R15 K81 [{"Left", "Right", "Top"}]
  LOADN R16 12
  SETTABLEKS R16 R15 K79 ["Left"]
  LOADN R16 12
  SETTABLEKS R16 R15 K72 ["Right"]
  LOADN R16 5
  SETTABLEKS R16 R15 K80 ["Top"]
  SETTABLEKS R15 R14 K74 ["ResultContainerPadding"]
  LOADN R15 5
  SETTABLEKS R15 R14 K75 ["ResultContainerSpacing"]
  GETIMPORT R15 K66 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 35
  CALL R15 4 1
  SETTABLEKS R15 R14 K76 ["ResultContainerSize"]
  GETIMPORT R15 K66 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 22
  CALL R15 4 1
  SETTABLEKS R15 R14 K77 ["ResultSize"]
  DUPTABLE R15 K86 [{"Complete", "Reverted", "Warning", "Error"}]
  LOADK R16 K87 ["rbxasset://textures/R15Migrator/Icon_Checkmark.png"]
  SETTABLEKS R16 R15 K82 ["Complete"]
  LOADK R16 K88 ["rbxasset://textures/R15Migrator/Icon_Reverted.png"]
  SETTABLEKS R16 R15 K83 ["Reverted"]
  LOADK R16 K89 ["rbxasset://textures/R15Migrator/Icon_Warning.png"]
  SETTABLEKS R16 R15 K84 ["Warning"]
  LOADK R16 K90 ["rbxasset://textures/R15Migrator/Icon_Error.png"]
  SETTABLEKS R16 R15 K85 ["Error"]
  NEWTABLE R16 8 0
  GETTABLEKS R17 R4 K71 ["MainText"]
  SETTABLEKS R17 R16 K67 ["Color"]
  LOADK R17 K91 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R17 R16 K92 ["Image"]
  GETIMPORT R17 K94 [Vector2.new]
  LOADN R18 12
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K95 ["ImageRectOffset"]
  GETIMPORT R17 K94 [Vector2.new]
  LOADN R18 12
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K96 ["ImageRectSize"]
  GETIMPORT R17 K98 [UDim2.fromOffset]
  LOADN R18 12
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K99 ["Size"]
  GETTABLEKS R17 R7 K100 ["Selected"]
  DUPTABLE R18 K101 [{"ImageRectOffset"}]
  GETIMPORT R19 K94 [Vector2.new]
  LOADN R20 24
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K95 ["ImageRectOffset"]
  SETTABLE R18 R16 R17
  GETIMPORT R17 K104 [string.format]
  LOADK R18 K105 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R19 K106 ["Light"]
  CALL R17 2 1
  GETIMPORT R18 K104 [string.format]
  LOADK R19 K105 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R20 K107 ["Dark"]
  CALL R18 2 1
  NEWTABLE R19 1 0
  GETTABLEKS R20 R4 K108 ["Delete"]
  MOVE R22 R18
  LOADK R23 K109 ["Terrain_Delete.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  NEWTABLE R20 1 0
  GETTABLEKS R21 R4 K108 ["Delete"]
  MOVE R23 R17
  LOADK R24 K109 ["Terrain_Delete.png"]
  CONCAT R22 R23 R24
  SETTABLE R22 R20 R21
  DUPTABLE R21 K113 [{"Size", "TabPaneSize", "BackgroundColor", "ViewBackgroundColor"}]
  GETIMPORT R22 K66 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 1
  LOADN R26 230
  CALL R22 4 1
  SETTABLEKS R22 R21 K99 ["Size"]
  GETIMPORT R22 K66 [UDim2.new]
  LOADN R23 1
  LOADN R24 220
  LOADN R25 1
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K110 ["TabPaneSize"]
  GETTABLEKS R22 R4 K114 ["BackgroundPaper"]
  SETTABLEKS R22 R21 K111 ["BackgroundColor"]
  GETTABLEKS R22 R4 K115 ["ForegroundMain"]
  SETTABLEKS R22 R21 K112 ["ViewBackgroundColor"]
  DUPTABLE R22 K120 [{"Spacing", "Size", "IconSize", "IconColor", "IconColorDisabled"}]
  LOADN R23 5
  SETTABLEKS R23 R22 K116 ["Spacing"]
  GETIMPORT R23 K66 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 0
  LOADN R27 26
  CALL R23 4 1
  SETTABLEKS R23 R22 K99 ["Size"]
  GETIMPORT R23 K66 [UDim2.new]
  LOADN R24 0
  LOADN R25 18
  LOADN R26 0
  LOADN R27 18
  CALL R23 4 1
  SETTABLEKS R23 R22 K117 ["IconSize"]
  GETIMPORT R23 K123 [Color3.fromRGB]
  LOADN R24 28
  LOADN R25 197
  LOADN R26 65
  CALL R23 3 1
  SETTABLEKS R23 R22 K118 ["IconColor"]
  GETTABLEKS R23 R4 K124 ["ButtonTextDisabled"]
  SETTABLEKS R23 R22 K119 ["IconColorDisabled"]
  DUPTABLE R23 K128 [{"RowHeight", "TextConfig", "Spacing", "Padding"}]
  LOADN R24 32
  SETTABLEKS R24 R23 K125 ["RowHeight"]
  DUPTABLE R24 K132 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R25 K135 [Enum.Font.SourceSans]
  SETTABLEKS R25 R24 K129 ["Font"]
  GETTABLEKS R25 R4 K136 ["TitlebarText"]
  SETTABLEKS R25 R24 K130 ["TextColor"]
  LOADN R25 14
  SETTABLEKS R25 R24 K131 ["TextSize"]
  SETTABLEKS R24 R23 K126 ["TextConfig"]
  LOADN R24 2
  SETTABLEKS R24 R23 K116 ["Spacing"]
  DUPTABLE R24 K137 [{"Left"}]
  LOADN R25 16
  SETTABLEKS R25 R24 K79 ["Left"]
  SETTABLEKS R24 R23 K127 ["Padding"]
  DUPTABLE R24 K70 [{"Color", "StretchMargin", "Weight"}]
  GETTABLEKS R25 R4 K71 ["MainText"]
  SETTABLEKS R25 R24 K67 ["Color"]
  LOADN R25 0
  SETTABLEKS R25 R24 K68 ["StretchMargin"]
  LOADN R25 1
  SETTABLEKS R25 R24 K69 ["Weight"]
  DUPTABLE R25 K138 [{"Padding", "TextSize", "Font"}]
  DUPTABLE R26 K140 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R27 12
  SETTABLEKS R27 R26 K80 ["Top"]
  LOADN R27 12
  SETTABLEKS R27 R26 K139 ["Bottom"]
  LOADN R27 24
  SETTABLEKS R27 R26 K79 ["Left"]
  LOADN R27 24
  SETTABLEKS R27 R26 K72 ["Right"]
  SETTABLEKS R26 R25 K127 ["Padding"]
  LOADN R26 14
  SETTABLEKS R26 R25 K131 ["TextSize"]
  GETIMPORT R26 K135 [Enum.Font.SourceSans]
  SETTABLEKS R26 R25 K129 ["Font"]
  DUPTABLE R26 K147 [{"BackgroundColor", "BodyBackgroundColor", "Padding", "BodyPadding", "FooterHeight", "InstructionsHeight", "ButtonSize", "DialogMinContentSize"}]
  GETTABLEKS R27 R4 K148 ["MainBackground"]
  SETTABLEKS R27 R26 K111 ["BackgroundColor"]
  GETTABLEKS R27 R4 K149 ["SubBackground2"]
  SETTABLEKS R27 R26 K141 ["BodyBackgroundColor"]
  DUPTABLE R27 K150 [{"Left", "Right"}]
  LOADN R28 24
  SETTABLEKS R28 R27 K79 ["Left"]
  LOADN R28 24
  SETTABLEKS R28 R27 K72 ["Right"]
  SETTABLEKS R27 R26 K127 ["Padding"]
  DUPTABLE R27 K140 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R28 12
  SETTABLEKS R28 R27 K80 ["Top"]
  LOADN R28 12
  SETTABLEKS R28 R27 K139 ["Bottom"]
  LOADN R28 12
  SETTABLEKS R28 R27 K79 ["Left"]
  LOADN R28 12
  SETTABLEKS R28 R27 K72 ["Right"]
  SETTABLEKS R27 R26 K142 ["BodyPadding"]
  LOADN R27 72
  SETTABLEKS R27 R26 K143 ["FooterHeight"]
  LOADN R27 84
  SETTABLEKS R27 R26 K144 ["InstructionsHeight"]
  SETTABLEKS R11 R26 K145 ["ButtonSize"]
  GETIMPORT R27 K94 [Vector2.new]
  LOADN R28 144
  LOADN R29 100
  CALL R27 2 1
  SETTABLEKS R27 R26 K146 ["DialogMinContentSize"]
  DUPTABLE R27 K153 [{"Arrow", "Indent", "TextSize", "BackgroundColor"}]
  DUPTABLE R28 K156 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color", "Padding"}]
  LOADK R29 K91 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R29 R28 K92 ["Image"]
  LOADN R29 12
  SETTABLEKS R29 R28 K99 ["Size"]
  GETIMPORT R29 K94 [Vector2.new]
  LOADN R30 24
  LOADN R31 0
  CALL R29 2 1
  SETTABLEKS R29 R28 K154 ["ExpandedOffset"]
  GETIMPORT R29 K94 [Vector2.new]
  LOADN R30 12
  LOADN R31 0
  CALL R29 2 1
  SETTABLEKS R29 R28 K155 ["CollapsedOffset"]
  GETTABLEKS R29 R4 K71 ["MainText"]
  SETTABLEKS R29 R28 K67 ["Color"]
  LOADN R29 6
  SETTABLEKS R29 R28 K127 ["Padding"]
  SETTABLEKS R28 R27 K151 ["Arrow"]
  LOADN R28 16
  SETTABLEKS R28 R27 K152 ["Indent"]
  LOADN R28 14
  SETTABLEKS R28 R27 K131 ["TextSize"]
  GETTABLEKS R28 R4 K149 ["SubBackground2"]
  SETTABLEKS R28 R27 K111 ["BackgroundColor"]
  DUPTABLE R28 K159 [{"TextSize", "BackgroundColor", "BackgroundTransparency", "BarHeight", "Padding"}]
  LOADN R29 25
  SETTABLEKS R29 R28 K131 ["TextSize"]
  GETIMPORT R29 K123 [Color3.fromRGB]
  LOADN R30 0
  LOADN R31 0
  LOADN R32 0
  CALL R29 3 1
  SETTABLEKS R29 R28 K111 ["BackgroundColor"]
  LOADK R29 K160 [0.2]
  SETTABLEKS R29 R28 K157 ["BackgroundTransparency"]
  LOADN R29 12
  SETTABLEKS R29 R28 K158 ["BarHeight"]
  DUPTABLE R29 K150 [{"Left", "Right"}]
  LOADN R30 24
  SETTABLEKS R30 R29 K79 ["Left"]
  LOADN R30 24
  SETTABLEKS R30 R29 K72 ["Right"]
  SETTABLEKS R29 R28 K127 ["Padding"]
  DUPTABLE R29 K164 [{"TopBarColor", "BackgroundColor", "Arrow", "TopBarHeight", "TopBarPadding"}]
  GETTABLEKS R30 R4 K149 ["SubBackground2"]
  SETTABLEKS R30 R29 K161 ["TopBarColor"]
  GETTABLEKS R30 R4 K165 ["SubBackground"]
  SETTABLEKS R30 R29 K111 ["BackgroundColor"]
  DUPTABLE R30 K168 [{"Image", "Size", "Offset", "Color", "HoverColor"}]
  LOADK R31 K91 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R31 R30 K92 ["Image"]
  LOADN R31 12
  SETTABLEKS R31 R30 K99 ["Size"]
  GETIMPORT R31 K94 [Vector2.new]
  LOADN R32 24
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K166 ["Offset"]
  GETTABLEKS R31 R4 K169 ["DimmedText"]
  SETTABLEKS R31 R30 K67 ["Color"]
  GETTABLEKS R31 R4 K170 ["BrightText"]
  SETTABLEKS R31 R30 K167 ["HoverColor"]
  SETTABLEKS R30 R29 K151 ["Arrow"]
  LOADN R30 16
  SETTABLEKS R30 R29 K162 ["TopBarHeight"]
  DUPTABLE R30 K73 [{"Right"}]
  LOADN R31 8
  SETTABLEKS R31 R30 K72 ["Right"]
  SETTABLEKS R30 R29 K163 ["TopBarPadding"]
  DUPTABLE R30 K171 [{"FooterHeight", "InstructionsHeight"}]
  LOADN R31 88
  SETTABLEKS R31 R30 K143 ["FooterHeight"]
  LOADN R31 64
  SETTABLEKS R31 R30 K144 ["InstructionsHeight"]
  DUPTABLE R31 K177 [{"Spacing", "SeparatorStyle", "RevertButtonSize", "ConvertButtonSize", "ButtonSpacing", "ButtonPadding"}]
  LOADN R32 5
  SETTABLEKS R32 R31 K116 ["Spacing"]
  SETTABLEKS R12 R31 K172 ["SeparatorStyle"]
  SETTABLEKS R11 R31 K173 ["RevertButtonSize"]
  SETTABLEKS R11 R31 K174 ["ConvertButtonSize"]
  LOADN R32 10
  SETTABLEKS R32 R31 K175 ["ButtonSpacing"]
  SETTABLEKS R13 R31 K176 ["ButtonPadding"]
  GETTABLEKS R33 R10 K178 ["Dictionary"]
  GETTABLEKS R32 R33 K179 ["join"]
  MOVE R33 R31
  MOVE R34 R14
  CALL R32 2 1
  MOVE R31 R32
  DUPTABLE R32 K182 [{"RowHeight", "Spacing", "SectionHeadBackgroundColor", "SelectedColor"}]
  LOADN R33 32
  SETTABLEKS R33 R32 K125 ["RowHeight"]
  LOADN R33 4
  SETTABLEKS R33 R32 K116 ["Spacing"]
  GETTABLEKS R33 R4 K148 ["MainBackground"]
  SETTABLEKS R33 R32 K180 ["SectionHeadBackgroundColor"]
  GETTABLEKS R33 R4 K183 ["DialogMainButtonSelected"]
  SETTABLEKS R33 R32 K181 ["SelectedColor"]
  DUPTABLE R33 K189 [{"ViewportBackgroundColor", "ViewportAspectRatio", "SelectionColor", "ViewportHeight", "TreeHeight"}]
  GETTABLEKS R34 R4 K165 ["SubBackground"]
  SETTABLEKS R34 R33 K184 ["ViewportBackgroundColor"]
  LOADK R34 K190 [0.77027027027027]
  SETTABLEKS R34 R33 K185 ["ViewportAspectRatio"]
  GETIMPORT R34 K123 [Color3.fromRGB]
  LOADN R35 13
  LOADN R36 105
  LOADN R37 172
  CALL R34 3 1
  SETTABLEKS R34 R33 K186 ["SelectionColor"]
  LOADN R34 44
  SETTABLEKS R34 R33 K187 ["ViewportHeight"]
  LOADN R34 44
  SETTABLEKS R34 R33 K188 ["TreeHeight"]
  DUPTABLE R34 K195 [{"Arrow", "ArrowPadding", "Width", "HorizontalSpacing", "VerticalSpacing"}]
  DUPTABLE R35 K196 [{"Image", "Size", "ImageRectSize", "Offset", "Color"}]
  LOADK R36 K91 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R36 R35 K92 ["Image"]
  GETIMPORT R36 K98 [UDim2.fromOffset]
  LOADN R37 12
  LOADN R38 12
  CALL R36 2 1
  SETTABLEKS R36 R35 K99 ["Size"]
  GETIMPORT R36 K94 [Vector2.new]
  LOADN R37 12
  LOADN R38 12
  CALL R36 2 1
  SETTABLEKS R36 R35 K96 ["ImageRectSize"]
  GETIMPORT R36 K94 [Vector2.new]
  LOADN R37 12
  LOADN R38 0
  CALL R36 2 1
  SETTABLEKS R36 R35 K166 ["Offset"]
  GETTABLEKS R36 R4 K71 ["MainText"]
  SETTABLEKS R36 R35 K67 ["Color"]
  SETTABLEKS R35 R34 K151 ["Arrow"]
  LOADN R35 12
  SETTABLEKS R35 R34 K191 ["ArrowPadding"]
  LOADN R35 200
  SETTABLEKS R35 R34 K192 ["Width"]
  LOADN R35 8
  SETTABLEKS R35 R34 K193 ["HorizontalSpacing"]
  LOADN R35 8
  SETTABLEKS R35 R34 K194 ["VerticalSpacing"]
  DUPTABLE R35 K198 [{"RowHeight", "CompactNoBorder"}]
  LOADN R36 20
  SETTABLEKS R36 R35 K125 ["RowHeight"]
  GETTABLEKS R37 R10 K178 ["Dictionary"]
  GETTABLEKS R36 R37 K179 ["join"]
  MOVE R37 R9
  DUPTABLE R38 K202 [{"Text", "Indent", "RowHeight", "Arrow", "IconPadding", "HoverColor", "SelectedColor", "SelectedTextColor"}]
  DUPTABLE R39 K132 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R40 K135 [Enum.Font.SourceSans]
  SETTABLEKS R40 R39 K129 ["Font"]
  GETTABLEKS R40 R4 K71 ["MainText"]
  SETTABLEKS R40 R39 K130 ["TextColor"]
  LOADN R40 16
  SETTABLEKS R40 R39 K131 ["TextSize"]
  SETTABLEKS R39 R38 K199 ["Text"]
  LOADN R39 16
  SETTABLEKS R39 R38 K152 ["Indent"]
  LOADN R39 20
  SETTABLEKS R39 R38 K125 ["RowHeight"]
  DUPTABLE R39 K203 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color"}]
  LOADK R40 K91 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R40 R39 K92 ["Image"]
  LOADN R40 12
  SETTABLEKS R40 R39 K99 ["Size"]
  GETIMPORT R40 K94 [Vector2.new]
  LOADN R41 24
  LOADN R42 0
  CALL R40 2 1
  SETTABLEKS R40 R39 K154 ["ExpandedOffset"]
  GETIMPORT R40 K94 [Vector2.new]
  LOADN R41 12
  LOADN R42 0
  CALL R40 2 1
  SETTABLEKS R40 R39 K155 ["CollapsedOffset"]
  GETTABLEKS R40 R4 K71 ["MainText"]
  SETTABLEKS R40 R39 K67 ["Color"]
  SETTABLEKS R39 R38 K151 ["Arrow"]
  LOADN R39 3
  SETTABLEKS R39 R38 K200 ["IconPadding"]
  GETTABLEKS R39 R4 K204 ["ButtonHover"]
  SETTABLEKS R39 R38 K167 ["HoverColor"]
  GETTABLEKS R39 R4 K205 ["DialogMainButton"]
  SETTABLEKS R39 R38 K181 ["SelectedColor"]
  GETTABLEKS R39 R4 K206 ["DialogMainButtonText"]
  SETTABLEKS R39 R38 K201 ["SelectedTextColor"]
  CALL R36 2 1
  SETTABLEKS R36 R35 K197 ["CompactNoBorder"]
  DUPTABLE R36 K207 [{"Size", "Color"}]
  LOADN R37 36
  SETTABLEKS R37 R36 K99 ["Size"]
  GETTABLEKS R37 R4 K71 ["MainText"]
  SETTABLEKS R37 R36 K67 ["Color"]
  DUPTABLE R37 K209 [{"ExpandablePaneHeaderSize", "InstructionsHeight"}]
  GETIMPORT R38 K66 [UDim2.new]
  LOADN R39 1
  LOADN R40 0
  LOADN R41 0
  LOADN R42 36
  CALL R38 4 1
  SETTABLEKS R38 R37 K208 ["ExpandablePaneHeaderSize"]
  LOADN R38 80
  SETTABLEKS R38 R37 K144 ["InstructionsHeight"]
  DUPTABLE R38 K212 [{"HeaderHeight", "FooterHeight", "HeaderColor"}]
  LOADN R39 42
  SETTABLEKS R39 R38 K210 ["HeaderHeight"]
  LOADN R39 88
  SETTABLEKS R39 R38 K143 ["FooterHeight"]
  GETTABLEKS R39 R4 K213 ["ForegroundContrast"]
  SETTABLEKS R39 R38 K211 ["HeaderColor"]
  DUPTABLE R39 K214 [{"HeaderColor"}]
  GETTABLEKS R40 R4 K213 ["ForegroundContrast"]
  SETTABLEKS R40 R39 K211 ["HeaderColor"]
  DUPTABLE R40 K215 [{"BackgroundColor", "RevertButtonSize", "ConvertButtonSize", "Spacing", "ButtonSpacing", "SeparatorStyle", "ButtonPadding"}]
  GETTABLEKS R41 R4 K149 ["SubBackground2"]
  SETTABLEKS R41 R40 K111 ["BackgroundColor"]
  SETTABLEKS R11 R40 K173 ["RevertButtonSize"]
  SETTABLEKS R11 R40 K174 ["ConvertButtonSize"]
  LOADN R41 5
  SETTABLEKS R41 R40 K116 ["Spacing"]
  LOADN R41 10
  SETTABLEKS R41 R40 K175 ["ButtonSpacing"]
  SETTABLEKS R12 R40 K172 ["SeparatorStyle"]
  SETTABLEKS R13 R40 K176 ["ButtonPadding"]
  GETTABLEKS R42 R10 K178 ["Dictionary"]
  GETTABLEKS R41 R42 K179 ["join"]
  MOVE R42 R40
  MOVE R43 R14
  CALL R41 2 1
  MOVE R40 R41
  DUPTABLE R41 K221 [{"FilterHeight", "FilterWidth", "ItemHeight", "ListItemTextSize", "ListItemPadding", "Padding", "Spacing", "SeparatorStyle"}]
  LOADN R42 36
  SETTABLEKS R42 R41 K216 ["FilterHeight"]
  LOADN R42 192
  SETTABLEKS R42 R41 K217 ["FilterWidth"]
  LOADN R42 22
  SETTABLEKS R42 R41 K218 ["ItemHeight"]
  LOADN R42 14
  SETTABLEKS R42 R41 K219 ["ListItemTextSize"]
  LOADN R42 6
  SETTABLEKS R42 R41 K220 ["ListItemPadding"]
  DUPTABLE R42 K222 [{"Left", "Top", "Right"}]
  LOADN R43 12
  SETTABLEKS R43 R42 K79 ["Left"]
  LOADN R43 5
  SETTABLEKS R43 R42 K80 ["Top"]
  LOADN R43 12
  SETTABLEKS R43 R42 K72 ["Right"]
  SETTABLEKS R42 R41 K127 ["Padding"]
  LOADN R42 5
  SETTABLEKS R42 R41 K116 ["Spacing"]
  SETTABLEKS R12 R41 K172 ["SeparatorStyle"]
  DUPTABLE R42 K227 [{"StatusImageSize", "Spacing", "CountTextSize", "StatusIcons", "RevertedIconColor"}]
  GETIMPORT R43 K98 [UDim2.fromOffset]
  LOADN R44 16
  LOADN R45 16
  CALL R43 2 1
  SETTABLEKS R43 R42 K223 ["StatusImageSize"]
  LOADN R43 4
  SETTABLEKS R43 R42 K116 ["Spacing"]
  LOADN R43 15
  SETTABLEKS R43 R42 K224 ["CountTextSize"]
  SETTABLEKS R15 R42 K225 ["StatusIcons"]
  GETTABLEKS R43 R4 K170 ["BrightText"]
  SETTABLEKS R43 R42 K226 ["RevertedIconColor"]
  DUPTABLE R43 K229 [{"StatusIcons", "RowHeight", "ConsoleHeight", "BackgroundColor", "IconSize", "Padding", "Arrow"}]
  SETTABLEKS R15 R43 K225 ["StatusIcons"]
  LOADN R44 24
  SETTABLEKS R44 R43 K125 ["RowHeight"]
  LOADN R44 48
  SETTABLEKS R44 R43 K228 ["ConsoleHeight"]
  GETTABLEKS R44 R4 K149 ["SubBackground2"]
  SETTABLEKS R44 R43 K111 ["BackgroundColor"]
  GETIMPORT R44 K98 [UDim2.fromOffset]
  LOADN R45 16
  LOADN R46 16
  CALL R44 2 1
  SETTABLEKS R44 R43 K117 ["IconSize"]
  DUPTABLE R44 K150 [{"Left", "Right"}]
  LOADN R45 8
  SETTABLEKS R45 R44 K79 ["Left"]
  LOADN R45 8
  SETTABLEKS R45 R44 K72 ["Right"]
  SETTABLEKS R44 R43 K127 ["Padding"]
  DUPTABLE R44 K168 [{"Image", "Size", "Offset", "Color", "HoverColor"}]
  LOADK R45 K91 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R45 R44 K92 ["Image"]
  LOADN R45 12
  SETTABLEKS R45 R44 K99 ["Size"]
  GETIMPORT R45 K94 [Vector2.new]
  LOADN R46 0
  LOADN R47 0
  CALL R45 2 1
  SETTABLEKS R45 R44 K166 ["Offset"]
  GETTABLEKS R45 R4 K169 ["DimmedText"]
  SETTABLEKS R45 R44 K67 ["Color"]
  GETTABLEKS R45 R4 K170 ["BrightText"]
  SETTABLEKS R45 R44 K167 ["HoverColor"]
  SETTABLEKS R44 R43 K151 ["Arrow"]
  DUPTABLE R44 K232 [{"Arrow", "Spacing", "Indent", "TextSize", "LinkColor", "IconViewSize"}]
  DUPTABLE R45 K156 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color", "Padding"}]
  LOADK R46 K91 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R46 R45 K92 ["Image"]
  LOADN R46 12
  SETTABLEKS R46 R45 K99 ["Size"]
  GETIMPORT R46 K94 [Vector2.new]
  LOADN R47 24
  LOADN R48 0
  CALL R46 2 1
  SETTABLEKS R46 R45 K154 ["ExpandedOffset"]
  GETIMPORT R46 K94 [Vector2.new]
  LOADN R47 12
  LOADN R48 0
  CALL R46 2 1
  SETTABLEKS R46 R45 K155 ["CollapsedOffset"]
  GETTABLEKS R46 R4 K71 ["MainText"]
  SETTABLEKS R46 R45 K67 ["Color"]
  LOADN R46 6
  SETTABLEKS R46 R45 K127 ["Padding"]
  SETTABLEKS R45 R44 K151 ["Arrow"]
  LOADN R45 12
  SETTABLEKS R45 R44 K116 ["Spacing"]
  LOADN R45 16
  SETTABLEKS R45 R44 K152 ["Indent"]
  LOADN R45 14
  SETTABLEKS R45 R44 K131 ["TextSize"]
  GETTABLEKS R45 R4 K233 ["LinkText"]
  SETTABLEKS R45 R44 K230 ["LinkColor"]
  GETIMPORT R45 K98 [UDim2.fromOffset]
  LOADN R46 76
  LOADN R47 16
  CALL R45 2 1
  SETTABLEKS R45 R44 K231 ["IconViewSize"]
  DUPTABLE R45 K234 [{"ButtonSize", "Spacing", "Padding"}]
  GETIMPORT R46 K98 [UDim2.fromOffset]
  LOADN R47 72
  LOADN R48 36
  CALL R46 2 1
  SETTABLEKS R46 R45 K145 ["ButtonSize"]
  LOADN R46 8
  SETTABLEKS R46 R45 K116 ["Spacing"]
  DUPTABLE R46 K150 [{"Left", "Right"}]
  LOADN R47 24
  SETTABLEKS R47 R46 K79 ["Left"]
  LOADN R47 24
  SETTABLEKS R47 R46 K72 ["Right"]
  SETTABLEKS R46 R45 K127 ["Padding"]
  DUPTABLE R46 K235 [{"SelectAllRow"}]
  DUPTABLE R47 K236 [{"RowHeight", "Padding"}]
  LOADN R48 20
  SETTABLEKS R48 R47 K125 ["RowHeight"]
  LOADN R48 2
  SETTABLEKS R48 R47 K127 ["Padding"]
  SETTABLEKS R47 R46 K26 ["SelectAllRow"]
  DUPTABLE R47 K238 [{"MinContentSize"}]
  GETIMPORT R48 K94 [Vector2.new]
  LOADN R49 144
  LOADN R50 100
  CALL R48 2 1
  SETTABLEKS R48 R47 K237 ["MinContentSize"]
  DUPTABLE R48 K238 [{"MinContentSize"}]
  GETIMPORT R49 K94 [Vector2.new]
  LOADN R50 144
  LOADN R51 100
  CALL R49 2 1
  SETTABLEKS R49 R48 K237 ["MinContentSize"]
  DUPTABLE R49 K243 [{"PaneHeight", "TitleTextSize", "SaveRulesSize", "Padding", "Spacing", "ListHeightOffset", "RowHeight", "SeparatorStyle"}]
  LOADN R50 250
  SETTABLEKS R50 R49 K239 ["PaneHeight"]
  LOADN R50 22
  SETTABLEKS R50 R49 K240 ["TitleTextSize"]
  GETIMPORT R50 K98 [UDim2.fromOffset]
  LOADN R51 100
  LOADN R52 36
  CALL R50 2 1
  SETTABLEKS R50 R49 K241 ["SaveRulesSize"]
  DUPTABLE R50 K244 [{"Left", "Right", "Top", "Bottom"}]
  LOADN R51 24
  SETTABLEKS R51 R50 K79 ["Left"]
  LOADN R51 24
  SETTABLEKS R51 R50 K72 ["Right"]
  LOADN R51 24
  SETTABLEKS R51 R50 K80 ["Top"]
  LOADN R51 24
  SETTABLEKS R51 R50 K139 ["Bottom"]
  SETTABLEKS R50 R49 K127 ["Padding"]
  LOADN R50 12
  SETTABLEKS R50 R49 K116 ["Spacing"]
  LOADN R50 194
  SETTABLEKS R50 R49 K242 ["ListHeightOffset"]
  LOADN R50 48
  SETTABLEKS R50 R49 K125 ["RowHeight"]
  SETTABLEKS R24 R49 K172 ["SeparatorStyle"]
  DUPTABLE R50 K249 [{"TextInputSize", "FromLabelSize", "ToggleSize", "ArrowSize", "BackgroundColor", "Spacing", "Arrow", "Padding"}]
  GETIMPORT R51 K98 [UDim2.fromOffset]
  LOADN R52 170
  LOADN R53 36
  CALL R51 2 1
  SETTABLEKS R51 R50 K245 ["TextInputSize"]
  GETIMPORT R51 K98 [UDim2.fromOffset]
  LOADN R52 85
  LOADN R53 36
  CALL R51 2 1
  SETTABLEKS R51 R50 K246 ["FromLabelSize"]
  GETIMPORT R51 K98 [UDim2.fromOffset]
  LOADN R52 48
  LOADN R53 0
  CALL R51 2 1
  SETTABLEKS R51 R50 K247 ["ToggleSize"]
  GETIMPORT R51 K98 [UDim2.fromOffset]
  LOADN R52 24
  LOADN R53 0
  CALL R51 2 1
  SETTABLEKS R51 R50 K248 ["ArrowSize"]
  GETTABLEKS R51 R4 K165 ["SubBackground"]
  SETTABLEKS R51 R50 K111 ["BackgroundColor"]
  LOADN R51 16
  SETTABLEKS R51 R50 K116 ["Spacing"]
  LOADK R51 K250 ["→"]
  SETTABLEKS R51 R50 K151 ["Arrow"]
  DUPTABLE R51 K150 [{"Left", "Right"}]
  LOADN R52 10
  SETTABLEKS R52 R51 K79 ["Left"]
  LOADN R52 10
  SETTABLEKS R52 R51 K72 ["Right"]
  SETTABLEKS R51 R50 K127 ["Padding"]
  DUPTABLE R51 K252 [{"FooterHeight", "InstructionsHeight", "Header", "ExpandedOffset", "CollapsedOffset", "HeaderHeight"}]
  LOADN R52 88
  SETTABLEKS R52 R51 K143 ["FooterHeight"]
  LOADN R52 64
  SETTABLEKS R52 R51 K144 ["InstructionsHeight"]
  DUPTABLE R52 K254 [{"Arrow", "Container", "Text"}]
  SETTABLEKS R16 R52 K151 ["Arrow"]
  DUPTABLE R53 K260 [{"Padding", "BackgroundColor", "BorderColor3", "BorderSizePixel", "Size", "Spacing", "Layout", "VerticalAlignment", "HorizontalAlignment"}]
  DUPTABLE R54 K150 [{"Left", "Right"}]
  LOADN R55 8
  SETTABLEKS R55 R54 K79 ["Left"]
  LOADN R55 8
  SETTABLEKS R55 R54 K72 ["Right"]
  SETTABLEKS R54 R53 K127 ["Padding"]
  GETTABLEKS R54 R4 K213 ["ForegroundContrast"]
  SETTABLEKS R54 R53 K111 ["BackgroundColor"]
  GETTABLEKS R54 R4 K261 ["OtherDivider"]
  SETTABLEKS R54 R53 K255 ["BorderColor3"]
  LOADN R54 1
  SETTABLEKS R54 R53 K256 ["BorderSizePixel"]
  GETIMPORT R54 K66 [UDim2.new]
  LOADN R55 1
  LOADN R56 0
  LOADN R57 0
  LOADN R58 20
  CALL R54 4 1
  SETTABLEKS R54 R53 K99 ["Size"]
  LOADN R54 6
  SETTABLEKS R54 R53 K116 ["Spacing"]
  GETIMPORT R54 K264 [Enum.FillDirection.Horizontal]
  SETTABLEKS R54 R53 K257 ["Layout"]
  GETIMPORT R54 K266 [Enum.VerticalAlignment.Center]
  SETTABLEKS R54 R53 K258 ["VerticalAlignment"]
  GETIMPORT R54 K267 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R54 R53 K259 ["HorizontalAlignment"]
  SETTABLEKS R53 R52 K253 ["Container"]
  DUPTABLE R53 K132 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R54 K269 [Enum.Font.SourceSansBold]
  SETTABLEKS R54 R53 K129 ["Font"]
  GETTABLEKS R54 R4 K71 ["MainText"]
  SETTABLEKS R54 R53 K130 ["TextColor"]
  LOADN R54 14
  SETTABLEKS R54 R53 K131 ["TextSize"]
  SETTABLEKS R53 R52 K199 ["Text"]
  SETTABLEKS R52 R51 K251 ["Header"]
  LOADN R52 16
  SETTABLEKS R52 R51 K154 ["ExpandedOffset"]
  LOADN R52 20
  SETTABLEKS R52 R51 K155 ["CollapsedOffset"]
  LOADN R52 20
  SETTABLEKS R52 R51 K210 ["HeaderHeight"]
  DUPTABLE R52 K277 [{"PanePadding", "SubTextSize", "Spacing", "VerticalTextSpacing", "BoldFont", "RemovalInstructionsHeight", "CommitButtonSize", "CommitTextHeight"}]
  DUPTABLE R53 K278 [{"Left", "Top"}]
  LOADN R54 10
  SETTABLEKS R54 R53 K79 ["Left"]
  LOADN R54 20
  SETTABLEKS R54 R53 K80 ["Top"]
  SETTABLEKS R53 R52 K270 ["PanePadding"]
  LOADN R53 13
  SETTABLEKS R53 R52 K271 ["SubTextSize"]
  LOADN R53 5
  SETTABLEKS R53 R52 K116 ["Spacing"]
  LOADN R53 10
  SETTABLEKS R53 R52 K272 ["VerticalTextSpacing"]
  GETIMPORT R53 K269 [Enum.Font.SourceSansBold]
  SETTABLEKS R53 R52 K273 ["BoldFont"]
  LOADN R53 50
  SETTABLEKS R53 R52 K274 ["RemovalInstructionsHeight"]
  SETTABLEKS R11 R52 K275 ["CommitButtonSize"]
  LOADN R53 50
  SETTABLEKS R53 R52 K276 ["CommitTextHeight"]
  DUPTABLE R53 K281 [{"HeaderColor", "DividerColor", "Arrow", "CompleteIcon"}]
  GETTABLEKS R54 R4 K213 ["ForegroundContrast"]
  SETTABLEKS R54 R53 K211 ["HeaderColor"]
  GETTABLEKS R54 R4 K261 ["OtherDivider"]
  SETTABLEKS R54 R53 K279 ["DividerColor"]
  SETTABLEKS R16 R53 K151 ["Arrow"]
  GETTABLEKS R54 R15 K82 ["Complete"]
  SETTABLEKS R54 R53 K280 ["CompleteIcon"]
  DUPTABLE R54 K283 [{"RowHeight", "ColumnOffset"}]
  LOADN R55 28
  SETTABLEKS R55 R54 K125 ["RowHeight"]
  LOADN R55 60
  SETTABLEKS R55 R54 K282 ["ColumnOffset"]
  DUPTABLE R55 K284 [{"SeparatorStyle", "Spacing", "Padding"}]
  SETTABLEKS R12 R55 K172 ["SeparatorStyle"]
  LOADN R56 5
  SETTABLEKS R56 R55 K116 ["Spacing"]
  SETTABLEKS R13 R55 K127 ["Padding"]
  GETTABLEKS R57 R10 K178 ["Dictionary"]
  GETTABLEKS R56 R57 K179 ["join"]
  MOVE R57 R55
  MOVE R58 R14
  CALL R56 2 1
  MOVE R55 R56
  DUPTABLE R56 K286 [{"Spacing", "PreviewContainerSize"}]
  LOADN R57 10
  SETTABLEKS R57 R56 K116 ["Spacing"]
  GETIMPORT R57 K66 [UDim2.new]
  LOADN R58 1
  LOADN R59 0
  LOADN R60 0
  LOADN R61 148
  CALL R57 4 1
  SETTABLEKS R57 R56 K285 ["PreviewContainerSize"]
  DUPTABLE R57 K288 [{"Padding", "BackgroundColor", "ResetButtonSize"}]
  LOADN R58 5
  SETTABLEKS R58 R57 K127 ["Padding"]
  GETTABLEKS R58 R4 K213 ["ForegroundContrast"]
  SETTABLEKS R58 R57 K111 ["BackgroundColor"]
  GETIMPORT R58 K98 [UDim2.fromOffset]
  LOADN R59 28
  LOADN R60 28
  CALL R58 2 1
  SETTABLEKS R58 R57 K287 ["ResetButtonSize"]
  DUPTABLE R58 K291 [{"Arrow", "Padding", "PreviewWindowSize", "PreviewWindowPosition"}]
  DUPTABLE R59 K293 [{"Image", "Size", "ImageRectSize", "Position", "Offset", "Color"}]
  LOADK R60 K91 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R60 R59 K92 ["Image"]
  GETIMPORT R60 K98 [UDim2.fromOffset]
  LOADN R61 12
  LOADN R62 12
  CALL R60 2 1
  SETTABLEKS R60 R59 K99 ["Size"]
  GETIMPORT R60 K94 [Vector2.new]
  LOADN R61 12
  LOADN R62 12
  CALL R60 2 1
  SETTABLEKS R60 R59 K96 ["ImageRectSize"]
  GETIMPORT R60 K66 [UDim2.new]
  LOADK R61 K38 ["ScriptConversionPane"]
  LOADN R62 250
  LOADK R63 K38 ["ScriptConversionPane"]
  LOADN R64 250
  CALL R60 4 1
  SETTABLEKS R60 R59 K292 ["Position"]
  GETIMPORT R60 K94 [Vector2.new]
  LOADN R61 12
  LOADN R62 0
  CALL R60 2 1
  SETTABLEKS R60 R59 K166 ["Offset"]
  GETTABLEKS R60 R4 K71 ["MainText"]
  SETTABLEKS R60 R59 K67 ["Color"]
  SETTABLEKS R59 R58 K151 ["Arrow"]
  LOADN R59 10
  SETTABLEKS R59 R58 K127 ["Padding"]
  GETIMPORT R59 K66 [UDim2.new]
  LOADK R60 K38 ["ScriptConversionPane"]
  LOADN R61 246
  LOADN R62 1
  LOADN R63 0
  CALL R59 4 1
  SETTABLEKS R59 R58 K289 ["PreviewWindowSize"]
  GETIMPORT R59 K66 [UDim2.new]
  LOADK R60 K38 ["ScriptConversionPane"]
  LOADN R61 10
  LOADN R62 0
  LOADN R63 0
  CALL R59 4 1
  SETTABLEKS R59 R58 K290 ["PreviewWindowPosition"]
  DUPTABLE R59 K295 [{"ButtonSize", "Spacing"}]
  GETIMPORT R60 K66 [UDim2.new]
  LOADN R61 0
  LOADN R62 71
  LOADN R63 0
  LOADN R64 28
  CALL R60 4 1
  SETTABLEKS R60 R59 K145 ["ButtonSize"]
  LOADN R60 10
  SETTABLEKS R60 R59 K116 ["Spacing"]
  DUPTABLE R60 K299 [{"SelectedBorderColor", "SelectedColor", "StatusImageSize", "Icons", "Content", "Header"}]
  GETTABLEKS R61 R4 K183 ["DialogMainButtonSelected"]
  SETTABLEKS R61 R60 K296 ["SelectedBorderColor"]
  GETTABLEKS R61 R4 K148 ["MainBackground"]
  SETTABLEKS R61 R60 K181 ["SelectedColor"]
  GETIMPORT R61 K98 [UDim2.fromOffset]
  LOADN R62 16
  LOADN R63 16
  CALL R61 2 1
  SETTABLEKS R61 R60 K223 ["StatusImageSize"]
  DUPTABLE R61 K301 [{"Success", "Warning"}]
  LOADK R62 K87 ["rbxasset://textures/R15Migrator/Icon_Checkmark.png"]
  SETTABLEKS R62 R61 K300 ["Success"]
  LOADK R62 K89 ["rbxasset://textures/R15Migrator/Icon_Warning.png"]
  SETTABLEKS R62 R61 K84 ["Warning"]
  SETTABLEKS R61 R60 K297 ["Icons"]
  DUPTABLE R61 K302 [{"Padding"}]
  DUPTABLE R62 K303 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R63 28
  SETTABLEKS R63 R62 K79 ["Left"]
  LOADN R63 10
  SETTABLEKS R63 R62 K80 ["Top"]
  LOADN R63 28
  SETTABLEKS R63 R62 K72 ["Right"]
  LOADN R63 10
  SETTABLEKS R63 R62 K139 ["Bottom"]
  SETTABLEKS R62 R61 K127 ["Padding"]
  SETTABLEKS R61 R60 K298 ["Content"]
  DUPTABLE R61 K304 [{"Arrow", "HorizontalAlignment", "Padding", "Size", "Spacing", "Text", "VerticalAlignment"}]
  SETTABLEKS R16 R61 K151 ["Arrow"]
  GETIMPORT R62 K267 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R62 R61 K259 ["HorizontalAlignment"]
  DUPTABLE R62 K150 [{"Left", "Right"}]
  LOADN R63 16
  SETTABLEKS R63 R62 K79 ["Left"]
  LOADN R63 16
  SETTABLEKS R63 R62 K72 ["Right"]
  SETTABLEKS R62 R61 K127 ["Padding"]
  GETIMPORT R62 K66 [UDim2.new]
  LOADN R63 1
  LOADN R64 0
  LOADN R65 0
  LOADN R66 32
  CALL R62 4 1
  SETTABLEKS R62 R61 K99 ["Size"]
  LOADN R62 6
  SETTABLEKS R62 R61 K116 ["Spacing"]
  DUPTABLE R62 K132 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R63 K135 [Enum.Font.SourceSans]
  SETTABLEKS R63 R62 K129 ["Font"]
  GETTABLEKS R63 R4 K136 ["TitlebarText"]
  SETTABLEKS R63 R62 K130 ["TextColor"]
  LOADN R63 14
  SETTABLEKS R63 R62 K131 ["TextSize"]
  SETTABLEKS R62 R61 K199 ["Text"]
  GETIMPORT R62 K266 [Enum.VerticalAlignment.Center]
  SETTABLEKS R62 R61 K258 ["VerticalAlignment"]
  SETTABLEKS R61 R60 K251 ["Header"]
  DUPTABLE R61 K305 [{"SelectAllRow", "Padding"}]
  DUPTABLE R62 K236 [{"RowHeight", "Padding"}]
  LOADN R63 40
  SETTABLEKS R63 R62 K125 ["RowHeight"]
  LOADN R63 8
  SETTABLEKS R63 R62 K127 ["Padding"]
  SETTABLEKS R62 R61 K26 ["SelectAllRow"]
  LOADN R62 10
  SETTABLEKS R62 R61 K127 ["Padding"]
  DUPTABLE R62 K316 [{"Offset", "Padding", "ContentPadding", "Anchor", "LabelSize", "Label1Position", "Label2Position", "LoadingIcon", "FailedIcon", "DoneIcon", "Arrow", "ArrowPosition", "IconPosition", "IconSize", "Spacing", "TextSize"}]
  GETIMPORT R63 K98 [UDim2.fromOffset]
  LOADN R64 248
  LOADN R65 0
  CALL R63 2 1
  SETTABLEKS R63 R62 K166 ["Offset"]
  LOADN R63 2
  SETTABLEKS R63 R62 K127 ["Padding"]
  DUPTABLE R63 K150 [{"Left", "Right"}]
  LOADN R64 20
  SETTABLEKS R64 R63 K79 ["Left"]
  LOADN R64 20
  SETTABLEKS R64 R63 K72 ["Right"]
  SETTABLEKS R63 R62 K306 ["ContentPadding"]
  GETIMPORT R63 K94 [Vector2.new]
  LOADN R64 0
  LOADK R65 K38 ["ScriptConversionPane"]
  CALL R63 2 1
  SETTABLEKS R63 R62 K307 ["Anchor"]
  GETIMPORT R63 K66 [UDim2.new]
  LOADK R64 K38 ["ScriptConversionPane"]
  LOADN R65 222
  LOADN R66 1
  LOADN R67 0
  CALL R63 4 1
  SETTABLEKS R63 R62 K308 ["LabelSize"]
  GETIMPORT R63 K66 [UDim2.new]
  LOADN R64 0
  LOADN R65 0
  LOADK R66 K38 ["ScriptConversionPane"]
  LOADN R67 0
  CALL R63 4 1
  SETTABLEKS R63 R62 K309 ["Label1Position"]
  GETIMPORT R63 K66 [UDim2.new]
  LOADK R64 K38 ["ScriptConversionPane"]
  LOADN R65 10
  LOADK R66 K38 ["ScriptConversionPane"]
  LOADN R67 0
  CALL R63 4 1
  SETTABLEKS R63 R62 K310 ["Label2Position"]
  LOADK R63 K61 ["StatusTable"]
  SETTABLEKS R63 R62 K311 ["LoadingIcon"]
  LOADK R63 K90 ["rbxasset://textures/R15Migrator/Icon_Error.png"]
  SETTABLEKS R63 R62 K312 ["FailedIcon"]
  LOADK R63 K87 ["rbxasset://textures/R15Migrator/Icon_Checkmark.png"]
  SETTABLEKS R63 R62 K313 ["DoneIcon"]
  LOADK R63 K250 ["→"]
  SETTABLEKS R63 R62 K151 ["Arrow"]
  GETIMPORT R63 K66 [UDim2.new]
  LOADK R64 K38 ["ScriptConversionPane"]
  LOADN R65 232
  LOADK R66 K38 ["ScriptConversionPane"]
  LOADN R67 0
  CALL R63 4 1
  SETTABLEKS R63 R62 K314 ["ArrowPosition"]
  GETIMPORT R63 K66 [UDim2.new]
  LOADN R64 1
  LOADN R65 240
  LOADK R66 K38 ["ScriptConversionPane"]
  LOADN R67 0
  CALL R63 4 1
  SETTABLEKS R63 R62 K315 ["IconPosition"]
  GETIMPORT R63 K98 [UDim2.fromOffset]
  LOADN R64 16
  LOADN R65 16
  CALL R63 2 1
  SETTABLEKS R63 R62 K117 ["IconSize"]
  LOADN R63 10
  SETTABLEKS R63 R62 K116 ["Spacing"]
  LOADN R63 14
  SETTABLEKS R63 R62 K131 ["TextSize"]
  DUPTABLE R63 K320 [{"Padding", "Spacing", "BackgroundColor", "ImageColor", "ButtonSize", "SliderSize"}]
  LOADN R64 2
  SETTABLEKS R64 R63 K127 ["Padding"]
  LOADN R64 15
  SETTABLEKS R64 R63 K116 ["Spacing"]
  GETTABLEKS R64 R4 K321 ["ForegroundMuted"]
  SETTABLEKS R64 R63 K111 ["BackgroundColor"]
  GETTABLEKS R64 R4 K71 ["MainText"]
  SETTABLEKS R64 R63 K318 ["ImageColor"]
  GETIMPORT R64 K98 [UDim2.fromOffset]
  LOADN R65 28
  LOADN R66 28
  CALL R64 2 1
  SETTABLEKS R64 R63 K145 ["ButtonSize"]
  GETIMPORT R64 K66 [UDim2.new]
  LOADN R65 1
  LOADN R66 213
  LOADN R67 1
  LOADN R68 0
  CALL R64 4 1
  SETTABLEKS R64 R63 K319 ["SliderSize"]
  DUPTABLE R64 K325 [{"Spacing", "Padding", "TextSpacing", "ImageSize", "WarningIcon", "TextSize", "LabelSize"}]
  LOADN R65 30
  SETTABLEKS R65 R64 K116 ["Spacing"]
  LOADN R65 10
  SETTABLEKS R65 R64 K127 ["Padding"]
  LOADN R65 10
  SETTABLEKS R65 R64 K322 ["TextSpacing"]
  LOADN R65 40
  SETTABLEKS R65 R64 K323 ["ImageSize"]
  LOADK R65 K70 [{"Color", "StretchMargin", "Weight"}]
  SETTABLEKS R65 R64 K324 ["WarningIcon"]
  GETIMPORT R65 K66 [UDim2.new]
  LOADN R66 1
  LOADN R67 186
  LOADN R68 1
  LOADN R69 0
  CALL R65 4 1
  SETTABLEKS R65 R64 K131 ["TextSize"]
  GETIMPORT R65 K66 [UDim2.new]
  LOADN R66 1
  LOADN R67 0
  LOADN R68 0
  LOADN R69 0
  CALL R65 4 1
  SETTABLEKS R65 R64 K308 ["LabelSize"]
  DUPTABLE R65 K329 [{"Spacing", "Padding", "CloseButtonSize", "GoToButtonSize"}]
  LOADN R66 10
  SETTABLEKS R66 R65 K116 ["Spacing"]
  LOADN R66 10
  SETTABLEKS R66 R65 K127 ["Padding"]
  GETIMPORT R66 K98 [UDim2.fromOffset]
  LOADN R67 120
  LOADN R68 32
  CALL R66 2 1
  SETTABLEKS R66 R65 K327 ["CloseButtonSize"]
  GETIMPORT R66 K98 [UDim2.fromOffset]
  LOADN R67 180
  LOADN R68 32
  CALL R66 2 1
  SETTABLEKS R66 R65 K328 ["GoToButtonSize"]
  NEWTABLE R66 64 0
  GETTABLEKS R67 R5 K19 ["ProgressBar"]
  SETTABLE R28 R66 R67
  GETTABLEKS R67 R5 K21 ["PopUpFrame"]
  SETTABLE R29 R66 R67
  GETTABLEKS R67 R5 K22 ["TabInstructions"]
  SETTABLE R25 R66 R67
  GETTABLEKS R67 R5 K23 ["IconTab"]
  SETTABLE R36 R66 R67
  GETTABLEKS R67 R5 K24 ["MainTabsView"]
  SETTABLE R21 R66 R67
  GETTABLEKS R67 R5 K25 ["MainFooter"]
  SETTABLE R22 R66 R67
  GETTABLEKS R67 R5 K26 ["SelectAllRow"]
  SETTABLE R23 R66 R67
  GETTABLEKS R67 R5 K27 ["FinalizerPane"]
  SETTABLE R26 R66 R67
  GETTABLEKS R67 R5 K28 ["FinalizerPaneRow"]
  SETTABLE R27 R66 R67
  GETTABLEKS R67 R5 K29 ["CharacterConversionPane"]
  SETTABLE R30 R66 R67
  GETTABLEKS R67 R5 K30 ["CharacterConversionPaneFooter"]
  SETTABLE R31 R66 R67
  GETTABLEKS R67 R5 K31 ["CharacterConversionList"]
  SETTABLE R32 R66 R67
  GETTABLEKS R67 R5 K32 ["CharacterPreview"]
  SETTABLE R33 R66 R67
  GETTABLEKS R67 R5 K33 ["CharacterSplitView"]
  SETTABLE R34 R66 R67
  GETTABLEKS R67 R5 K34 ["CharacterInstanceTree"]
  SETTABLE R35 R66 R67
  GETTABLEKS R67 R5 K35 ["ExpandableCharacterListItem"]
  SETTABLE R60 R66 R67
  GETTABLEKS R67 R5 K36 ["ScriptIssueRow"]
  SETTABLE R44 R66 R67
  GETTABLEKS R67 R5 K37 ["ScriptIssueTreeView"]
  SETTABLE R46 R66 R67
  GETTABLEKS R67 R5 K38 ["ScriptConversionPane"]
  SETTABLE R37 R66 R67
  GETTABLEKS R67 R5 K39 ["ScriptConversionExpandablePane"]
  SETTABLE R38 R66 R67
  GETTABLEKS R67 R5 K40 ["ReplacementRulesExpandablePane"]
  SETTABLE R39 R66 R67
  GETTABLEKS R67 R5 K41 ["ScriptConversionPaneFooter"]
  SETTABLE R40 R66 R67
  GETTABLEKS R67 R5 K42 ["ScriptConversionPaneHeader"]
  SETTABLE R41 R66 R67
  GETTABLEKS R67 R5 K43 ["ConfirmRevertDialog"]
  SETTABLE R47 R66 R67
  GETTABLEKS R67 R5 K44 ["ConfirmCommitDialog"]
  SETTABLE R48 R66 R67
  GETTABLEKS R67 R5 K45 ["ReplaceOptionsPane"]
  SETTABLE R49 R66 R67
  GETTABLEKS R67 R5 K46 ["ReplaceOptionItem"]
  SETTABLE R50 R66 R67
  GETTABLEKS R67 R5 K47 ["ScriptIconView"]
  SETTABLE R42 R66 R67
  GETTABLEKS R67 R5 K48 ["LoadingScreenPrompt"]
  SETTABLE R45 R66 R67
  GETTABLEKS R67 R5 K49 ["ScriptConversionConsole"]
  SETTABLE R43 R66 R67
  GETTABLEKS R67 R5 K50 ["AnimationConversionPane"]
  SETTABLE R51 R66 R67
  GETTABLEKS R67 R5 K51 ["AnimationConversionPaneFooter"]
  SETTABLE R55 R66 R67
  GETTABLEKS R67 R5 K52 ["PreviewModelComponent"]
  SETTABLE R57 R66 R67
  GETTABLEKS R67 R5 K53 ["DisplayAvatarsComponent"]
  SETTABLE R58 R66 R67
  GETTABLEKS R67 R5 K54 ["ReplaceRevertButtons"]
  SETTABLE R59 R66 R67
  GETTABLEKS R67 R5 K55 ["AnimationPreviewComponent"]
  SETTABLE R56 R66 R67
  GETTABLEKS R67 R5 K56 ["AnimationList"]
  SETTABLE R61 R66 R67
  GETTABLEKS R67 R5 K57 ["AnimationListRow"]
  SETTABLE R62 R66 R67
  GETTABLEKS R67 R5 K58 ["MediaPlayerControls"]
  SETTABLE R63 R66 R67
  GETTABLEKS R67 R5 K59 ["AdapterPane"]
  SETTABLE R52 R66 R67
  GETTABLEKS R67 R5 K60 ["SummaryPane"]
  SETTABLE R53 R66 R67
  GETTABLEKS R67 R5 K61 ["StatusTable"]
  SETTABLE R54 R66 R67
  GETTABLEKS R67 R5 K62 ["PublishBlockedDialog"]
  SETTABLE R64 R66 R67
  GETTABLEKS R67 R5 K63 ["Buttons"]
  SETTABLE R65 R66 R67
  DUPCLOSURE R67 K330 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R66
  RETURN R67 1
