MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
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
  NEWTABLE R4 0 6
  MOVE R5 R2
  LOADK R6 K11 ["Frame"]
  DUPTABLE R7 K13 [{"BorderSizePixel"}]
  LOADN R8 0
  SETTABLEKS R8 R7 K12 ["BorderSizePixel"]
  CALL R5 2 1
  MOVE R6 R2
  LOADK R7 K14 ["GuiButton"]
  DUPTABLE R8 K16 [{"AutoButtonColor"}]
  LOADB R9 0
  SETTABLEKS R9 R8 K15 ["AutoButtonColor"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K17 ["TextLabel"]
  DUPTABLE R9 K21 [{"TextColor3", "Font", "TextSize"}]
  LOADK R10 K22 ["$TextPrimary"]
  SETTABLEKS R10 R9 K18 ["TextColor3"]
  GETIMPORT R10 K25 [Enum.Font.BuilderSans]
  SETTABLEKS R10 R9 K19 ["Font"]
  LOADN R10 16
  SETTABLEKS R10 R9 K20 ["TextSize"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K26 ["TextButton"]
  DUPTABLE R10 K21 [{"TextColor3", "Font", "TextSize"}]
  LOADK R11 K22 ["$TextPrimary"]
  SETTABLEKS R11 R10 K18 ["TextColor3"]
  GETIMPORT R11 K25 [Enum.Font.BuilderSans]
  SETTABLEKS R11 R10 K19 ["Font"]
  LOADN R11 16
  SETTABLEKS R11 R10 K20 ["TextSize"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K27 [".Component-TextInput"]
  DUPTABLE R11 K37 [{"Size", "TextColor3", "TextSize", "LineHeight", "BackgroundColor3", "TextXAlignment", "TextWrapped", "AutomaticSize", "TextScaled", "ClearTextOnFocus", "MultiLine", "Font"}]
  GETIMPORT R12 K40 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 36
  CALL R12 4 1
  SETTABLEKS R12 R11 K28 ["Size"]
  LOADK R12 K22 ["$TextPrimary"]
  SETTABLEKS R12 R11 K18 ["TextColor3"]
  LOADN R12 16
  SETTABLEKS R12 R11 K20 ["TextSize"]
  LOADK R12 K41 [1.5]
  SETTABLEKS R12 R11 K29 ["LineHeight"]
  LOADK R12 K42 ["$ForegroundContrast"]
  SETTABLEKS R12 R11 K30 ["BackgroundColor3"]
  GETIMPORT R12 K44 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K31 ["TextXAlignment"]
  LOADB R12 1
  SETTABLEKS R12 R11 K32 ["TextWrapped"]
  GETIMPORT R12 K46 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K33 ["AutomaticSize"]
  LOADB R12 0
  SETTABLEKS R12 R11 K34 ["TextScaled"]
  LOADB R12 0
  SETTABLEKS R12 R11 K35 ["ClearTextOnFocus"]
  LOADB R12 1
  SETTABLEKS R12 R11 K36 ["MultiLine"]
  GETIMPORT R12 K25 [Enum.Font.BuilderSans]
  SETTABLEKS R12 R11 K19 ["Font"]
  NEWTABLE R12 0 2
  MOVE R13 R2
  LOADK R14 K47 ["::UICorner"]
  DUPTABLE R15 K49 [{"CornerRadius"}]
  LOADN R16 18
  SETTABLEKS R16 R15 K48 ["CornerRadius"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K50 ["::UIPadding"]
  DUPTABLE R16 K55 [{"PaddingTop", "PaddingLeft", "PaddingBottom", "PaddingRight"}]
  GETIMPORT R17 K57 [UDim.new]
  LOADN R18 0
  LOADN R19 10
  CALL R17 2 1
  SETTABLEKS R17 R16 K51 ["PaddingTop"]
  GETIMPORT R17 K57 [UDim.new]
  LOADN R18 0
  LOADN R19 10
  CALL R17 2 1
  SETTABLEKS R17 R16 K52 ["PaddingLeft"]
  GETIMPORT R17 K57 [UDim.new]
  LOADN R18 0
  LOADN R19 10
  CALL R17 2 1
  SETTABLEKS R17 R16 K53 ["PaddingBottom"]
  GETIMPORT R17 K57 [UDim.new]
  LOADN R18 0
  LOADN R19 10
  CALL R17 2 1
  SETTABLEKS R17 R16 K54 ["PaddingRight"]
  CALL R14 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K58 [".Component-Avatar"]
  DUPTABLE R12 K59 [{"Size"}]
  GETIMPORT R13 K61 [UDim2.fromOffset]
  LOADN R14 32
  LOADN R15 32
  CALL R13 2 1
  SETTABLEKS R13 R12 K28 ["Size"]
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K47 ["::UICorner"]
  DUPTABLE R16 K49 [{"CornerRadius"}]
  GETIMPORT R17 K57 [UDim.new]
  LOADN R18 1
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K48 ["CornerRadius"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R4 R5 -1 [1]
  NEWTABLE R5 0 0
  MOVE R6 R3
  LOADK R7 K2 ["PlaceAnnotations"]
  MOVE R8 R4
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
