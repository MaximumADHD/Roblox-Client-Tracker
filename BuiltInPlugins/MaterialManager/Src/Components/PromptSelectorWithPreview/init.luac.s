PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showingExpandedPreview"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["showingExpandedPreview"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showingExpandedPreview"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["showingExpandedPreview"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R1 K1 [{"showingExpandedPreview"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["showingExpandedPreview"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["openExpandedPreview"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["closeExpandedPreview"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R0 K2 ["state"]
  GETTABLEKS R5 R1 K3 ["Stylizer"]
  GETTABLEKS R4 R5 K4 ["PromptSelectorWithPreview"]
  GETTABLEKS R6 R1 K6 ["SelectionName"]
  ORK R5 R6 K5 [""]
  GETTABLEKS R7 R1 K7 ["PreviewTitle"]
  ORK R6 R7 K5 [""]
  GETTABLEKS R7 R1 K8 ["ColumnWidth"]
  JUMPIF R7 [+2]
  GETTABLEKS R7 R4 K8 ["ColumnWidth"]
  SUBK R10 R7 K11 [60]
  DIVK R9 R10 K10 [2]
  SUBK R8 R9 K9 [5]
  SUBK R11 R7 K11 [60]
  DIVK R10 R11 K10 [2]
  ADDK R9 R10 K9 [5]
  GETTABLEKS R12 R4 K12 ["LabelColumnWidth"]
  GETTABLEKS R11 R12 K13 ["Offset"]
  ADD R10 R7 R11
  GETTABLEKS R11 R4 K14 ["PreviewSize"]
  GETTABLEKS R12 R1 K15 ["LabelWidth"]
  GETTABLEKS R13 R4 K16 ["ButtonHeight"]
  GETTABLEKS R14 R3 K17 ["showingExpandedPreview"]
  LOADNIL R15
  JUMPIFNOT R14 [+6]
  NEWTABLE R16 0 1
  MOVE R17 R5
  SETLIST R16 R17 1 [1]
  MOVE R15 R16
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K18 ["createElement"]
  LOADK R17 K19 ["Frame"]
  DUPTABLE R18 K22 [{"BackgroundTransparency", "Size"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K20 ["BackgroundTransparency"]
  GETIMPORT R19 K25 [UDim2.new]
  LOADN R20 0
  MOVE R21 R10
  LOADN R22 0
  GETTABLEKS R24 R4 K26 ["PaddingVertical"]
  ADD R23 R11 R24
  CALL R19 4 1
  SETTABLEKS R19 R18 K21 ["Size"]
  DUPTABLE R19 K29 [{"UIListLayout", "TwoColumn"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K18 ["createElement"]
  LOADK R21 K27 ["UIListLayout"]
  DUPTABLE R22 K32 [{"SortOrder", "Padding"}]
  GETIMPORT R23 K35 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K30 ["SortOrder"]
  GETIMPORT R23 K37 [UDim.new]
  LOADN R24 0
  GETTABLEKS R25 R4 K26 ["PaddingVertical"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K31 ["Padding"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K27 ["UIListLayout"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K18 ["createElement"]
  GETUPVAL R21 1
  DUPTABLE R22 K41 [{"HorizontalAlignment", "Layout", "Size", "Spacing"}]
  GETIMPORT R23 K43 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R23 R22 K38 ["HorizontalAlignment"]
  GETIMPORT R23 K46 [Enum.FillDirection.Horizontal]
  SETTABLEKS R23 R22 K39 ["Layout"]
  GETIMPORT R23 K25 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 0
  MOVE R27 R11
  CALL R23 4 1
  SETTABLEKS R23 R22 K21 ["Size"]
  GETTABLEKS R23 R4 K47 ["PaddingHorizontal"]
  SETTABLEKS R23 R22 K40 ["Spacing"]
  DUPTABLE R23 K50 [{"PreviewColumn", "ImportColumn"}]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K18 ["createElement"]
  GETUPVAL R25 1
  DUPTABLE R26 K51 [{"LayoutOrder", "Size"}]
  LOADN R27 1
  SETTABLEKS R27 R26 K34 ["LayoutOrder"]
  GETIMPORT R27 K25 [UDim2.new]
  MOVE R28 R12
  GETIMPORT R29 K37 [UDim.new]
  LOADN R30 1
  LOADN R31 0
  CALL R29 2 -1
  CALL R27 -1 1
  SETTABLEKS R27 R26 K21 ["Size"]
  DUPTABLE R27 K54 [{"PreviewImage", "ExpandedPreview"}]
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K18 ["createElement"]
  GETUPVAL R29 2
  DUPTABLE R30 K59 [{"ImageId", "IsTempId", "ClearSelection", "OpenExpandedPreview"}]
  GETTABLEKS R31 R1 K55 ["ImageId"]
  SETTABLEKS R31 R30 K55 ["ImageId"]
  GETTABLEKS R31 R1 K56 ["IsTempId"]
  SETTABLEKS R31 R30 K56 ["IsTempId"]
  GETTABLEKS R31 R1 K57 ["ClearSelection"]
  SETTABLEKS R31 R30 K57 ["ClearSelection"]
  GETTABLEKS R31 R0 K60 ["openExpandedPreview"]
  SETTABLEKS R31 R30 K58 ["OpenExpandedPreview"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K52 ["PreviewImage"]
  MOVE R28 R14
  JUMPIFNOT R28 [+22]
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K18 ["createElement"]
  GETUPVAL R29 3
  DUPTABLE R30 K63 [{"PreviewTitle", "ImageId", "IsTempId", "Metadata", "OnClose"}]
  SETTABLEKS R6 R30 K7 ["PreviewTitle"]
  GETTABLEKS R31 R1 K55 ["ImageId"]
  SETTABLEKS R31 R30 K55 ["ImageId"]
  GETTABLEKS R31 R1 K56 ["IsTempId"]
  SETTABLEKS R31 R30 K56 ["IsTempId"]
  SETTABLEKS R15 R30 K61 ["Metadata"]
  GETTABLEKS R31 R0 K64 ["closeExpandedPreview"]
  SETTABLEKS R31 R30 K62 ["OnClose"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K53 ["ExpandedPreview"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K48 ["PreviewColumn"]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K18 ["createElement"]
  GETUPVAL R25 1
  DUPTABLE R26 K67 [{"Size", "Style", "Spacing", "VerticalAlignment", "Layout", "LayoutOrder"}]
  GETIMPORT R27 K25 [UDim2.new]
  LOADN R28 0
  MOVE R29 R7
  LOADN R30 1
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K21 ["Size"]
  LOADK R27 K68 ["RoundBox"]
  SETTABLEKS R27 R26 K65 ["Style"]
  LOADN R27 10
  SETTABLEKS R27 R26 K40 ["Spacing"]
  GETIMPORT R27 K70 [Enum.VerticalAlignment.Top]
  SETTABLEKS R27 R26 K66 ["VerticalAlignment"]
  GETIMPORT R27 K72 [Enum.FillDirection.Vertical]
  SETTABLEKS R27 R26 K39 ["Layout"]
  LOADN R27 2
  SETTABLEKS R27 R26 K34 ["LayoutOrder"]
  DUPTABLE R27 K75 [{"UrlImport", "IconImport"}]
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K18 ["createElement"]
  GETUPVAL R29 4
  DUPTABLE R30 K79 [{"PlaceholderText", "Text", "Size", "OnFocusLost", "Style"}]
  LOADK R33 K80 ["CreateDialog"]
  LOADK R34 K81 ["InsertAssetURL"]
  NAMECALL R31 R2 K82 ["getText"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K76 ["PlaceholderText"]
  GETTABLEKS R31 R1 K83 ["SearchUrl"]
  SETTABLEKS R31 R30 K77 ["Text"]
  GETIMPORT R31 K25 [UDim2.new]
  LOADN R32 1
  LOADN R33 0
  LOADN R34 0
  MOVE R35 R13
  CALL R31 4 1
  SETTABLEKS R31 R30 K21 ["Size"]
  GETTABLEKS R31 R1 K78 ["OnFocusLost"]
  SETTABLEKS R31 R30 K78 ["OnFocusLost"]
  LOADK R31 K84 ["FilledRoundedBorder"]
  SETTABLEKS R31 R30 K65 ["Style"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K73 ["UrlImport"]
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K18 ["createElement"]
  GETUPVAL R29 5
  DUPTABLE R30 K90 [{"Size", "Text", "TextXAlignment", "LeftIcon", "IconColor", "BackgroundColor", "OnClick", "Padding"}]
  GETIMPORT R31 K25 [UDim2.new]
  LOADN R32 1
  LOADN R33 0
  LOADN R34 0
  MOVE R35 R13
  CALL R31 4 1
  SETTABLEKS R31 R30 K21 ["Size"]
  LOADK R33 K80 ["CreateDialog"]
  LOADK R34 K91 ["Import"]
  NAMECALL R31 R2 K82 ["getText"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K77 ["Text"]
  GETIMPORT R31 K92 [Enum.TextXAlignment.Left]
  SETTABLEKS R31 R30 K85 ["TextXAlignment"]
  GETTABLEKS R31 R4 K93 ["ImportIcon"]
  SETTABLEKS R31 R30 K86 ["LeftIcon"]
  GETTABLEKS R31 R4 K94 ["ImportIconColor"]
  SETTABLEKS R31 R30 K87 ["IconColor"]
  GETTABLEKS R31 R4 K95 ["ButtonColor"]
  SETTABLEKS R31 R30 K88 ["BackgroundColor"]
  GETTABLEKS R31 R1 K96 ["PromptSelection"]
  SETTABLEKS R31 R30 K89 ["OnClick"]
  DUPTABLE R31 K98 [{"Left", "Right"}]
  SETTABLEKS R8 R31 K42 ["Left"]
  SETTABLEKS R9 R31 K97 ["Right"]
  SETTABLEKS R31 R30 K31 ["Padding"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K74 ["IconImport"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K49 ["ImportColumn"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K28 ["TwoColumn"]
  CALL R16 3 -1
  RETURN R16 -1

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
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["Localization"]
  GETTABLEKS R5 R3 K10 ["withContext"]
  GETTABLEKS R7 R2 K11 ["Style"]
  GETTABLEKS R6 R7 K12 ["Stylizer"]
  GETTABLEKS R7 R2 K13 ["UI"]
  GETTABLEKS R8 R7 K14 ["Pane"]
  GETTABLEKS R9 R7 K15 ["IconButton"]
  GETTABLEKS R10 R7 K16 ["DEPRECATED_TextInput"]
  GETTABLEKS R12 R0 K17 ["Src"]
  GETTABLEKS R11 R12 K18 ["Components"]
  GETIMPORT R12 K4 [require]
  GETTABLEKS R14 R11 K19 ["PromptSelectorWithPreview"]
  GETTABLEKS R13 R14 K20 ["PreviewDialog"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R15 R11 K19 ["PromptSelectorWithPreview"]
  GETTABLEKS R14 R15 K21 ["PreviewImage"]
  CALL R13 1 1
  GETTABLEKS R14 R1 K22 ["PureComponent"]
  LOADK R16 K19 ["PromptSelectorWithPreview"]
  NAMECALL R14 R14 K23 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K24 [PROTO_2]
  SETTABLEKS R15 R14 K25 ["init"]
  DUPCLOSURE R15 K26 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R9
  SETTABLEKS R15 R14 K27 ["render"]
  MOVE R15 R5
  DUPTABLE R16 K28 [{"Stylizer", "Localization"}]
  SETTABLEKS R6 R16 K12 ["Stylizer"]
  SETTABLEKS R4 R16 K9 ["Localization"]
  CALL R15 1 1
  MOVE R16 R14
  CALL R15 1 1
  MOVE R14 R15
  RETURN R14 1
