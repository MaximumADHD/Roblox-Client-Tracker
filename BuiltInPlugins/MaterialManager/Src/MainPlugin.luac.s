PROTO_0:
  DUPTABLE R1 K1 [{"enabled"}]
  GETTABLEKS R3 R0 K0 ["enabled"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["enabled"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_0]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  SETTABLEKS R0 R3 K0 ["enabled"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  GETTABLEKS R4 R0 K2 ["Enabled"]
  SETTABLEKS R4 R3 K0 ["enabled"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onClose"]
  CALL R0 0 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R2 R1 K0 ["Plugin"]
  DUPTABLE R3 K2 [{"enabled"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K1 ["enabled"]
  SETTABLEKS R3 R0 K3 ["state"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["Networking"]
  GETTABLEKS R3 R4 K5 ["new"]
  DUPTABLE R4 K7 [{"isInternal"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K6 ["isInternal"]
  CALL R3 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["new"]
  MOVE R5 R3
  CALL R4 1 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["new"]
  MOVE R6 R4
  CALL R5 1 1
  SETTABLEKS R5 R0 K8 ["assetHandler"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K5 ["new"]
  CALL R5 0 1
  SETTABLEKS R5 R0 K9 ["imageLoader"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  SETTABLEKS R5 R0 K10 ["toggleEnabled"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  SETTABLEKS R5 R0 K11 ["onClose"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  SETTABLEKS R5 R0 K12 ["onRestore"]
  NEWCLOSURE R5 P3
  CAPTURE VAL R0
  SETTABLEKS R5 R0 K13 ["onWidgetEnabledChanged"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K14 ["Store"]
  GETTABLEKS R5 R6 K5 ["new"]
  GETUPVAL R6 5
  LOADNIL R7
  NEWTABLE R8 0 1
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K15 ["thunkMiddleware"]
  SETLIST R8 R9 1 [1]
  LOADNIL R9
  CALL R5 4 1
  SETTABLEKS R5 R0 K16 ["store"]
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K17 ["Localization"]
  GETTABLEKS R5 R6 K5 ["new"]
  DUPTABLE R6 K21 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R7 7
  SETTABLEKS R7 R6 K18 ["stringResourceTable"]
  GETUPVAL R7 8
  SETTABLEKS R7 R6 K19 ["translationResourceTable"]
  LOADK R7 K22 ["MaterialManager"]
  SETTABLEKS R7 R6 K20 ["pluginName"]
  CALL R5 1 1
  SETTABLEKS R5 R0 K23 ["localization"]
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K24 ["Analytics"]
  GETTABLEKS R5 R6 K5 ["new"]
  GETUPVAL R6 9
  CALL R5 1 1
  SETTABLEKS R5 R0 K25 ["analytics"]
  GETUPVAL R6 10
  GETTABLEKS R5 R6 K5 ["new"]
  GETTABLEKS R6 R0 K16 ["store"]
  CALL R5 1 1
  SETTABLEKS R5 R0 K26 ["materialServiceController"]
  GETUPVAL R6 11
  GETTABLEKS R5 R6 K5 ["new"]
  CALL R5 0 1
  SETTABLEKS R5 R0 K27 ["generalServiceController"]
  GETUPVAL R6 12
  GETTABLEKS R5 R6 K5 ["new"]
  MOVE R6 R2
  GETTABLEKS R7 R0 K16 ["store"]
  NAMECALL R8 R2 K28 ["getMouse"]
  CALL R8 1 1
  GETTABLEKS R9 R0 K27 ["generalServiceController"]
  CALL R5 4 1
  SETTABLEKS R5 R0 K29 ["pluginController"]
  GETTABLEKS R5 R0 K29 ["pluginController"]
  NAMECALL R5 R5 K30 ["initialize"]
  CALL R5 1 0
  GETIMPORT R5 K32 [game]
  LOADK R7 K33 ["MaterialPickerBetaEnabled"]
  NAMECALL R5 R5 K34 ["GetEngineFeature"]
  CALL R5 2 1
  JUMPIF R5 [+7]
  GETIMPORT R5 K32 [game]
  LOADK R7 K35 ["ShowMaterialManagerFromElsewhere"]
  NAMECALL R5 R5 K36 ["GetFastFlag"]
  CALL R5 2 1
  JUMPIFNOT R5 [+18]
  GETUPVAL R5 13
  GETUPVAL R8 14
  GETTABLEKS R7 R8 K37 ["SHOW_MATERIAL_MANAGER_PLUGIN_EVENT"]
  NEWCLOSURE R8 P4
  CAPTURE VAL R0
  NAMECALL R5 R5 K38 ["Bind"]
  CALL R5 3 0
  GETUPVAL R5 13
  GETUPVAL R8 14
  GETTABLEKS R7 R8 K39 ["HIDE_MATERIAL_MANAGER_PLUGIN_EVENT"]
  NEWCLOSURE R8 P5
  CAPTURE VAL R0
  NAMECALL R5 R5 K38 ["Bind"]
  CALL R5 3 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["imageLoader"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["imageLoader"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["materialServiceController"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K2 ["materialServiceController"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["generalServiceController"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K3 ["generalServiceController"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K4 ["pluginController"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K4 ["pluginController"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R3 R0 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["enabled"]
  DUPTABLE R3 K3 [{"Toggle"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K12 [{"Toolbar", "Active", "Title", "Tooltip", "Icon", "OnClick", "ClickableWhenViewportHidden"}]
  SETTABLEKS R1 R6 K5 ["Toolbar"]
  SETTABLEKS R2 R6 K6 ["Active"]
  LOADK R7 K13 ["MaterialManager"]
  SETTABLEKS R7 R6 K7 ["Title"]
  LOADK R7 K14 [""]
  SETTABLEKS R7 R6 K8 ["Tooltip"]
  LOADK R7 K14 [""]
  SETTABLEKS R7 R6 K9 ["Icon"]
  GETTABLEKS R7 R0 K15 ["toggleEnabled"]
  SETTABLEKS R7 R6 K10 ["OnClick"]
  LOADB R7 1
  SETTABLEKS R7 R6 K11 ["ClickableWhenViewportHidden"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["Toggle"]
  RETURN R3 1

PROTO_10:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["renderButtons"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_11:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["enabled"]
  GETUPVAL R5 0
  CALL R5 0 1
  JUMPIFNOT R5 [+11]
  GETUPVAL R5 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K4 ["MATERIAL_MANAGER_ENABLED"]
  JUMPIFNOT R4 [+2]
  LOADK R8 K5 ["true"]
  JUMP [+1]
  LOADK R8 K6 ["false"]
  NAMECALL R5 R5 K7 ["setItem"]
  CALL R5 3 0
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K8 ["provide"]
  NEWTABLE R6 0 11
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K9 ["new"]
  MOVE R8 R3
  CALL R7 1 1
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K9 ["new"]
  GETTABLEKS R9 R0 K10 ["store"]
  CALL R8 1 1
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K9 ["new"]
  NAMECALL R10 R3 K11 ["getMouse"]
  CALL R10 1 -1
  CALL R9 -1 1
  GETUPVAL R10 7
  CALL R10 0 1
  GETTABLEKS R11 R0 K12 ["localization"]
  GETTABLEKS R12 R0 K13 ["analytics"]
  GETTABLEKS R13 R0 K14 ["generalServiceController"]
  GETTABLEKS R14 R0 K15 ["materialServiceController"]
  GETTABLEKS R15 R0 K16 ["imageLoader"]
  GETTABLEKS R16 R0 K17 ["assetHandler"]
  GETTABLEKS R17 R0 K18 ["pluginController"]
  SETLIST R6 R7 11 [1]
  DUPTABLE R7 K21 [{"Toolbar", "MainWidget"}]
  GETUPVAL R9 8
  GETTABLEKS R8 R9 K22 ["createElement"]
  GETUPVAL R9 9
  DUPTABLE R10 K25 [{"Title", "RenderButtons"}]
  LOADK R11 K26 ["Edit"]
  SETTABLEKS R11 R10 K23 ["Title"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R0
  SETTABLEKS R11 R10 K24 ["RenderButtons"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K19 ["Toolbar"]
  GETUPVAL R9 8
  GETTABLEKS R8 R9 K22 ["createElement"]
  GETUPVAL R9 10
  DUPTABLE R10 K36 [{"Id", "Enabled", "Title", "ZIndexBehavior", "InitialDockState", "Size", "MinSize", "OnClose", "ShouldRestore", "OnWidgetRestored"}]
  GETUPVAL R12 11
  JUMPIFNOT R12 [+2]
  LOADK R11 K37 ["MaterialManager"]
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K27 ["Id"]
  SETTABLEKS R4 R10 K28 ["Enabled"]
  GETTABLEKS R11 R0 K12 ["localization"]
  LOADK R13 K2 ["Plugin"]
  LOADK R14 K38 ["Name"]
  NAMECALL R11 R11 K39 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K23 ["Title"]
  GETIMPORT R11 K42 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R11 R10 K29 ["ZIndexBehavior"]
  GETIMPORT R11 K44 [Enum.InitialDockState.Bottom]
  SETTABLEKS R11 R10 K30 ["InitialDockState"]
  GETIMPORT R11 K46 [Vector2.new]
  LOADN R12 128
  LOADN R13 224
  CALL R11 2 1
  SETTABLEKS R11 R10 K31 ["Size"]
  GETIMPORT R11 K46 [Vector2.new]
  LOADN R12 44
  LOADN R13 200
  CALL R11 2 1
  SETTABLEKS R11 R10 K32 ["MinSize"]
  GETTABLEKS R11 R0 K47 ["onClose"]
  SETTABLEKS R11 R10 K33 ["OnClose"]
  LOADB R11 1
  SETTABLEKS R11 R10 K34 ["ShouldRestore"]
  GETTABLEKS R11 R0 K48 ["onRestore"]
  SETTABLEKS R11 R10 K35 ["OnWidgetRestored"]
  NEWTABLE R11 0 1
  GETUPVAL R13 8
  GETTABLEKS R12 R13 K22 ["createElement"]
  GETUPVAL R13 12
  CALL R12 1 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  SETTABLEKS R8 R7 K20 ["MainWidget"]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioFixPluginWidgetLocalizedIds"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Rodux"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K9 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K13 ["UI"]
  GETTABLEKS R6 R5 K14 ["DockWidget"]
  GETTABLEKS R7 R5 K15 ["PluginButton"]
  GETTABLEKS R8 R5 K16 ["PluginToolbar"]
  GETTABLEKS R9 R4 K17 ["ContextServices"]
  GETTABLEKS R10 R9 K18 ["Plugin"]
  GETTABLEKS R11 R9 K19 ["Mouse"]
  GETTABLEKS R12 R9 K20 ["Store"]
  GETIMPORT R13 K8 [require]
  GETTABLEKS R14 R1 K21 ["SharedPluginConstants"]
  CALL R13 1 1
  GETIMPORT R14 K1 [game]
  LOADK R16 K22 ["MemStorageService"]
  NAMECALL R14 R14 K23 ["GetService"]
  CALL R14 2 1
  GETTABLEKS R15 R4 K24 ["Http"]
  GETIMPORT R16 K8 [require]
  GETTABLEKS R19 R1 K25 ["Src"]
  GETTABLEKS R18 R19 K26 ["Reducers"]
  GETTABLEKS R17 R18 K27 ["MainReducer"]
  CALL R16 1 1
  GETIMPORT R17 K8 [require]
  GETTABLEKS R20 R1 K25 ["Src"]
  GETTABLEKS R19 R20 K28 ["Resources"]
  GETTABLEKS R18 R19 K29 ["MakeTheme"]
  CALL R17 1 1
  GETIMPORT R18 K8 [require]
  GETTABLEKS R21 R1 K25 ["Src"]
  GETTABLEKS R20 R21 K28 ["Resources"]
  GETTABLEKS R19 R20 K30 ["createAnalyticsHandlers"]
  CALL R18 1 1
  GETTABLEKS R22 R1 K25 ["Src"]
  GETTABLEKS R21 R22 K28 ["Resources"]
  GETTABLEKS R20 R21 K31 ["Localization"]
  GETTABLEKS R19 R20 K32 ["SourceStrings"]
  GETTABLEKS R23 R1 K25 ["Src"]
  GETTABLEKS R22 R23 K28 ["Resources"]
  GETTABLEKS R21 R22 K31 ["Localization"]
  GETTABLEKS R20 R21 K33 ["LocalizedStrings"]
  GETTABLEKS R22 R1 K25 ["Src"]
  GETTABLEKS R21 R22 K34 ["Components"]
  GETIMPORT R22 K8 [require]
  GETTABLEKS R23 R21 K35 ["MaterialBrowser"]
  CALL R22 1 1
  GETTABLEKS R24 R1 K25 ["Src"]
  GETTABLEKS R23 R24 K36 ["Controllers"]
  GETIMPORT R24 K8 [require]
  GETTABLEKS R25 R23 K37 ["GeneralServiceController"]
  CALL R24 1 1
  GETIMPORT R25 K8 [require]
  GETTABLEKS R26 R23 K38 ["ImageUploader"]
  CALL R25 1 1
  GETIMPORT R26 K8 [require]
  GETTABLEKS R27 R23 K39 ["ImportAssetHandler"]
  CALL R26 1 1
  GETIMPORT R27 K8 [require]
  GETTABLEKS R28 R23 K40 ["ImageLoader"]
  CALL R27 1 1
  GETIMPORT R28 K8 [require]
  GETTABLEKS R29 R23 K41 ["MaterialServiceController"]
  CALL R28 1 1
  GETIMPORT R29 K8 [require]
  GETTABLEKS R30 R23 K42 ["PluginController"]
  CALL R29 1 1
  GETIMPORT R30 K8 [require]
  GETTABLEKS R33 R1 K25 ["Src"]
  GETTABLEKS R32 R33 K43 ["Flags"]
  GETTABLEKS R31 R32 K44 ["getFFlagMaterialPickerUIChanges"]
  CALL R30 1 1
  GETTABLEKS R31 R2 K45 ["PureComponent"]
  LOADK R33 K46 ["MainPlugin"]
  NAMECALL R31 R31 K47 ["extend"]
  CALL R31 2 1
  DUPCLOSURE R32 K48 [PROTO_7]
  CAPTURE VAL R15
  CAPTURE VAL R25
  CAPTURE VAL R26
  CAPTURE VAL R27
  CAPTURE VAL R3
  CAPTURE VAL R16
  CAPTURE VAL R9
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R18
  CAPTURE VAL R28
  CAPTURE VAL R24
  CAPTURE VAL R29
  CAPTURE VAL R14
  CAPTURE VAL R13
  SETTABLEKS R32 R31 K49 ["init"]
  DUPCLOSURE R32 K50 [PROTO_8]
  SETTABLEKS R32 R31 K51 ["willUnmount"]
  DUPCLOSURE R32 K52 [PROTO_9]
  CAPTURE VAL R2
  CAPTURE VAL R7
  SETTABLEKS R32 R31 K53 ["renderButtons"]
  DUPCLOSURE R32 K54 [PROTO_11]
  CAPTURE VAL R30
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R17
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R0
  CAPTURE VAL R22
  SETTABLEKS R32 R31 K55 ["render"]
  RETURN R31 1
