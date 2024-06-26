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
  LOADK R13 K25 ["SelectAllRow"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K26 ["CharacterConversionPane"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K27 ["CharacterConversionPaneFooter"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K28 ["CharacterConversionList"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K29 ["CharacterPreview"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K30 ["CharacterSplitView"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K31 ["CharacterInstanceTree"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K32 ["ExpandableCharacterListItem"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K33 ["ScriptIssueRow"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K34 ["ScriptIssueTreeView"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K35 ["ScriptConversionPane"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K36 ["ScriptConversionExpandablePane"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K37 ["ReplacementRulesExpandablePane"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K38 ["ScriptConversionPaneFooter"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K39 ["ScriptConversionPaneHeader"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K40 ["ConfirmRevertDialog"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K41 ["ConfirmCommitDialog"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K42 ["ReplaceOptionsPane"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K43 ["ReplaceOptionItem"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K44 ["ScriptIconView"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K45 ["LoadingScreen"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K46 ["ScriptConversionConsole"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K47 ["AnimationConversionPane"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K48 ["AnimationConversionPaneFooter"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K49 ["PreviewModelComponent"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K50 ["DisplayAvatarsComponent"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K51 ["ReplaceRevertButtons"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K52 ["AnimationPreviewComponent"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K53 ["AnimationList"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K54 ["AnimationListRow"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K55 ["MediaPlayerControls"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K56 ["InitialFlow"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K57 ["SummaryPane"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K58 ["StatusTable"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K59 ["PublishBlockedDialog"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K60 ["Buttons"]
  NAMECALL R11 R5 K20 ["add"]
  CALL R11 2 0
  LOADK R13 K61 ["PublishWarningDialog"]
  NAMECALL R11 R5 K20 ["add"]
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
  DUPTABLE R15 K85 [{"Complete", "Reverted", "Warning", "Error", "VariableError"}]
  LOADK R16 K86 ["rbxasset://textures/R15Migrator/Icon_Checkmark.png"]
  SETTABLEKS R16 R15 K80 ["Complete"]
  LOADK R16 K87 ["rbxasset://textures/R15Migrator/Icon_Reverted.png"]
  SETTABLEKS R16 R15 K81 ["Reverted"]
  LOADK R16 K88 ["rbxasset://textures/R15Migrator/Icon_Warning.png"]
  SETTABLEKS R16 R15 K82 ["Warning"]
  LOADK R16 K89 ["rbxasset://textures/R15Migrator/Icon_Error.png"]
  SETTABLEKS R16 R15 K83 ["Error"]
  LOADK R16 K89 ["rbxasset://textures/R15Migrator/Icon_Error.png"]
  SETTABLEKS R16 R15 K84 ["VariableError"]
  NEWTABLE R16 8 0
  GETTABLEKS R17 R4 K69 ["MainText"]
  SETTABLEKS R17 R16 K65 ["Color"]
  LOADK R17 K90 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R17 R16 K91 ["Image"]
  GETIMPORT R17 K93 [Vector2.new]
  LOADN R18 12
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K94 ["ImageRectOffset"]
  GETIMPORT R17 K93 [Vector2.new]
  LOADN R18 12
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K95 ["ImageRectSize"]
  GETIMPORT R17 K97 [UDim2.fromOffset]
  LOADN R18 12
  LOADN R19 12
  CALL R17 2 1
  SETTABLEKS R17 R16 K98 ["Size"]
  GETTABLEKS R17 R7 K99 ["Selected"]
  DUPTABLE R18 K100 [{"ImageRectOffset"}]
  GETIMPORT R19 K93 [Vector2.new]
  LOADN R20 24
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K94 ["ImageRectOffset"]
  SETTABLE R18 R16 R17
  GETIMPORT R17 K103 [string.format]
  LOADK R18 K104 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R19 K105 ["Light"]
  CALL R17 2 1
  GETIMPORT R18 K103 [string.format]
  LOADK R19 K104 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  LOADK R20 K106 ["Dark"]
  CALL R18 2 1
  NEWTABLE R19 1 0
  GETTABLEKS R20 R4 K107 ["Delete"]
  MOVE R22 R18
  LOADK R23 K108 ["Terrain_Delete.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  NEWTABLE R20 1 0
  GETTABLEKS R21 R4 K107 ["Delete"]
  MOVE R23 R17
  LOADK R24 K108 ["Terrain_Delete.png"]
  CONCAT R22 R23 R24
  SETTABLE R22 R20 R21
  DUPTABLE R21 K112 [{"TabPaneSize", "BackgroundColor", "ViewBackgroundColor"}]
  GETIMPORT R22 K64 [UDim2.new]
  LOADN R23 1
  LOADN R24 220
  LOADN R25 1
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K109 ["TabPaneSize"]
  GETTABLEKS R22 R4 K113 ["BackgroundPaper"]
  SETTABLEKS R22 R21 K110 ["BackgroundColor"]
  GETTABLEKS R22 R4 K114 ["ForegroundMain"]
  SETTABLEKS R22 R21 K111 ["ViewBackgroundColor"]
  DUPTABLE R22 K117 [{"Size", "Icon", "BackgroundStyle"}]
  GETIMPORT R23 K97 [UDim2.fromOffset]
  LOADN R24 16
  LOADN R25 16
  CALL R23 2 1
  SETTABLEKS R23 R22 K98 ["Size"]
  LOADK R23 K118 ["rbxasset://textures/R15Migrator/ic-blue-arrow.png"]
  SETTABLEKS R23 R22 K115 ["Icon"]
  DUPTABLE R23 K120 [{"BorderSize"}]
  LOADN R24 0
  SETTABLEKS R24 R23 K119 ["BorderSize"]
  SETTABLEKS R23 R22 K116 ["BackgroundStyle"]
  DUPTABLE R23 K126 [{"RowHeight", "TextConfig", "Spacing", "Padding", "RefreshButton"}]
  LOADN R24 32
  SETTABLEKS R24 R23 K121 ["RowHeight"]
  DUPTABLE R24 K130 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R25 K133 [Enum.Font.SourceSans]
  SETTABLEKS R25 R24 K127 ["Font"]
  GETTABLEKS R25 R4 K134 ["TitlebarText"]
  SETTABLEKS R25 R24 K128 ["TextColor"]
  LOADN R25 14
  SETTABLEKS R25 R24 K129 ["TextSize"]
  SETTABLEKS R24 R23 K122 ["TextConfig"]
  LOADN R24 2
  SETTABLEKS R24 R23 K123 ["Spacing"]
  DUPTABLE R24 K135 [{"Left"}]
  LOADN R25 16
  SETTABLEKS R25 R24 K77 ["Left"]
  SETTABLEKS R24 R23 K124 ["Padding"]
  SETTABLEKS R22 R23 K125 ["RefreshButton"]
  DUPTABLE R24 K68 [{"Color", "StretchMargin", "Weight"}]
  GETTABLEKS R25 R4 K69 ["MainText"]
  SETTABLEKS R25 R24 K65 ["Color"]
  LOADN R25 0
  SETTABLEKS R25 R24 K66 ["StretchMargin"]
  LOADN R25 1
  SETTABLEKS R25 R24 K67 ["Weight"]
  DUPTABLE R25 K136 [{"Padding", "TextSize", "Font"}]
  DUPTABLE R26 K138 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R27 12
  SETTABLEKS R27 R26 K78 ["Top"]
  LOADN R27 12
  SETTABLEKS R27 R26 K137 ["Bottom"]
  LOADN R27 24
  SETTABLEKS R27 R26 K77 ["Left"]
  LOADN R27 24
  SETTABLEKS R27 R26 K70 ["Right"]
  SETTABLEKS R26 R25 K124 ["Padding"]
  LOADN R26 14
  SETTABLEKS R26 R25 K129 ["TextSize"]
  GETIMPORT R26 K133 [Enum.Font.SourceSans]
  SETTABLEKS R26 R25 K127 ["Font"]
  DUPTABLE R26 K141 [{"TextSize", "BackgroundColor", "BackgroundTransparency", "BarHeight", "Padding"}]
  LOADN R27 25
  SETTABLEKS R27 R26 K129 ["TextSize"]
  GETIMPORT R27 K144 [Color3.fromRGB]
  LOADN R28 0
  LOADN R29 0
  LOADN R30 0
  CALL R27 3 1
  SETTABLEKS R27 R26 K110 ["BackgroundColor"]
  LOADK R27 K145 [0.2]
  SETTABLEKS R27 R26 K139 ["BackgroundTransparency"]
  LOADN R27 12
  SETTABLEKS R27 R26 K140 ["BarHeight"]
  DUPTABLE R27 K146 [{"Left", "Right"}]
  LOADN R28 24
  SETTABLEKS R28 R27 K77 ["Left"]
  LOADN R28 24
  SETTABLEKS R28 R27 K70 ["Right"]
  SETTABLEKS R27 R26 K124 ["Padding"]
  DUPTABLE R27 K151 [{"TopBarColor", "BackgroundColor", "Arrow", "TopBarHeight", "TopBarPadding"}]
  GETTABLEKS R28 R4 K152 ["SubBackground2"]
  SETTABLEKS R28 R27 K147 ["TopBarColor"]
  GETTABLEKS R28 R4 K153 ["SubBackground"]
  SETTABLEKS R28 R27 K110 ["BackgroundColor"]
  DUPTABLE R28 K156 [{"Image", "Size", "Offset", "Color", "HoverColor"}]
  LOADK R29 K90 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R29 R28 K91 ["Image"]
  LOADN R29 12
  SETTABLEKS R29 R28 K98 ["Size"]
  GETIMPORT R29 K93 [Vector2.new]
  LOADN R30 24
  LOADN R31 0
  CALL R29 2 1
  SETTABLEKS R29 R28 K154 ["Offset"]
  GETTABLEKS R29 R4 K157 ["DimmedText"]
  SETTABLEKS R29 R28 K65 ["Color"]
  GETTABLEKS R29 R4 K158 ["BrightText"]
  SETTABLEKS R29 R28 K155 ["HoverColor"]
  SETTABLEKS R28 R27 K148 ["Arrow"]
  LOADN R28 16
  SETTABLEKS R28 R27 K149 ["TopBarHeight"]
  DUPTABLE R28 K71 [{"Right"}]
  LOADN R29 8
  SETTABLEKS R29 R28 K70 ["Right"]
  SETTABLEKS R28 R27 K150 ["TopBarPadding"]
  DUPTABLE R28 K160 [{"FooterHeight"}]
  LOADN R29 88
  SETTABLEKS R29 R28 K159 ["FooterHeight"]
  DUPTABLE R29 K166 [{"Spacing", "SeparatorStyle", "RevertButtonSize", "ReplaceButtonSize", "ButtonSpacing", "ButtonPadding"}]
  LOADN R30 5
  SETTABLEKS R30 R29 K123 ["Spacing"]
  SETTABLEKS R12 R29 K161 ["SeparatorStyle"]
  SETTABLEKS R11 R29 K162 ["RevertButtonSize"]
  SETTABLEKS R11 R29 K163 ["ReplaceButtonSize"]
  LOADN R30 10
  SETTABLEKS R30 R29 K164 ["ButtonSpacing"]
  SETTABLEKS R13 R29 K165 ["ButtonPadding"]
  GETTABLEKS R31 R10 K167 ["Dictionary"]
  GETTABLEKS R30 R31 K168 ["join"]
  MOVE R31 R29
  MOVE R32 R14
  CALL R30 2 1
  MOVE R29 R30
  DUPTABLE R30 K171 [{"RowHeight", "Spacing", "SectionHeadBackgroundColor", "SelectedColor"}]
  LOADN R31 32
  SETTABLEKS R31 R30 K121 ["RowHeight"]
  LOADN R31 4
  SETTABLEKS R31 R30 K123 ["Spacing"]
  GETTABLEKS R31 R4 K172 ["MainBackground"]
  SETTABLEKS R31 R30 K169 ["SectionHeadBackgroundColor"]
  GETTABLEKS R31 R4 K173 ["DialogMainButtonSelected"]
  SETTABLEKS R31 R30 K170 ["SelectedColor"]
  DUPTABLE R31 K179 [{"ViewportBackgroundColor", "ViewportAspectRatio", "SelectionColor", "ViewportHeight", "TreeHeight"}]
  GETTABLEKS R32 R4 K153 ["SubBackground"]
  SETTABLEKS R32 R31 K174 ["ViewportBackgroundColor"]
  LOADK R32 K180 [0.77027027027027]
  SETTABLEKS R32 R31 K175 ["ViewportAspectRatio"]
  GETIMPORT R32 K144 [Color3.fromRGB]
  LOADN R33 13
  LOADN R34 105
  LOADN R35 172
  CALL R32 3 1
  SETTABLEKS R32 R31 K176 ["SelectionColor"]
  LOADN R32 44
  SETTABLEKS R32 R31 K177 ["ViewportHeight"]
  LOADN R32 44
  SETTABLEKS R32 R31 K178 ["TreeHeight"]
  DUPTABLE R32 K185 [{"Arrow", "ArrowPadding", "Width", "HorizontalSpacing", "VerticalSpacing"}]
  DUPTABLE R33 K186 [{"Image", "Size", "ImageRectSize", "Offset", "Color"}]
  LOADK R34 K90 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R34 R33 K91 ["Image"]
  GETIMPORT R34 K97 [UDim2.fromOffset]
  LOADN R35 12
  LOADN R36 12
  CALL R34 2 1
  SETTABLEKS R34 R33 K98 ["Size"]
  GETIMPORT R34 K93 [Vector2.new]
  LOADN R35 12
  LOADN R36 12
  CALL R34 2 1
  SETTABLEKS R34 R33 K95 ["ImageRectSize"]
  GETIMPORT R34 K93 [Vector2.new]
  LOADN R35 12
  LOADN R36 0
  CALL R34 2 1
  SETTABLEKS R34 R33 K154 ["Offset"]
  GETTABLEKS R34 R4 K69 ["MainText"]
  SETTABLEKS R34 R33 K65 ["Color"]
  SETTABLEKS R33 R32 K148 ["Arrow"]
  LOADN R33 12
  SETTABLEKS R33 R32 K181 ["ArrowPadding"]
  LOADN R33 200
  SETTABLEKS R33 R32 K182 ["Width"]
  LOADN R33 8
  SETTABLEKS R33 R32 K183 ["HorizontalSpacing"]
  LOADN R33 8
  SETTABLEKS R33 R32 K184 ["VerticalSpacing"]
  DUPTABLE R33 K188 [{"RowHeight", "CompactNoBorder"}]
  LOADN R34 20
  SETTABLEKS R34 R33 K121 ["RowHeight"]
  GETTABLEKS R35 R10 K167 ["Dictionary"]
  GETTABLEKS R34 R35 K168 ["join"]
  MOVE R35 R9
  DUPTABLE R36 K193 [{"Text", "Indent", "RowHeight", "Arrow", "IconPadding", "HoverColor", "SelectedColor", "SelectedTextColor"}]
  DUPTABLE R37 K130 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R38 K133 [Enum.Font.SourceSans]
  SETTABLEKS R38 R37 K127 ["Font"]
  GETTABLEKS R38 R4 K69 ["MainText"]
  SETTABLEKS R38 R37 K128 ["TextColor"]
  LOADN R38 16
  SETTABLEKS R38 R37 K129 ["TextSize"]
  SETTABLEKS R37 R36 K189 ["Text"]
  LOADN R37 16
  SETTABLEKS R37 R36 K190 ["Indent"]
  LOADN R37 20
  SETTABLEKS R37 R36 K121 ["RowHeight"]
  DUPTABLE R37 K196 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color"}]
  LOADK R38 K90 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R38 R37 K91 ["Image"]
  LOADN R38 12
  SETTABLEKS R38 R37 K98 ["Size"]
  GETIMPORT R38 K93 [Vector2.new]
  LOADN R39 24
  LOADN R40 0
  CALL R38 2 1
  SETTABLEKS R38 R37 K194 ["ExpandedOffset"]
  GETIMPORT R38 K93 [Vector2.new]
  LOADN R39 12
  LOADN R40 0
  CALL R38 2 1
  SETTABLEKS R38 R37 K195 ["CollapsedOffset"]
  GETTABLEKS R38 R4 K69 ["MainText"]
  SETTABLEKS R38 R37 K65 ["Color"]
  SETTABLEKS R37 R36 K148 ["Arrow"]
  LOADN R37 3
  SETTABLEKS R37 R36 K191 ["IconPadding"]
  GETTABLEKS R37 R4 K197 ["ButtonHover"]
  SETTABLEKS R37 R36 K155 ["HoverColor"]
  GETTABLEKS R37 R4 K198 ["DialogMainButton"]
  SETTABLEKS R37 R36 K170 ["SelectedColor"]
  GETTABLEKS R37 R4 K199 ["DialogMainButtonText"]
  SETTABLEKS R37 R36 K192 ["SelectedTextColor"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K187 ["CompactNoBorder"]
  DUPTABLE R34 K200 [{"Size", "Color"}]
  LOADN R35 36
  SETTABLEKS R35 R34 K98 ["Size"]
  GETTABLEKS R35 R4 K69 ["MainText"]
  SETTABLEKS R35 R34 K65 ["Color"]
  DUPTABLE R35 K202 [{"ExpandablePaneHeaderSize"}]
  GETIMPORT R36 K64 [UDim2.new]
  LOADN R37 1
  LOADN R38 0
  LOADN R39 0
  LOADN R40 36
  CALL R36 4 1
  SETTABLEKS R36 R35 K201 ["ExpandablePaneHeaderSize"]
  DUPTABLE R36 K205 [{"HeaderHeight", "FooterHeight", "HeaderColor"}]
  LOADN R37 42
  SETTABLEKS R37 R36 K203 ["HeaderHeight"]
  LOADN R37 88
  SETTABLEKS R37 R36 K159 ["FooterHeight"]
  GETTABLEKS R37 R4 K206 ["ForegroundContrast"]
  SETTABLEKS R37 R36 K204 ["HeaderColor"]
  DUPTABLE R37 K207 [{"HeaderColor"}]
  GETTABLEKS R38 R4 K206 ["ForegroundContrast"]
  SETTABLEKS R38 R37 K204 ["HeaderColor"]
  DUPTABLE R38 K208 [{"BackgroundColor", "RevertButtonSize", "ReplaceButtonSize", "Spacing", "ButtonSpacing", "SeparatorStyle", "ButtonPadding"}]
  GETTABLEKS R39 R4 K152 ["SubBackground2"]
  SETTABLEKS R39 R38 K110 ["BackgroundColor"]
  SETTABLEKS R11 R38 K162 ["RevertButtonSize"]
  SETTABLEKS R11 R38 K163 ["ReplaceButtonSize"]
  LOADN R39 5
  SETTABLEKS R39 R38 K123 ["Spacing"]
  LOADN R39 10
  SETTABLEKS R39 R38 K164 ["ButtonSpacing"]
  SETTABLEKS R12 R38 K161 ["SeparatorStyle"]
  SETTABLEKS R13 R38 K165 ["ButtonPadding"]
  GETTABLEKS R40 R10 K167 ["Dictionary"]
  GETTABLEKS R39 R40 K168 ["join"]
  MOVE R40 R38
  MOVE R41 R14
  CALL R39 2 1
  MOVE R38 R39
  DUPTABLE R39 K214 [{"FilterHeight", "FilterWidth", "ItemHeight", "ListItemTextSize", "ListItemPadding", "Padding", "Spacing", "SeparatorStyle"}]
  LOADN R40 36
  SETTABLEKS R40 R39 K209 ["FilterHeight"]
  LOADN R40 192
  SETTABLEKS R40 R39 K210 ["FilterWidth"]
  LOADN R40 22
  SETTABLEKS R40 R39 K211 ["ItemHeight"]
  LOADN R40 14
  SETTABLEKS R40 R39 K212 ["ListItemTextSize"]
  LOADN R40 6
  SETTABLEKS R40 R39 K213 ["ListItemPadding"]
  DUPTABLE R40 K215 [{"Left", "Top", "Right"}]
  LOADN R41 12
  SETTABLEKS R41 R40 K77 ["Left"]
  LOADN R41 5
  SETTABLEKS R41 R40 K78 ["Top"]
  LOADN R41 12
  SETTABLEKS R41 R40 K70 ["Right"]
  SETTABLEKS R40 R39 K124 ["Padding"]
  LOADN R40 5
  SETTABLEKS R40 R39 K123 ["Spacing"]
  SETTABLEKS R12 R39 K161 ["SeparatorStyle"]
  DUPTABLE R40 K220 [{"StatusImageSize", "Spacing", "CountTextSize", "StatusIcons", "RevertedIconColor"}]
  GETIMPORT R41 K97 [UDim2.fromOffset]
  LOADN R42 16
  LOADN R43 16
  CALL R41 2 1
  SETTABLEKS R41 R40 K216 ["StatusImageSize"]
  LOADN R41 4
  SETTABLEKS R41 R40 K123 ["Spacing"]
  LOADN R41 15
  SETTABLEKS R41 R40 K217 ["CountTextSize"]
  SETTABLEKS R15 R40 K218 ["StatusIcons"]
  GETTABLEKS R41 R4 K158 ["BrightText"]
  SETTABLEKS R41 R40 K219 ["RevertedIconColor"]
  DUPTABLE R41 K223 [{"StatusIcons", "RowHeight", "ConsoleHeight", "BackgroundColor", "IconSize", "Padding", "Arrow"}]
  SETTABLEKS R15 R41 K218 ["StatusIcons"]
  LOADN R42 24
  SETTABLEKS R42 R41 K121 ["RowHeight"]
  LOADN R42 48
  SETTABLEKS R42 R41 K221 ["ConsoleHeight"]
  GETTABLEKS R42 R4 K152 ["SubBackground2"]
  SETTABLEKS R42 R41 K110 ["BackgroundColor"]
  GETIMPORT R42 K97 [UDim2.fromOffset]
  LOADN R43 16
  LOADN R44 16
  CALL R42 2 1
  SETTABLEKS R42 R41 K222 ["IconSize"]
  DUPTABLE R42 K146 [{"Left", "Right"}]
  LOADN R43 8
  SETTABLEKS R43 R42 K77 ["Left"]
  LOADN R43 8
  SETTABLEKS R43 R42 K70 ["Right"]
  SETTABLEKS R42 R41 K124 ["Padding"]
  DUPTABLE R42 K156 [{"Image", "Size", "Offset", "Color", "HoverColor"}]
  LOADK R43 K90 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R43 R42 K91 ["Image"]
  LOADN R43 12
  SETTABLEKS R43 R42 K98 ["Size"]
  GETIMPORT R43 K93 [Vector2.new]
  LOADN R44 0
  LOADN R45 0
  CALL R43 2 1
  SETTABLEKS R43 R42 K154 ["Offset"]
  GETTABLEKS R43 R4 K157 ["DimmedText"]
  SETTABLEKS R43 R42 K65 ["Color"]
  GETTABLEKS R43 R4 K158 ["BrightText"]
  SETTABLEKS R43 R42 K155 ["HoverColor"]
  SETTABLEKS R42 R41 K148 ["Arrow"]
  DUPTABLE R42 K226 [{"Arrow", "Spacing", "Indent", "TextSize", "LinkColor", "IconViewSize"}]
  DUPTABLE R43 K227 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color", "Padding"}]
  LOADK R44 K90 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R44 R43 K91 ["Image"]
  LOADN R44 12
  SETTABLEKS R44 R43 K98 ["Size"]
  GETIMPORT R44 K93 [Vector2.new]
  LOADN R45 24
  LOADN R46 0
  CALL R44 2 1
  SETTABLEKS R44 R43 K194 ["ExpandedOffset"]
  GETIMPORT R44 K93 [Vector2.new]
  LOADN R45 12
  LOADN R46 0
  CALL R44 2 1
  SETTABLEKS R44 R43 K195 ["CollapsedOffset"]
  GETTABLEKS R44 R4 K69 ["MainText"]
  SETTABLEKS R44 R43 K65 ["Color"]
  LOADN R44 6
  SETTABLEKS R44 R43 K124 ["Padding"]
  SETTABLEKS R43 R42 K148 ["Arrow"]
  LOADN R43 12
  SETTABLEKS R43 R42 K123 ["Spacing"]
  LOADN R43 16
  SETTABLEKS R43 R42 K190 ["Indent"]
  LOADN R43 14
  SETTABLEKS R43 R42 K129 ["TextSize"]
  GETTABLEKS R43 R4 K228 ["LinkText"]
  SETTABLEKS R43 R42 K224 ["LinkColor"]
  GETIMPORT R43 K97 [UDim2.fromOffset]
  LOADN R44 76
  LOADN R45 16
  CALL R43 2 1
  SETTABLEKS R43 R42 K225 ["IconViewSize"]
  DUPTABLE R43 K230 [{"ButtonSize", "Spacing", "Padding"}]
  GETIMPORT R44 K97 [UDim2.fromOffset]
  LOADN R45 72
  LOADN R46 36
  CALL R44 2 1
  SETTABLEKS R44 R43 K229 ["ButtonSize"]
  LOADN R44 8
  SETTABLEKS R44 R43 K123 ["Spacing"]
  DUPTABLE R44 K146 [{"Left", "Right"}]
  LOADN R45 24
  SETTABLEKS R45 R44 K77 ["Left"]
  LOADN R45 24
  SETTABLEKS R45 R44 K70 ["Right"]
  SETTABLEKS R44 R43 K124 ["Padding"]
  DUPTABLE R44 K231 [{"SelectAllRow"}]
  DUPTABLE R45 K232 [{"RowHeight", "Padding"}]
  LOADN R46 20
  SETTABLEKS R46 R45 K121 ["RowHeight"]
  LOADN R46 2
  SETTABLEKS R46 R45 K124 ["Padding"]
  SETTABLEKS R45 R44 K25 ["SelectAllRow"]
  DUPTABLE R45 K234 [{"MinContentSize"}]
  GETIMPORT R46 K93 [Vector2.new]
  LOADN R47 144
  LOADN R48 100
  CALL R46 2 1
  SETTABLEKS R46 R45 K233 ["MinContentSize"]
  DUPTABLE R46 K234 [{"MinContentSize"}]
  GETIMPORT R47 K93 [Vector2.new]
  LOADN R48 144
  LOADN R49 100
  CALL R47 2 1
  SETTABLEKS R47 R46 K233 ["MinContentSize"]
  DUPTABLE R47 K239 [{"PaneHeight", "TitleTextSize", "SaveRulesSize", "Padding", "Spacing", "ListHeightOffset", "RowHeight", "SeparatorStyle"}]
  LOADN R48 250
  SETTABLEKS R48 R47 K235 ["PaneHeight"]
  LOADN R48 22
  SETTABLEKS R48 R47 K236 ["TitleTextSize"]
  GETIMPORT R48 K97 [UDim2.fromOffset]
  LOADN R49 100
  LOADN R50 36
  CALL R48 2 1
  SETTABLEKS R48 R47 K237 ["SaveRulesSize"]
  DUPTABLE R48 K240 [{"Left", "Right", "Top", "Bottom"}]
  LOADN R49 24
  SETTABLEKS R49 R48 K77 ["Left"]
  LOADN R49 24
  SETTABLEKS R49 R48 K70 ["Right"]
  LOADN R49 24
  SETTABLEKS R49 R48 K78 ["Top"]
  LOADN R49 24
  SETTABLEKS R49 R48 K137 ["Bottom"]
  SETTABLEKS R48 R47 K124 ["Padding"]
  LOADN R48 12
  SETTABLEKS R48 R47 K123 ["Spacing"]
  LOADN R48 194
  SETTABLEKS R48 R47 K238 ["ListHeightOffset"]
  LOADN R48 48
  SETTABLEKS R48 R47 K121 ["RowHeight"]
  SETTABLEKS R24 R47 K161 ["SeparatorStyle"]
  DUPTABLE R48 K245 [{"TextInputSize", "FromLabelSize", "ToggleSize", "ArrowSize", "BackgroundColor", "Spacing", "Arrow", "Padding"}]
  GETIMPORT R49 K97 [UDim2.fromOffset]
  LOADN R50 170
  LOADN R51 36
  CALL R49 2 1
  SETTABLEKS R49 R48 K241 ["TextInputSize"]
  GETIMPORT R49 K97 [UDim2.fromOffset]
  LOADN R50 85
  LOADN R51 36
  CALL R49 2 1
  SETTABLEKS R49 R48 K242 ["FromLabelSize"]
  GETIMPORT R49 K97 [UDim2.fromOffset]
  LOADN R50 48
  LOADN R51 0
  CALL R49 2 1
  SETTABLEKS R49 R48 K243 ["ToggleSize"]
  GETIMPORT R49 K97 [UDim2.fromOffset]
  LOADN R50 24
  LOADN R51 0
  CALL R49 2 1
  SETTABLEKS R49 R48 K244 ["ArrowSize"]
  GETTABLEKS R49 R4 K153 ["SubBackground"]
  SETTABLEKS R49 R48 K110 ["BackgroundColor"]
  LOADN R49 16
  SETTABLEKS R49 R48 K123 ["Spacing"]
  LOADK R49 K246 ["→"]
  SETTABLEKS R49 R48 K148 ["Arrow"]
  DUPTABLE R49 K146 [{"Left", "Right"}]
  LOADN R50 10
  SETTABLEKS R50 R49 K77 ["Left"]
  LOADN R50 10
  SETTABLEKS R50 R49 K70 ["Right"]
  SETTABLEKS R49 R48 K124 ["Padding"]
  DUPTABLE R49 K248 [{"FooterHeight", "Header", "ExpandedOffset", "CollapsedOffset", "HeaderHeight"}]
  LOADN R50 88
  SETTABLEKS R50 R49 K159 ["FooterHeight"]
  DUPTABLE R50 K250 [{"Arrow", "Container", "Text"}]
  SETTABLEKS R16 R50 K148 ["Arrow"]
  DUPTABLE R51 K256 [{"Padding", "BackgroundColor", "BorderColor3", "BorderSizePixel", "Size", "Spacing", "Layout", "VerticalAlignment", "HorizontalAlignment"}]
  DUPTABLE R52 K146 [{"Left", "Right"}]
  LOADN R53 8
  SETTABLEKS R53 R52 K77 ["Left"]
  LOADN R53 8
  SETTABLEKS R53 R52 K70 ["Right"]
  SETTABLEKS R52 R51 K124 ["Padding"]
  GETTABLEKS R52 R4 K206 ["ForegroundContrast"]
  SETTABLEKS R52 R51 K110 ["BackgroundColor"]
  GETTABLEKS R52 R4 K257 ["OtherDivider"]
  SETTABLEKS R52 R51 K251 ["BorderColor3"]
  LOADN R52 1
  SETTABLEKS R52 R51 K252 ["BorderSizePixel"]
  GETIMPORT R52 K64 [UDim2.new]
  LOADN R53 1
  LOADN R54 0
  LOADN R55 0
  LOADN R56 20
  CALL R52 4 1
  SETTABLEKS R52 R51 K98 ["Size"]
  LOADN R52 6
  SETTABLEKS R52 R51 K123 ["Spacing"]
  GETIMPORT R52 K260 [Enum.FillDirection.Horizontal]
  SETTABLEKS R52 R51 K253 ["Layout"]
  GETIMPORT R52 K262 [Enum.VerticalAlignment.Center]
  SETTABLEKS R52 R51 K254 ["VerticalAlignment"]
  GETIMPORT R52 K263 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R52 R51 K255 ["HorizontalAlignment"]
  SETTABLEKS R51 R50 K249 ["Container"]
  DUPTABLE R51 K130 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R52 K265 [Enum.Font.SourceSansBold]
  SETTABLEKS R52 R51 K127 ["Font"]
  GETTABLEKS R52 R4 K69 ["MainText"]
  SETTABLEKS R52 R51 K128 ["TextColor"]
  LOADN R52 14
  SETTABLEKS R52 R51 K129 ["TextSize"]
  SETTABLEKS R51 R50 K189 ["Text"]
  SETTABLEKS R50 R49 K247 ["Header"]
  LOADN R50 16
  SETTABLEKS R50 R49 K194 ["ExpandedOffset"]
  LOADN R50 20
  SETTABLEKS R50 R49 K195 ["CollapsedOffset"]
  LOADN R50 20
  SETTABLEKS R50 R49 K203 ["HeaderHeight"]
  DUPTABLE R50 K280 [{"PanePadding", "Spacing", "SubTextSize", "TextSize", "ReadyTextSize", "VerticalTextSpacing", "ThumbnailPanelVerticalTextSpacing", "BackgroundColor", "Width", "ThumbnailHeight", "ThumbnailPanelHeight", "ButtonPadding", "ButtonPanePadding", "CompleteIcon", "IconSize", "ConfirmationLabelYPadding", "LoadingIndicatorHeight", "LoadingIndicatorPadding", "ConfirmationExperienceNameColor", "OpenPaneButtonsSpaceing"}]
  DUPTABLE R51 K281 [{"Left", "Top"}]
  LOADN R52 10
  SETTABLEKS R52 R51 K77 ["Left"]
  LOADN R52 20
  SETTABLEKS R52 R51 K78 ["Top"]
  SETTABLEKS R51 R50 K266 ["PanePadding"]
  LOADN R51 5
  SETTABLEKS R51 R50 K123 ["Spacing"]
  LOADN R51 13
  SETTABLEKS R51 R50 K267 ["SubTextSize"]
  LOADN R51 16
  SETTABLEKS R51 R50 K129 ["TextSize"]
  LOADN R51 20
  SETTABLEKS R51 R50 K268 ["ReadyTextSize"]
  LOADN R51 25
  SETTABLEKS R51 R50 K269 ["VerticalTextSpacing"]
  LOADN R51 5
  SETTABLEKS R51 R50 K270 ["ThumbnailPanelVerticalTextSpacing"]
  GETTABLEKS R51 R4 K114 ["ForegroundMain"]
  SETTABLEKS R51 R50 K110 ["BackgroundColor"]
  LOADN R51 144
  SETTABLEKS R51 R50 K182 ["Width"]
  LOADN R51 225
  SETTABLEKS R51 R50 K271 ["ThumbnailHeight"]
  LOADN R51 245
  SETTABLEKS R51 R50 K272 ["ThumbnailPanelHeight"]
  GETIMPORT R51 K93 [Vector2.new]
  LOADN R52 30
  LOADN R53 10
  CALL R51 2 1
  SETTABLEKS R51 R50 K165 ["ButtonPadding"]
  GETIMPORT R51 K93 [Vector2.new]
  LOADN R52 30
  LOADN R53 30
  CALL R51 2 1
  SETTABLEKS R51 R50 K273 ["ButtonPanePadding"]
  GETTABLEKS R51 R15 K80 ["Complete"]
  SETTABLEKS R51 R50 K274 ["CompleteIcon"]
  GETIMPORT R51 K97 [UDim2.fromOffset]
  LOADN R52 24
  LOADN R53 24
  CALL R51 2 1
  SETTABLEKS R51 R50 K222 ["IconSize"]
  LOADN R51 3
  SETTABLEKS R51 R50 K275 ["ConfirmationLabelYPadding"]
  LOADN R51 20
  SETTABLEKS R51 R50 K276 ["LoadingIndicatorHeight"]
  LOADN R51 5
  SETTABLEKS R51 R50 K277 ["LoadingIndicatorPadding"]
  LOADK R51 K26 ["CharacterConversionPane"]
  SETTABLEKS R51 R50 K278 ["ConfirmationExperienceNameColor"]
  LOADN R51 8
  SETTABLEKS R51 R50 K279 ["OpenPaneButtonsSpaceing"]
  DUPTABLE R51 K285 [{"HeaderColor", "DividerColor", "Arrow", "CompleteIcon", "SortBy", "RefreshButton"}]
  GETTABLEKS R52 R4 K206 ["ForegroundContrast"]
  SETTABLEKS R52 R51 K204 ["HeaderColor"]
  GETTABLEKS R52 R4 K257 ["OtherDivider"]
  SETTABLEKS R52 R51 K283 ["DividerColor"]
  SETTABLEKS R16 R51 K148 ["Arrow"]
  GETTABLEKS R52 R15 K80 ["Complete"]
  SETTABLEKS R52 R51 K274 ["CompleteIcon"]
  DUPTABLE R52 K287 [{"Height", "Width", "Spacing"}]
  LOADN R53 36
  SETTABLEKS R53 R52 K286 ["Height"]
  LOADN R53 192
  SETTABLEKS R53 R52 K182 ["Width"]
  LOADN R53 20
  SETTABLEKS R53 R52 K123 ["Spacing"]
  SETTABLEKS R52 R51 K284 ["SortBy"]
  SETTABLEKS R22 R51 K125 ["RefreshButton"]
  DUPTABLE R52 K290 [{"RowHeight", "MaxTableHeight", "ColumnOffset"}]
  LOADN R53 28
  SETTABLEKS R53 R52 K121 ["RowHeight"]
  LOADN R53 196
  SETTABLEKS R53 R52 K288 ["MaxTableHeight"]
  LOADN R53 60
  SETTABLEKS R53 R52 K289 ["ColumnOffset"]
  DUPTABLE R53 K291 [{"SeparatorStyle", "Spacing", "Padding"}]
  SETTABLEKS R12 R53 K161 ["SeparatorStyle"]
  LOADN R54 5
  SETTABLEKS R54 R53 K123 ["Spacing"]
  SETTABLEKS R13 R53 K124 ["Padding"]
  GETTABLEKS R55 R10 K167 ["Dictionary"]
  GETTABLEKS R54 R55 K168 ["join"]
  MOVE R55 R53
  MOVE R56 R14
  CALL R54 2 1
  MOVE R53 R54
  DUPTABLE R54 K293 [{"Spacing", "PreviewContainerSize"}]
  LOADN R55 10
  SETTABLEKS R55 R54 K123 ["Spacing"]
  GETIMPORT R55 K64 [UDim2.new]
  LOADN R56 1
  LOADN R57 0
  LOADN R58 0
  LOADN R59 148
  CALL R55 4 1
  SETTABLEKS R55 R54 K292 ["PreviewContainerSize"]
  DUPTABLE R55 K295 [{"Padding", "BackgroundColor", "ResetButtonSize"}]
  LOADN R56 5
  SETTABLEKS R56 R55 K124 ["Padding"]
  GETTABLEKS R56 R4 K206 ["ForegroundContrast"]
  SETTABLEKS R56 R55 K110 ["BackgroundColor"]
  GETIMPORT R56 K97 [UDim2.fromOffset]
  LOADN R57 28
  LOADN R58 28
  CALL R56 2 1
  SETTABLEKS R56 R55 K294 ["ResetButtonSize"]
  DUPTABLE R56 K298 [{"Arrow", "Padding", "PreviewWindowSize", "PreviewWindowPosition"}]
  DUPTABLE R57 K300 [{"Image", "Size", "ImageRectSize", "Position", "Offset", "Color"}]
  LOADK R58 K90 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R58 R57 K91 ["Image"]
  GETIMPORT R58 K97 [UDim2.fromOffset]
  LOADN R59 12
  LOADN R60 12
  CALL R58 2 1
  SETTABLEKS R58 R57 K98 ["Size"]
  GETIMPORT R58 K93 [Vector2.new]
  LOADN R59 12
  LOADN R60 12
  CALL R58 2 1
  SETTABLEKS R58 R57 K95 ["ImageRectSize"]
  GETIMPORT R58 K64 [UDim2.new]
  LOADK R59 K45 ["LoadingScreen"]
  LOADN R60 250
  LOADK R61 K45 ["LoadingScreen"]
  LOADN R62 250
  CALL R58 4 1
  SETTABLEKS R58 R57 K299 ["Position"]
  GETIMPORT R58 K93 [Vector2.new]
  LOADN R59 12
  LOADN R60 0
  CALL R58 2 1
  SETTABLEKS R58 R57 K154 ["Offset"]
  GETTABLEKS R58 R4 K69 ["MainText"]
  SETTABLEKS R58 R57 K65 ["Color"]
  SETTABLEKS R57 R56 K148 ["Arrow"]
  LOADN R57 10
  SETTABLEKS R57 R56 K124 ["Padding"]
  GETIMPORT R57 K64 [UDim2.new]
  LOADK R58 K45 ["LoadingScreen"]
  LOADN R59 246
  LOADN R60 1
  LOADN R61 0
  CALL R57 4 1
  SETTABLEKS R57 R56 K296 ["PreviewWindowSize"]
  GETIMPORT R57 K64 [UDim2.new]
  LOADK R58 K45 ["LoadingScreen"]
  LOADN R59 10
  LOADN R60 0
  LOADN R61 0
  CALL R57 4 1
  SETTABLEKS R57 R56 K297 ["PreviewWindowPosition"]
  DUPTABLE R57 K302 [{"ButtonSize", "Spacing"}]
  GETIMPORT R58 K64 [UDim2.new]
  LOADN R59 0
  LOADN R60 71
  LOADN R61 0
  LOADN R62 28
  CALL R58 4 1
  SETTABLEKS R58 R57 K229 ["ButtonSize"]
  LOADN R58 10
  SETTABLEKS R58 R57 K123 ["Spacing"]
  DUPTABLE R58 K306 [{"SelectedBorderColor", "SelectedColor", "StatusImageSize", "Icons", "Content", "Header"}]
  GETTABLEKS R59 R4 K173 ["DialogMainButtonSelected"]
  SETTABLEKS R59 R58 K303 ["SelectedBorderColor"]
  GETTABLEKS R59 R4 K172 ["MainBackground"]
  SETTABLEKS R59 R58 K170 ["SelectedColor"]
  GETIMPORT R59 K97 [UDim2.fromOffset]
  LOADN R60 16
  LOADN R61 16
  CALL R59 2 1
  SETTABLEKS R59 R58 K216 ["StatusImageSize"]
  DUPTABLE R59 K308 [{"Success", "Warning"}]
  LOADK R60 K86 ["rbxasset://textures/R15Migrator/Icon_Checkmark.png"]
  SETTABLEKS R60 R59 K307 ["Success"]
  LOADK R60 K88 ["rbxasset://textures/R15Migrator/Icon_Warning.png"]
  SETTABLEKS R60 R59 K82 ["Warning"]
  SETTABLEKS R59 R58 K304 ["Icons"]
  DUPTABLE R59 K309 [{"Padding"}]
  DUPTABLE R60 K310 [{"Left", "Top", "Right", "Bottom"}]
  LOADN R61 28
  SETTABLEKS R61 R60 K77 ["Left"]
  LOADN R61 10
  SETTABLEKS R61 R60 K78 ["Top"]
  LOADN R61 28
  SETTABLEKS R61 R60 K70 ["Right"]
  LOADN R61 10
  SETTABLEKS R61 R60 K137 ["Bottom"]
  SETTABLEKS R60 R59 K124 ["Padding"]
  SETTABLEKS R59 R58 K305 ["Content"]
  DUPTABLE R59 K311 [{"Arrow", "HorizontalAlignment", "Padding", "Size", "Spacing", "Text", "VerticalAlignment"}]
  SETTABLEKS R16 R59 K148 ["Arrow"]
  GETIMPORT R60 K263 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R60 R59 K255 ["HorizontalAlignment"]
  DUPTABLE R60 K146 [{"Left", "Right"}]
  LOADN R61 16
  SETTABLEKS R61 R60 K77 ["Left"]
  LOADN R61 16
  SETTABLEKS R61 R60 K70 ["Right"]
  SETTABLEKS R60 R59 K124 ["Padding"]
  GETIMPORT R60 K64 [UDim2.new]
  LOADN R61 1
  LOADN R62 0
  LOADN R63 0
  LOADN R64 32
  CALL R60 4 1
  SETTABLEKS R60 R59 K98 ["Size"]
  LOADN R60 6
  SETTABLEKS R60 R59 K123 ["Spacing"]
  DUPTABLE R60 K130 [{"Font", "TextColor", "TextSize"}]
  GETIMPORT R61 K133 [Enum.Font.SourceSans]
  SETTABLEKS R61 R60 K127 ["Font"]
  GETTABLEKS R61 R4 K134 ["TitlebarText"]
  SETTABLEKS R61 R60 K128 ["TextColor"]
  LOADN R61 14
  SETTABLEKS R61 R60 K129 ["TextSize"]
  SETTABLEKS R60 R59 K189 ["Text"]
  GETIMPORT R60 K262 [Enum.VerticalAlignment.Center]
  SETTABLEKS R60 R59 K254 ["VerticalAlignment"]
  SETTABLEKS R59 R58 K247 ["Header"]
  DUPTABLE R59 K312 [{"SelectAllRow", "Padding"}]
  DUPTABLE R60 K232 [{"RowHeight", "Padding"}]
  LOADN R61 40
  SETTABLEKS R61 R60 K121 ["RowHeight"]
  LOADN R61 8
  SETTABLEKS R61 R60 K124 ["Padding"]
  SETTABLEKS R60 R59 K25 ["SelectAllRow"]
  LOADN R60 10
  SETTABLEKS R60 R59 K124 ["Padding"]
  DUPTABLE R60 K323 [{"Offset", "Padding", "ContentPadding", "Anchor", "LabelSize", "Label1Position", "Label2Position", "LoadingIcon", "FailedIcon", "DoneIcon", "Arrow", "ArrowPosition", "IconPosition", "IconSize", "Spacing", "TextSize"}]
  GETIMPORT R61 K97 [UDim2.fromOffset]
  LOADN R62 248
  LOADN R63 0
  CALL R61 2 1
  SETTABLEKS R61 R60 K154 ["Offset"]
  LOADN R61 2
  SETTABLEKS R61 R60 K124 ["Padding"]
  DUPTABLE R61 K146 [{"Left", "Right"}]
  LOADN R62 20
  SETTABLEKS R62 R61 K77 ["Left"]
  LOADN R62 20
  SETTABLEKS R62 R61 K70 ["Right"]
  SETTABLEKS R61 R60 K313 ["ContentPadding"]
  GETIMPORT R61 K93 [Vector2.new]
  LOADN R62 0
  LOADK R63 K45 ["LoadingScreen"]
  CALL R61 2 1
  SETTABLEKS R61 R60 K314 ["Anchor"]
  GETIMPORT R61 K64 [UDim2.new]
  LOADK R62 K45 ["LoadingScreen"]
  LOADN R63 222
  LOADN R64 1
  LOADN R65 0
  CALL R61 4 1
  SETTABLEKS R61 R60 K315 ["LabelSize"]
  GETIMPORT R61 K64 [UDim2.new]
  LOADN R62 0
  LOADN R63 0
  LOADK R64 K45 ["LoadingScreen"]
  LOADN R65 0
  CALL R61 4 1
  SETTABLEKS R61 R60 K316 ["Label1Position"]
  GETIMPORT R61 K64 [UDim2.new]
  LOADK R62 K45 ["LoadingScreen"]
  LOADN R63 10
  LOADK R64 K45 ["LoadingScreen"]
  LOADN R65 0
  CALL R61 4 1
  SETTABLEKS R61 R60 K317 ["Label2Position"]
  LOADK R61 K68 [{"Color", "StretchMargin", "Weight"}]
  SETTABLEKS R61 R60 K318 ["LoadingIcon"]
  LOADK R61 K89 ["rbxasset://textures/R15Migrator/Icon_Error.png"]
  SETTABLEKS R61 R60 K319 ["FailedIcon"]
  LOADK R61 K86 ["rbxasset://textures/R15Migrator/Icon_Checkmark.png"]
  SETTABLEKS R61 R60 K320 ["DoneIcon"]
  LOADK R61 K246 ["→"]
  SETTABLEKS R61 R60 K148 ["Arrow"]
  GETIMPORT R61 K64 [UDim2.new]
  LOADK R62 K45 ["LoadingScreen"]
  LOADN R63 232
  LOADK R64 K45 ["LoadingScreen"]
  LOADN R65 0
  CALL R61 4 1
  SETTABLEKS R61 R60 K321 ["ArrowPosition"]
  GETIMPORT R61 K64 [UDim2.new]
  LOADN R62 1
  LOADN R63 240
  LOADK R64 K45 ["LoadingScreen"]
  LOADN R65 0
  CALL R61 4 1
  SETTABLEKS R61 R60 K322 ["IconPosition"]
  GETIMPORT R61 K97 [UDim2.fromOffset]
  LOADN R62 16
  LOADN R63 16
  CALL R61 2 1
  SETTABLEKS R61 R60 K222 ["IconSize"]
  LOADN R61 10
  SETTABLEKS R61 R60 K123 ["Spacing"]
  LOADN R61 14
  SETTABLEKS R61 R60 K129 ["TextSize"]
  DUPTABLE R61 K327 [{"Padding", "Spacing", "BackgroundColor", "ImageColor", "ButtonSize", "SliderSize"}]
  LOADN R62 2
  SETTABLEKS R62 R61 K124 ["Padding"]
  LOADN R62 15
  SETTABLEKS R62 R61 K123 ["Spacing"]
  GETTABLEKS R62 R4 K328 ["ForegroundMuted"]
  SETTABLEKS R62 R61 K110 ["BackgroundColor"]
  GETTABLEKS R62 R4 K69 ["MainText"]
  SETTABLEKS R62 R61 K325 ["ImageColor"]
  GETIMPORT R62 K97 [UDim2.fromOffset]
  LOADN R63 28
  LOADN R64 28
  CALL R62 2 1
  SETTABLEKS R62 R61 K229 ["ButtonSize"]
  GETIMPORT R62 K64 [UDim2.new]
  LOADN R63 1
  LOADN R64 213
  LOADN R65 1
  LOADN R66 0
  CALL R62 4 1
  SETTABLEKS R62 R61 K326 ["SliderSize"]
  DUPTABLE R62 K332 [{"Spacing", "Padding", "TextSpacing", "ImageSize", "WarningIcon", "TextSize", "LabelSize"}]
  LOADN R63 30
  SETTABLEKS R63 R62 K123 ["Spacing"]
  LOADN R63 10
  SETTABLEKS R63 R62 K124 ["Padding"]
  LOADN R63 10
  SETTABLEKS R63 R62 K329 ["TextSpacing"]
  LOADN R63 40
  SETTABLEKS R63 R62 K330 ["ImageSize"]
  LOADK R63 K77 ["Left"]
  SETTABLEKS R63 R62 K331 ["WarningIcon"]
  GETIMPORT R63 K64 [UDim2.new]
  LOADN R64 1
  LOADN R65 186
  LOADN R66 1
  LOADN R67 0
  CALL R63 4 1
  SETTABLEKS R63 R62 K129 ["TextSize"]
  GETIMPORT R63 K64 [UDim2.new]
  LOADN R64 1
  LOADN R65 0
  LOADN R66 0
  LOADN R67 0
  CALL R63 4 1
  SETTABLEKS R63 R62 K315 ["LabelSize"]
  DUPTABLE R63 K338 [{"Spacing", "Padding", "CloseButtonSize", "GoToButtonSize", "CancelButtonSize", "ContinueButtonSize"}]
  LOADN R64 10
  SETTABLEKS R64 R63 K123 ["Spacing"]
  LOADN R64 10
  SETTABLEKS R64 R63 K124 ["Padding"]
  GETIMPORT R64 K97 [UDim2.fromOffset]
  LOADN R65 120
  LOADN R66 32
  CALL R64 2 1
  SETTABLEKS R64 R63 K334 ["CloseButtonSize"]
  GETIMPORT R64 K97 [UDim2.fromOffset]
  LOADN R65 180
  LOADN R66 32
  CALL R64 2 1
  SETTABLEKS R64 R63 K335 ["GoToButtonSize"]
  GETIMPORT R64 K97 [UDim2.fromOffset]
  LOADN R65 120
  LOADN R66 32
  CALL R64 2 1
  SETTABLEKS R64 R63 K336 ["CancelButtonSize"]
  GETIMPORT R64 K97 [UDim2.fromOffset]
  LOADN R65 180
  LOADN R66 32
  CALL R64 2 1
  SETTABLEKS R64 R63 K337 ["ContinueButtonSize"]
  NEWTABLE R64 64 0
  GETTABLEKS R65 R5 K19 ["ProgressBar"]
  SETTABLE R26 R64 R65
  GETTABLEKS R65 R5 K21 ["PopUpFrame"]
  SETTABLE R27 R64 R65
  GETTABLEKS R65 R5 K22 ["TabInstructions"]
  SETTABLE R25 R64 R65
  GETTABLEKS R65 R5 K23 ["IconTab"]
  SETTABLE R34 R64 R65
  GETTABLEKS R65 R5 K24 ["MainTabsView"]
  SETTABLE R21 R64 R65
  GETTABLEKS R65 R5 K25 ["SelectAllRow"]
  SETTABLE R23 R64 R65
  GETTABLEKS R65 R5 K26 ["CharacterConversionPane"]
  SETTABLE R28 R64 R65
  GETTABLEKS R65 R5 K27 ["CharacterConversionPaneFooter"]
  SETTABLE R29 R64 R65
  GETTABLEKS R65 R5 K28 ["CharacterConversionList"]
  SETTABLE R30 R64 R65
  GETTABLEKS R65 R5 K29 ["CharacterPreview"]
  SETTABLE R31 R64 R65
  GETTABLEKS R65 R5 K30 ["CharacterSplitView"]
  SETTABLE R32 R64 R65
  GETTABLEKS R65 R5 K31 ["CharacterInstanceTree"]
  SETTABLE R33 R64 R65
  GETTABLEKS R65 R5 K32 ["ExpandableCharacterListItem"]
  SETTABLE R58 R64 R65
  GETTABLEKS R65 R5 K33 ["ScriptIssueRow"]
  SETTABLE R42 R64 R65
  GETTABLEKS R65 R5 K34 ["ScriptIssueTreeView"]
  SETTABLE R44 R64 R65
  GETTABLEKS R65 R5 K35 ["ScriptConversionPane"]
  SETTABLE R35 R64 R65
  GETTABLEKS R65 R5 K36 ["ScriptConversionExpandablePane"]
  SETTABLE R36 R64 R65
  GETTABLEKS R65 R5 K37 ["ReplacementRulesExpandablePane"]
  SETTABLE R37 R64 R65
  GETTABLEKS R65 R5 K38 ["ScriptConversionPaneFooter"]
  SETTABLE R38 R64 R65
  GETTABLEKS R65 R5 K39 ["ScriptConversionPaneHeader"]
  SETTABLE R39 R64 R65
  GETTABLEKS R65 R5 K40 ["ConfirmRevertDialog"]
  SETTABLE R45 R64 R65
  GETTABLEKS R65 R5 K41 ["ConfirmCommitDialog"]
  SETTABLE R46 R64 R65
  GETTABLEKS R65 R5 K42 ["ReplaceOptionsPane"]
  SETTABLE R47 R64 R65
  GETTABLEKS R65 R5 K43 ["ReplaceOptionItem"]
  SETTABLE R48 R64 R65
  GETTABLEKS R65 R5 K44 ["ScriptIconView"]
  SETTABLE R40 R64 R65
  GETTABLEKS R65 R5 K45 ["LoadingScreen"]
  SETTABLE R43 R64 R65
  GETTABLEKS R65 R5 K46 ["ScriptConversionConsole"]
  SETTABLE R41 R64 R65
  GETTABLEKS R65 R5 K47 ["AnimationConversionPane"]
  SETTABLE R49 R64 R65
  GETTABLEKS R65 R5 K48 ["AnimationConversionPaneFooter"]
  SETTABLE R53 R64 R65
  GETTABLEKS R65 R5 K49 ["PreviewModelComponent"]
  SETTABLE R55 R64 R65
  GETTABLEKS R65 R5 K50 ["DisplayAvatarsComponent"]
  SETTABLE R56 R64 R65
  GETTABLEKS R65 R5 K51 ["ReplaceRevertButtons"]
  SETTABLE R57 R64 R65
  GETTABLEKS R65 R5 K52 ["AnimationPreviewComponent"]
  SETTABLE R54 R64 R65
  GETTABLEKS R65 R5 K53 ["AnimationList"]
  SETTABLE R59 R64 R65
  GETTABLEKS R65 R5 K54 ["AnimationListRow"]
  SETTABLE R60 R64 R65
  GETTABLEKS R65 R5 K55 ["MediaPlayerControls"]
  SETTABLE R61 R64 R65
  GETTABLEKS R65 R5 K56 ["InitialFlow"]
  SETTABLE R50 R64 R65
  GETTABLEKS R65 R5 K57 ["SummaryPane"]
  SETTABLE R51 R64 R65
  GETTABLEKS R65 R5 K58 ["StatusTable"]
  SETTABLE R52 R64 R65
  GETTABLEKS R65 R5 K59 ["PublishBlockedDialog"]
  SETTABLE R62 R64 R65
  GETTABLEKS R65 R5 K60 ["Buttons"]
  SETTABLE R63 R64 R65
  GETTABLEKS R65 R5 K61 ["PublishWarningDialog"]
  SETTABLE R62 R64 R65
  DUPCLOSURE R65 K339 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R64
  RETURN R65 1
