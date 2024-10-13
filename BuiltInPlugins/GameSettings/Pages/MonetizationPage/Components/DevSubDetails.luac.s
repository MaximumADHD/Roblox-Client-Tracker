PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["isNameDirty"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["props"]
  GETTABLEKS R0 R1 K3 ["ModerateDevSub"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["props"]
  GETTABLEKS R1 R2 K4 ["DeveloperSubscription"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["DeveloperSubscription"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["SetDevSubKey"]
  GETTABLEKS R4 R2 K3 ["Key"]
  MOVE R5 R0
  MOVE R6 R1
  CALL R3 3 0
  SETTABLE R1 R2 R0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K4 ["OnDeveloperSubscriptionChanged"]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["onKeyChanged"]
  LOADK R2 K1 ["Name"]
  MOVE R3 R0
  CALL R1 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["state"]
  GETTABLEKS R1 R2 K3 ["isNameDirty"]
  JUMPIF R1 [+8]
  GETUPVAL R1 0
  DUPTABLE R3 K4 [{"isNameDirty"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K3 ["isNameDirty"]
  NAMECALL R1 R1 K5 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["CheckName"]
  CALL R1 0 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["onKeyChanged"]
  LOADK R2 K1 ["Price"]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["onKeyChanged"]
  LOADK R2 K1 ["Image"]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["onKeyChanged"]
  LOADK R2 K1 ["Prepaid"]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["OnEditFinished"]
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Localization"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["PromptForGameIcon"]
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R1 2 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["onImageChanged"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["DeveloperSubscription"]
  GETTABLEKS R0 R1 K2 ["IsNew"]
  JUMPIFNOT R0 [+16]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K3 ["OnDevSubDeleted"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["DeveloperSubscription"]
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K4 ["onBackButtonActivated"]
  CALL R0 0 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K5 ["Localization"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K6 ["Dialog"]
  DUPTABLE R2 K11 [{"Title", "Header", "Description", "Buttons"}]
  LOADK R5 K12 ["General"]
  LOADK R6 K13 ["DevSubsDeleteTitle"]
  NAMECALL R3 R0 K14 ["getText"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K7 ["Title"]
  LOADK R5 K12 ["General"]
  LOADK R6 K15 ["DevSubsDeleteHeader"]
  NAMECALL R3 R0 K14 ["getText"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K8 ["Header"]
  LOADK R5 K12 ["General"]
  LOADK R6 K16 ["DevSubsDeleteDescription"]
  NAMECALL R3 R0 K14 ["getText"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K9 ["Description"]
  NEWTABLE R3 0 2
  LOADK R6 K12 ["General"]
  LOADK R7 K17 ["ButtonCancel"]
  NAMECALL R4 R0 K14 ["getText"]
  CALL R4 3 1
  LOADK R7 K12 ["General"]
  LOADK R8 K18 ["DevSubsDeleteConfirm"]
  NAMECALL R5 R0 K14 ["getText"]
  CALL R5 3 -1
  SETLIST R3 R4 -1 [1]
  SETTABLEKS R3 R2 K10 ["Buttons"]
  GETTABLEKS R3 R1 K19 ["showDialog"]
  GETUPVAL R4 1
  MOVE R5 R2
  CALL R3 2 1
  NAMECALL R3 R3 K20 ["await"]
  CALL R3 1 1
  JUMPIFNOT R3 [+11]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K3 ["OnDevSubDeleted"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K1 ["DeveloperSubscription"]
  CALL R4 1 0
  RETURN R0 0

PROTO_10:
  DUPTABLE R1 K1 [{"isNameDirty"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["isNameDirty"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["CheckName"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["onKeyChanged"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onNameChanged"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["onNameFocusChanged"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["onPriceChanged"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["onImageChanged"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["onPrepaidChanged"]
  NEWCLOSURE R1 P7
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K10 ["onBackButtonActivated"]
  NEWCLOSURE R1 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K11 ["setImage"]
  NEWCLOSURE R1 P9
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K12 ["onDeleteClicked"]
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onBackButtonActivated"]
  CALL R0 0 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Id"]
  NAMECALL R0 R0 K1 ["CopyToClipboard"]
  CALL R0 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["onPrepaidChanged"]
  GETTABLEKS R2 R0 K1 ["Id"]
  CALL R1 1 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["DeveloperSubscription"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["ModeratedDevSub"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["DevSubErrors"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["Stylizer"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["Localization"]
  GETTABLEKS R6 R1 K6 ["IsNew"]
  JUMPIF R6 [+2]
  GETTABLEKS R6 R1 K7 ["Active"]
  GETTABLEKS R7 R1 K6 ["IsNew"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K8 ["new"]
  CALL R8 0 1
  LOADNIL R9
  LOADNIL R10
  LOADNIL R11
  JUMPIFNOT R6 [+76]
  GETTABLEKS R12 R3 K9 ["Name"]
  JUMPIFNOT R12 [+29]
  GETTABLEKS R13 R3 K9 ["Name"]
  GETTABLEKS R12 R13 K10 ["Empty"]
  JUMPIFNOT R12 [+7]
  LOADK R14 K11 ["General"]
  LOADK R15 K12 ["ErrorNameEmpty"]
  NAMECALL R12 R5 K13 ["getText"]
  CALL R12 3 1
  MOVE R9 R12
  JUMP [+17]
  GETTABLEKS R13 R3 K9 ["Name"]
  GETTABLEKS R12 R13 K14 ["Moderated"]
  JUMPIFNOT R12 [+12]
  JUMPIFNOT R2 [+11]
  LOADK R14 K11 ["General"]
  LOADK R15 K15 ["ErrorDevSubFiltered"]
  DUPTABLE R16 K17 [{"filteredText"}]
  GETTABLEKS R17 R2 K18 ["filteredName"]
  SETTABLEKS R17 R16 K16 ["filteredText"]
  NAMECALL R12 R5 K13 ["getText"]
  CALL R12 4 1
  MOVE R9 R12
  GETTABLEKS R12 R1 K6 ["IsNew"]
  JUMPIFNOT R12 [+32]
  GETTABLEKS R12 R3 K19 ["Price"]
  JUMPIFNOT R12 [+29]
  GETTABLEKS R13 R3 K19 ["Price"]
  GETTABLEKS R12 R13 K20 ["NotANumber"]
  JUMPIFNOT R12 [+7]
  LOADK R14 K11 ["General"]
  LOADK R15 K21 ["ErrorDevSubInvalidPrice"]
  NAMECALL R12 R5 K13 ["getText"]
  CALL R12 3 1
  MOVE R10 R12
  JUMP [+17]
  GETUPVAL R12 1
  JUMPIFNOT R12 [+15]
  GETTABLEKS R13 R3 K19 ["Price"]
  GETTABLEKS R12 R13 K22 ["AboveMaxRobuxAmount"]
  JUMPIFNOT R12 [+10]
  LOADK R14 K11 ["General"]
  LOADK R15 K23 ["ErrorDevSubMaxPrice"]
  DUPTABLE R16 K25 [{"maxRobuxAmount"}]
  GETUPVAL R17 1
  SETTABLEKS R17 R16 K24 ["maxRobuxAmount"]
  NAMECALL R12 R5 K13 ["getText"]
  CALL R12 4 1
  MOVE R10 R12
  GETTABLEKS R12 R3 K26 ["Image"]
  JUMPIFNOT R12 [+6]
  LOADK R14 K11 ["General"]
  LOADK R15 K27 ["ErrorImageRequired"]
  NAMECALL R12 R5 K13 ["getText"]
  CALL R12 3 1
  MOVE R11 R12
  NEWTABLE R12 0 2
  DUPTABLE R13 K30 [{"Id", "Label"}]
  LOADN R14 6
  SETTABLEKS R14 R13 K28 ["Id"]
  LOADK R16 K11 ["General"]
  LOADK R17 K31 ["DevSubsDuration6Months"]
  NAMECALL R14 R5 K13 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K29 ["Label"]
  DUPTABLE R14 K30 [{"Id", "Label"}]
  LOADN R15 12
  SETTABLEKS R15 R14 K28 ["Id"]
  LOADK R17 K11 ["General"]
  LOADK R18 K32 ["DevSubsDuration12Months"]
  NAMECALL R15 R5 K13 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K29 ["Label"]
  SETLIST R12 R13 2 [1]
  GETUPVAL R13 2
  GETTABLEKS R14 R1 K28 ["Id"]
  GETTABLEKS R17 R4 K33 ["fontStyle"]
  GETTABLEKS R16 R17 K34 ["Normal"]
  GETTABLEKS R15 R16 K35 ["TextSize"]
  GETTABLEKS R18 R4 K33 ["fontStyle"]
  GETTABLEKS R17 R18 K34 ["Normal"]
  GETTABLEKS R16 R17 K36 ["Font"]
  CALL R13 3 1
  GETTABLEKS R16 R4 K33 ["fontStyle"]
  GETTABLEKS R15 R16 K34 ["Normal"]
  GETTABLEKS R14 R15 K35 ["TextSize"]
  DUPTABLE R15 K43 [{"HeaderFrame", "IdFrame", "NameFrame", "Image", "PriceFrame", "PrepaidFrame", "EarningFrame"}]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K44 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K50 [{"LayoutOrder", "BackgroundTransparency", "axis", "minimumSize", "contentPadding"}]
  NAMECALL R19 R8 K51 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K45 ["LayoutOrder"]
  LOADN R19 1
  SETTABLEKS R19 R18 K46 ["BackgroundTransparency"]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K52 ["Axis"]
  GETTABLEKS R19 R20 K53 ["Vertical"]
  SETTABLEKS R19 R18 K47 ["axis"]
  GETIMPORT R19 K55 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K48 ["minimumSize"]
  GETIMPORT R19 K57 [UDim.new]
  LOADN R20 0
  GETTABLEKS R22 R4 K58 ["settingsPage"]
  GETTABLEKS R21 R22 K59 ["headerPadding"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K49 ["contentPadding"]
  NEWTABLE R19 2 1
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K44 ["createElement"]
  LOADK R22 K60 ["ImageButton"]
  NEWTABLE R23 8 0
  GETIMPORT R24 K55 [UDim2.new]
  LOADN R25 0
  GETTABLEKS R27 R4 K61 ["backButton"]
  GETTABLEKS R26 R27 K62 ["size"]
  LOADN R27 0
  GETTABLEKS R29 R4 K61 ["backButton"]
  GETTABLEKS R28 R29 K62 ["size"]
  CALL R24 4 1
  SETTABLEKS R24 R23 K63 ["Size"]
  LOADN R24 0
  SETTABLEKS R24 R23 K45 ["LayoutOrder"]
  GETTABLEKS R25 R4 K61 ["backButton"]
  GETTABLEKS R24 R25 K64 ["image"]
  SETTABLEKS R24 R23 K26 ["Image"]
  LOADN R24 1
  SETTABLEKS R24 R23 K46 ["BackgroundTransparency"]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K65 ["Event"]
  GETTABLEKS R24 R25 K66 ["Activated"]
  NEWCLOSURE R25 P0
  CAPTURE VAL R0
  SETTABLE R25 R23 R24
  NEWTABLE R24 0 1
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K44 ["createElement"]
  GETUPVAL R26 5
  DUPTABLE R27 K68 [{"Cursor"}]
  LOADK R28 K69 ["PointingHand"]
  SETTABLEKS R28 R27 K67 ["Cursor"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  SETTABLEKS R21 R19 K70 ["BackButton"]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K44 ["createElement"]
  GETUPVAL R21 6
  DUPTABLE R22 K71 [{"LayoutOrder"}]
  LOADN R23 1
  SETTABLEKS R23 R22 K45 ["LayoutOrder"]
  CALL R20 2 1
  SETLIST R19 R20 1 [1]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K44 ["createElement"]
  LOADK R22 K72 ["TextLabel"]
  GETUPVAL R25 7
  GETTABLEKS R24 R25 K73 ["Dictionary"]
  GETTABLEKS R23 R24 K74 ["join"]
  GETTABLEKS R25 R4 K33 ["fontStyle"]
  GETTABLEKS R24 R25 K75 ["Title"]
  DUPTABLE R25 K80 [{"Size", "Text", "BackgroundTransparency", "BorderSizePixel", "TextXAlignment", "TextYAlignment", "LayoutOrder"}]
  GETIMPORT R26 K55 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  GETUPVAL R31 8
  GETTABLEKS R30 R31 K81 ["HEADER_HEIGHT"]
  CALL R26 4 1
  SETTABLEKS R26 R25 K63 ["Size"]
  GETTABLEKS R27 R1 K6 ["IsNew"]
  JUMPIFNOT R27 [+6]
  LOADK R28 K11 ["General"]
  LOADK R29 K82 ["DevSubsNewHeader"]
  NAMECALL R26 R5 K13 ["getText"]
  CALL R26 3 1
  JUMPIF R26 [+5]
  LOADK R28 K11 ["General"]
  LOADK R29 K83 ["DevSubsEditHeader"]
  NAMECALL R26 R5 K13 ["getText"]
  CALL R26 3 1
  SETTABLEKS R26 R25 K76 ["Text"]
  LOADN R26 1
  SETTABLEKS R26 R25 K46 ["BackgroundTransparency"]
  LOADN R26 0
  SETTABLEKS R26 R25 K77 ["BorderSizePixel"]
  GETIMPORT R26 K86 [Enum.TextXAlignment.Left]
  SETTABLEKS R26 R25 K78 ["TextXAlignment"]
  GETIMPORT R26 K88 [Enum.TextYAlignment.Center]
  SETTABLEKS R26 R25 K79 ["TextYAlignment"]
  LOADN R26 2
  SETTABLEKS R26 R25 K45 ["LayoutOrder"]
  CALL R23 2 1
  DUPTABLE R24 K92 [{"Padding", "Layout", "Button"}]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K44 ["createElement"]
  LOADK R26 K93 ["UIPadding"]
  DUPTABLE R27 K95 [{"PaddingRight"}]
  GETIMPORT R28 K57 [UDim.new]
  LOADN R29 0
  LOADN R30 12
  CALL R28 2 1
  SETTABLEKS R28 R27 K94 ["PaddingRight"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K89 ["Padding"]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K44 ["createElement"]
  LOADK R26 K96 ["UIListLayout"]
  DUPTABLE R27 K99 [{"HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R28 K101 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R28 R27 K97 ["HorizontalAlignment"]
  GETIMPORT R28 K103 [Enum.VerticalAlignment.Bottom]
  SETTABLEKS R28 R27 K98 ["VerticalAlignment"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K90 ["Layout"]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K44 ["createElement"]
  GETUPVAL R26 9
  DUPTABLE R27 K106 [{"Text", "OnClick", "Style"}]
  LOADK R30 K11 ["General"]
  LOADK R31 K107 ["DevSubsDeleteAction"]
  NAMECALL R28 R5 K13 ["getText"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K76 ["Text"]
  GETTABLEKS R28 R0 K108 ["onDeleteClicked"]
  SETTABLEKS R28 R27 K104 ["OnClick"]
  LOADK R28 K109 ["Round"]
  SETTABLEKS R28 R27 K105 ["Style"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K91 ["Button"]
  CALL R21 3 1
  SETTABLEKS R21 R19 K110 ["Header"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K37 ["HeaderFrame"]
  NOT R16 R7
  JUMPIFNOT R16 [+117]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K44 ["createElement"]
  GETUPVAL R17 10
  DUPTABLE R18 K111 [{"LayoutOrder", "Title"}]
  NAMECALL R19 R8 K51 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K45 ["LayoutOrder"]
  LOADK R21 K11 ["General"]
  LOADK R22 K112 ["DevSubsId"]
  NAMECALL R19 R5 K13 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K75 ["Title"]
  DUPTABLE R19 K113 [{"Layout", "Text", "Button"}]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K44 ["createElement"]
  LOADK R21 K96 ["UIListLayout"]
  DUPTABLE R22 K116 [{"SortOrder", "FillDirection", "VerticalAlignment"}]
  GETIMPORT R23 K117 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K114 ["SortOrder"]
  GETIMPORT R23 K119 [Enum.FillDirection.Horizontal]
  SETTABLEKS R23 R22 K115 ["FillDirection"]
  GETIMPORT R23 K121 [Enum.VerticalAlignment.Top]
  SETTABLEKS R23 R22 K98 ["VerticalAlignment"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K90 ["Layout"]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K44 ["createElement"]
  GETUPVAL R21 11
  DUPTABLE R22 K123 [{"Text", "Size", "Alignment", "LayoutOrder"}]
  GETTABLEKS R23 R1 K28 ["Id"]
  SETTABLEKS R23 R22 K76 ["Text"]
  GETIMPORT R23 K55 [UDim2.new]
  LOADN R24 0
  GETTABLEKS R25 R13 K124 ["X"]
  LOADK R26 K125 [0.5]
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K63 ["Size"]
  GETIMPORT R23 K86 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K122 ["Alignment"]
  LOADN R23 1
  SETTABLEKS R23 R22 K45 ["LayoutOrder"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K76 ["Text"]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K44 ["createElement"]
  LOADK R21 K60 ["ImageButton"]
  NEWTABLE R22 8 0
  LOADN R23 1
  SETTABLEKS R23 R22 K46 ["BackgroundTransparency"]
  GETTABLEKS R24 R4 K126 ["copyButton"]
  GETTABLEKS R23 R24 K64 ["image"]
  SETTABLEKS R23 R22 K26 ["Image"]
  GETTABLEKS R24 R4 K126 ["copyButton"]
  GETTABLEKS R23 R24 K127 ["imageColor"]
  SETTABLEKS R23 R22 K128 ["ImageColor3"]
  GETIMPORT R23 K55 [UDim2.new]
  LOADN R24 0
  LOADN R25 16
  LOADN R26 0
  LOADN R27 16
  CALL R23 4 1
  SETTABLEKS R23 R22 K63 ["Size"]
  GETIMPORT R23 K131 [Enum.SizeConstraint.RelativeYY]
  SETTABLEKS R23 R22 K129 ["SizeConstraint"]
  LOADN R23 2
  SETTABLEKS R23 R22 K45 ["LayoutOrder"]
  GETUPVAL R25 3
  GETTABLEKS R24 R25 K65 ["Event"]
  GETTABLEKS R23 R24 K66 ["Activated"]
  NEWCLOSURE R24 P1
  CAPTURE UPVAL U12
  CAPTURE VAL R1
  SETTABLE R24 R22 R23
  CALL R20 2 1
  SETTABLEKS R20 R19 K91 ["Button"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K38 ["IdFrame"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K44 ["createElement"]
  GETUPVAL R17 10
  DUPTABLE R18 K111 [{"LayoutOrder", "Title"}]
  NAMECALL R19 R8 K51 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K45 ["LayoutOrder"]
  LOADK R21 K11 ["General"]
  LOADK R22 K132 ["DevSubsName"]
  NAMECALL R19 R5 K13 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K75 ["Title"]
  DUPTABLE R19 K134 [{"TextBox"}]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K44 ["createElement"]
  GETUPVAL R21 13
  DUPTABLE R22 K140 [{"Disabled", "ErrorText", "MaxLength", "OnTextChanged", "OnFocusLost", "Text"}]
  NOT R23 R6
  SETTABLEKS R23 R22 K135 ["Disabled"]
  SETTABLEKS R9 R22 K136 ["ErrorText"]
  LOADN R23 32
  SETTABLEKS R23 R22 K137 ["MaxLength"]
  GETTABLEKS R23 R0 K141 ["onNameChanged"]
  SETTABLEKS R23 R22 K138 ["OnTextChanged"]
  GETTABLEKS R23 R0 K142 ["onNameFocusChanged"]
  SETTABLEKS R23 R22 K139 ["OnFocusLost"]
  GETTABLEKS R24 R1 K9 ["Name"]
  ORK R23 R24 K143 [""]
  SETTABLEKS R23 R22 K76 ["Text"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K133 ["TextBox"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K39 ["NameFrame"]
  JUMPIFNOT R6 [+35]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K44 ["createElement"]
  GETUPVAL R17 14
  DUPTABLE R18 K149 [{"Title", "Enabled", "Icon", "LayoutOrder", "TutorialEnabled", "ErrorMessage", "AddIcon"}]
  LOADK R21 K11 ["General"]
  LOADK R22 K150 ["DevSubsImage"]
  NAMECALL R19 R5 K13 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K75 ["Title"]
  LOADB R19 1
  SETTABLEKS R19 R18 K144 ["Enabled"]
  GETTABLEKS R19 R1 K26 ["Image"]
  SETTABLEKS R19 R18 K145 ["Icon"]
  NAMECALL R19 R8 K51 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K45 ["LayoutOrder"]
  LOADB R19 0
  SETTABLEKS R19 R18 K146 ["TutorialEnabled"]
  SETTABLEKS R11 R18 K147 ["ErrorMessage"]
  GETTABLEKS R19 R0 K151 ["setImage"]
  SETTABLEKS R19 R18 K148 ["AddIcon"]
  CALL R16 2 1
  JUMPIF R16 [+40]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K44 ["createElement"]
  GETUPVAL R17 10
  DUPTABLE R18 K111 [{"LayoutOrder", "Title"}]
  NAMECALL R19 R8 K51 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K45 ["LayoutOrder"]
  LOADK R21 K11 ["General"]
  LOADK R22 K150 ["DevSubsImage"]
  NAMECALL R19 R5 K13 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K75 ["Title"]
  DUPTABLE R19 K152 [{"Image"}]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K44 ["createElement"]
  LOADK R21 K153 ["ImageLabel"]
  DUPTABLE R22 K154 [{"Image", "Size"}]
  GETTABLEKS R23 R1 K26 ["Image"]
  SETTABLEKS R23 R22 K26 ["Image"]
  GETIMPORT R23 K55 [UDim2.new]
  LOADN R24 0
  LOADN R25 150
  LOADN R26 0
  LOADN R27 150
  CALL R23 4 1
  SETTABLEKS R23 R22 K63 ["Size"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K26 ["Image"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K26 ["Image"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K44 ["createElement"]
  GETUPVAL R17 10
  DUPTABLE R18 K111 [{"LayoutOrder", "Title"}]
  NAMECALL R19 R8 K51 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K45 ["LayoutOrder"]
  LOADK R21 K11 ["General"]
  LOADK R22 K155 ["DevSubsPrice"]
  NAMECALL R19 R5 K13 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K75 ["Title"]
  DUPTABLE R19 K157 [{"Input"}]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K44 ["createElement"]
  GETUPVAL R21 13
  DUPTABLE R22 K160 [{"Disabled", "ErrorText", "MaxLength", "OnTextChanged", "Text", "Size", "LeadingComponent", "LeadingComponentProps"}]
  GETTABLEKS R24 R1 K6 ["IsNew"]
  NOT R23 R24
  SETTABLEKS R23 R22 K135 ["Disabled"]
  SETTABLEKS R10 R22 K136 ["ErrorText"]
  LOADK R23 K161 [50000]
  SETTABLEKS R23 R22 K137 ["MaxLength"]
  GETTABLEKS R23 R0 K162 ["onPriceChanged"]
  SETTABLEKS R23 R22 K138 ["OnTextChanged"]
  GETTABLEKS R24 R1 K19 ["Price"]
  FASTCALL1 TOSTRING R24 [+2]
  GETIMPORT R23 K164 [tostring]
  CALL R23 1 1
  SETTABLEKS R23 R22 K76 ["Text"]
  GETIMPORT R23 K55 [UDim2.new]
  LOADN R24 0
  LOADN R25 200
  LOADN R26 0
  LOADN R27 32
  CALL R23 4 1
  SETTABLEKS R23 R22 K63 ["Size"]
  GETUPVAL R23 15
  SETTABLEKS R23 R22 K158 ["LeadingComponent"]
  DUPTABLE R23 K165 [{"Size", "Image", "ImageColor3"}]
  GETIMPORT R24 K55 [UDim2.new]
  LOADN R25 0
  MOVE R26 R14
  LOADN R27 0
  MOVE R28 R14
  CALL R24 4 1
  SETTABLEKS R24 R23 K63 ["Size"]
  GETTABLEKS R26 R4 K166 ["robuxFeeBase"]
  GETTABLEKS R25 R26 K167 ["icon"]
  GETTABLEKS R24 R25 K64 ["image"]
  SETTABLEKS R24 R23 K26 ["Image"]
  GETIMPORT R24 K170 [Color3.fromRGB]
  LOADN R25 25
  LOADN R26 25
  LOADN R27 25
  CALL R24 3 1
  SETTABLEKS R24 R23 K128 ["ImageColor3"]
  SETTABLEKS R23 R22 K159 ["LeadingComponentProps"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K156 ["Input"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K40 ["PriceFrame"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K44 ["createElement"]
  GETUPVAL R17 10
  DUPTABLE R18 K111 [{"LayoutOrder", "Title"}]
  NAMECALL R19 R8 K51 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K45 ["LayoutOrder"]
  LOADK R21 K11 ["General"]
  LOADK R22 K171 ["DevSubsDuration"]
  NAMECALL R19 R5 K13 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K75 ["Title"]
  DUPTABLE R19 K173 [{"Selector"}]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K44 ["createElement"]
  GETUPVAL R21 16
  DUPTABLE R22 K177 [{"Items", "Enabled", "SelectedId", "OnItemActivated"}]
  SETTABLEKS R12 R22 K174 ["Items"]
  GETTABLEKS R24 R1 K178 ["Prepaid"]
  JUMPIFNOTEQKNIL R24 [+2]
  LOADB R23 0 +1
  LOADB R23 1
  SETTABLEKS R23 R22 K144 ["Enabled"]
  GETTABLEKS R23 R1 K178 ["Prepaid"]
  SETTABLEKS R23 R22 K175 ["SelectedId"]
  NEWCLOSURE R23 P2
  CAPTURE VAL R0
  SETTABLEKS R23 R22 K176 ["OnItemActivated"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K172 ["Selector"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K41 ["PrepaidFrame"]
  NOT R16 R7
  JUMPIFNOT R16 [+48]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K44 ["createElement"]
  GETUPVAL R17 10
  DUPTABLE R18 K111 [{"LayoutOrder", "Title"}]
  NAMECALL R19 R8 K51 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K45 ["LayoutOrder"]
  LOADK R21 K11 ["General"]
  LOADK R22 K179 ["DevSubsPendingEarning"]
  NAMECALL R19 R5 K13 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K75 ["Title"]
  DUPTABLE R19 K180 [{"Text"}]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K44 ["createElement"]
  GETUPVAL R21 11
  DUPTABLE R22 K181 [{"Text", "Size", "Alignment"}]
  GETTABLEKS R24 R1 K182 ["PendingEarning"]
  FASTCALL1 TOSTRING R24 [+2]
  GETIMPORT R23 K164 [tostring]
  CALL R23 1 1
  SETTABLEKS R23 R22 K76 ["Text"]
  GETIMPORT R23 K55 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADK R26 K125 [0.5]
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K63 ["Size"]
  GETIMPORT R23 K86 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K122 ["Alignment"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K76 ["Text"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K42 ["EarningFrame"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K44 ["createElement"]
  GETUPVAL R17 17
  DUPTABLE R18 K185 [{"AutomaticSize", "HorizontalAlignment", "LayoutOrder", "Layout", "Spacing"}]
  GETIMPORT R19 K187 [Enum.AutomaticSize.Y]
  SETTABLEKS R19 R18 K183 ["AutomaticSize"]
  GETIMPORT R19 K188 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R19 R18 K97 ["HorizontalAlignment"]
  GETTABLEKS R21 R0 K0 ["props"]
  GETTABLEKS R20 R21 K45 ["LayoutOrder"]
  ORK R19 R20 K189 [1]
  SETTABLEKS R19 R18 K45 ["LayoutOrder"]
  GETIMPORT R19 K190 [Enum.FillDirection.Vertical]
  SETTABLEKS R19 R18 K90 ["Layout"]
  GETIMPORT R19 K57 [UDim.new]
  LOADN R20 0
  GETUPVAL R22 8
  GETTABLEKS R21 R22 K191 ["ELEMENT_PADDING"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K184 ["Spacing"]
  MOVE R19 R15
  CALL R16 3 -1
  RETURN R16 -1

PROTO_15:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Settings"]
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_16:
  GETTABLEKS R3 R0 K0 ["Settings"]
  GETTABLEKS R2 R3 K1 ["Errors"]
  GETTABLEKS R4 R0 K0 ["Settings"]
  GETTABLEKS R3 R4 K2 ["Current"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  GETTABLEKS R4 R3 K3 ["DeveloperSubscriptions"]
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  MOVE R3 R4
  GETTABLEKS R5 R0 K0 ["Settings"]
  GETTABLEKS R4 R5 K4 ["Changed"]
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  GETTABLEKS R5 R4 K3 ["DeveloperSubscriptions"]
  JUMPIF R5 [+2]
  NEWTABLE R5 0 0
  MOVE R4 R5
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["Merge"]
  MOVE R7 R3
  MOVE R8 R4
  CALL R6 2 1
  JUMPIF R6 [+2]
  NEWTABLE R6 0 0
  GETUPVAL R7 0
  GETTABLEKS R8 R0 K0 ["Settings"]
  LOADK R9 K6 ["editedSubscriptionKey"]
  CALL R7 2 1
  GETTABLEKS R8 R2 K3 ["DeveloperSubscriptions"]
  JUMPIF R8 [+2]
  NEWTABLE R8 0 0
  DUPTABLE R9 K10 [{"DeveloperSubscription", "ModeratedDevSubs", "DevSubErrors"}]
  GETTABLE R10 R6 R7
  SETTABLEKS R10 R9 K7 ["DeveloperSubscription"]
  GETTABLEKS R10 R0 K11 ["DevSubModeration"]
  JUMPIF R10 [+2]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K8 ["ModeratedDevSubs"]
  GETTABLE R10 R8 R7
  JUMPIF R10 [+2]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K9 ["DevSubErrors"]
  RETURN R9 1

PROTO_17:
  GETUPVAL R0 0
  GETUPVAL R1 1
  LOADK R2 K0 ["isEditingSubscription"]
  LOADB R3 0
  CALL R1 2 -1
  CALL R0 -1 0
  GETUPVAL R0 0
  GETUPVAL R1 1
  LOADK R2 K1 ["editedSubscriptionKey"]
  LOADNIL R3
  CALL R1 2 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_18:
  GETTABLEKS R1 R0 K0 ["IsNew"]
  JUMPIF R1 [+8]
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETTABLEKS R3 R0 K1 ["Key"]
  LOADK R4 K2 ["Active"]
  LOADB R5 0
  CALL R2 3 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_20:
  DUPTABLE R1 K3 [{"OnEditFinished", "OnDevSubDeleted", "ModerateDevSub"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["OnEditFinished"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["OnDevSubDeleted"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["ModerateDevSub"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R6 K5 [script]
  GETTABLEKS R5 R6 K6 ["Parent"]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETIMPORT R3 K8 [require]
  GETTABLEKS R6 R2 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["FileUtils"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R7 R2 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Util"]
  GETTABLEKS R5 R6 K12 ["DEPRECATED_Constants"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R8 R2 K9 ["Src"]
  GETTABLEKS R7 R8 K10 ["Util"]
  GETTABLEKS R6 R7 K13 ["DeepMergeTables"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R2 K14 ["Packages"]
  GETTABLEKS R7 R8 K15 ["Cryo"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R9 R2 K14 ["Packages"]
  GETTABLEKS R8 R9 K16 ["RoactRodux"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R10 R2 K14 ["Packages"]
  GETTABLEKS R9 R10 K17 ["Roact"]
  CALL R8 1 1
  GETIMPORT R9 K8 [require]
  GETTABLEKS R13 R2 K9 ["Src"]
  GETTABLEKS R12 R13 K18 ["Components"]
  GETTABLEKS R11 R12 K19 ["UploadableIcon"]
  GETTABLEKS R10 R11 K20 ["UploadableIconWidget"]
  CALL R9 1 1
  GETIMPORT R10 K8 [require]
  GETTABLEKS R14 R2 K9 ["Src"]
  GETTABLEKS R13 R14 K18 ["Components"]
  GETTABLEKS R12 R13 K21 ["Dialog"]
  GETTABLEKS R11 R12 K22 ["WarningDialog"]
  CALL R10 1 1
  GETIMPORT R11 K8 [require]
  GETTABLEKS R14 R2 K9 ["Src"]
  GETTABLEKS R13 R14 K23 ["ContextServices"]
  GETTABLEKS R12 R13 K21 ["Dialog"]
  CALL R11 1 1
  GETIMPORT R12 K8 [require]
  GETIMPORT R15 K5 [script]
  GETTABLEKS R14 R15 K6 ["Parent"]
  GETTABLEKS R13 R14 K24 ["DevSubListItemText"]
  CALL R12 1 1
  GETIMPORT R13 K8 [require]
  GETTABLEKS R16 R2 K9 ["Src"]
  GETTABLEKS R15 R16 K25 ["Actions"]
  GETTABLEKS R14 R15 K26 ["AddChange"]
  CALL R13 1 1
  GETIMPORT R14 K8 [require]
  GETTABLEKS R16 R1 K27 ["Thunks"]
  GETTABLEKS R15 R16 K28 ["AddDevSubKeyChange"]
  CALL R14 1 1
  GETIMPORT R15 K8 [require]
  GETTABLEKS R17 R1 K27 ["Thunks"]
  GETTABLEKS R16 R17 K29 ["DevSubModeration"]
  CALL R15 1 1
  GETIMPORT R16 K8 [require]
  GETTABLEKS R18 R2 K14 ["Packages"]
  GETTABLEKS R17 R18 K30 ["Framework"]
  CALL R16 1 1
  GETTABLEKS R17 R16 K23 ["ContextServices"]
  GETTABLEKS R18 R17 K31 ["withContext"]
  GETTABLEKS R19 R16 K32 ["UI"]
  GETTABLEKS R20 R19 K33 ["Button"]
  GETTABLEKS R21 R19 K34 ["HoverArea"]
  GETTABLEKS R22 R19 K35 ["Image"]
  GETTABLEKS R23 R19 K36 ["Pane"]
  GETTABLEKS R24 R19 K37 ["Separator"]
  GETTABLEKS R25 R19 K38 ["SelectInput"]
  GETTABLEKS R26 R19 K39 ["TextInput"]
  GETTABLEKS R27 R19 K40 ["TitledFrame"]
  GETTABLEKS R28 R16 K10 ["Util"]
  GETTABLEKS R29 R28 K41 ["GetTextSize"]
  GETTABLEKS R31 R28 K42 ["FitFrame"]
  GETTABLEKS R30 R31 K43 ["FitFrameOnAxis"]
  GETTABLEKS R31 R28 K44 ["LayoutOrderIterator"]
  GETTABLEKS R32 R8 K45 ["Component"]
  LOADK R34 K46 ["DeveloperSubscriptionDetails"]
  NAMECALL R32 R32 K47 ["extend"]
  CALL R32 2 1
  GETIMPORT R33 K1 [game]
  LOADK R35 K48 ["DeveloperSubscriptionsMaxRobuxPrice"]
  LOADN R36 208
  NAMECALL R33 R33 K49 ["DefineFastInt"]
  CALL R33 3 1
  DUPCLOSURE R34 K50 [PROTO_10]
  CAPTURE VAL R3
  CAPTURE VAL R10
  SETTABLEKS R34 R32 K51 ["init"]
  DUPCLOSURE R34 K52 [PROTO_14]
  CAPTURE VAL R31
  CAPTURE VAL R33
  CAPTURE VAL R29
  CAPTURE VAL R8
  CAPTURE VAL R30
  CAPTURE VAL R21
  CAPTURE VAL R24
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R20
  CAPTURE VAL R27
  CAPTURE VAL R12
  CAPTURE VAL R0
  CAPTURE VAL R26
  CAPTURE VAL R9
  CAPTURE VAL R22
  CAPTURE VAL R25
  CAPTURE VAL R23
  SETTABLEKS R34 R32 K53 ["render"]
  MOVE R34 R18
  DUPTABLE R35 K56 [{"Stylizer", "Localization", "Dialog"}]
  GETTABLEKS R36 R17 K54 ["Stylizer"]
  SETTABLEKS R36 R35 K54 ["Stylizer"]
  GETTABLEKS R36 R17 K55 ["Localization"]
  SETTABLEKS R36 R35 K55 ["Localization"]
  SETTABLEKS R11 R35 K21 ["Dialog"]
  CALL R34 1 1
  MOVE R35 R32
  CALL R34 1 1
  MOVE R32 R34
  GETIMPORT R34 K8 [require]
  GETTABLEKS R37 R2 K9 ["Src"]
  GETTABLEKS R36 R37 K57 ["Networking"]
  GETTABLEKS R35 R36 K58 ["settingFromState"]
  CALL R34 1 1
  GETTABLEKS R35 R7 K59 ["connect"]
  DUPCLOSURE R36 K60 [PROTO_16]
  CAPTURE VAL R34
  CAPTURE VAL R5
  DUPCLOSURE R37 K61 [PROTO_20]
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R15
  CALL R35 2 1
  MOVE R36 R32
  CALL R35 1 -1
  RETURN R35 -1
