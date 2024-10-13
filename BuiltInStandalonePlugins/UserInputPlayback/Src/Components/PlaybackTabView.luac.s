PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  LOADB R3 1
  GETTABLEKS R4 R1 K2 ["PluginState"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["PluginState"]
  GETTABLEKS R5 R6 K3 ["Playing"]
  JUMPIFEQ R4 R5 [+12]
  GETTABLEKS R4 R1 K2 ["PluginState"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["PluginState"]
  GETTABLEKS R5 R6 K4 ["Disabled"]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K13 [{"Size", "AutomaticSize", "Padding", "Layout", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R7 K16 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K6 ["Size"]
  GETIMPORT R7 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K7 ["AutomaticSize"]
  GETTABLEKS R7 R2 K20 ["PaddingPx"]
  SETTABLEKS R7 R6 K8 ["Padding"]
  GETIMPORT R7 K23 [Enum.FillDirection.Vertical]
  SETTABLEKS R7 R6 K9 ["Layout"]
  GETIMPORT R7 K25 [UDim.new]
  LOADN R8 0
  GETTABLEKS R9 R2 K20 ["PaddingPx"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K10 ["Spacing"]
  GETIMPORT R7 K27 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R7 R6 K11 ["HorizontalAlignment"]
  GETIMPORT R7 K29 [Enum.VerticalAlignment.Top]
  SETTABLEKS R7 R6 K12 ["VerticalAlignment"]
  DUPTABLE R7 K33 [{"FileSelector", "PlaybackInfoGroup", "FilterSettings"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K36 [{"LayoutOrder", "RoduxStoreContext"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K34 ["LayoutOrder"]
  LOADK R11 K37 ["playbackTabFilter"]
  SETTABLEKS R11 R10 K35 ["RoduxStoreContext"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K30 ["FileSelector"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K38 [{"LayoutOrder"}]
  LOADN R11 2
  SETTABLEKS R11 R10 K34 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K31 ["PlaybackInfoGroup"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["createElement"]
  GETUPVAL R9 5
  DUPTABLE R10 K39 [{"LayoutOrder", "RoduxStoreContext", "Disabled"}]
  LOADN R11 3
  SETTABLEKS R11 R10 K34 ["LayoutOrder"]
  LOADK R11 K37 ["playbackTabFilter"]
  SETTABLEKS R11 R10 K35 ["RoduxStoreContext"]
  SETTABLEKS R3 R10 K4 ["Disabled"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K32 ["FilterSettings"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_1:
  DUPTABLE R2 K1 [{"PluginState"}]
  GETTABLEKS R4 R0 K2 ["common"]
  GETTABLEKS R3 R4 K3 ["pluginState"]
  SETTABLEKS R3 R2 K0 ["PluginState"]
  RETURN R2 1

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
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R3 K10 ["UI"]
  GETTABLEKS R6 R5 K11 ["Pane"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K13 ["Util"]
  GETTABLEKS R8 R9 K14 ["Enums"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K15 ["Components"]
  GETTABLEKS R9 R10 K16 ["FileSelectorUIGroup"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K12 ["Src"]
  GETTABLEKS R11 R12 K15 ["Components"]
  GETTABLEKS R10 R11 K17 ["PlaybackInfoUIGroup"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K12 ["Src"]
  GETTABLEKS R12 R13 K15 ["Components"]
  GETTABLEKS R11 R12 K18 ["FilterSettingsUIGroup"]
  CALL R10 1 1
  GETTABLEKS R11 R1 K19 ["PureComponent"]
  LOADK R13 K20 ["PlaybackTabView"]
  NAMECALL R11 R11 K21 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K22 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R12 R11 K23 ["render"]
  GETTABLEKS R12 R4 K24 ["withContext"]
  DUPTABLE R13 K26 [{"Stylizer"}]
  GETTABLEKS R14 R4 K25 ["Stylizer"]
  SETTABLEKS R14 R13 K25 ["Stylizer"]
  CALL R12 1 1
  MOVE R13 R11
  CALL R12 1 1
  MOVE R11 R12
  DUPCLOSURE R12 K27 [PROTO_1]
  GETTABLEKS R13 R2 K28 ["connect"]
  MOVE R14 R12
  LOADNIL R15
  CALL R13 2 1
  MOVE R14 R11
  CALL R13 1 -1
  RETURN R13 -1
