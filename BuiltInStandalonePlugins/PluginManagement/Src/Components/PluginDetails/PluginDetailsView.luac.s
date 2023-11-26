PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["scrollLayoutRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["scrollRef"]
  GETTABLEKS R2 R3 K1 ["current"]
  JUMPIFNOT R2 [+1]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETIMPORT R3 K5 [UDim.new]
  LOADN R4 0
  GETTABLEKS R6 R1 K6 ["AbsoluteContentSize"]
  GETTABLEKS R5 R6 K7 ["Y"]
  CALL R3 2 1
  GETIMPORT R4 K9 [UDim2.new]
  GETTABLEKS R6 R2 K10 ["CanvasSize"]
  GETTABLEKS R5 R6 K11 ["X"]
  MOVE R6 R3
  CALL R4 2 1
  SETTABLEKS R4 R2 K10 ["CanvasSize"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["scrollLayoutRef"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K2 ["scrollRef"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["resizeScrollingFrameCanvas"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["resizeScrollingFrameCanvas"]
  CALL R1 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  DUPTABLE R2 K3 [{"assetId", "httpPermissions"}]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K1 ["assetId"]
  GETUPVAL R3 3
  SETTABLEKS R3 R2 K2 ["httpPermissions"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  DUPTABLE R2 K3 [{"assetId", "scriptInjectionPermissions"}]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K1 ["assetId"]
  GETUPVAL R3 3
  SETTABLEKS R3 R2 K2 ["scriptInjectionPermissions"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_5:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["assetId"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["Size"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["Localization"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["httpPermissions"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["scriptInjectionPermissions"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K6 ["pluginData"]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K7 ["Stylizer"]
  LOADN R9 40
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K8 ["DETAILS_THUMBNAIL_SIZE"]
  ADD R8 R9 R10
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K9 ["createElement"]
  LOADK R10 K10 ["Frame"]
  DUPTABLE R11 K13 [{"BackgroundColor3", "BorderSizePixel", "Size"}]
  GETTABLEKS R12 R7 K14 ["BackgroundColor"]
  SETTABLEKS R12 R11 K11 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K12 ["BorderSizePixel"]
  SETTABLEKS R2 R11 K2 ["Size"]
  DUPTABLE R12 K19 [{"Padding", "Layout", "PlugnEntryContainer", "ScrollingFrame"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K9 ["createElement"]
  LOADK R14 K20 ["UIPadding"]
  DUPTABLE R15 K24 [{"PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R16 K27 [UDim.new]
  LOADN R17 0
  LOADN R18 40
  CALL R16 2 1
  SETTABLEKS R16 R15 K21 ["PaddingBottom"]
  GETIMPORT R16 K27 [UDim.new]
  LOADN R17 0
  LOADN R18 40
  CALL R16 2 1
  SETTABLEKS R16 R15 K22 ["PaddingLeft"]
  GETIMPORT R16 K27 [UDim.new]
  LOADN R17 0
  LOADN R18 40
  CALL R16 2 1
  SETTABLEKS R16 R15 K23 ["PaddingRight"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K15 ["Padding"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K9 ["createElement"]
  LOADK R14 K28 ["UIListLayout"]
  DUPTABLE R15 K32 [{"HorizontalAlignment", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R16 K35 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K29 ["HorizontalAlignment"]
  GETIMPORT R16 K27 [UDim.new]
  LOADN R17 0
  LOADN R18 20
  CALL R16 2 1
  SETTABLEKS R16 R15 K15 ["Padding"]
  GETIMPORT R16 K37 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K30 ["SortOrder"]
  GETIMPORT R16 K39 [Enum.VerticalAlignment.Top]
  SETTABLEKS R16 R15 K31 ["VerticalAlignment"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K16 ["Layout"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K9 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K42 [{"BackgroundTransparency", "LayoutOrder", "width"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K40 ["BackgroundTransparency"]
  LOADN R16 2
  SETTABLEKS R16 R15 K36 ["LayoutOrder"]
  GETIMPORT R16 K27 [UDim.new]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K41 ["width"]
  DUPTABLE R16 K45 [{"DetailsTopBar", "Border"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K9 ["createElement"]
  GETUPVAL R18 3
  DUPTABLE R19 K47 [{"assetId", "name", "LayoutOrder"}]
  SETTABLEKS R1 R19 K1 ["assetId"]
  GETTABLEKS R20 R6 K46 ["name"]
  SETTABLEKS R20 R19 K46 ["name"]
  LOADN R20 1
  SETTABLEKS R20 R19 K36 ["LayoutOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K43 ["DetailsTopBar"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K9 ["createElement"]
  LOADK R18 K10 ["Frame"]
  DUPTABLE R19 K48 [{"LayoutOrder", "BorderSizePixel", "BackgroundColor3", "Size"}]
  LOADN R20 2
  SETTABLEKS R20 R19 K36 ["LayoutOrder"]
  LOADN R20 0
  SETTABLEKS R20 R19 K12 ["BorderSizePixel"]
  GETTABLEKS R20 R7 K49 ["BorderColor"]
  SETTABLEKS R20 R19 K11 ["BackgroundColor3"]
  GETIMPORT R20 K51 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  LOADN R24 1
  CALL R20 4 1
  SETTABLEKS R20 R19 K2 ["Size"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K44 ["Border"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K17 ["PlugnEntryContainer"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K9 ["createElement"]
  LOADK R14 K18 ["ScrollingFrame"]
  NEWTABLE R15 16 0
  LOADN R16 1
  SETTABLEKS R16 R15 K40 ["BackgroundTransparency"]
  LOADN R16 3
  SETTABLEKS R16 R15 K36 ["LayoutOrder"]
  GETIMPORT R16 K51 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K52 ["CanvasSize"]
  GETIMPORT R16 K51 [UDim2.new]
  LOADN R17 0
  LOADN R18 200
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K53 ["Position"]
  LOADK R16 K54 ["rbxasset://textures/StudioToolbox/ScrollBarTop.png"]
  SETTABLEKS R16 R15 K55 ["TopImage"]
  LOADK R16 K56 ["rbxasset://textures/StudioToolbox/ScrollBarMiddle.png"]
  SETTABLEKS R16 R15 K57 ["MidImage"]
  LOADK R16 K58 ["rbxasset://textures/StudioToolbox/ScrollBarBottom.png"]
  SETTABLEKS R16 R15 K59 ["BottomImage"]
  GETTABLEKS R16 R7 K60 ["ScrollbarColor"]
  SETTABLEKS R16 R15 K61 ["ScrollBarImageColor3"]
  GETTABLEKS R16 R7 K62 ["ScrollbarSize"]
  SETTABLEKS R16 R15 K63 ["ScrollBarThickness"]
  GETTABLEKS R16 R7 K64 ["ScrollbarTransparency"]
  SETTABLEKS R16 R15 K65 ["ScrollBarImageTransparency"]
  GETIMPORT R16 K51 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 1
  MINUS R20 R8
  CALL R16 4 1
  SETTABLEKS R16 R15 K2 ["Size"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K66 ["Ref"]
  GETTABLEKS R17 R0 K67 ["scrollRef"]
  SETTABLE R17 R15 R16
  DUPTABLE R16 K69 [{"Layout", "Content"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K9 ["createElement"]
  LOADK R18 K28 ["UIListLayout"]
  NEWTABLE R19 8 0
  GETIMPORT R20 K71 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R20 R19 K29 ["HorizontalAlignment"]
  GETIMPORT R20 K37 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K30 ["SortOrder"]
  GETIMPORT R20 K39 [Enum.VerticalAlignment.Top]
  SETTABLEKS R20 R19 K31 ["VerticalAlignment"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K72 ["Change"]
  GETTABLEKS R20 R21 K73 ["AbsoluteContentSize"]
  GETTABLEKS R21 R0 K74 ["resizeScrollingFrameCanvas"]
  SETTABLE R21 R19 R20
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K66 ["Ref"]
  GETTABLEKS R21 R0 K75 ["scrollLayoutRef"]
  SETTABLE R21 R19 R20
  CALL R17 2 1
  SETTABLEKS R17 R16 K16 ["Layout"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K9 ["createElement"]
  GETUPVAL R18 2
  DUPTABLE R19 K77 [{"BackgroundTransparency", "contentPadding", "width"}]
  LOADN R20 1
  SETTABLEKS R20 R19 K40 ["BackgroundTransparency"]
  GETIMPORT R20 K27 [UDim.new]
  LOADN R21 0
  LOADN R22 20
  CALL R20 2 1
  SETTABLEKS R20 R19 K76 ["contentPadding"]
  GETIMPORT R20 K27 [UDim.new]
  LOADN R21 1
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K41 ["width"]
  DUPTABLE R20 K80 [{"HttpRequestPermissionContainer", "ScriptInjectionPermissionContainer"}]
  GETIMPORT R21 K82 [next]
  MOVE R22 R4
  CALL R21 1 1
  JUMPIFNOT R21 [+25]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K9 ["createElement"]
  GETUPVAL R22 4
  DUPTABLE R23 K86 [{"LayoutOrder", "renderContent", "theme", "title"}]
  LOADN R24 3
  SETTABLEKS R24 R23 K36 ["LayoutOrder"]
  NEWCLOSURE R24 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U5
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLEKS R24 R23 K83 ["renderContent"]
  SETTABLEKS R7 R23 K84 ["theme"]
  LOADK R26 K87 ["Details"]
  LOADK R27 K88 ["HttpRequests"]
  NAMECALL R24 R3 K89 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K85 ["title"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K78 ["HttpRequestPermissionContainer"]
  GETIMPORT R21 K82 [next]
  MOVE R22 R5
  CALL R21 1 1
  JUMPIFNOT R21 [+25]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K9 ["createElement"]
  GETUPVAL R22 4
  DUPTABLE R23 K86 [{"LayoutOrder", "renderContent", "theme", "title"}]
  LOADN R24 4
  SETTABLEKS R24 R23 K36 ["LayoutOrder"]
  NEWCLOSURE R24 P1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U6
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R24 R23 K83 ["renderContent"]
  SETTABLEKS R7 R23 K84 ["theme"]
  LOADK R26 K87 ["Details"]
  LOADK R27 K90 ["ScriptInjection"]
  NAMECALL R24 R3 K89 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K85 ["title"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K79 ["ScriptInjectionPermissionContainer"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K68 ["Content"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K18 ["ScrollingFrame"]
  CALL R9 3 -1
  RETURN R9 -1

PROTO_6:
  GETTABLEKS R3 R0 K0 ["Management"]
  GETTABLEKS R2 R3 K1 ["plugins"]
  GETTABLEKS R4 R0 K2 ["PluginPermissions"]
  GETTABLEKS R5 R1 K3 ["assetId"]
  GETTABLE R3 R4 R5
  DUPTABLE R4 K7 [{"pluginData", "httpPermissions", "scriptInjectionPermissions"}]
  JUMPIFNOT R2 [+4]
  GETTABLEKS R6 R1 K3 ["assetId"]
  GETTABLE R5 R2 R6
  JUMPIF R5 [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K4 ["pluginData"]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R5 R3 K5 ["httpPermissions"]
  JUMPIF R5 [+2]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K5 ["httpPermissions"]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R5 R3 K6 ["scriptInjectionPermissions"]
  JUMPIF R5 [+2]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K6 ["scriptInjectionPermissions"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["FitFrame"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Util"]
  GETTABLEKS R5 R6 K11 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R9 R0 K9 ["Src"]
  GETTABLEKS R8 R9 K12 ["Components"]
  GETTABLEKS R7 R8 K13 ["PluginDetails"]
  GETTABLEKS R6 R7 K14 ["DetailsTopBar"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R10 R0 K9 ["Src"]
  GETTABLEKS R9 R10 K12 ["Components"]
  GETTABLEKS R8 R9 K13 ["PluginDetails"]
  GETTABLEKS R7 R8 K15 ["HttpRequestHolder"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R11 R0 K9 ["Src"]
  GETTABLEKS R10 R11 K12 ["Components"]
  GETTABLEKS R9 R10 K13 ["PluginDetails"]
  GETTABLEKS R8 R9 K16 ["ScriptInjectionHolder"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R12 R0 K9 ["Src"]
  GETTABLEKS R11 R12 K12 ["Components"]
  GETTABLEKS R10 R11 K13 ["PluginDetails"]
  GETTABLEKS R9 R10 K17 ["ListItem"]
  CALL R8 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R0 K5 ["Packages"]
  GETTABLEKS R11 R12 K18 ["Framework"]
  CALL R10 1 1
  GETTABLEKS R9 R10 K19 ["ContextServices"]
  GETTABLEKS R10 R9 K20 ["withContext"]
  GETTABLEKS R11 R3 K21 ["FitFrameVertical"]
  GETTABLEKS R12 R1 K22 ["Component"]
  LOADK R14 K23 ["PluginDetailsView"]
  NAMECALL R12 R12 K24 ["extend"]
  CALL R12 2 1
  DUPTABLE R13 K26 [{"Size"}]
  GETIMPORT R14 K29 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K25 ["Size"]
  SETTABLEKS R13 R12 K30 ["defaultProps"]
  DUPCLOSURE R13 K31 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R13 R12 K32 ["init"]
  DUPCLOSURE R13 K33 [PROTO_2]
  SETTABLEKS R13 R12 K34 ["didMount"]
  DUPCLOSURE R13 K35 [PROTO_5]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R13 R12 K36 ["render"]
  MOVE R13 R10
  DUPTABLE R14 K39 [{"Localization", "Stylizer"}]
  GETTABLEKS R15 R9 K37 ["Localization"]
  SETTABLEKS R15 R14 K37 ["Localization"]
  GETTABLEKS R15 R9 K38 ["Stylizer"]
  SETTABLEKS R15 R14 K38 ["Stylizer"]
  CALL R13 1 1
  MOVE R14 R12
  CALL R13 1 1
  MOVE R12 R13
  DUPCLOSURE R13 K40 [PROTO_6]
  GETTABLEKS R14 R2 K41 ["connect"]
  MOVE R15 R13
  LOADNIL R16
  CALL R14 2 1
  MOVE R15 R12
  CALL R14 1 -1
  RETURN R14 -1
