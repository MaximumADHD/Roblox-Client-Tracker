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
  NEWTABLE R4 0 9
  MOVE R5 R2
  LOADK R6 K11 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R7 K13 [{"Font"}]
  GETIMPORT R8 K16 [Enum.Font.SourceSans]
  SETTABLEKS R8 R7 K12 ["Font"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K17 [".CX-Invisible"]
  DUPTABLE R8 K19 [{"BackgroundTransparency"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K18 ["BackgroundTransparency"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K20 [".Width-Scaling"]
  DUPTABLE R9 K24 [{"BorderSizePixel", "Size", "SizeConstraint"}]
  LOADN R10 0
  SETTABLEKS R10 R9 K21 ["BorderSizePixel"]
  GETIMPORT R10 K27 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K22 ["Size"]
  GETIMPORT R10 K29 [Enum.SizeConstraint.RelativeXX]
  SETTABLEKS R10 R9 K23 ["SizeConstraint"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K30 [">> .Widget-Button"]
  DUPTABLE R10 K19 [{"BackgroundTransparency"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K18 ["BackgroundTransparency"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K31 [".Active"]
  DUPTABLE R11 K33 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R12 K34 ["$Blue60"]
  SETTABLEKS R12 R11 K32 ["BackgroundColor3"]
  LOADK R12 K35 [0.5]
  SETTABLEKS R12 R11 K18 ["BackgroundTransparency"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K36 [".Hovered"]
  DUPTABLE R12 K19 [{"BackgroundTransparency"}]
  LOADK R13 K37 [0.2]
  SETTABLEKS R13 R12 K18 ["BackgroundTransparency"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K38 [".Hovered.Active"]
  DUPTABLE R13 K33 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R14 K34 ["$Blue60"]
  SETTABLEKS R14 R13 K32 ["BackgroundColor3"]
  LOADK R14 K35 [0.5]
  SETTABLEKS R14 R13 K18 ["BackgroundTransparency"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K39 ["#ScrollableBlueprintContainer"]
  DUPTABLE R14 K43 [{"Size", "BackgroundColor3", "ScrollBarThickness", "ScrollingDirection", "CanvasSize"}]
  GETIMPORT R15 K27 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K22 ["Size"]
  LOADK R15 K44 ["$BlueprintBackgroundColor"]
  SETTABLEKS R15 R14 K32 ["BackgroundColor3"]
  LOADN R15 5
  SETTABLEKS R15 R14 K40 ["ScrollBarThickness"]
  GETIMPORT R15 K46 [Enum.ScrollingDirection.Y]
  SETTABLEKS R15 R14 K41 ["ScrollingDirection"]
  GETIMPORT R15 K27 [UDim2.new]
  LOADN R16 0
  LOADN R17 0
  LOADN R18 0
  LOADN R19 144
  CALL R15 4 1
  SETTABLEKS R15 R14 K42 ["CanvasSize"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K47 [">> .Mapping-Widget"]
  DUPTABLE R15 K48 [{"BackgroundTransparency", "Size"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K18 ["BackgroundTransparency"]
  GETIMPORT R16 K27 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K22 ["Size"]
  NEWTABLE R16 0 3
  MOVE R17 R2
  LOADK R18 K49 [">> .Mapping-Label"]
  DUPTABLE R19 K50 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R20 K27 [UDim2.new]
  LOADK R21 K51 [0.04]
  LOADN R22 0
  LOADK R23 K51 [0.04]
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K22 ["Size"]
  LOADN R20 1
  SETTABLEKS R20 R19 K18 ["BackgroundTransparency"]
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K52 [">> TextLabel"]
  DUPTABLE R23 K57 [{"BackgroundTransparency", "TextColor3", "TextSize", "TextScaled", "HorizontalAlignment"}]
  LOADN R24 1
  SETTABLEKS R24 R23 K18 ["BackgroundTransparency"]
  LOADK R24 K58 ["$BlueprintLabelsColor"]
  SETTABLEKS R24 R23 K53 ["TextColor3"]
  LOADN R24 20
  SETTABLEKS R24 R23 K54 ["TextSize"]
  LOADB R24 1
  SETTABLEKS R24 R23 K55 ["TextScaled"]
  GETIMPORT R24 K60 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R24 R23 K56 ["HorizontalAlignment"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K61 [">> .Component-Arrow"]
  DUPTABLE R20 K63 [{"Color3"}]
  LOADK R21 K64 ["$TextContrast"]
  SETTABLEKS R21 R20 K62 ["Color3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K65 [">> .X-Circle"]
  DUPTABLE R21 K67 [{"Size", "BackgroundColor3", "AnchorPoint"}]
  GETIMPORT R22 K27 [UDim2.new]
  LOADK R23 K68 [0.01]
  LOADN R24 0
  LOADK R25 K68 [0.01]
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K22 ["Size"]
  LOADK R22 K64 ["$TextContrast"]
  SETTABLEKS R22 R21 K32 ["BackgroundColor3"]
  GETIMPORT R22 K70 [Vector2.new]
  LOADK R23 K35 [0.5]
  LOADK R24 K35 [0.5]
  CALL R22 2 1
  SETTABLEKS R22 R21 K66 ["AnchorPoint"]
  CALL R19 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R4 R5 -1 [1]
  DUPTABLE R5 K74 [{"BlueprintWithMappingsPadding", "PrimaryButtonColor", "PrimaryButtonTextColor"}]
  GETIMPORT R6 K76 [UDim.new]
  LOADK R7 K77 [0.15]
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K71 ["BlueprintWithMappingsPadding"]
  GETIMPORT R6 K79 [Color3.fromRGB]
  LOADN R7 51
  LOADN R8 95
  LOADN R9 255
  CALL R6 3 1
  SETTABLEKS R6 R5 K72 ["PrimaryButtonColor"]
  GETIMPORT R6 K79 [Color3.fromRGB]
  LOADN R7 255
  LOADN R8 255
  LOADN R9 255
  CALL R6 3 1
  SETTABLEKS R6 R5 K73 ["PrimaryButtonTextColor"]
  MOVE R6 R3
  LOADK R7 K2 ["ControlsEmulator"]
  MOVE R8 R4
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
