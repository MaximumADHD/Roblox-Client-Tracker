MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ControlsEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  GETTABLEKS R4 R1 K8 ["Styling"]
  GETTABLEKS R3 R4 K10 ["createStyleSheet"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K12 ["Resources"]
  GETTABLEKS R5 R6 K13 ["StyleConstants"]
  CALL R4 1 1
  NEWTABLE R5 0 12
  MOVE R6 R2
  LOADK R7 K14 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R8 K17 [{"Font", "TextSize"}]
  GETTABLEKS R9 R4 K18 ["defaultFont"]
  SETTABLEKS R9 R8 K15 ["Font"]
  GETTABLEKS R9 R4 K19 ["normalFontSize"]
  SETTABLEKS R9 R8 K16 ["TextSize"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K20 [".HeaderButton"]
  DUPTABLE R9 K25 [{"Size", "TextSize", "AutomaticSize", "BackgroundTransparency", "Wraps"}]
  GETIMPORT R10 K28 [UDim2.new]
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  GETTABLEKS R15 R4 K30 ["headerFontSize"]
  ADDK R14 R15 K29 [8]
  CALL R10 4 1
  SETTABLEKS R10 R9 K21 ["Size"]
  GETTABLEKS R10 R4 K30 ["headerFontSize"]
  SETTABLEKS R10 R9 K16 ["TextSize"]
  GETIMPORT R10 K33 [Enum.AutomaticSize.X]
  SETTABLEKS R10 R9 K22 ["AutomaticSize"]
  LOADN R10 0
  SETTABLEKS R10 R9 K23 ["BackgroundTransparency"]
  LOADB R10 1
  SETTABLEKS R10 R9 K24 ["Wraps"]
  NEWTABLE R10 0 4
  MOVE R11 R2
  LOADK R12 K34 ["::UIPadding"]
  DUPTABLE R13 K39 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R14 K41 [UDim.new]
  LOADN R15 0
  GETTABLEKS R16 R4 K42 ["buttonPaddingHorizontal"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K35 ["PaddingLeft"]
  GETIMPORT R14 K41 [UDim.new]
  LOADN R15 0
  GETTABLEKS R16 R4 K42 ["buttonPaddingHorizontal"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K36 ["PaddingRight"]
  GETIMPORT R14 K41 [UDim.new]
  LOADN R15 0
  GETTABLEKS R16 R4 K43 ["buttonPaddingVertical"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K37 ["PaddingTop"]
  GETIMPORT R14 K41 [UDim.new]
  LOADN R15 0
  GETTABLEKS R16 R4 K43 ["buttonPaddingVertical"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K38 ["PaddingBottom"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K44 ["::UICorner"]
  DUPTABLE R14 K46 [{"CornerRadius"}]
  GETIMPORT R15 K41 [UDim.new]
  LOADN R16 0
  GETTABLEKS R17 R4 K47 ["buttonCornerRadius"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K45 ["CornerRadius"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K48 [".Primary"]
  DUPTABLE R15 K51 [{"TextColor3", "BackgroundColor3"}]
  LOADK R16 K52 ["$ButtonTextColor"]
  SETTABLEKS R16 R15 K49 ["TextColor3"]
  LOADK R16 K53 ["$PrimaryButtonBackgroundColor"]
  SETTABLEKS R16 R15 K50 ["BackgroundColor3"]
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K54 [":hover"]
  DUPTABLE R19 K55 [{"BackgroundColor3"}]
  LOADK R20 K56 ["$PrimaryButtonHoverBackgroundColor"]
  SETTABLEKS R20 R19 K50 ["BackgroundColor3"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K57 [".Secondary"]
  DUPTABLE R16 K51 [{"TextColor3", "BackgroundColor3"}]
  LOADK R17 K52 ["$ButtonTextColor"]
  SETTABLEKS R17 R16 K49 ["TextColor3"]
  LOADK R17 K58 ["$SecondaryButtonBackgroundColor"]
  SETTABLEKS R17 R16 K50 ["BackgroundColor3"]
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K54 [":hover"]
  DUPTABLE R20 K55 [{"BackgroundColor3"}]
  LOADK R21 K59 ["$SecondaryButtonHoverBackgroundColor"]
  SETTABLEKS R21 R20 K50 ["BackgroundColor3"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K60 [".CX-Invisible"]
  DUPTABLE R10 K61 [{"BackgroundTransparency"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K23 ["BackgroundTransparency"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K62 [".CX-Divider"]
  DUPTABLE R11 K64 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R12 K28 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 1
  CALL R12 4 1
  SETTABLEKS R12 R11 K21 ["Size"]
  LOADK R12 K65 ["$DividerColor"]
  SETTABLEKS R12 R11 K50 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K63 ["BorderSizePixel"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K66 [".Width-Scaling"]
  DUPTABLE R12 K68 [{"BorderSizePixel", "Size", "SizeConstraint"}]
  LOADN R13 0
  SETTABLEKS R13 R12 K63 ["BorderSizePixel"]
  GETIMPORT R13 K28 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K21 ["Size"]
  GETIMPORT R13 K70 [Enum.SizeConstraint.RelativeXX]
  SETTABLEKS R13 R12 K67 ["SizeConstraint"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K71 [">> .Widget-Button"]
  DUPTABLE R13 K61 [{"BackgroundTransparency"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K23 ["BackgroundTransparency"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K72 [".Active"]
  DUPTABLE R14 K73 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R15 K74 ["$ControlActiveColor"]
  SETTABLEKS R15 R14 K50 ["BackgroundColor3"]
  LOADK R15 K75 [0.3]
  SETTABLEKS R15 R14 K23 ["BackgroundTransparency"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K76 [".Hovered"]
  DUPTABLE R15 K73 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R16 K74 ["$ControlActiveColor"]
  SETTABLEKS R16 R15 K50 ["BackgroundColor3"]
  LOADK R16 K77 [0.6]
  SETTABLEKS R16 R15 K23 ["BackgroundTransparency"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K78 [".Hovered.Active"]
  DUPTABLE R16 K73 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R17 K74 ["$ControlActiveColor"]
  SETTABLEKS R17 R16 K50 ["BackgroundColor3"]
  LOADK R17 K75 [0.3]
  SETTABLEKS R17 R16 K23 ["BackgroundTransparency"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K79 ["#ScrollableBlueprintContainer"]
  DUPTABLE R17 K83 [{"Size", "BackgroundColor3", "ScrollBarThickness", "ScrollingDirection", "CanvasSize"}]
  GETIMPORT R18 K28 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K21 ["Size"]
  LOADK R18 K84 ["$BlueprintBackgroundColor"]
  SETTABLEKS R18 R17 K50 ["BackgroundColor3"]
  LOADN R18 5
  SETTABLEKS R18 R17 K80 ["ScrollBarThickness"]
  GETIMPORT R18 K86 [Enum.ScrollingDirection.Y]
  SETTABLEKS R18 R17 K81 ["ScrollingDirection"]
  GETIMPORT R18 K28 [UDim2.new]
  LOADN R19 0
  LOADN R20 0
  LOADN R21 0
  LOADN R22 144
  CALL R18 4 1
  SETTABLEKS R18 R17 K82 ["CanvasSize"]
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K87 [".Includes-VR-Footer"]
  DUPTABLE R21 K88 [{"CanvasSize"}]
  GETIMPORT R22 K28 [UDim2.new]
  LOADN R23 0
  LOADN R24 0
  LOADN R25 0
  LOADN R26 188
  CALL R22 4 1
  SETTABLEKS R22 R21 K82 ["CanvasSize"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K89 [">> #GamepadAndVRLayoutContainer"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K90 ["::UIListLayout"]
  DUPTABLE R26 K94 [{"SortOrder", "HorizontalAlignment", "FillDirection"}]
  GETIMPORT R27 K96 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K91 ["SortOrder"]
  GETIMPORT R27 K98 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R27 R26 K92 ["HorizontalAlignment"]
  GETIMPORT R27 K100 [Enum.FillDirection.Vertical]
  SETTABLEKS R27 R26 K93 ["FillDirection"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K101 [">> .Mapping-Widget"]
  DUPTABLE R18 K102 [{"BackgroundTransparency", "Size"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K23 ["BackgroundTransparency"]
  GETIMPORT R19 K28 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K21 ["Size"]
  NEWTABLE R19 0 3
  MOVE R20 R2
  LOADK R21 K103 [">> .Mapping-Label"]
  DUPTABLE R22 K104 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R23 K28 [UDim2.new]
  LOADK R24 K105 [0.04]
  LOADN R25 0
  LOADK R26 K105 [0.04]
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K21 ["Size"]
  LOADN R23 1
  SETTABLEKS R23 R22 K23 ["BackgroundTransparency"]
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K106 [">> TextLabel"]
  DUPTABLE R26 K108 [{"Font", "BackgroundTransparency", "TextColor3", "TextSize", "TextScaled", "HorizontalAlignment"}]
  GETTABLEKS R27 R4 K109 ["defaultFontBold"]
  SETTABLEKS R27 R26 K15 ["Font"]
  LOADN R27 1
  SETTABLEKS R27 R26 K23 ["BackgroundTransparency"]
  LOADK R27 K110 ["$BlueprintLabelsColor"]
  SETTABLEKS R27 R26 K49 ["TextColor3"]
  GETTABLEKS R27 R4 K111 ["blueprintLabelFontSize"]
  SETTABLEKS R27 R26 K16 ["TextSize"]
  LOADB R27 1
  SETTABLEKS R27 R26 K107 ["TextScaled"]
  GETIMPORT R27 K98 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R27 R26 K92 ["HorizontalAlignment"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K112 [">> .Component-Arrow"]
  DUPTABLE R23 K114 [{"Color3"}]
  LOADK R24 K115 ["$BlueprintArrowColor"]
  SETTABLEKS R24 R23 K113 ["Color3"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K116 [">> .Component-Arrow-Circle"]
  DUPTABLE R24 K118 [{"Size", "Color3", "AnchorPoint"}]
  GETIMPORT R25 K28 [UDim2.new]
  LOADK R26 K119 [0.02]
  LOADN R27 0
  LOADK R28 K119 [0.02]
  LOADN R29 0
  CALL R25 4 1
  SETTABLEKS R25 R24 K21 ["Size"]
  LOADK R25 K115 ["$BlueprintArrowColor"]
  SETTABLEKS R25 R24 K113 ["Color3"]
  GETIMPORT R25 K121 [Vector2.new]
  LOADK R26 K122 [0.5]
  LOADK R27 K122 [0.5]
  CALL R25 2 1
  SETTABLEKS R25 R24 K117 ["AnchorPoint"]
  CALL R22 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K123 [">> .X-Circle"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K44 ["::UICorner"]
  DUPTABLE R23 K46 [{"CornerRadius"}]
  GETIMPORT R24 K41 [UDim.new]
  LOADN R25 1
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K45 ["CornerRadius"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R5 R6 -1 [1]
  DUPTABLE R6 K126 [{"BlueprintWithMappingsPadding", "TooltipPadding"}]
  GETIMPORT R7 K41 [UDim.new]
  LOADK R8 K127 [0.2]
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R6 K124 ["BlueprintWithMappingsPadding"]
  GETIMPORT R7 K41 [UDim.new]
  LOADN R8 0
  LOADN R9 10
  CALL R7 2 1
  SETTABLEKS R7 R6 K125 ["TooltipPadding"]
  MOVE R7 R3
  LOADK R8 K2 ["ControlsEmulator"]
  MOVE R9 R5
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1
