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
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["StyleConstants"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["minimumMappingsDialogSize"]
  MOVE R5 R2
  LOADK R6 K13 [".Component-MappingsDialog"]
  DUPTABLE R7 K17 [{"Position", "AnchorPoint", "BorderSizePixel"}]
  GETIMPORT R8 K20 [UDim2.new]
  LOADK R9 K21 [0.5]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K14 ["Position"]
  GETIMPORT R8 K23 [Vector2.new]
  LOADK R9 K21 [0.5]
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K15 ["AnchorPoint"]
  LOADN R8 0
  SETTABLEKS R8 R7 K16 ["BorderSizePixel"]
  NEWTABLE R8 0 4
  MOVE R9 R2
  LOADK R10 K24 ["> Frame"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K25 ["::UIListLayout"]
  DUPTABLE R15 K28 [{"FillDirection", "HorizontalAlignment"}]
  GETIMPORT R16 K31 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K26 ["FillDirection"]
  GETIMPORT R16 K33 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R16 R15 K27 ["HorizontalAlignment"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K34 [">> #BlueprintAndListContainer"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 4
  MOVE R14 R2
  LOADK R15 K35 ["::UISizeConstraint"]
  DUPTABLE R16 K37 [{"MinSize"}]
  SETTABLEKS R4 R16 K36 ["MinSize"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K38 ["::UIPadding"]
  DUPTABLE R17 K42 [{"PaddingLeft", "PaddingRight", "PaddingTop"}]
  GETIMPORT R18 K44 [UDim.new]
  LOADN R19 0
  LOADN R20 16
  CALL R18 2 1
  SETTABLEKS R18 R17 K39 ["PaddingLeft"]
  GETIMPORT R18 K44 [UDim.new]
  LOADN R19 0
  LOADN R20 16
  CALL R18 2 1
  SETTABLEKS R18 R17 K40 ["PaddingRight"]
  GETIMPORT R18 K44 [UDim.new]
  LOADN R19 0
  LOADN R20 4
  CALL R18 2 1
  SETTABLEKS R18 R17 K41 ["PaddingTop"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K45 [">> #BlueprintContainer"]
  DUPTABLE R18 K47 [{"Size", "AnchorPoint"}]
  GETIMPORT R19 K20 [UDim2.new]
  LOADK R20 K21 [0.5]
  LOADN R21 0
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K46 ["Size"]
  GETIMPORT R19 K23 [Vector2.new]
  LOADK R20 K21 [0.5]
  LOADK R21 K21 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K15 ["AnchorPoint"]
  NEWTABLE R19 0 3
  MOVE R20 R2
  LOADK R21 K25 ["::UIListLayout"]
  DUPTABLE R22 K49 [{"SortOrder", "FillDirection", "HorizontalAlignment"}]
  GETIMPORT R23 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K48 ["SortOrder"]
  GETIMPORT R23 K31 [Enum.FillDirection.Horizontal]
  SETTABLEKS R23 R22 K26 ["FillDirection"]
  GETIMPORT R23 K33 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R23 R22 K27 ["HorizontalAlignment"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K38 ["::UIPadding"]
  DUPTABLE R23 K52 [{"PaddingTop"}]
  LOADK R24 K53 ["$BlueprintWithMappingsPadding"]
  SETTABLEKS R24 R23 K41 ["PaddingTop"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K54 [">> #DeviceBlueprint"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K35 ["::UISizeConstraint"]
  DUPTABLE R28 K56 [{"MaxSize"}]
  GETIMPORT R29 K23 [Vector2.new]
  LOADN R30 144
  LOADN R31 16
  CALL R29 2 1
  SETTABLEKS R29 R28 K55 ["MaxSize"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K57 [">> #ListScrollingContainer"]
  DUPTABLE R19 K59 [{"ScrollingDirection", "Size"}]
  GETIMPORT R20 K61 [Enum.ScrollingDirection.Y]
  SETTABLEKS R20 R19 K58 ["ScrollingDirection"]
  GETIMPORT R20 K20 [UDim2.new]
  LOADK R21 K21 [0.5]
  LOADN R22 0
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K46 ["Size"]
  CALL R17 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K62 [">> .Component-ResetMappingsConfirmationDialog"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 1
  MOVE R15 R2
  LOADK R16 K63 [">> #DialogContents"]
  DUPTABLE R17 K65 [{"Size", "Position", "BackgroundColor3"}]
  GETIMPORT R18 K20 [UDim2.new]
  LOADN R19 0
  LOADN R20 194
  LOADN R21 0
  LOADN R22 100
  CALL R18 4 1
  SETTABLEKS R18 R17 K46 ["Size"]
  GETIMPORT R18 K20 [UDim2.new]
  LOADK R19 K21 [0.5]
  LOADN R20 159
  LOADN R21 0
  LOADN R22 100
  CALL R18 4 1
  SETTABLEKS R18 R17 K14 ["Position"]
  LOADK R18 K66 ["$FilledInputBackground"]
  SETTABLEKS R18 R17 K64 ["BackgroundColor3"]
  NEWTABLE R18 0 5
  MOVE R19 R2
  LOADK R20 K25 ["::UIListLayout"]
  DUPTABLE R21 K69 [{"SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R22 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K48 ["SortOrder"]
  GETIMPORT R22 K70 [Enum.VerticalAlignment.Center]
  SETTABLEKS R22 R21 K67 ["VerticalAlignment"]
  GETIMPORT R22 K44 [UDim.new]
  LOADN R23 0
  LOADN R24 4
  CALL R22 2 1
  SETTABLEKS R22 R21 K68 ["Padding"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K71 ["::UICorner"]
  DUPTABLE R22 K73 [{"CornerRadius"}]
  GETIMPORT R23 K44 [UDim.new]
  LOADN R24 0
  LOADN R25 8
  CALL R23 2 1
  SETTABLEKS R23 R22 K72 ["CornerRadius"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K38 ["::UIPadding"]
  DUPTABLE R23 K75 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R24 K44 [UDim.new]
  LOADN R25 0
  LOADN R26 8
  CALL R24 2 1
  SETTABLEKS R24 R23 K39 ["PaddingLeft"]
  GETIMPORT R24 K44 [UDim.new]
  LOADN R25 0
  LOADN R26 8
  CALL R24 2 1
  SETTABLEKS R24 R23 K40 ["PaddingRight"]
  GETIMPORT R24 K44 [UDim.new]
  LOADN R25 0
  LOADN R26 8
  CALL R24 2 1
  SETTABLEKS R24 R23 K41 ["PaddingTop"]
  GETIMPORT R24 K44 [UDim.new]
  LOADN R25 0
  LOADN R26 8
  CALL R24 2 1
  SETTABLEKS R24 R23 K74 ["PaddingBottom"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K76 [">> #ConfirmationText"]
  DUPTABLE R24 K82 [{"BackgroundTransparency", "Size", "Position", "TextWrapped", "TextColor3", "TextXAlignment", "TextYAlignment"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K77 ["BackgroundTransparency"]
  GETIMPORT R25 K20 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADK R28 K21 [0.5]
  LOADN R29 0
  CALL R25 4 1
  SETTABLEKS R25 R24 K46 ["Size"]
  GETIMPORT R25 K20 [UDim2.new]
  LOADN R26 0
  LOADN R27 0
  LOADN R28 0
  LOADN R29 0
  CALL R25 4 1
  SETTABLEKS R25 R24 K14 ["Position"]
  LOADB R25 1
  SETTABLEKS R25 R24 K78 ["TextWrapped"]
  LOADK R25 K83 ["$TextPrimary"]
  SETTABLEKS R25 R24 K79 ["TextColor3"]
  GETIMPORT R25 K85 [Enum.TextXAlignment.Left]
  SETTABLEKS R25 R24 K80 ["TextXAlignment"]
  GETIMPORT R25 K86 [Enum.TextYAlignment.Center]
  SETTABLEKS R25 R24 K81 ["TextYAlignment"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K87 [">> #ButtonsContainer"]
  DUPTABLE R25 K89 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
  GETIMPORT R26 K20 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K46 ["Size"]
  GETIMPORT R26 K90 [Enum.AutomaticSize.Y]
  SETTABLEKS R26 R25 K88 ["AutomaticSize"]
  LOADN R26 1
  SETTABLEKS R26 R25 K77 ["BackgroundTransparency"]
  NEWTABLE R26 0 2
  MOVE R27 R2
  LOADK R28 K25 ["::UIListLayout"]
  DUPTABLE R29 K91 [{"FillDirection", "SortOrder", "Padding", "HorizontalAlignment"}]
  GETIMPORT R30 K31 [Enum.FillDirection.Horizontal]
  SETTABLEKS R30 R29 K26 ["FillDirection"]
  GETIMPORT R30 K51 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R30 R29 K48 ["SortOrder"]
  GETIMPORT R30 K44 [UDim.new]
  LOADN R31 0
  LOADN R32 8
  CALL R30 2 1
  SETTABLEKS R30 R29 K68 ["Padding"]
  GETIMPORT R30 K33 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R30 R29 K27 ["HorizontalAlignment"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K92 [">> .Button"]
  DUPTABLE R30 K93 [{"Size", "BackgroundColor3", "TextColor3"}]
  GETIMPORT R31 K20 [UDim2.new]
  LOADN R32 0
  LOADN R33 78
  LOADN R34 0
  LOADN R35 32
  CALL R31 4 1
  SETTABLEKS R31 R30 K46 ["Size"]
  LOADK R31 K94 ["$PrimaryButtonColor"]
  SETTABLEKS R31 R30 K64 ["BackgroundColor3"]
  LOADK R31 K95 ["$PrimaryButtonTextColor"]
  SETTABLEKS R31 R30 K79 ["TextColor3"]
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K71 ["::UICorner"]
  DUPTABLE R34 K73 [{"CornerRadius"}]
  GETIMPORT R35 K44 [UDim.new]
  LOADN R36 0
  LOADN R37 8
  CALL R35 2 1
  SETTABLEKS R35 R34 K72 ["CornerRadius"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K96 [">> .Component-MappingsCollisionsBanner"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 2
  MOVE R16 R2
  LOADK R17 K38 ["::UIPadding"]
  DUPTABLE R18 K52 [{"PaddingTop"}]
  GETIMPORT R19 K44 [UDim.new]
  LOADN R20 0
  LOADN R21 37
  CALL R19 2 1
  SETTABLEKS R19 R18 K41 ["PaddingTop"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K97 [">> #BannerContents"]
  DUPTABLE R19 K98 [{"Size", "BackgroundColor3", "BackgroundTransparency", "AnchorPoint", "Position", "TextXAlignment", "AutomaticSize"}]
  GETIMPORT R20 K20 [UDim2.new]
  LOADN R21 0
  LOADN R22 35
  LOADN R23 0
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K46 ["Size"]
  LOADK R20 K99 ["$WarningMain"]
  SETTABLEKS R20 R19 K64 ["BackgroundColor3"]
  LOADN R20 0
  SETTABLEKS R20 R19 K77 ["BackgroundTransparency"]
  GETIMPORT R20 K23 [Vector2.new]
  LOADK R21 K21 [0.5]
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K15 ["AnchorPoint"]
  GETIMPORT R20 K20 [UDim2.new]
  LOADK R21 K21 [0.5]
  LOADN R22 0
  LOADN R23 0
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K14 ["Position"]
  GETIMPORT R20 K100 [Enum.TextXAlignment.Center]
  SETTABLEKS R20 R19 K80 ["TextXAlignment"]
  GETIMPORT R20 K102 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K88 ["AutomaticSize"]
  NEWTABLE R20 0 3
  MOVE R21 R2
  LOADK R22 K38 ["::UIPadding"]
  DUPTABLE R23 K75 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R24 K44 [UDim.new]
  LOADN R25 0
  LOADN R26 5
  CALL R24 2 1
  SETTABLEKS R24 R23 K39 ["PaddingLeft"]
  GETIMPORT R24 K44 [UDim.new]
  LOADN R25 0
  LOADN R26 5
  CALL R24 2 1
  SETTABLEKS R24 R23 K40 ["PaddingRight"]
  GETIMPORT R24 K44 [UDim.new]
  LOADN R25 0
  LOADN R26 2
  CALL R24 2 1
  SETTABLEKS R24 R23 K41 ["PaddingTop"]
  GETIMPORT R24 K44 [UDim.new]
  LOADN R25 0
  LOADN R26 2
  CALL R24 2 1
  SETTABLEKS R24 R23 K74 ["PaddingBottom"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K71 ["::UICorner"]
  DUPTABLE R24 K73 [{"CornerRadius"}]
  GETIMPORT R25 K44 [UDim.new]
  LOADN R26 0
  LOADN R27 8
  CALL R25 2 1
  SETTABLEKS R25 R24 K72 ["CornerRadius"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K103 [">> #WarningText"]
  DUPTABLE R25 K104 [{"Size", "BackgroundTransparency", "TextWrapped", "AutomaticSize"}]
  GETIMPORT R26 K20 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K46 ["Size"]
  LOADN R26 1
  SETTABLEKS R26 R25 K77 ["BackgroundTransparency"]
  LOADB R26 1
  SETTABLEKS R26 R25 K78 ["TextWrapped"]
  GETIMPORT R26 K90 [Enum.AutomaticSize.Y]
  SETTABLEKS R26 R25 K88 ["AutomaticSize"]
  CALL R23 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 -1
  RETURN R5 -1
