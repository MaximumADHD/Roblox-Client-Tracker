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
  DUPTABLE R2 K2 [{"GraphPayload", "Default"}]
  GETTABLEKS R3 R0 K0 ["GraphPayload"]
  SETTABLEKS R3 R2 K0 ["GraphPayload"]
  DUPTABLE R3 K5 [{"Weight", "Transition"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K3 ["Weight"]
  LOADNIL R4
  SETTABLEKS R4 R3 K4 ["Transition"]
  SETTABLEKS R3 R2 K1 ["Default"]
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
  DUPTABLE R5 K18 [{"Property_State", "Property_Playcount", "Property_Seed", "Property_DefaultTransition", "Input"}]
  GETTABLEKS R6 R4 K19 ["nextProperty"]
  DUPTABLE R7 K25 [{"Name", "Label", "Type", "Value", "DefaultValue"}]
  LOADK R8 K26 ["State"]
  SETTABLEKS R8 R7 K20 ["Name"]
  LOADK R8 K26 ["State"]
  SETTABLEKS R8 R7 K21 ["Label"]
  LOADK R8 K27 ["String"]
  SETTABLEKS R8 R7 K22 ["Type"]
  GETTABLEKS R9 R0 K7 ["PropertyLookup"]
  GETTABLEKS R8 R9 K26 ["State"]
  SETTABLEKS R8 R7 K23 ["Value"]
  LOADK R8 K28 [""]
  SETTABLEKS R8 R7 K24 ["DefaultValue"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K13 ["Property_State"]
  GETTABLEKS R6 R4 K19 ["nextProperty"]
  DUPTABLE R7 K25 [{"Name", "Label", "Type", "Value", "DefaultValue"}]
  LOADK R8 K29 ["PlayCount"]
  SETTABLEKS R8 R7 K20 ["Name"]
  LOADK R8 K30 ["Play Count"]
  SETTABLEKS R8 R7 K21 ["Label"]
  LOADK R8 K31 ["Number"]
  SETTABLEKS R8 R7 K22 ["Type"]
  GETTABLEKS R9 R0 K7 ["PropertyLookup"]
  GETTABLEKS R8 R9 K29 ["PlayCount"]
  SETTABLEKS R8 R7 K23 ["Value"]
  LOADN R8 0
  SETTABLEKS R8 R7 K24 ["DefaultValue"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K14 ["Property_Playcount"]
  GETTABLEKS R6 R4 K19 ["nextProperty"]
  DUPTABLE R7 K25 [{"Name", "Label", "Type", "Value", "DefaultValue"}]
  LOADK R8 K32 ["Seed"]
  SETTABLEKS R8 R7 K20 ["Name"]
  LOADK R8 K32 ["Seed"]
  SETTABLEKS R8 R7 K21 ["Label"]
  LOADK R8 K31 ["Number"]
  SETTABLEKS R8 R7 K22 ["Type"]
  GETTABLEKS R9 R0 K7 ["PropertyLookup"]
  GETTABLEKS R8 R9 K32 ["Seed"]
  SETTABLEKS R8 R7 K23 ["Value"]
  LOADN R8 0
  SETTABLEKS R8 R7 K24 ["DefaultValue"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K15 ["Property_Seed"]
  GETTABLEKS R6 R4 K19 ["nextProperty"]
  DUPTABLE R7 K35 [{"Name", "Label", "Type", "Value", "ExtraProps", "OnChanged"}]
  LOADK R8 K36 ["DefaultTransition"]
  SETTABLEKS R8 R7 K20 ["Name"]
  LOADK R8 K37 ["Default Transition"]
  SETTABLEKS R8 R7 K21 ["Label"]
  LOADK R8 K4 ["Transition"]
  SETTABLEKS R8 R7 K22 ["Type"]
  SETTABLEKS R2 R7 K23 ["Value"]
  DUPTABLE R8 K40 [{"TransitionBuilder", "AllowReset"}]
  GETUPVAL R9 4
  SETTABLEKS R9 R8 K38 ["TransitionBuilder"]
  LOADB R9 0
  SETTABLEKS R9 R8 K39 ["AllowReset"]
  SETTABLEKS R8 R7 K33 ["ExtraProps"]
  SETTABLEKS R3 R7 K34 ["OnChanged"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K16 ["Property_DefaultTransition"]
  GETTABLEKS R7 R0 K41 ["Collapsed"]
  JUMPIF R7 [+47]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K42 ["createElement"]
  GETUPVAL R7 5
  DUPTABLE R8 K51 [{"LayoutOrder", "InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
  GETTABLEKS R9 R4 K52 ["nextOrder"]
  CALL R9 0 1
  SETTABLEKS R9 R8 K43 ["LayoutOrder"]
  GETUPVAL R9 6
  SETTABLEKS R9 R8 K44 ["InputBuilder"]
  DUPTABLE R9 K53 [{"DefaultTransition"}]
  SETTABLEKS R2 R9 K36 ["DefaultTransition"]
  SETTABLEKS R9 R8 K45 ["InputBuilderProps"]
  GETTABLEKS R10 R0 K0 ["GraphPayload"]
  JUMPIFNOT R10 [+5]
  GETTABLEKS R10 R0 K0 ["GraphPayload"]
  GETTABLEKS R9 R10 K54 ["id"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K46 ["NodeId"]
  GETTABLEKS R9 R1 K55 ["inputs"]
  SETTABLEKS R9 R8 K47 ["Inputs"]
  GETTABLEKS R9 R1 K56 ["newInputDefaultValue"]
  SETTABLEKS R9 R8 K48 ["NewInputDefaultValue"]
  GETTABLEKS R9 R1 K57 ["onInputChanged"]
  SETTABLEKS R9 R8 K49 ["OnInputChanged"]
  GETTABLEKS R9 R1 K58 ["onInputReordered"]
  SETTABLEKS R9 R8 K50 ["OnInputReordered"]
  CALL R6 2 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K17 ["Input"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K42 ["createElement"]
  GETUPVAL R7 7
  GETTABLEKS R8 R4 K59 ["nodeProps"]
  DUPTABLE R9 K61 [{"OutputPin"}]
  GETTABLEKS R10 R4 K62 ["outputPin"]
  CALL R10 0 1
  SETTABLEKS R10 R9 K60 ["OutputPin"]
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
  GETTABLEKS R7 R8 K17 ["RandomSequenceInput"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K6 ["Components"]
  GETTABLEKS R10 R11 K7 ["NodeView"]
  GETTABLEKS R9 R10 K18 ["CompositorNodeTransition"]
  GETTABLEKS R8 R9 K19 ["RandomSequenceTransition"]
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
