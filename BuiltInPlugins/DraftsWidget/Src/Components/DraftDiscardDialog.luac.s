PROTO_0:
  NEWTABLE R3 0 0
  NAMECALL R1 R0 K0 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["Name"]
  RETURN R1 1

PROTO_2:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["Stylizer"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["Drafts"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["ChoiceSelected"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K8 [{"TextTruncate", "Items"}]
  GETIMPORT R8 K11 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R8 R7 K6 ["TextTruncate"]
  GETUPVAL R8 2
  MOVE R9 R3
  DUPCLOSURE R10 K12 [PROTO_1]
  CALL R8 2 1
  SETTABLEKS R8 R7 K7 ["Items"]
  CALL R5 2 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K20 [{"Title", "Modal", "Buttons", "ButtonHorizontalAlignment", "OnButtonPressed", "OnClose", "MinContentSize"}]
  LOADK R11 K21 ["DiscardDialog"]
  LOADK R12 K13 ["Title"]
  NAMECALL R9 R1 K22 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K13 ["Title"]
  LOADB R9 1
  SETTABLEKS R9 R8 K14 ["Modal"]
  NEWTABLE R9 0 2
  DUPTABLE R10 K26 [{"Key", "Text", "Style"}]
  LOADB R11 1
  SETTABLEKS R11 R10 K23 ["Key"]
  LOADK R13 K27 ["Dialog"]
  LOADK R14 K28 ["Yes"]
  NAMECALL R11 R1 K22 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K24 ["Text"]
  LOADK R11 K29 ["RoundLargeText"]
  SETTABLEKS R11 R10 K25 ["Style"]
  DUPTABLE R11 K26 [{"Key", "Text", "Style"}]
  LOADB R12 0
  SETTABLEKS R12 R11 K23 ["Key"]
  LOADK R14 K27 ["Dialog"]
  LOADK R15 K30 ["No"]
  NAMECALL R12 R1 K22 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K24 ["Text"]
  LOADK R12 K31 ["RoundLargeTextPrimary"]
  SETTABLEKS R12 R11 K25 ["Style"]
  SETLIST R9 R10 2 [1]
  SETTABLEKS R9 R8 K15 ["Buttons"]
  GETIMPORT R9 K34 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R9 R8 K16 ["ButtonHorizontalAlignment"]
  SETTABLEKS R4 R8 K17 ["OnButtonPressed"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R4
  SETTABLEKS R9 R8 K18 ["OnClose"]
  GETUPVAL R9 4
  SETTABLEKS R9 R8 K19 ["MinContentSize"]
  DUPTABLE R9 K39 [{"Layout", "Padding", "Header", "DraftList"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["createElement"]
  LOADK R11 K40 ["UIListLayout"]
  DUPTABLE R12 K44 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R13 K46 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K41 ["SortOrder"]
  GETIMPORT R13 K48 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K42 ["FillDirection"]
  GETUPVAL R13 5
  SETTABLEKS R13 R12 K36 ["Padding"]
  GETIMPORT R13 K34 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R13 R12 K32 ["HorizontalAlignment"]
  GETIMPORT R13 K49 [Enum.VerticalAlignment.Center]
  SETTABLEKS R13 R12 K43 ["VerticalAlignment"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K35 ["Layout"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["createElement"]
  LOADK R11 K50 ["UIPadding"]
  GETUPVAL R12 6
  CALL R10 2 1
  SETTABLEKS R10 R9 K36 ["Padding"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R11 7
  DUPTABLE R12 K58 [{"LayoutOrder", "AutomaticSize", "TextXAlignment", "TextYAlignment", "TextWrapped", "Text", "TextSize", "Font", "TextColor"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K45 ["LayoutOrder"]
  GETIMPORT R13 K60 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K51 ["AutomaticSize"]
  GETIMPORT R13 K61 [Enum.TextXAlignment.Center]
  SETTABLEKS R13 R12 K52 ["TextXAlignment"]
  GETIMPORT R13 K63 [Enum.TextYAlignment.Top]
  SETTABLEKS R13 R12 K53 ["TextYAlignment"]
  LOADB R13 1
  SETTABLEKS R13 R12 K54 ["TextWrapped"]
  LOADK R15 K21 ["DiscardDialog"]
  LOADK R16 K64 ["ConfirmQuestion"]
  NAMECALL R13 R1 K22 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K24 ["Text"]
  LOADN R13 22
  SETTABLEKS R13 R12 K55 ["TextSize"]
  GETTABLEKS R14 R2 K65 ["dialogUILibrary"]
  GETTABLEKS R13 R14 K66 ["HeaderFont"]
  SETTABLEKS R13 R12 K56 ["Font"]
  GETTABLEKS R14 R2 K65 ["dialogUILibrary"]
  GETTABLEKS R13 R14 K67 ["HeaderTextColor"]
  SETTABLEKS R13 R12 K57 ["TextColor"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K37 ["Header"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R11 8
  DUPTABLE R12 K69 [{"AutomaticCanvasSize", "LayoutOrder"}]
  GETIMPORT R13 K71 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K68 ["AutomaticCanvasSize"]
  LOADN R13 2
  SETTABLEKS R13 R12 K45 ["LayoutOrder"]
  DUPTABLE R13 K73 [{"Bullets"}]
  SETTABLEKS R5 R13 K72 ["Bullets"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K38 ["DraftList"]
  CALL R6 3 -1
  RETURN R6 -1

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
  GETTABLEKS R3 R2 K8 ["UI"]
  GETTABLEKS R4 R3 K9 ["BulletList"]
  GETTABLEKS R5 R2 K10 ["Dash"]
  GETTABLEKS R6 R5 K11 ["map"]
  GETTABLEKS R7 R2 K12 ["ContextServices"]
  GETTABLEKS R8 R7 K13 ["withContext"]
  GETTABLEKS R9 R3 K14 ["StyledDialog"]
  GETTABLEKS R10 R3 K15 ["ScrollingFrame"]
  GETTABLEKS R11 R3 K16 ["TextLabel"]
  GETIMPORT R12 K19 [Vector2.new]
  LOADN R13 174
  LOADN R14 200
  CALL R12 2 1
  GETIMPORT R13 K21 [UDim.new]
  LOADN R14 0
  LOADN R15 32
  CALL R13 2 1
  DUPTABLE R14 K26 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R15 K21 [UDim.new]
  LOADN R16 0
  LOADN R17 16
  CALL R15 2 1
  SETTABLEKS R15 R14 K22 ["PaddingLeft"]
  GETIMPORT R15 K21 [UDim.new]
  LOADN R16 0
  LOADN R17 16
  CALL R15 2 1
  SETTABLEKS R15 R14 K23 ["PaddingRight"]
  GETIMPORT R15 K21 [UDim.new]
  LOADN R16 0
  LOADN R17 48
  CALL R15 2 1
  SETTABLEKS R15 R14 K24 ["PaddingTop"]
  GETIMPORT R15 K21 [UDim.new]
  LOADN R16 0
  LOADN R17 48
  CALL R15 2 1
  SETTABLEKS R15 R14 K25 ["PaddingBottom"]
  GETTABLEKS R15 R1 K27 ["PureComponent"]
  LOADK R17 K28 ["DraftDiscardDialog"]
  NAMECALL R15 R15 K29 ["extend"]
  CALL R15 2 1
  DUPCLOSURE R16 K30 [PROTO_0]
  SETTABLEKS R16 R15 K31 ["init"]
  DUPCLOSURE R16 K32 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R11
  CAPTURE VAL R10
  SETTABLEKS R16 R15 K33 ["render"]
  MOVE R16 R8
  DUPTABLE R17 K36 [{"Localization", "Stylizer"}]
  GETTABLEKS R18 R7 K34 ["Localization"]
  SETTABLEKS R18 R17 K34 ["Localization"]
  GETTABLEKS R18 R7 K35 ["Stylizer"]
  SETTABLEKS R18 R17 K35 ["Stylizer"]
  CALL R16 1 1
  MOVE R17 R15
  CALL R16 1 1
  MOVE R15 R16
  RETURN R15 1
