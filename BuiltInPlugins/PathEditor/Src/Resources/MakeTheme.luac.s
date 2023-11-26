PROTO_0:
  LOADNIL R1
  JUMPIFNOT R0 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["mock"]
  CALL R2 0 1
  MOVE R1 R2
  JUMP [+5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["mock"]
  CALL R2 0 1
  MOVE R1 R2
  GETUPVAL R4 1
  NAMECALL R2 R1 K1 ["extend"]
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
  GETTABLEKS R6 R4 K12 ["StyleKey"]
  GETTABLEKS R8 R1 K13 ["Util"]
  GETTABLEKS R7 R8 K14 ["StyleModifier"]
  GETTABLEKS R9 R4 K10 ["Themes"]
  GETTABLEKS R8 R9 K15 ["BaseTheme"]
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K16 ["Src"]
  GETTABLEKS R11 R12 K17 ["Resources"]
  GETTABLEKS R10 R11 K18 ["Constants"]
  CALL R9 1 1
  GETTABLEKS R10 R4 K19 ["ComponentSymbols"]
  LOADK R13 K20 ["DraggablePoint"]
  NAMECALL R11 R10 K21 ["add"]
  CALL R11 2 0
  LOADK R13 K22 ["Line"]
  NAMECALL R11 R10 K21 ["add"]
  CALL R11 2 0
  GETIMPORT R11 K25 [string.format]
  LOADK R12 K26 ["rbxasset://studio_svg_textures/Lua/PathEditor/%s/Large/"]
  LOADK R13 K27 ["Light"]
  CALL R11 2 1
  GETIMPORT R12 K25 [string.format]
  LOADK R13 K26 ["rbxasset://studio_svg_textures/Lua/PathEditor/%s/Large/"]
  LOADK R14 K28 ["Dark"]
  CALL R12 2 1
  NEWTABLE R13 8 0
  GETTABLEKS R14 R10 K29 ["Image"]
  GETTABLEKS R15 R2 K8 ["join"]
  GETTABLEKS R17 R10 K29 ["Image"]
  GETTABLE R16 R8 R17
  NEWTABLE R17 2 0
  DUPTABLE R18 K32 [{"Image", "Size", "AnchorPoint"}]
  LOADK R19 K33 ["rbxasset://textures/PathEditor/Control_Point.png"]
  SETTABLEKS R19 R18 K29 ["Image"]
  GETIMPORT R19 K36 [UDim2.fromOffset]
  LOADN R20 16
  LOADN R21 16
  CALL R19 2 1
  SETTABLEKS R19 R18 K30 ["Size"]
  GETIMPORT R19 K39 [Vector2.new]
  LOADK R20 K40 [0.5]
  LOADK R21 K40 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K31 ["AnchorPoint"]
  SETTABLEKS R18 R17 K41 ["&ControlPoint"]
  DUPTABLE R18 K43 [{"Image", "Size", "AnchorPoint", "ImageTransparency"}]
  LOADK R19 K44 ["rbxasset://textures/PathEditor/Tangent_Handle.png"]
  SETTABLEKS R19 R18 K29 ["Image"]
  GETIMPORT R19 K36 [UDim2.fromOffset]
  LOADN R20 16
  LOADN R21 16
  CALL R19 2 1
  SETTABLEKS R19 R18 K30 ["Size"]
  GETIMPORT R19 K39 [Vector2.new]
  LOADK R20 K40 [0.5]
  LOADK R21 K40 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K31 ["AnchorPoint"]
  LOADK R19 K40 [0.5]
  SETTABLEKS R19 R18 K42 ["ImageTransparency"]
  SETTABLEKS R18 R17 K45 ["&PhantomTangent"]
  CALL R15 2 1
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R10 K46 ["Button"]
  GETTABLEKS R15 R2 K8 ["join"]
  GETTABLEKS R17 R10 K46 ["Button"]
  GETTABLE R16 R8 R17
  NEWTABLE R17 1 0
  GETTABLEKS R18 R2 K8 ["join"]
  GETTABLEKS R21 R10 K46 ["Button"]
  GETTABLE R20 R8 R21
  GETTABLEKS R19 R20 K47 ["&RoundSubtle"]
  NEWTABLE R20 1 0
  GETTABLEKS R21 R7 K48 ["Disabled"]
  DUPTABLE R22 K51 [{"BackgroundStyle", "TextColor"}]
  GETTABLEKS R23 R2 K8 ["join"]
  GETTABLEKS R25 R10 K52 ["RoundBox"]
  GETTABLE R24 R8 R25
  DUPTABLE R25 K54 [{"Color"}]
  GETTABLEKS R26 R6 K55 ["ActionActivated"]
  SETTABLEKS R26 R25 K53 ["Color"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K49 ["BackgroundStyle"]
  GETTABLEKS R23 R6 K56 ["ActionFocusBorder"]
  SETTABLEKS R23 R22 K50 ["TextColor"]
  SETTABLE R22 R20 R21
  CALL R18 2 1
  SETTABLEKS R18 R17 K57 ["&ModeButton"]
  CALL R15 2 1
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R10 K22 ["Line"]
  NEWTABLE R15 8 0
  LOADN R16 1
  SETTABLEKS R16 R15 K58 ["Thickness"]
  GETIMPORT R16 K60 [Color3.new]
  LOADN R17 0
  LOADN R18 0
  LOADN R19 0
  CALL R16 3 1
  SETTABLEKS R16 R15 K53 ["Color"]
  DUPTABLE R16 K62 [{"Color", "ContrastColor"}]
  GETTABLEKS R17 R6 K63 ["ForegroundMain"]
  SETTABLEKS R17 R16 K53 ["Color"]
  GETTABLEKS R17 R6 K56 ["ActionFocusBorder"]
  SETTABLEKS R17 R16 K61 ["ContrastColor"]
  SETTABLEKS R16 R15 K64 ["&Tangent"]
  DUPTABLE R16 K62 [{"Color", "ContrastColor"}]
  GETTABLEKS R17 R6 K63 ["ForegroundMain"]
  SETTABLEKS R17 R16 K53 ["Color"]
  GETTABLEKS R17 R6 K65 ["SecondaryMain"]
  SETTABLEKS R17 R16 K61 ["ContrastColor"]
  SETTABLEKS R16 R15 K45 ["&PhantomTangent"]
  DUPTABLE R16 K62 [{"Color", "ContrastColor"}]
  GETTABLEKS R17 R6 K63 ["ForegroundMain"]
  SETTABLEKS R17 R16 K53 ["Color"]
  GETTABLEKS R17 R6 K56 ["ActionFocusBorder"]
  SETTABLEKS R17 R16 K61 ["ContrastColor"]
  SETTABLEKS R16 R15 K66 ["&Visualization"]
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R10 K20 ["DraggablePoint"]
  NEWTABLE R15 16 0
  GETTABLEKS R16 R9 K67 ["PointSize"]
  SETTABLEKS R16 R15 K67 ["PointSize"]
  LOADN R16 1
  SETTABLEKS R16 R15 K68 ["BackgroundTransparency"]
  DUPTABLE R16 K69 [{"AnchorPoint", "BackgroundTransparency"}]
  GETIMPORT R17 K39 [Vector2.new]
  LOADN R18 0
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K31 ["AnchorPoint"]
  LOADN R17 1
  SETTABLEKS R17 R16 K68 ["BackgroundTransparency"]
  SETTABLEKS R16 R15 K70 ["&AddPoint"]
  DUPTABLE R16 K73 [{"StrokeWidth", "StrokeColor"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K71 ["StrokeWidth"]
  GETIMPORT R17 K60 [Color3.new]
  LOADN R18 250
  LOADN R19 250
  LOADN R20 250
  CALL R17 3 1
  SETTABLEKS R17 R16 K72 ["StrokeColor"]
  SETTABLEKS R16 R15 K74 ["&RubberBand"]
  NEWTABLE R16 4 0
  GETIMPORT R17 K39 [Vector2.new]
  LOADK R18 K40 [0.5]
  LOADK R19 K40 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K31 ["AnchorPoint"]
  LOADK R17 K33 ["rbxasset://textures/PathEditor/Control_Point.png"]
  SETTABLEKS R17 R16 K75 ["BackgroundImage"]
  GETTABLEKS R17 R7 K76 ["Hover"]
  DUPTABLE R18 K77 [{"BackgroundImage"}]
  LOADK R19 K78 ["rbxasset://textures/PathEditor/Control_Point_Hover.png"]
  SETTABLEKS R19 R18 K75 ["BackgroundImage"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R7 K79 ["Selected"]
  DUPTABLE R18 K77 [{"BackgroundImage"}]
  LOADK R19 K80 ["rbxasset://textures/PathEditor/Control_Point_Selected.png"]
  SETTABLEKS R19 R18 K75 ["BackgroundImage"]
  SETTABLE R18 R16 R17
  SETTABLEKS R16 R15 K41 ["&ControlPoint"]
  DUPTABLE R16 K77 [{"BackgroundImage"}]
  LOADK R17 K33 ["rbxasset://textures/PathEditor/Control_Point.png"]
  SETTABLEKS R17 R16 K75 ["BackgroundImage"]
  SETTABLEKS R16 R15 K81 ["&PhantomControlPoint"]
  NEWTABLE R16 4 0
  LOADK R17 K44 ["rbxasset://textures/PathEditor/Tangent_Handle.png"]
  SETTABLEKS R17 R16 K75 ["BackgroundImage"]
  GETTABLEKS R17 R7 K76 ["Hover"]
  DUPTABLE R18 K77 [{"BackgroundImage"}]
  LOADK R19 K82 ["rbxasset://textures/PathEditor/Tangent_Handle_Hover.png"]
  SETTABLEKS R19 R18 K75 ["BackgroundImage"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R7 K79 ["Selected"]
  DUPTABLE R18 K77 [{"BackgroundImage"}]
  LOADK R19 K83 ["rbxasset://textures/PathEditor/Tangent_Handle_Selected.png"]
  SETTABLEKS R19 R18 K75 ["BackgroundImage"]
  SETTABLE R18 R16 R17
  SETTABLEKS R16 R15 K64 ["&Tangent"]
  DUPTABLE R16 K84 [{"BackgroundImage", "ImageTransparency"}]
  LOADK R17 K44 ["rbxasset://textures/PathEditor/Tangent_Handle.png"]
  SETTABLEKS R17 R16 K75 ["BackgroundImage"]
  LOADK R17 K40 [0.5]
  SETTABLEKS R17 R16 K42 ["ImageTransparency"]
  SETTABLEKS R16 R15 K45 ["&PhantomTangent"]
  DUPTABLE R16 K85 [{"BackgroundImage", "AnchorPoint", "BackgroundTransparency"}]
  LOADK R17 K44 ["rbxasset://textures/PathEditor/Tangent_Handle.png"]
  SETTABLEKS R17 R16 K75 ["BackgroundImage"]
  GETIMPORT R17 K39 [Vector2.new]
  LOADK R18 K40 [0.5]
  LOADK R19 K40 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K31 ["AnchorPoint"]
  LOADN R17 1
  SETTABLEKS R17 R16 K68 ["BackgroundTransparency"]
  SETTABLEKS R16 R15 K86 ["&HiddenTangent"]
  NEWTABLE R16 4 0
  GETIMPORT R17 K39 [Vector2.new]
  LOADK R18 K40 [0.5]
  LOADK R19 K40 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K31 ["AnchorPoint"]
  GETIMPORT R17 K39 [Vector2.new]
  LOADN R18 5
  LOADN R19 5
  CALL R17 2 1
  SETTABLEKS R17 R16 K67 ["PointSize"]
  LOADK R17 K44 ["rbxasset://textures/PathEditor/Tangent_Handle.png"]
  SETTABLEKS R17 R16 K75 ["BackgroundImage"]
  GETTABLEKS R17 R7 K79 ["Selected"]
  DUPTABLE R18 K73 [{"StrokeWidth", "StrokeColor"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K71 ["StrokeWidth"]
  GETTABLEKS R19 R6 K56 ["ActionFocusBorder"]
  SETTABLEKS R19 R18 K72 ["StrokeColor"]
  SETTABLE R18 R16 R17
  SETTABLEKS R16 R15 K87 ["&ScaleHandle"]
  SETTABLE R15 R13 R14
  DUPTABLE R14 K96 [{"DeleteButtonSize", "ModeButtonSize", "DoneButtonSize", "SeparatorSize", "SeparatorPadding", "AddPointImage", "AddTangentImage", "MoveImage"}]
  GETIMPORT R15 K36 [UDim2.fromOffset]
  LOADN R16 100
  LOADN R17 30
  CALL R15 2 1
  SETTABLEKS R15 R14 K88 ["DeleteButtonSize"]
  GETIMPORT R15 K36 [UDim2.fromOffset]
  LOADN R16 130
  LOADN R17 30
  CALL R15 2 1
  SETTABLEKS R15 R14 K89 ["ModeButtonSize"]
  GETIMPORT R15 K36 [UDim2.fromOffset]
  LOADN R16 100
  LOADN R17 30
  CALL R15 2 1
  SETTABLEKS R15 R14 K90 ["DoneButtonSize"]
  GETIMPORT R15 K36 [UDim2.fromOffset]
  LOADN R16 2
  LOADN R17 30
  CALL R15 2 1
  SETTABLEKS R15 R14 K91 ["SeparatorSize"]
  LOADN R15 4
  SETTABLEKS R15 R14 K92 ["SeparatorPadding"]
  MOVE R16 R12
  LOADK R17 K97 ["AddPoint.png"]
  CONCAT R15 R16 R17
  SETTABLEKS R15 R14 K93 ["AddPointImage"]
  MOVE R16 R12
  LOADK R17 K98 ["AddTangent.png"]
  CONCAT R15 R16 R17
  SETTABLEKS R15 R14 K94 ["AddTangentImage"]
  MOVE R16 R12
  LOADK R17 K99 ["Move.png"]
  CONCAT R15 R16 R17
  SETTABLEKS R15 R14 K95 ["MoveImage"]
  SETTABLEKS R14 R13 K100 ["PathToolbar"]
  DUPCLOSURE R14 K101 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R13
  RETURN R14 1
