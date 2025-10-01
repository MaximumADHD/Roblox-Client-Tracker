PROTO_0:
  DUPTABLE R1 K1 [{"uploadErrorsExpanded"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K0 ["uploadErrorsExpanded"]
  SETTABLEKS R1 R0 K2 ["state"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["uploadErrorsExpanded"]
  GETUPVAL R1 0
  DUPTABLE R3 K2 [{"uploadErrorsExpanded"}]
  GETUPVAL R4 1
  MOVE R5 R0
  NEWTABLE R6 1 0
  GETUPVAL R7 2
  GETUPVAL R10 2
  GETTABLE R9 R0 R10
  NOT R8 R9
  SETTABLE R8 R6 R7
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["uploadErrorsExpanded"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R4 R2 K2 ["ErrorWidget"]
  GETTABLEKS R3 R4 K3 ["Dropdown"]
  GETTABLEKS R4 R2 K4 ["UploadWidget"]
  NEWTABLE R5 0 0
  LOADN R6 1
  GETIMPORT R7 K6 [pairs]
  GETTABLEKS R8 R1 K7 ["ErrorMap"]
  CALL R7 1 3
  FORGPREP_NEXT R7
  MOVE R12 R6
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K8 ["createElement"]
  GETUPVAL R14 1
  DUPTABLE R15 K17 [{"Expanded", "OnExpandedChanged", "LayoutOrder", "Layout", "AutomaticSize", "VerticalAlignment", "Style", "Text"}]
  GETTABLEKS R18 R0 K18 ["state"]
  GETTABLEKS R17 R18 K19 ["uploadErrorsExpanded"]
  GETTABLE R16 R17 R12
  SETTABLEKS R16 R15 K9 ["Expanded"]
  NEWCLOSURE R16 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R12
  SETTABLEKS R16 R15 K10 ["OnExpandedChanged"]
  SETTABLEKS R6 R15 K11 ["LayoutOrder"]
  GETIMPORT R16 K23 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K12 ["Layout"]
  GETIMPORT R16 K25 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K13 ["AutomaticSize"]
  GETIMPORT R16 K27 [Enum.VerticalAlignment.Top]
  SETTABLEKS R16 R15 K14 ["VerticalAlignment"]
  SETTABLEKS R3 R15 K15 ["Style"]
  SETTABLEKS R10 R15 K16 ["Text"]
  DUPTABLE R16 K29 [{"ErrorDetails"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K8 ["createElement"]
  GETUPVAL R18 3
  DUPTABLE R19 K34 [{"Text", "TextWrapped", "TextSelectable", "AutomaticSize", "TextXAlignment", "TextSize", "Style"}]
  GETUPVAL R20 4
  MOVE R21 R11
  GETTABLEKS R22 R1 K35 ["Localization"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K16 ["Text"]
  LOADB R20 1
  SETTABLEKS R20 R19 K30 ["TextWrapped"]
  LOADB R20 1
  SETTABLEKS R20 R19 K31 ["TextSelectable"]
  GETIMPORT R20 K37 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K13 ["AutomaticSize"]
  GETIMPORT R20 K39 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K32 ["TextXAlignment"]
  GETTABLEKS R20 R4 K40 ["SubtextSize"]
  SETTABLEKS R20 R19 K33 ["TextSize"]
  LOADK R20 K41 ["Error"]
  SETTABLEKS R20 R19 K15 ["Style"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K28 ["ErrorDetails"]
  CALL R13 3 1
  SETTABLE R13 R5 R10
  ADDK R6 R6 K42 [1]
  FORGLOOP R7 2 [-78]
  RETURN R5 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R3 K3 ["UploadWidget"]
  GETTABLEKS R7 R4 K5 ["TextSize"]
  GETTABLEKS R8 R4 K6 ["SubtextSize"]
  ADD R6 R7 R8
  ADDK R5 R6 K4 [10]
  GETIMPORT R7 K8 [next]
  GETTABLEKS R8 R1 K9 ["ErrorMap"]
  CALL R7 1 1
  JUMPIFNOTEQKNIL R7 [+7]
  LOADK R8 K10 ["Upload"]
  LOADK R9 K11 ["FailureDescriptionNoError"]
  NAMECALL R6 R2 K12 ["getText"]
  CALL R6 3 1
  JUMP [+5]
  LOADK R8 K10 ["Upload"]
  LOADK R9 K13 ["FailureDescription"]
  NAMECALL R6 R2 K12 ["getText"]
  CALL R6 3 1
  NAMECALL R7 R0 K14 ["_getErrorSections"]
  CALL R7 1 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K15 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K22 [{"LayoutOrder", "Layout", "VerticalAlignment", "HorizontalAlignment", "Size", "Padding"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K16 ["LayoutOrder"]
  GETIMPORT R11 K26 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K17 ["Layout"]
  GETIMPORT R11 K28 [Enum.VerticalAlignment.Top]
  SETTABLEKS R11 R10 K18 ["VerticalAlignment"]
  GETIMPORT R11 K30 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R11 R10 K19 ["HorizontalAlignment"]
  GETIMPORT R11 K33 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K20 ["Size"]
  GETTABLEKS R12 R4 K34 ["FailureWidget"]
  GETTABLEKS R11 R12 K21 ["Padding"]
  SETTABLEKS R11 R10 K21 ["Padding"]
  DUPTABLE R11 K37 [{"Title", "Messages"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K15 ["createElement"]
  GETUPVAL R13 1
  DUPTABLE R14 K39 [{"Layout", "VerticalAlignment", "HorizontalAlignment", "AutomaticSize", "LayoutOrder"}]
  GETIMPORT R15 K26 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K17 ["Layout"]
  GETIMPORT R15 K28 [Enum.VerticalAlignment.Top]
  SETTABLEKS R15 R14 K18 ["VerticalAlignment"]
  GETIMPORT R15 K30 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R15 R14 K19 ["HorizontalAlignment"]
  GETIMPORT R15 K41 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K38 ["AutomaticSize"]
  LOADN R15 1
  SETTABLEKS R15 R14 K16 ["LayoutOrder"]
  DUPTABLE R15 K44 [{"Text", "Description"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K15 ["createElement"]
  GETUPVAL R17 2
  DUPTABLE R18 K47 [{"LayoutOrder", "Size", "Text", "TextSize", "TextXAlignment", "TextColor"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K16 ["LayoutOrder"]
  GETTABLEKS R19 R4 K48 ["TextLabelSize"]
  SETTABLEKS R19 R18 K20 ["Size"]
  LOADK R21 K10 ["Upload"]
  LOADK R22 K49 ["Failure"]
  NAMECALL R19 R2 K12 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K42 ["Text"]
  GETTABLEKS R19 R4 K5 ["TextSize"]
  SETTABLEKS R19 R18 K5 ["TextSize"]
  GETTABLEKS R19 R4 K50 ["TextAlignment"]
  SETTABLEKS R19 R18 K45 ["TextXAlignment"]
  GETTABLEKS R19 R4 K51 ["FailureColor"]
  SETTABLEKS R19 R18 K46 ["TextColor"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K42 ["Text"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K15 ["createElement"]
  GETUPVAL R17 2
  DUPTABLE R18 K53 [{"LayoutOrder", "Size", "Text", "TextSize", "TextXAlignment", "Font"}]
  LOADN R19 2
  SETTABLEKS R19 R18 K16 ["LayoutOrder"]
  GETTABLEKS R19 R4 K48 ["TextLabelSize"]
  SETTABLEKS R19 R18 K20 ["Size"]
  SETTABLEKS R6 R18 K42 ["Text"]
  GETTABLEKS R19 R4 K6 ["SubtextSize"]
  SETTABLEKS R19 R18 K5 ["TextSize"]
  GETTABLEKS R19 R4 K50 ["TextAlignment"]
  SETTABLEKS R19 R18 K45 ["TextXAlignment"]
  GETTABLEKS R19 R4 K54 ["BoldFont"]
  SETTABLEKS R19 R18 K52 ["Font"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K43 ["Description"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K35 ["Title"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K15 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K58 [{"LayoutOrder", "Size", "CanvasSize", "ScrollingDirection", "AutomaticCanvasSize", "Layout"}]
  LOADN R15 2
  SETTABLEKS R15 R14 K16 ["LayoutOrder"]
  GETIMPORT R15 K33 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 1
  MINUS R19 R5
  CALL R15 4 1
  SETTABLEKS R15 R14 K20 ["Size"]
  GETIMPORT R15 K33 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K55 ["CanvasSize"]
  GETIMPORT R15 K59 [Enum.ScrollingDirection.Y]
  SETTABLEKS R15 R14 K56 ["ScrollingDirection"]
  GETIMPORT R15 K41 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K57 ["AutomaticCanvasSize"]
  GETIMPORT R15 K26 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K17 ["Layout"]
  MOVE R15 R7
  CALL R12 3 1
  SETTABLEKS R12 R11 K36 ["Messages"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactCompat"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Dash"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["join"]
  GETTABLEKS R5 R1 K11 ["ContextServices"]
  GETTABLEKS R7 R1 K12 ["Style"]
  GETTABLEKS R6 R7 K13 ["Stylizer"]
  GETTABLEKS R7 R5 K14 ["withContext"]
  GETTABLEKS R8 R5 K15 ["Localization"]
  GETTABLEKS R9 R1 K16 ["UI"]
  GETTABLEKS R10 R9 K17 ["Pane"]
  GETTABLEKS R11 R9 K18 ["ScrollingFrame"]
  GETTABLEKS R12 R9 K19 ["TextLabel"]
  GETTABLEKS R13 R9 K20 ["ExpandablePane"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K21 ["Src"]
  GETTABLEKS R16 R17 K22 ["Utility"]
  GETTABLEKS R15 R16 K23 ["parseErrorTable"]
  CALL R14 1 1
  GETTABLEKS R15 R2 K24 ["PureComponent"]
  LOADK R17 K25 ["FailureWidget"]
  NAMECALL R15 R15 K26 ["extend"]
  CALL R15 2 1
  DUPCLOSURE R16 K27 [PROTO_0]
  SETTABLEKS R16 R15 K28 ["init"]
  DUPCLOSURE R16 K29 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R14
  SETTABLEKS R16 R15 K30 ["_getErrorSections"]
  DUPCLOSURE R16 K31 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R11
  SETTABLEKS R16 R15 K32 ["render"]
  MOVE R16 R7
  DUPTABLE R17 K33 [{"Localization", "Stylizer"}]
  SETTABLEKS R8 R17 K15 ["Localization"]
  SETTABLEKS R6 R17 K13 ["Stylizer"]
  CALL R16 1 1
  MOVE R17 R15
  CALL R16 1 1
  MOVE R15 R16
  RETURN R15 1
