PROTO_0:
  NEWTABLE R0 0 20
  GETUPVAL R1 0
  LOADK R2 K0 ["Frame"]
  DUPTABLE R3 K3 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K1 ["BackgroundTransparency"]
  LOADN R4 0
  SETTABLEKS R4 R3 K2 ["BorderSizePixel"]
  CALL R1 2 1
  GETUPVAL R2 0
  LOADK R3 K4 ["ImageLabel"]
  DUPTABLE R4 K5 [{"BackgroundTransparency"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K1 ["BackgroundTransparency"]
  CALL R2 2 1
  GETUPVAL R3 0
  LOADK R4 K6 ["UIListLayout"]
  DUPTABLE R5 K8 [{"SortOrder"}]
  GETIMPORT R6 K11 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R6 R5 K7 ["SortOrder"]
  CALL R3 2 1
  GETUPVAL R4 0
  LOADK R5 K12 ["TextButton"]
  DUPTABLE R6 K16 [{"AutoButtonColor", "BorderSizePixel", "Font", "Text"}]
  LOADB R7 0
  SETTABLEKS R7 R6 K13 ["AutoButtonColor"]
  LOADN R7 0
  SETTABLEKS R7 R6 K2 ["BorderSizePixel"]
  GETIMPORT R7 K18 [Enum.Font.SourceSans]
  SETTABLEKS R7 R6 K14 ["Font"]
  LOADK R7 K19 [""]
  SETTABLEKS R7 R6 K15 ["Text"]
  CALL R4 2 1
  GETUPVAL R5 0
  LOADK R6 K20 ["TextLabel"]
  DUPTABLE R7 K25 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K1 ["BackgroundTransparency"]
  GETIMPORT R8 K18 [Enum.Font.SourceSans]
  SETTABLEKS R8 R7 K14 ["Font"]
  GETUPVAL R9 1
  JUMPIFNOT R9 [+2]
  LOADK R8 K26 ["$TextPrimary"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K21 ["TextColor3"]
  GETUPVAL R9 2
  CALL R9 0 1
  JUMPIFNOT R9 [+2]
  LOADN R8 16
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K22 ["TextSize"]
  GETIMPORT R8 K28 [Enum.TextXAlignment.Left]
  SETTABLEKS R8 R7 K23 ["TextXAlignment"]
  GETIMPORT R8 K30 [Enum.TextYAlignment.Top]
  SETTABLEKS R8 R7 K24 ["TextYAlignment"]
  CALL R5 2 1
  GETUPVAL R7 2
  CALL R7 0 1
  JUMPIFNOT R7 [+2]
  LOADNIL R6
  JUMP [+12]
  GETUPVAL R6 0
  LOADK R7 K31 [".VPF-AvoidFOUC"]
  DUPTABLE R8 K33 [{"BackgroundColor3"}]
  GETIMPORT R9 K36 [Color3.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  CALL R9 3 1
  SETTABLEKS R9 R8 K32 ["BackgroundColor3"]
  CALL R6 2 1
  GETUPVAL R7 0
  LOADK R8 K37 [".VPF-Button"]
  DUPTABLE R9 K39 [{"BackgroundTransparency", "Size"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K1 ["BackgroundTransparency"]
  GETIMPORT R10 K42 [UDim2.fromOffset]
  LOADN R11 32
  LOADN R12 32
  CALL R10 2 1
  SETTABLEKS R10 R9 K38 ["Size"]
  NEWTABLE R10 0 4
  GETUPVAL R11 0
  LOADK R12 K43 ["::UICorner"]
  DUPTABLE R13 K45 [{"CornerRadius"}]
  GETIMPORT R14 K47 [UDim.new]
  LOADN R15 0
  LOADN R16 4
  CALL R14 2 1
  SETTABLEKS R14 R13 K44 ["CornerRadius"]
  CALL R11 2 1
  GETUPVAL R12 0
  LOADK R13 K48 [".VPF-Button--Selected"]
  DUPTABLE R14 K49 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R15 0
  SETTABLEKS R15 R14 K1 ["BackgroundTransparency"]
  LOADK R15 K50 ["$ActionActivated"]
  SETTABLEKS R15 R14 K32 ["BackgroundColor3"]
  CALL R12 2 1
  GETUPVAL R14 3
  CALL R14 0 1
  JUMPIFNOT R14 [+19]
  GETUPVAL R13 0
  LOADK R14 K51 [".VPF-Button--Disabled"]
  DUPTABLE R15 K5 [{"BackgroundTransparency"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K1 ["BackgroundTransparency"]
  NEWTABLE R16 0 1
  GETUPVAL R17 0
  LOADK R18 K52 [">> .VPF-Icon"]
  DUPTABLE R19 K54 [{"ImageTransparency"}]
  LOADK R20 K55 [0.5]
  SETTABLEKS R20 R19 K53 ["ImageTransparency"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  JUMP [+1]
  LOADNIL R13
  GETUPVAL R14 0
  LOADK R15 K56 [".VPF-Button--Unselected"]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 2
  GETUPVAL R18 0
  LOADK R19 K57 [":hover"]
  DUPTABLE R20 K49 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R21 0
  SETTABLEKS R21 R20 K1 ["BackgroundTransparency"]
  LOADK R21 K58 ["$ActionHover"]
  SETTABLEKS R21 R20 K32 ["BackgroundColor3"]
  CALL R18 2 1
  GETUPVAL R19 0
  LOADK R20 K59 [":press"]
  DUPTABLE R21 K49 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R22 0
  SETTABLEKS R22 R21 K1 ["BackgroundTransparency"]
  LOADK R22 K50 ["$ActionActivated"]
  SETTABLEKS R22 R21 K32 ["BackgroundColor3"]
  CALL R19 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  GETUPVAL R8 0
  LOADK R9 K60 [".VPF-Icon"]
  DUPTABLE R10 K62 [{"ImageColor3", "Size"}]
  LOADK R11 K26 ["$TextPrimary"]
  SETTABLEKS R11 R10 K61 ["ImageColor3"]
  GETIMPORT R11 K64 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K38 ["Size"]
  NEWTABLE R11 0 1
  GETUPVAL R12 0
  LOADK R13 K65 ["::UIAspectRatioConstraint"]
  CALL R12 1 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  GETUPVAL R9 0
  LOADK R10 K66 [".VPF-Label"]
  DUPTABLE R11 K68 [{"AutomaticSize", "Size", "TextYAlignment", "TextSize", "TextColor3"}]
  GETIMPORT R12 K70 [Enum.AutomaticSize.X]
  SETTABLEKS R12 R11 K67 ["AutomaticSize"]
  GETIMPORT R12 K64 [UDim2.fromScale]
  LOADN R13 0
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K38 ["Size"]
  GETIMPORT R12 K72 [Enum.TextYAlignment.Center]
  SETTABLEKS R12 R11 K24 ["TextYAlignment"]
  LOADN R12 18
  SETTABLEKS R12 R11 K22 ["TextSize"]
  LOADK R12 K26 ["$TextPrimary"]
  SETTABLEKS R12 R11 K21 ["TextColor3"]
  CALL R9 2 1
  GETUPVAL R10 0
  LOADK R11 K73 [".VPF-SeparatorBar"]
  DUPTABLE R12 K74 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R13 K75 ["$Divider"]
  SETTABLEKS R13 R12 K32 ["BackgroundColor3"]
  LOADN R13 0
  SETTABLEKS R13 R12 K1 ["BackgroundTransparency"]
  CALL R10 2 1
  GETUPVAL R11 0
  LOADK R12 K76 [".VPF-Slider"]
  DUPTABLE R13 K77 [{"AutomaticSize", "Size"}]
  GETIMPORT R14 K70 [Enum.AutomaticSize.X]
  SETTABLEKS R14 R13 K67 ["AutomaticSize"]
  GETIMPORT R14 K42 [UDim2.fromOffset]
  LOADN R15 0
  LOADN R16 24
  CALL R14 2 1
  SETTABLEKS R14 R13 K38 ["Size"]
  NEWTABLE R14 0 7
  GETUPVAL R15 0
  LOADK R16 K78 ["::UIPadding"]
  DUPTABLE R17 K80 [{"PaddingRight"}]
  GETIMPORT R18 K47 [UDim.new]
  LOADN R19 0
  LOADN R20 5
  CALL R18 2 1
  SETTABLEKS R18 R17 K79 ["PaddingRight"]
  CALL R15 2 1
  GETUPVAL R16 0
  LOADK R17 K81 ["::UIListLayout"]
  DUPTABLE R18 K84 [{"FillDirection", "Padding"}]
  GETIMPORT R19 K86 [Enum.FillDirection.Horizontal]
  SETTABLEKS R19 R18 K82 ["FillDirection"]
  GETIMPORT R19 K47 [UDim.new]
  LOADN R20 0
  LOADN R21 12
  CALL R19 2 1
  SETTABLEKS R19 R18 K83 ["Padding"]
  CALL R16 2 1
  GETUPVAL R17 0
  LOADK R18 K87 [">> .VPF-Slider__BarSegment"]
  DUPTABLE R19 K88 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
  LOADK R20 K26 ["$TextPrimary"]
  SETTABLEKS R20 R19 K32 ["BackgroundColor3"]
  LOADN R20 0
  SETTABLEKS R20 R19 K1 ["BackgroundTransparency"]
  GETIMPORT R20 K42 [UDim2.fromOffset]
  LOADN R21 8
  LOADN R22 2
  CALL R20 2 1
  SETTABLEKS R20 R19 K38 ["Size"]
  NEWTABLE R20 0 1
  GETUPVAL R21 0
  LOADK R22 K43 ["::UICorner"]
  DUPTABLE R23 K45 [{"CornerRadius"}]
  GETIMPORT R24 K47 [UDim.new]
  LOADN R25 0
  LOADN R26 4
  CALL R24 2 1
  SETTABLEKS R24 R23 K44 ["CornerRadius"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  GETUPVAL R18 0
  LOADK R19 K89 [">> .VPF-Slider__Input"]
  DUPTABLE R20 K91 [{"BackgroundColor3", "BorderSizePixel", "ClearTextOnFocus", "Font", "TextColor3", "TextSize"}]
  LOADK R21 K50 ["$ActionActivated"]
  SETTABLEKS R21 R20 K32 ["BackgroundColor3"]
  LOADN R21 0
  SETTABLEKS R21 R20 K2 ["BorderSizePixel"]
  LOADB R21 0
  SETTABLEKS R21 R20 K90 ["ClearTextOnFocus"]
  GETIMPORT R21 K18 [Enum.Font.SourceSans]
  SETTABLEKS R21 R20 K14 ["Font"]
  LOADK R21 K26 ["$TextPrimary"]
  SETTABLEKS R21 R20 K21 ["TextColor3"]
  LOADN R21 18
  SETTABLEKS R21 R20 K22 ["TextSize"]
  NEWTABLE R21 0 1
  GETUPVAL R22 0
  LOADK R23 K92 ["::UIStroke"]
  DUPTABLE R24 K96 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R25 K98 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R25 R24 K93 ["ApplyStrokeMode"]
  LOADK R25 K50 ["$ActionActivated"]
  SETTABLEKS R25 R24 K94 ["Color"]
  LOADN R25 1
  SETTABLEKS R25 R24 K95 ["Thickness"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  GETUPVAL R19 0
  LOADK R20 K99 [">> .VPF-Slider__StepButton"]
  DUPTABLE R21 K100 [{"BackgroundColor3", "Size"}]
  LOADK R22 K101 ["$SecondaryMain"]
  SETTABLEKS R22 R21 K32 ["BackgroundColor3"]
  GETIMPORT R22 K102 [UDim2.new]
  LOADN R23 0
  LOADN R24 20
  LOADN R25 1
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K38 ["Size"]
  NEWTABLE R22 0 2
  GETUPVAL R23 0
  LOADK R24 K43 ["::UICorner"]
  DUPTABLE R25 K45 [{"CornerRadius"}]
  GETIMPORT R26 K47 [UDim.new]
  LOADN R27 0
  LOADN R28 4
  CALL R26 2 1
  SETTABLEKS R26 R25 K44 ["CornerRadius"]
  CALL R23 2 1
  GETUPVAL R24 0
  LOADK R25 K92 ["::UIStroke"]
  DUPTABLE R26 K96 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R27 K98 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R27 R26 K93 ["ApplyStrokeMode"]
  LOADK R27 K50 ["$ActionActivated"]
  SETTABLEKS R27 R26 K94 ["Color"]
  LOADN R27 1
  SETTABLEKS R27 R26 K95 ["Thickness"]
  CALL R24 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  GETUPVAL R20 0
  LOADK R21 K103 [".VPF-Slider--Disabled >> .VPF-Slider__StepButton"]
  DUPTABLE R22 K33 [{"BackgroundColor3"}]
  LOADK R23 K104 ["$SecondaryMuted"]
  SETTABLEKS R23 R22 K32 ["BackgroundColor3"]
  CALL R20 2 1
  GETUPVAL R21 0
  LOADK R22 K105 [".VPF-Slider--Enabled >> .VPF-Slider__StepButton"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  GETUPVAL R25 0
  LOADK R26 K57 [":hover"]
  DUPTABLE R27 K33 [{"BackgroundColor3"}]
  LOADK R28 K106 ["$SecondaryContrast"]
  SETTABLEKS R28 R27 K32 ["BackgroundColor3"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  GETUPVAL R12 0
  LOADK R13 K107 [".VPF-TextButton"]
  DUPTABLE R14 K108 [{"AutomaticSize", "BackgroundColor3", "Font", "Size", "TextColor3", "TextSize"}]
  GETIMPORT R15 K70 [Enum.AutomaticSize.X]
  SETTABLEKS R15 R14 K67 ["AutomaticSize"]
  LOADK R15 K109 ["$PrimaryMain"]
  SETTABLEKS R15 R14 K32 ["BackgroundColor3"]
  GETIMPORT R15 K18 [Enum.Font.SourceSans]
  SETTABLEKS R15 R14 K14 ["Font"]
  GETIMPORT R15 K64 [UDim2.fromScale]
  LOADN R16 0
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K38 ["Size"]
  LOADK R15 K110 ["$TextContrast"]
  SETTABLEKS R15 R14 K21 ["TextColor3"]
  LOADN R15 20
  SETTABLEKS R15 R14 K22 ["TextSize"]
  NEWTABLE R15 0 4
  GETUPVAL R16 0
  LOADK R17 K43 ["::UICorner"]
  DUPTABLE R18 K45 [{"CornerRadius"}]
  GETIMPORT R19 K47 [UDim.new]
  LOADN R20 0
  LOADN R21 4
  CALL R19 2 1
  SETTABLEKS R19 R18 K44 ["CornerRadius"]
  CALL R16 2 1
  GETUPVAL R17 0
  LOADK R18 K78 ["::UIPadding"]
  DUPTABLE R19 K114 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R20 K47 [UDim.new]
  LOADN R21 0
  LOADN R22 14
  CALL R20 2 1
  SETTABLEKS R20 R19 K111 ["PaddingLeft"]
  GETIMPORT R20 K47 [UDim.new]
  LOADN R21 0
  LOADN R22 14
  CALL R20 2 1
  SETTABLEKS R20 R19 K79 ["PaddingRight"]
  GETIMPORT R20 K47 [UDim.new]
  LOADN R21 0
  LOADN R22 5
  CALL R20 2 1
  SETTABLEKS R20 R19 K112 ["PaddingTop"]
  GETIMPORT R20 K47 [UDim.new]
  LOADN R21 0
  LOADN R22 5
  CALL R20 2 1
  SETTABLEKS R20 R19 K113 ["PaddingBottom"]
  CALL R17 2 1
  GETUPVAL R18 0
  LOADK R19 K57 [":hover"]
  DUPTABLE R20 K33 [{"BackgroundColor3"}]
  LOADK R21 K115 ["$PrimaryHoverBackground"]
  SETTABLEKS R21 R20 K32 ["BackgroundColor3"]
  CALL R18 2 1
  GETUPVAL R19 0
  LOADK R20 K116 [".VPF-TextButton--Disabled"]
  DUPTABLE R21 K117 [{"BackgroundColor3", "TextColor3"}]
  LOADK R22 K106 ["$SecondaryContrast"]
  SETTABLEKS R22 R21 K32 ["BackgroundColor3"]
  LOADK R22 K104 ["$SecondaryMuted"]
  SETTABLEKS R22 R21 K21 ["TextColor3"]
  NEWTABLE R22 0 1
  GETUPVAL R23 0
  LOADK R24 K57 [":hover"]
  DUPTABLE R25 K33 [{"BackgroundColor3"}]
  LOADK R26 K106 ["$SecondaryContrast"]
  SETTABLEKS R26 R25 K32 ["BackgroundColor3"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  GETUPVAL R13 0
  LOADK R14 K118 [".VPF-Toolbar"]
  DUPTABLE R15 K119 [{"AutomaticSize"}]
  GETIMPORT R16 K121 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K67 ["AutomaticSize"]
  NEWTABLE R16 0 2
  GETUPVAL R17 0
  LOADK R18 K122 [".VPF-Toolbar--Horizontal"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 2
  GETUPVAL R21 0
  LOADK R22 K123 [".VPF-Toolbar--Center"]
  DUPTABLE R23 K126 [{"AnchorPoint", "Position"}]
  GETIMPORT R24 K128 [Vector2.new]
  LOADK R25 K55 [0.5]
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K124 ["AnchorPoint"]
  GETIMPORT R24 K102 [UDim2.new]
  LOADK R25 K55 [0.5]
  LOADN R26 0
  LOADN R27 0
  GETUPVAL R28 4
  CALL R24 4 1
  SETTABLEKS R24 R23 K125 ["Position"]
  CALL R21 2 1
  GETUPVAL R23 5
  CALL R23 0 1
  JUMPIFNOT R23 [+19]
  GETUPVAL R22 0
  LOADK R23 K129 [".VPF-Toolbar--Left"]
  DUPTABLE R24 K126 [{"AnchorPoint", "Position"}]
  GETIMPORT R25 K128 [Vector2.new]
  LOADN R26 0
  LOADN R27 0
  CALL R25 2 1
  SETTABLEKS R25 R24 K124 ["AnchorPoint"]
  GETIMPORT R25 K42 [UDim2.fromOffset]
  GETUPVAL R26 4
  GETUPVAL R27 4
  CALL R25 2 1
  SETTABLEKS R25 R24 K125 ["Position"]
  CALL R22 2 1
  JUMP [+1]
  LOADNIL R22
  SETLIST R20 R21 2 [1]
  CALL R17 3 1
  GETUPVAL R18 0
  LOADK R19 K130 [".VPF-Toolbar--Vertical"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 3
  GETUPVAL R22 0
  LOADK R23 K123 [".VPF-Toolbar--Center"]
  DUPTABLE R24 K126 [{"AnchorPoint", "Position"}]
  GETIMPORT R25 K128 [Vector2.new]
  LOADN R26 0
  LOADK R27 K55 [0.5]
  CALL R25 2 1
  SETTABLEKS R25 R24 K124 ["AnchorPoint"]
  GETIMPORT R25 K102 [UDim2.new]
  LOADN R26 0
  GETUPVAL R27 4
  LOADK R28 K55 [0.5]
  LOADN R29 0
  CALL R25 4 1
  SETTABLEKS R25 R24 K125 ["Position"]
  CALL R22 2 1
  GETUPVAL R23 0
  LOADK R24 K131 [".VPF-Toolbar--Top"]
  DUPTABLE R25 K126 [{"AnchorPoint", "Position"}]
  GETIMPORT R26 K128 [Vector2.new]
  LOADN R27 0
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K124 ["AnchorPoint"]
  GETIMPORT R26 K102 [UDim2.new]
  LOADN R27 0
  GETUPVAL R28 4
  LOADN R29 0
  GETUPVAL R31 5
  CALL R31 0 1
  JUMPIFNOT R31 [+4]
  GETUPVAL R32 4
  ADDK R31 R32 K133 [44]
  ADDK R30 R31 K132 [4]
  JUMP [+2]
  GETUPVAL R31 4
  ADDK R30 R31 K134 [40]
  CALL R26 4 1
  SETTABLEKS R26 R25 K125 ["Position"]
  CALL R23 2 1
  GETUPVAL R24 0
  LOADK R25 K135 [".VPF-Toolbar--Bottom"]
  DUPTABLE R26 K126 [{"AnchorPoint", "Position"}]
  GETIMPORT R27 K128 [Vector2.new]
  LOADN R28 0
  LOADN R29 1
  CALL R27 2 1
  SETTABLEKS R27 R26 K124 ["AnchorPoint"]
  GETIMPORT R27 K102 [UDim2.new]
  LOADN R28 0
  GETUPVAL R29 4
  LOADN R30 1
  GETUPVAL R32 5
  CALL R32 0 1
  JUMPIFNOT R32 [+2]
  LOADN R31 212
  JUMP [+1]
  LOADN R31 216
  CALL R27 4 1
  SETTABLEKS R27 R26 K125 ["Position"]
  CALL R24 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  GETUPVAL R14 0
  LOADK R15 K136 [".VPF-ToolbarBase"]
  DUPTABLE R16 K74 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R17 K137 ["$ForegroundMain"]
  SETTABLEKS R17 R16 K32 ["BackgroundColor3"]
  LOADN R17 0
  SETTABLEKS R17 R16 K1 ["BackgroundTransparency"]
  NEWTABLE R17 0 5
  GETUPVAL R18 0
  LOADK R19 K43 ["::UICorner"]
  DUPTABLE R20 K45 [{"CornerRadius"}]
  GETIMPORT R21 K47 [UDim.new]
  LOADN R22 0
  LOADN R23 5
  CALL R21 2 1
  SETTABLEKS R21 R20 K44 ["CornerRadius"]
  CALL R18 2 1
  GETUPVAL R19 0
  LOADK R20 K78 ["::UIPadding"]
  DUPTABLE R21 K114 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R22 K47 [UDim.new]
  LOADN R23 0
  LOADN R24 4
  CALL R22 2 1
  SETTABLEKS R22 R21 K111 ["PaddingLeft"]
  GETIMPORT R22 K47 [UDim.new]
  LOADN R23 0
  LOADN R24 4
  CALL R22 2 1
  SETTABLEKS R22 R21 K79 ["PaddingRight"]
  GETIMPORT R22 K47 [UDim.new]
  LOADN R23 0
  LOADN R24 4
  CALL R22 2 1
  SETTABLEKS R22 R21 K112 ["PaddingTop"]
  GETIMPORT R22 K47 [UDim.new]
  LOADN R23 0
  LOADN R24 4
  CALL R22 2 1
  SETTABLEKS R22 R21 K113 ["PaddingBottom"]
  CALL R19 2 1
  GETUPVAL R20 0
  LOADK R21 K92 ["::UIStroke"]
  DUPTABLE R22 K138 [{"Color", "Thickness"}]
  LOADK R23 K139 ["$BackgroundDefault"]
  SETTABLEKS R23 R22 K94 ["Color"]
  LOADN R23 2
  SETTABLEKS R23 R22 K95 ["Thickness"]
  CALL R20 2 1
  GETUPVAL R21 0
  LOADK R22 K140 [".VPF-ToolbarBase--Horizontal"]
  DUPTABLE R23 K77 [{"AutomaticSize", "Size"}]
  GETIMPORT R24 K70 [Enum.AutomaticSize.X]
  SETTABLEKS R24 R23 K67 ["AutomaticSize"]
  GETIMPORT R24 K42 [UDim2.fromOffset]
  LOADN R25 0
  LOADN R26 40
  CALL R24 2 1
  SETTABLEKS R24 R23 K38 ["Size"]
  NEWTABLE R24 0 2
  GETUPVAL R25 0
  LOADK R26 K81 ["::UIListLayout"]
  DUPTABLE R27 K84 [{"FillDirection", "Padding"}]
  GETIMPORT R28 K86 [Enum.FillDirection.Horizontal]
  SETTABLEKS R28 R27 K82 ["FillDirection"]
  LOADK R28 K141 ["$ButtonSpacing"]
  SETTABLEKS R28 R27 K83 ["Padding"]
  CALL R25 2 1
  GETUPVAL R26 0
  LOADK R27 K142 ["> .VPF-Separator"]
  DUPTABLE R28 K143 [{"Size"}]
  GETIMPORT R29 K102 [UDim2.new]
  LOADN R30 0
  LOADN R31 8
  LOADN R32 1
  LOADN R33 0
  CALL R29 4 1
  SETTABLEKS R29 R28 K38 ["Size"]
  NEWTABLE R29 0 1
  GETUPVAL R30 0
  LOADK R31 K144 ["> .VPF-SeparatorBar"]
  DUPTABLE R32 K145 [{"AnchorPoint", "Position", "Size"}]
  GETIMPORT R33 K128 [Vector2.new]
  LOADK R34 K55 [0.5]
  LOADN R35 0
  CALL R33 2 1
  SETTABLEKS R33 R32 K124 ["AnchorPoint"]
  GETIMPORT R33 K64 [UDim2.fromScale]
  LOADK R34 K55 [0.5]
  LOADN R35 0
  CALL R33 2 1
  SETTABLEKS R33 R32 K125 ["Position"]
  GETIMPORT R33 K102 [UDim2.new]
  LOADN R34 0
  LOADN R35 2
  LOADN R36 1
  LOADN R37 0
  CALL R33 4 1
  SETTABLEKS R33 R32 K38 ["Size"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  GETUPVAL R22 0
  LOADK R23 K146 [".VPF-ToolbarBase--Vertical"]
  DUPTABLE R24 K77 [{"AutomaticSize", "Size"}]
  GETIMPORT R25 K148 [Enum.AutomaticSize.Y]
  SETTABLEKS R25 R24 K67 ["AutomaticSize"]
  GETIMPORT R25 K42 [UDim2.fromOffset]
  LOADN R26 40
  LOADN R27 0
  CALL R25 2 1
  SETTABLEKS R25 R24 K38 ["Size"]
  NEWTABLE R25 0 2
  GETUPVAL R26 0
  LOADK R27 K81 ["::UIListLayout"]
  DUPTABLE R28 K84 [{"FillDirection", "Padding"}]
  GETIMPORT R29 K150 [Enum.FillDirection.Vertical]
  SETTABLEKS R29 R28 K82 ["FillDirection"]
  LOADK R29 K141 ["$ButtonSpacing"]
  SETTABLEKS R29 R28 K83 ["Padding"]
  CALL R26 2 1
  GETUPVAL R27 0
  LOADK R28 K142 ["> .VPF-Separator"]
  DUPTABLE R29 K143 [{"Size"}]
  GETIMPORT R30 K102 [UDim2.new]
  LOADN R31 1
  LOADN R32 0
  LOADN R33 0
  LOADN R34 8
  CALL R30 4 1
  SETTABLEKS R30 R29 K38 ["Size"]
  NEWTABLE R30 0 1
  GETUPVAL R31 0
  LOADK R32 K144 ["> .VPF-SeparatorBar"]
  DUPTABLE R33 K145 [{"AnchorPoint", "Position", "Size"}]
  GETIMPORT R34 K128 [Vector2.new]
  LOADN R35 0
  LOADK R36 K55 [0.5]
  CALL R34 2 1
  SETTABLEKS R34 R33 K124 ["AnchorPoint"]
  GETIMPORT R34 K64 [UDim2.fromScale]
  LOADN R35 0
  LOADK R36 K55 [0.5]
  CALL R34 2 1
  SETTABLEKS R34 R33 K125 ["Position"]
  GETIMPORT R34 K102 [UDim2.new]
  LOADN R35 1
  LOADN R36 0
  LOADN R37 0
  LOADN R38 2
  CALL R34 4 1
  SETTABLEKS R34 R33 K38 ["Size"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 -1
  SETLIST R17 R18 -1 [1]
  DUPTABLE R18 K152 [{"ButtonSpacing"}]
  GETIMPORT R19 K47 [UDim.new]
  LOADN R20 0
  LOADN R21 4
  CALL R19 2 1
  SETTABLEKS R19 R18 K151 ["ButtonSpacing"]
  CALL R14 4 1
  GETUPVAL R15 0
  LOADK R16 K153 [".VPF-Tooltip"]
  DUPTABLE R17 K154 [{"AutomaticSize", "BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R18 K121 [Enum.AutomaticSize.XY]
  SETTABLEKS R18 R17 K67 ["AutomaticSize"]
  LOADK R18 K155 ["$White"]
  SETTABLEKS R18 R17 K32 ["BackgroundColor3"]
  LOADN R18 0
  SETTABLEKS R18 R17 K1 ["BackgroundTransparency"]
  NEWTABLE R18 0 5
  GETUPVAL R20 3
  CALL R20 0 1
  JUMPIFNOT R20 [+15]
  GETUPVAL R19 0
  LOADK R20 K92 ["::UIStroke"]
  DUPTABLE R21 K157 [{"Thickness", "Color", "LineJoinMode"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K95 ["Thickness"]
  LOADK R22 K158 ["$Gray80"]
  SETTABLEKS R22 R21 K94 ["Color"]
  GETIMPORT R22 K160 [Enum.LineJoinMode.Round]
  SETTABLEKS R22 R21 K156 ["LineJoinMode"]
  CALL R19 2 1
  JUMP [+1]
  LOADNIL R19
  GETUPVAL R20 0
  LOADK R21 K161 [">> .VPF-Tooltip__Title"]
  DUPTABLE R22 K162 [{"AutomaticSize", "Font", "TextColor3", "TextSize"}]
  GETIMPORT R23 K121 [Enum.AutomaticSize.XY]
  SETTABLEKS R23 R22 K67 ["AutomaticSize"]
  GETIMPORT R23 K164 [Enum.Font.SourceSansBold]
  SETTABLEKS R23 R22 K14 ["Font"]
  LOADK R23 K165 ["$Gray120"]
  SETTABLEKS R23 R22 K21 ["TextColor3"]
  LOADN R23 14
  SETTABLEKS R23 R22 K22 ["TextSize"]
  CALL R20 2 1
  GETUPVAL R21 0
  LOADK R22 K166 [">> .VPF-Tooltip__Description"]
  DUPTABLE R23 K168 [{"TextColor3", "TextWrapped"}]
  LOADK R24 K165 ["$Gray120"]
  SETTABLEKS R24 R23 K21 ["TextColor3"]
  LOADB R24 1
  SETTABLEKS R24 R23 K167 ["TextWrapped"]
  CALL R21 2 1
  GETUPVAL R22 0
  LOADK R23 K169 [".VPF-Tooltip--Horizontal"]
  DUPTABLE R24 K170 [{"Position"}]
  GETIMPORT R25 K102 [UDim2.new]
  LOADN R26 0
  LOADN R27 0
  LOADN R28 1
  LOADN R29 12
  CALL R25 4 1
  SETTABLEKS R25 R24 K125 ["Position"]
  CALL R22 2 1
  GETUPVAL R23 0
  LOADK R24 K171 [".VPF-Tooltip--Vertical"]
  DUPTABLE R25 K170 [{"Position"}]
  GETIMPORT R26 K102 [UDim2.new]
  LOADN R27 1
  LOADN R28 8
  LOADN R29 0
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K125 ["Position"]
  CALL R23 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  GETUPVAL R16 0
  LOADK R17 K172 [".VPF-X-ContrastBg"]
  DUPTABLE R18 K74 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R19 K173 ["$ForegroundContrast"]
  SETTABLEKS R19 R18 K32 ["BackgroundColor3"]
  LOADN R19 0
  SETTABLEKS R19 R18 K1 ["BackgroundTransparency"]
  CALL R16 2 1
  SETLIST R0 R1 16 [1]
  GETUPVAL R1 0
  LOADK R2 K174 [".VPF-X-DebugPink"]
  DUPTABLE R3 K49 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K1 ["BackgroundTransparency"]
  GETIMPORT R4 K36 [Color3.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 1
  CALL R4 3 1
  SETTABLEKS R4 R3 K32 ["BackgroundColor3"]
  CALL R1 2 1
  GETUPVAL R2 0
  LOADK R3 K175 [".VPF-X-MainBg"]
  DUPTABLE R4 K74 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R5 K137 ["$ForegroundMain"]
  SETTABLEKS R5 R4 K32 ["BackgroundColor3"]
  LOADN R5 0
  SETTABLEKS R5 R4 K1 ["BackgroundTransparency"]
  CALL R2 2 1
  GETUPVAL R3 0
  LOADK R4 K176 [".VPF-X-Primary"]
  DUPTABLE R5 K177 [{"ImageColor3"}]
  LOADK R6 K26 ["$TextPrimary"]
  SETTABLEKS R6 R5 K61 ["ImageColor3"]
  CALL R3 2 1
  GETUPVAL R4 0
  LOADK R5 K178 [".VPF-X-Square"]
  NEWTABLE R6 0 0
  NEWTABLE R7 0 1
  GETUPVAL R8 0
  LOADK R9 K65 ["::UIAspectRatioConstraint"]
  CALL R8 1 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  SETLIST R0 R1 -1 [17]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ViewportToolingFramework"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Flags"]
  GETTABLEKS R3 R4 K9 ["getFFlagViewportToolingFrameworkSplitButtons"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Flags"]
  GETTABLEKS R4 R5 K10 ["getFFlagViewportToolingFrameworkToolbarSpacing"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Flags"]
  GETTABLEKS R5 R6 K11 ["getFFlagViewportToolingFrameworkButtonDisabled"]
  CALL R4 1 1
  GETIMPORT R5 K13 [game]
  LOADK R7 K14 ["ViewportToolingFrameworkTextLabelColor"]
  LOADB R8 0
  NAMECALL R5 R5 K15 ["DefineFastFlag"]
  CALL R5 3 1
  GETTABLEKS R7 R1 K16 ["Styling"]
  GETTABLEKS R6 R7 K17 ["createStyleRule"]
  MOVE R8 R3
  CALL R8 0 1
  JUMPIFNOT R8 [+2]
  LOADN R7 18
  JUMP [+1]
  LOADN R7 16
  DUPCLOSURE R8 K18 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R3
  RETURN R8 1
