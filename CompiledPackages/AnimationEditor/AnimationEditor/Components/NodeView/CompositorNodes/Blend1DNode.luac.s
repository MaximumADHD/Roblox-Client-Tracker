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
  DUPTABLE R4 K11 [{"Property_Position", "Blend1DMap", "Input"}]
  GETTABLEKS R5 R3 K12 ["nextProperty"]
  DUPTABLE R6 K17 [{"Name", "Label", "Type", "Value", "Default"}]
  LOADK R7 K3 ["Position"]
  SETTABLEKS R7 R6 K13 ["Name"]
  LOADK R7 K3 ["Position"]
  SETTABLEKS R7 R6 K14 ["Label"]
  LOADK R7 K18 ["Number"]
  SETTABLEKS R7 R6 K15 ["Type"]
  GETTABLEKS R8 R0 K19 ["PropertyLookup"]
  GETTABLEKS R7 R8 K3 ["Position"]
  SETTABLEKS R7 R6 K16 ["Value"]
  LOADN R7 0
  SETTABLEKS R7 R6 K1 ["Default"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K8 ["Property_Position"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K20 ["createElement"]
  GETUPVAL R6 4
  DUPTABLE R7 K23 [{"LayoutOrder", "Position", "Pins"}]
  GETTABLEKS R8 R3 K24 ["nextOrder"]
  CALL R8 0 1
  SETTABLEKS R8 R7 K21 ["LayoutOrder"]
  GETTABLEKS R10 R0 K19 ["PropertyLookup"]
  GETTABLEKS R9 R10 K3 ["Position"]
  ORK R8 R9 K25 [0]
  SETTABLEKS R8 R7 K3 ["Position"]
  SETTABLEKS R2 R7 K22 ["Pins"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K9 ["Blend1DMap"]
  GETTABLEKS R6 R0 K26 ["Collapsed"]
  JUMPIF R6 [+46]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K20 ["createElement"]
  GETUPVAL R6 5
  DUPTABLE R7 K34 [{"LayoutOrder", "InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
  GETTABLEKS R8 R3 K24 ["nextOrder"]
  CALL R8 0 1
  SETTABLEKS R8 R7 K21 ["LayoutOrder"]
  GETUPVAL R8 6
  SETTABLEKS R8 R7 K27 ["InputBuilder"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K28 ["InputBuilderProps"]
  GETTABLEKS R9 R0 K0 ["GraphPayload"]
  JUMPIFNOT R9 [+5]
  GETTABLEKS R9 R0 K0 ["GraphPayload"]
  GETTABLEKS R8 R9 K35 ["id"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K29 ["NodeId"]
  GETTABLEKS R8 R1 K6 ["inputs"]
  SETTABLEKS R8 R7 K30 ["Inputs"]
  GETTABLEKS R8 R1 K36 ["newInputDefaultValue"]
  SETTABLEKS R8 R7 K31 ["NewInputDefaultValue"]
  GETTABLEKS R8 R1 K37 ["onInputChanged"]
  SETTABLEKS R8 R7 K32 ["OnInputChanged"]
  GETTABLEKS R8 R1 K38 ["onInputReordered"]
  SETTABLEKS R8 R7 K33 ["OnInputReordered"]
  CALL R5 2 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K10 ["Input"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K20 ["createElement"]
  GETUPVAL R6 7
  GETTABLEKS R7 R3 K39 ["nodeProps"]
  DUPTABLE R8 K41 [{"OutputPin"}]
  GETTABLEKS R9 R3 K42 ["outputPin"]
  CALL R9 0 1
  SETTABLEKS R9 R8 K40 ["OutputPin"]
  CALL R7 1 1
  MOVE R8 R4
  CALL R5 3 -1
  RETURN R5 -1

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
  GETTABLEKS R7 R8 K19 ["InputPanel"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K6 ["Components"]
  GETTABLEKS R10 R11 K7 ["NodeView"]
  GETTABLEKS R9 R10 K8 ["CompositorNodeInput"]
  GETTABLEKS R8 R9 K20 ["InputPanelTypes"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K17 ["Parent"]
  GETTABLEKS R9 R10 K21 ["React"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R13 R0 K6 ["Components"]
  GETTABLEKS R12 R13 K7 ["NodeView"]
  GETTABLEKS R11 R12 K12 ["CompositorNodes"]
  GETTABLEKS R10 R11 K22 ["useInputPanelHelper"]
  CALL R9 1 1
  DUPCLOSURE R10 K23 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R10 1
