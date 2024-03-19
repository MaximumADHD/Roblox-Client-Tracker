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
  CALL R2 2 1
  GETUPVAL R3 0
  GETUPVAL R4 3
  NEWTABLE R5 8 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K0 ["CloseWidget"]
  LOADK R7 K12 ["rbxasset://textures/ManageCollaborators/closeWidget_light.png"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["RightArrow"]
  LOADK R7 K13 ["rbxasset://textures/ManageCollaborators/arrowRight_light.png"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["DownArrow"]
  LOADK R7 K14 ["rbxasset://textures/ManageCollaborators/arrowDown_light.png"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["FriendIcon"]
  LOADK R7 K15 ["rbxasset://textures/ManageCollaborators/friendIcon_light.png"]
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
  GETTABLEKS R6 R7 K16 ["Dropdown"]
  GETIMPORT R7 K11 [Color3.fromRGB]
  LOADN R8 228
  LOADN R9 238
  LOADN R10 254
  CALL R7 3 1
  SETTABLE R7 R5 R6
  CALL R3 2 1
  JUMPIFNOT R0 [+8]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K17 ["mock"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 1
  MOVE R1 R4
  JUMP [+7]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K18 ["new"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 1
  MOVE R1 R4
  GETUPVAL R6 5
  NAMECALL R4 R1 K19 ["extend"]
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
  GETTABLEKS R19 R1 K25 ["Dash"]
  GETTABLEKS R20 R19 K26 ["join"]
  GETIMPORT R21 K28 [game]
  LOADK R23 K29 ["StudioManageCollabWideBox2"]
  NAMECALL R21 R21 K30 ["GetFastFlag"]
  CALL R21 2 1
  NEWTABLE R22 32 0
  GETTABLEKS R23 R6 K12 ["ExpandablePane"]
  MOVE R24 R20
  GETTABLEKS R26 R6 K12 ["ExpandablePane"]
  GETTABLE R25 R14 R26
  NEWTABLE R26 1 0
  MOVE R27 R20
  MOVE R28 R8
  DUPTABLE R29 K31 [{"Header"}]
  MOVE R30 R20
  MOVE R31 R9
  DUPTABLE R32 K35 [{"Arrow", "HorizontalAlignment", "Padding"}]
  DUPTABLE R33 K37 [{"Size"}]
  GETIMPORT R34 K40 [UDim2.fromOffset]
  LOADN R35 0
  LOADN R36 0
  CALL R34 2 1
  SETTABLEKS R34 R33 K36 ["Size"]
  SETTABLEKS R33 R32 K32 ["Arrow"]
  GETIMPORT R33 K43 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R33 R32 K33 ["HorizontalAlignment"]
  LOADN R33 0
  SETTABLEKS R33 R32 K34 ["Padding"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K15 ["Header"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K44 ["&Arrowless"]
  CALL R24 2 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R6 K45 ["SelectInput"]
  MOVE R24 R20
  GETTABLEKS R26 R6 K45 ["SelectInput"]
  GETTABLE R25 R14 R26
  NEWTABLE R26 2 0
  MOVE R27 R20
  MOVE R28 R8
  DUPTABLE R29 K47 [{"PlaceholderTextColor"}]
  GETTABLEKS R30 R18 K48 ["TitlebarText"]
  SETTABLEKS R30 R29 K46 ["PlaceholderTextColor"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K49 ["&Editable"]
  MOVE R27 R20
  MOVE R28 R8
  DUPTABLE R29 K47 [{"PlaceholderTextColor"}]
  GETTABLEKS R30 R18 K50 ["DimmedText"]
  SETTABLEKS R30 R29 K46 ["PlaceholderTextColor"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K51 ["&NonEditable"]
  CALL R24 2 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R6 K16 ["Button"]
  MOVE R24 R20
  GETTABLEKS R26 R6 K16 ["Button"]
  GETTABLE R25 R14 R26
  NEWTABLE R26 4 0
  MOVE R27 R20
  MOVE R28 R11
  DUPTABLE R29 K53 [{"TextSize"}]
  LOADN R30 24
  SETTABLEKS R30 R29 K52 ["TextSize"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K54 ["&Active"]
  MOVE R27 R20
  MOVE R28 R11
  DUPTABLE R29 K53 [{"TextSize"}]
  LOADN R30 24
  SETTABLEKS R30 R29 K52 ["TextSize"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K55 ["&Passive"]
  MOVE R27 R20
  MOVE R28 R12
  DUPTABLE R29 K53 [{"TextSize"}]
  LOADN R30 24
  SETTABLEKS R30 R29 K52 ["TextSize"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K56 ["&Cancel"]
  CALL R24 2 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R6 K57 ["StyledDialog"]
  GETTABLEKS R25 R4 K58 ["Dictionary"]
  GETTABLEKS R24 R25 K26 ["join"]
  MOVE R25 R3
  LOADK R26 K57 ["StyledDialog"]
  CALL R25 1 1
  NEWTABLE R26 1 0
  DUPTABLE R27 K62 [{"ButtonPadding", "ContentPadding", "ButtonHorizontalAlignment"}]
  LOADN R28 24
  SETTABLEKS R28 R27 K59 ["ButtonPadding"]
  LOADN R28 0
  SETTABLEKS R28 R27 K60 ["ContentPadding"]
  GETIMPORT R28 K64 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R28 R27 K61 ["ButtonHorizontalAlignment"]
  SETTABLEKS R27 R26 K65 ["&CancelDialog"]
  CALL R24 2 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R6 K66 ["DropdownMenu"]
  GETTABLEKS R25 R4 K58 ["Dictionary"]
  GETTABLEKS R24 R25 K26 ["join"]
  MOVE R25 R3
  LOADK R26 K66 ["DropdownMenu"]
  CALL R25 1 1
  NEWTABLE R26 1 0
  DUPTABLE R27 K68 [{"Offset"}]
  GETIMPORT R28 K71 [Vector2.new]
  LOADN R29 244
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K67 ["Offset"]
  SETTABLEKS R27 R26 K72 ["&Search"]
  CALL R24 2 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R18 K73 ["MainBackground"]
  SETTABLEKS R23 R22 K74 ["backgroundColor"]
  DUPTABLE R23 K78 [{"Subtitle", "Normal", "Subtext"}]
  DUPTABLE R24 K81 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R25 K83 [Enum.Font.SourceSans]
  SETTABLEKS R25 R24 K79 ["Font"]
  LOADN R25 22
  SETTABLEKS R25 R24 K52 ["TextSize"]
  GETTABLEKS R25 R18 K84 ["SubText"]
  SETTABLEKS R25 R24 K80 ["TextColor3"]
  SETTABLEKS R24 R23 K75 ["Subtitle"]
  DUPTABLE R24 K81 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R25 K83 [Enum.Font.SourceSans]
  SETTABLEKS R25 R24 K79 ["Font"]
  LOADN R25 20
  SETTABLEKS R25 R24 K52 ["TextSize"]
  GETTABLEKS R25 R18 K48 ["TitlebarText"]
  SETTABLEKS R25 R24 K80 ["TextColor3"]
  SETTABLEKS R24 R23 K76 ["Normal"]
  DUPTABLE R24 K81 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R25 K83 [Enum.Font.SourceSans]
  SETTABLEKS R25 R24 K79 ["Font"]
  LOADN R25 16
  SETTABLEKS R25 R24 K52 ["TextSize"]
  GETTABLEKS R25 R18 K48 ["TitlebarText"]
  SETTABLEKS R25 R24 K80 ["TextColor3"]
  SETTABLEKS R24 R23 K77 ["Subtext"]
  SETTABLEKS R23 R22 K85 ["fontStyle"]
  DUPTABLE R23 K88 [{"padding", "edgePadding"}]
  LOADN R24 25
  SETTABLEKS R24 R23 K86 ["padding"]
  LOADN R24 35
  SETTABLEKS R24 R23 K87 ["edgePadding"]
  SETTABLEKS R23 R22 K89 ["buttonBar"]
  DUPTABLE R23 K92 [{"TitleText", "DescriptionText"}]
  DUPTABLE R24 K81 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R25 K94 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R25 R24 K79 ["Font"]
  LOADN R25 22
  SETTABLEKS R25 R24 K52 ["TextSize"]
  GETTABLEKS R25 R18 K48 ["TitlebarText"]
  SETTABLEKS R25 R24 K80 ["TextColor3"]
  SETTABLEKS R24 R23 K90 ["TitleText"]
  DUPTABLE R24 K81 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R25 K83 [Enum.Font.SourceSans]
  SETTABLEKS R25 R24 K79 ["Font"]
  LOADN R25 18
  SETTABLEKS R25 R24 K52 ["TextSize"]
  GETTABLEKS R25 R18 K48 ["TitlebarText"]
  SETTABLEKS R25 R24 K80 ["TextColor3"]
  SETTABLEKS R24 R23 K91 ["DescriptionText"]
  SETTABLEKS R23 R22 K95 ["confirmTcDialog"]
  DUPTABLE R23 K98 [{"Text", "Size", "Position"}]
  DUPTABLE R24 K81 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R25 K83 [Enum.Font.SourceSans]
  SETTABLEKS R25 R24 K79 ["Font"]
  LOADN R25 24
  SETTABLEKS R25 R24 K52 ["TextSize"]
  GETTABLEKS R25 R18 K48 ["TitlebarText"]
  SETTABLEKS R25 R24 K80 ["TextColor3"]
  SETTABLEKS R24 R23 K96 ["Text"]
  GETIMPORT R24 K71 [Vector2.new]
  LOADN R25 87
  LOADN R26 65
  CALL R24 2 1
  SETTABLEKS R24 R23 K36 ["Size"]
  GETIMPORT R24 K99 [UDim2.new]
  LOADK R25 K100 [0.5]
  LOADN R26 0
  LOADK R27 K100 [0.5]
  LOADN R28 10
  CALL R24 4 1
  SETTABLEKS R24 R23 K97 ["Position"]
  SETTABLEKS R23 R22 K101 ["cancelDialog"]
  DUPTABLE R23 K103 [{"Text", "publishButton"}]
  DUPTABLE R24 K105 [{"Font", "TextSize", "TextColor3", "YOffset"}]
  GETIMPORT R25 K83 [Enum.Font.SourceSans]
  SETTABLEKS R25 R24 K79 ["Font"]
  LOADN R25 20
  SETTABLEKS R25 R24 K52 ["TextSize"]
  GETTABLEKS R25 R18 K106 ["MainText"]
  SETTABLEKS R25 R24 K80 ["TextColor3"]
  LOADN R25 70
  SETTABLEKS R25 R24 K104 ["YOffset"]
  SETTABLEKS R24 R23 K96 ["Text"]
  DUPTABLE R24 K110 [{"offset", "paddingX", "paddingY"}]
  LOADN R25 125
  SETTABLEKS R25 R24 K107 ["offset"]
  LOADN R25 75
  SETTABLEKS R25 R24 K108 ["paddingX"]
  LOADN R25 15
  SETTABLEKS R25 R24 K109 ["paddingY"]
  SETTABLEKS R24 R23 K102 ["publishButton"]
  SETTABLEKS R23 R22 K111 ["saveToRobloxView"]
  DUPTABLE R23 K112 [{"Padding"}]
  LOADN R24 2
  SETTABLEKS R24 R23 K34 ["Padding"]
  SETTABLEKS R23 R22 K113 ["permissionsView"]
  DUPTABLE R23 K115 [{"hover"}]
  GETTABLEKS R24 R18 K116 ["MenuEntryHover"]
  SETTABLEKS R24 R23 K114 ["hover"]
  SETTABLEKS R23 R22 K117 ["menuEntry"]
  DUPTABLE R23 K121 [{"paddingTop", "paddingHorizontal", "ageWarning"}]
  GETIMPORT R24 K123 [UDim.new]
  LOADN R25 0
  LOADN R26 32
  CALL R24 2 1
  SETTABLEKS R24 R23 K118 ["paddingTop"]
  GETIMPORT R24 K123 [UDim.new]
  LOADN R25 0
  LOADN R26 67
  CALL R24 2 1
  SETTABLEKS R24 R23 K119 ["paddingHorizontal"]
  DUPTABLE R24 K125 [{"fontStyle", "Height"}]
  DUPTABLE R25 K81 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R26 K83 [Enum.Font.SourceSans]
  SETTABLEKS R26 R25 K79 ["Font"]
  LOADN R26 16
  SETTABLEKS R26 R25 K52 ["TextSize"]
  GETTABLEKS R26 R18 K106 ["MainText"]
  SETTABLEKS R26 R25 K80 ["TextColor3"]
  SETTABLEKS R25 R24 K85 ["fontStyle"]
  LOADN R25 15
  SETTABLEKS R25 R24 K124 ["Height"]
  SETTABLEKS R24 R23 K120 ["ageWarning"]
  SETTABLEKS R23 R22 K126 ["searchWidget"]
  DUPTABLE R23 K148 [{"border", "borderHover", "borderSelected", "placeholderText", "backgroundColor", "collabTypeTextPosition", "friendsAccessTextPosition", "searchIcon", "friendIcon", "clearButton", "headerHeight", "itemHeight", "ribbonWidth", "thumbnailSize", "thumbnailPaddingLeft", "renderItemTextPadding", "searchBarHeight", "clearButtonIconSize", "textPadding", "nameLabelWidth", "nameHeight", "dropDown"}]
  GETTABLEKS R24 R18 K149 ["Border"]
  SETTABLEKS R24 R23 K127 ["border"]
  GETTABLEKS R24 R18 K150 ["MainButton"]
  SETTABLEKS R24 R23 K128 ["borderHover"]
  GETTABLEKS R24 R18 K150 ["MainButton"]
  SETTABLEKS R24 R23 K129 ["borderSelected"]
  GETTABLEKS R24 R18 K50 ["DimmedText"]
  SETTABLEKS R24 R23 K130 ["placeholderText"]
  GETTABLEKS R24 R18 K151 ["SubBackground2"]
  SETTABLEKS R24 R23 K74 ["backgroundColor"]
  GETIMPORT R24 K99 [UDim2.new]
  LOADN R25 0
  LOADN R26 26
  LOADN R27 0
  LOADN R28 14
  CALL R24 4 1
  SETTABLEKS R24 R23 K131 ["collabTypeTextPosition"]
  GETIMPORT R24 K99 [UDim2.new]
  LOADN R25 1
  LOADN R26 228
  LOADN R27 0
  LOADN R28 14
  CALL R24 4 1
  SETTABLEKS R24 R23 K132 ["friendsAccessTextPosition"]
  GETTABLEKS R24 R18 K84 ["SubText"]
  SETTABLEKS R24 R23 K133 ["searchIcon"]
  DUPTABLE R24 K157 [{"Image", "LabelWidth", "LabelHeight", "FrameWidth", "Width", "Height"}]
  GETTABLEKS R25 R18 K158 ["FriendIcon"]
  SETTABLEKS R25 R24 K152 ["Image"]
  LOADN R25 20
  SETTABLEKS R25 R24 K153 ["LabelWidth"]
  LOADN R25 13
  SETTABLEKS R25 R24 K154 ["LabelHeight"]
  LOADN R25 37
  SETTABLEKS R25 R24 K155 ["FrameWidth"]
  LOADN R25 17
  SETTABLEKS R25 R24 K156 ["Width"]
  LOADN R25 10
  SETTABLEKS R25 R24 K124 ["Height"]
  SETTABLEKS R24 R23 K134 ["friendIcon"]
  DUPTABLE R24 K161 [{"imageSelected", "image"}]
  GETTABLEKS R25 R18 K84 ["SubText"]
  SETTABLEKS R25 R24 K159 ["imageSelected"]
  GETTABLEKS R25 R18 K84 ["SubText"]
  SETTABLEKS R25 R24 K160 ["image"]
  SETTABLEKS R24 R23 K135 ["clearButton"]
  LOADN R24 25
  SETTABLEKS R24 R23 K136 ["headerHeight"]
  LOADN R24 75
  SETTABLEKS R24 R23 K137 ["itemHeight"]
  LOADN R24 5
  SETTABLEKS R24 R23 K138 ["ribbonWidth"]
  LOADN R24 48
  SETTABLEKS R24 R23 K139 ["thumbnailSize"]
  LOADN R24 40
  SETTABLEKS R24 R23 K140 ["thumbnailPaddingLeft"]
  LOADN R24 19
  SETTABLEKS R24 R23 K141 ["renderItemTextPadding"]
  LOADN R24 40
  SETTABLEKS R24 R23 K142 ["searchBarHeight"]
  LOADN R24 32
  SETTABLEKS R24 R23 K143 ["clearButtonIconSize"]
  LOADN R24 16
  SETTABLEKS R24 R23 K144 ["textPadding"]
  LOADN R24 204
  SETTABLEKS R24 R23 K145 ["nameLabelWidth"]
  LOADN R24 55
  SETTABLEKS R24 R23 K146 ["nameHeight"]
  DUPTABLE R24 K170 [{"collaboratorTypeText", "backgroundColor", "itemText", "headerText", "hovered", "item", "selected", "maxHeight", "eligibilityLabelWidth"}]
  DUPTABLE R25 K81 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R26 K83 [Enum.Font.SourceSans]
  SETTABLEKS R26 R25 K79 ["Font"]
  LOADN R26 16
  SETTABLEKS R26 R25 K52 ["TextSize"]
  GETTABLEKS R26 R18 K106 ["MainText"]
  SETTABLEKS R26 R25 K80 ["TextColor3"]
  SETTABLEKS R25 R24 K162 ["collaboratorTypeText"]
  GETTABLEKS R25 R18 K171 ["InputFieldBackground"]
  SETTABLEKS R25 R24 K74 ["backgroundColor"]
  GETTABLEKS R25 R18 K106 ["MainText"]
  SETTABLEKS R25 R24 K163 ["itemText"]
  GETTABLEKS R25 R18 K84 ["SubText"]
  SETTABLEKS R25 R24 K164 ["headerText"]
  DUPTABLE R25 K172 [{"backgroundColor", "itemText"}]
  GETTABLEKS R26 R18 K173 ["Dropdown"]
  SETTABLEKS R26 R25 K74 ["backgroundColor"]
  GETTABLEKS R26 R18 K106 ["MainText"]
  SETTABLEKS R26 R25 K163 ["itemText"]
  SETTABLEKS R25 R24 K165 ["hovered"]
  DUPTABLE R25 K174 [{"offset"}]
  LOADN R26 2
  SETTABLEKS R26 R25 K107 ["offset"]
  SETTABLEKS R25 R24 K166 ["item"]
  DUPTABLE R25 K175 [{"backgroundColor"}]
  GETTABLEKS R26 R18 K176 ["ButtonHover"]
  SETTABLEKS R26 R25 K74 ["backgroundColor"]
  SETTABLEKS R25 R24 K167 ["selected"]
  LOADN R25 169
  SETTABLEKS R25 R24 K168 ["maxHeight"]
  LOADN R25 100
  SETTABLEKS R25 R24 K169 ["eligibilityLabelWidth"]
  SETTABLEKS R24 R23 K147 ["dropDown"]
  SETTABLEKS R23 R22 K177 ["searchBar"]
  DUPTABLE R23 K180 [{"loadingImage", "loadFailureImage"}]
  LOADK R24 K181 ["rbxasset://textures/StudioSharedUI/default_group.png"]
  SETTABLEKS R24 R23 K178 ["loadingImage"]
  LOADK R24 K182 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R24 R23 K179 ["loadFailureImage"]
  SETTABLEKS R23 R22 K183 ["groupThumbnail"]
  DUPTABLE R23 K186 [{"background", "maskImage", "loadingImage", "loadFailureImage"}]
  GETTABLEKS R24 R18 K187 ["TableItem"]
  SETTABLEKS R24 R23 K184 ["background"]
  LOADK R24 K188 ["rbxasset://textures/StudioSharedUI/avatarMask.png"]
  SETTABLEKS R24 R23 K185 ["maskImage"]
  LOADK R24 K189 ["rbxasset://textures/StudioSharedUI/default_user.png"]
  SETTABLEKS R24 R23 K178 ["loadingImage"]
  LOADK R24 K182 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R24 R23 K179 ["loadFailureImage"]
  SETTABLEKS R23 R22 K190 ["subjectThumbnail"]
  DUPTABLE R23 K193 [{"button", "padding", "width"}]
  DUPTABLE R24 K195 [{"height"}]
  LOADN R25 50
  SETTABLEKS R25 R24 K194 ["height"]
  SETTABLEKS R24 R23 K191 ["button"]
  LOADN R24 10
  SETTABLEKS R24 R23 K86 ["padding"]
  JUMPIFNOT R21 [+2]
  LOADN R24 8
  JUMP [+1]
  LOADN R24 195
  SETTABLEKS R24 R23 K192 ["width"]
  SETTABLEKS R23 R22 K196 ["selectInput"]
  DUPTABLE R23 K200 [{"yPadding", "xPadding", "yPaddingNonOwner"}]
  LOADN R24 47
  SETTABLEKS R24 R23 K197 ["yPadding"]
  LOADN R24 25
  SETTABLEKS R24 R23 K198 ["xPadding"]
  LOADN R24 35
  SETTABLEKS R24 R23 K199 ["yPaddingNonOwner"]
  SETTABLEKS R23 R22 K201 ["scrollingFrame"]
  DUPTABLE R23 K205 [{"boxHeight", "textStyle", "InnerTextPosition"}]
  LOADN R24 45
  SETTABLEKS R24 R23 K202 ["boxHeight"]
  DUPTABLE R24 K81 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R25 K83 [Enum.Font.SourceSans]
  SETTABLEKS R25 R24 K79 ["Font"]
  LOADN R25 16
  SETTABLEKS R25 R24 K52 ["TextSize"]
  GETTABLEKS R25 R18 K48 ["TitlebarText"]
  SETTABLEKS R25 R24 K80 ["TextColor3"]
  SETTABLEKS R24 R23 K203 ["textStyle"]
  GETIMPORT R24 K99 [UDim2.new]
  LOADN R25 0
  LOADN R26 67
  LOADK R27 K100 [0.5]
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K204 ["InnerTextPosition"]
  SETTABLEKS R23 R22 K206 ["saveMessage"]
  DUPTABLE R23 K209 [{"height", "gradientSize", "gradientTransparency", "border"}]
  LOADN R24 65
  SETTABLEKS R24 R23 K194 ["height"]
  LOADN R24 3
  SETTABLEKS R24 R23 K207 ["gradientSize"]
  LOADK R24 K210 [0.9]
  SETTABLEKS R24 R23 K208 ["gradientTransparency"]
  GETTABLEKS R24 R18 K211 ["FooterBorder"]
  SETTABLEKS R24 R23 K127 ["border"]
  SETTABLEKS R23 R22 K212 ["footer"]
  DUPTABLE R23 K222 [{"FadeTransparency", "groupCollaboratorItem", "deleteButton", "permissionEditor", "collaboratorName", "ownerLabel", "iconContainerSize", "nonRolesetFrame", "rolesetFrame"}]
  LOADK R24 K223 [0.75]
  SETTABLEKS R24 R23 K213 ["FadeTransparency"]
  DUPTABLE R24 K229 [{"ExpandTextSize", "size", "collaboratorItemOffset", "expandablePaneSize", "headerComponent"}]
  LOADN R25 14
  SETTABLEKS R25 R24 K224 ["ExpandTextSize"]
  GETIMPORT R25 K99 [UDim2.new]
  LOADN R26 0
  LOADN R27 153
  LOADN R28 0
  LOADN R29 60
  CALL R25 4 1
  SETTABLEKS R25 R24 K225 ["size"]
  LOADN R25 16
  SETTABLEKS R25 R24 K226 ["collaboratorItemOffset"]
  GETIMPORT R25 K99 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  LOADN R29 34
  CALL R25 4 1
  SETTABLEKS R25 R24 K227 ["expandablePaneSize"]
  DUPTABLE R25 K232 [{"size", "arrowLabel", "textLabel"}]
  GETIMPORT R26 K99 [UDim2.new]
  LOADN R27 0
  LOADN R28 96
  LOADN R29 0
  LOADN R30 34
  CALL R26 4 1
  SETTABLEKS R26 R25 K225 ["size"]
  DUPTABLE R26 K234 [{"position", "size"}]
  GETIMPORT R27 K99 [UDim2.new]
  LOADN R28 0
  LOADN R29 42
  LOADK R30 K100 [0.5]
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K233 ["position"]
  GETIMPORT R27 K99 [UDim2.new]
  LOADN R28 0
  LOADN R29 17
  LOADN R30 0
  LOADN R31 17
  CALL R27 4 1
  SETTABLEKS R27 R26 K225 ["size"]
  SETTABLEKS R26 R25 K230 ["arrowLabel"]
  DUPTABLE R26 K235 [{"position"}]
  GETIMPORT R27 K99 [UDim2.new]
  LOADN R28 0
  LOADN R29 60
  LOADK R30 K100 [0.5]
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K233 ["position"]
  SETTABLEKS R26 R25 K231 ["textLabel"]
  SETTABLEKS R25 R24 K228 ["headerComponent"]
  SETTABLEKS R24 R23 K214 ["groupCollaboratorItem"]
  DUPTABLE R24 K237 [{"size", "xOffset", "hovered"}]
  LOADN R25 32
  SETTABLEKS R25 R24 K225 ["size"]
  LOADN R25 6
  SETTABLEKS R25 R24 K236 ["xOffset"]
  GETTABLEKS R25 R18 K173 ["Dropdown"]
  SETTABLEKS R25 R24 K165 ["hovered"]
  SETTABLEKS R24 R23 K215 ["deleteButton"]
  DUPTABLE R24 K240 [{"heightOffset", "yOffset"}]
  LOADN R25 54
  SETTABLEKS R25 R24 K238 ["heightOffset"]
  LOADN R25 11
  SETTABLEKS R25 R24 K239 ["yOffset"]
  SETTABLEKS R24 R23 K216 ["permissionEditor"]
  DUPTABLE R24 K243 [{"withIcon", "withoutIcon"}]
  DUPTABLE R25 K244 [{"size", "xOffset"}]
  GETIMPORT R26 K99 [UDim2.new]
  LOADN R27 1
  LOADN R28 248
  LOADN R29 0
  LOADN R30 54
  CALL R26 4 1
  SETTABLEKS R26 R25 K225 ["size"]
  LOADN R26 72
  SETTABLEKS R26 R25 K236 ["xOffset"]
  SETTABLEKS R25 R24 K241 ["withIcon"]
  NEWTABLE R25 1 1
  GETIMPORT R26 K99 [UDim2.new]
  LOADN R27 1
  LOADN R28 130
  LOADN R29 0
  LOADN R30 54
  CALL R26 4 1
  SETLIST R25 R26 1 [1]
  LOADN R27 50
  SETTABLEKS R27 R25 K236 ["xOffset"]
  SETTABLEKS R25 R24 K242 ["withoutIcon"]
  SETTABLEKS R24 R23 K217 ["collaboratorName"]
  DUPTABLE R24 K247 [{"withIconSize", "withoutIconSize", "position"}]
  GETIMPORT R25 K99 [UDim2.new]
  LOADN R26 1
  LOADN R27 248
  LOADN R28 0
  LOADN R29 54
  CALL R25 4 1
  SETTABLEKS R25 R24 K245 ["withIconSize"]
  GETIMPORT R25 K99 [UDim2.new]
  LOADN R26 1
  LOADN R27 130
  LOADN R28 0
  LOADN R29 54
  CALL R25 4 1
  SETTABLEKS R25 R24 K246 ["withoutIconSize"]
  GETIMPORT R25 K99 [UDim2.new]
  LOADN R26 1
  LOADN R27 249
  LOADK R28 K100 [0.5]
  LOADN R29 0
  CALL R25 4 1
  SETTABLEKS R25 R24 K233 ["position"]
  SETTABLEKS R24 R23 K218 ["ownerLabel"]
  LOADN R24 40
  SETTABLEKS R24 R23 K219 ["iconContainerSize"]
  DUPTABLE R24 K249 [{"width", "height", "position", "anchorPoint"}]
  LOADN R25 153
  SETTABLEKS R25 R24 K192 ["width"]
  LOADN R25 74
  SETTABLEKS R25 R24 K194 ["height"]
  LOADNIL R25
  SETTABLEKS R25 R24 K233 ["position"]
  LOADNIL R25
  SETTABLEKS R25 R24 K248 ["anchorPoint"]
  SETTABLEKS R24 R23 K220 ["nonRolesetFrame"]
  DUPTABLE R24 K251 [{"width", "height", "position", "anchorPont"}]
  LOADN R25 96
  SETTABLEKS R25 R24 K192 ["width"]
  LOADN R25 54
  SETTABLEKS R25 R24 K194 ["height"]
  GETIMPORT R25 K99 [UDim2.new]
  LOADK R26 K252 [1.5]
  LOADN R27 200
  LOADN R28 0
  LOADN R29 20
  CALL R25 4 1
  SETTABLEKS R25 R24 K233 ["position"]
  GETIMPORT R25 K71 [Vector2.new]
  LOADN R26 1
  LOADN R27 0
  CALL R25 2 1
  SETTABLEKS R25 R24 K250 ["anchorPont"]
  SETTABLEKS R24 R23 K221 ["rolesetFrame"]
  SETTABLEKS R23 R22 K253 ["collaboratorItem"]
  GETTABLEKS R23 R18 K254 ["CloseWidget"]
  SETTABLEKS R23 R22 K255 ["deleteIcon"]
  DUPTABLE R23 K258 [{"right", "down"}]
  GETTABLEKS R24 R18 K259 ["RightArrow"]
  SETTABLEKS R24 R23 K256 ["right"]
  GETTABLEKS R24 R18 K260 ["DownArrow"]
  SETTABLEKS R24 R23 K257 ["down"]
  SETTABLEKS R23 R22 K261 ["arrows"]
  DUPCLOSURE R23 K262 [PROTO_0]
  CAPTURE VAL R20
  CAPTURE VAL R16
  CAPTURE VAL R18
  CAPTURE VAL R17
  CAPTURE VAL R15
  CAPTURE VAL R22
  RETURN R23 1
