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
  DUPTABLE R2 K3 [{"GraphPayload", "Default", "TransitionFields"}]
  GETTABLEKS R3 R0 K0 ["GraphPayload"]
  SETTABLEKS R3 R2 K0 ["GraphPayload"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K1 ["Default"]
  NEWTABLE R3 0 2
  LOADK R4 K4 ["Duration"]
  LOADK R5 K5 ["Curve"]
  SETLIST R3 R4 2 [1]
  SETTABLEKS R3 R2 K2 ["TransitionFields"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["useMemo"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NEWTABLE R4 0 2
  GETTABLEKS R6 R0 K7 ["PropertyLookup"]
  GETTABLEKS R5 R6 K8 ["DefaultTransitionDuration"]
  GETTABLEKS R7 R0 K7 ["PropertyLookup"]
  GETTABLEKS R6 R7 K9 ["DefaultTransitionCurve"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K10 ["useCallback"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  NEWTABLE R5 0 1
  GETTABLEKS R6 R0 K11 ["OnPropertyChanged"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K12 ["createPropertyHelpers"]
  MOVE R5 R0
  CALL R4 1 1
  DUPTABLE R5 K16 [{"Property_Selection", "Property_DefaultTransition", "Input"}]
  GETTABLEKS R6 R4 K17 ["nextProperty"]
  DUPTABLE R7 K23 [{"Name", "Label", "Type", "Value", "DefaultValue"}]
  LOADK R8 K24 ["Selection"]
  SETTABLEKS R8 R7 K18 ["Name"]
  LOADK R8 K24 ["Selection"]
  SETTABLEKS R8 R7 K19 ["Label"]
  LOADK R8 K25 ["String"]
  SETTABLEKS R8 R7 K20 ["Type"]
  GETTABLEKS R9 R0 K7 ["PropertyLookup"]
  GETTABLEKS R8 R9 K24 ["Selection"]
  SETTABLEKS R8 R7 K21 ["Value"]
  LOADK R8 K26 [""]
  SETTABLEKS R8 R7 K22 ["DefaultValue"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K13 ["Property_Selection"]
  GETTABLEKS R6 R4 K17 ["nextProperty"]
  DUPTABLE R7 K29 [{"Name", "Label", "Type", "Value", "ExtraProps", "OnChanged"}]
  LOADK R8 K30 ["DefaultTransition"]
  SETTABLEKS R8 R7 K18 ["Name"]
  LOADK R8 K31 ["Default Transition"]
  SETTABLEKS R8 R7 K19 ["Label"]
  LOADK R8 K32 ["Transition"]
  SETTABLEKS R8 R7 K20 ["Type"]
  SETTABLEKS R2 R7 K21 ["Value"]
  DUPTABLE R8 K35 [{"TransitionBuilder", "AllowReset"}]
  GETUPVAL R9 4
  SETTABLEKS R9 R8 K33 ["TransitionBuilder"]
  LOADB R9 0
  SETTABLEKS R9 R8 K34 ["AllowReset"]
  SETTABLEKS R8 R7 K27 ["ExtraProps"]
  SETTABLEKS R3 R7 K28 ["OnChanged"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K14 ["Property_DefaultTransition"]
  GETTABLEKS R6 R4 K36 ["nextInputPanel"]
  DUPTABLE R7 K45 [{"LayoutOrder", "InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
  GETTABLEKS R8 R4 K46 ["nextOrder"]
  CALL R8 0 1
  SETTABLEKS R8 R7 K37 ["LayoutOrder"]
  GETUPVAL R8 5
  SETTABLEKS R8 R7 K38 ["InputBuilder"]
  DUPTABLE R8 K47 [{"DefaultTransition"}]
  SETTABLEKS R2 R8 K30 ["DefaultTransition"]
  SETTABLEKS R8 R7 K39 ["InputBuilderProps"]
  GETTABLEKS R9 R0 K0 ["GraphPayload"]
  GETTABLEKS R8 R9 K48 ["id"]
  SETTABLEKS R8 R7 K40 ["NodeId"]
  GETTABLEKS R8 R1 K49 ["inputs"]
  SETTABLEKS R8 R7 K41 ["Inputs"]
  GETTABLEKS R8 R1 K50 ["newInputDefaultValue"]
  SETTABLEKS R8 R7 K42 ["NewInputDefaultValue"]
  GETTABLEKS R8 R1 K51 ["onInputChanged"]
  SETTABLEKS R8 R7 K43 ["OnInputChanged"]
  GETTABLEKS R8 R1 K52 ["onInputReordered"]
  SETTABLEKS R8 R7 K44 ["OnInputReordered"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K15 ["Input"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K53 ["createElement"]
  GETUPVAL R7 6
  GETTABLEKS R8 R4 K54 ["nodeProps"]
  DUPTABLE R9 K56 [{"OutputPin"}]
  GETTABLEKS R10 R4 K57 ["outputPin"]
  CALL R10 0 1
  SETTABLEKS R10 R9 K55 ["OutputPin"]
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
  GETTABLEKS R5 R6 K15 ["InputPanelTypes"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K16 ["Parent"]
  GETTABLEKS R6 R7 K17 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K6 ["Components"]
  GETTABLEKS R9 R10 K7 ["NodeView"]
  GETTABLEKS R8 R9 K14 ["CompositorNodeInput"]
  GETTABLEKS R7 R8 K18 ["SelectInput"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K6 ["Components"]
  GETTABLEKS R10 R11 K7 ["NodeView"]
  GETTABLEKS R9 R10 K19 ["CompositorNodeTransition"]
  GETTABLEKS R8 R9 K20 ["SelectTransition"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R12 R0 K6 ["Components"]
  GETTABLEKS R11 R12 K7 ["NodeView"]
  GETTABLEKS R10 R11 K8 ["CompositorNodes"]
  GETTABLEKS R9 R10 K21 ["useInputPanelHelper"]
  CALL R8 1 1
  DUPCLOSURE R9 K22 [PROTO_2]
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R1
  RETURN R9 1
