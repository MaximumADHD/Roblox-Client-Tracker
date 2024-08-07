PROTO_0:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["currentTab"]
  JUMPIFEQ R2 R0 [+31]
  GETUPVAL R2 0
  DUPTABLE R4 K2 [{"currentTab"}]
  SETTABLEKS R0 R4 K1 ["currentTab"]
  NAMECALL R2 R2 K3 ["setState"]
  CALL R2 2 0
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+20]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["InteractionTelemetry"]
  DUPTABLE R4 K8 [{"functionType", "sourceType", "sourceData"}]
  LOADK R5 K9 ["Navigation"]
  SETTABLEKS R5 R4 K5 ["functionType"]
  LOADK R5 K10 ["Widget"]
  SETTABLEKS R5 R4 K6 ["sourceType"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K11 ["toString"]
  MOVE R6 R1
  CALL R5 1 1
  SETTABLEKS R5 R4 K7 ["sourceData"]
  NAMECALL R2 R2 K12 ["ReportInteraction"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"expanded"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["expanded"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["Panels"]
  GETUPVAL R2 1
  GETIMPORT R3 K6 [Vector2.new]
  LOADN R4 0
  LOADN R5 129
  CALL R3 2 -1
  NAMECALL R0 R0 K7 ["SetSize"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"expanded"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["expanded"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["Panels"]
  GETUPVAL R2 1
  GETIMPORT R3 K6 [Vector2.new]
  LOADN R4 0
  LOADN R5 44
  CALL R3 2 -1
  NAMECALL R0 R0 K7 ["SetSize"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["toString"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Uri"]
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["toString"]
  GETTABLEKS R4 R0 K1 ["Uri"]
  CALL R3 1 1
  JUMPIFNOTEQ R2 R3 [+3]
  GETUPVAL R1 1
  RETURN R1 1
  MOVE R1 R0
  RETURN R1 1

PROTO_5:
  DUPTABLE R1 K1 [{"customTools"}]
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K0 ["customTools"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CALL R2 2 1
  SETTABLEKS R2 R1 K0 ["customTools"]
  RETURN R1 1

PROTO_6:
  GETUPVAL R1 0
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  NAMECALL R1 R1 K0 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R2 R0 K0 ["AbsoluteSize"]
  GETTABLEKS R1 R2 K1 ["X"]
  LOADN R2 116
  JUMPIFNOTLT R2 R1 [+10]
  GETUPVAL R2 0
  DUPTABLE R4 K3 [{"scale"}]
  LOADK R5 K4 ["Large"]
  SETTABLEKS R5 R4 K2 ["scale"]
  NAMECALL R2 R2 K5 ["setState"]
  CALL R2 2 0
  RETURN R0 0
  LOADN R2 16
  JUMPIFNOTLT R2 R1 [+10]
  GETUPVAL R2 0
  DUPTABLE R4 K3 [{"scale"}]
  LOADK R5 K6 ["Medium"]
  SETTABLEKS R5 R4 K2 ["scale"]
  NAMECALL R2 R2 K5 ["setState"]
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R2 0
  DUPTABLE R4 K3 [{"scale"}]
  LOADK R5 K7 ["Small"]
  SETTABLEKS R5 R4 K2 ["scale"]
  NAMECALL R2 R2 K5 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R2 R1 K0 ["Plugin"]
  GETTABLEKS R3 R2 K1 ["MultipleDocumentInterfaceInstance"]
  FASTCALL2K ASSERT R3 K2 [+5]
  MOVE R5 R3
  LOADK R6 K2 ["roblox-cli analyze w/o --project thinks mdiInstance is optional"]
  GETIMPORT R4 K4 [assert]
  CALL R4 2 0
  GETUPVAL R5 0
  CALL R5 0 1
  JUMPIFNOT R5 [+5]
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+2]
  LOADNIL R4
  JUMP [+2]
  GETTABLEKS R4 R3 K5 ["FocusedDataModelSession"]
  DUPTABLE R5 K10 [{"expanded", "currentTab", "customTools", "scale"}]
  JUMPIFNOT R4 [+2]
  LOADB R6 1
  JUMP [+1]
  LOADB R6 0
  SETTABLEKS R6 R5 K6 ["expanded"]
  LOADK R6 K11 ["Home"]
  SETTABLEKS R6 R5 K7 ["currentTab"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K8 ["customTools"]
  LOADK R6 K12 ["Large"]
  SETTABLEKS R6 R5 K9 ["scale"]
  SETTABLEKS R5 R0 K13 ["state"]
  GETTABLEKS R5 R1 K0 ["Plugin"]
  LOADK R7 K14 ["Tools"]
  NAMECALL R5 R5 K15 ["GetPluginComponent"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K14 ["Tools"]
  GETTABLEKS R5 R1 K0 ["Plugin"]
  LOADK R7 K16 ["Panels"]
  NAMECALL R5 R5 K15 ["GetPluginComponent"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K16 ["Panels"]
  GETTABLEKS R5 R1 K0 ["Plugin"]
  LOADK R7 K17 ["Widgets"]
  NAMECALL R5 R5 K15 ["GetPluginComponent"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K17 ["Widgets"]
  GETUPVAL R6 2
  CALL R6 0 1
  JUMPIFNOT R6 [+7]
  GETTABLEKS R5 R1 K0 ["Plugin"]
  LOADK R7 K18 ["InteractionTelemetry"]
  NAMECALL R5 R5 K15 ["GetPluginComponent"]
  CALL R5 2 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R0 K18 ["InteractionTelemetry"]
  GETUPVAL R5 3
  NAMECALL R6 R2 K19 ["GetUri"]
  CALL R6 1 1
  DUPTABLE R7 K22 [{"Category", "ItemId"}]
  LOADK R8 K23 ["Widget"]
  SETTABLEKS R8 R7 K20 ["Category"]
  LOADK R8 K24 ["Ribbon"]
  SETTABLEKS R8 R7 K21 ["ItemId"]
  CALL R5 2 1
  GETTABLEKS R6 R0 K16 ["Panels"]
  MOVE R8 R5
  GETIMPORT R9 K27 [Vector2.new]
  LOADN R10 0
  JUMPIFNOT R4 [+2]
  LOADN R11 129
  JUMP [+1]
  LOADN R11 44
  CALL R9 2 -1
  NAMECALL R6 R6 K28 ["SetSize"]
  CALL R6 -1 0
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K29 ["Localization"]
  GETTABLEKS R6 R7 K26 ["new"]
  DUPTABLE R7 K33 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R8 5
  SETTABLEKS R8 R7 K30 ["stringResourceTable"]
  GETUPVAL R8 6
  SETTABLEKS R8 R7 K31 ["translationResourceTable"]
  LOADK R8 K24 ["Ribbon"]
  SETTABLEKS R8 R7 K32 ["pluginName"]
  CALL R6 1 1
  SETTABLEKS R6 R0 K34 ["localization"]
  GETUPVAL R6 7
  JUMPIFNOT R6 [+10]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K35 ["Analytics"]
  GETTABLEKS R6 R7 K26 ["new"]
  GETUPVAL R7 8
  CALL R6 1 1
  SETTABLEKS R6 R0 K36 ["analytics"]
  JUMP [+11]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K35 ["Analytics"]
  GETTABLEKS R6 R7 K26 ["new"]
  DUPCLOSURE R7 K37 [PROTO_0]
  NEWTABLE R8 0 0
  CALL R6 2 1
  SETTABLEKS R6 R0 K36 ["analytics"]
  GETUPVAL R6 9
  GETTABLEKS R7 R1 K0 ["Plugin"]
  CALL R6 1 1
  SETTABLEKS R6 R0 K38 ["design"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U10
  SETTABLEKS R6 R0 K39 ["onSelectTab"]
  GETUPVAL R6 11
  GETUPVAL R9 12
  GETTABLEKS R8 R9 K40 ["Src"]
  GETTABLEKS R7 R8 K41 ["Components"]
  CALL R6 1 1
  CALL R6 0 1
  SETTABLEKS R6 R0 K42 ["theme"]
  GETUPVAL R7 13
  GETTABLEKS R6 R7 K26 ["new"]
  GETTABLEKS R7 R1 K0 ["Plugin"]
  NAMECALL R7 R7 K43 ["GetMouse"]
  CALL R7 1 -1
  CALL R6 -1 1
  SETTABLEKS R6 R0 K44 ["mouse"]
  GETTABLEKS R6 R0 K44 ["mouse"]
  LOADK R8 K45 ["Arrow"]
  LOADN R9 0
  NAMECALL R6 R6 K46 ["__pushCursor"]
  CALL R6 3 0
  NEWCLOSURE R6 P2
  CAPTURE VAL R0
  CAPTURE VAL R5
  SETTABLEKS R6 R0 K47 ["expand"]
  NEWCLOSURE R6 P3
  CAPTURE VAL R0
  CAPTURE VAL R5
  SETTABLEKS R6 R0 K48 ["compact"]
  GETTABLEKS R6 R1 K0 ["Plugin"]
  NAMECALL R6 R6 K19 ["GetUri"]
  CALL R6 1 1
  SETTABLEKS R6 R0 K49 ["pluginUri"]
  NEWCLOSURE R6 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U14
  CAPTURE UPVAL U10
  SETTABLEKS R6 R0 K50 ["onToolChanged"]
  NEWCLOSURE R6 P5
  CAPTURE VAL R0
  SETTABLEKS R6 R0 K51 ["onResize"]
  GETUPVAL R7 15
  GETTABLEKS R6 R7 K52 ["createSettings"]
  MOVE R7 R2
  GETTABLEKS R8 R0 K34 ["localization"]
  CALL R6 2 0
  RETURN R0 0

PROTO_9:
  DUPTABLE R1 K1 [{"customTools"}]
  GETUPVAL R2 0
  NEWTABLE R3 0 0
  GETTABLEKS R4 R0 K0 ["customTools"]
  GETUPVAL R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K0 ["customTools"]
  RETURN R1 1

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Tools"]
  GETTABLEKS R3 R0 K1 ["Uri"]
  NAMECALL R1 R1 K2 ["Bind"]
  CALL R1 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["onToolChanged"]
  NAMECALL R1 R1 K4 ["Connect"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Tools"]
  NEWTABLE R3 0 1
  GETTABLEKS R4 R0 K1 ["Uri"]
  SETLIST R3 R4 1 [1]
  NAMECALL R1 R1 K5 ["Get"]
  CALL R1 2 1
  GETUPVAL R2 0
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  NAMECALL R2 R2 K6 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Tools"]
  NAMECALL R0 R0 K1 ["List"]
  CALL R0 1 1
  MOVE R1 R0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Tools"]
  MOVE R8 R5
  NAMECALL R6 R6 K2 ["Bind"]
  CALL R6 2 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["onToolChanged"]
  NAMECALL R6 R6 K4 ["Connect"]
  CALL R6 2 0
  FORGLOOP R1 2 [-14]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Tools"]
  MOVE R3 R0
  NAMECALL R1 R1 K5 ["Get"]
  CALL R1 2 1
  GETUPVAL R2 0
  DUPTABLE R4 K7 [{"customTools"}]
  SETTABLEKS R1 R4 K6 ["customTools"]
  NAMECALL R2 R2 K8 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Plugin"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+24]
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+21]
  GETTABLEKS R3 R1 K1 ["Plugin"]
  LOADK R5 K2 ["PlaceManager"]
  NAMECALL R3 R3 K3 ["GetPluginComponent"]
  CALL R3 2 1
  GETTABLEKS R4 R3 K4 ["PlaceDocPanelShown"]
  GETTABLEKS R6 R0 K5 ["expand"]
  NAMECALL R4 R4 K6 ["Connect"]
  CALL R4 2 0
  GETTABLEKS R4 R3 K7 ["PlaceDocPanelClosed"]
  GETTABLEKS R6 R0 K8 ["compact"]
  NAMECALL R4 R4 K6 ["Connect"]
  CALL R4 2 0
  JUMP [+16]
  GETTABLEKS R3 R2 K9 ["MultipleDocumentInterfaceInstance"]
  GETTABLEKS R4 R3 K10 ["DataModelSessionStarted"]
  GETTABLEKS R6 R0 K5 ["expand"]
  NAMECALL R4 R4 K6 ["Connect"]
  CALL R4 2 0
  GETTABLEKS R4 R3 K11 ["DataModelSessionEnded"]
  GETTABLEKS R6 R0 K8 ["compact"]
  NAMECALL R4 R4 K6 ["Connect"]
  CALL R4 2 0
  GETTABLEKS R4 R0 K12 ["Tools"]
  GETTABLEKS R3 R4 K13 ["Added"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NAMECALL R3 R3 K6 ["Connect"]
  CALL R3 2 0
  GETTABLEKS R3 R0 K14 ["Widgets"]
  NEWTABLE R5 0 1
  DUPTABLE R6 K18 [{"Uri", "Widget", "DEPRECATED_PluginGui"}]
  GETTABLEKS R7 R0 K19 ["pluginUri"]
  SETTABLEKS R7 R6 K15 ["Uri"]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K16 ["Widget"]
  SETTABLEKS R7 R6 K16 ["Widget"]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K16 ["Widget"]
  SETTABLEKS R7 R6 K17 ["DEPRECATED_PluginGui"]
  SETLIST R5 R6 1 [1]
  NAMECALL R3 R3 K20 ["Register"]
  CALL R3 2 0
  GETIMPORT R3 K23 [task.defer]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  CALL R3 1 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R2 K2 ["expanded"]
  GETTABLEKS R4 R1 K3 ["Plugin"]
  NAMECALL R5 R4 K4 ["GetUri"]
  CALL R5 1 1
  GETUPVAL R6 0
  CALL R6 0 1
  GETUPVAL R8 1
  GETTABLEKS R9 R2 K5 ["currentTab"]
  GETTABLE R7 R8 R9
  GETTABLEKS R8 R2 K6 ["customTools"]
  GETUPVAL R9 2
  MOVE R10 R7
  CALL R9 1 1
  MOVE R10 R8
  LOADNIL R11
  LOADNIL R12
  FORGPREP R10
  GETTABLEKS R16 R14 K7 ["PreferredToolbarUri"]
  GETTABLEKS R15 R16 K8 ["PluginId"]
  GETTABLEKS R16 R5 K8 ["PluginId"]
  JUMPIFNOTEQ R15 R16 [+35]
  GETTABLEKS R16 R14 K7 ["PreferredToolbarUri"]
  GETTABLEKS R15 R16 K9 ["DataModel"]
  GETTABLEKS R16 R5 K9 ["DataModel"]
  JUMPIFNOTEQ R15 R16 [+27]
  GETTABLEKS R16 R14 K7 ["PreferredToolbarUri"]
  GETTABLEKS R15 R16 K10 ["PluginType"]
  GETTABLEKS R16 R5 K10 ["PluginType"]
  JUMPIFNOTEQ R15 R16 [+19]
  GETTABLEKS R16 R14 K7 ["PreferredToolbarUri"]
  GETTABLEKS R15 R16 K11 ["ItemId"]
  LOADK R17 K12 ["Tabs/%*"]
  GETTABLEKS R19 R2 K5 ["currentTab"]
  NAMECALL R17 R17 K13 ["format"]
  CALL R17 2 1
  MOVE R16 R17
  JUMPIFNOTEQ R15 R16 [+6]
  GETUPVAL R15 3
  MOVE R16 R9
  GETTABLEKS R17 R14 K14 ["Controls"]
  CALL R15 2 0
  FORGLOOP R10 2 [-43]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K15 ["provide"]
  NEWTABLE R11 0 7
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K16 ["new"]
  MOVE R13 R4
  CALL R12 1 1
  GETTABLEKS R13 R0 K17 ["mouse"]
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K16 ["new"]
  GETTABLEKS R15 R1 K18 ["Widget"]
  CALL R14 1 1
  GETUPVAL R16 7
  GETTABLEKS R15 R16 K16 ["new"]
  GETTABLEKS R16 R0 K19 ["design"]
  CALL R15 1 1
  GETTABLEKS R16 R0 K20 ["theme"]
  GETTABLEKS R17 R0 K21 ["localization"]
  GETTABLEKS R18 R0 K22 ["analytics"]
  SETLIST R11 R12 7 [1]
  DUPTABLE R12 K24 [{"Surface"}]
  GETUPVAL R14 8
  GETTABLEKS R13 R14 K25 ["createElement"]
  LOADK R14 K26 ["Frame"]
  NEWTABLE R15 2 0
  GETUPVAL R18 8
  GETTABLEKS R17 R18 K27 ["Change"]
  GETTABLEKS R16 R17 K28 ["AbsoluteSize"]
  GETTABLEKS R17 R0 K29 ["onResize"]
  SETTABLE R17 R15 R16
  GETUPVAL R17 8
  GETTABLEKS R16 R17 K30 ["Tag"]
  LOADK R17 K31 ["Role-Surface100 X-Fill X-Column"]
  SETTABLE R17 R15 R16
  DUPTABLE R16 K36 [{"Mezzanine", "Divider", "Buttons", "StyleLink"}]
  GETUPVAL R18 8
  GETTABLEKS R17 R18 K25 ["createElement"]
  LOADK R18 K26 ["Frame"]
  NEWTABLE R19 4 0
  MOVE R20 R6
  CALL R20 0 1
  SETTABLEKS R20 R19 K37 ["LayoutOrder"]
  GETIMPORT R20 K39 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  LOADN R24 44
  CALL R20 4 1
  SETTABLEKS R20 R19 K40 ["Size"]
  GETUPVAL R21 8
  GETTABLEKS R20 R21 K30 ["Tag"]
  LOADK R21 K41 ["Role-Surface"]
  SETTABLE R21 R19 R20
  DUPTABLE R20 K45 [{"Left", "Tabs", "Right"}]
  JUMPIFNOT R3 [+64]
  GETUPVAL R22 8
  GETTABLEKS R21 R22 K25 ["createElement"]
  LOADK R22 K26 ["Frame"]
  NEWTABLE R23 4 0
  GETIMPORT R24 K47 [Vector2.new]
  LOADN R25 0
  LOADK R26 K48 [0.5]
  CALL R24 2 1
  SETTABLEKS R24 R23 K49 ["AnchorPoint"]
  GETIMPORT R24 K39 [UDim2.new]
  LOADN R25 0
  LOADN R26 0
  LOADK R27 K48 [0.5]
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K50 ["Position"]
  GETUPVAL R25 8
  GETTABLEKS R24 R25 K30 ["Tag"]
  LOADK R25 K51 ["Role-Surface X-Fit X-Row"]
  SETTABLE R25 R23 R24
  DUPTABLE R24 K53 [{"LeftMezzanineControls"}]
  GETUPVAL R26 8
  GETTABLEKS R25 R26 K25 ["createElement"]
  GETUPVAL R26 9
  NEWTABLE R27 4 0
  GETUPVAL R28 10
  GETTABLEKS R29 R0 K54 ["pluginUri"]
  DUPTABLE R30 K56 [{"Category", "ItemId"}]
  LOADK R31 K57 ["Widgets"]
  SETTABLEKS R31 R30 K55 ["Category"]
  LOADK R31 K58 ["LeftMezzanine"]
  SETTABLEKS R31 R30 K11 ["ItemId"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K59 ["WidgetUri"]
  GETTABLEKS R28 R1 K3 ["Plugin"]
  SETTABLEKS R28 R27 K3 ["Plugin"]
  GETUPVAL R28 11
  SETTABLEKS R28 R27 K14 ["Controls"]
  GETUPVAL R29 8
  GETTABLEKS R28 R29 K30 ["Tag"]
  LOADK R29 K60 ["X-MezzPaddingLeft X-Middle X-RowSpace100 X-Fit"]
  SETTABLE R29 R27 R28
  CALL R25 2 1
  SETTABLEKS R25 R24 K52 ["LeftMezzanineControls"]
  CALL R21 3 1
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K42 ["Left"]
  JUMPIFNOT R3 [+36]
  GETUPVAL R22 8
  GETTABLEKS R21 R22 K25 ["createElement"]
  GETUPVAL R22 12
  DUPTABLE R23 K64 [{"WidgetUri", "LayoutOrder", "OnSelectTab", "ActiveTab", "Scale"}]
  GETUPVAL R24 10
  GETTABLEKS R25 R0 K54 ["pluginUri"]
  DUPTABLE R26 K56 [{"Category", "ItemId"}]
  LOADK R27 K57 ["Widgets"]
  SETTABLEKS R27 R26 K55 ["Category"]
  LOADK R27 K43 ["Tabs"]
  SETTABLEKS R27 R26 K11 ["ItemId"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K59 ["WidgetUri"]
  MOVE R24 R6
  CALL R24 0 1
  SETTABLEKS R24 R23 K37 ["LayoutOrder"]
  GETTABLEKS R24 R0 K65 ["onSelectTab"]
  SETTABLEKS R24 R23 K61 ["OnSelectTab"]
  GETTABLEKS R24 R2 K5 ["currentTab"]
  SETTABLEKS R24 R23 K62 ["ActiveTab"]
  GETTABLEKS R24 R2 K66 ["scale"]
  SETTABLEKS R24 R23 K63 ["Scale"]
  CALL R21 2 1
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K43 ["Tabs"]
  GETUPVAL R22 8
  GETTABLEKS R21 R22 K25 ["createElement"]
  LOADK R22 K26 ["Frame"]
  NEWTABLE R23 4 0
  GETIMPORT R24 K47 [Vector2.new]
  LOADN R25 1
  LOADK R26 K48 [0.5]
  CALL R24 2 1
  SETTABLEKS R24 R23 K49 ["AnchorPoint"]
  GETIMPORT R24 K39 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADK R27 K48 [0.5]
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K50 ["Position"]
  GETUPVAL R25 8
  GETTABLEKS R24 R25 K30 ["Tag"]
  LOADK R25 K51 ["Role-Surface X-Fit X-Row"]
  SETTABLE R25 R23 R24
  DUPTABLE R24 K68 [{"RightMezzanineControls"}]
  GETUPVAL R26 8
  GETTABLEKS R25 R26 K25 ["createElement"]
  GETUPVAL R26 9
  NEWTABLE R27 4 0
  GETUPVAL R28 10
  GETTABLEKS R29 R0 K54 ["pluginUri"]
  DUPTABLE R30 K56 [{"Category", "ItemId"}]
  LOADK R31 K57 ["Widgets"]
  SETTABLEKS R31 R30 K55 ["Category"]
  LOADK R31 K69 ["RightMezzanine"]
  SETTABLEKS R31 R30 K11 ["ItemId"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K59 ["WidgetUri"]
  GETTABLEKS R28 R1 K3 ["Plugin"]
  SETTABLEKS R28 R27 K3 ["Plugin"]
  JUMPIFNOT R3 [+2]
  GETUPVAL R28 13
  JUMP [+1]
  GETUPVAL R28 14
  SETTABLEKS R28 R27 K14 ["Controls"]
  GETUPVAL R29 8
  GETTABLEKS R28 R29 K30 ["Tag"]
  GETUPVAL R30 15
  JUMPIFNOT R30 [+2]
  LOADK R29 K70 ["X-MezzPaddingLeft X-MezzPaddingRight X-Middle X-Right X-RowSpace100 X-Fit"]
  JUMP [+1]
  LOADK R29 K71 ["X-MezzPaddingLeft X-MezzPaddingRight X-Right X-RowSpace100 X-Fit"]
  SETTABLE R29 R27 R28
  CALL R25 2 1
  SETTABLEKS R25 R24 K67 ["RightMezzanineControls"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K44 ["Right"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K32 ["Mezzanine"]
  JUMPIFNOT R3 [+25]
  GETUPVAL R18 8
  GETTABLEKS R17 R18 K25 ["createElement"]
  LOADK R18 K26 ["Frame"]
  NEWTABLE R19 2 0
  MOVE R20 R6
  CALL R20 0 1
  SETTABLEKS R20 R19 K37 ["LayoutOrder"]
  GETUPVAL R21 8
  GETTABLEKS R20 R21 K30 ["Tag"]
  LOADK R21 K72 ["Role-Surface Role-DividerH"]
  SETTABLE R21 R19 R20
  DUPTABLE R20 K73 [{"Divider"}]
  GETUPVAL R22 8
  GETTABLEKS R21 R22 K25 ["createElement"]
  LOADK R22 K26 ["Frame"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K33 ["Divider"]
  CALL R17 3 1
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K33 ["Divider"]
  JUMPIFNOT R3 [+45]
  GETUPVAL R18 8
  GETTABLEKS R17 R18 K25 ["createElement"]
  GETUPVAL R18 9
  NEWTABLE R19 8 0
  GETUPVAL R20 10
  GETTABLEKS R21 R0 K54 ["pluginUri"]
  DUPTABLE R22 K56 [{"Category", "ItemId"}]
  LOADK R23 K57 ["Widgets"]
  SETTABLEKS R23 R22 K55 ["Category"]
  LOADK R24 K12 ["Tabs/%*"]
  GETTABLEKS R26 R2 K5 ["currentTab"]
  NAMECALL R24 R24 K13 ["format"]
  CALL R24 2 1
  MOVE R23 R24
  SETTABLEKS R23 R22 K11 ["ItemId"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K59 ["WidgetUri"]
  MOVE R20 R6
  CALL R20 0 1
  SETTABLEKS R20 R19 K37 ["LayoutOrder"]
  GETTABLEKS R20 R1 K3 ["Plugin"]
  SETTABLEKS R20 R19 K3 ["Plugin"]
  SETTABLEKS R9 R19 K14 ["Controls"]
  LOADB R20 1
  SETTABLEKS R20 R19 K74 ["ShowMore"]
  GETUPVAL R21 8
  GETTABLEKS R20 R21 K30 ["Tag"]
  LOADK R21 K75 ["X-PadRibbon X-Middle X-RowSpace100 X-FitX"]
  SETTABLE R21 R19 R20
  CALL R17 2 1
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K34 ["Buttons"]
  GETUPVAL R18 8
  GETTABLEKS R17 R18 K25 ["createElement"]
  LOADK R18 K35 ["StyleLink"]
  DUPTABLE R19 K77 [{"StyleSheet"}]
  GETTABLEKS R20 R0 K19 ["design"]
  SETTABLEKS R20 R19 K76 ["StyleSheet"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K35 ["StyleLink"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K23 ["Surface"]
  CALL R10 2 -1
  RETURN R10 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["SharedFlags"]
  GETTABLEKS R3 R4 K10 ["getFFlagLuaRibbonSocialPresence"]
  CALL R2 1 1
  CALL R2 0 1
  JUMPIFNOT R2 [+10]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["AnalyticsHandlers"]
  CALL R3 1 1
  JUMP [+1]
  LOADNIL R3
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K14 ["Styling"]
  GETTABLEKS R6 R4 K15 ["Style"]
  GETTABLEKS R7 R6 K16 ["makeTheme"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K17 ["Types"]
  CALL R8 1 1
  GETTABLEKS R9 R4 K18 ["ContextServices"]
  GETTABLEKS R10 R5 K19 ["registerPluginStyles"]
  GETTABLEKS R11 R9 K20 ["Plugin"]
  GETTABLEKS R12 R9 K21 ["Focus"]
  GETTABLEKS R13 R9 K22 ["Mouse"]
  GETTABLEKS R15 R4 K11 ["Util"]
  GETTABLEKS R14 R15 K23 ["counter"]
  GETTABLEKS R18 R0 K8 ["Src"]
  GETTABLEKS R17 R18 K24 ["Resources"]
  GETTABLEKS R16 R17 K25 ["Localization"]
  GETTABLEKS R15 R16 K26 ["SourceStrings"]
  GETTABLEKS R19 R0 K8 ["Src"]
  GETTABLEKS R18 R19 K24 ["Resources"]
  GETTABLEKS R17 R18 K25 ["Localization"]
  GETTABLEKS R16 R17 K27 ["LocalizedStrings"]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K8 ["Src"]
  GETTABLEKS R19 R20 K11 ["Util"]
  GETTABLEKS R18 R19 K28 ["SettingsHelper"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K8 ["Src"]
  GETTABLEKS R20 R21 K11 ["Util"]
  GETTABLEKS R19 R20 K29 ["DesignContext"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K8 ["Src"]
  GETTABLEKS R21 R22 K11 ["Util"]
  GETTABLEKS R20 R21 K30 ["StudioUri"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R22 R0 K6 ["Packages"]
  GETTABLEKS R21 R22 K31 ["Dash"]
  CALL R20 1 1
  GETTABLEKS R21 R20 K32 ["append"]
  GETTABLEKS R22 R20 K33 ["copy"]
  GETTABLEKS R23 R20 K34 ["map"]
  GETTABLEKS R24 R20 K35 ["join"]
  GETIMPORT R25 K5 [require]
  GETTABLEKS R28 R0 K8 ["Src"]
  GETTABLEKS R27 R28 K36 ["Components"]
  GETTABLEKS R26 R27 K37 ["RibbonTabs"]
  CALL R25 1 1
  GETIMPORT R26 K5 [require]
  GETTABLEKS R29 R0 K8 ["Src"]
  GETTABLEKS R28 R29 K36 ["Components"]
  GETTABLEKS R27 R28 K38 ["ControlsView"]
  CALL R26 1 1
  GETIMPORT R27 K5 [require]
  GETTABLEKS R31 R0 K8 ["Src"]
  GETTABLEKS R30 R31 K24 ["Resources"]
  GETTABLEKS R29 R30 K39 ["Tabs"]
  GETTABLEKS R28 R29 K40 ["HomeTab"]
  CALL R27 1 1
  GETIMPORT R28 K5 [require]
  GETTABLEKS R32 R0 K8 ["Src"]
  GETTABLEKS R31 R32 K24 ["Resources"]
  GETTABLEKS R30 R31 K39 ["Tabs"]
  GETTABLEKS R29 R30 K41 ["ModelTab"]
  CALL R28 1 1
  GETIMPORT R29 K5 [require]
  GETTABLEKS R33 R0 K8 ["Src"]
  GETTABLEKS R32 R33 K24 ["Resources"]
  GETTABLEKS R31 R32 K39 ["Tabs"]
  GETTABLEKS R30 R31 K42 ["AvatarTab"]
  CALL R29 1 1
  GETIMPORT R30 K5 [require]
  GETTABLEKS R34 R0 K8 ["Src"]
  GETTABLEKS R33 R34 K24 ["Resources"]
  GETTABLEKS R32 R33 K39 ["Tabs"]
  GETTABLEKS R31 R32 K43 ["UITab"]
  CALL R30 1 1
  GETIMPORT R31 K5 [require]
  GETTABLEKS R35 R0 K8 ["Src"]
  GETTABLEKS R34 R35 K24 ["Resources"]
  GETTABLEKS R33 R34 K39 ["Tabs"]
  GETTABLEKS R32 R33 K44 ["ScriptTab"]
  CALL R31 1 1
  GETIMPORT R32 K5 [require]
  GETTABLEKS R36 R0 K8 ["Src"]
  GETTABLEKS R35 R36 K24 ["Resources"]
  GETTABLEKS R34 R35 K39 ["Tabs"]
  GETTABLEKS R33 R34 K45 ["PluginsTab"]
  CALL R32 1 1
  GETIMPORT R33 K5 [require]
  GETTABLEKS R37 R0 K8 ["Src"]
  GETTABLEKS R36 R37 K24 ["Resources"]
  GETTABLEKS R35 R36 K46 ["Mezzanines"]
  GETTABLEKS R34 R35 K47 ["LeftMezzanine"]
  CALL R33 1 1
  GETIMPORT R34 K5 [require]
  GETTABLEKS R38 R0 K8 ["Src"]
  GETTABLEKS R37 R38 K24 ["Resources"]
  GETTABLEKS R36 R37 K46 ["Mezzanines"]
  GETTABLEKS R35 R36 K48 ["RightMezzanine"]
  CALL R34 1 1
  GETIMPORT R35 K5 [require]
  GETTABLEKS R39 R0 K8 ["Src"]
  GETTABLEKS R38 R39 K24 ["Resources"]
  GETTABLEKS R37 R38 K46 ["Mezzanines"]
  GETTABLEKS R36 R37 K49 ["RightMezzanineStartPage"]
  CALL R35 1 1
  GETIMPORT R36 K5 [require]
  GETTABLEKS R39 R0 K8 ["Src"]
  GETTABLEKS R38 R39 K9 ["SharedFlags"]
  GETTABLEKS R37 R38 K50 ["getFFlagStudioEnableInteractionTelemetry"]
  CALL R36 1 1
  GETIMPORT R37 K5 [require]
  GETTABLEKS R40 R0 K8 ["Src"]
  GETTABLEKS R39 R40 K9 ["SharedFlags"]
  GETTABLEKS R38 R39 K51 ["getFFlagStudioFixOpenPlaceOverhaulLayout"]
  CALL R37 1 1
  GETIMPORT R38 K5 [require]
  GETTABLEKS R41 R0 K8 ["Src"]
  GETTABLEKS R40 R41 K9 ["SharedFlags"]
  GETTABLEKS R39 R40 K52 ["getFFlagStudioOpenPlaceOverhaul"]
  CALL R38 1 1
  GETTABLEKS R39 R1 K53 ["PureComponent"]
  LOADK R41 K54 ["MainPlugin"]
  NAMECALL R39 R39 K55 ["extend"]
  CALL R39 2 1
  DUPTABLE R40 K62 [{"Home", "Model", "Avatar", "UI", "Script", "Plugins"}]
  SETTABLEKS R27 R40 K56 ["Home"]
  SETTABLEKS R28 R40 K57 ["Model"]
  SETTABLEKS R29 R40 K58 ["Avatar"]
  SETTABLEKS R30 R40 K59 ["UI"]
  SETTABLEKS R31 R40 K60 ["Script"]
  SETTABLEKS R32 R40 K61 ["Plugins"]
  DUPCLOSURE R41 K63 [PROTO_8]
  CAPTURE VAL R37
  CAPTURE VAL R38
  CAPTURE VAL R36
  CAPTURE VAL R24
  CAPTURE VAL R9
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R19
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R13
  CAPTURE VAL R23
  CAPTURE VAL R17
  SETTABLEKS R41 R39 K64 ["init"]
  DUPCLOSURE R41 K65 [PROTO_12]
  CAPTURE VAL R37
  CAPTURE VAL R38
  CAPTURE VAL R21
  SETTABLEKS R41 R39 K66 ["didMount"]
  DUPCLOSURE R41 K67 [PROTO_13]
  CAPTURE VAL R14
  CAPTURE VAL R40
  CAPTURE VAL R22
  CAPTURE VAL R21
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R18
  CAPTURE VAL R1
  CAPTURE VAL R26
  CAPTURE VAL R24
  CAPTURE VAL R33
  CAPTURE VAL R25
  CAPTURE VAL R34
  CAPTURE VAL R35
  CAPTURE VAL R2
  SETTABLEKS R41 R39 K68 ["render"]
  RETURN R39 1
