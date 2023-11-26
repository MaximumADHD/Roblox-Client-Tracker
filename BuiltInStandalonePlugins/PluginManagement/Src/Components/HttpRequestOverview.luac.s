PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Navigation"]
  NAMECALL R0 R0 K2 ["get"]
  CALL R0 1 1
  GETTABLEKS R2 R0 K3 ["navigation"]
  GETTABLEKS R1 R2 K4 ["navigate"]
  DUPTABLE R2 K7 [{"routeName", "params"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["APP_PAGE"]
  GETTABLEKS R3 R4 K9 ["Detail"]
  SETTABLEKS R3 R2 K5 ["routeName"]
  DUPTABLE R3 K11 [{"assetId"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K10 ["assetId"]
  SETTABLEKS R4 R3 K10 ["assetId"]
  SETTABLEKS R3 R2 K6 ["params"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K0 ["openPluginDetails"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["acceptedRequestsCount"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["deniedRequestsCount"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["allowedScriptInjection"]
  LOADB R4 1
  LOADN R5 0
  JUMPIFLT R5 R1 [+6]
  LOADN R5 0
  JUMPIFLT R5 R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  OR R6 R4 R5
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K4 ["LayoutOrder"]
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K5 ["Localization"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K6 ["Stylizer"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K7 ["new"]
  CALL R10 0 1
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K8 ["createElement"]
  LOADK R12 K9 ["TextButton"]
  NEWTABLE R13 8 0
  LOADN R14 1
  SETTABLEKS R14 R13 K10 ["BackgroundTransparency"]
  SETTABLEKS R7 R13 K4 ["LayoutOrder"]
  GETIMPORT R14 K12 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  LOADN R18 16
  CALL R14 4 1
  SETTABLEKS R14 R13 K13 ["Size"]
  LOADK R14 K14 [""]
  SETTABLEKS R14 R13 K15 ["Text"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K16 ["Event"]
  GETTABLEKS R14 R15 K17 ["Activated"]
  GETTABLEKS R15 R0 K18 ["openPluginDetails"]
  SETTABLE R15 R13 R14
  DUPTABLE R14 K28 [{"Layout", "NoPermissionsRequested", "Label", "Allowed", "Denied", "Border", "ScriptInjection", "Border2", "EditButton"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K8 ["createElement"]
  LOADK R16 K29 ["UIListLayout"]
  DUPTABLE R17 K34 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R18 K37 [Enum.FillDirection.Horizontal]
  SETTABLEKS R18 R17 K30 ["FillDirection"]
  GETIMPORT R18 K39 [UDim.new]
  LOADN R19 0
  LOADN R20 8
  CALL R18 2 1
  SETTABLEKS R18 R17 K31 ["Padding"]
  GETIMPORT R18 K40 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K32 ["SortOrder"]
  GETIMPORT R18 K42 [Enum.VerticalAlignment.Top]
  SETTABLEKS R18 R17 K33 ["VerticalAlignment"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K19 ["Layout"]
  NOT R15 R6
  JUMPIFNOT R15 [+52]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K8 ["createElement"]
  GETUPVAL R16 2
  DUPTABLE R17 K48 [{"BackgroundTransparency", "Font", "LayoutOrder", "Size", "TextSize", "Text", "TextXAlignment", "TextColor3", "width"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K10 ["BackgroundTransparency"]
  GETTABLEKS R18 R9 K43 ["Font"]
  SETTABLEKS R18 R17 K43 ["Font"]
  NAMECALL R18 R10 K49 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K4 ["LayoutOrder"]
  GETIMPORT R18 K12 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 16
  CALL R18 4 1
  SETTABLEKS R18 R17 K13 ["Size"]
  LOADN R18 16
  SETTABLEKS R18 R17 K44 ["TextSize"]
  LOADK R20 K50 ["PluginEntry"]
  LOADK R21 K20 ["NoPermissionsRequested"]
  NAMECALL R18 R8 K51 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K15 ["Text"]
  GETIMPORT R18 K53 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K45 ["TextXAlignment"]
  GETTABLEKS R18 R9 K54 ["HttpOverviewTextColor"]
  SETTABLEKS R18 R17 K46 ["TextColor3"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K55 ["Width"]
  GETTABLEKS R18 R19 K56 ["FitToText"]
  SETTABLEKS R18 R17 K47 ["width"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K20 ["NoPermissionsRequested"]
  MOVE R15 R4
  JUMPIFNOT R15 [+52]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K8 ["createElement"]
  GETUPVAL R16 2
  DUPTABLE R17 K48 [{"BackgroundTransparency", "Font", "LayoutOrder", "Size", "TextSize", "Text", "TextXAlignment", "TextColor3", "width"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K10 ["BackgroundTransparency"]
  GETTABLEKS R18 R9 K43 ["Font"]
  SETTABLEKS R18 R17 K43 ["Font"]
  NAMECALL R18 R10 K49 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K4 ["LayoutOrder"]
  GETIMPORT R18 K12 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 16
  CALL R18 4 1
  SETTABLEKS R18 R17 K13 ["Size"]
  LOADN R18 16
  SETTABLEKS R18 R17 K44 ["TextSize"]
  LOADK R20 K50 ["PluginEntry"]
  LOADK R21 K57 ["HttpRequest"]
  NAMECALL R18 R8 K51 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K15 ["Text"]
  GETIMPORT R18 K53 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K45 ["TextXAlignment"]
  GETTABLEKS R18 R9 K54 ["HttpOverviewTextColor"]
  SETTABLEKS R18 R17 K46 ["TextColor3"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K55 ["Width"]
  GETTABLEKS R18 R19 K56 ["FitToText"]
  SETTABLEKS R18 R17 K47 ["width"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K21 ["Label"]
  LOADB R15 0
  LOADN R16 0
  JUMPIFNOTLT R16 R1 [+32]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K8 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K61 [{"Image", "imageSize", "imageTopPadding", "LayoutOrder", "Text", "TextColor3", "TextSize"}]
  LOADK R18 K62 ["rbxasset://textures/PluginManagement/allowed.png"]
  SETTABLEKS R18 R17 K58 ["Image"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K63 ["HTTP_OVERVIEW_ICON_SIZE"]
  SETTABLEKS R18 R17 K59 ["imageSize"]
  LOADN R18 1
  SETTABLEKS R18 R17 K60 ["imageTopPadding"]
  NAMECALL R18 R10 K49 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K4 ["LayoutOrder"]
  SETTABLEKS R1 R17 K15 ["Text"]
  GETTABLEKS R18 R9 K54 ["HttpOverviewTextColor"]
  SETTABLEKS R18 R17 K46 ["TextColor3"]
  LOADN R18 16
  SETTABLEKS R18 R17 K44 ["TextSize"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K22 ["Allowed"]
  LOADB R15 0
  LOADN R16 0
  JUMPIFNOTLT R16 R2 [+32]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K8 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K61 [{"Image", "imageSize", "imageTopPadding", "LayoutOrder", "Text", "TextColor3", "TextSize"}]
  LOADK R18 K64 ["rbxasset://textures/PluginManagement/declined.png"]
  SETTABLEKS R18 R17 K58 ["Image"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K63 ["HTTP_OVERVIEW_ICON_SIZE"]
  SETTABLEKS R18 R17 K59 ["imageSize"]
  LOADN R18 1
  SETTABLEKS R18 R17 K60 ["imageTopPadding"]
  NAMECALL R18 R10 K49 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K4 ["LayoutOrder"]
  SETTABLEKS R2 R17 K15 ["Text"]
  GETTABLEKS R18 R9 K54 ["HttpOverviewTextColor"]
  SETTABLEKS R18 R17 K46 ["TextColor3"]
  LOADN R18 16
  SETTABLEKS R18 R17 K44 ["TextSize"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K23 ["Denied"]
  MOVE R15 R4
  JUMPIFNOT R15 [+29]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K8 ["createElement"]
  LOADK R16 K65 ["Frame"]
  DUPTABLE R17 K68 [{"BorderSizePixel", "BackgroundColor3", "LayoutOrder", "Size"}]
  LOADN R18 0
  SETTABLEKS R18 R17 K66 ["BorderSizePixel"]
  GETTABLEKS R18 R9 K69 ["BorderColor"]
  SETTABLEKS R18 R17 K67 ["BackgroundColor3"]
  NAMECALL R18 R10 K49 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K4 ["LayoutOrder"]
  GETIMPORT R18 K12 [UDim2.new]
  LOADN R19 0
  LOADN R20 1
  LOADN R21 0
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K63 ["HTTP_OVERVIEW_ICON_SIZE"]
  CALL R18 4 1
  SETTABLEKS R18 R17 K13 ["Size"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K24 ["Border"]
  MOVE R15 R5
  JUMPIFNOT R15 [+55]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K8 ["createElement"]
  GETUPVAL R16 2
  DUPTABLE R17 K48 [{"BackgroundTransparency", "Font", "LayoutOrder", "Size", "TextSize", "Text", "TextXAlignment", "TextColor3", "width"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K10 ["BackgroundTransparency"]
  GETTABLEKS R18 R9 K43 ["Font"]
  SETTABLEKS R18 R17 K43 ["Font"]
  NAMECALL R18 R10 K49 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K4 ["LayoutOrder"]
  GETIMPORT R18 K12 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 16
  CALL R18 4 1
  SETTABLEKS R18 R17 K13 ["Size"]
  LOADN R18 16
  SETTABLEKS R18 R17 K44 ["TextSize"]
  LOADK R20 K50 ["PluginEntry"]
  JUMPIFNOT R3 [+2]
  LOADK R21 K70 ["ScriptInjectionAllowed"]
  JUMP [+1]
  LOADK R21 K71 ["ScriptInjectionDenied"]
  NAMECALL R18 R8 K51 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K15 ["Text"]
  GETIMPORT R18 K53 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K45 ["TextXAlignment"]
  GETTABLEKS R18 R9 K54 ["HttpOverviewTextColor"]
  SETTABLEKS R18 R17 K46 ["TextColor3"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K55 ["Width"]
  GETTABLEKS R18 R19 K56 ["FitToText"]
  SETTABLEKS R18 R17 K47 ["width"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K25 ["ScriptInjection"]
  MOVE R15 R5
  JUMPIFNOT R15 [+29]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K8 ["createElement"]
  LOADK R16 K65 ["Frame"]
  DUPTABLE R17 K68 [{"BorderSizePixel", "BackgroundColor3", "LayoutOrder", "Size"}]
  LOADN R18 0
  SETTABLEKS R18 R17 K66 ["BorderSizePixel"]
  GETTABLEKS R18 R9 K69 ["BorderColor"]
  SETTABLEKS R18 R17 K67 ["BackgroundColor3"]
  NAMECALL R18 R10 K49 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K4 ["LayoutOrder"]
  GETIMPORT R18 K12 [UDim2.new]
  LOADN R19 0
  LOADN R20 1
  LOADN R21 0
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K63 ["HTTP_OVERVIEW_ICON_SIZE"]
  CALL R18 4 1
  SETTABLEKS R18 R17 K13 ["Size"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K26 ["Border2"]
  MOVE R15 R6
  JUMPIFNOT R15 [+34]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K8 ["createElement"]
  LOADK R16 K72 ["ImageLabel"]
  DUPTABLE R17 K74 [{"BackgroundTransparency", "Image", "ImageColor3", "LayoutOrder", "Size"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K10 ["BackgroundTransparency"]
  LOADK R18 K75 ["rbxasset://textures/PluginManagement/edit.png"]
  SETTABLEKS R18 R17 K58 ["Image"]
  GETTABLEKS R18 R9 K54 ["HttpOverviewTextColor"]
  SETTABLEKS R18 R17 K73 ["ImageColor3"]
  NAMECALL R18 R10 K49 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K4 ["LayoutOrder"]
  GETIMPORT R18 K12 [UDim2.new]
  LOADN R19 0
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K63 ["HTTP_OVERVIEW_ICON_SIZE"]
  LOADN R21 0
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K63 ["HTTP_OVERVIEW_ICON_SIZE"]
  CALL R18 4 1
  SETTABLEKS R18 R17 K13 ["Size"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K27 ["EditButton"]
  CALL R11 3 -1
  RETURN R11 -1

PROTO_3:
  GETTABLEKS R3 R0 K0 ["PluginPermissions"]
  GETTABLEKS R4 R1 K1 ["assetId"]
  GETTABLE R2 R3 R4
  DUPTABLE R3 K5 [{"acceptedRequestsCount", "deniedRequestsCount", "allowedScriptInjection"}]
  JUMPIFNOT R2 [+3]
  GETTABLEKS R4 R2 K6 ["allowedHttpCount"]
  JUMPIF R4 [+1]
  LOADN R4 0
  SETTABLEKS R4 R3 K2 ["acceptedRequestsCount"]
  JUMPIFNOT R2 [+3]
  GETTABLEKS R4 R2 K7 ["deniedHttpCount"]
  JUMPIF R4 [+1]
  LOADN R4 0
  SETTABLEKS R4 R3 K3 ["deniedRequestsCount"]
  MOVE R4 R2
  JUMPIFNOT R4 [+2]
  GETTABLEKS R4 R2 K4 ["allowedScriptInjection"]
  SETTABLEKS R4 R3 K4 ["allowedScriptInjection"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
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
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K5 ["Packages"]
  GETTABLEKS R6 R7 K9 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R0 K5 ["Packages"]
  GETTABLEKS R9 R10 K9 ["Framework"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K12 ["Util"]
  GETTABLEKS R6 R7 K13 ["LayoutOrderIterator"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K14 ["Src"]
  GETTABLEKS R9 R10 K12 ["Util"]
  GETTABLEKS R8 R9 K15 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K14 ["Src"]
  GETTABLEKS R10 R11 K10 ["ContextServices"]
  GETTABLEKS R9 R10 K16 ["PluginAPI2"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K14 ["Src"]
  GETTABLEKS R11 R12 K10 ["ContextServices"]
  GETTABLEKS R10 R11 K17 ["Navigation"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K14 ["Src"]
  GETTABLEKS R12 R13 K18 ["Components"]
  GETTABLEKS R11 R12 K19 ["IconWithText"]
  CALL R10 1 1
  GETTABLEKS R11 R3 K20 ["FitTextLabel"]
  GETTABLEKS R12 R1 K21 ["PureComponent"]
  LOADK R14 K22 ["HttpRequestOverview"]
  NAMECALL R12 R12 K23 ["extend"]
  CALL R12 2 1
  DUPTABLE R13 K27 [{"assetId", "LayoutOrder", "navigation"}]
  LOADNIL R14
  SETTABLEKS R14 R13 K24 ["assetId"]
  LOADN R14 1
  SETTABLEKS R14 R13 K25 ["LayoutOrder"]
  LOADNIL R14
  SETTABLEKS R14 R13 K26 ["navigation"]
  SETTABLEKS R13 R12 K28 ["defaultProps"]
  DUPCLOSURE R13 K29 [PROTO_1]
  CAPTURE VAL R7
  SETTABLEKS R13 R12 K30 ["init"]
  DUPCLOSURE R13 K31 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R7
  SETTABLEKS R13 R12 K32 ["render"]
  DUPCLOSURE R13 K33 [PROTO_3]
  MOVE R14 R5
  DUPTABLE R15 K37 [{"Navigation", "Localization", "Stylizer", "API"}]
  SETTABLEKS R9 R15 K17 ["Navigation"]
  GETTABLEKS R16 R4 K34 ["Localization"]
  SETTABLEKS R16 R15 K34 ["Localization"]
  GETTABLEKS R16 R4 K35 ["Stylizer"]
  SETTABLEKS R16 R15 K35 ["Stylizer"]
  SETTABLEKS R8 R15 K36 ["API"]
  CALL R14 1 1
  MOVE R15 R12
  CALL R14 1 1
  MOVE R12 R14
  GETTABLEKS R14 R2 K38 ["connect"]
  MOVE R15 R13
  LOADNIL R16
  CALL R14 2 1
  MOVE R15 R12
  CALL R14 1 -1
  RETURN R14 -1
