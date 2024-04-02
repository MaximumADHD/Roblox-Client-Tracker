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
  GETIMPORT R6 K18 [string.format]
  LOADK R7 K19 ["rbxasset://studio_svg_textures/Shared/Modeling/%s/Large/Material.png"]
  LOADK R8 K20 ["Light"]
  CALL R6 2 1
  GETIMPORT R7 K18 [string.format]
  LOADK R8 K19 ["rbxasset://studio_svg_textures/Shared/Modeling/%s/Large/Material.png"]
  LOADK R9 K21 ["Dark"]
  CALL R7 2 1
  GETIMPORT R8 K18 [string.format]
  LOADK R9 K22 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/Grid.png"]
  LOADK R10 K20 ["Light"]
  CALL R8 2 1
  GETIMPORT R9 K18 [string.format]
  LOADK R10 K22 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/Grid.png"]
  LOADK R11 K21 ["Dark"]
  CALL R9 2 1
  GETIMPORT R10 K18 [string.format]
  LOADK R11 K23 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/List.png"]
  LOADK R12 K20 ["Light"]
  CALL R10 2 1
  GETIMPORT R11 K18 [string.format]
  LOADK R12 K23 ["rbxasset://studio_svg_textures/Lua/MaterialPicker/%s/Standard/List.png"]
  LOADK R13 K21 ["Dark"]
  CALL R11 2 1
  GETIMPORT R12 K18 [string.format]
  LOADK R13 K24 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/AddNoBorder.png"]
  LOADK R14 K20 ["Light"]
  CALL R12 2 1
  GETIMPORT R13 K18 [string.format]
  LOADK R14 K24 ["rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/AddNoBorder.png"]
  LOADK R15 K21 ["Dark"]
  CALL R13 2 1
  NEWTABLE R14 16 0
  GETTABLEKS R15 R5 K25 ["MaterialGeneratorButtonIcon"]
  SETTABLE R13 R14 R15
  GETTABLEKS R15 R5 K26 ["MaterialManagerButtonIcon"]
  SETTABLE R7 R14 R15
  GETTABLEKS R15 R5 K27 ["ViewToggleButtonGridIcon"]
  SETTABLE R9 R14 R15
  GETTABLEKS R15 R5 K28 ["ViewToggleButtonListIcon"]
  SETTABLE R11 R14 R15
  GETTABLEKS R15 R5 K29 ["FilterChipTextColor"]
  GETIMPORT R16 K32 [Color3.fromHex]
  LOADK R17 K33 ["FFFFFF"]
  CALL R16 1 1
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R5 K34 ["FilterChipBorderColor"]
  GETIMPORT R16 K32 [Color3.fromHex]
  LOADK R17 K35 ["262626"]
  CALL R16 1 1
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R5 K36 ["FilterChipInactiveBackgroundColor"]
  GETIMPORT R16 K32 [Color3.fromHex]
  LOADK R17 K37 ["3C3C3C"]
  CALL R16 1 1
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R5 K38 ["FilterChipInactiveHoverBackgroundColor"]
  GETIMPORT R16 K32 [Color3.fromHex]
  LOADK R17 K39 ["424242"]
  CALL R16 1 1
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R5 K40 ["FilterChipActiveBackgroundColor"]
  GETIMPORT R16 K32 [Color3.fromHex]
  LOADK R17 K41 ["1A1A1A"]
  CALL R16 1 1
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R5 K42 ["FilterChipActiveHoverBackgroundColor"]
  GETIMPORT R16 K32 [Color3.fromHex]
  LOADK R17 K43 ["252525"]
  CALL R16 1 1
  SETTABLE R16 R14 R15
  NEWTABLE R15 16 0
  GETTABLEKS R16 R5 K25 ["MaterialGeneratorButtonIcon"]
  SETTABLE R12 R15 R16
  GETTABLEKS R16 R5 K26 ["MaterialManagerButtonIcon"]
  SETTABLE R6 R15 R16
  GETTABLEKS R16 R5 K27 ["ViewToggleButtonGridIcon"]
  SETTABLE R8 R15 R16
  GETTABLEKS R16 R5 K28 ["ViewToggleButtonListIcon"]
  SETTABLE R10 R15 R16
  GETTABLEKS R16 R5 K29 ["FilterChipTextColor"]
  GETIMPORT R17 K32 [Color3.fromHex]
  LOADK R18 K44 ["000000"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R5 K34 ["FilterChipBorderColor"]
  GETIMPORT R17 K32 [Color3.fromHex]
  LOADK R18 K45 ["B6B6B6"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R5 K36 ["FilterChipInactiveBackgroundColor"]
  GETIMPORT R17 K32 [Color3.fromHex]
  LOADK R18 K33 ["FFFFFF"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R5 K38 ["FilterChipInactiveHoverBackgroundColor"]
  GETIMPORT R17 K32 [Color3.fromHex]
  LOADK R18 K46 ["E4EEFE"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R5 K40 ["FilterChipActiveBackgroundColor"]
  GETIMPORT R17 K32 [Color3.fromHex]
  LOADK R18 K47 ["A8A8A8"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R5 K42 ["FilterChipActiveHoverBackgroundColor"]
  GETIMPORT R17 K32 [Color3.fromHex]
  LOADK R18 K48 ["D8E6FF"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  DUPTABLE R16 K57 [{"MainView", "PrimaryTools", "SearchBar", "ViewToggle", "MaterialGeneratorButton", "MaterialManagerButton", "Filters", "Footer"}]
  DUPTABLE R17 K60 [{"Padding", "ScrollBarThickness"}]
  LOADN R18 10
  SETTABLEKS R18 R17 K58 ["Padding"]
  LOADN R18 8
  SETTABLEKS R18 R17 K59 ["ScrollBarThickness"]
  SETTABLEKS R17 R16 K49 ["MainView"]
  DUPTABLE R17 K63 [{"Size", "Spacing", "Padding"}]
  GETIMPORT R18 K66 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 32
  CALL R18 4 1
  SETTABLEKS R18 R17 K61 ["Size"]
  LOADN R18 2
  SETTABLEKS R18 R17 K62 ["Spacing"]
  DUPTABLE R18 K71 [{"Top", "Right", "Bottom", "Left"}]
  LOADN R19 4
  SETTABLEKS R19 R18 K67 ["Top"]
  LOADN R19 8
  SETTABLEKS R19 R18 K68 ["Right"]
  LOADN R19 4
  SETTABLEKS R19 R18 K69 ["Bottom"]
  LOADN R19 8
  SETTABLEKS R19 R18 K70 ["Left"]
  SETTABLEKS R18 R17 K58 ["Padding"]
  SETTABLEKS R17 R16 K50 ["PrimaryTools"]
  DUPTABLE R17 K72 [{"Size"}]
  GETIMPORT R18 K66 [UDim2.new]
  LOADN R19 1
  LOADN R20 212
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K61 ["Size"]
  SETTABLEKS R17 R16 K51 ["SearchBar"]
  DUPTABLE R17 K75 [{"Size", "LeftIconGrid", "LeftIconList"}]
  GETIMPORT R18 K66 [UDim2.new]
  LOADN R19 0
  LOADN R20 22
  LOADN R21 0
  LOADN R22 22
  CALL R18 4 1
  SETTABLEKS R18 R17 K61 ["Size"]
  GETTABLEKS R18 R5 K27 ["ViewToggleButtonGridIcon"]
  SETTABLEKS R18 R17 K73 ["LeftIconGrid"]
  GETTABLEKS R18 R5 K28 ["ViewToggleButtonListIcon"]
  SETTABLEKS R18 R17 K74 ["LeftIconList"]
  SETTABLEKS R17 R16 K52 ["ViewToggle"]
  DUPTABLE R17 K80 [{"ActiveBackgroundColor", "BackgroundColor", "IconSize", "LeftIcon", "Padding", "Size"}]
  GETTABLEKS R18 R5 K81 ["BackgroundDefault"]
  SETTABLEKS R18 R17 K76 ["ActiveBackgroundColor"]
  GETTABLEKS R18 R5 K82 ["Button"]
  SETTABLEKS R18 R17 K77 ["BackgroundColor"]
  LOADN R18 10
  SETTABLEKS R18 R17 K78 ["IconSize"]
  GETTABLEKS R18 R5 K25 ["MaterialGeneratorButtonIcon"]
  SETTABLEKS R18 R17 K79 ["LeftIcon"]
  LOADN R18 50
  SETTABLEKS R18 R17 K58 ["Padding"]
  GETIMPORT R18 K66 [UDim2.new]
  LOADN R19 1
  LOADN R20 248
  LOADN R21 0
  LOADN R22 26
  CALL R18 4 1
  SETTABLEKS R18 R17 K61 ["Size"]
  SETTABLEKS R17 R16 K53 ["MaterialGeneratorButton"]
  DUPTABLE R17 K83 [{"ActiveBackgroundColor", "LeftIcon", "Size"}]
  GETTABLEKS R18 R5 K81 ["BackgroundDefault"]
  SETTABLEKS R18 R17 K76 ["ActiveBackgroundColor"]
  GETTABLEKS R18 R5 K26 ["MaterialManagerButtonIcon"]
  SETTABLEKS R18 R17 K79 ["LeftIcon"]
  GETIMPORT R18 K66 [UDim2.new]
  LOADN R19 0
  LOADN R20 22
  LOADN R21 0
  LOADN R22 22
  CALL R18 4 1
  SETTABLEKS R18 R17 K61 ["Size"]
  SETTABLEKS R17 R16 K54 ["MaterialManagerButton"]
  DUPTABLE R17 K91 [{"Size", "ChipSize", "TextColor", "BorderColor", "InactiveBackgroundColor", "InactiveHoverBackgroundColor", "ActiveBackgroundColor", "ActiveHoverBackgroundColor", "TextSize"}]
  GETIMPORT R18 K66 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 28
  CALL R18 4 1
  SETTABLEKS R18 R17 K61 ["Size"]
  GETIMPORT R18 K66 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 22
  CALL R18 4 1
  SETTABLEKS R18 R17 K84 ["ChipSize"]
  GETTABLEKS R18 R5 K29 ["FilterChipTextColor"]
  SETTABLEKS R18 R17 K85 ["TextColor"]
  GETTABLEKS R18 R5 K34 ["FilterChipBorderColor"]
  SETTABLEKS R18 R17 K86 ["BorderColor"]
  GETTABLEKS R18 R5 K36 ["FilterChipInactiveBackgroundColor"]
  SETTABLEKS R18 R17 K87 ["InactiveBackgroundColor"]
  GETTABLEKS R18 R5 K38 ["FilterChipInactiveHoverBackgroundColor"]
  SETTABLEKS R18 R17 K88 ["InactiveHoverBackgroundColor"]
  GETTABLEKS R18 R5 K40 ["FilterChipActiveBackgroundColor"]
  SETTABLEKS R18 R17 K76 ["ActiveBackgroundColor"]
  GETTABLEKS R18 R5 K42 ["FilterChipActiveHoverBackgroundColor"]
  SETTABLEKS R18 R17 K89 ["ActiveHoverBackgroundColor"]
  LOADN R18 14
  SETTABLEKS R18 R17 K90 ["TextSize"]
  SETTABLEKS R17 R16 K55 ["Filters"]
  DUPTABLE R17 K72 [{"Size"}]
  GETIMPORT R18 K66 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 32
  CALL R18 4 1
  SETTABLEKS R18 R17 K61 ["Size"]
  SETTABLEKS R17 R16 K56 ["Footer"]
  DUPTABLE R17 K96 [{"SnapshotSize", "SnapshotBorderThickness", "GridItemSize", "ListPadding", "Size"}]
  GETIMPORT R18 K98 [UDim2.fromOffset]
  LOADN R19 64
  LOADN R20 64
  CALL R18 2 1
  SETTABLEKS R18 R17 K92 ["SnapshotSize"]
  LOADK R18 K99 [0.6]
  SETTABLEKS R18 R17 K93 ["SnapshotBorderThickness"]
  LOADN R18 80
  SETTABLEKS R18 R17 K94 ["GridItemSize"]
  DUPTABLE R18 K100 [{"Top", "Left"}]
  LOADN R19 3
  SETTABLEKS R19 R18 K67 ["Top"]
  LOADN R19 3
  SETTABLEKS R19 R18 K70 ["Left"]
  SETTABLEKS R18 R17 K95 ["ListPadding"]
  GETIMPORT R18 K66 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 1
  GETTABLEKS R28 R16 K50 ["PrimaryTools"]
  GETTABLEKS R27 R28 K61 ["Size"]
  GETTABLEKS R26 R27 K101 ["Y"]
  GETTABLEKS R25 R26 K102 ["Offset"]
  GETTABLEKS R29 R16 K55 ["Filters"]
  GETTABLEKS R28 R29 K61 ["Size"]
  GETTABLEKS R27 R28 K101 ["Y"]
  GETTABLEKS R26 R27 K102 ["Offset"]
  ADD R24 R25 R26
  GETTABLEKS R28 R16 K56 ["Footer"]
  GETTABLEKS R27 R28 K61 ["Size"]
  GETTABLEKS R26 R27 K101 ["Y"]
  GETTABLEKS R25 R26 K102 ["Offset"]
  ADD R23 R24 R25
  MINUS R22 R23
  CALL R18 4 1
  SETTABLEKS R18 R17 K61 ["Size"]
  SETTABLEKS R17 R16 K103 ["MaterialGrid"]
  DUPCLOSURE R17 K104 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R16
  RETURN R17 1
