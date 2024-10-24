PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["getMyGroups"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["Network"]
  NAMECALL R2 R2 K3 ["get"]
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R1 K8 [{"creatorId", "creatorType", "Id", "item", "Key", "Label", "name", "Text"}]
  GETTABLEKS R2 R0 K0 ["creatorId"]
  SETTABLEKS R2 R1 K0 ["creatorId"]
  GETTABLEKS R2 R0 K1 ["creatorType"]
  SETTABLEKS R2 R1 K1 ["creatorType"]
  GETTABLEKS R2 R0 K6 ["name"]
  SETTABLEKS R2 R1 K2 ["Id"]
  SETTABLEKS R0 R1 K3 ["item"]
  GETTABLEKS R2 R0 K4 ["Key"]
  SETTABLEKS R2 R1 K4 ["Key"]
  GETTABLEKS R2 R0 K6 ["name"]
  SETTABLEKS R2 R1 K5 ["Label"]
  GETTABLEKS R2 R0 K6 ["name"]
  SETTABLEKS R2 R1 K6 ["name"]
  GETTABLEKS R2 R0 K7 ["Text"]
  SETTABLEKS R2 R1 K7 ["Text"]
  RETURN R1 1

PROTO_2:
  DUPCLOSURE R1 K0 [PROTO_1]
  SETTABLEKS R1 R0 K1 ["createContentForSelectInput"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R1 K3 ["Title"]
  GETTABLEKS R5 R1 K4 ["LayoutOrder"]
  GETTABLEKS R6 R1 K5 ["TotalHeight"]
  GETTABLEKS R7 R1 K6 ["owner"]
  JUMPIF R7 [+2]
  NEWTABLE R7 0 0
  GETTABLEKS R8 R1 K7 ["onDropDownSelect"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["getOwnerDropDownContent"]
  GETTABLEKS R10 R1 K9 ["groupsArray"]
  MOVE R11 R2
  CALL R9 2 1
  SETTABLEKS R9 R0 K10 ["dropdownContent"]
  LOADNIL R9
  GETIMPORT R10 K12 [pairs]
  GETTABLEKS R11 R0 K10 ["dropdownContent"]
  CALL R10 1 3
  FORGPREP_NEXT R10
  GETTABLEKS R15 R14 K13 ["creatorId"]
  GETTABLEKS R16 R7 K13 ["creatorId"]
  JUMPIFNOTEQ R15 R16 [+2]
  MOVE R9 R13
  FORGLOOP R10 2 [-8]
  GETUPVAL R10 1
  JUMPIFNOT R10 [+2]
  JUMPIF R9 [+1]
  LOADN R9 1
  FASTCALL1 ASSERT R9 [+3]
  MOVE R11 R9
  GETIMPORT R10 K15 [assert]
  CALL R10 1 0
  GETTABLEKS R10 R3 K16 ["publishAsset"]
  LOADNIL R11
  GETTABLEKS R13 R0 K10 ["dropdownContent"]
  LENGTH R12 R13
  JUMPIFLT R12 R9 [+14]
  GETIMPORT R13 K18 [game]
  GETTABLEKS R12 R13 K19 ["CreatorType"]
  GETIMPORT R13 K22 [Enum.CreatorType.Group]
  JUMPIFNOTEQ R12 R13 [+8]
  GETTABLEKS R13 R0 K10 ["dropdownContent"]
  LENGTH R12 R13
  JUMPIFNOTEQKN R12 K23 [1] [+3]
  LOADK R11 K24 [""]
  JUMP [+5]
  GETTABLEKS R13 R0 K10 ["dropdownContent"]
  GETTABLE R12 R13 R9
  GETTABLEKS R11 R12 K25 ["Text"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K26 ["createElement"]
  LOADK R13 K27 ["Frame"]
  DUPTABLE R14 K32 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R15 K35 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  MOVE R19 R6
  CALL R15 4 1
  SETTABLEKS R15 R14 K28 ["Size"]
  LOADN R15 1
  SETTABLEKS R15 R14 K29 ["BackgroundTransparency"]
  GETIMPORT R15 K38 [Color3.fromRGB]
  LOADN R16 227
  LOADN R17 227
  LOADN R18 227
  CALL R15 3 1
  SETTABLEKS R15 R14 K30 ["BackgroundColor3"]
  LOADN R15 0
  SETTABLEKS R15 R14 K31 ["BorderSizePixel"]
  SETTABLEKS R5 R14 K4 ["LayoutOrder"]
  DUPTABLE R15 K41 [{"UIListLayout", "Title", "DropdownMenu"}]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K26 ["createElement"]
  LOADK R17 K39 ["UIListLayout"]
  DUPTABLE R18 K47 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R19 K49 [Enum.FillDirection.Horizontal]
  SETTABLEKS R19 R18 K42 ["FillDirection"]
  GETIMPORT R19 K51 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R19 R18 K43 ["HorizontalAlignment"]
  GETIMPORT R19 K53 [Enum.VerticalAlignment.Top]
  SETTABLEKS R19 R18 K44 ["VerticalAlignment"]
  GETIMPORT R19 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R19 R18 K45 ["SortOrder"]
  GETIMPORT R19 K56 [UDim.new]
  LOADN R20 0
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K46 ["Padding"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K39 ["UIListLayout"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K26 ["createElement"]
  LOADK R17 K57 ["TextLabel"]
  DUPTABLE R18 K63 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Text", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "Font", "LayoutOrder"}]
  GETIMPORT R19 K35 [UDim2.new]
  LOADN R20 0
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K64 ["TITLE_GUTTER_WIDTH"]
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K28 ["Size"]
  LOADN R19 1
  SETTABLEKS R19 R18 K29 ["BackgroundTransparency"]
  LOADN R19 0
  SETTABLEKS R19 R18 K31 ["BorderSizePixel"]
  SETTABLEKS R4 R18 K25 ["Text"]
  GETIMPORT R19 K65 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K58 ["TextXAlignment"]
  GETIMPORT R19 K66 [Enum.TextYAlignment.Top]
  SETTABLEKS R19 R18 K59 ["TextYAlignment"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K67 ["FONT_SIZE_TITLE"]
  SETTABLEKS R19 R18 K60 ["TextSize"]
  GETTABLEKS R19 R10 K68 ["titleTextColor"]
  SETTABLEKS R19 R18 K61 ["TextColor3"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K69 ["FONT"]
  SETTABLEKS R19 R18 K62 ["Font"]
  LOADN R19 1
  SETTABLEKS R19 R18 K4 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K3 ["Title"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K26 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K75 [{"Items", "LayoutOrder", "OnItemActivated", "PlaceholderText", "SelectedIndex", "Size", "Width"}]
  GETUPVAL R19 4
  GETTABLEKS R20 R0 K10 ["dropdownContent"]
  GETTABLEKS R21 R0 K76 ["createContentForSelectInput"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K70 ["Items"]
  LOADN R19 2
  SETTABLEKS R19 R18 K4 ["LayoutOrder"]
  SETTABLEKS R8 R18 K71 ["OnItemActivated"]
  SETTABLEKS R11 R18 K72 ["PlaceholderText"]
  GETTABLEKS R21 R0 K10 ["dropdownContent"]
  GETTABLE R20 R21 R9
  GETTABLEKS R19 R20 K77 ["Key"]
  SETTABLEKS R19 R18 K73 ["SelectedIndex"]
  GETIMPORT R19 K35 [UDim2.new]
  LOADN R20 0
  LOADN R21 220
  LOADN R22 0
  LOADN R23 38
  CALL R19 4 1
  SETTABLEKS R19 R18 K28 ["Size"]
  LOADN R19 220
  SETTABLEKS R19 R18 K74 ["Width"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K40 ["DropdownMenu"]
  CALL R12 3 -1
  RETURN R12 -1

PROTO_4:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  DUPTABLE R2 K1 [{"groupsArray"}]
  GETTABLEKS R4 R0 K2 ["GroupReducer"]
  GETTABLEKS R3 R4 K0 ["groupsArray"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K0 ["groupsArray"]
  RETURN R2 1

PROTO_5:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_6:
  DUPTABLE R1 K1 [{"getMyGroups"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["getMyGroups"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K3 ["Packages"]
  GETTABLEKS R5 R6 K8 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K9 ["ContextServices"]
  GETTABLEKS R6 R5 K10 ["withContext"]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["Util"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R7 K13 ["Constants"]
  CALL R8 1 1
  GETTABLEKS R9 R4 K14 ["UI"]
  GETTABLEKS R10 R9 K15 ["SelectInput"]
  GETTABLEKS R11 R4 K16 ["Dash"]
  GETTABLEKS R12 R11 K17 ["map"]
  GETTABLEKS R14 R0 K11 ["Src"]
  GETTABLEKS R13 R14 K18 ["Thunks"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R15 R13 K19 ["GetMyGroupsRequest"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K11 ["Src"]
  GETTABLEKS R17 R18 K9 ["ContextServices"]
  GETTABLEKS R16 R17 K20 ["NetworkContext"]
  CALL R15 1 1
  GETTABLEKS R16 R2 K21 ["PureComponent"]
  LOADK R18 K22 ["ConfigAccess"]
  NAMECALL R16 R16 K23 ["extend"]
  CALL R16 2 1
  GETIMPORT R17 K25 [game]
  LOADK R19 K26 ["FixConvertToPackageAssert"]
  LOADB R20 0
  NAMECALL R17 R17 K27 ["DefineFastFlag"]
  CALL R17 3 1
  DUPCLOSURE R18 K28 [PROTO_0]
  SETTABLEKS R18 R16 K29 ["didMount"]
  DUPCLOSURE R18 K30 [PROTO_2]
  SETTABLEKS R18 R16 K31 ["init"]
  DUPCLOSURE R18 K32 [PROTO_3]
  CAPTURE VAL R8
  CAPTURE VAL R17
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R12
  SETTABLEKS R18 R16 K33 ["render"]
  MOVE R18 R6
  DUPTABLE R19 K37 [{"Localization", "Network", "Stylizer"}]
  GETTABLEKS R20 R5 K34 ["Localization"]
  SETTABLEKS R20 R19 K34 ["Localization"]
  SETTABLEKS R15 R19 K35 ["Network"]
  GETTABLEKS R20 R5 K36 ["Stylizer"]
  SETTABLEKS R20 R19 K36 ["Stylizer"]
  CALL R18 1 1
  MOVE R19 R16
  CALL R18 1 1
  MOVE R16 R18
  DUPCLOSURE R18 K38 [PROTO_4]
  DUPCLOSURE R19 K39 [PROTO_6]
  CAPTURE VAL R14
  GETTABLEKS R20 R3 K40 ["connect"]
  MOVE R21 R18
  MOVE R22 R19
  CALL R20 2 1
  MOVE R21 R16
  CALL R20 1 -1
  RETURN R20 -1
