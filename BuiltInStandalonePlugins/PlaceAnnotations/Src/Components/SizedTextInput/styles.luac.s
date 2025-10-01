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
  MOVE R3 R2
  LOADK R4 K10 [".Component-TextInput"]
  DUPTABLE R5 K13 [{"AutomaticSize", "BackgroundColor3"}]
  GETIMPORT R6 K16 [Enum.AutomaticSize.Y]
  SETTABLEKS R6 R5 K11 ["AutomaticSize"]
  LOADK R6 K17 ["$FilledInputBackground"]
  SETTABLEKS R6 R5 K12 ["BackgroundColor3"]
  NEWTABLE R6 0 4
  MOVE R7 R2
  LOADK R8 K18 ["::UICorner"]
  DUPTABLE R9 K20 [{"CornerRadius"}]
  GETIMPORT R10 K23 [UDim.new]
  LOADN R11 0
  LOADN R12 4
  CALL R10 2 1
  SETTABLEKS R10 R9 K19 ["CornerRadius"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K24 ["::UIFlexItem"]
  DUPTABLE R10 K26 [{"FlexMode"}]
  GETIMPORT R11 K29 [Enum.UIFlexMode.Grow]
  SETTABLEKS R11 R10 K25 ["FlexMode"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K30 [".Error"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K31 ["::UIStroke"]
  DUPTABLE R15 K36 [{"Thickness", "ApplyStrokeMode", "Color", "Transparency"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K32 ["Thickness"]
  GETIMPORT R16 K38 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R16 R15 K33 ["ApplyStrokeMode"]
  LOADK R16 K39 ["$ErrorMain"]
  SETTABLEKS R16 R15 K34 ["Color"]
  LOADK R16 K40 [0.4]
  SETTABLEKS R16 R15 K35 ["Transparency"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K41 ["> ScrollingFrame"]
  DUPTABLE R12 K46 [{"ScrollingDirection", "ScrollBarThickness", "BorderSizePixel", "BackgroundTransparency"}]
  GETIMPORT R13 K47 [Enum.ScrollingDirection.Y]
  SETTABLEKS R13 R12 K42 ["ScrollingDirection"]
  LOADN R13 4
  SETTABLEKS R13 R12 K43 ["ScrollBarThickness"]
  LOADN R13 0
  SETTABLEKS R13 R12 K44 ["BorderSizePixel"]
  LOADN R13 1
  SETTABLEKS R13 R12 K45 ["BackgroundTransparency"]
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K48 ["> TextBox"]
  DUPTABLE R16 K58 [{"TextColor3", "TextSize", "LineHeight", "BackgroundTransparency", "TextXAlignment", "TextWrapped", "TextScaled", "ClearTextOnFocus", "Font", "RichText"}]
  LOADK R17 K59 ["$TextPrimary"]
  SETTABLEKS R17 R16 K49 ["TextColor3"]
  LOADK R17 K60 ["$FontSizeM"]
  SETTABLEKS R17 R16 K50 ["TextSize"]
  LOADK R17 K61 [1.5]
  SETTABLEKS R17 R16 K51 ["LineHeight"]
  LOADN R17 1
  SETTABLEKS R17 R16 K45 ["BackgroundTransparency"]
  GETIMPORT R17 K63 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K52 ["TextXAlignment"]
  LOADB R17 1
  SETTABLEKS R17 R16 K53 ["TextWrapped"]
  LOADB R17 0
  SETTABLEKS R17 R16 K54 ["TextScaled"]
  LOADB R17 0
  SETTABLEKS R17 R16 K55 ["ClearTextOnFocus"]
  LOADK R17 K64 ["$Font"]
  SETTABLEKS R17 R16 K56 ["Font"]
  LOADB R17 1
  SETTABLEKS R17 R16 K57 ["RichText"]
  NEWTABLE R17 0 2
  MOVE R18 R2
  LOADK R19 K65 ["::UIPadding"]
  DUPTABLE R20 K68 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R21 K23 [UDim.new]
  LOADN R22 0
  LOADN R23 10
  CALL R21 2 1
  SETTABLEKS R21 R20 K66 ["PaddingLeft"]
  GETIMPORT R21 K23 [UDim.new]
  LOADN R22 0
  LOADN R23 12
  CALL R21 2 1
  SETTABLEKS R21 R20 K67 ["PaddingRight"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K69 [".Disabled"]
  DUPTABLE R21 K71 [{"BackgroundTransparency", "TextTransparency"}]
  LOADK R22 K72 [0.94]
  SETTABLEKS R22 R21 K45 ["BackgroundTransparency"]
  LOADK R22 K40 [0.4]
  SETTABLEKS R22 R21 K70 ["TextTransparency"]
  CALL R19 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
