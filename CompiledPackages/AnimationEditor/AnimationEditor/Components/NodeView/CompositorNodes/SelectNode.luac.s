PROTO_0:
  DUPTABLE R0 K2 [{"Duration", "Curve"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["PropertyLookup"]
  GETTABLEKS R1 R2 K4 ["DefaultTransitionDuration"]
  JUMPIF R1 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["DEFAULT_TRANSITION"]
  GETTABLEKS R1 R2 K0 ["Duration"]
  SETTABLEKS R1 R0 K0 ["Duration"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["PropertyLookup"]
  GETTABLEKS R1 R2 K6 ["DefaultTransitionCurve"]
  JUMPIF R1 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["DEFAULT_TRANSITION"]
  GETTABLEKS R1 R2 K1 ["Curve"]
  SETTABLEKS R1 R0 K1 ["Curve"]
  RETURN R0 1

PROTO_1:
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K0 [+4]
  LOADK R4 K0 ["Bad newValue"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["OnPropertyChanged"]
  JUMPIFNOT R2 [+14]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["OnPropertyChanged"]
  LOADK R3 K4 ["DefaultTransitionDuration"]
  GETTABLEKS R4 R1 K5 ["Duration"]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["OnPropertyChanged"]
  LOADK R3 K6 ["DefaultTransitionCurve"]
  GETTABLEKS R4 R1 K7 ["Curve"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  DUPTABLE R2 K2 [{"GraphPayload", "Default"}]
  GETTABLEKS R3 R0 K0 ["GraphPayload"]
  SETTABLEKS R3 R2 K0 ["GraphPayload"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K1 ["Default"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["useMemo"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NEWTABLE R4 0 2
  GETTABLEKS R6 R0 K4 ["PropertyLookup"]
  GETTABLEKS R5 R6 K5 ["DefaultTransitionDuration"]
  GETTABLEKS R7 R0 K4 ["PropertyLookup"]
  GETTABLEKS R6 R7 K6 ["DefaultTransitionCurve"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["useCallback"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  NEWTABLE R5 0 1
  GETTABLEKS R6 R0 K8 ["OnPropertyChanged"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K9 ["createPropertyHelpers"]
  MOVE R5 R0
  CALL R4 1 1
  DUPTABLE R5 K13 [{"Property_Selection", "Property_DefaultTransition", "Input"}]
  GETTABLEKS R6 R4 K14 ["nextProperty"]
  DUPTABLE R7 K20 [{"Name", "Label", "Type", "Value", "DefaultValue"}]
  LOADK R8 K21 ["Selection"]
  SETTABLEKS R8 R7 K15 ["Name"]
  LOADK R8 K21 ["Selection"]
  SETTABLEKS R8 R7 K16 ["Label"]
  LOADK R8 K22 ["String"]
  SETTABLEKS R8 R7 K17 ["Type"]
  GETTABLEKS R9 R0 K4 ["PropertyLookup"]
  GETTABLEKS R8 R9 K21 ["Selection"]
  SETTABLEKS R8 R7 K18 ["Value"]
  LOADK R8 K23 [""]
  SETTABLEKS R8 R7 K19 ["DefaultValue"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K10 ["Property_Selection"]
  GETTABLEKS R6 R4 K14 ["nextProperty"]
  DUPTABLE R7 K26 [{"Name", "Label", "Type", "Value", "ExtraProps", "OnChanged"}]
  LOADK R8 K27 ["DefaultTransition"]
  SETTABLEKS R8 R7 K15 ["Name"]
  LOADK R8 K28 ["Default Transition"]
  SETTABLEKS R8 R7 K16 ["Label"]
  LOADK R8 K29 ["Transition"]
  SETTABLEKS R8 R7 K17 ["Type"]
  SETTABLEKS R2 R7 K18 ["Value"]
  DUPTABLE R8 K32 [{"TransitionBuilder", "AllowReset"}]
  GETUPVAL R9 4
  SETTABLEKS R9 R8 K30 ["TransitionBuilder"]
  LOADB R9 0
  SETTABLEKS R9 R8 K31 ["AllowReset"]
  SETTABLEKS R8 R7 K24 ["ExtraProps"]
  SETTABLEKS R3 R7 K25 ["OnChanged"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K11 ["Property_DefaultTransition"]
  GETTABLEKS R7 R0 K33 ["Collapsed"]
  JUMPIF R7 [+47]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K34 ["createElement"]
  GETUPVAL R7 5
  DUPTABLE R8 K43 [{"LayoutOrder", "InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
  GETTABLEKS R9 R4 K44 ["nextOrder"]
  CALL R9 0 1
  SETTABLEKS R9 R8 K35 ["LayoutOrder"]
  GETUPVAL R9 6
  SETTABLEKS R9 R8 K36 ["InputBuilder"]
  DUPTABLE R9 K45 [{"DefaultTransition"}]
  SETTABLEKS R2 R9 K27 ["DefaultTransition"]
  SETTABLEKS R9 R8 K37 ["InputBuilderProps"]
  GETTABLEKS R10 R0 K0 ["GraphPayload"]
  JUMPIFNOT R10 [+5]
  GETTABLEKS R10 R0 K0 ["GraphPayload"]
  GETTABLEKS R9 R10 K46 ["id"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K38 ["NodeId"]
  GETTABLEKS R9 R1 K47 ["inputs"]
  SETTABLEKS R9 R8 K39 ["Inputs"]
  GETTABLEKS R9 R1 K48 ["newInputDefaultValue"]
  SETTABLEKS R9 R8 K40 ["NewInputDefaultValue"]
  GETTABLEKS R9 R1 K49 ["onInputChanged"]
  SETTABLEKS R9 R8 K41 ["OnInputChanged"]
  GETTABLEKS R9 R1 K50 ["onInputReordered"]
  SETTABLEKS R9 R8 K42 ["OnInputReordered"]
  CALL R6 2 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K12 ["Input"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K34 ["createElement"]
  GETUPVAL R7 7
  GETTABLEKS R8 R4 K51 ["nodeProps"]
  DUPTABLE R9 K53 [{"OutputPin"}]
  GETTABLEKS R10 R4 K54 ["outputPin"]
  CALL R10 0 1
  SETTABLEKS R10 R9 K52 ["OutputPin"]
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
  GETTABLEKS R3 R4 K8 ["CompositorNodes"]
  GETTABLEKS R2 R3 K9 ["CompositorNode"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["Nodes"]
  GETTABLEKS R3 R4 K12 ["CompositorNodeUtils"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Util"]
  GETTABLEKS R4 R5 K13 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K6 ["Components"]
  GETTABLEKS R7 R8 K7 ["NodeView"]
  GETTABLEKS R6 R7 K14 ["CompositorNodeInput"]
  GETTABLEKS R5 R6 K15 ["InputPanel"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K6 ["Components"]
  GETTABLEKS R8 R9 K7 ["NodeView"]
  GETTABLEKS R7 R8 K14 ["CompositorNodeInput"]
  GETTABLEKS R6 R7 K16 ["InputPanelTypes"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K17 ["Parent"]
  GETTABLEKS R7 R8 K18 ["React"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K6 ["Components"]
  GETTABLEKS R10 R11 K7 ["NodeView"]
  GETTABLEKS R9 R10 K14 ["CompositorNodeInput"]
  GETTABLEKS R8 R9 K19 ["SelectInput"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R12 R0 K6 ["Components"]
  GETTABLEKS R11 R12 K7 ["NodeView"]
  GETTABLEKS R10 R11 K20 ["CompositorNodeTransition"]
  GETTABLEKS R9 R10 K21 ["SelectTransition"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R13 R0 K6 ["Components"]
  GETTABLEKS R12 R13 K7 ["NodeView"]
  GETTABLEKS R11 R12 K8 ["CompositorNodes"]
  GETTABLEKS R10 R11 K22 ["useInputPanelHelper"]
  CALL R9 1 1
  DUPCLOSURE R10 K23 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R1
  RETURN R10 1
