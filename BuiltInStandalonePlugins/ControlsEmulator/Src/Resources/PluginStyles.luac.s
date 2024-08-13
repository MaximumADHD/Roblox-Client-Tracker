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
  LOADK R6 K11 [".CX-Invisible"]
  DUPTABLE R7 K13 [{"BackgroundTransparency"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K12 ["BackgroundTransparency"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K14 [".LayoutContainer"]
  DUPTABLE R8 K16 [{"Size"}]
  GETIMPORT R9 K19 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K15 ["Size"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K20 [".Width-Scaling"]
  DUPTABLE R9 K23 [{"BorderSizePixel", "Size", "SizeConstraint"}]
  LOADN R10 0
  SETTABLEKS R10 R9 K21 ["BorderSizePixel"]
  GETIMPORT R10 K19 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K15 ["Size"]
  GETIMPORT R10 K26 [Enum.SizeConstraint.RelativeXX]
  SETTABLEKS R10 R9 K22 ["SizeConstraint"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K27 [">> .Widget-Button"]
  DUPTABLE R10 K13 [{"BackgroundTransparency"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K12 ["BackgroundTransparency"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K28 [".Active"]
  DUPTABLE R11 K30 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R12 K31 ["$Red60"]
  SETTABLEKS R12 R11 K29 ["BackgroundColor3"]
  LOADK R12 K32 [0.5]
  SETTABLEKS R12 R11 K12 ["BackgroundTransparency"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K33 [".Hovered"]
  DUPTABLE R12 K13 [{"BackgroundTransparency"}]
  LOADK R13 K34 [0.2]
  SETTABLEKS R13 R12 K12 ["BackgroundTransparency"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K35 [".Hovered.Active"]
  DUPTABLE R13 K30 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R14 K31 ["$Red60"]
  SETTABLEKS R14 R13 K29 ["BackgroundColor3"]
  LOADK R14 K32 [0.5]
  SETTABLEKS R14 R13 K12 ["BackgroundTransparency"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K36 [".Component-ScrollableBlueprintContainer"]
  DUPTABLE R14 K39 [{"Size", "BackgroundColor3", "ScrollBarThickness", "ScrollingDirection"}]
  GETIMPORT R15 K19 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K15 ["Size"]
  LOADK R15 K40 ["$BlueprintBackgroundColor"]
  SETTABLEKS R15 R14 K29 ["BackgroundColor3"]
  LOADN R15 0
  SETTABLEKS R15 R14 K37 ["ScrollBarThickness"]
  GETIMPORT R15 K42 [Enum.ScrollingDirection.Y]
  SETTABLEKS R15 R14 K38 ["ScrollingDirection"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K43 [">> .Mapping-Widget"]
  DUPTABLE R15 K44 [{"BackgroundTransparency", "Size"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K12 ["BackgroundTransparency"]
  GETIMPORT R16 K19 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K15 ["Size"]
  NEWTABLE R16 0 3
  MOVE R17 R2
  LOADK R18 K45 [">> .Mapping-Label"]
  DUPTABLE R19 K46 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R20 K19 [UDim2.new]
  LOADK R21 K47 [0.04]
  LOADN R22 0
  LOADK R23 K47 [0.04]
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K15 ["Size"]
  LOADN R20 1
  SETTABLEKS R20 R19 K12 ["BackgroundTransparency"]
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K48 [">> TextLabel"]
  DUPTABLE R23 K53 [{"BackgroundTransparency", "TextColor3", "TextSize", "TextScaled", "HorizontalAlignment"}]
  LOADN R24 1
  SETTABLEKS R24 R23 K12 ["BackgroundTransparency"]
  LOADK R24 K54 ["$BlueprintLabelsColor"]
  SETTABLEKS R24 R23 K49 ["TextColor3"]
  LOADN R24 20
  SETTABLEKS R24 R23 K50 ["TextSize"]
  LOADB R24 1
  SETTABLEKS R24 R23 K51 ["TextScaled"]
  GETIMPORT R24 K56 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R24 R23 K52 ["HorizontalAlignment"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K57 [">> .Component-Arrow"]
  DUPTABLE R20 K59 [{"Color3"}]
  LOADK R21 K60 ["$TextContrast"]
  SETTABLEKS R21 R20 K58 ["Color3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K61 [">> .X-Circle"]
  DUPTABLE R21 K63 [{"Size", "BackgroundColor3", "AnchorPoint"}]
  GETIMPORT R22 K19 [UDim2.new]
  LOADK R23 K64 [0.01]
  LOADN R24 0
  LOADK R25 K64 [0.01]
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K15 ["Size"]
  LOADK R22 K60 ["$TextContrast"]
  SETTABLEKS R22 R21 K29 ["BackgroundColor3"]
  GETIMPORT R22 K66 [Vector2.new]
  LOADK R23 K32 [0.5]
  LOADK R24 K32 [0.5]
  CALL R22 2 1
  SETTABLEKS R22 R21 K62 ["AnchorPoint"]
  CALL R19 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R4 R5 -1 [1]
  DUPTABLE R5 K68 [{"BlueprintWithMappingsPadding"}]
  GETIMPORT R6 K70 [UDim.new]
  LOADK R7 K71 [0.15]
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K67 ["BlueprintWithMappingsPadding"]
  MOVE R6 R3
  LOADK R7 K2 ["ControlsEmulator"]
  MOVE R8 R4
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
