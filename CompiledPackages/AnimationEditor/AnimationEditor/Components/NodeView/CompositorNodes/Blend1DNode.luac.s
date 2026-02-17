PROTO_0:
  GETTABLEKS R2 R0 K0 ["Value"]
  GETTABLEKS R1 R2 K1 ["Position"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["map"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["inputs"]
  DUPCLOSURE R2 K2 [PROTO_0]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  JUMPIFNOTEQKN R0 K0 [0] [+13]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["OnPropertyChanged"]
  JUMPIFEQKNIL R2 [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["OnPropertyChanged"]
  LOADK R3 K2 ["Position"]
  GETTABLEKS R4 R1 K3 ["X"]
  CALL R2 2 0
  LOADN R2 0
  JUMPIFNOTLT R2 R0 [+11]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["onInputChanged"]
  MOVE R3 R0
  DUPTABLE R4 K5 [{"Position"}]
  GETTABLEKS R5 R1 K3 ["X"]
  SETTABLEKS R5 R4 K2 ["Position"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R2 K2 [{"GraphPayload", "Default"}]
  GETTABLEKS R3 R0 K0 ["GraphPayload"]
  SETTABLEKS R3 R2 K0 ["GraphPayload"]
  DUPTABLE R3 K4 [{"Position"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K3 ["Position"]
  SETTABLEKS R3 R2 K1 ["Default"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["useMemo"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  NEWTABLE R4 0 1
  GETTABLEKS R5 R1 K6 ["inputs"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K7 ["createPropertyHelpers"]
  MOVE R4 R0
  CALL R3 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["useCallback"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  CAPTURE VAL R1
  NEWTABLE R6 0 2
  GETTABLEKS R7 R0 K9 ["OnPropertyChanged"]
  GETTABLEKS R8 R0 K10 ["PropertyLookup"]
  SETLIST R6 R7 2 [1]
  CALL R4 2 1
  DUPTABLE R5 K14 [{"Property_Position", "Blend1DMap", "Input"}]
  GETTABLEKS R6 R3 K15 ["nextProperty"]
  DUPTABLE R7 K20 [{"Name", "Label", "Type", "Value", "Default"}]
  LOADK R8 K3 ["Position"]
  SETTABLEKS R8 R7 K16 ["Name"]
  LOADK R8 K3 ["Position"]
  SETTABLEKS R8 R7 K17 ["Label"]
  LOADK R8 K21 ["Number"]
  SETTABLEKS R8 R7 K18 ["Type"]
  GETTABLEKS R9 R0 K10 ["PropertyLookup"]
  GETTABLEKS R8 R9 K3 ["Position"]
  SETTABLEKS R8 R7 K19 ["Value"]
  LOADN R8 0
  SETTABLEKS R8 R7 K1 ["Default"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K11 ["Property_Position"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K22 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K26 [{"LayoutOrder", "OnPinDragged", "Position", "Pins"}]
  GETTABLEKS R9 R3 K27 ["nextOrder"]
  CALL R9 0 1
  SETTABLEKS R9 R8 K23 ["LayoutOrder"]
  SETTABLEKS R4 R8 K24 ["OnPinDragged"]
  GETTABLEKS R11 R0 K10 ["PropertyLookup"]
  GETTABLEKS R10 R11 K3 ["Position"]
  ORK R9 R10 K28 [0]
  SETTABLEKS R9 R8 K3 ["Position"]
  SETTABLEKS R2 R8 K25 ["Pins"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K12 ["Blend1DMap"]
  GETTABLEKS R6 R3 K29 ["nextInputPanel"]
  DUPTABLE R7 K37 [{"InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
  GETUPVAL R8 5
  SETTABLEKS R8 R7 K30 ["InputBuilder"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K31 ["InputBuilderProps"]
  GETTABLEKS R9 R0 K0 ["GraphPayload"]
  GETTABLEKS R8 R9 K38 ["id"]
  SETTABLEKS R8 R7 K32 ["NodeId"]
  GETTABLEKS R8 R1 K6 ["inputs"]
  SETTABLEKS R8 R7 K33 ["Inputs"]
  GETTABLEKS R8 R1 K39 ["newInputDefaultValue"]
  SETTABLEKS R8 R7 K34 ["NewInputDefaultValue"]
  GETTABLEKS R8 R1 K40 ["onInputChanged"]
  SETTABLEKS R8 R7 K35 ["OnInputChanged"]
  GETTABLEKS R8 R1 K41 ["onInputReordered"]
  SETTABLEKS R8 R7 K36 ["OnInputReordered"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K13 ["Input"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K22 ["createElement"]
  GETUPVAL R7 6
  GETTABLEKS R8 R3 K42 ["nodeProps"]
  DUPTABLE R9 K44 [{"OutputPin"}]
  GETTABLEKS R10 R3 K45 ["outputPin"]
  CALL R10 0 1
  SETTABLEKS R10 R9 K43 ["OutputPin"]
  CALL R8 1 1
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Components"]
  GETTABLEKS R4 R5 K7 ["NodeView"]
  GETTABLEKS R3 R4 K8 ["CompositorNodeInput"]
  GETTABLEKS R2 R3 K9 ["Blend1DInput"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R6 R0 K6 ["Components"]
  GETTABLEKS R5 R6 K7 ["NodeView"]
  GETTABLEKS R4 R5 K10 ["CompositorNodeProperty"]
  GETTABLEKS R3 R4 K11 ["Blend1DMap"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K6 ["Components"]
  GETTABLEKS R6 R7 K7 ["NodeView"]
  GETTABLEKS R5 R6 K12 ["CompositorNodes"]
  GETTABLEKS R4 R5 K13 ["CompositorNode"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K14 ["Util"]
  GETTABLEKS R6 R7 K15 ["Nodes"]
  GETTABLEKS R5 R6 K16 ["CompositorNodeUtils"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K17 ["Parent"]
  GETTABLEKS R6 R7 K18 ["Dash"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K6 ["Components"]
  GETTABLEKS R9 R10 K7 ["NodeView"]
  GETTABLEKS R8 R9 K8 ["CompositorNodeInput"]
  GETTABLEKS R7 R8 K19 ["InputPanelTypes"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K17 ["Parent"]
  GETTABLEKS R8 R9 K20 ["React"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R12 R0 K6 ["Components"]
  GETTABLEKS R11 R12 K7 ["NodeView"]
  GETTABLEKS R10 R11 K12 ["CompositorNodes"]
  GETTABLEKS R9 R10 K21 ["useInputPanelHelper"]
  CALL R8 1 1
  DUPCLOSURE R9 K22 [PROTO_3]
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R9 1
