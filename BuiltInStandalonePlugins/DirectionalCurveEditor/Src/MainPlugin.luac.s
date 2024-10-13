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
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["PluginLoaderContext"]
  GETTABLEKS R0 R1 K2 ["mainButtonClickedSignal"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["toggleEnabled"]
  NAMECALL R0 R0 K4 ["Connect"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_7:
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  SETTABLEKS R2 R0 K2 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K3 ["toggleEnabled"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K4 ["onClose"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K5 ["onRestore"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K6 ["onWidgetEnabledChanged"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K7 ["onDockWidgetCreated"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["Localization"]
  GETTABLEKS R2 R3 K9 ["new"]
  DUPTABLE R3 K13 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K10 ["stringResourceTable"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K11 ["translationResourceTable"]
  LOADK R4 K14 ["DirectionalCurveEditor"]
  SETTABLEKS R4 R3 K12 ["pluginName"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K15 ["localization"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K16 ["Analytics"]
  GETTABLEKS R2 R3 K9 ["new"]
  DUPCLOSURE R3 K17 [PROTO_6]
  NEWTABLE R4 0 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K18 ["analytics"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K9 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K19 ["DEPRECATED_stylizer"]
  GETUPVAL R2 4
  GETTABLEKS R3 R1 K20 ["Plugin"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K21 ["design"]
  RETURN R0 0

PROTO_8:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["PluginLoaderContext"]
  GETTABLEKS R1 R2 K2 ["mainButton"]
  GETTABLEKS R4 R0 K3 ["state"]
  GETTABLEKS R3 R4 K4 ["enabled"]
  NAMECALL R1 R1 K5 ["SetActive"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["enabled"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["provide"]
  NEWTABLE R6 0 4
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["new"]
  MOVE R8 R3
  CALL R7 1 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["new"]
  NAMECALL R9 R3 K6 ["getMouse"]
  CALL R9 1 -1
  CALL R8 -1 1
  GETTABLEKS R9 R0 K7 ["localization"]
  GETTABLEKS R10 R0 K8 ["analytics"]
  SETLIST R6 R7 4 [1]
  DUPTABLE R7 K10 [{"MainWidget"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K11 ["createElement"]
  GETUPVAL R9 4
  NEWTABLE R10 16 0
  LOADK R11 K12 ["DirectionalCurveEditor"]
  SETTABLEKS R11 R10 K13 ["Id"]
  SETTABLEKS R4 R10 K14 ["Enabled"]
  GETTABLEKS R11 R0 K7 ["localization"]
  LOADK R13 K2 ["Plugin"]
  LOADK R14 K15 ["Name"]
  NAMECALL R11 R11 K16 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K17 ["Title"]
  GETIMPORT R11 K21 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R11 R10 K19 ["ZIndexBehavior"]
  GETIMPORT R11 K24 [Enum.InitialDockState.Bottom]
  SETTABLEKS R11 R10 K22 ["InitialDockState"]
  GETIMPORT R11 K26 [Vector2.new]
  LOADN R12 128
  LOADN R13 224
  CALL R11 2 1
  SETTABLEKS R11 R10 K27 ["Size"]
  GETIMPORT R11 K26 [Vector2.new]
  LOADN R12 250
  LOADN R13 200
  CALL R11 2 1
  SETTABLEKS R11 R10 K28 ["MinSize"]
  GETTABLEKS R11 R0 K29 ["onClose"]
  SETTABLEKS R11 R10 K30 ["OnClose"]
  GETTABLEKS R12 R1 K31 ["PluginLoaderContext"]
  GETTABLEKS R11 R12 K32 ["mainDockWidget"]
  SETTABLEKS R11 R10 K33 ["Widget"]
  GETTABLEKS R11 R0 K34 ["onDockWidgetCreated"]
  SETTABLEKS R11 R10 K35 ["OnWidgetCreated"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K36 ["Change"]
  GETTABLEKS R11 R12 K14 ["Enabled"]
  GETTABLEKS R12 R0 K37 ["onWidgetEnabledChanged"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K40 [{"Wrapper", "StyleLink"}]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K11 ["createElement"]
  LOADK R13 K41 ["Frame"]
  NEWTABLE R14 1 0
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K42 ["Tag"]
  LOADK R16 K43 ["X-Fill X-Column"]
  SETTABLE R16 R14 R15
  DUPTABLE R15 K45 [{"BasicExample"}]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K11 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K47 [{"showContent"}]
  LOADB R19 1
  SETTABLEKS R19 R18 K46 ["showContent"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K44 ["BasicExample"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K38 ["Wrapper"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K11 ["createElement"]
  LOADK R13 K39 ["StyleLink"]
  DUPTABLE R14 K49 [{"StyleSheet"}]
  GETTABLEKS R15 R0 K50 ["design"]
  SETTABLEKS R15 R14 K48 ["StyleSheet"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K39 ["StyleLink"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K9 ["MainWidget"]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["DirectionalCurveEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["UI"]
  GETTABLEKS R3 R4 K10 ["DockWidget"]
  GETTABLEKS R4 R2 K11 ["ContextServices"]
  GETTABLEKS R5 R4 K12 ["Plugin"]
  GETTABLEKS R6 R4 K13 ["Mouse"]
  GETTABLEKS R9 R2 K14 ["Style"]
  GETTABLEKS R8 R9 K15 ["Themes"]
  GETTABLEKS R7 R8 K16 ["StudioTheme"]
  GETTABLEKS R9 R2 K17 ["Styling"]
  GETTABLEKS R8 R9 K18 ["registerPluginStyles"]
  GETTABLEKS R12 R0 K19 ["Src"]
  GETTABLEKS R11 R12 K20 ["Resources"]
  GETTABLEKS R10 R11 K21 ["Localization"]
  GETTABLEKS R9 R10 K22 ["SourceStrings"]
  GETTABLEKS R13 R0 K19 ["Src"]
  GETTABLEKS R12 R13 K20 ["Resources"]
  GETTABLEKS R11 R12 K21 ["Localization"]
  GETTABLEKS R10 R11 K23 ["LocalizedStrings"]
  GETTABLEKS R12 R0 K19 ["Src"]
  GETTABLEKS R11 R12 K24 ["Components"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R11 K25 ["BasicExample"]
  CALL R12 1 1
  GETTABLEKS R13 R1 K26 ["PureComponent"]
  LOADK R15 K27 ["MainPlugin"]
  NAMECALL R13 R13 K28 ["extend"]
  CALL R13 2 1
  DUPCLOSURE R14 K29 [PROTO_7]
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLEKS R14 R13 K30 ["init"]
  DUPCLOSURE R14 K31 [PROTO_8]
  SETTABLEKS R14 R13 K32 ["didUpdate"]
  DUPCLOSURE R14 K33 [PROTO_9]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R12
  SETTABLEKS R14 R13 K34 ["render"]
  RETURN R13 1
