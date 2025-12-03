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
  LOADK R24 K30 ["Collab8818_ShowSearchItemDisplayName"]
  NAMECALL R22 R22 K31 ["GetFastFlag"]
  CALL R22 2 1
  GETIMPORT R23 K29 [game]
  LOADK R25 K32 ["Collab9031_ManageCollaboratorsEarlyFoundationMigration1"]
  NAMECALL R23 R23 K31 ["GetFastFlag"]
  CALL R23 2 1
  JUMPIFNOT R23 [+3]
  GETIMPORT R24 K36 [Enum.Font.BuilderSans]
  JUMP [+2]
  GETIMPORT R24 K38 [Enum.Font.SourceSans]
  JUMPIFNOT R23 [+3]
  GETIMPORT R25 K40 [Enum.Font.BuilderSansMedium]
  JUMP [+2]
  GETIMPORT R25 K42 [Enum.Font.SourceSansSemibold]
  NEWTABLE R26 32 0
  GETTABLEKS R27 R6 K12 ["ExpandablePane"]
  MOVE R28 R21
  GETTABLEKS R30 R6 K12 ["ExpandablePane"]
  GETTABLE R29 R14 R30
  NEWTABLE R30 1 0
  MOVE R31 R21
  MOVE R32 R8
  DUPTABLE R33 K43 [{"Header"}]
  MOVE R34 R21
  MOVE R35 R9
  DUPTABLE R36 K47 [{"Arrow", "HorizontalAlignment", "Padding"}]
  DUPTABLE R37 K49 [{"Size"}]
  GETIMPORT R38 K52 [UDim2.fromOffset]
  LOADN R39 0
  LOADN R40 0
  CALL R38 2 1
  SETTABLEKS R38 R37 K48 ["Size"]
  SETTABLEKS R37 R36 K44 ["Arrow"]
  GETIMPORT R37 K54 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R37 R36 K45 ["HorizontalAlignment"]
  LOADN R37 0
  SETTABLEKS R37 R36 K46 ["Padding"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K15 ["Header"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K55 ["&Arrowless"]
  CALL R28 2 1
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R6 K56 ["SelectInput"]
  MOVE R28 R21
  GETTABLEKS R30 R6 K56 ["SelectInput"]
  GETTABLE R29 R14 R30
  NEWTABLE R30 2 0
  MOVE R31 R21
  MOVE R32 R8
  DUPTABLE R33 K58 [{"PlaceholderTextColor"}]
  GETTABLEKS R34 R18 K59 ["TitlebarText"]
  SETTABLEKS R34 R33 K57 ["PlaceholderTextColor"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K60 ["&Editable"]
  MOVE R31 R21
  MOVE R32 R8
  DUPTABLE R33 K58 [{"PlaceholderTextColor"}]
  GETTABLEKS R34 R18 K61 ["DimmedText"]
  SETTABLEKS R34 R33 K57 ["PlaceholderTextColor"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K62 ["&NonEditable"]
  CALL R28 2 1
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R6 K16 ["Button"]
  MOVE R28 R21
  GETTABLEKS R30 R6 K16 ["Button"]
  GETTABLE R29 R14 R30
  NEWTABLE R30 4 0
  MOVE R31 R21
  MOVE R32 R11
  DUPTABLE R33 K64 [{"Font", "TextSize"}]
  SETTABLEKS R24 R33 K34 ["Font"]
  LOADN R34 24
  SETTABLEKS R34 R33 K63 ["TextSize"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K65 ["&Active"]
  MOVE R31 R21
  MOVE R32 R11
  DUPTABLE R33 K64 [{"Font", "TextSize"}]
  SETTABLEKS R24 R33 K34 ["Font"]
  LOADN R34 24
  SETTABLEKS R34 R33 K63 ["TextSize"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K66 ["&Passive"]
  MOVE R31 R21
  MOVE R32 R12
  DUPTABLE R33 K64 [{"Font", "TextSize"}]
  SETTABLEKS R24 R33 K34 ["Font"]
  LOADN R34 24
  SETTABLEKS R34 R33 K63 ["TextSize"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K67 ["&Cancel"]
  MOVE R31 R21
  MOVE R32 R12
  DUPTABLE R33 K69 [{"Font", "TextSize", "border"}]
  SETTABLEKS R24 R33 K34 ["Font"]
  LOADN R34 22
  SETTABLEKS R34 R33 K63 ["TextSize"]
  GETTABLEKS R34 R18 K70 ["Border"]
  SETTABLEKS R34 R33 K68 ["border"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K71 ["&Pill"]
  CALL R28 2 1
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R6 K72 ["StyledDialog"]
  GETTABLEKS R29 R4 K73 ["Dictionary"]
  GETTABLEKS R28 R29 K27 ["join"]
  MOVE R29 R3
  LOADK R30 K72 ["StyledDialog"]
  CALL R29 1 1
  NEWTABLE R30 2 0
  DUPTABLE R31 K77 [{"Font", "ButtonPadding", "ContentPadding", "ButtonHorizontalAlignment"}]
  GETIMPORT R32 K38 [Enum.Font.SourceSans]
  SETTABLEKS R32 R31 K34 ["Font"]
  LOADN R32 24
  SETTABLEKS R32 R31 K74 ["ButtonPadding"]
  LOADN R32 0
  SETTABLEKS R32 R31 K75 ["ContentPadding"]
  GETIMPORT R32 K79 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R32 R31 K76 ["ButtonHorizontalAlignment"]
  SETTABLEKS R31 R30 K80 ["&CancelDialog"]
  DUPTABLE R31 K77 [{"Font", "ButtonPadding", "ContentPadding", "ButtonHorizontalAlignment"}]
  GETIMPORT R32 K38 [Enum.Font.SourceSans]
  SETTABLEKS R32 R31 K34 ["Font"]
  LOADN R32 24
  SETTABLEKS R32 R31 K74 ["ButtonPadding"]
  LOADN R32 0
  SETTABLEKS R32 R31 K75 ["ContentPadding"]
  GETIMPORT R32 K79 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R32 R31 K76 ["ButtonHorizontalAlignment"]
  SETTABLEKS R31 R30 K81 ["&EnableTeamCreateDialog"]
  CALL R28 2 1
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R6 K82 ["DropdownMenu"]
  GETTABLEKS R29 R4 K73 ["Dictionary"]
  GETTABLEKS R28 R29 K27 ["join"]
  MOVE R29 R3
  LOADK R30 K82 ["DropdownMenu"]
  CALL R29 1 1
  NEWTABLE R30 1 0
  DUPTABLE R31 K85 [{"Offset", "BackgroundColor"}]
  GETIMPORT R32 K88 [Vector2.new]
  LOADN R33 244
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K83 ["Offset"]
  JUMPIFNOT R22 [+3]
  GETTABLEKS R32 R18 K89 ["MainBackground"]
  JUMP [+1]
  LOADNIL R32
  SETTABLEKS R32 R31 K84 ["BackgroundColor"]
  SETTABLEKS R31 R30 K90 ["&Search"]
  CALL R28 2 1
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R18 K89 ["MainBackground"]
  SETTABLEKS R27 R26 K91 ["backgroundColor"]
  DUPTABLE R27 K95 [{"Subtitle", "Normal", "Subtext"}]
  DUPTABLE R28 K97 [{"Font", "TextSize", "TextColor3"}]
  SETTABLEKS R24 R28 K34 ["Font"]
  LOADN R29 22
  SETTABLEKS R29 R28 K63 ["TextSize"]
  GETTABLEKS R29 R18 K98 ["SubText"]
  SETTABLEKS R29 R28 K96 ["TextColor3"]
  SETTABLEKS R28 R27 K92 ["Subtitle"]
  DUPTABLE R28 K97 [{"Font", "TextSize", "TextColor3"}]
  SETTABLEKS R24 R28 K34 ["Font"]
  LOADN R29 20
  SETTABLEKS R29 R28 K63 ["TextSize"]
  GETTABLEKS R29 R18 K59 ["TitlebarText"]
  SETTABLEKS R29 R28 K96 ["TextColor3"]
  SETTABLEKS R28 R27 K93 ["Normal"]
  DUPTABLE R28 K97 [{"Font", "TextSize", "TextColor3"}]
  SETTABLEKS R24 R28 K34 ["Font"]
  LOADN R29 16
  SETTABLEKS R29 R28 K63 ["TextSize"]
  GETTABLEKS R29 R18 K59 ["TitlebarText"]
  SETTABLEKS R29 R28 K96 ["TextColor3"]
  SETTABLEKS R28 R27 K94 ["Subtext"]
  SETTABLEKS R27 R26 K99 ["fontStyle"]
  DUPTABLE R27 K102 [{"padding", "edgePadding"}]
  LOADN R28 10
  SETTABLEKS R28 R27 K100 ["padding"]
  JUMPIFNOT R23 [+2]
  LOADN R28 20
  JUMP [+1]
  LOADN R28 67
  SETTABLEKS R28 R27 K101 ["edgePadding"]
  SETTABLEKS R27 R26 K103 ["buttonBar"]
  DUPTABLE R27 K106 [{"TitleText", "DescriptionText"}]
  DUPTABLE R28 K97 [{"Font", "TextSize", "TextColor3"}]
  SETTABLEKS R25 R28 K34 ["Font"]
  LOADN R29 22
  SETTABLEKS R29 R28 K63 ["TextSize"]
  GETTABLEKS R29 R18 K59 ["TitlebarText"]
  SETTABLEKS R29 R28 K96 ["TextColor3"]
  SETTABLEKS R28 R27 K104 ["TitleText"]
  DUPTABLE R28 K97 [{"Font", "TextSize", "TextColor3"}]
  SETTABLEKS R24 R28 K34 ["Font"]
  LOADN R29 18
  SETTABLEKS R29 R28 K63 ["TextSize"]
  GETTABLEKS R29 R18 K59 ["TitlebarText"]
  SETTABLEKS R29 R28 K96 ["TextColor3"]
  SETTABLEKS R28 R27 K105 ["DescriptionText"]
  SETTABLEKS R27 R26 K107 ["confirmTcDialog"]
  DUPTABLE R27 K110 [{"Text", "Size", "Position"}]
  DUPTABLE R28 K97 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R29 K38 [Enum.Font.SourceSans]
  SETTABLEKS R29 R28 K34 ["Font"]
  LOADN R29 24
  SETTABLEKS R29 R28 K63 ["TextSize"]
  GETTABLEKS R29 R18 K59 ["TitlebarText"]
  SETTABLEKS R29 R28 K96 ["TextColor3"]
  SETTABLEKS R28 R27 K108 ["Text"]
  GETIMPORT R28 K88 [Vector2.new]
  LOADN R29 87
  LOADN R30 65
  CALL R28 2 1
  SETTABLEKS R28 R27 K48 ["Size"]
  GETIMPORT R28 K111 [UDim2.new]
  LOADK R29 K112 [0.5]
  LOADN R30 0
  LOADK R31 K112 [0.5]
  LOADN R32 10
  CALL R28 4 1
  SETTABLEKS R28 R27 K109 ["Position"]
  SETTABLEKS R27 R26 K113 ["cancelDialog"]
  DUPTABLE R27 K110 [{"Text", "Size", "Position"}]
  DUPTABLE R28 K97 [{"Font", "TextSize", "TextColor3"}]
  GETIMPORT R29 K38 [Enum.Font.SourceSans]
  SETTABLEKS R29 R28 K34 ["Font"]
  LOADN R29 24
  SETTABLEKS R29 R28 K63 ["TextSize"]
  GETTABLEKS R29 R18 K59 ["TitlebarText"]
  SETTABLEKS R29 R28 K96 ["TextColor3"]
  SETTABLEKS R28 R27 K108 ["Text"]
  GETIMPORT R28 K88 [Vector2.new]
  LOADN R29 87
  LOADN R30 65
  CALL R28 2 1
  SETTABLEKS R28 R27 K48 ["Size"]
  GETIMPORT R28 K111 [UDim2.new]
  LOADK R29 K112 [0.5]
  LOADN R30 0
  LOADK R31 K112 [0.5]
  LOADN R32 10
  CALL R28 4 1
  SETTABLEKS R28 R27 K109 ["Position"]
  SETTABLEKS R27 R26 K114 ["enableTeamCreateDialog"]
  DUPTABLE R27 K116 [{"Text", "publishButton"}]
  DUPTABLE R28 K118 [{"Font", "TextSize", "TextColor3", "YOffset"}]
  SETTABLEKS R24 R28 K34 ["Font"]
  LOADN R29 20
  SETTABLEKS R29 R28 K63 ["TextSize"]
  GETTABLEKS R29 R18 K119 ["MainText"]
  SETTABLEKS R29 R28 K96 ["TextColor3"]
  LOADN R29 70
  SETTABLEKS R29 R28 K117 ["YOffset"]
  SETTABLEKS R28 R27 K108 ["Text"]
  DUPTABLE R28 K123 [{"offset", "paddingX", "paddingY"}]
  LOADN R29 125
  SETTABLEKS R29 R28 K120 ["offset"]
  LOADN R29 75
  SETTABLEKS R29 R28 K121 ["paddingX"]
  LOADN R29 15
  SETTABLEKS R29 R28 K122 ["paddingY"]
  SETTABLEKS R28 R27 K115 ["publishButton"]
  SETTABLEKS R27 R26 K124 ["saveToRobloxView"]
  DUPTABLE R27 K125 [{"Padding"}]
  JUMPIFNOT R23 [+2]
  LOADN R28 0
  JUMP [+1]
  LOADN R28 2
  SETTABLEKS R28 R27 K46 ["Padding"]
  SETTABLEKS R27 R26 K126 ["permissionsView"]
  DUPTABLE R27 K128 [{"hover"}]
  GETTABLEKS R28 R18 K129 ["MenuEntryHover"]
  SETTABLEKS R28 R27 K127 ["hover"]
  SETTABLEKS R27 R26 K130 ["menuEntry"]
  DUPTABLE R27 K134 [{"paddingTop", "paddingHorizontal", "ageWarning"}]
  JUMPIFNOT R23 [+6]
  GETIMPORT R28 K136 [UDim.new]
  LOADN R29 0
  LOADN R30 5
  CALL R28 2 1
  JUMP [+5]
  GETIMPORT R28 K136 [UDim.new]
  LOADN R29 0
  LOADN R30 32
  CALL R28 2 1
  SETTABLEKS R28 R27 K131 ["paddingTop"]
  JUMPIFNOT R23 [+6]
  GETIMPORT R28 K136 [UDim.new]
  LOADN R29 0
  LOADN R30 15
  CALL R28 2 1
  JUMP [+5]
  GETIMPORT R28 K136 [UDim.new]
  LOADN R29 0
  LOADN R30 67
  CALL R28 2 1
  SETTABLEKS R28 R27 K132 ["paddingHorizontal"]
  DUPTABLE R28 K138 [{"fontStyle", "Height"}]
  DUPTABLE R29 K97 [{"Font", "TextSize", "TextColor3"}]
  SETTABLEKS R24 R29 K34 ["Font"]
  LOADN R30 16
  SETTABLEKS R30 R29 K63 ["TextSize"]
  GETTABLEKS R30 R18 K119 ["MainText"]
  SETTABLEKS R30 R29 K96 ["TextColor3"]
  SETTABLEKS R29 R28 K99 ["fontStyle"]
  LOADN R29 15
  SETTABLEKS R29 R28 K137 ["Height"]
  SETTABLEKS R28 R27 K133 ["ageWarning"]
  SETTABLEKS R27 R26 K139 ["searchWidget"]
  DUPTABLE R27 K160 [{"border", "borderHover", "borderSelected", "placeholderText", "backgroundColor", "collabTypeTextPosition", "friendsAccessTextPosition", "searchIcon", "friendIcon", "clearButton", "headerHeight", "itemHeight", "ribbonWidth", "thumbnailSize", "thumbnailPaddingLeft", "renderItemTextPadding", "searchBarHeight", "clearButtonIconSize", "textPadding", "nameLabelWidth", "nameHeight", "dropDown"}]
  GETTABLEKS R28 R18 K70 ["Border"]
  SETTABLEKS R28 R27 K68 ["border"]
  GETTABLEKS R28 R18 K161 ["DialogMainButton"]
  SETTABLEKS R28 R27 K140 ["borderHover"]
  GETTABLEKS R28 R18 K161 ["DialogMainButton"]
  SETTABLEKS R28 R27 K141 ["borderSelected"]
  GETTABLEKS R28 R18 K61 ["DimmedText"]
  SETTABLEKS R28 R27 K142 ["placeholderText"]
  GETTABLEKS R28 R18 K162 ["SubBackground2"]
  SETTABLEKS R28 R27 K91 ["backgroundColor"]
  GETIMPORT R28 K111 [UDim2.new]
  LOADN R29 0
  LOADN R30 26
  LOADN R31 0
  LOADN R32 14
  CALL R28 4 1
  SETTABLEKS R28 R27 K143 ["collabTypeTextPosition"]
  GETIMPORT R28 K111 [UDim2.new]
  LOADN R29 1
  LOADN R30 228
  LOADN R31 0
  LOADN R32 14
  CALL R28 4 1
  SETTABLEKS R28 R27 K144 ["friendsAccessTextPosition"]
  GETTABLEKS R28 R18 K98 ["SubText"]
  SETTABLEKS R28 R27 K145 ["searchIcon"]
  DUPTABLE R28 K168 [{"Image", "LabelWidth", "LabelHeight", "FrameWidth", "Width", "Height"}]
  GETTABLEKS R29 R18 K169 ["FriendIcon"]
  SETTABLEKS R29 R28 K163 ["Image"]
  LOADN R29 20
  SETTABLEKS R29 R28 K164 ["LabelWidth"]
  LOADN R29 13
  SETTABLEKS R29 R28 K165 ["LabelHeight"]
  LOADN R29 37
  SETTABLEKS R29 R28 K166 ["FrameWidth"]
  LOADN R29 17
  SETTABLEKS R29 R28 K167 ["Width"]
  LOADN R29 10
  SETTABLEKS R29 R28 K137 ["Height"]
  SETTABLEKS R28 R27 K146 ["friendIcon"]
  DUPTABLE R28 K172 [{"imageSelected", "image"}]
  GETTABLEKS R29 R18 K98 ["SubText"]
  SETTABLEKS R29 R28 K170 ["imageSelected"]
  GETTABLEKS R29 R18 K98 ["SubText"]
  SETTABLEKS R29 R28 K171 ["image"]
  SETTABLEKS R28 R27 K147 ["clearButton"]
  LOADN R28 25
  SETTABLEKS R28 R27 K148 ["headerHeight"]
  LOADN R28 75
  SETTABLEKS R28 R27 K149 ["itemHeight"]
  LOADN R28 5
  SETTABLEKS R28 R27 K150 ["ribbonWidth"]
  LOADN R28 48
  SETTABLEKS R28 R27 K151 ["thumbnailSize"]
  LOADN R28 40
  SETTABLEKS R28 R27 K152 ["thumbnailPaddingLeft"]
  LOADN R28 19
  SETTABLEKS R28 R27 K153 ["renderItemTextPadding"]
  LOADN R28 40
  SETTABLEKS R28 R27 K154 ["searchBarHeight"]
  LOADN R28 32
  SETTABLEKS R28 R27 K155 ["clearButtonIconSize"]
  LOADN R28 16
  SETTABLEKS R28 R27 K156 ["textPadding"]
  LOADN R28 204
  SETTABLEKS R28 R27 K157 ["nameLabelWidth"]
  LOADN R28 55
  SETTABLEKS R28 R27 K158 ["nameHeight"]
  DUPTABLE R28 K181 [{"collaboratorTypeText", "backgroundColor", "itemText", "headerText", "hovered", "item", "selected", "maxHeight", "eligibilityLabelWidth"}]
  DUPTABLE R29 K97 [{"Font", "TextSize", "TextColor3"}]
  SETTABLEKS R24 R29 K34 ["Font"]
  LOADN R30 16
  SETTABLEKS R30 R29 K63 ["TextSize"]
  GETTABLEKS R30 R18 K119 ["MainText"]
  SETTABLEKS R30 R29 K96 ["TextColor3"]
  SETTABLEKS R29 R28 K173 ["collaboratorTypeText"]
  GETTABLEKS R29 R18 K182 ["InputFieldBackground"]
  SETTABLEKS R29 R28 K91 ["backgroundColor"]
  GETTABLEKS R29 R18 K119 ["MainText"]
  SETTABLEKS R29 R28 K174 ["itemText"]
  GETTABLEKS R29 R18 K98 ["SubText"]
  SETTABLEKS R29 R28 K175 ["headerText"]
  DUPTABLE R29 K183 [{"backgroundColor", "itemText"}]
  GETTABLEKS R30 R18 K184 ["Dropdown"]
  SETTABLEKS R30 R29 K91 ["backgroundColor"]
  GETTABLEKS R30 R18 K119 ["MainText"]
  SETTABLEKS R30 R29 K174 ["itemText"]
  SETTABLEKS R29 R28 K176 ["hovered"]
  DUPTABLE R29 K185 [{"offset"}]
  LOADN R30 2
  SETTABLEKS R30 R29 K120 ["offset"]
  SETTABLEKS R29 R28 K177 ["item"]
  DUPTABLE R29 K186 [{"backgroundColor"}]
  GETTABLEKS R30 R18 K187 ["ButtonHover"]
  SETTABLEKS R30 R29 K91 ["backgroundColor"]
  SETTABLEKS R29 R28 K178 ["selected"]
  LOADN R29 169
  SETTABLEKS R29 R28 K179 ["maxHeight"]
  LOADN R29 100
  SETTABLEKS R29 R28 K180 ["eligibilityLabelWidth"]
  SETTABLEKS R28 R27 K159 ["dropDown"]
  SETTABLEKS R27 R26 K188 ["searchBar"]
  DUPTABLE R27 K191 [{"loadingImage", "loadFailureImage"}]
  LOADK R28 K192 ["rbxasset://textures/StudioSharedUI/default_group.png"]
  SETTABLEKS R28 R27 K189 ["loadingImage"]
  LOADK R28 K193 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R28 R27 K190 ["loadFailureImage"]
  SETTABLEKS R27 R26 K194 ["groupThumbnail"]
  DUPTABLE R27 K197 [{"background", "maskImage", "loadingImage", "loadFailureImage"}]
  GETTABLEKS R28 R18 K198 ["TableItem"]
  SETTABLEKS R28 R27 K195 ["background"]
  LOADK R28 K199 ["rbxasset://textures/StudioSharedUI/avatarMask.png"]
  SETTABLEKS R28 R27 K196 ["maskImage"]
  LOADK R28 K200 ["rbxasset://textures/StudioSharedUI/default_user.png"]
  SETTABLEKS R28 R27 K189 ["loadingImage"]
  LOADK R28 K193 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
  SETTABLEKS R28 R27 K190 ["loadFailureImage"]
  SETTABLEKS R27 R26 K201 ["subjectThumbnail"]
  DUPTABLE R27 K202 [{"Image"}]
  LOADK R28 K203 ["rbxasset://textures/ManageCollaborators/OrgRoleIcon_mask.png"]
  SETTABLEKS R28 R27 K163 ["Image"]
  SETTABLEKS R27 R26 K204 ["orgRoleThumbnail"]
  DUPTABLE R27 K207 [{"button", "padding", "width"}]
  DUPTABLE R28 K209 [{"height"}]
  LOADN R29 50
  SETTABLEKS R29 R28 K208 ["height"]
  SETTABLEKS R28 R27 K205 ["button"]
  LOADN R28 10
  SETTABLEKS R28 R27 K100 ["padding"]
  JUMPIFNOT R23 [+2]
  LOADN R28 210
  JUMP [+1]
  LOADN R28 8
  SETTABLEKS R28 R27 K206 ["width"]
  SETTABLEKS R27 R26 K210 ["selectInput"]
  DUPTABLE R27 K214 [{"yPadding", "xPadding", "yPaddingNonOwner"}]
  JUMPIFNOT R23 [+2]
  LOADN R28 20
  JUMP [+1]
  LOADN R28 47
  SETTABLEKS R28 R27 K211 ["yPadding"]
  LOADN R28 25
  SETTABLEKS R28 R27 K212 ["xPadding"]
  LOADN R28 35
  SETTABLEKS R28 R27 K213 ["yPaddingNonOwner"]
  SETTABLEKS R27 R26 K215 ["scrollingFrame"]
  DUPTABLE R27 K219 [{"boxHeight", "textStyle", "InnerTextPosition"}]
  LOADN R28 45
  SETTABLEKS R28 R27 K216 ["boxHeight"]
  DUPTABLE R28 K97 [{"Font", "TextSize", "TextColor3"}]
  SETTABLEKS R24 R28 K34 ["Font"]
  LOADN R29 16
  SETTABLEKS R29 R28 K63 ["TextSize"]
  GETTABLEKS R29 R18 K59 ["TitlebarText"]
  SETTABLEKS R29 R28 K96 ["TextColor3"]
  SETTABLEKS R28 R27 K217 ["textStyle"]
  GETIMPORT R28 K111 [UDim2.new]
  LOADN R29 0
  LOADN R30 67
  LOADK R31 K112 [0.5]
  LOADN R32 0
  CALL R28 4 1
  SETTABLEKS R28 R27 K218 ["InnerTextPosition"]
  SETTABLEKS R27 R26 K220 ["saveMessage"]
  DUPTABLE R27 K223 [{"height", "paddingTop", "paddingLeft", "paddingRight"}]
  JUMPIFNOT R23 [+2]
  LOADN R28 50
  JUMP [+1]
  LOADN R28 98
  SETTABLEKS R28 R27 K208 ["height"]
  JUMPIFNOT R23 [+6]
  GETIMPORT R28 K136 [UDim.new]
  LOADN R29 0
  LOADN R30 20
  CALL R28 2 1
  JUMP [+5]
  GETIMPORT R28 K136 [UDim.new]
  LOADN R29 0
  LOADN R30 26
  CALL R28 2 1
  SETTABLEKS R28 R27 K131 ["paddingTop"]
  GETIMPORT R28 K136 [UDim.new]
  LOADN R29 0
  LOADN R30 67
  CALL R28 2 1
  SETTABLEKS R28 R27 K221 ["paddingLeft"]
  JUMPIFNOT R23 [+6]
  GETIMPORT R28 K136 [UDim.new]
  LOADN R29 0
  LOADN R30 22
  CALL R28 2 1
  JUMP [+5]
  GETIMPORT R28 K136 [UDim.new]
  LOADN R29 0
  LOADN R30 75
  CALL R28 2 1
  SETTABLEKS R28 R27 K222 ["paddingRight"]
  SETTABLEKS R27 R26 K224 ["header"]
  DUPTABLE R27 K228 [{"font", "textSize", "textColor3"}]
  SETTABLEKS R24 R27 K225 ["font"]
  LOADN R28 40
  SETTABLEKS R28 R27 K226 ["textSize"]
  GETTABLEKS R28 R18 K59 ["TitlebarText"]
  SETTABLEKS R28 R27 K227 ["textColor3"]
  SETTABLEKS R27 R26 K229 ["title"]
  DUPTABLE R27 K230 [{"font", "textSize", "textColor3", "width"}]
  SETTABLEKS R24 R27 K225 ["font"]
  LOADN R28 24
  SETTABLEKS R28 R27 K226 ["textSize"]
  GETTABLEKS R28 R18 K59 ["TitlebarText"]
  SETTABLEKS R28 R27 K227 ["textColor3"]
  LOADN R28 175
  SETTABLEKS R28 R27 K206 ["width"]
  SETTABLEKS R27 R26 K231 ["copyLinkButton"]
  DUPTABLE R27 K234 [{"height", "gradientSize", "gradientTransparency", "border"}]
  JUMPIFNOT R23 [+2]
  LOADN R28 60
  JUMP [+1]
  LOADN R28 65
  SETTABLEKS R28 R27 K208 ["height"]
  LOADN R28 3
  SETTABLEKS R28 R27 K232 ["gradientSize"]
  LOADK R28 K235 [0.9]
  SETTABLEKS R28 R27 K233 ["gradientTransparency"]
  JUMPIFNOT R23 [+3]
  GETTABLEKS R28 R18 K70 ["Border"]
  JUMP [+2]
  GETTABLEKS R28 R18 K236 ["FooterBorder"]
  SETTABLEKS R28 R27 K68 ["border"]
  SETTABLEKS R27 R26 K237 ["footer"]
  DUPTABLE R27 K240 [{"paddingHorizontal", "size", "pills"}]
  JUMPIFNOT R23 [+6]
  GETIMPORT R28 K136 [UDim.new]
  LOADN R29 0
  LOADN R30 20
  CALL R28 2 1
  JUMP [+5]
  GETIMPORT R28 K136 [UDim.new]
  LOADN R29 0
  LOADN R30 67
  CALL R28 2 1
  SETTABLEKS R28 R27 K132 ["paddingHorizontal"]
  GETIMPORT R28 K111 [UDim2.new]
  LOADN R29 1
  LOADN R30 0
  LOADN R31 0
  LOADN R32 30
  CALL R28 4 1
  SETTABLEKS R28 R27 K238 ["size"]
  DUPTABLE R28 K241 [{"paddingHorizontal", "size"}]
  GETIMPORT R29 K136 [UDim.new]
  LOADN R30 0
  LOADN R31 8
  CALL R29 2 1
  SETTABLEKS R29 R28 K132 ["paddingHorizontal"]
  GETIMPORT R29 K111 [UDim2.new]
  LOADN R30 0
  LOADN R31 100
  LOADN R32 1
  LOADN R33 0
  CALL R29 4 1
  SETTABLEKS R29 R28 K238 ["size"]
  SETTABLEKS R28 R27 K239 ["pills"]
  SETTABLEKS R27 R26 K242 ["collaboratorFilter"]
  DUPTABLE R27 K253 [{"FadeTransparency", "groupCollaboratorItem", "deleteButton", "permissionEditor", "collaboratorName", "collaboratorSubText", "ownerLabel", "iconContainerSize", "nonRolesetFrame", "rolesetFrame"}]
  LOADK R28 K254 [0.75]
  SETTABLEKS R28 R27 K243 ["FadeTransparency"]
  DUPTABLE R28 K259 [{"ExpandTextSize", "size", "collaboratorItemOffset", "expandablePaneSize", "headerComponent"}]
  LOADN R29 14
  SETTABLEKS R29 R28 K255 ["ExpandTextSize"]
  JUMPIFNOT R23 [+8]
  GETIMPORT R29 K111 [UDim2.new]
  LOADN R30 0
  LOADN R31 238
  LOADN R32 0
  LOADN R33 60
  CALL R29 4 1
  JUMP [+7]
  GETIMPORT R29 K111 [UDim2.new]
  LOADN R30 0
  LOADN R31 153
  LOADN R32 0
  LOADN R33 74
  CALL R29 4 1
  SETTABLEKS R29 R28 K238 ["size"]
  LOADN R29 16
  SETTABLEKS R29 R28 K256 ["collaboratorItemOffset"]
  GETIMPORT R29 K111 [UDim2.new]
  LOADN R30 1
  LOADN R31 0
  LOADN R32 0
  LOADN R33 34
  CALL R29 4 1
  SETTABLEKS R29 R28 K257 ["expandablePaneSize"]
  DUPTABLE R29 K262 [{"size", "arrowLabel", "textLabel"}]
  GETIMPORT R30 K111 [UDim2.new]
  LOADN R31 0
  LOADN R32 96
  LOADN R33 0
  LOADN R34 34
  CALL R30 4 1
  SETTABLEKS R30 R29 K238 ["size"]
  DUPTABLE R30 K264 [{"position", "size"}]
  GETIMPORT R31 K111 [UDim2.new]
  LOADN R32 0
  LOADN R33 42
  LOADK R34 K112 [0.5]
  LOADN R35 0
  CALL R31 4 1
  SETTABLEKS R31 R30 K263 ["position"]
  GETIMPORT R31 K111 [UDim2.new]
  LOADN R32 0
  LOADN R33 17
  LOADN R34 0
  LOADN R35 17
  CALL R31 4 1
  SETTABLEKS R31 R30 K238 ["size"]
  SETTABLEKS R30 R29 K260 ["arrowLabel"]
  DUPTABLE R30 K265 [{"position"}]
  GETIMPORT R31 K111 [UDim2.new]
  LOADN R32 0
  LOADN R33 60
  LOADK R34 K112 [0.5]
  LOADN R35 0
  CALL R31 4 1
  SETTABLEKS R31 R30 K263 ["position"]
  SETTABLEKS R30 R29 K261 ["textLabel"]
  SETTABLEKS R29 R28 K258 ["headerComponent"]
  SETTABLEKS R28 R27 K244 ["groupCollaboratorItem"]
  DUPTABLE R28 K267 [{"size", "xOffset", "hovered"}]
  LOADN R29 16
  SETTABLEKS R29 R28 K238 ["size"]
  LOADN R29 6
  SETTABLEKS R29 R28 K266 ["xOffset"]
  GETTABLEKS R29 R18 K184 ["Dropdown"]
  SETTABLEKS R29 R28 K176 ["hovered"]
  SETTABLEKS R28 R27 K245 ["deleteButton"]
  DUPTABLE R28 K270 [{"heightOffset", "yOffset"}]
  LOADN R29 54
  SETTABLEKS R29 R28 K268 ["heightOffset"]
  LOADN R29 11
  SETTABLEKS R29 R28 K269 ["yOffset"]
  SETTABLEKS R28 R27 K246 ["permissionEditor"]
  DUPTABLE R28 K275 [{"withIcon", "withoutIcon", "withSubtext", "withoutSubtext"}]
  DUPTABLE R29 K277 [{"withSubText", "size", "xOffset"}]
  DUPTABLE R30 K278 [{"size"}]
  GETIMPORT R31 K111 [UDim2.new]
  LOADN R32 1
  LOADN R33 248
  LOADN R34 0
  LOADN R35 30
  CALL R31 4 1
  SETTABLEKS R31 R30 K238 ["size"]
  SETTABLEKS R30 R29 K276 ["withSubText"]
  GETIMPORT R30 K111 [UDim2.new]
  LOADN R31 1
  LOADN R32 248
  LOADN R33 0
  LOADN R34 54
  CALL R30 4 1
  SETTABLEKS R30 R29 K238 ["size"]
  LOADN R30 50
  SETTABLEKS R30 R29 K266 ["xOffset"]
  SETTABLEKS R29 R28 K271 ["withIcon"]
  NEWTABLE R29 2 1
  DUPTABLE R31 K278 [{"size"}]
  GETIMPORT R32 K111 [UDim2.new]
  LOADN R33 1
  LOADN R34 248
  LOADN R35 0
  LOADN R36 30
  CALL R32 4 1
  SETTABLEKS R32 R31 K238 ["size"]
  SETTABLEKS R31 R29 K276 ["withSubText"]
  GETIMPORT R30 K111 [UDim2.new]
  LOADN R31 1
  LOADN R32 130
  LOADN R33 0
  LOADN R34 54
  CALL R30 4 1
  SETLIST R29 R30 1 [1]
  LOADN R31 28
  SETTABLEKS R31 R29 K266 ["xOffset"]
  SETTABLEKS R29 R28 K272 ["withoutIcon"]
  DUPTABLE R29 K279 [{"yOffset"}]
  LOADN R30 246
  SETTABLEKS R30 R29 K269 ["yOffset"]
  SETTABLEKS R29 R28 K273 ["withSubtext"]
  DUPTABLE R29 K279 [{"yOffset"}]
  LOADN R30 0
  SETTABLEKS R30 R29 K269 ["yOffset"]
  SETTABLEKS R29 R28 K274 ["withoutSubtext"]
  SETTABLEKS R28 R27 K247 ["collaboratorName"]
  DUPTABLE R28 K280 [{"withIcon", "withoutIcon", "yOffset"}]
  DUPTABLE R29 K281 [{"size", "xOffset"}]
  GETIMPORT R30 K111 [UDim2.new]
  LOADN R31 1
  LOADN R32 248
  LOADN R33 0
  LOADN R34 24
  CALL R30 4 1
  SETTABLEKS R30 R29 K238 ["size"]
  LOADN R30 50
  SETTABLEKS R30 R29 K266 ["xOffset"]
  SETTABLEKS R29 R28 K271 ["withIcon"]
  NEWTABLE R29 1 1
  GETIMPORT R30 K111 [UDim2.new]
  LOADN R31 1
  LOADN R32 130
  LOADN R33 0
  LOADN R34 24
  CALL R30 4 1
  SETLIST R29 R30 1 [1]
  LOADN R31 28
  SETTABLEKS R31 R29 K266 ["xOffset"]
  SETTABLEKS R29 R28 K272 ["withoutIcon"]
  LOADN R29 10
  SETTABLEKS R29 R28 K269 ["yOffset"]
  SETTABLEKS R28 R27 K248 ["collaboratorSubText"]
  DUPTABLE R28 K284 [{"withIconSize", "withoutIconSize", "position"}]
  GETIMPORT R29 K111 [UDim2.new]
  LOADN R30 1
  LOADN R31 248
  LOADN R32 0
  LOADN R33 54
  CALL R29 4 1
  SETTABLEKS R29 R28 K282 ["withIconSize"]
  GETIMPORT R29 K111 [UDim2.new]
  LOADN R30 1
  LOADN R31 130
  LOADN R32 0
  LOADN R33 54
  CALL R29 4 1
  SETTABLEKS R29 R28 K283 ["withoutIconSize"]
  GETIMPORT R29 K111 [UDim2.new]
  LOADN R30 1
  LOADN R31 249
  LOADK R32 K112 [0.5]
  LOADN R33 0
  CALL R29 4 1
  SETTABLEKS R29 R28 K263 ["position"]
  SETTABLEKS R28 R27 K249 ["ownerLabel"]
  LOADN R28 40
  SETTABLEKS R28 R27 K250 ["iconContainerSize"]
  DUPTABLE R28 K286 [{"width", "height", "position", "anchorPoint"}]
  JUMPIFNOT R23 [+2]
  LOADN R29 238
  JUMP [+1]
  LOADN R29 153
  SETTABLEKS R29 R28 K206 ["width"]
  LOADN R29 74
  SETTABLEKS R29 R28 K208 ["height"]
  LOADNIL R29
  SETTABLEKS R29 R28 K263 ["position"]
  LOADNIL R29
  SETTABLEKS R29 R28 K285 ["anchorPoint"]
  SETTABLEKS R28 R27 K251 ["nonRolesetFrame"]
  DUPTABLE R28 K288 [{"width", "height", "position", "anchorPont"}]
  JUMPIFNOT R23 [+2]
  LOADN R29 238
  JUMP [+1]
  LOADN R29 96
  SETTABLEKS R29 R28 K206 ["width"]
  LOADN R29 54
  SETTABLEKS R29 R28 K208 ["height"]
  GETIMPORT R29 K111 [UDim2.new]
  LOADK R30 K33 ["Enum"]
  LOADN R31 200
  LOADN R32 0
  LOADN R33 20
  CALL R29 4 1
  SETTABLEKS R29 R28 K263 ["position"]
  GETIMPORT R29 K88 [Vector2.new]
  LOADN R30 1
  LOADN R31 0
  CALL R29 2 1
  SETTABLEKS R29 R28 K287 ["anchorPont"]
  SETTABLEKS R28 R27 K252 ["rolesetFrame"]
  SETTABLEKS R27 R26 K290 ["collaboratorItem"]
  GETTABLEKS R27 R18 K291 ["CloseWidget"]
  SETTABLEKS R27 R26 K292 ["deleteIcon"]
  DUPTABLE R27 K295 [{"right", "down"}]
  GETTABLEKS R28 R18 K296 ["RightArrow"]
  SETTABLEKS R28 R27 K293 ["right"]
  GETTABLEKS R28 R18 K297 ["DownArrow"]
  SETTABLEKS R28 R27 K294 ["down"]
  SETTABLEKS R27 R26 K298 ["arrows"]
  DUPCLOSURE R27 K299 [PROTO_0]
  CAPTURE VAL R21
  CAPTURE VAL R16
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R17
  CAPTURE VAL R15
  CAPTURE VAL R26
  RETURN R27 1
