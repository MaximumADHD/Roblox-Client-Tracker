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
  NEWTABLE R24 32 0
  GETTABLEKS R25 R6 K12 ["ExpandablePane"]
  MOVE R26 R21
  GETTABLEKS R28 R6 K12 ["ExpandablePane"]
  GETTABLE R27 R14 R28
  NEWTABLE R28 1 0
  MOVE R29 R21
  MOVE R30 R8
  DUPTABLE R31 K33 [{"Header"}]
  MOVE R32 R21
  MOVE R33 R9
  DUPTABLE R34 K37 [{"Arrow", "HorizontalAlignment", "Padding"}]
  DUPTABLE R35 K39 [{"Size"}]
  GETIMPORT R36 K42 [UDim2.fromOffset]
  LOADN R37 0
  LOADN R38 0
  CALL R36 2 1
  SETTABLEKS R36 R35 K38 ["Size"]
  SETTABLEKS R35 R34 K34 ["Arrow"]
  GETIMPORT R35 K45 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R35 R34 K35 ["HorizontalAlignment"]
  LOADN R35 0
  SETTABLEKS R35 R34 K36 ["Padding"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K15 ["Header"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K46 ["&Arrowless"]
  CALL R26 2 1
  SETTABLE R26 R24 R25
  GETTABLEKS R25 R6 K47 ["SelectInput"]
  MOVE R26 R21
  GETTABLEKS R28 R6 K47 ["SelectInput"]
  GETTABLE R27 R14 R28
  NEWTABLE R28 2 0
  MOVE R29 R21
  MOVE R30 R8
  DUPTABLE R31 K49 [{"PlaceholderTextColor"}]
  GETTABLEKS R32 R18 K50 ["TitlebarText"]
  SETTABLEKS R32 R31 K48 ["PlaceholderTextColor"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K51 ["&Editable"]
  MOVE R29 R21
  MOVE R30 R8
  DUPTABLE R31 K49 [{"PlaceholderTextColor"}]
  GETTABLEKS R32 R18 K52 ["DimmedText"]
  SETTABLEKS R32 R31 K48 ["PlaceholderTextColor"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K53 ["&NonEditable"]
  CALL R26 2 1
  SETTABLE R26 R24 R25
  GETTABLEKS R25 R6 K16 ["Button"]
  MOVE R26 R21
  GETTABLEKS R28 R6 K16 ["Button"]
  GETTABLE R27 R14 R28
  NEWTABLE R28 4 0
  MOVE R29 R21
  MOVE R30 R11
  DUPTABLE R31 K55 [{"TextSize"}]
  LOADN R32 24
  SETTABLEKS R32 R31 K54 ["TextSize"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K56 ["&Active"]
  MOVE R29 R21
  MOVE R30 R11
  DUPTABLE R31 K55 [{"TextSize"}]
  LOADN R32 24
  SETTABLEKS R32 R31 K54 ["TextSize"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K57 ["&Passive"]
  MOVE R29 R21
  MOVE R30 R12
  DUPTABLE R31 K55 [{"TextSize"}]
  LOADN R32 24
  SETTABLEKS R32 R31 K54 ["TextSize"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K58 ["&Cancel"]
  MOVE R29 R21
  MOVE R30 R12
  DUPTABLE R31 K60 [{"TextSize", "border"}]
  LOADN R32 22
  SETTABLEKS R32 R31 K54 ["TextSize"]
  GETTABLEKS R32 R18 K61 ["Border"]
  SETTABLEKS R32 R31 K59 ["border"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K62 ["&Pill"]
  CALL R26 2 1
  SETTABLE R26 R24 R25
  GETTABLEKS R25 R6 K63 ["StyledDialog"]
  GETTABLEKS R27 R4 K64 ["Dictionary"]
  GETTABLEKS R26 R27 K27 ["join"]
  MOVE R27 R3
  LOADK R28 K63 ["StyledDialog"]
  CALL R27 1 1
  NEWTABLE R28 1 0
  DUPTABLE R29 K68 [{"ButtonPadding", "ContentPadding", "ButtonHorizontalAlignment"}]
  LOADN R30 24
  SETTABLEKS R30 R29 K65 ["ButtonPadding"]
  LOADN R30 0
  SETTABLEKS R30 R29 K66 ["ContentPadding"]
  GETIMPORT R30 K70 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R30 R29 K67 ["ButtonHorizontalAlignment"]
  SETTABLEKS R29 R28 K71 ["&CancelDialog"]
  CALL R26 2 1
  SETTABLE R26 R24 R25
  GETTABLEKS R25 R6 K72 ["DropdownMenu"]
  GETTABLEKS R27 R4 K64 ["Dictionary"]
  GETTABLEKS R26 R27 K27 ["join"]
  MOVE R27 R3
  LOADK R28 K72 ["DropdownMenu"]
  CALL R27 1 1
  NEWTABLE R28 1 0
  DUPTABLE R29 K74 [{"Offset"}]
  GETIMPORT R30 K77 [Vector2.new]
  LOADN R31 244
  LOADN R32 0
  CALL R30 2 1
  SETTABLEKS R30 R29 K73 ["Offset"]
  SETTABLEKS R29 R28 K78 ["&Search"]
  CALL R26 2 1
  SETTABLE R26 R24 R25
  GETTABLEKS R25 R18 K79 ["MainBackground"]
  SETTABLEKS R25 R24 K80 ["backgroundColor"]
  DUPTABLE R25 K84 [{"Subtitle", "Normal", "Subtext"}]
  DUPTABLE R26 K87 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R27 K89 [Enum.Font.SourceSans]
  SETTABLEKS R27 R26 K85 ["Font"]
  LOADN R27 22
  SETTABLEKS R27 R26 K54 ["TextSize"]
  GETTABLEKS R27 R18 K90 ["SubText"]
  SETTABLEKS R27 R26 K86 ["TextColor3"]
  SETTABLEKS R26 R25 K81 ["Subtitle"]
  DUPTABLE R26 K87 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R27 K89 [Enum.Font.SourceSans]
  SETTABLEKS R27 R26 K85 ["Font"]
  LOADN R27 20
  SETTABLEKS R27 R26 K54 ["TextSize"]
  GETTABLEKS R27 R18 K50 ["TitlebarText"]
  SETTABLEKS R27 R26 K86 ["TextColor3"]
  SETTABLEKS R26 R25 K82 ["Normal"]
  DUPTABLE R26 K87 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R27 K89 [Enum.Font.SourceSans]
  SETTABLEKS R27 R26 K85 ["Font"]
  LOADN R27 16
  SETTABLEKS R27 R26 K54 ["TextSize"]
  GETTABLEKS R27 R18 K50 ["TitlebarText"]
  SETTABLEKS R27 R26 K86 ["TextColor3"]
  SETTABLEKS R26 R25 K83 ["Subtext"]
  SETTABLEKS R25 R24 K91 ["fontStyle"]
  DUPTABLE R25 K94 [{"padding", "edgePadding"}]
  LOADN R26 10
  SETTABLEKS R26 R25 K92 ["padding"]
  LOADN R26 67
  SETTABLEKS R26 R25 K93 ["edgePadding"]
  SETTABLEKS R25 R24 K95 ["buttonBar"]
  DUPTABLE R25 K98 [{"TitleText", "DescriptionText"}]
  DUPTABLE R26 K87 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R27 K100 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R27 R26 K85 ["Font"]
  LOADN R27 22
  SETTABLEKS R27 R26 K54 ["TextSize"]
  GETTABLEKS R27 R18 K50 ["TitlebarText"]
  SETTABLEKS R27 R26 K86 ["TextColor3"]
  SETTABLEKS R26 R25 K96 ["TitleText"]
  DUPTABLE R26 K87 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R27 K89 [Enum.Font.SourceSans]
  SETTABLEKS R27 R26 K85 ["Font"]
  LOADN R27 18
  SETTABLEKS R27 R26 K54 ["TextSize"]
  GETTABLEKS R27 R18 K50 ["TitlebarText"]
  SETTABLEKS R27 R26 K86 ["TextColor3"]
  SETTABLEKS R26 R25 K97 ["DescriptionText"]
  SETTABLEKS R25 R24 K101 ["confirmTcDialog"]
  DUPTABLE R25 K104 [{"Text", "Size", "Position"}]
  DUPTABLE R26 K87 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R27 K89 [Enum.Font.SourceSans]
  SETTABLEKS R27 R26 K85 ["Font"]
  LOADN R27 24
  SETTABLEKS R27 R26 K54 ["TextSize"]
  GETTABLEKS R27 R18 K50 ["TitlebarText"]
  SETTABLEKS R27 R26 K86 ["TextColor3"]
  SETTABLEKS R26 R25 K102 ["Text"]
  GETIMPORT R26 K77 [Vector2.new]
  LOADN R27 87
  LOADN R28 65
  CALL R26 2 1
  SETTABLEKS R26 R25 K38 ["Size"]
  GETIMPORT R26 K105 [UDim2.new]
  LOADK R27 K106 [0.5]
  LOADN R28 0
  LOADK R29 K106 [0.5]
  LOADN R30 10
  CALL R26 4 1
  SETTABLEKS R26 R25 K103 ["Position"]
  SETTABLEKS R25 R24 K107 ["cancelDialog"]
  DUPTABLE R25 K109 [{"Text", "publishButton"}]
  DUPTABLE R26 K111 [{"Font", "TextSize", "TextColor3", "YOffset"}]
  GETIMPORT R27 K89 [Enum.Font.SourceSans]
  SETTABLEKS R27 R26 K85 ["Font"]
  LOADN R27 20
  SETTABLEKS R27 R26 K54 ["TextSize"]
  GETTABLEKS R27 R18 K112 ["MainText"]
  SETTABLEKS R27 R26 K86 ["TextColor3"]
  LOADN R27 70
  SETTABLEKS R27 R26 K110 ["YOffset"]
  SETTABLEKS R26 R25 K102 ["Text"]
  DUPTABLE R26 K116 [{"offset", "paddingX", "paddingY"}]
  LOADN R27 125
  SETTABLEKS R27 R26 K113 ["offset"]
  LOADN R27 75
  SETTABLEKS R27 R26 K114 ["paddingX"]
  LOADN R27 15
  SETTABLEKS R27 R26 K115 ["paddingY"]
  SETTABLEKS R26 R25 K108 ["publishButton"]
  SETTABLEKS R25 R24 K117 ["saveToRobloxView"]
  DUPTABLE R25 K118 [{"Padding"}]
  LOADN R26 2
  SETTABLEKS R26 R25 K36 ["Padding"]
  SETTABLEKS R25 R24 K119 ["permissionsView"]
  DUPTABLE R25 K121 [{"hover"}]
  GETTABLEKS R26 R18 K122 ["MenuEntryHover"]
  SETTABLEKS R26 R25 K120 ["hover"]
  SETTABLEKS R25 R24 K123 ["menuEntry"]
  DUPTABLE R25 K127 [{"paddingTop", "paddingHorizontal", "ageWarning"}]
  GETIMPORT R26 K129 [UDim.new]
  LOADN R27 0
  LOADN R28 32
  CALL R26 2 1
  SETTABLEKS R26 R25 K124 ["paddingTop"]
  GETIMPORT R26 K129 [UDim.new]
  LOADN R27 0
  LOADN R28 67
  CALL R26 2 1
  SETTABLEKS R26 R25 K125 ["paddingHorizontal"]
  DUPTABLE R26 K131 [{"fontStyle", "Height"}]
  DUPTABLE R27 K87 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R28 K89 [Enum.Font.SourceSans]
  SETTABLEKS R28 R27 K85 ["Font"]
  LOADN R28 16
  SETTABLEKS R28 R27 K54 ["TextSize"]
  GETTABLEKS R28 R18 K112 ["MainText"]
  SETTABLEKS R28 R27 K86 ["TextColor3"]
  SETTABLEKS R27 R26 K91 ["fontStyle"]
  LOADN R27 15
  SETTABLEKS R27 R26 K130 ["Height"]
  SETTABLEKS R26 R25 K126 ["ageWarning"]
  SETTABLEKS R25 R24 K132 ["searchWidget"]
  DUPTABLE R25 K153 [{"border", "borderHover", "borderSelected", "placeholderText", "backgroundColor", "collabTypeTextPosition", "friendsAccessTextPosition", "searchIcon", "friendIcon", "clearButton", "headerHeight", "itemHeight", "ribbonWidth", "thumbnailSize", "thumbnailPaddingLeft", "renderItemTextPadding", "searchBarHeight", "clearButtonIconSize", "textPadding", "nameLabelWidth", "nameHeight", "dropDown"}]
  GETTABLEKS R26 R18 K61 ["Border"]
  SETTABLEKS R26 R25 K59 ["border"]
  JUMPIFNOT R23 [+3]
  GETTABLEKS R26 R18 K154 ["DialogMainButton"]
  JUMP [+2]
  GETTABLEKS R26 R18 K155 ["MainButton"]
  SETTABLEKS R26 R25 K133 ["borderHover"]
  JUMPIFNOT R23 [+3]
  GETTABLEKS R26 R18 K154 ["DialogMainButton"]
  JUMP [+2]
  GETTABLEKS R26 R18 K155 ["MainButton"]
  SETTABLEKS R26 R25 K134 ["borderSelected"]
  GETTABLEKS R26 R18 K52 ["DimmedText"]
  SETTABLEKS R26 R25 K135 ["placeholderText"]
  GETTABLEKS R26 R18 K156 ["SubBackground2"]
  SETTABLEKS R26 R25 K80 ["backgroundColor"]
  GETIMPORT R26 K105 [UDim2.new]
  LOADN R27 0
  LOADN R28 26
  LOADN R29 0
  LOADN R30 14
  CALL R26 4 1
  SETTABLEKS R26 R25 K136 ["collabTypeTextPosition"]
  GETIMPORT R26 K105 [UDim2.new]
  LOADN R27 1
  LOADN R28 228
  LOADN R29 0
  LOADN R30 14
  CALL R26 4 1
  SETTABLEKS R26 R25 K137 ["friendsAccessTextPosition"]
  GETTABLEKS R26 R18 K90 ["SubText"]
  SETTABLEKS R26 R25 K138 ["searchIcon"]
  DUPTABLE R26 K162 [{"Image", "LabelWidth", "LabelHeight", "FrameWidth", "Width", "Height"}]
  GETTABLEKS R27 R18 K163 ["FriendIcon"]
  SETTABLEKS R27 R26 K157 ["Image"]
  LOADN R27 20
  SETTABLEKS R27 R26 K158 ["LabelWidth"]
  LOADN R27 13
  SETTABLEKS R27 R26 K159 ["LabelHeight"]
  LOADN R27 37
  SETTABLEKS R27 R26 K160 ["FrameWidth"]
  LOADN R27 17
  SETTABLEKS R27 R26 K161 ["Width"]
  LOADN R27 10
  SETTABLEKS R27 R26 K130 ["Height"]
  SETTABLEKS R26 R25 K139 ["friendIcon"]
  DUPTABLE R26 K166 [{"imageSelected", "image"}]
  GETTABLEKS R27 R18 K90 ["SubText"]
  SETTABLEKS R27 R26 K164 ["imageSelected"]
  GETTABLEKS R27 R18 K90 ["SubText"]
  SETTABLEKS R27 R26 K165 ["image"]
  SETTABLEKS R26 R25 K140 ["clearButton"]
  LOADN R26 25
  SETTABLEKS R26 R25 K141 ["headerHeight"]
  LOADN R26 75
  SETTABLEKS R26 R25 K142 ["itemHeight"]
  LOADN R26 5
  SETTABLEKS R26 R25 K143 ["ribbonWidth"]
  LOADN R26 48
  SETTABLEKS R26 R25 K144 ["thumbnailSize"]
  LOADN R26 40
  SETTABLEKS R26 R25 K145 ["thumbnailPaddingLeft"]
  LOADN R26 19
  SETTABLEKS R26 R25 K146 ["renderItemTextPadding"]
  LOADN R26 40
  SETTABLEKS R26 R25 K147 ["searchBarHeight"]
  LOADN R26 32
  SETTABLEKS R26 R25 K148 ["clearButtonIconSize"]
  LOADN R26 16
  SETTABLEKS R26 R25 K149 ["textPadding"]
  LOADN R26 204
  SETTABLEKS R26 R25 K150 ["nameLabelWidth"]
  LOADN R26 55
  SETTABLEKS R26 R25 K151 ["nameHeight"]
  DUPTABLE R26 K175 [{"collaboratorTypeText", "backgroundColor", "itemText", "headerText", "hovered", "item", "selected", "maxHeight", "eligibilityLabelWidth"}]
  DUPTABLE R27 K87 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R28 K89 [Enum.Font.SourceSans]
  SETTABLEKS R28 R27 K85 ["Font"]
  LOADN R28 16
  SETTABLEKS R28 R27 K54 ["TextSize"]
  GETTABLEKS R28 R18 K112 ["MainText"]
  SETTABLEKS R28 R27 K86 ["TextColor3"]
  SETTABLEKS R27 R26 K167 ["collaboratorTypeText"]
  GETTABLEKS R27 R18 K176 ["InputFieldBackground"]
  SETTABLEKS R27 R26 K80 ["backgroundColor"]
  GETTABLEKS R27 R18 K112 ["MainText"]
  SETTABLEKS R27 R26 K168 ["itemText"]
  GETTABLEKS R27 R18 K90 ["SubText"]
  SETTABLEKS R27 R26 K169 ["headerText"]
  DUPTABLE R27 K177 [{"backgroundColor", "itemText"}]
  GETTABLEKS R28 R18 K178 ["Dropdown"]
  SETTABLEKS R28 R27 K80 ["backgroundColor"]
  GETTABLEKS R28 R18 K112 ["MainText"]
  SETTABLEKS R28 R27 K168 ["itemText"]
  SETTABLEKS R27 R26 K170 ["hovered"]
  DUPTABLE R27 K179 [{"offset"}]
  LOADN R28 2
  SETTABLEKS R28 R27 K113 ["offset"]
  SETTABLEKS R27 R26 K171 ["item"]
  DUPTABLE R27 K180 [{"backgroundColor"}]
  GETTABLEKS R28 R18 K181 ["ButtonHover"]
  SETTABLEKS R28 R27 K80 ["backgroundColor"]
  SETTABLEKS R27 R26 K172 ["selected"]
  LOADN R27 169
  SETTABLEKS R27 R26 K173 ["maxHeight"]
  LOADN R27 100
  SETTABLEKS R27 R26 K174 ["eligibilityLabelWidth"]
  SETTABLEKS R26 R25 K152 ["dropDown"]
  SETTABLEKS R25 R24 K182 ["searchBar"]
  DUPTABLE R25 K185 [{"loadingImage", "loadFailureImage"}]
  LOADK R26 K186 ["rbxasset://textures/StudioSharedUI/default_group.png"]
  SETTABLEKS R26 R25 K183 ["loadingImage"]
  LOADK R26 K187 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R26 R25 K184 ["loadFailureImage"]
  SETTABLEKS R25 R24 K188 ["groupThumbnail"]
  DUPTABLE R25 K191 [{"background", "maskImage", "loadingImage", "loadFailureImage"}]
  GETTABLEKS R26 R18 K192 ["TableItem"]
  SETTABLEKS R26 R25 K189 ["background"]
  LOADK R26 K193 ["rbxasset://textures/StudioSharedUI/avatarMask.png"]
  SETTABLEKS R26 R25 K190 ["maskImage"]
  LOADK R26 K194 ["rbxasset://textures/StudioSharedUI/default_user.png"]
  SETTABLEKS R26 R25 K183 ["loadingImage"]
  LOADK R26 K187 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R26 R25 K184 ["loadFailureImage"]
  SETTABLEKS R25 R24 K195 ["subjectThumbnail"]
  DUPTABLE R25 K196 [{"Image"}]
  LOADK R26 K197 ["rbxasset://textures/ManageCollaborators/OrgRoleIcon_mask.png"]
  SETTABLEKS R26 R25 K157 ["Image"]
  SETTABLEKS R25 R24 K198 ["orgRoleThumbnail"]
  DUPTABLE R25 K201 [{"button", "padding", "width"}]
  DUPTABLE R26 K203 [{"height"}]
  LOADN R27 50
  SETTABLEKS R27 R26 K202 ["height"]
  SETTABLEKS R26 R25 K199 ["button"]
  LOADN R26 10
  SETTABLEKS R26 R25 K92 ["padding"]
  JUMPIFNOT R22 [+2]
  LOADN R26 8
  JUMP [+1]
  LOADN R26 195
  SETTABLEKS R26 R25 K200 ["width"]
  SETTABLEKS R25 R24 K204 ["selectInput"]
  DUPTABLE R25 K208 [{"yPadding", "xPadding", "yPaddingNonOwner"}]
  LOADN R26 47
  SETTABLEKS R26 R25 K205 ["yPadding"]
  LOADN R26 25
  SETTABLEKS R26 R25 K206 ["xPadding"]
  LOADN R26 35
  SETTABLEKS R26 R25 K207 ["yPaddingNonOwner"]
  SETTABLEKS R25 R24 K209 ["scrollingFrame"]
  DUPTABLE R25 K213 [{"boxHeight", "textStyle", "InnerTextPosition"}]
  LOADN R26 45
  SETTABLEKS R26 R25 K210 ["boxHeight"]
  DUPTABLE R26 K87 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R27 K89 [Enum.Font.SourceSans]
  SETTABLEKS R27 R26 K85 ["Font"]
  LOADN R27 16
  SETTABLEKS R27 R26 K54 ["TextSize"]
  GETTABLEKS R27 R18 K50 ["TitlebarText"]
  SETTABLEKS R27 R26 K86 ["TextColor3"]
  SETTABLEKS R26 R25 K211 ["textStyle"]
  GETIMPORT R26 K105 [UDim2.new]
  LOADN R27 0
  LOADN R28 67
  LOADK R29 K106 [0.5]
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K212 ["InnerTextPosition"]
  SETTABLEKS R25 R24 K214 ["saveMessage"]
  DUPTABLE R25 K217 [{"height", "gradientSize", "gradientTransparency", "border"}]
  LOADN R26 65
  SETTABLEKS R26 R25 K202 ["height"]
  LOADN R26 3
  SETTABLEKS R26 R25 K215 ["gradientSize"]
  LOADK R26 K218 [0.9]
  SETTABLEKS R26 R25 K216 ["gradientTransparency"]
  GETTABLEKS R26 R18 K219 ["FooterBorder"]
  SETTABLEKS R26 R25 K59 ["border"]
  SETTABLEKS R25 R24 K220 ["footer"]
  DUPTABLE R25 K223 [{"paddingHorizontal", "size", "pills"}]
  GETIMPORT R26 K129 [UDim.new]
  LOADN R27 0
  LOADN R28 67
  CALL R26 2 1
  SETTABLEKS R26 R25 K125 ["paddingHorizontal"]
  GETIMPORT R26 K105 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  LOADN R30 30
  CALL R26 4 1
  SETTABLEKS R26 R25 K221 ["size"]
  DUPTABLE R26 K224 [{"paddingHorizontal", "size"}]
  GETIMPORT R27 K129 [UDim.new]
  LOADN R28 0
  LOADN R29 8
  CALL R27 2 1
  SETTABLEKS R27 R26 K125 ["paddingHorizontal"]
  GETIMPORT R27 K105 [UDim2.new]
  LOADN R28 0
  LOADN R29 100
  LOADN R30 1
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K221 ["size"]
  SETTABLEKS R26 R25 K222 ["pills"]
  SETTABLEKS R25 R24 K225 ["collaboratorFilter"]
  DUPTABLE R25 K236 [{"FadeTransparency", "groupCollaboratorItem", "deleteButton", "permissionEditor", "collaboratorName", "collaboratorSubText", "ownerLabel", "iconContainerSize", "nonRolesetFrame", "rolesetFrame"}]
  LOADK R26 K237 [0.75]
  SETTABLEKS R26 R25 K226 ["FadeTransparency"]
  DUPTABLE R26 K242 [{"ExpandTextSize", "size", "collaboratorItemOffset", "expandablePaneSize", "headerComponent"}]
  LOADN R27 14
  SETTABLEKS R27 R26 K238 ["ExpandTextSize"]
  GETIMPORT R27 K105 [UDim2.new]
  LOADN R28 0
  LOADN R29 153
  LOADN R30 0
  LOADN R31 60
  CALL R27 4 1
  SETTABLEKS R27 R26 K221 ["size"]
  LOADN R27 16
  SETTABLEKS R27 R26 K239 ["collaboratorItemOffset"]
  GETIMPORT R27 K105 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  LOADN R31 34
  CALL R27 4 1
  SETTABLEKS R27 R26 K240 ["expandablePaneSize"]
  DUPTABLE R27 K245 [{"size", "arrowLabel", "textLabel"}]
  GETIMPORT R28 K105 [UDim2.new]
  LOADN R29 0
  LOADN R30 96
  LOADN R31 0
  LOADN R32 34
  CALL R28 4 1
  SETTABLEKS R28 R27 K221 ["size"]
  DUPTABLE R28 K247 [{"position", "size"}]
  GETIMPORT R29 K105 [UDim2.new]
  LOADN R30 0
  LOADN R31 42
  LOADK R32 K106 [0.5]
  LOADN R33 0
  CALL R29 4 1
  SETTABLEKS R29 R28 K246 ["position"]
  GETIMPORT R29 K105 [UDim2.new]
  LOADN R30 0
  LOADN R31 17
  LOADN R32 0
  LOADN R33 17
  CALL R29 4 1
  SETTABLEKS R29 R28 K221 ["size"]
  SETTABLEKS R28 R27 K243 ["arrowLabel"]
  DUPTABLE R28 K248 [{"position"}]
  GETIMPORT R29 K105 [UDim2.new]
  LOADN R30 0
  LOADN R31 60
  LOADK R32 K106 [0.5]
  LOADN R33 0
  CALL R29 4 1
  SETTABLEKS R29 R28 K246 ["position"]
  SETTABLEKS R28 R27 K244 ["textLabel"]
  SETTABLEKS R27 R26 K241 ["headerComponent"]
  SETTABLEKS R26 R25 K227 ["groupCollaboratorItem"]
  DUPTABLE R26 K250 [{"size", "xOffset", "hovered"}]
  LOADN R27 16
  SETTABLEKS R27 R26 K221 ["size"]
  LOADN R27 6
  SETTABLEKS R27 R26 K249 ["xOffset"]
  GETTABLEKS R27 R18 K178 ["Dropdown"]
  SETTABLEKS R27 R26 K170 ["hovered"]
  SETTABLEKS R26 R25 K228 ["deleteButton"]
  DUPTABLE R26 K253 [{"heightOffset", "yOffset"}]
  LOADN R27 54
  SETTABLEKS R27 R26 K251 ["heightOffset"]
  LOADN R27 11
  SETTABLEKS R27 R26 K252 ["yOffset"]
  SETTABLEKS R26 R25 K229 ["permissionEditor"]
  DUPTABLE R26 K258 [{"withIcon", "withoutIcon", "withSubtext", "withoutSubtext"}]
  DUPTABLE R27 K260 [{"withSubText", "size", "xOffset"}]
  DUPTABLE R28 K261 [{"size"}]
  GETIMPORT R29 K105 [UDim2.new]
  LOADN R30 1
  LOADN R31 248
  LOADN R32 0
  LOADN R33 30
  CALL R29 4 1
  SETTABLEKS R29 R28 K221 ["size"]
  SETTABLEKS R28 R27 K259 ["withSubText"]
  GETIMPORT R28 K105 [UDim2.new]
  LOADN R29 1
  LOADN R30 248
  LOADN R31 0
  LOADN R32 54
  CALL R28 4 1
  SETTABLEKS R28 R27 K221 ["size"]
  LOADN R28 50
  SETTABLEKS R28 R27 K249 ["xOffset"]
  SETTABLEKS R27 R26 K254 ["withIcon"]
  NEWTABLE R27 2 1
  DUPTABLE R29 K261 [{"size"}]
  GETIMPORT R30 K105 [UDim2.new]
  LOADN R31 1
  LOADN R32 248
  LOADN R33 0
  LOADN R34 30
  CALL R30 4 1
  SETTABLEKS R30 R29 K221 ["size"]
  SETTABLEKS R29 R27 K259 ["withSubText"]
  GETIMPORT R28 K105 [UDim2.new]
  LOADN R29 1
  LOADN R30 130
  LOADN R31 0
  LOADN R32 54
  CALL R28 4 1
  SETLIST R27 R28 1 [1]
  LOADN R29 28
  SETTABLEKS R29 R27 K249 ["xOffset"]
  SETTABLEKS R27 R26 K255 ["withoutIcon"]
  DUPTABLE R27 K262 [{"yOffset"}]
  LOADN R28 246
  SETTABLEKS R28 R27 K252 ["yOffset"]
  SETTABLEKS R27 R26 K256 ["withSubtext"]
  DUPTABLE R27 K262 [{"yOffset"}]
  LOADN R28 0
  SETTABLEKS R28 R27 K252 ["yOffset"]
  SETTABLEKS R27 R26 K257 ["withoutSubtext"]
  SETTABLEKS R26 R25 K230 ["collaboratorName"]
  DUPTABLE R26 K263 [{"withIcon", "withoutIcon", "yOffset"}]
  DUPTABLE R27 K264 [{"size", "xOffset"}]
  GETIMPORT R28 K105 [UDim2.new]
  LOADN R29 1
  LOADN R30 248
  LOADN R31 0
  LOADN R32 24
  CALL R28 4 1
  SETTABLEKS R28 R27 K221 ["size"]
  LOADN R28 50
  SETTABLEKS R28 R27 K249 ["xOffset"]
  SETTABLEKS R27 R26 K254 ["withIcon"]
  NEWTABLE R27 1 1
  GETIMPORT R28 K105 [UDim2.new]
  LOADN R29 1
  LOADN R30 130
  LOADN R31 0
  LOADN R32 24
  CALL R28 4 1
  SETLIST R27 R28 1 [1]
  LOADN R29 28
  SETTABLEKS R29 R27 K249 ["xOffset"]
  SETTABLEKS R27 R26 K255 ["withoutIcon"]
  LOADN R27 10
  SETTABLEKS R27 R26 K252 ["yOffset"]
  SETTABLEKS R26 R25 K231 ["collaboratorSubText"]
  DUPTABLE R26 K267 [{"withIconSize", "withoutIconSize", "position"}]
  GETIMPORT R27 K105 [UDim2.new]
  LOADN R28 1
  LOADN R29 248
  LOADN R30 0
  LOADN R31 54
  CALL R27 4 1
  SETTABLEKS R27 R26 K265 ["withIconSize"]
  GETIMPORT R27 K105 [UDim2.new]
  LOADN R28 1
  LOADN R29 130
  LOADN R30 0
  LOADN R31 54
  CALL R27 4 1
  SETTABLEKS R27 R26 K266 ["withoutIconSize"]
  GETIMPORT R27 K105 [UDim2.new]
  LOADN R28 1
  LOADN R29 249
  LOADK R30 K106 [0.5]
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K246 ["position"]
  SETTABLEKS R26 R25 K232 ["ownerLabel"]
  LOADN R26 40
  SETTABLEKS R26 R25 K233 ["iconContainerSize"]
  DUPTABLE R26 K269 [{"width", "height", "position", "anchorPoint"}]
  LOADN R27 153
  SETTABLEKS R27 R26 K200 ["width"]
  LOADN R27 74
  SETTABLEKS R27 R26 K202 ["height"]
  LOADNIL R27
  SETTABLEKS R27 R26 K246 ["position"]
  LOADNIL R27
  SETTABLEKS R27 R26 K268 ["anchorPoint"]
  SETTABLEKS R26 R25 K234 ["nonRolesetFrame"]
  DUPTABLE R26 K271 [{"width", "height", "position", "anchorPont"}]
  LOADN R27 96
  SETTABLEKS R27 R26 K200 ["width"]
  LOADN R27 54
  SETTABLEKS R27 R26 K202 ["height"]
  GETIMPORT R27 K105 [UDim2.new]
  LOADK R28 K16 ["Button"]
  LOADN R29 200
  LOADN R30 0
  LOADN R31 20
  CALL R27 4 1
  SETTABLEKS R27 R26 K246 ["position"]
  GETIMPORT R27 K77 [Vector2.new]
  LOADN R28 1
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K270 ["anchorPont"]
  SETTABLEKS R26 R25 K235 ["rolesetFrame"]
  SETTABLEKS R25 R24 K273 ["collaboratorItem"]
  GETTABLEKS R25 R18 K274 ["CloseWidget"]
  SETTABLEKS R25 R24 K275 ["deleteIcon"]
  DUPTABLE R25 K278 [{"right", "down"}]
  GETTABLEKS R26 R18 K279 ["RightArrow"]
  SETTABLEKS R26 R25 K276 ["right"]
  GETTABLEKS R26 R18 K280 ["DownArrow"]
  SETTABLEKS R26 R25 K277 ["down"]
  SETTABLEKS R25 R24 K281 ["arrows"]
  DUPCLOSURE R25 K282 [PROTO_0]
  CAPTURE VAL R21
  CAPTURE VAL R16
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R17
  CAPTURE VAL R15
  CAPTURE VAL R24
  RETURN R25 1
