PROTO_0:
  DUPTABLE R0 K4 [{"Interruptible", "InterruptibleExpression", "Duration", "Curve"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["PropertyLookup"]
  GETTABLEKS R1 R2 K6 ["DefaultInterruptible"]
  JUMPIF R1 [+2]
  GETIMPORT R1 K10 [Enum.AnimationNodeInterruptible.Always]
  SETTABLEKS R1 R0 K0 ["Interruptible"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["PropertyLookup"]
  GETTABLEKS R2 R3 K12 ["DefaultInterruptibleExpression"]
  ORK R1 R2 K11 [False]
  SETTABLEKS R1 R0 K1 ["InterruptibleExpression"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["PropertyLookup"]
  GETTABLEKS R1 R2 K13 ["DefaultTransitionDuration"]
  JUMPIF R1 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K14 ["DEFAULT_TRANSITION"]
  GETTABLEKS R1 R2 K2 ["Duration"]
  SETTABLEKS R1 R0 K2 ["Duration"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["PropertyLookup"]
  GETTABLEKS R1 R2 K15 ["DefaultTransitionCurve"]
  JUMPIF R1 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K14 ["DEFAULT_TRANSITION"]
  GETTABLEKS R1 R2 K3 ["Curve"]
  SETTABLEKS R1 R0 K3 ["Curve"]
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
  JUMPIFNOT R2 [+28]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["OnPropertyChanged"]
  LOADK R3 K4 ["DefaultInterruptible"]
  GETTABLEKS R4 R1 K5 ["Interruptible"]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["OnPropertyChanged"]
  LOADK R3 K6 ["DefaultInterruptibleExpression"]
  GETTABLEKS R4 R1 K7 ["InterruptibleExpression"]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["OnPropertyChanged"]
  LOADK R3 K8 ["DefaultTransitionDuration"]
  GETTABLEKS R4 R1 K9 ["Duration"]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["OnPropertyChanged"]
  LOADK R3 K10 ["DefaultTransitionCurve"]
  GETTABLEKS R4 R1 K11 ["Curve"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  DUPTABLE R2 K2 [{"GraphPayload", "Default"}]
  GETTABLEKS R3 R0 K0 ["GraphPayload"]
  SETTABLEKS R3 R2 K0 ["GraphPayload"]
  DUPTABLE R3 K4 [{"Condition"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K3 ["Condition"]
  SETTABLEKS R3 R2 K1 ["Default"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["useMemo"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NEWTABLE R4 0 4
  GETTABLEKS R6 R0 K6 ["PropertyLookup"]
  GETTABLEKS R5 R6 K7 ["DefaultInterruptibleExpression"]
  GETTABLEKS R7 R0 K6 ["PropertyLookup"]
  GETTABLEKS R6 R7 K8 ["DefaultInterruptible"]
  GETTABLEKS R8 R0 K6 ["PropertyLookup"]
  GETTABLEKS R7 R8 K9 ["DefaultTransitionDuration"]
  GETTABLEKS R9 R0 K6 ["PropertyLookup"]
  GETTABLEKS R8 R9 K10 ["DefaultTransitionCurve"]
  SETLIST R4 R5 4 [1]
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K11 ["useCallback"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  NEWTABLE R5 0 1
  GETTABLEKS R6 R0 K12 ["OnPropertyChanged"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K13 ["createPropertyHelpers"]
  MOVE R5 R0
  CALL R4 1 1
  DUPTABLE R5 K17 [{"Property_State", "Property_DefaultTransition", "Input"}]
  GETTABLEKS R6 R4 K18 ["nextProperty"]
  DUPTABLE R7 K24 [{"Name", "Label", "Type", "Value", "DefaultValue"}]
  LOADK R8 K25 ["State"]
  SETTABLEKS R8 R7 K19 ["Name"]
  LOADK R8 K25 ["State"]
  SETTABLEKS R8 R7 K20 ["Label"]
  LOADK R8 K26 ["String"]
  SETTABLEKS R8 R7 K21 ["Type"]
  GETTABLEKS R9 R0 K6 ["PropertyLookup"]
  GETTABLEKS R8 R9 K25 ["State"]
  SETTABLEKS R8 R7 K22 ["Value"]
  LOADK R8 K27 [""]
  SETTABLEKS R8 R7 K23 ["DefaultValue"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K14 ["Property_State"]
  GETTABLEKS R6 R4 K18 ["nextProperty"]
  DUPTABLE R7 K30 [{"Name", "Label", "Type", "Value", "ExtraProps", "OnChanged"}]
  LOADK R8 K31 ["DefaultTransition"]
  SETTABLEKS R8 R7 K19 ["Name"]
  LOADK R8 K32 ["Default Transition"]
  SETTABLEKS R8 R7 K20 ["Label"]
  LOADK R8 K33 ["Transition"]
  SETTABLEKS R8 R7 K21 ["Type"]
  SETTABLEKS R2 R7 K22 ["Value"]
  DUPTABLE R8 K36 [{"TransitionBuilder", "AllowReset"}]
  GETUPVAL R9 4
  SETTABLEKS R9 R8 K34 ["TransitionBuilder"]
  LOADB R9 0
  SETTABLEKS R9 R8 K35 ["AllowReset"]
  SETTABLEKS R8 R7 K28 ["ExtraProps"]
  SETTABLEKS R3 R7 K29 ["OnChanged"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K15 ["Property_DefaultTransition"]
  GETTABLEKS R7 R0 K37 ["Collapsed"]
  JUMPIF R7 [+47]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K38 ["createElement"]
  GETUPVAL R7 5
  DUPTABLE R8 K47 [{"LayoutOrder", "InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
  GETTABLEKS R9 R4 K48 ["nextOrder"]
  CALL R9 0 1
  SETTABLEKS R9 R8 K39 ["LayoutOrder"]
  GETUPVAL R9 6
  SETTABLEKS R9 R8 K40 ["InputBuilder"]
  DUPTABLE R9 K49 [{"DefaultTransition"}]
  SETTABLEKS R2 R9 K31 ["DefaultTransition"]
  SETTABLEKS R9 R8 K41 ["InputBuilderProps"]
  GETTABLEKS R10 R0 K0 ["GraphPayload"]
  JUMPIFNOT R10 [+5]
  GETTABLEKS R10 R0 K0 ["GraphPayload"]
  GETTABLEKS R9 R10 K50 ["id"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K42 ["NodeId"]
  GETTABLEKS R9 R1 K51 ["inputs"]
  SETTABLEKS R9 R8 K43 ["Inputs"]
  GETTABLEKS R9 R1 K52 ["newInputDefaultValue"]
  SETTABLEKS R9 R8 K44 ["NewInputDefaultValue"]
  GETTABLEKS R9 R1 K53 ["onInputChanged"]
  SETTABLEKS R9 R8 K45 ["OnInputChanged"]
  GETTABLEKS R9 R1 K54 ["onInputReordered"]
  SETTABLEKS R9 R8 K46 ["OnInputReordered"]
  CALL R6 2 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K16 ["Input"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K38 ["createElement"]
  GETUPVAL R7 7
  GETTABLEKS R8 R4 K55 ["nodeProps"]
  DUPTABLE R9 K57 [{"OutputPin"}]
  GETTABLEKS R10 R4 K58 ["outputPin"]
  CALL R10 0 1
  SETTABLEKS R10 R9 K56 ["OutputPin"]
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
  GETTABLEKS R10 R0 K6 ["Components"]
  GETTABLEKS R9 R10 K7 ["NodeView"]
  GETTABLEKS R8 R9 K14 ["CompositorNodeInput"]
  GETTABLEKS R7 R8 K17 ["PrioritySelectInput"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K6 ["Components"]
  GETTABLEKS R10 R11 K7 ["NodeView"]
  GETTABLEKS R9 R10 K18 ["CompositorNodeTransition"]
  GETTABLEKS R8 R9 K19 ["PrioritySelectTransition"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K20 ["Parent"]
  GETTABLEKS R9 R10 K21 ["React"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R13 R0 K6 ["Components"]
  GETTABLEKS R12 R13 K7 ["NodeView"]
  GETTABLEKS R11 R12 K8 ["CompositorNodes"]
  GETTABLEKS R10 R11 K22 ["useInputPanelHelper"]
  CALL R9 1 1
  DUPCLOSURE R10 K23 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R1
  RETURN R10 1
