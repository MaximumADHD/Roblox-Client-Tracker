PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Enabled"]
  GETTABLEKS R4 R1 K3 ["OnClose"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R6 1
  NEWTABLE R7 16 0
  LOADK R8 K5 ["Breakpoints"]
  SETTABLEKS R8 R7 K6 ["Id"]
  LOADK R10 K7 ["BreakpointsWindow"]
  LOADK R11 K8 ["WindowName"]
  NAMECALL R8 R2 K9 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K10 ["Title"]
  GETIMPORT R8 K14 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R8 R7 K12 ["ZIndexBehavior"]
  GETIMPORT R8 K17 [Enum.InitialDockState.Bottom]
  SETTABLEKS R8 R7 K15 ["InitialDockState"]
  GETIMPORT R8 K20 [Vector2.new]
  LOADN R9 238
  LOADN R10 224
  CALL R8 2 1
  SETTABLEKS R8 R7 K21 ["Size"]
  GETIMPORT R8 K20 [Vector2.new]
  LOADN R9 250
  LOADN R10 200
  CALL R8 2 1
  SETTABLEKS R8 R7 K22 ["MinSize"]
  SETTABLEKS R3 R7 K2 ["Enabled"]
  SETTABLEKS R4 R7 K3 ["OnClose"]
  LOADB R8 1
  SETTABLEKS R8 R7 K23 ["ShouldRestore"]
  GETTABLEKS R8 R1 K24 ["OnRestore"]
  SETTABLEKS R8 R7 K25 ["OnWidgetRestored"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K26 ["Change"]
  GETTABLEKS R8 R9 K2 ["Enabled"]
  GETTABLEKS R9 R1 K27 ["OnWidgetEnabledChanged"]
  SETTABLE R9 R7 R8
  DUPTABLE R8 K29 [{"BreakpointsTable"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 2
  CALL R9 1 1
  SETTABLEKS R9 R8 K28 ["BreakpointsTable"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
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
  GETTABLEKS R4 R3 K9 ["DockWidget"]
  GETTABLEKS R5 R2 K10 ["ContextServices"]
  GETTABLEKS R6 R5 K11 ["Localization"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K13 ["Components"]
  GETTABLEKS R9 R10 K14 ["Breakpoints"]
  GETTABLEKS R8 R9 K15 ["BreakpointsTable"]
  CALL R7 1 1
  GETTABLEKS R8 R1 K16 ["PureComponent"]
  LOADK R10 K17 ["BreakpointWindow"]
  NAMECALL R8 R8 K18 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K19 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K20 ["render"]
  GETTABLEKS R9 R5 K21 ["withContext"]
  DUPTABLE R10 K22 [{"Localization"}]
  SETTABLEKS R6 R10 K11 ["Localization"]
  CALL R9 1 1
  MOVE R10 R8
  CALL R9 1 1
  MOVE R8 R9
  RETURN R8 1
