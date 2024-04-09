PROTO_0:
  LOADNIL R1
  JUMPIFNOT R0 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["mock"]
  GETUPVAL R3 1
  CALL R2 1 1
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
  LOADK R2 K2 ["MaterialPicker"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["MaterialFramework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R8 R0 K6 ["Packages"]
  GETTABLEKS R7 R8 K9 ["_Index"]
  GETTABLEKS R6 R7 K10 ["DeveloperFramework"]
  GETTABLEKS R5 R6 K10 ["DeveloperFramework"]
  GETTABLEKS R4 R5 K11 ["Types"]
  CALL R3 1 1
  GETTABLEKS R5 R1 K12 ["Resources"]
  GETTABLEKS R4 R5 K13 ["Theme"]
  GETTABLEKS R6 R2 K14 ["Style"]
  GETTABLEKS R5 R6 K15 ["StyleKey"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K16 ["Src"]
  GETTABLEKS R8 R9 K17 ["Flags"]
  GETTABLEKS R7 R8 K18 ["getFFlagEnableMaterialGenerator"]
  CALL R6 1 1
  GETIMPORT R7 K21 [string.format]
  LOADK R8 K22 ["rbxasset://studio_svg_textures/Shared/Modeling/%s/Large/Material.png"]
  LOADK R9 K23 ["Light"]
  CALL R7 2 1
  GETIMPORT R8 K21 [string.format]
  LOADK R9 K22 ["rbxasset://studio_svg_textures/Shared/Modeling/%s/Large/Material.png"]
  LOADK R10 K24 ["Dark"]
  CALL R8 2 1
  GETIMPORT R9 K21 [string.format]
  LOADK R10 K25 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/Grid.png"]
  LOADK R11 K23 ["Light"]
  CALL R9 2 1
  GETIMPORT R10 K21 [string.format]
  LOADK R11 K25 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/Grid.png"]
  LOADK R12 K24 ["Dark"]
  CALL R10 2 1
  GETIMPORT R11 K21 [string.format]
  LOADK R12 K26 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/List.png"]
  LOADK R13 K23 ["Light"]
  CALL R11 2 1
  GETIMPORT R12 K21 [string.format]
  LOADK R13 K26 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/List.png"]
  LOADK R14 K24 ["Dark"]
  CALL R12 2 1
  GETIMPORT R13 K21 [string.format]
  LOADK R14 K27 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/AddNoBorder.png"]
  LOADK R15 K23 ["Light"]
  CALL R13 2 1
  GETIMPORT R14 K21 [string.format]
  LOADK R15 K27 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/AddNoBorder.png"]
  LOADK R16 K24 ["Dark"]
  CALL R14 2 1
  NEWTABLE R15 16 0
  GETTABLEKS R16 R5 K28 ["MaterialGeneratorButtonIcon"]
  SETTABLE R14 R15 R16
  GETTABLEKS R16 R5 K29 ["MaterialManagerButtonIcon"]
  SETTABLE R8 R15 R16
  GETTABLEKS R16 R5 K30 ["ViewToggleButtonGridIcon"]
  SETTABLE R10 R15 R16
  GETTABLEKS R16 R5 K31 ["ViewToggleButtonListIcon"]
  SETTABLE R12 R15 R16
  GETTABLEKS R16 R5 K32 ["FilterChipTextColor"]
  GETIMPORT R17 K35 [Color3.fromHex]
  LOADK R18 K36 ["FFFFFF"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R5 K37 ["FilterChipBorderColor"]
  GETIMPORT R17 K35 [Color3.fromHex]
  LOADK R18 K38 ["262626"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R5 K39 ["FilterChipInactiveBackgroundColor"]
  GETIMPORT R17 K35 [Color3.fromHex]
  LOADK R18 K40 ["3C3C3C"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R5 K41 ["FilterChipInactiveHoverBackgroundColor"]
  GETIMPORT R17 K35 [Color3.fromHex]
  LOADK R18 K42 ["424242"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R5 K43 ["FilterChipActiveBackgroundColor"]
  GETIMPORT R17 K35 [Color3.fromHex]
  LOADK R18 K44 ["1A1A1A"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R5 K45 ["FilterChipActiveHoverBackgroundColor"]
  GETIMPORT R17 K35 [Color3.fromHex]
  LOADK R18 K46 ["252525"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  NEWTABLE R16 16 0
  GETTABLEKS R17 R5 K28 ["MaterialGeneratorButtonIcon"]
  SETTABLE R13 R16 R17
  GETTABLEKS R17 R5 K29 ["MaterialManagerButtonIcon"]
  SETTABLE R7 R16 R17
  GETTABLEKS R17 R5 K30 ["ViewToggleButtonGridIcon"]
  SETTABLE R9 R16 R17
  GETTABLEKS R17 R5 K31 ["ViewToggleButtonListIcon"]
  SETTABLE R11 R16 R17
  GETTABLEKS R17 R5 K32 ["FilterChipTextColor"]
  GETIMPORT R18 K35 [Color3.fromHex]
  LOADK R19 K47 ["000000"]
  CALL R18 1 1
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R5 K37 ["FilterChipBorderColor"]
  GETIMPORT R18 K35 [Color3.fromHex]
  LOADK R19 K48 ["B6B6B6"]
  CALL R18 1 1
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R5 K39 ["FilterChipInactiveBackgroundColor"]
  GETIMPORT R18 K35 [Color3.fromHex]
  LOADK R19 K36 ["FFFFFF"]
  CALL R18 1 1
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R5 K41 ["FilterChipInactiveHoverBackgroundColor"]
  GETIMPORT R18 K35 [Color3.fromHex]
  LOADK R19 K49 ["E4EEFE"]
  CALL R18 1 1
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R5 K43 ["FilterChipActiveBackgroundColor"]
  GETIMPORT R18 K35 [Color3.fromHex]
  LOADK R19 K50 ["A8A8A8"]
  CALL R18 1 1
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R5 K45 ["FilterChipActiveHoverBackgroundColor"]
  GETIMPORT R18 K35 [Color3.fromHex]
  LOADK R19 K51 ["D8E6FF"]
  CALL R18 1 1
  SETTABLE R18 R16 R17
  MOVE R18 R6
  CALL R18 0 1
  JUMPIFNOT R18 [+2]
  LOADN R17 32
  JUMP [+1]
  LOADN R17 0
  LOADN R19 60
  ADD R18 R19 R17
  DUPTABLE R19 K61 [{"Popup", "MainView", "PrimaryTools", "SearchBar", "ViewToggle", "MaterialGeneratorButton", "MaterialManagerButton", "Filters", "Footer"}]
  DUPTABLE R20 K63 [{"Size"}]
  GETIMPORT R21 K66 [Vector2.new]
  LOADN R22 8
  MOVE R23 R18
  CALL R21 2 1
  SETTABLEKS R21 R20 K62 ["Size"]
  SETTABLEKS R20 R19 K52 ["Popup"]
  DUPTABLE R20 K69 [{"Padding", "ScrollBarThickness"}]
  LOADN R21 10
  SETTABLEKS R21 R20 K67 ["Padding"]
  LOADN R21 8
  SETTABLEKS R21 R20 K68 ["ScrollBarThickness"]
  SETTABLEKS R20 R19 K53 ["MainView"]
  DUPTABLE R20 K71 [{"Size", "Spacing", "Padding"}]
  GETIMPORT R21 K73 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 0
  LOADN R25 32
  CALL R21 4 1
  SETTABLEKS R21 R20 K62 ["Size"]
  LOADN R21 2
  SETTABLEKS R21 R20 K70 ["Spacing"]
  DUPTABLE R21 K78 [{"Top", "Right", "Bottom", "Left"}]
  LOADN R22 4
  SETTABLEKS R22 R21 K74 ["Top"]
  LOADN R22 8
  SETTABLEKS R22 R21 K75 ["Right"]
  LOADN R22 4
  SETTABLEKS R22 R21 K76 ["Bottom"]
  LOADN R22 8
  SETTABLEKS R22 R21 K77 ["Left"]
  SETTABLEKS R21 R20 K67 ["Padding"]
  SETTABLEKS R20 R19 K54 ["PrimaryTools"]
  DUPTABLE R20 K63 [{"Size"}]
  GETIMPORT R21 K73 [UDim2.new]
  LOADN R22 1
  LOADN R23 212
  LOADN R24 1
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K62 ["Size"]
  SETTABLEKS R20 R19 K55 ["SearchBar"]
  DUPTABLE R20 K81 [{"Size", "LeftIconGrid", "LeftIconList"}]
  GETIMPORT R21 K73 [UDim2.new]
  LOADN R22 0
  LOADN R23 22
  LOADN R24 0
  LOADN R25 22
  CALL R21 4 1
  SETTABLEKS R21 R20 K62 ["Size"]
  GETTABLEKS R21 R5 K30 ["ViewToggleButtonGridIcon"]
  SETTABLEKS R21 R20 K79 ["LeftIconGrid"]
  GETTABLEKS R21 R5 K31 ["ViewToggleButtonListIcon"]
  SETTABLEKS R21 R20 K80 ["LeftIconList"]
  SETTABLEKS R20 R19 K56 ["ViewToggle"]
  DUPTABLE R20 K86 [{"ActiveBackgroundColor", "BackgroundColor", "IconSize", "LeftIcon", "Padding", "Size"}]
  GETTABLEKS R21 R5 K87 ["BackgroundDefault"]
  SETTABLEKS R21 R20 K82 ["ActiveBackgroundColor"]
  GETTABLEKS R21 R5 K88 ["Button"]
  SETTABLEKS R21 R20 K83 ["BackgroundColor"]
  LOADN R21 10
  SETTABLEKS R21 R20 K84 ["IconSize"]
  GETTABLEKS R21 R5 K28 ["MaterialGeneratorButtonIcon"]
  SETTABLEKS R21 R20 K85 ["LeftIcon"]
  LOADN R21 50
  SETTABLEKS R21 R20 K67 ["Padding"]
  GETIMPORT R21 K73 [UDim2.new]
  LOADN R22 1
  LOADN R23 248
  LOADN R24 0
  LOADN R25 26
  CALL R21 4 1
  SETTABLEKS R21 R20 K62 ["Size"]
  SETTABLEKS R20 R19 K57 ["MaterialGeneratorButton"]
  DUPTABLE R20 K89 [{"ActiveBackgroundColor", "LeftIcon", "Size"}]
  GETTABLEKS R21 R5 K87 ["BackgroundDefault"]
  SETTABLEKS R21 R20 K82 ["ActiveBackgroundColor"]
  GETTABLEKS R21 R5 K29 ["MaterialManagerButtonIcon"]
  SETTABLEKS R21 R20 K85 ["LeftIcon"]
  GETIMPORT R21 K73 [UDim2.new]
  LOADN R22 0
  LOADN R23 22
  LOADN R24 0
  LOADN R25 22
  CALL R21 4 1
  SETTABLEKS R21 R20 K62 ["Size"]
  SETTABLEKS R20 R19 K58 ["MaterialManagerButton"]
  DUPTABLE R20 K97 [{"Size", "ChipSize", "TextColor", "BorderColor", "InactiveBackgroundColor", "InactiveHoverBackgroundColor", "ActiveBackgroundColor", "ActiveHoverBackgroundColor", "TextSize"}]
  GETIMPORT R21 K73 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 0
  LOADN R25 28
  CALL R21 4 1
  SETTABLEKS R21 R20 K62 ["Size"]
  GETIMPORT R21 K73 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 0
  LOADN R25 22
  CALL R21 4 1
  SETTABLEKS R21 R20 K90 ["ChipSize"]
  GETTABLEKS R21 R5 K32 ["FilterChipTextColor"]
  SETTABLEKS R21 R20 K91 ["TextColor"]
  GETTABLEKS R21 R5 K37 ["FilterChipBorderColor"]
  SETTABLEKS R21 R20 K92 ["BorderColor"]
  GETTABLEKS R21 R5 K39 ["FilterChipInactiveBackgroundColor"]
  SETTABLEKS R21 R20 K93 ["InactiveBackgroundColor"]
  GETTABLEKS R21 R5 K41 ["FilterChipInactiveHoverBackgroundColor"]
  SETTABLEKS R21 R20 K94 ["InactiveHoverBackgroundColor"]
  GETTABLEKS R21 R5 K43 ["FilterChipActiveBackgroundColor"]
  SETTABLEKS R21 R20 K82 ["ActiveBackgroundColor"]
  GETTABLEKS R21 R5 K45 ["FilterChipActiveHoverBackgroundColor"]
  SETTABLEKS R21 R20 K95 ["ActiveHoverBackgroundColor"]
  LOADN R21 14
  SETTABLEKS R21 R20 K96 ["TextSize"]
  SETTABLEKS R20 R19 K59 ["Filters"]
  DUPTABLE R20 K63 [{"Size"}]
  GETIMPORT R21 K73 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 0
  MOVE R25 R17
  CALL R21 4 1
  SETTABLEKS R21 R20 K62 ["Size"]
  SETTABLEKS R20 R19 K60 ["Footer"]
  DUPTABLE R20 K105 [{"ContainerXBounds", "ContainerYBounds", "GridItemSize", "ListPadding", "Size", "SnapshotSize", "SnapshotBorderThickness", "TooltipDelay"}]
  GETIMPORT R21 K107 [NumberRange.new]
  LOADN R22 0
  GETTABLEKS R26 R19 K52 ["Popup"]
  GETTABLEKS R25 R26 K62 ["Size"]
  GETTABLEKS R24 R25 K108 ["X"]
  GETTABLEKS R26 R19 K53 ["MainView"]
  GETTABLEKS R25 R26 K68 ["ScrollBarThickness"]
  SUB R23 R24 R25
  CALL R21 2 1
  SETTABLEKS R21 R20 K98 ["ContainerXBounds"]
  GETIMPORT R21 K107 [NumberRange.new]
  GETTABLEKS R26 R19 K54 ["PrimaryTools"]
  GETTABLEKS R25 R26 K62 ["Size"]
  GETTABLEKS R24 R25 K109 ["Y"]
  GETTABLEKS R23 R24 K110 ["Offset"]
  GETTABLEKS R27 R19 K59 ["Filters"]
  GETTABLEKS R26 R27 K62 ["Size"]
  GETTABLEKS R25 R26 K109 ["Y"]
  GETTABLEKS R24 R25 K110 ["Offset"]
  ADD R22 R23 R24
  GETTABLEKS R26 R19 K52 ["Popup"]
  GETTABLEKS R25 R26 K62 ["Size"]
  GETTABLEKS R24 R25 K109 ["Y"]
  GETTABLEKS R28 R19 K60 ["Footer"]
  GETTABLEKS R27 R28 K62 ["Size"]
  GETTABLEKS R26 R27 K109 ["Y"]
  GETTABLEKS R25 R26 K110 ["Offset"]
  SUB R23 R24 R25
  CALL R21 2 1
  SETTABLEKS R21 R20 K99 ["ContainerYBounds"]
  LOADN R21 80
  SETTABLEKS R21 R20 K100 ["GridItemSize"]
  DUPTABLE R21 K111 [{"Top", "Left"}]
  LOADN R22 3
  SETTABLEKS R22 R21 K74 ["Top"]
  LOADN R22 3
  SETTABLEKS R22 R21 K77 ["Left"]
  SETTABLEKS R21 R20 K101 ["ListPadding"]
  GETIMPORT R21 K73 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 0
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K62 ["Size"]
  GETIMPORT R21 K113 [UDim2.fromOffset]
  LOADN R22 64
  LOADN R23 64
  CALL R21 2 1
  SETTABLEKS R21 R20 K102 ["SnapshotSize"]
  LOADK R21 K114 [0.6]
  SETTABLEKS R21 R20 K103 ["SnapshotBorderThickness"]
  LOADK R21 K115 [0.4]
  SETTABLEKS R21 R20 K104 ["TooltipDelay"]
  SETTABLEKS R20 R19 K116 ["MaterialGrid"]
  DUPCLOSURE R20 K117 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R19
  RETURN R20 1
