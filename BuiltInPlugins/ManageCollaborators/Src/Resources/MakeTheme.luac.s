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
  NEWTABLE R21 32 0
  GETTABLEKS R22 R6 K12 ["ExpandablePane"]
  MOVE R23 R20
  GETTABLEKS R25 R6 K12 ["ExpandablePane"]
  GETTABLE R24 R14 R25
  NEWTABLE R25 1 0
  MOVE R26 R20
  MOVE R27 R8
  DUPTABLE R28 K27 [{"Header"}]
  MOVE R29 R20
  MOVE R30 R9
  DUPTABLE R31 K31 [{"Arrow", "HorizontalAlignment", "Padding"}]
  DUPTABLE R32 K33 [{"Size"}]
  GETIMPORT R33 K36 [UDim2.fromOffset]
  LOADN R34 0
  LOADN R35 0
  CALL R33 2 1
  SETTABLEKS R33 R32 K32 ["Size"]
  SETTABLEKS R32 R31 K28 ["Arrow"]
  GETIMPORT R32 K39 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R32 R31 K29 ["HorizontalAlignment"]
  LOADN R32 0
  SETTABLEKS R32 R31 K30 ["Padding"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K15 ["Header"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K40 ["&Arrowless"]
  CALL R23 2 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R6 K41 ["SelectInput"]
  MOVE R23 R20
  GETTABLEKS R25 R6 K41 ["SelectInput"]
  GETTABLE R24 R14 R25
  NEWTABLE R25 2 0
  MOVE R26 R20
  MOVE R27 R8
  DUPTABLE R28 K43 [{"PlaceholderTextColor"}]
  GETTABLEKS R29 R18 K44 ["TitlebarText"]
  SETTABLEKS R29 R28 K42 ["PlaceholderTextColor"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K45 ["&Editable"]
  MOVE R26 R20
  MOVE R27 R8
  DUPTABLE R28 K43 [{"PlaceholderTextColor"}]
  GETTABLEKS R29 R18 K46 ["DimmedText"]
  SETTABLEKS R29 R28 K42 ["PlaceholderTextColor"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K47 ["&NonEditable"]
  CALL R23 2 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R6 K16 ["Button"]
  MOVE R23 R20
  GETTABLEKS R25 R6 K16 ["Button"]
  GETTABLE R24 R14 R25
  NEWTABLE R25 4 0
  MOVE R26 R20
  MOVE R27 R11
  DUPTABLE R28 K49 [{"TextSize"}]
  LOADN R29 24
  SETTABLEKS R29 R28 K48 ["TextSize"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K50 ["&Active"]
  MOVE R26 R20
  MOVE R27 R11
  DUPTABLE R28 K49 [{"TextSize"}]
  LOADN R29 24
  SETTABLEKS R29 R28 K48 ["TextSize"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K51 ["&Passive"]
  MOVE R26 R20
  MOVE R27 R12
  DUPTABLE R28 K49 [{"TextSize"}]
  LOADN R29 24
  SETTABLEKS R29 R28 K48 ["TextSize"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K52 ["&Cancel"]
  CALL R23 2 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R6 K53 ["StyledDialog"]
  GETTABLEKS R24 R4 K54 ["Dictionary"]
  GETTABLEKS R23 R24 K26 ["join"]
  MOVE R24 R3
  LOADK R25 K53 ["StyledDialog"]
  CALL R24 1 1
  NEWTABLE R25 1 0
  DUPTABLE R26 K58 [{"ButtonPadding", "ContentPadding", "ButtonHorizontalAlignment"}]
  LOADN R27 24
  SETTABLEKS R27 R26 K55 ["ButtonPadding"]
  LOADN R27 0
  SETTABLEKS R27 R26 K56 ["ContentPadding"]
  GETIMPORT R27 K60 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R27 R26 K57 ["ButtonHorizontalAlignment"]
  SETTABLEKS R26 R25 K61 ["&CancelDialog"]
  CALL R23 2 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R6 K62 ["DropdownMenu"]
  GETTABLEKS R24 R4 K54 ["Dictionary"]
  GETTABLEKS R23 R24 K26 ["join"]
  MOVE R24 R3
  LOADK R25 K62 ["DropdownMenu"]
  CALL R24 1 1
  NEWTABLE R25 1 0
  DUPTABLE R26 K64 [{"Offset"}]
  GETIMPORT R27 K67 [Vector2.new]
  LOADN R28 244
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K63 ["Offset"]
  SETTABLEKS R26 R25 K68 ["&Search"]
  CALL R23 2 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R18 K69 ["MainBackground"]
  SETTABLEKS R22 R21 K70 ["backgroundColor"]
  DUPTABLE R22 K74 [{"Subtitle", "Normal", "Subtext"}]
  DUPTABLE R23 K77 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R24 K79 [Enum.Font.SourceSans]
  SETTABLEKS R24 R23 K75 ["Font"]
  LOADN R24 22
  SETTABLEKS R24 R23 K48 ["TextSize"]
  GETTABLEKS R24 R18 K80 ["SubText"]
  SETTABLEKS R24 R23 K76 ["TextColor3"]
  SETTABLEKS R23 R22 K71 ["Subtitle"]
  DUPTABLE R23 K77 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R24 K79 [Enum.Font.SourceSans]
  SETTABLEKS R24 R23 K75 ["Font"]
  LOADN R24 20
  SETTABLEKS R24 R23 K48 ["TextSize"]
  GETTABLEKS R24 R18 K44 ["TitlebarText"]
  SETTABLEKS R24 R23 K76 ["TextColor3"]
  SETTABLEKS R23 R22 K72 ["Normal"]
  DUPTABLE R23 K77 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R24 K79 [Enum.Font.SourceSans]
  SETTABLEKS R24 R23 K75 ["Font"]
  LOADN R24 16
  SETTABLEKS R24 R23 K48 ["TextSize"]
  GETTABLEKS R24 R18 K44 ["TitlebarText"]
  SETTABLEKS R24 R23 K76 ["TextColor3"]
  SETTABLEKS R23 R22 K73 ["Subtext"]
  SETTABLEKS R22 R21 K81 ["fontStyle"]
  DUPTABLE R22 K84 [{"padding", "edgePadding"}]
  LOADN R23 25
  SETTABLEKS R23 R22 K82 ["padding"]
  LOADN R23 35
  SETTABLEKS R23 R22 K83 ["edgePadding"]
  SETTABLEKS R22 R21 K85 ["buttonBar"]
  DUPTABLE R22 K88 [{"TitleText", "DescriptionText"}]
  DUPTABLE R23 K77 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R24 K90 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R24 R23 K75 ["Font"]
  LOADN R24 22
  SETTABLEKS R24 R23 K48 ["TextSize"]
  GETTABLEKS R24 R18 K44 ["TitlebarText"]
  SETTABLEKS R24 R23 K76 ["TextColor3"]
  SETTABLEKS R23 R22 K86 ["TitleText"]
  DUPTABLE R23 K77 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R24 K79 [Enum.Font.SourceSans]
  SETTABLEKS R24 R23 K75 ["Font"]
  LOADN R24 18
  SETTABLEKS R24 R23 K48 ["TextSize"]
  GETTABLEKS R24 R18 K44 ["TitlebarText"]
  SETTABLEKS R24 R23 K76 ["TextColor3"]
  SETTABLEKS R23 R22 K87 ["DescriptionText"]
  SETTABLEKS R22 R21 K91 ["confirmTcDialog"]
  DUPTABLE R22 K94 [{"Text", "Size", "Position"}]
  DUPTABLE R23 K77 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R24 K79 [Enum.Font.SourceSans]
  SETTABLEKS R24 R23 K75 ["Font"]
  LOADN R24 24
  SETTABLEKS R24 R23 K48 ["TextSize"]
  GETTABLEKS R24 R18 K44 ["TitlebarText"]
  SETTABLEKS R24 R23 K76 ["TextColor3"]
  SETTABLEKS R23 R22 K92 ["Text"]
  GETIMPORT R23 K67 [Vector2.new]
  LOADN R24 87
  LOADN R25 65
  CALL R23 2 1
  SETTABLEKS R23 R22 K32 ["Size"]
  GETIMPORT R23 K95 [UDim2.new]
  LOADK R24 K96 [0.5]
  LOADN R25 0
  LOADK R26 K96 [0.5]
  LOADN R27 10
  CALL R23 4 1
  SETTABLEKS R23 R22 K93 ["Position"]
  SETTABLEKS R22 R21 K97 ["cancelDialog"]
  DUPTABLE R22 K99 [{"Text", "publishButton"}]
  DUPTABLE R23 K101 [{"Font", "TextSize", "TextColor3", "YOffset"}]
  GETIMPORT R24 K79 [Enum.Font.SourceSans]
  SETTABLEKS R24 R23 K75 ["Font"]
  LOADN R24 20
  SETTABLEKS R24 R23 K48 ["TextSize"]
  GETTABLEKS R24 R18 K102 ["MainText"]
  SETTABLEKS R24 R23 K76 ["TextColor3"]
  LOADN R24 70
  SETTABLEKS R24 R23 K100 ["YOffset"]
  SETTABLEKS R23 R22 K92 ["Text"]
  DUPTABLE R23 K106 [{"offset", "paddingX", "paddingY"}]
  LOADN R24 125
  SETTABLEKS R24 R23 K103 ["offset"]
  LOADN R24 75
  SETTABLEKS R24 R23 K104 ["paddingX"]
  LOADN R24 15
  SETTABLEKS R24 R23 K105 ["paddingY"]
  SETTABLEKS R23 R22 K98 ["publishButton"]
  SETTABLEKS R22 R21 K107 ["saveToRobloxView"]
  DUPTABLE R22 K108 [{"Padding"}]
  LOADN R23 2
  SETTABLEKS R23 R22 K30 ["Padding"]
  SETTABLEKS R22 R21 K109 ["permissionsView"]
  DUPTABLE R22 K111 [{"hover"}]
  GETTABLEKS R23 R18 K112 ["MenuEntryHover"]
  SETTABLEKS R23 R22 K110 ["hover"]
  SETTABLEKS R22 R21 K113 ["menuEntry"]
  DUPTABLE R22 K117 [{"paddingTop", "paddingHorizontal", "ageWarning"}]
  GETIMPORT R23 K119 [UDim.new]
  LOADN R24 0
  LOADN R25 32
  CALL R23 2 1
  SETTABLEKS R23 R22 K114 ["paddingTop"]
  GETIMPORT R23 K119 [UDim.new]
  LOADN R24 0
  LOADN R25 67
  CALL R23 2 1
  SETTABLEKS R23 R22 K115 ["paddingHorizontal"]
  DUPTABLE R23 K121 [{"fontStyle", "Height"}]
  DUPTABLE R24 K77 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R25 K79 [Enum.Font.SourceSans]
  SETTABLEKS R25 R24 K75 ["Font"]
  LOADN R25 16
  SETTABLEKS R25 R24 K48 ["TextSize"]
  GETTABLEKS R25 R18 K102 ["MainText"]
  SETTABLEKS R25 R24 K76 ["TextColor3"]
  SETTABLEKS R24 R23 K81 ["fontStyle"]
  LOADN R24 15
  SETTABLEKS R24 R23 K120 ["Height"]
  SETTABLEKS R23 R22 K116 ["ageWarning"]
  SETTABLEKS R22 R21 K122 ["searchWidget"]
  DUPTABLE R22 K144 [{"border", "borderHover", "borderSelected", "placeholderText", "backgroundColor", "collabTypeTextPosition", "friendsAccessTextPosition", "searchIcon", "friendIcon", "clearButton", "headerHeight", "itemHeight", "ribbonWidth", "thumbnailSize", "thumbnailPaddingLeft", "renderItemTextPadding", "searchBarHeight", "clearButtonIconSize", "textPadding", "nameLabelWidth", "nameHeight", "dropDown"}]
  GETTABLEKS R23 R18 K145 ["Border"]
  SETTABLEKS R23 R22 K123 ["border"]
  GETTABLEKS R23 R18 K146 ["MainButton"]
  SETTABLEKS R23 R22 K124 ["borderHover"]
  GETTABLEKS R23 R18 K146 ["MainButton"]
  SETTABLEKS R23 R22 K125 ["borderSelected"]
  GETTABLEKS R23 R18 K46 ["DimmedText"]
  SETTABLEKS R23 R22 K126 ["placeholderText"]
  GETTABLEKS R23 R18 K147 ["SubBackground2"]
  SETTABLEKS R23 R22 K70 ["backgroundColor"]
  GETIMPORT R23 K95 [UDim2.new]
  LOADN R24 0
  LOADN R25 26
  LOADN R26 0
  LOADN R27 14
  CALL R23 4 1
  SETTABLEKS R23 R22 K127 ["collabTypeTextPosition"]
  GETIMPORT R23 K95 [UDim2.new]
  LOADN R24 1
  LOADN R25 228
  LOADN R26 0
  LOADN R27 14
  CALL R23 4 1
  SETTABLEKS R23 R22 K128 ["friendsAccessTextPosition"]
  GETTABLEKS R23 R18 K80 ["SubText"]
  SETTABLEKS R23 R22 K129 ["searchIcon"]
  DUPTABLE R23 K153 [{"Image", "LabelWidth", "LabelHeight", "FrameWidth", "Width", "Height"}]
  GETTABLEKS R24 R18 K154 ["FriendIcon"]
  SETTABLEKS R24 R23 K148 ["Image"]
  LOADN R24 20
  SETTABLEKS R24 R23 K149 ["LabelWidth"]
  LOADN R24 13
  SETTABLEKS R24 R23 K150 ["LabelHeight"]
  LOADN R24 37
  SETTABLEKS R24 R23 K151 ["FrameWidth"]
  LOADN R24 17
  SETTABLEKS R24 R23 K152 ["Width"]
  LOADN R24 10
  SETTABLEKS R24 R23 K120 ["Height"]
  SETTABLEKS R23 R22 K130 ["friendIcon"]
  DUPTABLE R23 K157 [{"imageSelected", "image"}]
  GETTABLEKS R24 R18 K80 ["SubText"]
  SETTABLEKS R24 R23 K155 ["imageSelected"]
  GETTABLEKS R24 R18 K80 ["SubText"]
  SETTABLEKS R24 R23 K156 ["image"]
  SETTABLEKS R23 R22 K131 ["clearButton"]
  LOADN R23 25
  SETTABLEKS R23 R22 K132 ["headerHeight"]
  LOADN R23 75
  SETTABLEKS R23 R22 K133 ["itemHeight"]
  LOADN R23 5
  SETTABLEKS R23 R22 K134 ["ribbonWidth"]
  LOADN R23 48
  SETTABLEKS R23 R22 K135 ["thumbnailSize"]
  LOADN R23 40
  SETTABLEKS R23 R22 K136 ["thumbnailPaddingLeft"]
  LOADN R23 19
  SETTABLEKS R23 R22 K137 ["renderItemTextPadding"]
  LOADN R23 40
  SETTABLEKS R23 R22 K138 ["searchBarHeight"]
  LOADN R23 32
  SETTABLEKS R23 R22 K139 ["clearButtonIconSize"]
  LOADN R23 16
  SETTABLEKS R23 R22 K140 ["textPadding"]
  LOADN R23 204
  SETTABLEKS R23 R22 K141 ["nameLabelWidth"]
  LOADN R23 55
  SETTABLEKS R23 R22 K142 ["nameHeight"]
  DUPTABLE R23 K166 [{"collaboratorTypeText", "backgroundColor", "itemText", "headerText", "hovered", "item", "selected", "maxHeight", "eligibilityLabelWidth"}]
  DUPTABLE R24 K77 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R25 K79 [Enum.Font.SourceSans]
  SETTABLEKS R25 R24 K75 ["Font"]
  LOADN R25 16
  SETTABLEKS R25 R24 K48 ["TextSize"]
  GETTABLEKS R25 R18 K102 ["MainText"]
  SETTABLEKS R25 R24 K76 ["TextColor3"]
  SETTABLEKS R24 R23 K158 ["collaboratorTypeText"]
  GETTABLEKS R24 R18 K167 ["InputFieldBackground"]
  SETTABLEKS R24 R23 K70 ["backgroundColor"]
  GETTABLEKS R24 R18 K102 ["MainText"]
  SETTABLEKS R24 R23 K159 ["itemText"]
  GETTABLEKS R24 R18 K80 ["SubText"]
  SETTABLEKS R24 R23 K160 ["headerText"]
  DUPTABLE R24 K168 [{"backgroundColor", "itemText"}]
  GETTABLEKS R25 R18 K169 ["Dropdown"]
  SETTABLEKS R25 R24 K70 ["backgroundColor"]
  GETTABLEKS R25 R18 K102 ["MainText"]
  SETTABLEKS R25 R24 K159 ["itemText"]
  SETTABLEKS R24 R23 K161 ["hovered"]
  DUPTABLE R24 K170 [{"offset"}]
  LOADN R25 2
  SETTABLEKS R25 R24 K103 ["offset"]
  SETTABLEKS R24 R23 K162 ["item"]
  DUPTABLE R24 K171 [{"backgroundColor"}]
  GETTABLEKS R25 R18 K172 ["ButtonHover"]
  SETTABLEKS R25 R24 K70 ["backgroundColor"]
  SETTABLEKS R24 R23 K163 ["selected"]
  LOADN R24 169
  SETTABLEKS R24 R23 K164 ["maxHeight"]
  LOADN R24 100
  SETTABLEKS R24 R23 K165 ["eligibilityLabelWidth"]
  SETTABLEKS R23 R22 K143 ["dropDown"]
  SETTABLEKS R22 R21 K173 ["searchBar"]
  DUPTABLE R22 K176 [{"loadingImage", "loadFailureImage"}]
  LOADK R23 K177 ["rbxasset://textures/StudioSharedUI/default_group.png"]
  SETTABLEKS R23 R22 K174 ["loadingImage"]
  LOADK R23 K178 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R23 R22 K175 ["loadFailureImage"]
  SETTABLEKS R22 R21 K179 ["groupThumbnail"]
  DUPTABLE R22 K182 [{"background", "maskImage", "loadingImage", "loadFailureImage"}]
  GETTABLEKS R23 R18 K183 ["TableItem"]
  SETTABLEKS R23 R22 K180 ["background"]
  LOADK R23 K184 ["rbxasset://textures/StudioSharedUI/avatarMask.png"]
  SETTABLEKS R23 R22 K181 ["maskImage"]
  LOADK R23 K185 ["rbxasset://textures/StudioSharedUI/default_user.png"]
  SETTABLEKS R23 R22 K174 ["loadingImage"]
  LOADK R23 K178 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R23 R22 K175 ["loadFailureImage"]
  SETTABLEKS R22 R21 K186 ["subjectThumbnail"]
  DUPTABLE R22 K189 [{"button", "padding", "width"}]
  DUPTABLE R23 K191 [{"height"}]
  LOADN R24 50
  SETTABLEKS R24 R23 K190 ["height"]
  SETTABLEKS R23 R22 K187 ["button"]
  LOADN R23 10
  SETTABLEKS R23 R22 K82 ["padding"]
  LOADN R23 195
  SETTABLEKS R23 R22 K188 ["width"]
  SETTABLEKS R22 R21 K192 ["selectInput"]
  DUPTABLE R22 K196 [{"yPadding", "xPadding", "yPaddingNonOwner"}]
  LOADN R23 47
  SETTABLEKS R23 R22 K193 ["yPadding"]
  LOADN R23 25
  SETTABLEKS R23 R22 K194 ["xPadding"]
  LOADN R23 35
  SETTABLEKS R23 R22 K195 ["yPaddingNonOwner"]
  SETTABLEKS R22 R21 K197 ["scrollingFrame"]
  DUPTABLE R22 K201 [{"boxHeight", "textStyle", "InnerTextPosition"}]
  LOADN R23 45
  SETTABLEKS R23 R22 K198 ["boxHeight"]
  DUPTABLE R23 K77 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R24 K79 [Enum.Font.SourceSans]
  SETTABLEKS R24 R23 K75 ["Font"]
  LOADN R24 16
  SETTABLEKS R24 R23 K48 ["TextSize"]
  GETTABLEKS R24 R18 K44 ["TitlebarText"]
  SETTABLEKS R24 R23 K76 ["TextColor3"]
  SETTABLEKS R23 R22 K199 ["textStyle"]
  GETIMPORT R23 K95 [UDim2.new]
  LOADN R24 0
  LOADN R25 67
  LOADK R26 K96 [0.5]
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K200 ["InnerTextPosition"]
  SETTABLEKS R22 R21 K202 ["saveMessage"]
  DUPTABLE R22 K205 [{"height", "gradientSize", "gradientTransparency", "border"}]
  LOADN R23 65
  SETTABLEKS R23 R22 K190 ["height"]
  LOADN R23 3
  SETTABLEKS R23 R22 K203 ["gradientSize"]
  LOADK R23 K206 [0.9]
  SETTABLEKS R23 R22 K204 ["gradientTransparency"]
  GETTABLEKS R23 R18 K207 ["FooterBorder"]
  SETTABLEKS R23 R22 K123 ["border"]
  SETTABLEKS R22 R21 K208 ["footer"]
  DUPTABLE R22 K218 [{"FadeTransparency", "groupCollaboratorItem", "deleteButton", "permissionEditor", "collaboratorName", "ownerLabel", "iconContainerSize", "nonRolesetFrame", "rolesetFrame"}]
  LOADK R23 K219 [0.75]
  SETTABLEKS R23 R22 K209 ["FadeTransparency"]
  DUPTABLE R23 K225 [{"ExpandTextSize", "size", "collaboratorItemOffset", "expandablePaneSize", "headerComponent"}]
  LOADN R24 14
  SETTABLEKS R24 R23 K220 ["ExpandTextSize"]
  GETIMPORT R24 K95 [UDim2.new]
  LOADN R25 0
  LOADN R26 153
  LOADN R27 0
  LOADN R28 60
  CALL R24 4 1
  SETTABLEKS R24 R23 K221 ["size"]
  LOADN R24 16
  SETTABLEKS R24 R23 K222 ["collaboratorItemOffset"]
  GETIMPORT R24 K95 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  LOADN R28 34
  CALL R24 4 1
  SETTABLEKS R24 R23 K223 ["expandablePaneSize"]
  DUPTABLE R24 K228 [{"size", "arrowLabel", "textLabel"}]
  GETIMPORT R25 K95 [UDim2.new]
  LOADN R26 0
  LOADN R27 96
  LOADN R28 0
  LOADN R29 34
  CALL R25 4 1
  SETTABLEKS R25 R24 K221 ["size"]
  DUPTABLE R25 K230 [{"position", "size"}]
  GETIMPORT R26 K95 [UDim2.new]
  LOADN R27 0
  LOADN R28 42
  LOADK R29 K96 [0.5]
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K229 ["position"]
  GETIMPORT R26 K95 [UDim2.new]
  LOADN R27 0
  LOADN R28 17
  LOADN R29 0
  LOADN R30 17
  CALL R26 4 1
  SETTABLEKS R26 R25 K221 ["size"]
  SETTABLEKS R25 R24 K226 ["arrowLabel"]
  DUPTABLE R25 K231 [{"position"}]
  GETIMPORT R26 K95 [UDim2.new]
  LOADN R27 0
  LOADN R28 60
  LOADK R29 K96 [0.5]
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K229 ["position"]
  SETTABLEKS R25 R24 K227 ["textLabel"]
  SETTABLEKS R24 R23 K224 ["headerComponent"]
  SETTABLEKS R23 R22 K210 ["groupCollaboratorItem"]
  DUPTABLE R23 K233 [{"size", "xOffset", "hovered"}]
  LOADN R24 32
  SETTABLEKS R24 R23 K221 ["size"]
  LOADN R24 6
  SETTABLEKS R24 R23 K232 ["xOffset"]
  GETTABLEKS R24 R18 K169 ["Dropdown"]
  SETTABLEKS R24 R23 K161 ["hovered"]
  SETTABLEKS R23 R22 K211 ["deleteButton"]
  DUPTABLE R23 K236 [{"heightOffset", "yOffset"}]
  LOADN R24 54
  SETTABLEKS R24 R23 K234 ["heightOffset"]
  LOADN R24 11
  SETTABLEKS R24 R23 K235 ["yOffset"]
  SETTABLEKS R23 R22 K212 ["permissionEditor"]
  DUPTABLE R23 K239 [{"withIcon", "withoutIcon"}]
  DUPTABLE R24 K240 [{"size", "xOffset"}]
  GETIMPORT R25 K95 [UDim2.new]
  LOADN R26 1
  LOADN R27 248
  LOADN R28 0
  LOADN R29 54
  CALL R25 4 1
  SETTABLEKS R25 R24 K221 ["size"]
  LOADN R25 72
  SETTABLEKS R25 R24 K232 ["xOffset"]
  SETTABLEKS R24 R23 K237 ["withIcon"]
  NEWTABLE R24 1 1
  GETIMPORT R25 K95 [UDim2.new]
  LOADN R26 1
  LOADN R27 130
  LOADN R28 0
  LOADN R29 54
  CALL R25 4 1
  SETLIST R24 R25 1 [1]
  LOADN R26 50
  SETTABLEKS R26 R24 K232 ["xOffset"]
  SETTABLEKS R24 R23 K238 ["withoutIcon"]
  SETTABLEKS R23 R22 K213 ["collaboratorName"]
  DUPTABLE R23 K243 [{"withIconSize", "withoutIconSize", "position"}]
  GETIMPORT R24 K95 [UDim2.new]
  LOADN R25 1
  LOADN R26 248
  LOADN R27 0
  LOADN R28 54
  CALL R24 4 1
  SETTABLEKS R24 R23 K241 ["withIconSize"]
  GETIMPORT R24 K95 [UDim2.new]
  LOADN R25 1
  LOADN R26 130
  LOADN R27 0
  LOADN R28 54
  CALL R24 4 1
  SETTABLEKS R24 R23 K242 ["withoutIconSize"]
  GETIMPORT R24 K95 [UDim2.new]
  LOADN R25 1
  LOADN R26 249
  LOADK R27 K96 [0.5]
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K229 ["position"]
  SETTABLEKS R23 R22 K214 ["ownerLabel"]
  LOADN R23 40
  SETTABLEKS R23 R22 K215 ["iconContainerSize"]
  DUPTABLE R23 K245 [{"width", "height", "position", "anchorPoint"}]
  LOADN R24 153
  SETTABLEKS R24 R23 K188 ["width"]
  LOADN R24 74
  SETTABLEKS R24 R23 K190 ["height"]
  LOADNIL R24
  SETTABLEKS R24 R23 K229 ["position"]
  LOADNIL R24
  SETTABLEKS R24 R23 K244 ["anchorPoint"]
  SETTABLEKS R23 R22 K216 ["nonRolesetFrame"]
  DUPTABLE R23 K247 [{"width", "height", "position", "anchorPont"}]
  LOADN R24 96
  SETTABLEKS R24 R23 K188 ["width"]
  LOADN R24 54
  SETTABLEKS R24 R23 K190 ["height"]
  GETIMPORT R24 K95 [UDim2.new]
  LOADK R25 K248 [1.5]
  LOADN R26 200
  LOADN R27 0
  LOADN R28 20
  CALL R24 4 1
  SETTABLEKS R24 R23 K229 ["position"]
  GETIMPORT R24 K67 [Vector2.new]
  LOADN R25 1
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K246 ["anchorPont"]
  SETTABLEKS R23 R22 K217 ["rolesetFrame"]
  SETTABLEKS R22 R21 K249 ["collaboratorItem"]
  GETTABLEKS R22 R18 K250 ["CloseWidget"]
  SETTABLEKS R22 R21 K251 ["deleteIcon"]
  DUPTABLE R22 K254 [{"right", "down"}]
  GETTABLEKS R23 R18 K255 ["RightArrow"]
  SETTABLEKS R23 R22 K252 ["right"]
  GETTABLEKS R23 R18 K256 ["DownArrow"]
  SETTABLEKS R23 R22 K253 ["down"]
  SETTABLEKS R22 R21 K257 ["arrows"]
  DUPCLOSURE R22 K258 [PROTO_0]
  CAPTURE VAL R20
  CAPTURE VAL R16
  CAPTURE VAL R18
  CAPTURE VAL R17
  CAPTURE VAL R15
  CAPTURE VAL R21
  RETURN R22 1
