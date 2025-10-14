PROTO_0:
  GETUPVAL R0 0
  NEWTABLE R2 0 0
  NAMECALL R0 R0 K0 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["DraggerContext"]
  GETTABLEKS R1 R2 K2 ["LocaleChangedSignal"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K3 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["localeChangedConnection"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["UIPadding"]
  DUPTABLE R3 K6 [{"PaddingBottom", "PaddingRight", "PaddingLeft", "PaddingTop"}]
  GETIMPORT R4 K9 [UDim.new]
  LOADN R5 0
  GETTABLEKS R6 R0 K10 ["Padding"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["PaddingBottom"]
  GETIMPORT R4 K9 [UDim.new]
  LOADN R5 0
  GETTABLEKS R6 R0 K10 ["Padding"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["PaddingRight"]
  GETIMPORT R4 K9 [UDim.new]
  LOADN R5 0
  GETTABLEKS R6 R0 K10 ["Padding"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["PaddingLeft"]
  GETIMPORT R4 K9 [UDim.new]
  LOADN R5 0
  GETTABLEKS R6 R0 K10 ["Padding"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K5 ["PaddingTop"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["InView"]
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETTABLEKS R2 R1 K2 ["DraggerContext"]
  NAMECALL R2 R2 K3 ["getViewportSize"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K2 ["DraggerContext"]
  GETIMPORT R5 K7 [Enum.StudioStyleGuideColor.Tooltip]
  NAMECALL R3 R3 K8 ["getThemeColor"]
  CALL R3 2 1
  GETTABLEKS R4 R1 K2 ["DraggerContext"]
  GETIMPORT R6 K10 [Enum.StudioStyleGuideColor.Border]
  NAMECALL R4 R4 K8 ["getThemeColor"]
  CALL R4 2 1
  GETTABLEKS R5 R1 K2 ["DraggerContext"]
  GETIMPORT R7 K12 [Enum.StudioStyleGuideColor.MainText]
  NAMECALL R5 R5 K8 ["getThemeColor"]
  CALL R5 2 1
  GETTABLEKS R6 R1 K2 ["DraggerContext"]
  GETIMPORT R8 K14 [Enum.StudioStyleGuideColor.DimmedText]
  NAMECALL R6 R6 K8 ["getThemeColor"]
  CALL R6 2 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K15 ["createElement"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K16 ["Portal"]
  DUPTABLE R9 K18 [{"target"}]
  GETTABLEKS R10 R1 K2 ["DraggerContext"]
  NAMECALL R10 R10 K19 ["getGuiParent"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K17 ["target"]
  DUPTABLE R10 K21 [{"SummonHandlesNoteGui"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K15 ["createElement"]
  LOADK R12 K22 ["ScreenGui"]
  NEWTABLE R13 0 0
  DUPTABLE R14 K24 [{"Frame"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K15 ["createElement"]
  LOADK R16 K23 ["Frame"]
  DUPTABLE R17 K30 [{"AnchorPoint", "AutomaticSize", "BackgroundColor3", "BorderColor3", "Position"}]
  GETIMPORT R18 K33 [Vector2.new]
  LOADK R19 K34 [0.5]
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K25 ["AnchorPoint"]
  GETIMPORT R18 K36 [Enum.AutomaticSize.XY]
  SETTABLEKS R18 R17 K26 ["AutomaticSize"]
  SETTABLEKS R3 R17 K27 ["BackgroundColor3"]
  SETTABLEKS R4 R17 K28 ["BorderColor3"]
  GETIMPORT R18 K38 [UDim2.new]
  LOADN R19 0
  GETTABLEKS R21 R2 K40 ["X"]
  DIVK R20 R21 K39 [2]
  LOADN R21 0
  LOADN R22 2
  CALL R18 4 1
  SETTABLEKS R18 R17 K29 ["Position"]
  DUPTABLE R18 K45 [{"Padding", "Layout", "Tab", "Text"}]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K15 ["createElement"]
  GETGLOBAL R20 K46 ["SimplePadding"]
  DUPTABLE R21 K47 [{"Padding"}]
  LOADN R22 3
  SETTABLEKS R22 R21 K41 ["Padding"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K41 ["Padding"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K15 ["createElement"]
  LOADK R20 K48 ["UIListLayout"]
  DUPTABLE R21 K51 [{"FillDirection", "SortOrder", "Padding"}]
  GETIMPORT R22 K53 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K49 ["FillDirection"]
  GETIMPORT R22 K55 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K50 ["SortOrder"]
  GETIMPORT R22 K57 [UDim.new]
  LOADN R23 0
  LOADN R24 3
  CALL R22 2 1
  SETTABLEKS R22 R21 K41 ["Padding"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K42 ["Layout"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K15 ["createElement"]
  LOADK R20 K58 ["TextLabel"]
  DUPTABLE R21 K60 [{"Text", "TextColor3", "BackgroundColor3", "AutomaticSize", "LayoutOrder"}]
  GETTABLEKS R22 R1 K2 ["DraggerContext"]
  LOADK R24 K61 ["SummonPivot"]
  LOADK R25 K62 ["TabText"]
  NAMECALL R22 R22 K63 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K44 ["Text"]
  SETTABLEKS R5 R21 K59 ["TextColor3"]
  SETTABLEKS R6 R21 K27 ["BackgroundColor3"]
  GETIMPORT R22 K36 [Enum.AutomaticSize.XY]
  SETTABLEKS R22 R21 K26 ["AutomaticSize"]
  LOADN R22 1
  SETTABLEKS R22 R21 K54 ["LayoutOrder"]
  DUPTABLE R22 K65 [{"Padding", "Corner"}]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K15 ["createElement"]
  GETGLOBAL R24 K46 ["SimplePadding"]
  DUPTABLE R25 K47 [{"Padding"}]
  LOADN R26 2
  SETTABLEKS R26 R25 K41 ["Padding"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K41 ["Padding"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K15 ["createElement"]
  LOADK R24 K66 ["UICorner"]
  DUPTABLE R25 K68 [{"CornerRadius"}]
  GETIMPORT R26 K57 [UDim.new]
  LOADN R27 0
  LOADN R28 4
  CALL R26 2 1
  SETTABLEKS R26 R25 K67 ["CornerRadius"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K64 ["Corner"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K43 ["Tab"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K15 ["createElement"]
  LOADK R20 K58 ["TextLabel"]
  DUPTABLE R21 K70 [{"Text", "TextColor3", "AutomaticSize", "BackgroundTransparency", "LayoutOrder"}]
  GETTABLEKS R22 R1 K2 ["DraggerContext"]
  LOADK R24 K61 ["SummonPivot"]
  LOADK R25 K71 ["SummonText"]
  NAMECALL R22 R22 K63 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K44 ["Text"]
  SETTABLEKS R5 R21 K59 ["TextColor3"]
  GETIMPORT R22 K36 [Enum.AutomaticSize.XY]
  SETTABLEKS R22 R21 K26 ["AutomaticSize"]
  LOADN R22 1
  SETTABLEKS R22 R21 K69 ["BackgroundTransparency"]
  LOADN R22 2
  SETTABLEKS R22 R21 K54 ["LayoutOrder"]
  DUPTABLE R22 K47 [{"Padding"}]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K15 ["createElement"]
  GETGLOBAL R24 K46 ["SimplePadding"]
  DUPTABLE R25 K47 [{"Padding"}]
  LOADN R26 2
  SETTABLEKS R26 R25 K41 ["Padding"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K41 ["Padding"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K44 ["Text"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K23 ["Frame"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K20 ["SummonHandlesNoteGui"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["localeChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETTABLEKS R3 R1 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R2 K9 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Roact"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K11 ["PureComponent"]
  LOADK R6 K12 ["SummonHandlesNote"]
  NAMECALL R4 R4 K13 ["extend"]
  CALL R4 2 1
  DUPCLOSURE R5 K14 [PROTO_1]
  SETTABLEKS R5 R4 K15 ["didMount"]
  DUPCLOSURE R5 K16 [PROTO_2]
  CAPTURE VAL R3
  SETGLOBAL R5 K17 ["SimplePadding"]
  DUPCLOSURE R5 K18 [PROTO_3]
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K19 ["render"]
  DUPCLOSURE R5 K20 [PROTO_4]
  SETTABLEKS R5 R4 K21 ["willUnmount"]
  RETURN R4 1
