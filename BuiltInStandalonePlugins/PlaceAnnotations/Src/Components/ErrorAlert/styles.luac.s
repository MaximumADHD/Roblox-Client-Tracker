MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K9 [".Component-ErrorAlert"]
  DUPTABLE R5 K13 [{"BackgroundTransparency", "Size", "AutomaticSize"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K10 ["BackgroundTransparency"]
  GETIMPORT R6 K16 [UDim2.fromScale]
  LOADN R7 1
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["Size"]
  GETIMPORT R6 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R6 R5 K12 ["AutomaticSize"]
  NEWTABLE R6 0 5
  MOVE R7 R2
  LOADK R8 K20 ["::UIListLayout"]
  DUPTABLE R9 K27 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding", "Wraps", "SortOrder"}]
  GETIMPORT R10 K29 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K21 ["FillDirection"]
  GETIMPORT R10 K31 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R10 R9 K22 ["HorizontalAlignment"]
  GETIMPORT R10 K33 [Enum.VerticalAlignment.Center]
  SETTABLEKS R10 R9 K23 ["VerticalAlignment"]
  GETIMPORT R10 K36 [UDim.new]
  LOADN R11 0
  LOADN R12 8
  CALL R10 2 1
  SETTABLEKS R10 R9 K24 ["Padding"]
  LOADB R10 1
  SETTABLEKS R10 R9 K25 ["Wraps"]
  GETIMPORT R10 K38 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R10 R9 K26 ["SortOrder"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K39 [">> #Icon"]
  DUPTABLE R10 K40 [{"BackgroundTransparency"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K10 ["BackgroundTransparency"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K41 [">> ImageButton"]
  DUPTABLE R11 K40 [{"BackgroundTransparency"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K10 ["BackgroundTransparency"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K42 [">> #Text"]
  DUPTABLE R12 K48 [{"BackgroundTransparency", "AutomaticSize", "TextSize", "TextWrapped", "TextXAlignment", "RichText", "TextColor3"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K10 ["BackgroundTransparency"]
  GETIMPORT R13 K50 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K12 ["AutomaticSize"]
  LOADK R13 K51 ["$FontSizeS"]
  SETTABLEKS R13 R12 K43 ["TextSize"]
  LOADB R13 1
  SETTABLEKS R13 R12 K44 ["TextWrapped"]
  GETIMPORT R13 K52 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K45 ["TextXAlignment"]
  LOADB R13 1
  SETTABLEKS R13 R12 K46 ["RichText"]
  LOADK R13 K53 ["$TextError"]
  SETTABLEKS R13 R12 K47 ["TextColor3"]
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K54 ["::UIFlexItem"]
  DUPTABLE R16 K56 [{"FlexMode"}]
  GETIMPORT R17 K59 [Enum.UIFlexMode.Shrink]
  SETTABLEKS R17 R16 K55 ["FlexMode"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K60 [".Popup"]
  DUPTABLE R13 K63 [{"AutomaticSize", "ZIndex", "Size", "BackgroundTransparency", "BackgroundColor3"}]
  GETIMPORT R14 K50 [Enum.AutomaticSize.XY]
  SETTABLEKS R14 R13 K12 ["AutomaticSize"]
  LOADN R14 100
  SETTABLEKS R14 R13 K61 ["ZIndex"]
  GETIMPORT R14 K65 [UDim2.fromOffset]
  LOADN R15 1
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K11 ["Size"]
  LOADN R14 0
  SETTABLEKS R14 R13 K10 ["BackgroundTransparency"]
  LOADK R14 K66 ["$FilledInputBackground"]
  SETTABLEKS R14 R13 K62 ["BackgroundColor3"]
  NEWTABLE R14 0 3
  MOVE R15 R2
  LOADK R16 K67 ["::UIPadding"]
  DUPTABLE R17 K72 [{"PaddingLeft", "PaddingTop", "PaddingBottom", "PaddingRight"}]
  GETIMPORT R18 K36 [UDim.new]
  LOADN R19 0
  LOADN R20 12
  CALL R18 2 1
  SETTABLEKS R18 R17 K68 ["PaddingLeft"]
  GETIMPORT R18 K36 [UDim.new]
  LOADN R19 0
  LOADN R20 8
  CALL R18 2 1
  SETTABLEKS R18 R17 K69 ["PaddingTop"]
  GETIMPORT R18 K36 [UDim.new]
  LOADN R19 0
  LOADN R20 8
  CALL R18 2 1
  SETTABLEKS R18 R17 K70 ["PaddingBottom"]
  GETIMPORT R18 K36 [UDim.new]
  LOADN R19 0
  LOADN R20 8
  CALL R18 2 1
  SETTABLEKS R18 R17 K71 ["PaddingRight"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K73 ["::UICorner"]
  DUPTABLE R18 K75 [{"CornerRadius"}]
  GETIMPORT R19 K36 [UDim.new]
  LOADN R20 0
  LOADN R21 4
  CALL R19 2 1
  SETTABLEKS R19 R18 K74 ["CornerRadius"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K76 ["> TextLabel"]
  DUPTABLE R19 K77 [{"AutomaticSize"}]
  GETIMPORT R20 K50 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K12 ["AutomaticSize"]
  CALL R17 2 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
