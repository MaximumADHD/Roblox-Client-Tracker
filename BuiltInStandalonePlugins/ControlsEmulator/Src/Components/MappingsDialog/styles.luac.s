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
  LOADK R4 K9 [".Component-MappingsDialog"]
  DUPTABLE R5 K13 [{"Position", "AnchorPoint", "BorderSizePixel"}]
  GETIMPORT R6 K16 [UDim2.new]
  LOADK R7 K17 [0.5]
  LOADN R8 0
  LOADN R9 0
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K10 ["Position"]
  GETIMPORT R6 K19 [Vector2.new]
  LOADK R7 K17 [0.5]
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["AnchorPoint"]
  LOADN R6 0
  SETTABLEKS R6 R5 K12 ["BorderSizePixel"]
  NEWTABLE R6 0 4
  MOVE R7 R2
  LOADK R8 K20 ["> Frame"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K21 ["::UIListLayout"]
  DUPTABLE R13 K24 [{"FillDirection", "HorizontalAlignment"}]
  GETIMPORT R14 K27 [Enum.FillDirection.Horizontal]
  SETTABLEKS R14 R13 K22 ["FillDirection"]
  GETIMPORT R14 K29 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R14 R13 K23 ["HorizontalAlignment"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  MOVE R8 R2
  LOADK R9 K30 [">> #BlueprintAndListContainer"]
  NEWTABLE R10 0 0
  NEWTABLE R11 0 3
  MOVE R12 R2
  LOADK R13 K31 ["::UISizeConstraint"]
  DUPTABLE R14 K33 [{"MinSize"}]
  GETIMPORT R15 K19 [Vector2.new]
  LOADN R16 144
  LOADN R17 144
  CALL R15 2 1
  SETTABLEKS R15 R14 K32 ["MinSize"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K34 [">> #BlueprintContainer"]
  DUPTABLE R15 K36 [{"Size", "AnchorPoint"}]
  GETIMPORT R16 K16 [UDim2.new]
  LOADK R17 K37 [0.6]
  LOADN R18 0
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K35 ["Size"]
  GETIMPORT R16 K19 [Vector2.new]
  LOADK R17 K17 [0.5]
  LOADK R18 K17 [0.5]
  CALL R16 2 1
  SETTABLEKS R16 R15 K11 ["AnchorPoint"]
  NEWTABLE R16 0 3
  MOVE R17 R2
  LOADK R18 K38 ["::UIListLayour"]
  DUPTABLE R19 K40 [{"SortOrder", "FillDirection", "HorizontalAlignment"}]
  GETIMPORT R20 K42 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K39 ["SortOrder"]
  GETIMPORT R20 K27 [Enum.FillDirection.Horizontal]
  SETTABLEKS R20 R19 K22 ["FillDirection"]
  GETIMPORT R20 K29 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R20 R19 K23 ["HorizontalAlignment"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K43 ["::UIPadding"]
  DUPTABLE R20 K45 [{"PaddingTop"}]
  GETIMPORT R21 K47 [UDim.new]
  LOADK R22 K48 [0.05]
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K44 ["PaddingTop"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K49 [">> #DeviceBlueprint"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K31 ["::UISizeConstraint"]
  DUPTABLE R25 K51 [{"MaxSize"}]
  GETIMPORT R26 K19 [Vector2.new]
  LOADN R27 144
  LOADN R28 16
  CALL R26 2 1
  SETTABLEKS R26 R25 K50 ["MaxSize"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K52 [">> #ListScrollingContainer"]
  DUPTABLE R16 K54 [{"ScrollingDirection", "Size"}]
  GETIMPORT R17 K56 [Enum.ScrollingDirection.Y]
  SETTABLEKS R17 R16 K53 ["ScrollingDirection"]
  GETIMPORT R17 K16 [UDim2.new]
  LOADK R18 K57 [0.4]
  LOADN R19 0
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K35 ["Size"]
  CALL R14 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  MOVE R9 R2
  LOADK R10 K58 [">> .Component-ResetMappingsConfirmationDialog"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K59 [">> #DialogContents"]
  DUPTABLE R15 K61 [{"Size", "Position", "BackgroundColor3"}]
  GETIMPORT R16 K16 [UDim2.new]
  LOADN R17 0
  LOADN R18 194
  LOADN R19 0
  LOADN R20 100
  CALL R16 4 1
  SETTABLEKS R16 R15 K35 ["Size"]
  GETIMPORT R16 K16 [UDim2.new]
  LOADK R17 K17 [0.5]
  LOADN R18 159
  LOADN R19 0
  LOADN R20 100
  CALL R16 4 1
  SETTABLEKS R16 R15 K10 ["Position"]
  LOADK R16 K62 ["$FilledInputBackground"]
  SETTABLEKS R16 R15 K60 ["BackgroundColor3"]
  NEWTABLE R16 0 5
  MOVE R17 R2
  LOADK R18 K21 ["::UIListLayout"]
  DUPTABLE R19 K65 [{"SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R20 K42 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K39 ["SortOrder"]
  GETIMPORT R20 K66 [Enum.VerticalAlignment.Center]
  SETTABLEKS R20 R19 K63 ["VerticalAlignment"]
  GETIMPORT R20 K47 [UDim.new]
  LOADN R21 0
  LOADN R22 4
  CALL R20 2 1
  SETTABLEKS R20 R19 K64 ["Padding"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K67 ["::UICorner"]
  DUPTABLE R20 K69 [{"CornerRadius"}]
  GETIMPORT R21 K47 [UDim.new]
  LOADN R22 0
  LOADN R23 8
  CALL R21 2 1
  SETTABLEKS R21 R20 K68 ["CornerRadius"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K43 ["::UIPadding"]
  DUPTABLE R21 K73 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R22 K47 [UDim.new]
  LOADN R23 0
  LOADN R24 8
  CALL R22 2 1
  SETTABLEKS R22 R21 K70 ["PaddingLeft"]
  GETIMPORT R22 K47 [UDim.new]
  LOADN R23 0
  LOADN R24 8
  CALL R22 2 1
  SETTABLEKS R22 R21 K71 ["PaddingRight"]
  GETIMPORT R22 K47 [UDim.new]
  LOADN R23 0
  LOADN R24 8
  CALL R22 2 1
  SETTABLEKS R22 R21 K44 ["PaddingTop"]
  GETIMPORT R22 K47 [UDim.new]
  LOADN R23 0
  LOADN R24 8
  CALL R22 2 1
  SETTABLEKS R22 R21 K72 ["PaddingBottom"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K74 [">> #ConfirmationText"]
  DUPTABLE R22 K80 [{"BackgroundTransparency", "Size", "Position", "TextWrapped", "TextColor3", "TextXAlignment", "TextYAlignment"}]
  LOADN R23 1
  SETTABLEKS R23 R22 K75 ["BackgroundTransparency"]
  GETIMPORT R23 K16 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADK R26 K17 [0.5]
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K35 ["Size"]
  GETIMPORT R23 K16 [UDim2.new]
  LOADN R24 0
  LOADN R25 0
  LOADN R26 0
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K10 ["Position"]
  LOADB R23 1
  SETTABLEKS R23 R22 K76 ["TextWrapped"]
  LOADK R23 K81 ["$TextPrimary"]
  SETTABLEKS R23 R22 K77 ["TextColor3"]
  GETIMPORT R23 K83 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K78 ["TextXAlignment"]
  GETIMPORT R23 K84 [Enum.TextYAlignment.Center]
  SETTABLEKS R23 R22 K79 ["TextYAlignment"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K85 [">> #ButtonsContainer"]
  DUPTABLE R23 K87 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
  GETIMPORT R24 K16 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K35 ["Size"]
  GETIMPORT R24 K88 [Enum.AutomaticSize.Y]
  SETTABLEKS R24 R23 K86 ["AutomaticSize"]
  LOADN R24 1
  SETTABLEKS R24 R23 K75 ["BackgroundTransparency"]
  NEWTABLE R24 0 2
  MOVE R25 R2
  LOADK R26 K21 ["::UIListLayout"]
  DUPTABLE R27 K89 [{"FillDirection", "SortOrder", "Padding", "HorizontalAlignment"}]
  GETIMPORT R28 K27 [Enum.FillDirection.Horizontal]
  SETTABLEKS R28 R27 K22 ["FillDirection"]
  GETIMPORT R28 K42 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R28 R27 K39 ["SortOrder"]
  GETIMPORT R28 K47 [UDim.new]
  LOADN R29 0
  LOADN R30 8
  CALL R28 2 1
  SETTABLEKS R28 R27 K64 ["Padding"]
  GETIMPORT R28 K29 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R28 R27 K23 ["HorizontalAlignment"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K90 [">> .Button"]
  DUPTABLE R28 K91 [{"Size", "BackgroundColor3", "TextColor3"}]
  GETIMPORT R29 K16 [UDim2.new]
  LOADN R30 0
  LOADN R31 78
  LOADN R32 0
  LOADN R33 32
  CALL R29 4 1
  SETTABLEKS R29 R28 K35 ["Size"]
  LOADK R29 K92 ["$PrimaryButtonColor"]
  SETTABLEKS R29 R28 K60 ["BackgroundColor3"]
  LOADK R29 K93 ["$PrimaryButtonTextColor"]
  SETTABLEKS R29 R28 K77 ["TextColor3"]
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K67 ["::UICorner"]
  DUPTABLE R32 K69 [{"CornerRadius"}]
  GETIMPORT R33 K47 [UDim.new]
  LOADN R34 0
  LOADN R35 8
  CALL R33 2 1
  SETTABLEKS R33 R32 K68 ["CornerRadius"]
  CALL R30 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K94 [">> .Component-MappingsCollisionsBanner"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 2
  MOVE R14 R2
  LOADK R15 K43 ["::UIPadding"]
  DUPTABLE R16 K45 [{"PaddingTop"}]
  GETIMPORT R17 K47 [UDim.new]
  LOADN R18 0
  LOADN R19 37
  CALL R17 2 1
  SETTABLEKS R17 R16 K44 ["PaddingTop"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K95 [">> #BannerContents"]
  DUPTABLE R17 K96 [{"Size", "BackgroundColor3", "BackgroundTransparency", "AnchorPoint", "Position", "TextXAlignment", "AutomaticSize"}]
  GETIMPORT R18 K16 [UDim2.new]
  LOADN R19 0
  LOADN R20 35
  LOADN R21 0
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K35 ["Size"]
  LOADK R18 K97 ["$Yellow60"]
  SETTABLEKS R18 R17 K60 ["BackgroundColor3"]
  LOADN R18 0
  SETTABLEKS R18 R17 K75 ["BackgroundTransparency"]
  GETIMPORT R18 K19 [Vector2.new]
  LOADK R19 K17 [0.5]
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K11 ["AnchorPoint"]
  GETIMPORT R18 K16 [UDim2.new]
  LOADK R19 K17 [0.5]
  LOADN R20 0
  LOADN R21 0
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K10 ["Position"]
  GETIMPORT R18 K98 [Enum.TextXAlignment.Center]
  SETTABLEKS R18 R17 K78 ["TextXAlignment"]
  GETIMPORT R18 K100 [Enum.AutomaticSize.XY]
  SETTABLEKS R18 R17 K86 ["AutomaticSize"]
  NEWTABLE R18 0 3
  MOVE R19 R2
  LOADK R20 K43 ["::UIPadding"]
  DUPTABLE R21 K73 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R22 K47 [UDim.new]
  LOADN R23 0
  LOADN R24 5
  CALL R22 2 1
  SETTABLEKS R22 R21 K70 ["PaddingLeft"]
  GETIMPORT R22 K47 [UDim.new]
  LOADN R23 0
  LOADN R24 5
  CALL R22 2 1
  SETTABLEKS R22 R21 K71 ["PaddingRight"]
  GETIMPORT R22 K47 [UDim.new]
  LOADN R23 0
  LOADN R24 2
  CALL R22 2 1
  SETTABLEKS R22 R21 K44 ["PaddingTop"]
  GETIMPORT R22 K47 [UDim.new]
  LOADN R23 0
  LOADN R24 2
  CALL R22 2 1
  SETTABLEKS R22 R21 K72 ["PaddingBottom"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K67 ["::UICorner"]
  DUPTABLE R22 K69 [{"CornerRadius"}]
  GETIMPORT R23 K47 [UDim.new]
  LOADN R24 0
  LOADN R25 8
  CALL R23 2 1
  SETTABLEKS R23 R22 K68 ["CornerRadius"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K101 [">> #WarningText"]
  DUPTABLE R23 K102 [{"Size", "BackgroundTransparency", "TextColor3", "TextWrapped", "AutomaticSize"}]
  GETIMPORT R24 K16 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K35 ["Size"]
  LOADN R24 1
  SETTABLEKS R24 R23 K75 ["BackgroundTransparency"]
  LOADK R24 K81 ["$TextPrimary"]
  SETTABLEKS R24 R23 K77 ["TextColor3"]
  LOADB R24 1
  SETTABLEKS R24 R23 K76 ["TextWrapped"]
  GETIMPORT R24 K88 [Enum.AutomaticSize.Y]
  SETTABLEKS R24 R23 K86 ["AutomaticSize"]
  CALL R21 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
