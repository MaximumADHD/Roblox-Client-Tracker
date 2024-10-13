PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["descriptionRef"]
  GETTABLEKS R0 R1 K1 ["current"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  DUPTABLE R3 K3 [{"descriptionWidth"}]
  GETTABLEKS R5 R0 K4 ["AbsoluteSize"]
  GETTABLEKS R4 R5 K5 ["X"]
  SETTABLEKS R4 R3 K2 ["descriptionWidth"]
  NAMECALL R1 R1 K6 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R1 K1 [{"descriptionWidth"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K0 ["descriptionWidth"]
  SETTABLEKS R1 R0 K2 ["state"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K4 ["descriptionRef"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onResize"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R4 R0 K2 ["state"]
  GETTABLEKS R3 R4 K3 ["descriptionWidth"]
  GETTABLEKS R4 R1 K4 ["Description"]
  GETTABLEKS R5 R1 K5 ["Disabled"]
  GETTABLEKS R6 R1 K6 ["LayoutOrder"]
  GETTABLEKS R7 R1 K7 ["Selected"]
  GETTABLEKS R8 R1 K8 ["Title"]
  GETTABLEKS R9 R1 K9 ["OnClick"]
  GETTABLEKS R10 R1 K10 ["ShowWarning"]
  GETTABLEKS R11 R1 K11 ["LinkProps"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K12 ["new"]
  CALL R12 0 1
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K13 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K15 [{"Title", "TitleWidth", "LayoutOrder"}]
  SETTABLEKS R8 R15 K8 ["Title"]
  GETTABLEKS R17 R2 K16 ["settingsPage"]
  GETTABLEKS R16 R17 K17 ["toggleButtonTitleWidth"]
  SETTABLEKS R16 R15 K14 ["TitleWidth"]
  SETTABLEKS R6 R15 K6 ["LayoutOrder"]
  DUPTABLE R16 K21 [{"ToggleButton", "Description", "LinkText", "DescriptionWidth"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K13 ["createElement"]
  GETUPVAL R18 3
  DUPTABLE R19 K23 [{"Disabled", "Selected", "LayoutOrder", "OnClick", "Size"}]
  SETTABLEKS R5 R19 K5 ["Disabled"]
  SETTABLEKS R7 R19 K7 ["Selected"]
  NAMECALL R20 R12 K24 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K6 ["LayoutOrder"]
  SETTABLEKS R9 R19 K9 ["OnClick"]
  GETTABLEKS R21 R2 K16 ["settingsPage"]
  GETTABLEKS R20 R21 K25 ["toggleButtonSize"]
  SETTABLEKS R20 R19 K22 ["Size"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K18 ["ToggleButton"]
  GETTABLEKS R17 R1 K4 ["Description"]
  JUMPIFNOT R17 [+62]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K13 ["createElement"]
  GETUPVAL R18 4
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K26 ["Dictionary"]
  GETTABLEKS R19 R20 K27 ["join"]
  JUMPIFNOT R10 [+5]
  GETTABLEKS R21 R2 K28 ["fontStyle"]
  GETTABLEKS R20 R21 K29 ["SmallError"]
  JUMPIF R20 [+4]
  GETTABLEKS R21 R2 K28 ["fontStyle"]
  GETTABLEKS R20 R21 K30 ["Subtext"]
  DUPTABLE R21 K39 [{"AutomaticSize", "BackgroundTransparency", "LayoutOrder", "TextTransparency", "TextXAlignment", "TextYAlignment", "Text", "TextWrapped", "width"}]
  GETIMPORT R22 K42 [Enum.AutomaticSize.XY]
  SETTABLEKS R22 R21 K31 ["AutomaticSize"]
  LOADN R22 1
  SETTABLEKS R22 R21 K32 ["BackgroundTransparency"]
  NAMECALL R22 R12 K24 ["getNextOrder"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K6 ["LayoutOrder"]
  GETTABLEKS R23 R1 K5 ["Disabled"]
  JUMPIFNOT R23 [+2]
  LOADK R22 K43 [0.5]
  JUMP [+1]
  LOADN R22 0
  SETTABLEKS R22 R21 K33 ["TextTransparency"]
  GETIMPORT R22 K45 [Enum.TextXAlignment.Left]
  SETTABLEKS R22 R21 K34 ["TextXAlignment"]
  GETIMPORT R22 K47 [Enum.TextYAlignment.Top]
  SETTABLEKS R22 R21 K35 ["TextYAlignment"]
  SETTABLEKS R4 R21 K36 ["Text"]
  LOADB R22 1
  SETTABLEKS R22 R21 K37 ["TextWrapped"]
  GETIMPORT R22 K49 [UDim.new]
  LOADN R23 0
  MOVE R24 R3
  CALL R22 2 1
  SETTABLEKS R22 R21 K38 ["width"]
  CALL R19 2 -1
  CALL R17 -1 1
  SETTABLEKS R17 R16 K4 ["Description"]
  GETTABLEKS R17 R1 K11 ["LinkProps"]
  JUMPIFNOT R17 [+47]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K13 ["createElement"]
  GETUPVAL R18 6
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K26 ["Dictionary"]
  GETTABLEKS R19 R20 K27 ["join"]
  MOVE R20 R11
  DUPTABLE R21 K54 [{"LinkPlaceholder", "MaxWidth", "LayoutOrder", "TextProps", "HorizontalAlignment"}]
  LOADK R22 K55 ["[link]"]
  SETTABLEKS R22 R21 K50 ["LinkPlaceholder"]
  SETTABLEKS R3 R21 K51 ["MaxWidth"]
  NAMECALL R22 R12 K24 ["getNextOrder"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K6 ["LayoutOrder"]
  GETUPVAL R24 5
  GETTABLEKS R23 R24 K26 ["Dictionary"]
  GETTABLEKS R22 R23 K27 ["join"]
  GETTABLEKS R24 R2 K28 ["fontStyle"]
  GETTABLEKS R23 R24 K30 ["Subtext"]
  DUPTABLE R24 K56 [{"BackgroundTransparency", "TextXAlignment"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K32 ["BackgroundTransparency"]
  GETIMPORT R25 K45 [Enum.TextXAlignment.Left]
  SETTABLEKS R25 R24 K34 ["TextXAlignment"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K52 ["TextProps"]
  GETIMPORT R22 K57 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R22 R21 K53 ["HorizontalAlignment"]
  CALL R19 2 -1
  CALL R17 -1 1
  SETTABLEKS R17 R16 K19 ["LinkText"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K13 ["createElement"]
  LOADK R18 K58 ["Frame"]
  NEWTABLE R19 8 0
  LOADN R20 1
  SETTABLEKS R20 R19 K32 ["BackgroundTransparency"]
  NAMECALL R20 R12 K24 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K6 ["LayoutOrder"]
  GETIMPORT R20 K60 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K22 ["Size"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K61 ["Ref"]
  GETTABLEKS R21 R0 K62 ["descriptionRef"]
  SETTABLE R21 R19 R20
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K63 ["Change"]
  GETTABLEKS R20 R21 K64 ["AbsoluteSize"]
  GETTABLEKS R21 R0 K65 ["onResize"]
  SETTABLE R21 R19 R20
  CALL R17 2 1
  SETTABLEKS R17 R16 K20 ["DescriptionWidth"]
  CALL R13 3 -1
  RETURN R13 -1

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
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETTABLEKS R6 R3 K11 ["Util"]
  GETTABLEKS R7 R3 K12 ["UI"]
  GETTABLEKS R8 R7 K13 ["TitledFrame"]
  GETTABLEKS R9 R7 K14 ["ToggleButton"]
  GETTABLEKS R10 R7 K15 ["TextWithInlineLink"]
  GETTABLEKS R11 R7 K16 ["TextLabel"]
  GETTABLEKS R12 R6 K17 ["LayoutOrderIterator"]
  GETTABLEKS R13 R1 K18 ["PureComponent"]
  LOADK R15 K19 ["ToggleButtonWithTitle"]
  NAMECALL R13 R13 K20 ["extend"]
  CALL R13 2 1
  DUPCLOSURE R14 K21 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K22 ["init"]
  DUPCLOSURE R14 K23 [PROTO_2]
  CAPTURE VAL R12
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R10
  SETTABLEKS R14 R13 K24 ["render"]
  MOVE R14 R5
  DUPTABLE R15 K26 [{"Stylizer"}]
  GETTABLEKS R16 R4 K25 ["Stylizer"]
  SETTABLEKS R16 R15 K25 ["Stylizer"]
  CALL R14 1 1
  MOVE R15 R13
  CALL R14 1 1
  MOVE R13 R14
  RETURN R13 1
