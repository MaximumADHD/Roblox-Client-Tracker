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
  NEWTABLE R5 0 8
  MOVE R6 R2
  LOADK R7 K14 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R8 K17 [{"Font", "TextSize"}]
  GETIMPORT R9 K20 [Enum.Font.SourceSans]
  SETTABLEKS R9 R8 K15 ["Font"]
  GETTABLEKS R9 R4 K21 ["normalFontSize"]
  SETTABLEKS R9 R8 K16 ["TextSize"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K22 [".CX-Invisible"]
  DUPTABLE R9 K24 [{"BackgroundTransparency"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K23 ["BackgroundTransparency"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K25 [".Width-Scaling"]
  DUPTABLE R10 K29 [{"BorderSizePixel", "Size", "SizeConstraint"}]
  LOADN R11 0
  SETTABLEKS R11 R10 K26 ["BorderSizePixel"]
  GETIMPORT R11 K32 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K27 ["Size"]
  GETIMPORT R11 K34 [Enum.SizeConstraint.RelativeXX]
  SETTABLEKS R11 R10 K28 ["SizeConstraint"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K35 [">> .Widget-Button"]
  DUPTABLE R11 K24 [{"BackgroundTransparency"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K23 ["BackgroundTransparency"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K36 [".Active"]
  DUPTABLE R12 K38 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R13 K39 ["$Blue60"]
  SETTABLEKS R13 R12 K37 ["BackgroundColor3"]
  LOADK R13 K40 [0.5]
  SETTABLEKS R13 R12 K23 ["BackgroundTransparency"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K41 [".Hovered.Active"]
  DUPTABLE R13 K38 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R14 K39 ["$Blue60"]
  SETTABLEKS R14 R13 K37 ["BackgroundColor3"]
  LOADK R14 K40 [0.5]
  SETTABLEKS R14 R13 K23 ["BackgroundTransparency"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K42 ["#ScrollableBlueprintContainer"]
  DUPTABLE R14 K46 [{"Size", "BackgroundColor3", "ScrollBarThickness", "ScrollingDirection", "CanvasSize"}]
  GETIMPORT R15 K32 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K27 ["Size"]
  LOADK R15 K47 ["$BlueprintBackgroundColor"]
  SETTABLEKS R15 R14 K37 ["BackgroundColor3"]
  LOADN R15 5
  SETTABLEKS R15 R14 K43 ["ScrollBarThickness"]
  GETIMPORT R15 K49 [Enum.ScrollingDirection.Y]
  SETTABLEKS R15 R14 K44 ["ScrollingDirection"]
  GETIMPORT R15 K32 [UDim2.new]
  LOADN R16 0
  LOADN R17 0
  LOADN R18 0
  LOADN R19 144
  CALL R15 4 1
  SETTABLEKS R15 R14 K45 ["CanvasSize"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K50 [">> .Mapping-Widget"]
  DUPTABLE R15 K51 [{"BackgroundTransparency", "Size"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K23 ["BackgroundTransparency"]
  GETIMPORT R16 K32 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K27 ["Size"]
  NEWTABLE R16 0 3
  MOVE R17 R2
  LOADK R18 K52 [">> .Mapping-Label"]
  DUPTABLE R19 K53 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R20 K32 [UDim2.new]
  LOADK R21 K54 [0.04]
  LOADN R22 0
  LOADK R23 K54 [0.04]
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K27 ["Size"]
  LOADN R20 1
  SETTABLEKS R20 R19 K23 ["BackgroundTransparency"]
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K55 [">> TextLabel"]
  DUPTABLE R23 K59 [{"BackgroundTransparency", "TextColor3", "TextSize", "TextScaled", "HorizontalAlignment"}]
  LOADN R24 1
  SETTABLEKS R24 R23 K23 ["BackgroundTransparency"]
  LOADK R24 K60 ["$BlueprintLabelsColor"]
  SETTABLEKS R24 R23 K56 ["TextColor3"]
  LOADN R24 20
  SETTABLEKS R24 R23 K16 ["TextSize"]
  LOADB R24 1
  SETTABLEKS R24 R23 K57 ["TextScaled"]
  GETIMPORT R24 K62 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R24 R23 K58 ["HorizontalAlignment"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K63 [">> .Component-Arrow"]
  DUPTABLE R20 K65 [{"Color3"}]
  LOADK R21 K66 ["$TextContrast"]
  SETTABLEKS R21 R20 K64 ["Color3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K67 [">> .X-Circle"]
  DUPTABLE R21 K69 [{"Size", "BackgroundColor3", "AnchorPoint"}]
  GETIMPORT R22 K32 [UDim2.new]
  LOADK R23 K70 [0.01]
  LOADN R24 0
  LOADK R25 K70 [0.01]
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K27 ["Size"]
  LOADK R22 K66 ["$TextContrast"]
  SETTABLEKS R22 R21 K37 ["BackgroundColor3"]
  GETIMPORT R22 K72 [Vector2.new]
  LOADK R23 K40 [0.5]
  LOADK R24 K40 [0.5]
  CALL R22 2 1
  SETTABLEKS R22 R21 K68 ["AnchorPoint"]
  CALL R19 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R5 R6 -1 [1]
  DUPTABLE R6 K76 [{"BlueprintWithMappingsPadding", "PrimaryButtonColor", "PrimaryButtonTextColor"}]
  GETIMPORT R7 K78 [UDim.new]
  LOADK R8 K79 [0.16]
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R6 K73 ["BlueprintWithMappingsPadding"]
  GETIMPORT R7 K81 [Color3.fromRGB]
  LOADN R8 51
  LOADN R9 95
  LOADN R10 255
  CALL R7 3 1
  SETTABLEKS R7 R6 K74 ["PrimaryButtonColor"]
  GETIMPORT R7 K81 [Color3.fromRGB]
  LOADN R8 255
  LOADN R9 255
  LOADN R10 255
  CALL R7 3 1
  SETTABLEKS R7 R6 K75 ["PrimaryButtonTextColor"]
  MOVE R7 R3
  LOADK R8 K2 ["ControlsEmulator"]
  MOVE R9 R5
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1
