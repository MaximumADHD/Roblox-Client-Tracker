PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["ToggleAdornment"]
  GETTABLEKS R2 R0 K2 ["id"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"layout"}]
  GETTABLEKS R6 R0 K2 ["AbsoluteSize"]
  GETTABLEKS R5 R6 K3 ["X"]
  GETTABLEKS R7 R0 K2 ["AbsoluteSize"]
  GETTABLEKS R6 R7 K4 ["Y"]
  JUMPIFNOTLT R6 R5 [+4]
  GETIMPORT R4 K8 [Enum.FillDirection.Horizontal]
  JUMP [+2]
  GETIMPORT R4 K10 [Enum.FillDirection.Vertical]
  SETTABLEKS R4 R3 K0 ["layout"]
  NAMECALL R1 R1 K11 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["openedTimestamp"]
  DUPTABLE R1 K2 [{"layout"}]
  GETIMPORT R2 K6 [Enum.FillDirection.Vertical]
  SETTABLEKS R2 R1 K1 ["layout"]
  SETTABLEKS R1 R0 K7 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["onToggleAdornment"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["onAbsoluteSizeChanged"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Plugin"]
  NAMECALL R2 R2 K2 ["get"]
  CALL R2 1 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["SETTINGS"]
  GETTABLEKS R5 R6 K4 ["LayerFilters"]
  NAMECALL R3 R2 K5 ["GetSetting"]
  CALL R3 2 1
  JUMPIFEQKNIL R3 [+12]
  MOVE R4 R3
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R9 R1 K6 ["SetLayerFilter"]
  MOVE R10 R7
  MOVE R11 R8
  CALL R9 2 0
  FORGLOOP R4 2 [-6]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["SETTINGS"]
  GETTABLEKS R6 R7 K7 ["ActiveLayersFilter"]
  NAMECALL R4 R2 K5 ["GetSetting"]
  CALL R4 2 1
  JUMPIFEQKNIL R4 [+5]
  GETTABLEKS R5 R1 K8 ["SetActiveLayersFilter"]
  MOVE R6 R4
  CALL R5 1 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R1 K2 [os.time]
  CALL R1 0 1
  SETTABLEKS R1 R0 K3 ["openedTimestamp"]
  GETTABLEKS R2 R0 K4 ["props"]
  GETTABLEKS R1 R2 K5 ["Analytics"]
  LOADK R3 K6 ["onCompositorOpened"]
  NAMECALL R1 R1 K7 ["report"]
  CALL R1 2 0
  NAMECALL R1 R0 K8 ["readSettings"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Analytics"]
  LOADK R3 K2 ["onCompositorClosed"]
  GETIMPORT R5 K5 [os.time]
  CALL R5 0 1
  GETTABLEKS R6 R0 K6 ["openedTimestamp"]
  SUB R4 R5 R6
  NAMECALL R1 R1 K7 ["report"]
  CALL R1 3 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R2 K3 ["layout"]
  GETTABLEKS R5 R1 K4 ["LayerMap"]
  JUMPIFNOT R5 [+5]
  GETTABLEKS R6 R1 K4 ["LayerMap"]
  GETTABLEKS R7 R1 K5 ["SelectedLayer"]
  GETTABLE R5 R6 R7
  GETTABLEKS R6 R1 K6 ["Overrides"]
  JUMPIFNOT R6 [+5]
  GETTABLEKS R7 R1 K6 ["Overrides"]
  GETTABLEKS R8 R1 K5 ["SelectedLayer"]
  GETTABLE R6 R7 R8
  GETTABLEKS R7 R1 K7 ["ExpandedSections"]
  NEWTABLE R8 0 2
  GETIMPORT R9 K10 [UDim.new]
  LOADK R10 K11 [0.35]
  LOADN R11 0
  CALL R9 2 1
  GETIMPORT R10 K10 [UDim.new]
  LOADK R11 K12 [0.25]
  LOADN R12 0
  CALL R10 2 -1
  SETLIST R8 R9 -1 [1]
  NEWTABLE R9 0 2
  GETIMPORT R10 K10 [UDim.new]
  LOADK R11 K13 [0.6]
  LOADN R12 0
  CALL R10 2 1
  GETIMPORT R11 K10 [UDim.new]
  LOADK R12 K14 [0.4]
  LOADN R13 0
  CALL R11 2 -1
  SETLIST R9 R10 -1 [1]
  GETTABLEKS R10 R1 K15 ["DebugData"]
  JUMPIFNOT R10 [+15]
  GETUPVAL R11 0
  GETTABLEKS R12 R10 K16 ["children"]
  GETTABLEKS R13 R1 K17 ["LayerFilters"]
  GETTABLEKS R14 R1 K18 ["ActiveLayersFilter"]
  CALL R11 3 2
  JUMPIFNOT R12 [+6]
  GETUPVAL R13 1
  MOVE R14 R10
  CALL R13 1 1
  MOVE R10 R13
  SETTABLEKS R11 R10 K16 ["children"]
  NEWTABLE R11 0 2
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K19 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K23 [{"LayoutOrder", "Layout", "VerticalAlignment"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K20 ["LayoutOrder"]
  GETIMPORT R15 K27 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K21 ["Layout"]
  GETIMPORT R15 K29 [Enum.VerticalAlignment.Top]
  SETTABLEKS R15 R14 K22 ["VerticalAlignment"]
  DUPTABLE R15 K32 [{"Toolbar", "LayerTree"}]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K19 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K34 [{"LayoutOrder", "Size"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K20 ["LayoutOrder"]
  GETIMPORT R19 K36 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  GETTABLEKS R23 R3 K37 ["ToolbarHeight"]
  CALL R19 4 1
  SETTABLEKS R19 R18 K33 ["Size"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K30 ["Toolbar"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K19 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K40 [{"LayoutOrder", "Size", "DebugData", "Adornments", "OnToggleAdornment"}]
  LOADN R19 2
  SETTABLEKS R19 R18 K20 ["LayoutOrder"]
  GETIMPORT R19 K36 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 1
  GETTABLEKS R24 R3 K37 ["ToolbarHeight"]
  MINUS R23 R24
  CALL R19 4 1
  SETTABLEKS R19 R18 K33 ["Size"]
  SETTABLEKS R10 R18 K15 ["DebugData"]
  GETTABLEKS R19 R1 K38 ["Adornments"]
  SETTABLEKS R19 R18 K38 ["Adornments"]
  GETTABLEKS R19 R0 K41 ["onToggleAdornment"]
  SETTABLEKS R19 R18 K39 ["OnToggleAdornment"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K31 ["LayerTree"]
  CALL R12 3 1
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K19 ["createElement"]
  GETUPVAL R14 6
  DUPTABLE R15 K47 [{"LayoutOrder", "LayerData", "History", "LastTimestamp", "WriteIndex", "ExpandedSections", "Overrides", "ShowRawPayload"}]
  LOADN R16 2
  SETTABLEKS R16 R15 K20 ["LayoutOrder"]
  SETTABLEKS R5 R15 K42 ["LayerData"]
  GETTABLEKS R16 R1 K43 ["History"]
  SETTABLEKS R16 R15 K43 ["History"]
  GETTABLEKS R17 R1 K44 ["LastTimestamp"]
  ORK R16 R17 K48 [0]
  SETTABLEKS R16 R15 K44 ["LastTimestamp"]
  GETTABLEKS R16 R1 K45 ["WriteIndex"]
  SETTABLEKS R16 R15 K45 ["WriteIndex"]
  SETTABLEKS R7 R15 K7 ["ExpandedSections"]
  SETTABLEKS R6 R15 K6 ["Overrides"]
  GETUPVAL R17 7
  GETTABLEKS R16 R17 K46 ["ShowRawPayload"]
  SETTABLEKS R16 R15 K46 ["ShowRawPayload"]
  CALL R13 2 -1
  SETLIST R11 R12 -1 [1]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K19 ["createElement"]
  GETUPVAL R13 3
  NEWTABLE R14 2 0
  GETIMPORT R15 K50 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K33 ["Size"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K51 ["Change"]
  GETTABLEKS R15 R16 K52 ["AbsoluteSize"]
  GETTABLEKS R16 R0 K53 ["onAbsoluteSizeChanged"]
  SETTABLE R16 R14 R15
  DUPTABLE R15 K56 [{"CompositorSelector", "MainSplitPane"}]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K19 ["createElement"]
  GETUPVAL R17 8
  CALL R16 1 1
  SETTABLEKS R16 R15 K54 ["CompositorSelector"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K19 ["createElement"]
  GETUPVAL R17 9
  DUPTABLE R18 K59 [{"MinSizes", "InitialSizes", "Layout"}]
  SETTABLEKS R8 R18 K57 ["MinSizes"]
  SETTABLEKS R9 R18 K58 ["InitialSizes"]
  SETTABLEKS R4 R18 K21 ["Layout"]
  MOVE R19 R11
  CALL R16 3 1
  SETTABLEKS R16 R15 K55 ["MainSplitPane"]
  CALL R12 3 -1
  RETURN R12 -1

PROTO_7:
  DUPTABLE R1 K12 [{"DebugData", "History", "LastTimestamp", "LayerMap", "Overrides", "WriteIndex", "ActiveLayersFilter", "Adornments", "ExpandedSections", "HistoryField", "LayerFilters", "SelectedLayer"}]
  GETTABLEKS R3 R0 K0 ["DebugData"]
  GETTABLEKS R2 R3 K0 ["DebugData"]
  SETTABLEKS R2 R1 K0 ["DebugData"]
  GETTABLEKS R3 R0 K0 ["DebugData"]
  GETTABLEKS R2 R3 K1 ["History"]
  SETTABLEKS R2 R1 K1 ["History"]
  GETTABLEKS R3 R0 K0 ["DebugData"]
  GETTABLEKS R2 R3 K2 ["LastTimestamp"]
  SETTABLEKS R2 R1 K2 ["LastTimestamp"]
  GETTABLEKS R3 R0 K0 ["DebugData"]
  GETTABLEKS R2 R3 K3 ["LayerMap"]
  SETTABLEKS R2 R1 K3 ["LayerMap"]
  GETTABLEKS R3 R0 K0 ["DebugData"]
  GETTABLEKS R2 R3 K4 ["Overrides"]
  SETTABLEKS R2 R1 K4 ["Overrides"]
  GETTABLEKS R3 R0 K0 ["DebugData"]
  GETTABLEKS R2 R3 K5 ["WriteIndex"]
  SETTABLEKS R2 R1 K5 ["WriteIndex"]
  GETTABLEKS R3 R0 K13 ["Status"]
  GETTABLEKS R2 R3 K6 ["ActiveLayersFilter"]
  SETTABLEKS R2 R1 K6 ["ActiveLayersFilter"]
  GETTABLEKS R3 R0 K13 ["Status"]
  GETTABLEKS R2 R3 K7 ["Adornments"]
  SETTABLEKS R2 R1 K7 ["Adornments"]
  GETTABLEKS R3 R0 K13 ["Status"]
  GETTABLEKS R2 R3 K8 ["ExpandedSections"]
  SETTABLEKS R2 R1 K8 ["ExpandedSections"]
  GETTABLEKS R3 R0 K13 ["Status"]
  GETTABLEKS R2 R3 K9 ["HistoryField"]
  SETTABLEKS R2 R1 K9 ["HistoryField"]
  GETTABLEKS R3 R0 K13 ["Status"]
  GETTABLEKS R2 R3 K10 ["LayerFilters"]
  SETTABLEKS R2 R1 K10 ["LayerFilters"]
  GETTABLEKS R3 R0 K13 ["Status"]
  GETTABLEKS R2 R3 K11 ["SelectedLayer"]
  SETTABLEKS R2 R1 K11 ["SelectedLayer"]
  RETURN R1 1

PROTO_8:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_12:
  DUPTABLE R1 K4 [{"SetActiveLayersFilter", "SetHistoryField", "SetLayerFilter", "ToggleAdornment"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["SetActiveLayersFilter"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["SetHistoryField"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["SetLayerFilter"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["ToggleAdornment"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R6 R3 K12 ["Dash"]
  GETTABLEKS R7 R6 K13 ["copy"]
  GETTABLEKS R9 R3 K14 ["Style"]
  GETTABLEKS R8 R9 K15 ["Stylizer"]
  GETTABLEKS R9 R3 K16 ["UI"]
  GETTABLEKS R10 R9 K17 ["Pane"]
  GETTABLEKS R12 R0 K18 ["Src"]
  GETTABLEKS R11 R12 K19 ["Actions"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R11 K20 ["SetActiveLayersFilter"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R11 K21 ["SetHistoryField"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R15 R11 K22 ["SetLayerFilter"]
  CALL R14 1 1
  GETTABLEKS R16 R0 K18 ["Src"]
  GETTABLEKS R15 R16 K23 ["Components"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R17 R15 K24 ["CompositorSelector"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R18 R15 K25 ["LayerPanel"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R19 R15 K26 ["LayerTree"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R20 R15 K27 ["MainSplitPane"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R21 R15 K28 ["Toolbar"]
  CALL R20 1 1
  GETTABLEKS R22 R0 K18 ["Src"]
  GETTABLEKS R21 R22 K29 ["Util"]
  GETIMPORT R22 K5 [require]
  GETTABLEKS R23 R21 K30 ["debugFlags"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R24 R21 K31 ["Constants"]
  CALL R23 1 1
  GETTABLEKS R25 R0 K18 ["Src"]
  GETTABLEKS R24 R25 K32 ["Thunks"]
  GETIMPORT R25 K5 [require]
  GETTABLEKS R26 R24 K33 ["ToggleAdornment"]
  CALL R25 1 1
  GETIMPORT R26 K5 [require]
  GETTABLEKS R28 R0 K18 ["Src"]
  GETTABLEKS R27 R28 K34 ["Types"]
  CALL R26 1 1
  GETIMPORT R27 K5 [require]
  GETIMPORT R29 K1 [script]
  GETTABLEKS R28 R29 K35 ["filterChildren"]
  CALL R27 1 1
  GETIMPORT R28 K5 [require]
  GETTABLEKS R30 R0 K36 ["LuaFlags"]
  GETTABLEKS R29 R30 K37 ["GetFFlagActiveLayersFilter"]
  CALL R28 1 1
  GETTABLEKS R29 R1 K38 ["PureComponent"]
  LOADK R31 K39 ["MainComponent"]
  NAMECALL R29 R29 K40 ["extend"]
  CALL R29 2 1
  DUPCLOSURE R30 K41 [PROTO_2]
  SETTABLEKS R30 R29 K42 ["init"]
  DUPCLOSURE R30 K43 [PROTO_3]
  CAPTURE VAL R23
  SETTABLEKS R30 R29 K44 ["readSettings"]
  DUPCLOSURE R30 K45 [PROTO_4]
  SETTABLEKS R30 R29 K46 ["didMount"]
  DUPCLOSURE R30 K47 [PROTO_5]
  SETTABLEKS R30 R29 K48 ["willUnmount"]
  DUPCLOSURE R30 K49 [PROTO_6]
  CAPTURE VAL R27
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R20
  CAPTURE VAL R18
  CAPTURE VAL R17
  CAPTURE VAL R22
  CAPTURE VAL R16
  CAPTURE VAL R19
  SETTABLEKS R30 R29 K50 ["render"]
  MOVE R30 R5
  DUPTABLE R31 K53 [{"Analytics", "Plugin", "Stylizer"}]
  GETTABLEKS R32 R4 K51 ["Analytics"]
  SETTABLEKS R32 R31 K51 ["Analytics"]
  GETTABLEKS R32 R4 K52 ["Plugin"]
  SETTABLEKS R32 R31 K52 ["Plugin"]
  SETTABLEKS R8 R31 K15 ["Stylizer"]
  CALL R30 1 1
  MOVE R31 R29
  CALL R30 1 1
  MOVE R29 R30
  DUPCLOSURE R30 K54 [PROTO_7]
  DUPCLOSURE R31 K55 [PROTO_12]
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R25
  GETTABLEKS R32 R2 K56 ["connect"]
  MOVE R33 R30
  MOVE R34 R31
  CALL R32 2 1
  MOVE R33 R29
  CALL R32 1 1
  MOVE R29 R32
  RETURN R29 1
