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
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleRule"]
  GETTABLEKS R4 R1 K7 ["Styling"]
  GETTABLEKS R3 R4 K9 ["createStyleSheet"]
  DUPTABLE R4 K21 [{"BorderSize", "ButtonHeight", "PaddingSm", "Padding", "SearchBarHeight", "Spacing", "TitleTextSize", "TokenTooltipRowHeight", "ColorKeypoint", "ColorKeypointSelected", "CursorOpenedHand"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K10 ["BorderSize"]
  LOADN R5 36
  SETTABLEKS R5 R4 K11 ["ButtonHeight"]
  LOADN R5 5
  SETTABLEKS R5 R4 K12 ["PaddingSm"]
  LOADN R5 10
  SETTABLEKS R5 R4 K13 ["Padding"]
  LOADN R5 32
  SETTABLEKS R5 R4 K14 ["SearchBarHeight"]
  LOADN R5 10
  SETTABLEKS R5 R4 K15 ["Spacing"]
  LOADN R5 24
  SETTABLEKS R5 R4 K16 ["TitleTextSize"]
  LOADN R5 20
  SETTABLEKS R5 R4 K17 ["TokenTooltipRowHeight"]
  GETIMPORT R5 K24 [Color3.fromRGB]
  LOADN R6 252
  LOADN R7 116
  LOADN R8 116
  CALL R5 3 1
  SETTABLEKS R5 R4 K18 ["ColorKeypoint"]
  GETIMPORT R5 K24 [Color3.fromRGB]
  LOADN R6 255
  LOADN R7 0
  LOADN R8 0
  CALL R5 3 1
  SETTABLEKS R5 R4 K19 ["ColorKeypointSelected"]
  LOADK R5 K25 ["rbxasset://textures/advCursor-openedHand.png"]
  SETTABLEKS R5 R4 K20 ["CursorOpenedHand"]
  MOVE R5 R3
  LOADK R6 K26 ["StyleEditor"]
  NEWTABLE R7 0 13
  MOVE R8 R2
  LOADK R9 K27 [".ScrollingAutomaticSize"]
  DUPTABLE R10 K30 [{"AutomaticCanvasSize", "CanvasSize"}]
  GETIMPORT R11 K34 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K28 ["AutomaticCanvasSize"]
  GETIMPORT R11 K37 [UDim2.fromScale]
  LOADN R12 0
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K29 ["CanvasSize"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K38 [".DropdownItem"]
  DUPTABLE R11 K42 [{"Size", "BackgroundTransparency", "BackgroundColor3"}]
  GETIMPORT R12 K44 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 40
  CALL R12 4 1
  SETTABLEKS R12 R11 K39 ["Size"]
  LOADN R12 0
  SETTABLEKS R12 R11 K40 ["BackgroundTransparency"]
  LOADK R12 K45 ["$ForegroundMain"]
  SETTABLEKS R12 R11 K41 ["BackgroundColor3"]
  NEWTABLE R12 0 2
  MOVE R13 R2
  LOADK R14 K46 [":hover"]
  DUPTABLE R15 K47 [{"BackgroundColor3"}]
  LOADK R16 K48 ["$ActionHover"]
  SETTABLEKS R16 R15 K41 ["BackgroundColor3"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K49 [":pressed"]
  DUPTABLE R16 K47 [{"BackgroundColor3"}]
  LOADK R17 K50 ["$ActionActivated"]
  SETTABLEKS R17 R16 K41 ["BackgroundColor3"]
  CALL R14 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K51 [".Icon16"]
  DUPTABLE R12 K52 [{"Size"}]
  GETIMPORT R13 K54 [UDim2.fromOffset]
  LOADN R14 16
  LOADN R15 16
  CALL R13 2 1
  SETTABLEKS R13 R12 K39 ["Size"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K55 [".TextXAlignLeft"]
  DUPTABLE R13 K57 [{"TextXAlignment"}]
  GETIMPORT R14 K59 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K56 ["TextXAlignment"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K60 [".FontStyle"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 2
  MOVE R16 R2
  LOADK R17 K61 ["Frame"]
  DUPTABLE R18 K62 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R19 K50 ["$ActionActivated"]
  SETTABLEKS R19 R18 K41 ["BackgroundColor3"]
  LOADN R19 0
  SETTABLEKS R19 R18 K40 ["BackgroundTransparency"]
  NEWTABLE R19 0 2
  MOVE R20 R2
  LOADK R21 K46 [":hover"]
  DUPTABLE R22 K47 [{"BackgroundColor3"}]
  LOADK R23 K48 ["$ActionHover"]
  SETTABLEKS R23 R22 K41 ["BackgroundColor3"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K63 [".Selected"]
  DUPTABLE R23 K47 [{"BackgroundColor3"}]
  LOADK R24 K64 ["$ActionEnabled"]
  SETTABLEKS R24 R23 K41 ["BackgroundColor3"]
  CALL R21 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K65 ["TextButton"]
  DUPTABLE R19 K67 [{"TextColor3"}]
  LOADK R20 K68 ["$TextSecondary"]
  SETTABLEKS R20 R19 K66 ["TextColor3"]
  NEWTABLE R20 0 3
  MOVE R21 R2
  LOADK R22 K46 [":hover"]
  DUPTABLE R23 K67 [{"TextColor3"}]
  LOADK R24 K69 ["$TextContrast"]
  SETTABLEKS R24 R23 K66 ["TextColor3"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K49 [":pressed"]
  DUPTABLE R24 K67 [{"TextColor3"}]
  LOADK R25 K69 ["$TextContrast"]
  SETTABLEKS R25 R24 K66 ["TextColor3"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K63 [".Selected"]
  DUPTABLE R25 K67 [{"TextColor3"}]
  LOADK R26 K70 ["$TextDisabled"]
  SETTABLEKS R26 R25 K66 ["TextColor3"]
  CALL R23 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K71 [".SequenceKeypoint"]
  DUPTABLE R15 K75 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "Text", "ZIndex"}]
  GETIMPORT R16 K77 [Vector2.new]
  LOADK R17 K78 [0.5]
  LOADK R18 K78 [0.5]
  CALL R16 2 1
  SETTABLEKS R16 R15 K72 ["AnchorPoint"]
  LOADK R16 K79 ["$ColorKeypoint"]
  SETTABLEKS R16 R15 K41 ["BackgroundColor3"]
  LOADN R16 0
  SETTABLEKS R16 R15 K40 ["BackgroundTransparency"]
  LOADK R16 K80 [""]
  SETTABLEKS R16 R15 K73 ["Text"]
  LOADN R16 3
  SETTABLEKS R16 R15 K74 ["ZIndex"]
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K63 [".Selected"]
  DUPTABLE R19 K47 [{"BackgroundColor3"}]
  LOADK R20 K81 ["$ColorKeypointSelected"]
  SETTABLEKS R20 R19 K41 ["BackgroundColor3"]
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K82 ["::UIStroke"]
  DUPTABLE R23 K87 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R24 K89 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R24 R23 K83 ["ApplyStrokeMode"]
  GETIMPORT R24 K24 [Color3.fromRGB]
  LOADN R25 0
  LOADN R26 0
  LOADN R27 0
  CALL R24 3 1
  SETTABLEKS R24 R23 K84 ["Color"]
  LOADN R24 2
  SETTABLEKS R24 R23 K85 ["Thickness"]
  LOADK R24 K90 [0.6]
  SETTABLEKS R24 R23 K86 ["Transparency"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K91 [".NumberSequenceKeypoint"]
  DUPTABLE R16 K52 [{"Size"}]
  GETIMPORT R17 K54 [UDim2.fromOffset]
  LOADN R18 8
  LOADN R19 8
  CALL R17 2 1
  SETTABLEKS R17 R16 K39 ["Size"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K92 [".NumberSequenceLine"]
  DUPTABLE R17 K94 [{"BorderSizePixel", "ZIndex", "BackgroundTransparency", "BackgroundColor3"}]
  LOADN R18 0
  SETTABLEKS R18 R17 K93 ["BorderSizePixel"]
  LOADN R18 2
  SETTABLEKS R18 R17 K74 ["ZIndex"]
  LOADK R18 K90 [0.6]
  SETTABLEKS R18 R17 K40 ["BackgroundTransparency"]
  LOADK R18 K79 ["$ColorKeypoint"]
  SETTABLEKS R18 R17 K41 ["BackgroundColor3"]
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K95 [".SelectedStart"]
  DUPTABLE R21 K47 [{"BackgroundColor3"}]
  GETIMPORT R22 K24 [Color3.fromRGB]
  LOADN R23 255
  LOADN R24 255
  LOADN R25 255
  CALL R22 3 1
  SETTABLEKS R22 R21 K41 ["BackgroundColor3"]
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K96 ["::UIGradient"]
  DUPTABLE R25 K97 [{"Color"}]
  GETIMPORT R26 K99 [ColorSequence.new]
  GETTABLEKS R27 R4 K19 ["ColorKeypointSelected"]
  GETTABLEKS R28 R4 K18 ["ColorKeypoint"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K84 ["Color"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K100 [".SelectedEnd"]
  DUPTABLE R22 K47 [{"BackgroundColor3"}]
  GETIMPORT R23 K24 [Color3.fromRGB]
  LOADN R24 255
  LOADN R25 255
  LOADN R26 255
  CALL R23 3 1
  SETTABLEKS R23 R22 K41 ["BackgroundColor3"]
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K96 ["::UIGradient"]
  DUPTABLE R26 K97 [{"Color"}]
  GETIMPORT R27 K99 [ColorSequence.new]
  GETTABLEKS R28 R4 K18 ["ColorKeypoint"]
  GETTABLEKS R29 R4 K19 ["ColorKeypointSelected"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K84 ["Color"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K101 [".ColorSequenceKeypoint"]
  DUPTABLE R18 K52 [{"Size"}]
  GETIMPORT R19 K54 [UDim2.fromOffset]
  LOADN R20 8
  LOADN R21 16
  CALL R19 2 1
  SETTABLEKS R19 R18 K39 ["Size"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K102 [".ColorSequenceLine"]
  DUPTABLE R19 K104 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "BorderPixelSize", "Size", "ZIndex"}]
  GETIMPORT R20 K77 [Vector2.new]
  LOADK R21 K78 [0.5]
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K72 ["AnchorPoint"]
  GETIMPORT R20 K24 [Color3.fromRGB]
  LOADN R21 255
  LOADN R22 255
  LOADN R23 255
  CALL R20 3 1
  SETTABLEKS R20 R19 K41 ["BackgroundColor3"]
  LOADK R20 K105 [0.7]
  SETTABLEKS R20 R19 K40 ["BackgroundTransparency"]
  LOADN R20 0
  SETTABLEKS R20 R19 K103 ["BorderPixelSize"]
  GETIMPORT R20 K44 [UDim2.new]
  LOADN R21 0
  LOADN R22 2
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K39 ["Size"]
  LOADN R20 2
  SETTABLEKS R20 R19 K74 ["ZIndex"]
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K63 [".Selected"]
  DUPTABLE R23 K106 [{"BackgroundTransparency"}]
  LOADK R24 K107 [0.4]
  SETTABLEKS R24 R23 K40 ["BackgroundTransparency"]
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K82 ["::UIStroke"]
  DUPTABLE R27 K108 [{"Color", "Thickness", "Transparency"}]
  GETIMPORT R28 K24 [Color3.fromRGB]
  LOADN R29 0
  LOADN R30 0
  LOADN R31 0
  CALL R28 3 1
  SETTABLEKS R28 R27 K84 ["Color"]
  LOADN R28 2
  SETTABLEKS R28 R27 K85 ["Thickness"]
  LOADK R28 K109 [0.75]
  SETTABLEKS R28 R27 K86 ["Transparency"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K110 [".SequencePreviewButton"]
  DUPTABLE R20 K111 [{"Size", "BackgroundColor3"}]
  GETIMPORT R21 K54 [UDim2.fromOffset]
  LOADN R22 20
  LOADN R23 20
  CALL R21 2 1
  SETTABLEKS R21 R20 K39 ["Size"]
  GETIMPORT R21 K112 [Color3.new]
  LOADN R22 1
  LOADN R23 1
  LOADN R24 1
  CALL R21 3 1
  SETTABLEKS R21 R20 K41 ["BackgroundColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K113 [".LabelCell"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K114 ["::UIPadding"]
  DUPTABLE R25 K117 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R26 K119 [UDim.new]
  LOADN R27 0
  LOADN R28 5
  CALL R26 2 1
  SETTABLEKS R26 R25 K115 ["PaddingLeft"]
  GETIMPORT R26 K119 [UDim.new]
  LOADN R27 0
  LOADN R28 5
  CALL R26 2 1
  SETTABLEKS R26 R25 K116 ["PaddingRight"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K120 [".TokenTooltipSourceIcon"]
  DUPTABLE R22 K52 [{"Size"}]
  GETIMPORT R23 K54 [UDim2.fromOffset]
  LOADN R24 20
  LOADN R25 20
  CALL R23 2 1
  SETTABLEKS R23 R22 K39 ["Size"]
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K121 [":: UIPadding"]
  DUPTABLE R26 K122 [{"PaddingLeft"}]
  GETIMPORT R27 K119 [UDim.new]
  LOADN R28 0
  LOADN R29 10
  CALL R27 2 1
  SETTABLEKS R27 R26 K115 ["PaddingLeft"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 -1
  SETLIST R7 R8 -1 [1]
  MOVE R8 R4
  CALL R5 3 1
  RETURN R5 1
