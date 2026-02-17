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
  LOADK R4 K0 ["newValue. must be a random sequence transition"]
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
  DUPTABLE R3 K5 [{"Weight"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K4 ["Weight"]
  SETTABLEKS R3 R2 K1 ["Default"]
  NEWTABLE R3 0 2
  LOADK R4 K6 ["Duration"]
  LOADK R5 K7 ["Curve"]
  SETLIST R3 R4 2 [1]
  SETTABLEKS R3 R2 K2 ["TransitionFields"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K8 ["useMemo"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NEWTABLE R4 0 2
  GETTABLEKS R6 R0 K9 ["PropertyLookup"]
  GETTABLEKS R5 R6 K10 ["DefaultTransitionDuration"]
  GETTABLEKS R7 R0 K9 ["PropertyLookup"]
  GETTABLEKS R6 R7 K11 ["DefaultTransitionCurve"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K12 ["useCallback"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  NEWTABLE R5 0 1
  GETTABLEKS R6 R0 K13 ["OnPropertyChanged"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K14 ["createPropertyHelpers"]
  MOVE R5 R0
  CALL R4 1 1
  DUPTABLE R5 K20 [{"Property_State", "Property_Playcount", "Property_Seed", "Property_DefaultTransition", "Input"}]
  GETTABLEKS R6 R4 K21 ["nextProperty"]
  DUPTABLE R7 K28 [{"Name", "Label", "Type", "Value", "DefaultValue", "IsReadOnly"}]
  LOADK R8 K29 ["State"]
  SETTABLEKS R8 R7 K22 ["Name"]
  LOADK R8 K29 ["State"]
  SETTABLEKS R8 R7 K23 ["Label"]
  LOADK R8 K30 ["String"]
  SETTABLEKS R8 R7 K24 ["Type"]
  GETTABLEKS R9 R0 K9 ["PropertyLookup"]
  GETTABLEKS R8 R9 K29 ["State"]
  SETTABLEKS R8 R7 K25 ["Value"]
  LOADK R8 K31 [""]
  SETTABLEKS R8 R7 K26 ["DefaultValue"]
  LOADB R8 1
  SETTABLEKS R8 R7 K27 ["IsReadOnly"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K15 ["Property_State"]
  GETTABLEKS R6 R4 K21 ["nextProperty"]
  DUPTABLE R7 K32 [{"Name", "Label", "Type", "Value", "DefaultValue"}]
  LOADK R8 K33 ["PlayCount"]
  SETTABLEKS R8 R7 K22 ["Name"]
  LOADK R8 K34 ["Play Count"]
  SETTABLEKS R8 R7 K23 ["Label"]
  LOADK R8 K35 ["Number"]
  SETTABLEKS R8 R7 K24 ["Type"]
  GETTABLEKS R9 R0 K9 ["PropertyLookup"]
  GETTABLEKS R8 R9 K33 ["PlayCount"]
  SETTABLEKS R8 R7 K25 ["Value"]
  LOADN R8 0
  SETTABLEKS R8 R7 K26 ["DefaultValue"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K16 ["Property_Playcount"]
  GETTABLEKS R6 R4 K21 ["nextProperty"]
  DUPTABLE R7 K32 [{"Name", "Label", "Type", "Value", "DefaultValue"}]
  LOADK R8 K36 ["Seed"]
  SETTABLEKS R8 R7 K22 ["Name"]
  LOADK R8 K36 ["Seed"]
  SETTABLEKS R8 R7 K23 ["Label"]
  LOADK R8 K35 ["Number"]
  SETTABLEKS R8 R7 K24 ["Type"]
  GETTABLEKS R9 R0 K9 ["PropertyLookup"]
  GETTABLEKS R8 R9 K36 ["Seed"]
  SETTABLEKS R8 R7 K25 ["Value"]
  LOADN R8 0
  SETTABLEKS R8 R7 K26 ["DefaultValue"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K17 ["Property_Seed"]
  GETTABLEKS R6 R4 K21 ["nextProperty"]
  DUPTABLE R7 K39 [{"Name", "Label", "Type", "Value", "ExtraProps", "OnChanged"}]
  LOADK R8 K40 ["DefaultTransition"]
  SETTABLEKS R8 R7 K22 ["Name"]
  LOADK R8 K41 ["Default Transition"]
  SETTABLEKS R8 R7 K23 ["Label"]
  LOADK R8 K42 ["Transition"]
  SETTABLEKS R8 R7 K24 ["Type"]
  SETTABLEKS R2 R7 K25 ["Value"]
  DUPTABLE R8 K45 [{"TransitionBuilder", "AllowReset"}]
  GETUPVAL R9 4
  SETTABLEKS R9 R8 K43 ["TransitionBuilder"]
  LOADB R9 0
  SETTABLEKS R9 R8 K44 ["AllowReset"]
  SETTABLEKS R8 R7 K37 ["ExtraProps"]
  SETTABLEKS R3 R7 K38 ["OnChanged"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K18 ["Property_DefaultTransition"]
  GETTABLEKS R6 R4 K46 ["nextInputPanel"]
  DUPTABLE R7 K54 [{"InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
  GETUPVAL R8 5
  SETTABLEKS R8 R7 K47 ["InputBuilder"]
  DUPTABLE R8 K55 [{"DefaultTransition"}]
  SETTABLEKS R2 R8 K40 ["DefaultTransition"]
  SETTABLEKS R8 R7 K48 ["InputBuilderProps"]
  GETTABLEKS R9 R0 K0 ["GraphPayload"]
  GETTABLEKS R8 R9 K56 ["id"]
  SETTABLEKS R8 R7 K49 ["NodeId"]
  GETTABLEKS R8 R1 K57 ["inputs"]
  SETTABLEKS R8 R7 K50 ["Inputs"]
  GETTABLEKS R8 R1 K58 ["newInputDefaultValue"]
  SETTABLEKS R8 R7 K51 ["NewInputDefaultValue"]
  GETTABLEKS R8 R1 K59 ["onInputChanged"]
  SETTABLEKS R8 R7 K52 ["OnInputChanged"]
  GETTABLEKS R8 R1 K60 ["onInputReordered"]
  SETTABLEKS R8 R7 K53 ["OnInputReordered"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K19 ["Input"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K61 ["createElement"]
  GETUPVAL R7 6
  GETTABLEKS R8 R4 K62 ["nodeProps"]
  DUPTABLE R9 K64 [{"OutputPin"}]
  GETTABLEKS R10 R4 K65 ["outputPin"]
  CALL R10 0 1
  SETTABLEKS R10 R9 K63 ["OutputPin"]
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
  GETTABLEKS R9 R0 K6 ["Components"]
  GETTABLEKS R8 R9 K7 ["NodeView"]
  GETTABLEKS R7 R8 K14 ["CompositorNodeInput"]
  GETTABLEKS R6 R7 K16 ["RandomSequenceInput"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K6 ["Components"]
  GETTABLEKS R9 R10 K7 ["NodeView"]
  GETTABLEKS R8 R9 K17 ["CompositorNodeTransition"]
  GETTABLEKS R7 R8 K18 ["RandomSequenceTransition"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K19 ["Parent"]
  GETTABLEKS R8 R9 K20 ["React"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R12 R0 K6 ["Components"]
  GETTABLEKS R11 R12 K7 ["NodeView"]
  GETTABLEKS R10 R11 K8 ["CompositorNodes"]
  GETTABLEKS R9 R10 K21 ["useInputPanelHelper"]
  CALL R8 1 1
  DUPCLOSURE R9 K22 [PROTO_2]
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R1
  RETURN R9 1
