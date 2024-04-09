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
  NEWCLOSURE R7 P0
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R6
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["createElement"]
  LOADK R9 K6 ["Frame"]
  DUPTABLE R10 K10 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K7 ["BackgroundTransparency"]
  JUMPIFNOT R5 [+8]
  GETIMPORT R11 K13 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 70
  CALL R11 4 1
  JUMP [+7]
  GETIMPORT R11 K13 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 95
  CALL R11 4 1
  SETTABLEKS R11 R10 K8 ["Size"]
  GETTABLEKS R11 R0 K9 ["LayoutOrder"]
  SETTABLEKS R11 R10 K9 ["LayoutOrder"]
  DUPTABLE R11 K18 [{"ListLayout", "ButtonsUIPadding", "StatusFrame", "TimeFrame"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K5 ["createElement"]
  LOADK R13 K19 ["UIListLayout"]
  DUPTABLE R14 K23 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R15 K26 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K20 ["FillDirection"]
  GETIMPORT R15 K28 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K21 ["Padding"]
  GETIMPORT R15 K29 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K22 ["SortOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K14 ["ListLayout"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K5 ["createElement"]
  LOADK R13 K30 ["UIPadding"]
  DUPTABLE R14 K35 [{"PaddingBottom", "PaddingTop", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R15 K28 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K31 ["PaddingBottom"]
  GETIMPORT R15 K28 [UDim.new]
  LOADN R16 0
  LOADN R17 8
  CALL R15 2 1
  SETTABLEKS R15 R14 K32 ["PaddingTop"]
  GETIMPORT R15 K28 [UDim.new]
  LOADN R16 0
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K36 ["SIDE_PADDING"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K33 ["PaddingLeft"]
  GETIMPORT R15 K28 [UDim.new]
  LOADN R16 0
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K36 ["SIDE_PADDING"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K34 ["PaddingRight"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K15 ["ButtonsUIPadding"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K5 ["createElement"]
  LOADK R13 K6 ["Frame"]
  DUPTABLE R14 K10 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K7 ["BackgroundTransparency"]
  JUMPIFNOT R5 [+8]
  GETIMPORT R15 K13 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 20
  CALL R15 4 1
  JUMP [+7]
  GETIMPORT R15 K13 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 45
  CALL R15 4 1
  SETTABLEKS R15 R14 K8 ["Size"]
  LOADN R15 0
  SETTABLEKS R15 R14 K9 ["LayoutOrder"]
  DUPTABLE R15 K40 [{"StatusIcon", "StatusLabel", "StatusSubText"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K5 ["createElement"]
  LOADK R17 K41 ["ImageLabel"]
  DUPTABLE R18 K43 [{"Image", "BackgroundTransparency", "Size"}]
  JUMPIFNOT R5 [+10]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K44 ["getIconForCurrentTheme"]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K45 ["IconEnums"]
  GETTABLEKS R20 R21 K46 ["UptoDate"]
  CALL R19 1 1
  JUMP [+9]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K44 ["getIconForCurrentTheme"]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K45 ["IconEnums"]
  GETTABLEKS R20 R21 K47 ["Warning"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K42 ["Image"]
  LOADN R19 1
  SETTABLEKS R19 R18 K7 ["BackgroundTransparency"]
  GETIMPORT R19 K13 [UDim2.new]
  LOADN R20 0
  LOADN R21 20
  LOADN R22 0
  LOADN R23 20
  CALL R19 4 1
  SETTABLEKS R19 R18 K8 ["Size"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K37 ["StatusIcon"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K5 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K54 [{"AutomaticSize", "BorderSizePixel", "Text", "TextXAlignment", "BackgroundTransparency", "Font", "Position"}]
  GETIMPORT R19 K56 [Enum.AutomaticSize.XY]
  SETTABLEKS R19 R18 K48 ["AutomaticSize"]
  LOADN R19 0
  SETTABLEKS R19 R18 K49 ["BorderSizePixel"]
  MOVE R19 R7
  LOADK R20 K57 ["MainText"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K50 ["Text"]
  GETIMPORT R19 K59 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K51 ["TextXAlignment"]
  LOADN R19 1
  SETTABLEKS R19 R18 K7 ["BackgroundTransparency"]
  GETIMPORT R19 K61 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R19 R18 K52 ["Font"]
  GETIMPORT R19 K13 [UDim2.new]
  LOADN R20 0
  LOADN R21 25
  LOADN R22 0
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K53 ["Position"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K38 ["StatusLabel"]
  JUMPIF R5 [+38]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K5 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K63 [{"AutomaticSize", "BorderSizePixel", "Text", "TextXAlignment", "BackgroundTransparency", "Style", "Position"}]
  GETIMPORT R19 K56 [Enum.AutomaticSize.XY]
  SETTABLEKS R19 R18 K48 ["AutomaticSize"]
  LOADN R19 0
  SETTABLEKS R19 R18 K49 ["BorderSizePixel"]
  MOVE R19 R7
  LOADK R20 K64 ["SubText"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K50 ["Text"]
  GETIMPORT R19 K59 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K51 ["TextXAlignment"]
  LOADN R19 1
  SETTABLEKS R19 R18 K7 ["BackgroundTransparency"]
  LOADK R19 K64 ["SubText"]
  SETTABLEKS R19 R18 K62 ["Style"]
  GETIMPORT R19 K13 [UDim2.new]
  LOADN R20 0
  LOADN R21 25
  LOADN R22 0
  LOADN R23 25
  CALL R19 4 1
  SETTABLEKS R19 R18 K53 ["Position"]
  CALL R16 2 1
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K39 ["StatusSubText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K16 ["StatusFrame"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K5 ["createElement"]
  LOADK R13 K6 ["Frame"]
  DUPTABLE R14 K10 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K7 ["BackgroundTransparency"]
  GETIMPORT R15 K13 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 20
  CALL R15 4 1
  SETTABLEKS R15 R14 K8 ["Size"]
  LOADN R15 1
  SETTABLEKS R15 R14 K9 ["LayoutOrder"]
  DUPTABLE R15 K68 [{"ListLayout", "RefreshImageLabel", "LatestStatusLabel", "TimeLabel"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K5 ["createElement"]
  LOADK R17 K19 ["UIListLayout"]
  DUPTABLE R18 K23 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R19 K70 [Enum.FillDirection.Horizontal]
  SETTABLEKS R19 R18 K20 ["FillDirection"]
  GETIMPORT R19 K28 [UDim.new]
  LOADN R20 0
  LOADN R21 5
  CALL R19 2 1
  SETTABLEKS R19 R18 K21 ["Padding"]
  GETIMPORT R19 K29 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R19 R18 K22 ["SortOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K14 ["ListLayout"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K5 ["createElement"]
  LOADK R17 K41 ["ImageLabel"]
  DUPTABLE R18 K71 [{"LayoutOrder", "Image", "BackgroundTransparency", "Size"}]
  LOADN R19 0
  SETTABLEKS R19 R18 K9 ["LayoutOrder"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K44 ["getIconForCurrentTheme"]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K45 ["IconEnums"]
  GETTABLEKS R20 R21 K72 ["Recent"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K42 ["Image"]
  LOADN R19 1
  SETTABLEKS R19 R18 K7 ["BackgroundTransparency"]
  GETIMPORT R19 K13 [UDim2.new]
  LOADN R20 0
  LOADN R21 20
  LOADN R22 0
  LOADN R23 20
  CALL R19 4 1
  SETTABLEKS R19 R18 K8 ["Size"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K65 ["RefreshImageLabel"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K5 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K73 [{"LayoutOrder", "Text", "Font", "AutomaticSize", "TextXAlignment", "BackgroundTransparency"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K9 ["LayoutOrder"]
  SETTABLEKS R2 R18 K50 ["Text"]
  GETIMPORT R19 K61 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R19 R18 K52 ["Font"]
  GETIMPORT R19 K56 [Enum.AutomaticSize.XY]
  SETTABLEKS R19 R18 K48 ["AutomaticSize"]
  GETIMPORT R19 K59 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K51 ["TextXAlignment"]
  LOADN R19 1
  SETTABLEKS R19 R18 K7 ["BackgroundTransparency"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K66 ["LatestStatusLabel"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K5 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K74 [{"LayoutOrder", "AutomaticSize", "BorderSizePixel", "Text", "TextXAlignment", "BackgroundTransparency", "Style"}]
  LOADN R19 2
  SETTABLEKS R19 R18 K9 ["LayoutOrder"]
  GETIMPORT R19 K56 [Enum.AutomaticSize.XY]
  SETTABLEKS R19 R18 K48 ["AutomaticSize"]
  LOADN R19 0
  SETTABLEKS R19 R18 K49 ["BorderSizePixel"]
  SETTABLEKS R1 R18 K50 ["Text"]
  GETIMPORT R19 K59 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K51 ["TextXAlignment"]
  LOADN R19 1
  SETTABLEKS R19 R18 K7 ["BackgroundTransparency"]
  LOADK R19 K75 ["Basic"]
  SETTABLEKS R19 R18 K62 ["Style"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K67 ["TimeLabel"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K17 ["TimeFrame"]
  CALL R8 3 -1
  RETURN R8 -1

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
