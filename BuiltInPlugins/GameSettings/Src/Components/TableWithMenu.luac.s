PROTO_0:
  DUPTABLE R4 K2 [{"HeaderLayout", "Padding"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["createElement"]
  LOADK R6 K4 ["UIListLayout"]
  DUPTABLE R7 K9 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R8 K12 [Enum.FillDirection.Horizontal]
  SETTABLEKS R8 R7 K5 ["FillDirection"]
  GETIMPORT R8 K14 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R8 R7 K6 ["HorizontalAlignment"]
  GETIMPORT R8 K16 [Enum.VerticalAlignment.Center]
  SETTABLEKS R8 R7 K7 ["VerticalAlignment"]
  GETIMPORT R8 K18 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R8 R7 K8 ["SortOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K0 ["HeaderLayout"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["createElement"]
  LOADK R6 K19 ["UIPadding"]
  DUPTABLE R7 K22 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R8 K25 [UDim.new]
  LOADN R9 0
  GETTABLEKS R11 R1 K26 ["table"]
  GETTABLEKS R10 R11 K27 ["textPadding"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K20 ["PaddingLeft"]
  GETIMPORT R8 K25 [UDim.new]
  LOADN R9 0
  GETTABLEKS R11 R1 K26 ["table"]
  GETTABLEKS R10 R11 K27 ["textPadding"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K21 ["PaddingRight"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K1 ["Padding"]
  LENGTH R5 R2
  LOADN R8 1
  LENGTH R6 R2
  LOADN R7 1
  FORNPREP R6
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["createElement"]
  LOADK R10 K28 ["TextLabel"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K29 ["Dictionary"]
  GETTABLEKS R11 R12 K30 ["join"]
  GETTABLEKS R13 R1 K31 ["fontStyle"]
  GETTABLEKS R12 R13 K32 ["Normal"]
  DUPTABLE R13 K39 [{"Size", "LayoutOrder", "Text", "BackgroundTransparency", "BorderSizePixel", "TextXAlignment", "TextTruncate"}]
  GETIMPORT R14 K41 [UDim2.new]
  DIVRK R15 R42 K5 ["FillDirection"]
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K33 ["Size"]
  SETTABLEKS R8 R13 K17 ["LayoutOrder"]
  GETTABLE R14 R2 R8
  SETTABLEKS R14 R13 K34 ["Text"]
  LOADN R14 1
  SETTABLEKS R14 R13 K35 ["BackgroundTransparency"]
  LOADN R14 0
  SETTABLEKS R14 R13 K36 ["BorderSizePixel"]
  GETIMPORT R14 K43 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K37 ["TextXAlignment"]
  GETIMPORT R14 K45 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R14 R13 K38 ["TextTruncate"]
  CALL R11 2 -1
  CALL R9 -1 1
  SETTABLE R9 R4 R8
  FORNLOOP R6
  JUMPIFNOT R3 [+30]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["createElement"]
  LOADK R7 K46 ["Frame"]
  DUPTABLE R8 K47 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K35 ["BackgroundTransparency"]
  LENGTH R10 R2
  ADDK R9 R10 K42 [1]
  SETTABLEKS R9 R8 K17 ["LayoutOrder"]
  GETIMPORT R9 K41 [UDim2.new]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K33 ["Size"]
  NEWTABLE R9 0 1
  MOVE R10 R3
  SETLIST R9 R10 1 [1]
  CALL R6 3 1
  LENGTH R8 R2
  ADDK R7 R8 K42 [1]
  SETTABLE R6 R4 R7
  RETURN R4 1

PROTO_1:
  GETUPVAL R1 0
  MOVE R2 R0
  GETUPVAL R3 1
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R5 K1 [{"ListLayout"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  LOADK R7 K3 ["UIListLayout"]
  NEWTABLE R8 8 0
  GETIMPORT R9 K7 [Enum.FillDirection.Vertical]
  SETTABLEKS R9 R8 K5 ["FillDirection"]
  GETIMPORT R9 K10 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R9 R8 K8 ["HorizontalAlignment"]
  GETIMPORT R9 K13 [Enum.VerticalAlignment.Top]
  SETTABLEKS R9 R8 K11 ["VerticalAlignment"]
  GETIMPORT R9 K16 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R9 R8 K14 ["SortOrder"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K17 ["Ref"]
  GETTABLEKS R10 R0 K18 ["layoutRef"]
  SETTABLE R10 R8 R9
  CALL R6 2 1
  SETTABLEKS R6 R5 K0 ["ListLayout"]
  LOADN R6 0
  GETIMPORT R7 K20 [pairs]
  MOVE R8 R1
  CALL R7 1 3
  FORGPREP_NEXT R7
  LOADNIL R12
  JUMPIFNOT R4 [+15]
  NEWTABLE R13 0 1
  FASTCALL1 TABLE_UNPACK R2 [+3]
  MOVE R15 R2
  GETIMPORT R14 K22 [unpack]
  CALL R14 1 -1
  SETLIST R13 R14 -1 [1]
  MOVE R12 R13
  MOVE R13 R4
  MOVE R14 R11
  MOVE R15 R12
  CALL R13 2 0
  JUMP [+1]
  MOVE R12 R2
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K2 ["createElement"]
  GETUPVAL R14 1
  DUPTABLE R15 K27 [{"RowData", "MenuItems", "OnItemClicked", "LayoutOrder", "Icon"}]
  GETTABLEKS R16 R11 K28 ["row"]
  SETTABLEKS R16 R15 K23 ["RowData"]
  SETTABLEKS R12 R15 K24 ["MenuItems"]
  NEWCLOSURE R16 P0
  CAPTURE VAL R3
  CAPTURE VAL R10
  SETTABLEKS R16 R15 K25 ["OnItemClicked"]
  GETTABLEKS R16 R11 K29 ["index"]
  SETTABLEKS R16 R15 K15 ["LayoutOrder"]
  GETTABLEKS R17 R11 K31 ["icon"]
  ORK R16 R17 K30 []
  SETTABLEKS R16 R15 K26 ["Icon"]
  CALL R13 2 1
  SETTABLE R13 R5 R10
  ADDK R6 R6 K32 [1]
  FORGLOOP R7 2 [-47]
  RETURN R5 2

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["layoutRef"]
  RETURN R0 0

PROTO_4:
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Headers"]
  GETTABLEKS R4 R1 K3 ["Data"]
  GETTABLEKS R5 R1 K4 ["MenuItems"]
  GETTABLEKS R6 R1 K5 ["OnItemClicked"]
  GETTABLEKS R7 R1 K6 ["LayoutOrder"]
  GETTABLEKS R8 R1 K7 ["NextPageFunc"]
  JUMPIF R8 [+1]
  DUPCLOSURE R8 K8 [PROTO_4]
  GETTABLEKS R9 R1 K9 ["MenuItemsFilterFunc"]
  GETTABLEKS R10 R1 K10 ["ScrollingFrameNextPageRequestDistance"]
  GETTABLEKS R11 R1 K11 ["HeaderButton"]
  GETTABLEKS R12 R1 K12 ["TableHeight"]
  JUMPIF R12 [+4]
  GETTABLEKS R13 R2 K13 ["table"]
  GETTABLEKS R12 R13 K14 ["height"]
  GETTABLEKS R13 R1 K15 ["ShowTableBackground"]
  MOVE R16 R2
  MOVE R17 R3
  MOVE R18 R11
  NAMECALL R14 R0 K16 ["createHeaderLabels"]
  CALL R14 4 1
  MOVE R17 R4
  MOVE R18 R5
  MOVE R19 R6
  MOVE R20 R9
  NAMECALL R15 R0 K17 ["createDataLabels"]
  CALL R15 5 2
  JUMPIFNOTEQKN R16 K18 [0] [+4]
  GETTABLEKS R17 R1 K19 ["EmptyText"]
  JUMPIF R17 [+1]
  LOADNIL R17
  JUMPIFNOT R13 [+7]
  GETTABLEKS R20 R2 K13 ["table"]
  GETTABLEKS R19 R20 K20 ["item"]
  GETTABLEKS R18 R19 K21 ["background"]
  JUMPIF R18 [+1]
  LOADNIL R18
  GETIMPORT R19 K24 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 1
  GETTABLEKS R26 R2 K13 ["table"]
  GETTABLEKS R25 R26 K25 ["header"]
  GETTABLEKS R24 R25 K14 ["height"]
  MINUS R23 R24
  CALL R19 4 1
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K26 ["createElement"]
  LOADK R21 K27 ["Frame"]
  DUPTABLE R22 K30 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R23 K24 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 0
  MOVE R27 R12
  CALL R23 4 1
  SETTABLEKS R23 R22 K28 ["Size"]
  LOADN R23 1
  SETTABLEKS R23 R22 K29 ["BackgroundTransparency"]
  SETTABLEKS R7 R22 K6 ["LayoutOrder"]
  DUPTABLE R23 K35 [{"ListLayout", "HeaderFrame", "ScrollingContainer", "EmptyTextBox"}]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K26 ["createElement"]
  LOADK R25 K36 ["UIListLayout"]
  DUPTABLE R26 K41 [{"SortOrder", "VerticalAlignment", "FillDirection", "HorizontalAlignment"}]
  GETIMPORT R27 K43 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K37 ["SortOrder"]
  GETIMPORT R27 K45 [Enum.VerticalAlignment.Top]
  SETTABLEKS R27 R26 K38 ["VerticalAlignment"]
  GETIMPORT R27 K47 [Enum.FillDirection.Vertical]
  SETTABLEKS R27 R26 K39 ["FillDirection"]
  GETIMPORT R27 K49 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R27 R26 K40 ["HorizontalAlignment"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K31 ["ListLayout"]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K26 ["createElement"]
  LOADK R25 K27 ["Frame"]
  DUPTABLE R26 K30 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R27 K24 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  GETTABLEKS R33 R2 K13 ["table"]
  GETTABLEKS R32 R33 K25 ["header"]
  GETTABLEKS R31 R32 K14 ["height"]
  CALL R27 4 1
  SETTABLEKS R27 R26 K28 ["Size"]
  LOADN R27 1
  SETTABLEKS R27 R26 K29 ["BackgroundTransparency"]
  LOADN R27 1
  SETTABLEKS R27 R26 K6 ["LayoutOrder"]
  MOVE R27 R14
  CALL R24 3 1
  SETTABLEKS R24 R23 K32 ["HeaderFrame"]
  NOT R24 R17
  JUMPIFNOT R24 [+20]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K26 ["createElement"]
  GETUPVAL R25 1
  DUPTABLE R26 K52 [{"AutomaticCanvasSize", "Size", "NextPageFunc", "NextPageRequestDistance", "LayoutOrder"}]
  GETIMPORT R27 K55 [Enum.AutomaticSize.Y]
  SETTABLEKS R27 R26 K50 ["AutomaticCanvasSize"]
  SETTABLEKS R19 R26 K28 ["Size"]
  SETTABLEKS R8 R26 K7 ["NextPageFunc"]
  SETTABLEKS R10 R26 K51 ["NextPageRequestDistance"]
  LOADN R27 2
  SETTABLEKS R27 R26 K6 ["LayoutOrder"]
  MOVE R27 R15
  CALL R24 3 1
  SETTABLEKS R24 R23 K33 ["ScrollingContainer"]
  MOVE R24 R17
  JUMPIFNOT R24 [+43]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K26 ["createElement"]
  LOADK R25 K56 ["TextLabel"]
  GETUPVAL R28 2
  GETTABLEKS R27 R28 K57 ["Dictionary"]
  GETTABLEKS R26 R27 K58 ["join"]
  GETTABLEKS R28 R2 K59 ["fontStyle"]
  GETTABLEKS R27 R28 K60 ["Smaller"]
  DUPTABLE R28 K66 [{"Size", "LayoutOrder", "Text", "BackgroundTransparency", "BackgroundColor3", "BorderColor3", "TextXAlignment", "TextTruncate"}]
  SETTABLEKS R19 R28 K28 ["Size"]
  LOADN R29 2
  SETTABLEKS R29 R28 K6 ["LayoutOrder"]
  SETTABLEKS R17 R28 K61 ["Text"]
  JUMPIFNOT R13 [+2]
  LOADN R29 0
  JUMP [+1]
  LOADN R29 1
  SETTABLEKS R29 R28 K29 ["BackgroundTransparency"]
  SETTABLEKS R18 R28 K62 ["BackgroundColor3"]
  SETTABLEKS R18 R28 K63 ["BorderColor3"]
  GETIMPORT R29 K68 [Enum.TextXAlignment.Center]
  SETTABLEKS R29 R28 K64 ["TextXAlignment"]
  GETIMPORT R29 K70 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R29 R28 K65 ["TextTruncate"]
  CALL R26 2 1
  NEWTABLE R27 0 0
  CALL R24 3 1
  SETTABLEKS R24 R23 K34 ["EmptyTextBox"]
  CALL R20 3 -1
  RETURN R20 -1

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
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["UI"]
  GETTABLEKS R5 R4 K10 ["ScrollingFrame"]
  GETTABLEKS R6 R3 K11 ["ContextServices"]
  GETTABLEKS R7 R6 K12 ["withContext"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K14 ["Components"]
  GETTABLEKS R9 R10 K15 ["TableWithMenuItem"]
  CALL R8 1 1
  GETTABLEKS R9 R1 K16 ["PureComponent"]
  LOADK R11 K17 ["TableWithMenu"]
  NAMECALL R9 R9 K18 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K19 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K20 ["createHeaderLabels"]
  DUPCLOSURE R10 K21 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K22 ["createDataLabels"]
  DUPCLOSURE R10 K23 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K24 ["init"]
  DUPCLOSURE R10 K25 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K26 ["render"]
  MOVE R10 R7
  DUPTABLE R11 K28 [{"Stylizer"}]
  GETTABLEKS R12 R6 K27 ["Stylizer"]
  SETTABLEKS R12 R11 K27 ["Stylizer"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  RETURN R9 1
