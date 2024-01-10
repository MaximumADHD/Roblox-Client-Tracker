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
  MOVE R4 R3
  LOADK R5 K10 ["StyleEditor"]
  NEWTABLE R6 0 12
  MOVE R7 R2
  LOADK R8 K11 [".ScrollingAutomaticSize"]
  DUPTABLE R9 K14 [{"AutomaticCanvasSize", "CanvasSize"}]
  GETIMPORT R10 K18 [Enum.AutomaticSize.Y]
  SETTABLEKS R10 R9 K12 ["AutomaticCanvasSize"]
  GETIMPORT R10 K21 [UDim2.fromScale]
  LOADN R11 0
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["CanvasSize"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K22 [".DropdownItem"]
  DUPTABLE R10 K26 [{"Size", "BackgroundTransparency", "BackgroundColor3"}]
  GETIMPORT R11 K28 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 40
  CALL R11 4 1
  SETTABLEKS R11 R10 K23 ["Size"]
  LOADN R11 0
  SETTABLEKS R11 R10 K24 ["BackgroundTransparency"]
  LOADK R11 K29 ["$ForegroundMain"]
  SETTABLEKS R11 R10 K25 ["BackgroundColor3"]
  NEWTABLE R11 0 2
  MOVE R12 R2
  LOADK R13 K30 [":hover"]
  DUPTABLE R14 K31 [{"BackgroundColor3"}]
  LOADK R15 K32 ["$ActionHover"]
  SETTABLEKS R15 R14 K25 ["BackgroundColor3"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K33 [":pressed"]
  DUPTABLE R15 K31 [{"BackgroundColor3"}]
  LOADK R16 K34 ["$ActionActivated"]
  SETTABLEKS R16 R15 K25 ["BackgroundColor3"]
  CALL R13 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K35 [".Icon16"]
  DUPTABLE R11 K36 [{"Size"}]
  GETIMPORT R12 K38 [UDim2.fromOffset]
  LOADN R13 16
  LOADN R14 16
  CALL R12 2 1
  SETTABLEKS R12 R11 K23 ["Size"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K39 [".TextXAlignLeft"]
  DUPTABLE R12 K41 [{"TextXAlignment"}]
  GETIMPORT R13 K43 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K40 ["TextXAlignment"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K44 [".FontStyle"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 2
  MOVE R15 R2
  LOADK R16 K45 ["Frame"]
  DUPTABLE R17 K46 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R18 K34 ["$ActionActivated"]
  SETTABLEKS R18 R17 K25 ["BackgroundColor3"]
  LOADN R18 0
  SETTABLEKS R18 R17 K24 ["BackgroundTransparency"]
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K30 [":hover"]
  DUPTABLE R21 K31 [{"BackgroundColor3"}]
  LOADK R22 K32 ["$ActionHover"]
  SETTABLEKS R22 R21 K25 ["BackgroundColor3"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K47 [".Selected"]
  DUPTABLE R22 K31 [{"BackgroundColor3"}]
  LOADK R23 K48 ["$ActionEnabled"]
  SETTABLEKS R23 R22 K25 ["BackgroundColor3"]
  CALL R20 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K49 ["TextButton"]
  DUPTABLE R18 K51 [{"TextColor3"}]
  LOADK R19 K52 ["$TextSecondary"]
  SETTABLEKS R19 R18 K50 ["TextColor3"]
  NEWTABLE R19 0 3
  MOVE R20 R2
  LOADK R21 K30 [":hover"]
  DUPTABLE R22 K51 [{"TextColor3"}]
  LOADK R23 K53 ["$TextContrast"]
  SETTABLEKS R23 R22 K50 ["TextColor3"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K33 [":pressed"]
  DUPTABLE R23 K51 [{"TextColor3"}]
  LOADK R24 K53 ["$TextContrast"]
  SETTABLEKS R24 R23 K50 ["TextColor3"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K47 [".Selected"]
  DUPTABLE R24 K51 [{"TextColor3"}]
  LOADK R25 K54 ["$TextDisabled"]
  SETTABLEKS R25 R24 K50 ["TextColor3"]
  CALL R22 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K55 [".SequenceKeypoint"]
  DUPTABLE R14 K58 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "ZIndex"}]
  GETIMPORT R15 K60 [Vector2.new]
  LOADK R16 K61 [0.5]
  LOADK R17 K61 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K56 ["AnchorPoint"]
  GETIMPORT R15 K64 [Color3.fromRGB]
  LOADN R16 255
  LOADN R17 0
  LOADN R18 0
  CALL R15 3 1
  SETTABLEKS R15 R14 K25 ["BackgroundColor3"]
  LOADN R15 0
  SETTABLEKS R15 R14 K24 ["BackgroundTransparency"]
  LOADN R15 3
  SETTABLEKS R15 R14 K57 ["ZIndex"]
  NEWTABLE R15 0 1
  MOVE R16 R2
  LOADK R17 K47 [".Selected"]
  DUPTABLE R18 K31 [{"BackgroundColor3"}]
  GETIMPORT R19 K64 [Color3.fromRGB]
  LOADN R20 247
  LOADN R21 148
  LOADN R22 148
  CALL R19 3 1
  SETTABLEKS R19 R18 K25 ["BackgroundColor3"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K65 [".NumberSequenceKeypoint"]
  DUPTABLE R15 K36 [{"Size"}]
  GETIMPORT R16 K38 [UDim2.fromOffset]
  LOADN R17 8
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K23 ["Size"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K66 [".NumberSequenceLine"]
  DUPTABLE R16 K68 [{"BorderSizePixel", "ZIndex", "BackgroundTransparency", "BackgroundColor3"}]
  LOADN R17 0
  SETTABLEKS R17 R16 K67 ["BorderSizePixel"]
  LOADN R17 2
  SETTABLEKS R17 R16 K57 ["ZIndex"]
  LOADK R17 K69 [0.6]
  SETTABLEKS R17 R16 K24 ["BackgroundTransparency"]
  GETIMPORT R17 K64 [Color3.fromRGB]
  LOADN R18 252
  LOADN R19 116
  LOADN R20 116
  CALL R17 3 1
  SETTABLEKS R17 R16 K25 ["BackgroundColor3"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K70 [".ColorSequenceKeypoint"]
  DUPTABLE R17 K36 [{"Size"}]
  GETIMPORT R18 K38 [UDim2.fromOffset]
  LOADN R19 8
  LOADN R20 16
  CALL R18 2 1
  SETTABLEKS R18 R17 K23 ["Size"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K71 [".ColorSequenceLine"]
  DUPTABLE R18 K73 [{"AnchorPoint", "BorderPixelSize", "Size", "BackgroundTransparency", "BackgroundColor3", "ZIndex"}]
  GETIMPORT R19 K60 [Vector2.new]
  LOADK R20 K61 [0.5]
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K56 ["AnchorPoint"]
  LOADN R19 0
  SETTABLEKS R19 R18 K72 ["BorderPixelSize"]
  GETIMPORT R19 K28 [UDim2.new]
  LOADN R20 0
  LOADN R21 2
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K23 ["Size"]
  LOADK R19 K74 [0.8]
  SETTABLEKS R19 R18 K24 ["BackgroundTransparency"]
  GETIMPORT R19 K64 [Color3.fromRGB]
  LOADN R20 255
  LOADN R21 255
  LOADN R22 255
  CALL R19 3 1
  SETTABLEKS R19 R18 K25 ["BackgroundColor3"]
  LOADN R19 2
  SETTABLEKS R19 R18 K57 ["ZIndex"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K75 [".ColorSequencePreview"]
  DUPTABLE R19 K36 [{"Size"}]
  GETIMPORT R20 K38 [UDim2.fromOffset]
  LOADN R21 20
  LOADN R22 20
  CALL R20 2 1
  SETTABLEKS R20 R19 K23 ["Size"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K76 [".LabelCell"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K77 ["::UIPadding"]
  DUPTABLE R24 K80 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R25 K82 [UDim.new]
  LOADN R26 0
  LOADN R27 5
  CALL R25 2 1
  SETTABLEKS R25 R24 K78 ["PaddingLeft"]
  GETIMPORT R25 K82 [UDim.new]
  LOADN R26 0
  LOADN R27 5
  CALL R25 2 1
  SETTABLEKS R25 R24 K79 ["PaddingRight"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R6 R7 -1 [1]
  DUPTABLE R7 K91 [{"BorderSize", "ButtonHeight", "PaddingSm", "Padding", "SearchBarHeight", "Spacing", "TitleTextSize", "CursorOpenedHand"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K83 ["BorderSize"]
  LOADN R8 36
  SETTABLEKS R8 R7 K84 ["ButtonHeight"]
  LOADN R8 5
  SETTABLEKS R8 R7 K85 ["PaddingSm"]
  LOADN R8 10
  SETTABLEKS R8 R7 K86 ["Padding"]
  LOADN R8 32
  SETTABLEKS R8 R7 K87 ["SearchBarHeight"]
  LOADN R8 10
  SETTABLEKS R8 R7 K88 ["Spacing"]
  LOADN R8 24
  SETTABLEKS R8 R7 K89 ["TitleTextSize"]
  LOADK R8 K92 ["rbxasset://textures/advCursor-openedHand.png"]
  SETTABLEKS R8 R7 K90 ["CursorOpenedHand"]
  CALL R4 3 1
  RETURN R4 1
