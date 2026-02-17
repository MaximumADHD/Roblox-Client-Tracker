PROTO_0:
  DUPTABLE R0 K4 [{"WaitFor", "WaitForExpression", "Duration", "Curve"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["PropertyLookup"]
  GETTABLEKS R1 R2 K6 ["DefaultWaitFor"]
  JUMPIF R1 [+2]
  GETIMPORT R1 K10 [Enum.AnimationNodeWaitFor.ClipFinished]
  SETTABLEKS R1 R0 K0 ["WaitFor"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["PropertyLookup"]
  GETTABLEKS R1 R2 K11 ["DefaultWaitForExpression"]
  SETTABLEKS R1 R0 K1 ["WaitForExpression"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["PropertyLookup"]
  GETTABLEKS R1 R2 K12 ["DefaultTransitionDuration"]
  JUMPIF R1 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["DEFAULT_TRANSITION"]
  GETTABLEKS R1 R2 K2 ["Duration"]
  SETTABLEKS R1 R0 K2 ["Duration"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["PropertyLookup"]
  GETTABLEKS R1 R2 K14 ["DefaultTransitionCurve"]
  JUMPIF R1 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["DEFAULT_TRANSITION"]
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
  LOADK R3 K4 ["DefaultWaitFor"]
  GETTABLEKS R4 R1 K5 ["WaitFor"]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["OnPropertyChanged"]
  LOADK R3 K6 ["DefaultWaitForExpression"]
  GETTABLEKS R4 R1 K7 ["WaitForExpression"]
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
  DUPTABLE R2 K3 [{"GraphPayload", "Default", "TransitionFields"}]
  GETTABLEKS R3 R0 K0 ["GraphPayload"]
  SETTABLEKS R3 R2 K0 ["GraphPayload"]
  DUPTABLE R3 K5 [{"Weight"}]
  LOADNIL R4
  SETTABLEKS R4 R3 K4 ["Weight"]
  SETTABLEKS R3 R2 K1 ["Default"]
  NEWTABLE R3 0 4
  LOADK R4 K6 ["WaitFor"]
  LOADK R5 K7 ["WaitForExpression"]
  LOADK R6 K8 ["Duration"]
  LOADK R7 K9 ["Curve"]
  SETLIST R3 R4 4 [1]
  SETTABLEKS R3 R2 K2 ["TransitionFields"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K10 ["useMemo"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NEWTABLE R4 0 4
  GETTABLEKS R6 R0 K11 ["PropertyLookup"]
  GETTABLEKS R5 R6 K12 ["DefaultWaitFor"]
  GETTABLEKS R7 R0 K11 ["PropertyLookup"]
  GETTABLEKS R6 R7 K13 ["DefaultWaitForExpression"]
  GETTABLEKS R8 R0 K11 ["PropertyLookup"]
  GETTABLEKS R7 R8 K14 ["DefaultTransitionDuration"]
  GETTABLEKS R9 R0 K11 ["PropertyLookup"]
  GETTABLEKS R8 R9 K15 ["DefaultTransitionCurve"]
  SETLIST R4 R5 4 [1]
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K16 ["useCallback"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  NEWTABLE R5 0 1
  GETTABLEKS R6 R0 K17 ["OnPropertyChanged"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K18 ["createPropertyHelpers"]
  MOVE R5 R0
  CALL R4 1 1
  DUPTABLE R5 K23 [{"Property_State", "Property_LoopCount", "Property_DefaultTransition", "Input"}]
  GETTABLEKS R6 R4 K24 ["nextProperty"]
  DUPTABLE R7 K31 [{"Name", "Label", "Type", "Value", "DefaultValue", "IsReadOnly"}]
  LOADK R8 K32 ["State"]
  SETTABLEKS R8 R7 K25 ["Name"]
  LOADK R8 K32 ["State"]
  SETTABLEKS R8 R7 K26 ["Label"]
  LOADK R8 K33 ["String"]
  SETTABLEKS R8 R7 K27 ["Type"]
  GETTABLEKS R9 R0 K11 ["PropertyLookup"]
  GETTABLEKS R8 R9 K32 ["State"]
  SETTABLEKS R8 R7 K28 ["Value"]
  LOADK R8 K34 [""]
  SETTABLEKS R8 R7 K29 ["DefaultValue"]
  LOADB R8 1
  SETTABLEKS R8 R7 K30 ["IsReadOnly"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K19 ["Property_State"]
  GETTABLEKS R6 R4 K24 ["nextProperty"]
  DUPTABLE R7 K35 [{"Name", "Label", "Type", "Value", "DefaultValue"}]
  LOADK R8 K36 ["LoopCount"]
  SETTABLEKS R8 R7 K25 ["Name"]
  LOADK R8 K37 ["Loop Count"]
  SETTABLEKS R8 R7 K26 ["Label"]
  LOADK R8 K38 ["Number"]
  SETTABLEKS R8 R7 K27 ["Type"]
  GETTABLEKS R9 R0 K11 ["PropertyLookup"]
  GETTABLEKS R8 R9 K36 ["LoopCount"]
  SETTABLEKS R8 R7 K28 ["Value"]
  LOADN R8 0
  SETTABLEKS R8 R7 K29 ["DefaultValue"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K20 ["Property_LoopCount"]
  GETTABLEKS R6 R4 K24 ["nextProperty"]
  DUPTABLE R7 K41 [{"Name", "Label", "Type", "Value", "ExtraProps", "OnChanged"}]
  LOADK R8 K42 ["DefaultTransition"]
  SETTABLEKS R8 R7 K25 ["Name"]
  LOADK R8 K43 ["Default Transition"]
  SETTABLEKS R8 R7 K26 ["Label"]
  LOADK R8 K44 ["Transition"]
  SETTABLEKS R8 R7 K27 ["Type"]
  SETTABLEKS R2 R7 K28 ["Value"]
  DUPTABLE R8 K47 [{"TransitionBuilder", "AllowReset"}]
  GETUPVAL R9 4
  SETTABLEKS R9 R8 K45 ["TransitionBuilder"]
  LOADB R9 0
  SETTABLEKS R9 R8 K46 ["AllowReset"]
  SETTABLEKS R8 R7 K39 ["ExtraProps"]
  SETTABLEKS R3 R7 K40 ["OnChanged"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K21 ["Property_DefaultTransition"]
  GETTABLEKS R6 R4 K48 ["nextInputPanel"]
  DUPTABLE R7 K57 [{"LayoutOrder", "InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
  GETTABLEKS R8 R4 K58 ["nextOrder"]
  CALL R8 0 1
  SETTABLEKS R8 R7 K49 ["LayoutOrder"]
  GETUPVAL R8 5
  SETTABLEKS R8 R7 K50 ["InputBuilder"]
  DUPTABLE R8 K59 [{"DefaultTransition"}]
  SETTABLEKS R2 R8 K42 ["DefaultTransition"]
  SETTABLEKS R8 R7 K51 ["InputBuilderProps"]
  GETTABLEKS R9 R0 K0 ["GraphPayload"]
  GETTABLEKS R8 R9 K60 ["id"]
  SETTABLEKS R8 R7 K52 ["NodeId"]
  GETTABLEKS R8 R1 K61 ["inputs"]
  SETTABLEKS R8 R7 K53 ["Inputs"]
  GETTABLEKS R8 R1 K62 ["newInputDefaultValue"]
  SETTABLEKS R8 R7 K54 ["NewInputDefaultValue"]
  GETTABLEKS R8 R1 K63 ["onInputChanged"]
  SETTABLEKS R8 R7 K55 ["OnInputChanged"]
  GETTABLEKS R8 R1 K64 ["onInputReordered"]
  SETTABLEKS R8 R7 K56 ["OnInputReordered"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K22 ["Input"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K65 ["createElement"]
  GETUPVAL R7 6
  GETTABLEKS R8 R4 K66 ["nodeProps"]
  DUPTABLE R9 K68 [{"OutputPin"}]
  GETTABLEKS R10 R4 K69 ["outputPin"]
  CALL R10 0 1
  SETTABLEKS R10 R9 K67 ["OutputPin"]
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
  GETTABLEKS R7 R8 K18 ["SequenceInput"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K6 ["Components"]
  GETTABLEKS R10 R11 K7 ["NodeView"]
  GETTABLEKS R9 R10 K19 ["CompositorNodeTransition"]
  GETTABLEKS R8 R9 K20 ["SequenceTransition"]
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
