PROTO_0:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+16]
  GETUPVAL R1 1
  JUMPIFNOT R1 [+7]
  GETUPVAL R1 2
  LOADK R3 K0 ["Status.BothChanges"]
  MOVE R4 R0
  NAMECALL R1 R1 K1 ["getText"]
  CALL R1 3 -1
  RETURN R1 -1
  GETUPVAL R1 2
  LOADK R3 K2 ["Status.LocalChanges"]
  MOVE R4 R0
  NAMECALL R1 R1 K1 ["getText"]
  CALL R1 3 -1
  RETURN R1 -1
  GETUPVAL R1 1
  JUMPIFNOT R1 [+7]
  GETUPVAL R1 2
  LOADK R3 K3 ["Status.StudioChanges"]
  MOVE R4 R0
  NAMECALL R1 R1 K1 ["getText"]
  CALL R1 3 -1
  RETURN R1 -1
  GETUPVAL R1 2
  LOADK R3 K4 ["Status.NoChanges"]
  MOVE R4 R0
  NAMECALL R1 R1 K1 ["getText"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["LastOpTime"]
  GETTABLEKS R2 R0 K1 ["StatusText"]
  GETTABLEKS R3 R0 K2 ["ChangesInDisk"]
  GETTABLEKS R4 R0 K3 ["ChangesInStudio"]
  NOT R5 R3
  JUMPIFNOT R5 [+1]
  NOT R5 R4
  GETUPVAL R6 0
  NAMECALL R6 R6 K4 ["use"]
  CALL R6 1 1
  GETIMPORT R7 K6 [game]
  LOADK R9 K7 ["ShowFileSyncStatus"]
  NAMECALL R7 R7 K8 ["GetFastFlag"]
  CALL R7 2 1
  NEWCLOSURE R8 P0
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R6
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K9 ["createElement"]
  LOADK R10 K10 ["Frame"]
  DUPTABLE R11 K14 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K11 ["BackgroundTransparency"]
  JUMPIF R7 [+8]
  GETIMPORT R12 K17 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 40
  CALL R12 4 1
  JUMP [+16]
  JUMPIFNOT R5 [+8]
  GETIMPORT R12 K17 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 70
  CALL R12 4 1
  JUMP [+7]
  GETIMPORT R12 K17 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 95
  CALL R12 4 1
  SETTABLEKS R12 R11 K12 ["Size"]
  GETTABLEKS R12 R0 K13 ["LayoutOrder"]
  SETTABLEKS R12 R11 K13 ["LayoutOrder"]
  DUPTABLE R12 K22 [{"ListLayout", "ButtonsUIPadding", "StatusFrame", "TimeFrame"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K9 ["createElement"]
  LOADK R14 K23 ["UIListLayout"]
  DUPTABLE R15 K27 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R16 K30 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K24 ["FillDirection"]
  GETIMPORT R16 K32 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K25 ["Padding"]
  GETIMPORT R16 K33 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K26 ["SortOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K18 ["ListLayout"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K9 ["createElement"]
  LOADK R14 K34 ["UIPadding"]
  DUPTABLE R15 K39 [{"PaddingBottom", "PaddingTop", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R16 K32 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K35 ["PaddingBottom"]
  GETIMPORT R16 K32 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K36 ["PaddingTop"]
  GETIMPORT R16 K32 [UDim.new]
  LOADN R17 0
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K40 ["SIDE_PADDING"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K37 ["PaddingLeft"]
  GETIMPORT R16 K32 [UDim.new]
  LOADN R17 0
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K40 ["SIDE_PADDING"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K38 ["PaddingRight"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K19 ["ButtonsUIPadding"]
  JUMPIFNOT R7 [+156]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K9 ["createElement"]
  LOADK R14 K10 ["Frame"]
  DUPTABLE R15 K14 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K11 ["BackgroundTransparency"]
  JUMPIFNOT R5 [+8]
  GETIMPORT R16 K17 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 20
  CALL R16 4 1
  JUMP [+7]
  GETIMPORT R16 K17 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 45
  CALL R16 4 1
  SETTABLEKS R16 R15 K12 ["Size"]
  LOADN R16 0
  SETTABLEKS R16 R15 K13 ["LayoutOrder"]
  DUPTABLE R16 K44 [{"StatusIcon", "StatusLabel", "StatusSubText"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K9 ["createElement"]
  LOADK R18 K45 ["ImageLabel"]
  DUPTABLE R19 K47 [{"Image", "BackgroundTransparency", "Size"}]
  JUMPIFNOT R5 [+10]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K48 ["getIconForCurrentTheme"]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K49 ["IconEnums"]
  GETTABLEKS R21 R22 K50 ["UptoDate"]
  CALL R20 1 1
  JUMP [+9]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K48 ["getIconForCurrentTheme"]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K49 ["IconEnums"]
  GETTABLEKS R21 R22 K51 ["Warning"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K46 ["Image"]
  LOADN R20 1
  SETTABLEKS R20 R19 K11 ["BackgroundTransparency"]
  GETIMPORT R20 K17 [UDim2.new]
  LOADN R21 0
  LOADN R22 20
  LOADN R23 0
  LOADN R24 20
  CALL R20 4 1
  SETTABLEKS R20 R19 K12 ["Size"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K41 ["StatusIcon"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K9 ["createElement"]
  GETUPVAL R18 4
  DUPTABLE R19 K58 [{"AutomaticSize", "BorderSizePixel", "Text", "TextXAlignment", "BackgroundTransparency", "Font", "Position"}]
  GETIMPORT R20 K60 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K52 ["AutomaticSize"]
  LOADN R20 0
  SETTABLEKS R20 R19 K53 ["BorderSizePixel"]
  MOVE R20 R8
  LOADK R21 K61 ["MainText"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K54 ["Text"]
  GETIMPORT R20 K63 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K55 ["TextXAlignment"]
  LOADN R20 1
  SETTABLEKS R20 R19 K11 ["BackgroundTransparency"]
  GETIMPORT R20 K65 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R20 R19 K56 ["Font"]
  GETIMPORT R20 K17 [UDim2.new]
  LOADN R21 0
  LOADN R22 25
  LOADN R23 0
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K57 ["Position"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K42 ["StatusLabel"]
  JUMPIF R5 [+38]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K9 ["createElement"]
  GETUPVAL R18 4
  DUPTABLE R19 K67 [{"AutomaticSize", "BorderSizePixel", "Text", "TextXAlignment", "BackgroundTransparency", "Style", "Position"}]
  GETIMPORT R20 K60 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K52 ["AutomaticSize"]
  LOADN R20 0
  SETTABLEKS R20 R19 K53 ["BorderSizePixel"]
  MOVE R20 R8
  LOADK R21 K68 ["SubText"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K54 ["Text"]
  GETIMPORT R20 K63 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K55 ["TextXAlignment"]
  LOADN R20 1
  SETTABLEKS R20 R19 K11 ["BackgroundTransparency"]
  LOADK R20 K68 ["SubText"]
  SETTABLEKS R20 R19 K66 ["Style"]
  GETIMPORT R20 K17 [UDim2.new]
  LOADN R21 0
  LOADN R22 25
  LOADN R23 0
  LOADN R24 25
  CALL R20 4 1
  SETTABLEKS R20 R19 K57 ["Position"]
  CALL R17 2 1
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K43 ["StatusSubText"]
  CALL R13 3 1
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K20 ["StatusFrame"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K9 ["createElement"]
  LOADK R14 K10 ["Frame"]
  DUPTABLE R15 K14 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K11 ["BackgroundTransparency"]
  GETIMPORT R16 K17 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 20
  CALL R16 4 1
  SETTABLEKS R16 R15 K12 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K13 ["LayoutOrder"]
  DUPTABLE R16 K72 [{"ListLayout", "RefreshImageLabel", "LatestStatusLabel", "TimeLabel"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K9 ["createElement"]
  LOADK R18 K23 ["UIListLayout"]
  DUPTABLE R19 K27 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R20 K74 [Enum.FillDirection.Horizontal]
  SETTABLEKS R20 R19 K24 ["FillDirection"]
  GETIMPORT R20 K32 [UDim.new]
  LOADN R21 0
  LOADN R22 5
  CALL R20 2 1
  SETTABLEKS R20 R19 K25 ["Padding"]
  GETIMPORT R20 K33 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K26 ["SortOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K18 ["ListLayout"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K9 ["createElement"]
  LOADK R18 K45 ["ImageLabel"]
  DUPTABLE R19 K75 [{"LayoutOrder", "Image", "BackgroundTransparency", "Size"}]
  LOADN R20 0
  SETTABLEKS R20 R19 K13 ["LayoutOrder"]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K48 ["getIconForCurrentTheme"]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K49 ["IconEnums"]
  GETTABLEKS R21 R22 K76 ["Recent"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K46 ["Image"]
  LOADN R20 1
  SETTABLEKS R20 R19 K11 ["BackgroundTransparency"]
  GETIMPORT R20 K17 [UDim2.new]
  LOADN R21 0
  LOADN R22 20
  LOADN R23 0
  LOADN R24 20
  CALL R20 4 1
  SETTABLEKS R20 R19 K12 ["Size"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K69 ["RefreshImageLabel"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K9 ["createElement"]
  GETUPVAL R18 4
  DUPTABLE R19 K77 [{"LayoutOrder", "Text", "Font", "AutomaticSize", "TextXAlignment", "BackgroundTransparency"}]
  LOADN R20 1
  SETTABLEKS R20 R19 K13 ["LayoutOrder"]
  SETTABLEKS R2 R19 K54 ["Text"]
  GETIMPORT R20 K65 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R20 R19 K56 ["Font"]
  GETIMPORT R20 K60 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K52 ["AutomaticSize"]
  GETIMPORT R20 K63 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K55 ["TextXAlignment"]
  LOADN R20 1
  SETTABLEKS R20 R19 K11 ["BackgroundTransparency"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K70 ["LatestStatusLabel"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K9 ["createElement"]
  GETUPVAL R18 4
  DUPTABLE R19 K78 [{"LayoutOrder", "AutomaticSize", "BorderSizePixel", "Text", "TextXAlignment", "BackgroundTransparency", "Style"}]
  LOADN R20 2
  SETTABLEKS R20 R19 K13 ["LayoutOrder"]
  GETIMPORT R20 K60 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K52 ["AutomaticSize"]
  LOADN R20 0
  SETTABLEKS R20 R19 K53 ["BorderSizePixel"]
  SETTABLEKS R1 R19 K54 ["Text"]
  GETIMPORT R20 K63 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K55 ["TextXAlignment"]
  LOADN R20 1
  SETTABLEKS R20 R19 K11 ["BackgroundTransparency"]
  LOADK R20 K79 ["Basic"]
  SETTABLEKS R20 R19 K66 ["Style"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K71 ["TimeLabel"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K21 ["TimeFrame"]
  CALL R9 3 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FileSync"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K11 ["ModernIcons"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K13 ["ContextServices"]
  GETTABLEKS R5 R6 K14 ["Localization"]
  GETTABLEKS R6 R4 K15 ["UI"]
  GETTABLEKS R7 R6 K16 ["TextLabel"]
  DUPCLOSURE R8 K17 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R7
  RETURN R8 1
