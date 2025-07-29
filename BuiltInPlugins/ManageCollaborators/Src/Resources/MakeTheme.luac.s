PROTO_0:
  LOADNIL R1
  GETUPVAL R2 0
  GETUPVAL R3 1
  NEWTABLE R4 8 0
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K0 ["CloseWidget"]
  LOADK R6 K1 ["rbxasset://textures/ManageCollaborators/closeWidget_dark.png"]
  SETTABLE R6 R4 R5
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["RightArrow"]
  LOADK R6 K3 ["rbxasset://textures/ManageCollaborators/arrowRight_dark.png"]
  SETTABLE R6 R4 R5
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["DownArrow"]
  LOADK R6 K5 ["rbxasset://textures/ManageCollaborators/arrowDown_dark.png"]
  SETTABLE R6 R4 R5
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K6 ["FriendIcon"]
  LOADK R6 K7 ["rbxasset://textures/ManageCollaborators/friendIcon_dark.png"]
  SETTABLE R6 R4 R5
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K8 ["FooterBorder"]
  GETIMPORT R6 K11 [Color3.fromRGB]
  LOADN R7 0
  LOADN R8 0
  LOADN R9 0
  CALL R6 3 1
  SETTABLE R6 R4 R5
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K12 ["Border"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K13 ["Gray"]
  GETTABLEN R6 R7 70
  SETTABLE R6 R4 R5
  CALL R2 2 1
  GETUPVAL R3 0
  GETUPVAL R4 4
  NEWTABLE R5 8 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K0 ["CloseWidget"]
  LOADK R7 K14 ["rbxasset://textures/ManageCollaborators/closeWidget_light.png"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["RightArrow"]
  LOADK R7 K15 ["rbxasset://textures/ManageCollaborators/arrowRight_light.png"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["DownArrow"]
  LOADK R7 K16 ["rbxasset://textures/ManageCollaborators/arrowDown_light.png"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["FriendIcon"]
  LOADK R7 K17 ["rbxasset://textures/ManageCollaborators/friendIcon_light.png"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K8 ["FooterBorder"]
  GETIMPORT R7 K11 [Color3.fromRGB]
  LOADN R8 244
  LOADN R9 244
  LOADN R10 244
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K18 ["Dropdown"]
  GETIMPORT R7 K11 [Color3.fromRGB]
  LOADN R8 228
  LOADN R9 238
  LOADN R10 254
  CALL R7 3 1
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K12 ["Border"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K13 ["Gray"]
  GETTABLEN R7 R8 40
  SETTABLE R7 R5 R6
  CALL R3 2 1
  JUMPIFNOT R0 [+8]
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K19 ["mock"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 1
  MOVE R1 R4
  JUMP [+7]
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K20 ["new"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 1
  MOVE R1 R4
  GETUPVAL R6 6
  NAMECALL R4 R1 K21 ["extend"]
  CALL R4 2 -1
  RETURN R4 -1

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
  GETTABLEKS R3 R2 K8 ["getRawComponentStyle"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K9 ["Cryo"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K10 ["UIData"]
  GETTABLEKS R6 R2 K11 ["ComponentSymbols"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R5 K12 ["ExpandablePane"]
  GETTABLEKS R8 R9 K13 ["style"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K14 ["&Default"]
  GETTABLEKS R9 R7 K15 ["Header"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R5 K16 ["Button"]
  GETTABLEKS R11 R12 K13 ["style"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K17 ["&RoundPrimary"]
  GETTABLEKS R12 R10 K18 ["&Round"]
  GETTABLEKS R13 R1 K7 ["Style"]
  GETTABLEKS R15 R13 K19 ["Themes"]
  GETTABLEKS R14 R15 K20 ["BaseTheme"]
  GETTABLEKS R16 R13 K19 ["Themes"]
  GETTABLEKS R15 R16 K21 ["StudioTheme"]
  GETTABLEKS R17 R13 K19 ["Themes"]
  GETTABLEKS R16 R17 K22 ["DarkTheme"]
  GETTABLEKS R18 R13 K19 ["Themes"]
  GETTABLEKS R17 R18 K23 ["LightTheme"]
  GETTABLEKS R18 R13 K24 ["StyleKey"]
  GETTABLEKS R19 R13 K25 ["ColorSystem"]
  GETTABLEKS R20 R1 K26 ["Dash"]
  GETTABLEKS R21 R20 K27 ["join"]
  GETIMPORT R22 K29 [game]
  LOADK R24 K30 ["StudioManageCollabWideBox2"]
  NAMECALL R22 R22 K31 ["GetFastFlag"]
  CALL R22 2 1
  GETIMPORT R23 K29 [game]
  LOADK R25 K32 ["Collab6182_LightThemeHighlightCollabSearchBox"]
  NAMECALL R23 R23 K31 ["GetFastFlag"]
  CALL R23 2 1
  GETIMPORT R24 K29 [game]
  LOADK R26 K33 ["Collab8818_ShowSearchItemDisplayName"]
  NAMECALL R24 R24 K31 ["GetFastFlag"]
  CALL R24 2 1
  NEWTABLE R25 32 0
  GETTABLEKS R26 R6 K12 ["ExpandablePane"]
  MOVE R27 R21
  GETTABLEKS R29 R6 K12 ["ExpandablePane"]
  GETTABLE R28 R14 R29
  NEWTABLE R29 1 0
  MOVE R30 R21
  MOVE R31 R8
  DUPTABLE R32 K34 [{"Header"}]
  MOVE R33 R21
  MOVE R34 R9
  DUPTABLE R35 K38 [{"Arrow", "HorizontalAlignment", "Padding"}]
  DUPTABLE R36 K40 [{"Size"}]
  GETIMPORT R37 K43 [UDim2.fromOffset]
  LOADN R38 0
  LOADN R39 0
  CALL R37 2 1
  SETTABLEKS R37 R36 K39 ["Size"]
  SETTABLEKS R36 R35 K35 ["Arrow"]
  GETIMPORT R36 K46 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R36 R35 K36 ["HorizontalAlignment"]
  LOADN R36 0
  SETTABLEKS R36 R35 K37 ["Padding"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K15 ["Header"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K47 ["&Arrowless"]
  CALL R27 2 1
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R6 K48 ["SelectInput"]
  MOVE R27 R21
  GETTABLEKS R29 R6 K48 ["SelectInput"]
  GETTABLE R28 R14 R29
  NEWTABLE R29 2 0
  MOVE R30 R21
  MOVE R31 R8
  DUPTABLE R32 K50 [{"PlaceholderTextColor"}]
  GETTABLEKS R33 R18 K51 ["TitlebarText"]
  SETTABLEKS R33 R32 K49 ["PlaceholderTextColor"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K52 ["&Editable"]
  MOVE R30 R21
  MOVE R31 R8
  DUPTABLE R32 K50 [{"PlaceholderTextColor"}]
  GETTABLEKS R33 R18 K53 ["DimmedText"]
  SETTABLEKS R33 R32 K49 ["PlaceholderTextColor"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K54 ["&NonEditable"]
  CALL R27 2 1
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R6 K16 ["Button"]
  MOVE R27 R21
  GETTABLEKS R29 R6 K16 ["Button"]
  GETTABLE R28 R14 R29
  NEWTABLE R29 4 0
  MOVE R30 R21
  MOVE R31 R11
  DUPTABLE R32 K56 [{"TextSize"}]
  LOADN R33 24
  SETTABLEKS R33 R32 K55 ["TextSize"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K57 ["&Active"]
  MOVE R30 R21
  MOVE R31 R11
  DUPTABLE R32 K56 [{"TextSize"}]
  LOADN R33 24
  SETTABLEKS R33 R32 K55 ["TextSize"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K58 ["&Passive"]
  MOVE R30 R21
  MOVE R31 R12
  DUPTABLE R32 K56 [{"TextSize"}]
  LOADN R33 24
  SETTABLEKS R33 R32 K55 ["TextSize"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K59 ["&Cancel"]
  MOVE R30 R21
  MOVE R31 R12
  DUPTABLE R32 K61 [{"TextSize", "border"}]
  LOADN R33 22
  SETTABLEKS R33 R32 K55 ["TextSize"]
  GETTABLEKS R33 R18 K62 ["Border"]
  SETTABLEKS R33 R32 K60 ["border"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K63 ["&Pill"]
  CALL R27 2 1
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R6 K64 ["StyledDialog"]
  GETTABLEKS R28 R4 K65 ["Dictionary"]
  GETTABLEKS R27 R28 K27 ["join"]
  MOVE R28 R3
  LOADK R29 K64 ["StyledDialog"]
  CALL R28 1 1
  NEWTABLE R29 1 0
  DUPTABLE R30 K69 [{"ButtonPadding", "ContentPadding", "ButtonHorizontalAlignment"}]
  LOADN R31 24
  SETTABLEKS R31 R30 K66 ["ButtonPadding"]
  LOADN R31 0
  SETTABLEKS R31 R30 K67 ["ContentPadding"]
  GETIMPORT R31 K71 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R31 R30 K68 ["ButtonHorizontalAlignment"]
  SETTABLEKS R30 R29 K72 ["&CancelDialog"]
  CALL R27 2 1
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R6 K73 ["DropdownMenu"]
  GETTABLEKS R28 R4 K65 ["Dictionary"]
  GETTABLEKS R27 R28 K27 ["join"]
  MOVE R28 R3
  LOADK R29 K73 ["DropdownMenu"]
  CALL R28 1 1
  NEWTABLE R29 1 0
  DUPTABLE R30 K76 [{"Offset", "BackgroundColor"}]
  GETIMPORT R31 K79 [Vector2.new]
  LOADN R32 244
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K74 ["Offset"]
  JUMPIFNOT R24 [+3]
  GETTABLEKS R31 R18 K80 ["MainBackground"]
  JUMP [+1]
  LOADNIL R31
  SETTABLEKS R31 R30 K75 ["BackgroundColor"]
  SETTABLEKS R30 R29 K81 ["&Search"]
  CALL R27 2 1
  SETTABLE R27 R25 R26
  GETTABLEKS R26 R18 K80 ["MainBackground"]
  SETTABLEKS R26 R25 K82 ["backgroundColor"]
  DUPTABLE R26 K86 [{"Subtitle", "Normal", "Subtext"}]
  DUPTABLE R27 K89 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R28 K91 [Enum.Font.SourceSans]
  SETTABLEKS R28 R27 K87 ["Font"]
  LOADN R28 22
  SETTABLEKS R28 R27 K55 ["TextSize"]
  GETTABLEKS R28 R18 K92 ["SubText"]
  SETTABLEKS R28 R27 K88 ["TextColor3"]
  SETTABLEKS R27 R26 K83 ["Subtitle"]
  DUPTABLE R27 K89 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R28 K91 [Enum.Font.SourceSans]
  SETTABLEKS R28 R27 K87 ["Font"]
  LOADN R28 20
  SETTABLEKS R28 R27 K55 ["TextSize"]
  GETTABLEKS R28 R18 K51 ["TitlebarText"]
  SETTABLEKS R28 R27 K88 ["TextColor3"]
  SETTABLEKS R27 R26 K84 ["Normal"]
  DUPTABLE R27 K89 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R28 K91 [Enum.Font.SourceSans]
  SETTABLEKS R28 R27 K87 ["Font"]
  LOADN R28 16
  SETTABLEKS R28 R27 K55 ["TextSize"]
  GETTABLEKS R28 R18 K51 ["TitlebarText"]
  SETTABLEKS R28 R27 K88 ["TextColor3"]
  SETTABLEKS R27 R26 K85 ["Subtext"]
  SETTABLEKS R26 R25 K93 ["fontStyle"]
  DUPTABLE R26 K96 [{"padding", "edgePadding"}]
  LOADN R27 10
  SETTABLEKS R27 R26 K94 ["padding"]
  LOADN R27 67
  SETTABLEKS R27 R26 K95 ["edgePadding"]
  SETTABLEKS R26 R25 K97 ["buttonBar"]
  DUPTABLE R26 K100 [{"TitleText", "DescriptionText"}]
  DUPTABLE R27 K89 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R28 K102 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R28 R27 K87 ["Font"]
  LOADN R28 22
  SETTABLEKS R28 R27 K55 ["TextSize"]
  GETTABLEKS R28 R18 K51 ["TitlebarText"]
  SETTABLEKS R28 R27 K88 ["TextColor3"]
  SETTABLEKS R27 R26 K98 ["TitleText"]
  DUPTABLE R27 K89 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R28 K91 [Enum.Font.SourceSans]
  SETTABLEKS R28 R27 K87 ["Font"]
  LOADN R28 18
  SETTABLEKS R28 R27 K55 ["TextSize"]
  GETTABLEKS R28 R18 K51 ["TitlebarText"]
  SETTABLEKS R28 R27 K88 ["TextColor3"]
  SETTABLEKS R27 R26 K99 ["DescriptionText"]
  SETTABLEKS R26 R25 K103 ["confirmTcDialog"]
  DUPTABLE R26 K106 [{"Text", "Size", "Position"}]
  DUPTABLE R27 K89 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R28 K91 [Enum.Font.SourceSans]
  SETTABLEKS R28 R27 K87 ["Font"]
  LOADN R28 24
  SETTABLEKS R28 R27 K55 ["TextSize"]
  GETTABLEKS R28 R18 K51 ["TitlebarText"]
  SETTABLEKS R28 R27 K88 ["TextColor3"]
  SETTABLEKS R27 R26 K104 ["Text"]
  GETIMPORT R27 K79 [Vector2.new]
  LOADN R28 87
  LOADN R29 65
  CALL R27 2 1
  SETTABLEKS R27 R26 K39 ["Size"]
  GETIMPORT R27 K107 [UDim2.new]
  LOADK R28 K108 [0.5]
  LOADN R29 0
  LOADK R30 K108 [0.5]
  LOADN R31 10
  CALL R27 4 1
  SETTABLEKS R27 R26 K105 ["Position"]
  SETTABLEKS R26 R25 K109 ["cancelDialog"]
  DUPTABLE R26 K111 [{"Text", "publishButton"}]
  DUPTABLE R27 K113 [{"Font", "TextSize", "TextColor3", "YOffset"}]
  GETIMPORT R28 K91 [Enum.Font.SourceSans]
  SETTABLEKS R28 R27 K87 ["Font"]
  LOADN R28 20
  SETTABLEKS R28 R27 K55 ["TextSize"]
  GETTABLEKS R28 R18 K114 ["MainText"]
  SETTABLEKS R28 R27 K88 ["TextColor3"]
  LOADN R28 70
  SETTABLEKS R28 R27 K112 ["YOffset"]
  SETTABLEKS R27 R26 K104 ["Text"]
  DUPTABLE R27 K118 [{"offset", "paddingX", "paddingY"}]
  LOADN R28 125
  SETTABLEKS R28 R27 K115 ["offset"]
  LOADN R28 75
  SETTABLEKS R28 R27 K116 ["paddingX"]
  LOADN R28 15
  SETTABLEKS R28 R27 K117 ["paddingY"]
  SETTABLEKS R27 R26 K110 ["publishButton"]
  SETTABLEKS R26 R25 K119 ["saveToRobloxView"]
  DUPTABLE R26 K120 [{"Padding"}]
  LOADN R27 2
  SETTABLEKS R27 R26 K37 ["Padding"]
  SETTABLEKS R26 R25 K121 ["permissionsView"]
  DUPTABLE R26 K123 [{"hover"}]
  GETTABLEKS R27 R18 K124 ["MenuEntryHover"]
  SETTABLEKS R27 R26 K122 ["hover"]
  SETTABLEKS R26 R25 K125 ["menuEntry"]
  DUPTABLE R26 K129 [{"paddingTop", "paddingHorizontal", "ageWarning"}]
  GETIMPORT R27 K131 [UDim.new]
  LOADN R28 0
  LOADN R29 32
  CALL R27 2 1
  SETTABLEKS R27 R26 K126 ["paddingTop"]
  GETIMPORT R27 K131 [UDim.new]
  LOADN R28 0
  LOADN R29 67
  CALL R27 2 1
  SETTABLEKS R27 R26 K127 ["paddingHorizontal"]
  DUPTABLE R27 K133 [{"fontStyle", "Height"}]
  DUPTABLE R28 K89 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R29 K91 [Enum.Font.SourceSans]
  SETTABLEKS R29 R28 K87 ["Font"]
  LOADN R29 16
  SETTABLEKS R29 R28 K55 ["TextSize"]
  GETTABLEKS R29 R18 K114 ["MainText"]
  SETTABLEKS R29 R28 K88 ["TextColor3"]
  SETTABLEKS R28 R27 K93 ["fontStyle"]
  LOADN R28 15
  SETTABLEKS R28 R27 K132 ["Height"]
  SETTABLEKS R27 R26 K128 ["ageWarning"]
  SETTABLEKS R26 R25 K134 ["searchWidget"]
  DUPTABLE R26 K155 [{"border", "borderHover", "borderSelected", "placeholderText", "backgroundColor", "collabTypeTextPosition", "friendsAccessTextPosition", "searchIcon", "friendIcon", "clearButton", "headerHeight", "itemHeight", "ribbonWidth", "thumbnailSize", "thumbnailPaddingLeft", "renderItemTextPadding", "searchBarHeight", "clearButtonIconSize", "textPadding", "nameLabelWidth", "nameHeight", "dropDown"}]
  GETTABLEKS R27 R18 K62 ["Border"]
  SETTABLEKS R27 R26 K60 ["border"]
  JUMPIFNOT R23 [+3]
  GETTABLEKS R27 R18 K156 ["DialogMainButton"]
  JUMP [+2]
  GETTABLEKS R27 R18 K157 ["MainButton"]
  SETTABLEKS R27 R26 K135 ["borderHover"]
  JUMPIFNOT R23 [+3]
  GETTABLEKS R27 R18 K156 ["DialogMainButton"]
  JUMP [+2]
  GETTABLEKS R27 R18 K157 ["MainButton"]
  SETTABLEKS R27 R26 K136 ["borderSelected"]
  GETTABLEKS R27 R18 K53 ["DimmedText"]
  SETTABLEKS R27 R26 K137 ["placeholderText"]
  GETTABLEKS R27 R18 K158 ["SubBackground2"]
  SETTABLEKS R27 R26 K82 ["backgroundColor"]
  GETIMPORT R27 K107 [UDim2.new]
  LOADN R28 0
  LOADN R29 26
  LOADN R30 0
  LOADN R31 14
  CALL R27 4 1
  SETTABLEKS R27 R26 K138 ["collabTypeTextPosition"]
  GETIMPORT R27 K107 [UDim2.new]
  LOADN R28 1
  LOADN R29 228
  LOADN R30 0
  LOADN R31 14
  CALL R27 4 1
  SETTABLEKS R27 R26 K139 ["friendsAccessTextPosition"]
  GETTABLEKS R27 R18 K92 ["SubText"]
  SETTABLEKS R27 R26 K140 ["searchIcon"]
  DUPTABLE R27 K164 [{"Image", "LabelWidth", "LabelHeight", "FrameWidth", "Width", "Height"}]
  GETTABLEKS R28 R18 K165 ["FriendIcon"]
  SETTABLEKS R28 R27 K159 ["Image"]
  LOADN R28 20
  SETTABLEKS R28 R27 K160 ["LabelWidth"]
  LOADN R28 13
  SETTABLEKS R28 R27 K161 ["LabelHeight"]
  LOADN R28 37
  SETTABLEKS R28 R27 K162 ["FrameWidth"]
  LOADN R28 17
  SETTABLEKS R28 R27 K163 ["Width"]
  LOADN R28 10
  SETTABLEKS R28 R27 K132 ["Height"]
  SETTABLEKS R27 R26 K141 ["friendIcon"]
  DUPTABLE R27 K168 [{"imageSelected", "image"}]
  GETTABLEKS R28 R18 K92 ["SubText"]
  SETTABLEKS R28 R27 K166 ["imageSelected"]
  GETTABLEKS R28 R18 K92 ["SubText"]
  SETTABLEKS R28 R27 K167 ["image"]
  SETTABLEKS R27 R26 K142 ["clearButton"]
  LOADN R27 25
  SETTABLEKS R27 R26 K143 ["headerHeight"]
  LOADN R27 75
  SETTABLEKS R27 R26 K144 ["itemHeight"]
  LOADN R27 5
  SETTABLEKS R27 R26 K145 ["ribbonWidth"]
  LOADN R27 48
  SETTABLEKS R27 R26 K146 ["thumbnailSize"]
  LOADN R27 40
  SETTABLEKS R27 R26 K147 ["thumbnailPaddingLeft"]
  LOADN R27 19
  SETTABLEKS R27 R26 K148 ["renderItemTextPadding"]
  LOADN R27 40
  SETTABLEKS R27 R26 K149 ["searchBarHeight"]
  LOADN R27 32
  SETTABLEKS R27 R26 K150 ["clearButtonIconSize"]
  LOADN R27 16
  SETTABLEKS R27 R26 K151 ["textPadding"]
  LOADN R27 204
  SETTABLEKS R27 R26 K152 ["nameLabelWidth"]
  LOADN R27 55
  SETTABLEKS R27 R26 K153 ["nameHeight"]
  DUPTABLE R27 K177 [{"collaboratorTypeText", "backgroundColor", "itemText", "headerText", "hovered", "item", "selected", "maxHeight", "eligibilityLabelWidth"}]
  DUPTABLE R28 K89 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R29 K91 [Enum.Font.SourceSans]
  SETTABLEKS R29 R28 K87 ["Font"]
  LOADN R29 16
  SETTABLEKS R29 R28 K55 ["TextSize"]
  GETTABLEKS R29 R18 K114 ["MainText"]
  SETTABLEKS R29 R28 K88 ["TextColor3"]
  SETTABLEKS R28 R27 K169 ["collaboratorTypeText"]
  GETTABLEKS R28 R18 K178 ["InputFieldBackground"]
  SETTABLEKS R28 R27 K82 ["backgroundColor"]
  GETTABLEKS R28 R18 K114 ["MainText"]
  SETTABLEKS R28 R27 K170 ["itemText"]
  GETTABLEKS R28 R18 K92 ["SubText"]
  SETTABLEKS R28 R27 K171 ["headerText"]
  DUPTABLE R28 K179 [{"backgroundColor", "itemText"}]
  GETTABLEKS R29 R18 K180 ["Dropdown"]
  SETTABLEKS R29 R28 K82 ["backgroundColor"]
  GETTABLEKS R29 R18 K114 ["MainText"]
  SETTABLEKS R29 R28 K170 ["itemText"]
  SETTABLEKS R28 R27 K172 ["hovered"]
  DUPTABLE R28 K181 [{"offset"}]
  LOADN R29 2
  SETTABLEKS R29 R28 K115 ["offset"]
  SETTABLEKS R28 R27 K173 ["item"]
  DUPTABLE R28 K182 [{"backgroundColor"}]
  GETTABLEKS R29 R18 K183 ["ButtonHover"]
  SETTABLEKS R29 R28 K82 ["backgroundColor"]
  SETTABLEKS R28 R27 K174 ["selected"]
  LOADN R28 169
  SETTABLEKS R28 R27 K175 ["maxHeight"]
  LOADN R28 100
  SETTABLEKS R28 R27 K176 ["eligibilityLabelWidth"]
  SETTABLEKS R27 R26 K154 ["dropDown"]
  SETTABLEKS R26 R25 K184 ["searchBar"]
  DUPTABLE R26 K187 [{"loadingImage", "loadFailureImage"}]
  LOADK R27 K188 ["rbxasset://textures/StudioSharedUI/default_group.png"]
  SETTABLEKS R27 R26 K185 ["loadingImage"]
  LOADK R27 K189 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R27 R26 K186 ["loadFailureImage"]
  SETTABLEKS R26 R25 K190 ["groupThumbnail"]
  DUPTABLE R26 K193 [{"background", "maskImage", "loadingImage", "loadFailureImage"}]
  GETTABLEKS R27 R18 K194 ["TableItem"]
  SETTABLEKS R27 R26 K191 ["background"]
  LOADK R27 K195 ["rbxasset://textures/StudioSharedUI/avatarMask.png"]
  SETTABLEKS R27 R26 K192 ["maskImage"]
  LOADK R27 K196 ["rbxasset://textures/StudioSharedUI/default_user.png"]
  SETTABLEKS R27 R26 K185 ["loadingImage"]
  LOADK R27 K189 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R27 R26 K186 ["loadFailureImage"]
  SETTABLEKS R26 R25 K197 ["subjectThumbnail"]
  DUPTABLE R26 K198 [{"Image"}]
  LOADK R27 K199 ["rbxasset://textures/ManageCollaborators/OrgRoleIcon_mask.png"]
  SETTABLEKS R27 R26 K159 ["Image"]
  SETTABLEKS R26 R25 K200 ["orgRoleThumbnail"]
  DUPTABLE R26 K203 [{"button", "padding", "width"}]
  DUPTABLE R27 K205 [{"height"}]
  LOADN R28 50
  SETTABLEKS R28 R27 K204 ["height"]
  SETTABLEKS R27 R26 K201 ["button"]
  LOADN R27 10
  SETTABLEKS R27 R26 K94 ["padding"]
  JUMPIFNOT R22 [+2]
  LOADN R27 8
  JUMP [+1]
  LOADN R27 195
  SETTABLEKS R27 R26 K202 ["width"]
  SETTABLEKS R26 R25 K206 ["selectInput"]
  DUPTABLE R26 K210 [{"yPadding", "xPadding", "yPaddingNonOwner"}]
  LOADN R27 47
  SETTABLEKS R27 R26 K207 ["yPadding"]
  LOADN R27 25
  SETTABLEKS R27 R26 K208 ["xPadding"]
  LOADN R27 35
  SETTABLEKS R27 R26 K209 ["yPaddingNonOwner"]
  SETTABLEKS R26 R25 K211 ["scrollingFrame"]
  DUPTABLE R26 K215 [{"boxHeight", "textStyle", "InnerTextPosition"}]
  LOADN R27 45
  SETTABLEKS R27 R26 K212 ["boxHeight"]
  DUPTABLE R27 K89 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R28 K91 [Enum.Font.SourceSans]
  SETTABLEKS R28 R27 K87 ["Font"]
  LOADN R28 16
  SETTABLEKS R28 R27 K55 ["TextSize"]
  GETTABLEKS R28 R18 K51 ["TitlebarText"]
  SETTABLEKS R28 R27 K88 ["TextColor3"]
  SETTABLEKS R27 R26 K213 ["textStyle"]
  GETIMPORT R27 K107 [UDim2.new]
  LOADN R28 0
  LOADN R29 67
  LOADK R30 K108 [0.5]
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K214 ["InnerTextPosition"]
  SETTABLEKS R26 R25 K216 ["saveMessage"]
  DUPTABLE R26 K219 [{"height", "gradientSize", "gradientTransparency", "border"}]
  LOADN R27 65
  SETTABLEKS R27 R26 K204 ["height"]
  LOADN R27 3
  SETTABLEKS R27 R26 K217 ["gradientSize"]
  LOADK R27 K220 [0.9]
  SETTABLEKS R27 R26 K218 ["gradientTransparency"]
  GETTABLEKS R27 R18 K221 ["FooterBorder"]
  SETTABLEKS R27 R26 K60 ["border"]
  SETTABLEKS R26 R25 K222 ["footer"]
  DUPTABLE R26 K225 [{"paddingHorizontal", "size", "pills"}]
  GETIMPORT R27 K131 [UDim.new]
  LOADN R28 0
  LOADN R29 67
  CALL R27 2 1
  SETTABLEKS R27 R26 K127 ["paddingHorizontal"]
  GETIMPORT R27 K107 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  LOADN R31 30
  CALL R27 4 1
  SETTABLEKS R27 R26 K223 ["size"]
  DUPTABLE R27 K226 [{"paddingHorizontal", "size"}]
  GETIMPORT R28 K131 [UDim.new]
  LOADN R29 0
  LOADN R30 8
  CALL R28 2 1
  SETTABLEKS R28 R27 K127 ["paddingHorizontal"]
  GETIMPORT R28 K107 [UDim2.new]
  LOADN R29 0
  LOADN R30 100
  LOADN R31 1
  LOADN R32 0
  CALL R28 4 1
  SETTABLEKS R28 R27 K223 ["size"]
  SETTABLEKS R27 R26 K224 ["pills"]
  SETTABLEKS R26 R25 K227 ["collaboratorFilter"]
  DUPTABLE R26 K238 [{"FadeTransparency", "groupCollaboratorItem", "deleteButton", "permissionEditor", "collaboratorName", "collaboratorSubText", "ownerLabel", "iconContainerSize", "nonRolesetFrame", "rolesetFrame"}]
  LOADK R27 K239 [0.75]
  SETTABLEKS R27 R26 K228 ["FadeTransparency"]
  DUPTABLE R27 K244 [{"ExpandTextSize", "size", "collaboratorItemOffset", "expandablePaneSize", "headerComponent"}]
  LOADN R28 14
  SETTABLEKS R28 R27 K240 ["ExpandTextSize"]
  GETIMPORT R28 K107 [UDim2.new]
  LOADN R29 0
  LOADN R30 153
  LOADN R31 0
  LOADN R32 60
  CALL R28 4 1
  SETTABLEKS R28 R27 K223 ["size"]
  LOADN R28 16
  SETTABLEKS R28 R27 K241 ["collaboratorItemOffset"]
  GETIMPORT R28 K107 [UDim2.new]
  LOADN R29 1
  LOADN R30 0
  LOADN R31 0
  LOADN R32 34
  CALL R28 4 1
  SETTABLEKS R28 R27 K242 ["expandablePaneSize"]
  DUPTABLE R28 K247 [{"size", "arrowLabel", "textLabel"}]
  GETIMPORT R29 K107 [UDim2.new]
  LOADN R30 0
  LOADN R31 96
  LOADN R32 0
  LOADN R33 34
  CALL R29 4 1
  SETTABLEKS R29 R28 K223 ["size"]
  DUPTABLE R29 K249 [{"position", "size"}]
  GETIMPORT R30 K107 [UDim2.new]
  LOADN R31 0
  LOADN R32 42
  LOADK R33 K108 [0.5]
  LOADN R34 0
  CALL R30 4 1
  SETTABLEKS R30 R29 K248 ["position"]
  GETIMPORT R30 K107 [UDim2.new]
  LOADN R31 0
  LOADN R32 17
  LOADN R33 0
  LOADN R34 17
  CALL R30 4 1
  SETTABLEKS R30 R29 K223 ["size"]
  SETTABLEKS R29 R28 K245 ["arrowLabel"]
  DUPTABLE R29 K250 [{"position"}]
  GETIMPORT R30 K107 [UDim2.new]
  LOADN R31 0
  LOADN R32 60
  LOADK R33 K108 [0.5]
  LOADN R34 0
  CALL R30 4 1
  SETTABLEKS R30 R29 K248 ["position"]
  SETTABLEKS R29 R28 K246 ["textLabel"]
  SETTABLEKS R28 R27 K243 ["headerComponent"]
  SETTABLEKS R27 R26 K229 ["groupCollaboratorItem"]
  DUPTABLE R27 K252 [{"size", "xOffset", "hovered"}]
  LOADN R28 16
  SETTABLEKS R28 R27 K223 ["size"]
  LOADN R28 6
  SETTABLEKS R28 R27 K251 ["xOffset"]
  GETTABLEKS R28 R18 K180 ["Dropdown"]
  SETTABLEKS R28 R27 K172 ["hovered"]
  SETTABLEKS R27 R26 K230 ["deleteButton"]
  DUPTABLE R27 K255 [{"heightOffset", "yOffset"}]
  LOADN R28 54
  SETTABLEKS R28 R27 K253 ["heightOffset"]
  LOADN R28 11
  SETTABLEKS R28 R27 K254 ["yOffset"]
  SETTABLEKS R27 R26 K231 ["permissionEditor"]
  DUPTABLE R27 K260 [{"withIcon", "withoutIcon", "withSubtext", "withoutSubtext"}]
  DUPTABLE R28 K262 [{"withSubText", "size", "xOffset"}]
  DUPTABLE R29 K263 [{"size"}]
  GETIMPORT R30 K107 [UDim2.new]
  LOADN R31 1
  LOADN R32 248
  LOADN R33 0
  LOADN R34 30
  CALL R30 4 1
  SETTABLEKS R30 R29 K223 ["size"]
  SETTABLEKS R29 R28 K261 ["withSubText"]
  GETIMPORT R29 K107 [UDim2.new]
  LOADN R30 1
  LOADN R31 248
  LOADN R32 0
  LOADN R33 54
  CALL R29 4 1
  SETTABLEKS R29 R28 K223 ["size"]
  LOADN R29 50
  SETTABLEKS R29 R28 K251 ["xOffset"]
  SETTABLEKS R28 R27 K256 ["withIcon"]
  NEWTABLE R28 2 1
  DUPTABLE R30 K263 [{"size"}]
  GETIMPORT R31 K107 [UDim2.new]
  LOADN R32 1
  LOADN R33 248
  LOADN R34 0
  LOADN R35 30
  CALL R31 4 1
  SETTABLEKS R31 R30 K223 ["size"]
  SETTABLEKS R30 R28 K261 ["withSubText"]
  GETIMPORT R29 K107 [UDim2.new]
  LOADN R30 1
  LOADN R31 130
  LOADN R32 0
  LOADN R33 54
  CALL R29 4 1
  SETLIST R28 R29 1 [1]
  LOADN R30 28
  SETTABLEKS R30 R28 K251 ["xOffset"]
  SETTABLEKS R28 R27 K257 ["withoutIcon"]
  DUPTABLE R28 K264 [{"yOffset"}]
  LOADN R29 246
  SETTABLEKS R29 R28 K254 ["yOffset"]
  SETTABLEKS R28 R27 K258 ["withSubtext"]
  DUPTABLE R28 K264 [{"yOffset"}]
  LOADN R29 0
  SETTABLEKS R29 R28 K254 ["yOffset"]
  SETTABLEKS R28 R27 K259 ["withoutSubtext"]
  SETTABLEKS R27 R26 K232 ["collaboratorName"]
  DUPTABLE R27 K265 [{"withIcon", "withoutIcon", "yOffset"}]
  DUPTABLE R28 K266 [{"size", "xOffset"}]
  GETIMPORT R29 K107 [UDim2.new]
  LOADN R30 1
  LOADN R31 248
  LOADN R32 0
  LOADN R33 24
  CALL R29 4 1
  SETTABLEKS R29 R28 K223 ["size"]
  LOADN R29 50
  SETTABLEKS R29 R28 K251 ["xOffset"]
  SETTABLEKS R28 R27 K256 ["withIcon"]
  NEWTABLE R28 1 1
  GETIMPORT R29 K107 [UDim2.new]
  LOADN R30 1
  LOADN R31 130
  LOADN R32 0
  LOADN R33 24
  CALL R29 4 1
  SETLIST R28 R29 1 [1]
  LOADN R30 28
  SETTABLEKS R30 R28 K251 ["xOffset"]
  SETTABLEKS R28 R27 K257 ["withoutIcon"]
  LOADN R28 10
  SETTABLEKS R28 R27 K254 ["yOffset"]
  SETTABLEKS R27 R26 K233 ["collaboratorSubText"]
  DUPTABLE R27 K269 [{"withIconSize", "withoutIconSize", "position"}]
  GETIMPORT R28 K107 [UDim2.new]
  LOADN R29 1
  LOADN R30 248
  LOADN R31 0
  LOADN R32 54
  CALL R28 4 1
  SETTABLEKS R28 R27 K267 ["withIconSize"]
  GETIMPORT R28 K107 [UDim2.new]
  LOADN R29 1
  LOADN R30 130
  LOADN R31 0
  LOADN R32 54
  CALL R28 4 1
  SETTABLEKS R28 R27 K268 ["withoutIconSize"]
  GETIMPORT R28 K107 [UDim2.new]
  LOADN R29 1
  LOADN R30 249
  LOADK R31 K108 [0.5]
  LOADN R32 0
  CALL R28 4 1
  SETTABLEKS R28 R27 K248 ["position"]
  SETTABLEKS R27 R26 K234 ["ownerLabel"]
  LOADN R27 40
  SETTABLEKS R27 R26 K235 ["iconContainerSize"]
  DUPTABLE R27 K271 [{"width", "height", "position", "anchorPoint"}]
  LOADN R28 153
  SETTABLEKS R28 R27 K202 ["width"]
  LOADN R28 74
  SETTABLEKS R28 R27 K204 ["height"]
  LOADNIL R28
  SETTABLEKS R28 R27 K248 ["position"]
  LOADNIL R28
  SETTABLEKS R28 R27 K270 ["anchorPoint"]
  SETTABLEKS R27 R26 K236 ["nonRolesetFrame"]
  DUPTABLE R27 K273 [{"width", "height", "position", "anchorPont"}]
  LOADN R28 96
  SETTABLEKS R28 R27 K202 ["width"]
  LOADN R28 54
  SETTABLEKS R28 R27 K204 ["height"]
  GETIMPORT R28 K107 [UDim2.new]
  LOADK R29 K18 ["&Round"]
  LOADN R30 200
  LOADN R31 0
  LOADN R32 20
  CALL R28 4 1
  SETTABLEKS R28 R27 K248 ["position"]
  GETIMPORT R28 K79 [Vector2.new]
  LOADN R29 1
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K272 ["anchorPont"]
  SETTABLEKS R27 R26 K237 ["rolesetFrame"]
  SETTABLEKS R26 R25 K275 ["collaboratorItem"]
  GETTABLEKS R26 R18 K276 ["CloseWidget"]
  SETTABLEKS R26 R25 K277 ["deleteIcon"]
  DUPTABLE R26 K280 [{"right", "down"}]
  GETTABLEKS R27 R18 K281 ["RightArrow"]
  SETTABLEKS R27 R26 K278 ["right"]
  GETTABLEKS R27 R18 K282 ["DownArrow"]
  SETTABLEKS R27 R26 K279 ["down"]
  SETTABLEKS R26 R25 K283 ["arrows"]
  DUPCLOSURE R26 K284 [PROTO_0]
  CAPTURE VAL R21
  CAPTURE VAL R16
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R17
  CAPTURE VAL R15
  CAPTURE VAL R25
  RETURN R26 1
