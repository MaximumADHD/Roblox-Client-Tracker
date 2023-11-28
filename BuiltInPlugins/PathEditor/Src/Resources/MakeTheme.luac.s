PROTO_0:
  LOADNIL R1
  JUMPIFNOT R0 [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["mock"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R2 2 1
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
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Dash"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["join"]
  GETTABLEKS R4 R1 K9 ["Style"]
  GETTABLEKS R6 R4 K10 ["Themes"]
  GETTABLEKS R5 R6 K11 ["StudioTheme"]
  GETTABLEKS R7 R4 K10 ["Themes"]
  GETTABLEKS R6 R7 K12 ["DarkTheme"]
  GETTABLEKS R8 R4 K10 ["Themes"]
  GETTABLEKS R7 R8 K13 ["LightTheme"]
  GETTABLEKS R8 R4 K14 ["StyleKey"]
  GETTABLEKS R10 R1 K15 ["Util"]
  GETTABLEKS R9 R10 K16 ["StyleModifier"]
  GETTABLEKS R11 R4 K10 ["Themes"]
  GETTABLEKS R10 R11 K17 ["BaseTheme"]
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K18 ["Src"]
  GETTABLEKS R13 R14 K19 ["Resources"]
  GETTABLEKS R12 R13 K20 ["Constants"]
  CALL R11 1 1
  GETTABLEKS R12 R4 K21 ["ComponentSymbols"]
  LOADK R15 K22 ["DraggablePoint"]
  NAMECALL R13 R12 K23 ["add"]
  CALL R13 2 0
  LOADK R15 K24 ["Line"]
  NAMECALL R13 R12 K23 ["add"]
  CALL R13 2 0
  GETIMPORT R13 K27 [string.format]
  LOADK R14 K28 ["rbxasset://studio_svg_textures/Lua/PathEditor/%s/Standard/"]
  LOADK R15 K29 ["Light"]
  CALL R13 2 1
  GETIMPORT R14 K27 [string.format]
  LOADK R15 K28 ["rbxasset://studio_svg_textures/Lua/PathEditor/%s/Standard/"]
  LOADK R16 K30 ["Dark"]
  CALL R14 2 1
  NEWTABLE R15 8 0
  GETTABLEKS R16 R12 K31 ["Image"]
  GETTABLEKS R17 R2 K8 ["join"]
  GETTABLEKS R19 R12 K31 ["Image"]
  GETTABLE R18 R10 R19
  NEWTABLE R19 2 0
  DUPTABLE R20 K34 [{"Image", "Size", "AnchorPoint"}]
  LOADK R21 K35 ["rbxasset://textures/PathEditor/Control_Point.png"]
  SETTABLEKS R21 R20 K31 ["Image"]
  GETIMPORT R21 K38 [UDim2.fromOffset]
  LOADN R22 16
  LOADN R23 16
  CALL R21 2 1
  SETTABLEKS R21 R20 K32 ["Size"]
  GETIMPORT R21 K41 [Vector2.new]
  LOADK R22 K42 [0.5]
  LOADK R23 K42 [0.5]
  CALL R21 2 1
  SETTABLEKS R21 R20 K33 ["AnchorPoint"]
  SETTABLEKS R20 R19 K43 ["&ControlPoint"]
  DUPTABLE R20 K45 [{"Image", "Size", "AnchorPoint", "ImageTransparency"}]
  LOADK R21 K46 ["rbxasset://textures/PathEditor/Tangent_Handle.png"]
  SETTABLEKS R21 R20 K31 ["Image"]
  GETIMPORT R21 K38 [UDim2.fromOffset]
  LOADN R22 16
  LOADN R23 16
  CALL R21 2 1
  SETTABLEKS R21 R20 K32 ["Size"]
  GETIMPORT R21 K41 [Vector2.new]
  LOADK R22 K42 [0.5]
  LOADK R23 K42 [0.5]
  CALL R21 2 1
  SETTABLEKS R21 R20 K33 ["AnchorPoint"]
  LOADK R21 K42 [0.5]
  SETTABLEKS R21 R20 K44 ["ImageTransparency"]
  SETTABLEKS R20 R19 K47 ["&PhantomTangent"]
  CALL R17 2 1
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R12 K48 ["Button"]
  GETTABLEKS R17 R2 K8 ["join"]
  GETTABLEKS R19 R12 K48 ["Button"]
  GETTABLE R18 R10 R19
  NEWTABLE R19 1 0
  GETTABLEKS R20 R2 K8 ["join"]
  GETTABLEKS R23 R12 K48 ["Button"]
  GETTABLE R22 R10 R23
  GETTABLEKS R21 R22 K49 ["&RoundSubtle"]
  NEWTABLE R22 1 0
  GETTABLEKS R23 R9 K50 ["Disabled"]
  DUPTABLE R24 K53 [{"BackgroundStyle", "TextColor"}]
  GETTABLEKS R25 R2 K8 ["join"]
  GETTABLEKS R27 R12 K54 ["RoundBox"]
  GETTABLE R26 R10 R27
  DUPTABLE R27 K56 [{"Color"}]
  GETTABLEKS R28 R8 K57 ["ActionActivated"]
  SETTABLEKS R28 R27 K55 ["Color"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K51 ["BackgroundStyle"]
  GETTABLEKS R25 R8 K58 ["ActionFocusBorder"]
  SETTABLEKS R25 R24 K52 ["TextColor"]
  SETTABLE R24 R22 R23
  CALL R20 2 1
  SETTABLEKS R20 R19 K59 ["&ModeButton"]
  CALL R17 2 1
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R12 K24 ["Line"]
  NEWTABLE R17 8 0
  LOADN R18 1
  SETTABLEKS R18 R17 K60 ["Thickness"]
  GETIMPORT R18 K62 [Color3.new]
  LOADN R19 0
  LOADN R20 0
  LOADN R21 0
  CALL R18 3 1
  SETTABLEKS R18 R17 K55 ["Color"]
  DUPTABLE R18 K64 [{"Color", "ContrastColor"}]
  GETTABLEKS R19 R8 K65 ["ActionEnabled"]
  SETTABLEKS R19 R18 K55 ["Color"]
  GETTABLEKS R19 R8 K58 ["ActionFocusBorder"]
  SETTABLEKS R19 R18 K63 ["ContrastColor"]
  SETTABLEKS R18 R17 K66 ["&Tangent"]
  DUPTABLE R18 K64 [{"Color", "ContrastColor"}]
  GETTABLEKS R19 R8 K67 ["TextDisabled"]
  SETTABLEKS R19 R18 K55 ["Color"]
  GETTABLEKS R19 R8 K68 ["SecondaryMain"]
  SETTABLEKS R19 R18 K63 ["ContrastColor"]
  SETTABLEKS R18 R17 K47 ["&PhantomTangent"]
  DUPTABLE R18 K64 [{"Color", "ContrastColor"}]
  GETTABLEKS R19 R8 K69 ["ForegroundMain"]
  SETTABLEKS R19 R18 K55 ["Color"]
  GETTABLEKS R19 R8 K58 ["ActionFocusBorder"]
  SETTABLEKS R19 R18 K63 ["ContrastColor"]
  SETTABLEKS R18 R17 K70 ["&Visualization"]
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R12 K22 ["DraggablePoint"]
  NEWTABLE R17 16 0
  GETTABLEKS R18 R11 K71 ["PointSize"]
  SETTABLEKS R18 R17 K71 ["PointSize"]
  LOADN R18 1
  SETTABLEKS R18 R17 K72 ["BackgroundTransparency"]
  DUPTABLE R18 K73 [{"AnchorPoint", "BackgroundTransparency"}]
  GETIMPORT R19 K41 [Vector2.new]
  LOADN R20 0
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K33 ["AnchorPoint"]
  LOADN R19 1
  SETTABLEKS R19 R18 K72 ["BackgroundTransparency"]
  SETTABLEKS R18 R17 K74 ["&AddPoint"]
  DUPTABLE R18 K77 [{"StrokeWidth", "StrokeColor"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K75 ["StrokeWidth"]
  GETIMPORT R19 K62 [Color3.new]
  LOADN R20 250
  LOADN R21 250
  LOADN R22 250
  CALL R19 3 1
  SETTABLEKS R19 R18 K76 ["StrokeColor"]
  SETTABLEKS R18 R17 K78 ["&RubberBand"]
  NEWTABLE R18 4 0
  GETIMPORT R19 K41 [Vector2.new]
  LOADK R20 K42 [0.5]
  LOADK R21 K42 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K33 ["AnchorPoint"]
  LOADK R19 K35 ["rbxasset://textures/PathEditor/Control_Point.png"]
  SETTABLEKS R19 R18 K79 ["BackgroundImage"]
  GETTABLEKS R19 R9 K80 ["Hover"]
  DUPTABLE R20 K81 [{"BackgroundImage"}]
  LOADK R21 K82 ["rbxasset://textures/PathEditor/Control_Point_Hover.png"]
  SETTABLEKS R21 R20 K79 ["BackgroundImage"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R9 K83 ["Selected"]
  DUPTABLE R20 K81 [{"BackgroundImage"}]
  LOADK R21 K84 ["rbxasset://textures/PathEditor/Control_Point_Selected.png"]
  SETTABLEKS R21 R20 K79 ["BackgroundImage"]
  SETTABLE R20 R18 R19
  SETTABLEKS R18 R17 K43 ["&ControlPoint"]
  DUPTABLE R18 K81 [{"BackgroundImage"}]
  LOADK R19 K35 ["rbxasset://textures/PathEditor/Control_Point.png"]
  SETTABLEKS R19 R18 K79 ["BackgroundImage"]
  SETTABLEKS R18 R17 K85 ["&PhantomControlPoint"]
  NEWTABLE R18 4 0
  LOADK R19 K46 ["rbxasset://textures/PathEditor/Tangent_Handle.png"]
  SETTABLEKS R19 R18 K79 ["BackgroundImage"]
  GETTABLEKS R19 R9 K80 ["Hover"]
  DUPTABLE R20 K81 [{"BackgroundImage"}]
  LOADK R21 K86 ["rbxasset://textures/PathEditor/Tangent_Handle_Hover.png"]
  SETTABLEKS R21 R20 K79 ["BackgroundImage"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R9 K83 ["Selected"]
  DUPTABLE R20 K81 [{"BackgroundImage"}]
  LOADK R21 K87 ["rbxasset://textures/PathEditor/Tangent_Handle_Selected.png"]
  SETTABLEKS R21 R20 K79 ["BackgroundImage"]
  SETTABLE R20 R18 R19
  SETTABLEKS R18 R17 K66 ["&Tangent"]
  DUPTABLE R18 K88 [{"BackgroundImage", "ImageTransparency"}]
  LOADK R19 K46 ["rbxasset://textures/PathEditor/Tangent_Handle.png"]
  SETTABLEKS R19 R18 K79 ["BackgroundImage"]
  LOADK R19 K42 [0.5]
  SETTABLEKS R19 R18 K44 ["ImageTransparency"]
  SETTABLEKS R18 R17 K47 ["&PhantomTangent"]
  DUPTABLE R18 K89 [{"BackgroundImage", "AnchorPoint", "BackgroundTransparency"}]
  LOADK R19 K46 ["rbxasset://textures/PathEditor/Tangent_Handle.png"]
  SETTABLEKS R19 R18 K79 ["BackgroundImage"]
  GETIMPORT R19 K41 [Vector2.new]
  LOADK R20 K42 [0.5]
  LOADK R21 K42 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K33 ["AnchorPoint"]
  LOADN R19 1
  SETTABLEKS R19 R18 K72 ["BackgroundTransparency"]
  SETTABLEKS R18 R17 K90 ["&HiddenTangent"]
  NEWTABLE R18 4 0
  GETIMPORT R19 K41 [Vector2.new]
  LOADK R20 K42 [0.5]
  LOADK R21 K42 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K33 ["AnchorPoint"]
  GETIMPORT R19 K41 [Vector2.new]
  LOADN R20 5
  LOADN R21 5
  CALL R19 2 1
  SETTABLEKS R19 R18 K71 ["PointSize"]
  LOADK R19 K46 ["rbxasset://textures/PathEditor/Tangent_Handle.png"]
  SETTABLEKS R19 R18 K79 ["BackgroundImage"]
  GETTABLEKS R19 R9 K83 ["Selected"]
  DUPTABLE R20 K77 [{"StrokeWidth", "StrokeColor"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K75 ["StrokeWidth"]
  GETTABLEKS R21 R8 K58 ["ActionFocusBorder"]
  SETTABLEKS R21 R20 K76 ["StrokeColor"]
  SETTABLE R20 R18 R19
  SETTABLEKS R18 R17 K91 ["&ScaleHandle"]
  SETTABLE R17 R15 R16
  DUPTABLE R16 K95 [{"AddPointCursor", "AddTangentCursor", "MoveCursor"}]
  GETTABLEKS R17 R8 K92 ["AddPointCursor"]
  SETTABLEKS R17 R16 K92 ["AddPointCursor"]
  GETTABLEKS R17 R8 K93 ["AddTangentCursor"]
  SETTABLEKS R17 R16 K93 ["AddTangentCursor"]
  GETTABLEKS R17 R8 K94 ["MoveCursor"]
  SETTABLEKS R17 R16 K94 ["MoveCursor"]
  SETTABLEKS R16 R15 K96 ["MouseIcons"]
  DUPTABLE R16 K105 [{"DeleteButtonSize", "ModeButtonSize", "DoneButtonSize", "SeparatorSize", "SeparatorPadding", "AddPointImage", "AddTangentImage", "MoveImage"}]
  GETIMPORT R17 K38 [UDim2.fromOffset]
  LOADN R18 100
  LOADN R19 30
  CALL R17 2 1
  SETTABLEKS R17 R16 K97 ["DeleteButtonSize"]
  GETIMPORT R17 K38 [UDim2.fromOffset]
  LOADN R18 30
  LOADN R19 30
  CALL R17 2 1
  SETTABLEKS R17 R16 K98 ["ModeButtonSize"]
  GETIMPORT R17 K38 [UDim2.fromOffset]
  LOADN R18 100
  LOADN R19 30
  CALL R17 2 1
  SETTABLEKS R17 R16 K99 ["DoneButtonSize"]
  GETIMPORT R17 K38 [UDim2.fromOffset]
  LOADN R18 2
  LOADN R19 30
  CALL R17 2 1
  SETTABLEKS R17 R16 K100 ["SeparatorSize"]
  LOADN R17 4
  SETTABLEKS R17 R16 K101 ["SeparatorPadding"]
  GETTABLEKS R17 R8 K106 ["AddPoint"]
  SETTABLEKS R17 R16 K102 ["AddPointImage"]
  GETTABLEKS R17 R8 K107 ["AddTangent"]
  SETTABLEKS R17 R16 K103 ["AddTangentImage"]
  GETTABLEKS R17 R8 K108 ["Move"]
  SETTABLEKS R17 R16 K104 ["MoveImage"]
  SETTABLEKS R16 R15 K109 ["PathToolbar"]
  GETTABLEKS R16 R2 K8 ["join"]
  MOVE R17 R6
  NEWTABLE R18 8 0
  GETTABLEKS R19 R8 K92 ["AddPointCursor"]
  MOVE R21 R14
  LOADK R22 K110 ["Path2DAddPoint.png"]
  CONCAT R20 R21 R22
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R8 K93 ["AddTangentCursor"]
  MOVE R21 R14
  LOADK R22 K110 ["Path2DAddPoint.png"]
  CONCAT R20 R21 R22
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R8 K94 ["MoveCursor"]
  MOVE R21 R14
  LOADK R22 K111 ["Path2DCursor.png"]
  CONCAT R20 R21 R22
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R8 K106 ["AddPoint"]
  MOVE R21 R14
  LOADK R22 K110 ["Path2DAddPoint.png"]
  CONCAT R20 R21 R22
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R8 K107 ["AddTangent"]
  MOVE R21 R14
  LOADK R22 K112 ["Path2DAddTangent.png"]
  CONCAT R20 R21 R22
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R8 K108 ["Move"]
  MOVE R21 R14
  LOADK R22 K113 ["Path2DMove.png"]
  CONCAT R20 R21 R22
  SETTABLE R20 R18 R19
  CALL R16 2 1
  GETTABLEKS R17 R2 K8 ["join"]
  MOVE R18 R7
  NEWTABLE R19 8 0
  GETTABLEKS R20 R8 K92 ["AddPointCursor"]
  MOVE R22 R13
  LOADK R23 K110 ["Path2DAddPoint.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R8 K93 ["AddTangentCursor"]
  MOVE R22 R13
  LOADK R23 K110 ["Path2DAddPoint.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R8 K94 ["MoveCursor"]
  MOVE R22 R13
  LOADK R23 K111 ["Path2DCursor.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R8 K106 ["AddPoint"]
  MOVE R22 R13
  LOADK R23 K110 ["Path2DAddPoint.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R8 K107 ["AddTangent"]
  MOVE R22 R13
  LOADK R23 K112 ["Path2DAddTangent.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R8 K108 ["Move"]
  MOVE R22 R13
  LOADK R23 K113 ["Path2DMove.png"]
  CONCAT R21 R22 R23
  SETTABLE R21 R19 R20
  CALL R17 2 1
  DUPCLOSURE R18 K114 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R15
  RETURN R18 1
