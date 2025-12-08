PROTO_0:
  GETIMPORT R1 K2 [table.clone]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 0
  GETIMPORT R3 K2 [table.clone]
  GETUPVAL R5 0
  GETTABLE R4 R0 R5
  CALL R3 1 1
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLE R2 R1 R3
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K3 ["Value"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R2 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnPropertyChanged"]
  JUMPIFEQKNIL R2 [+34]
  GETTABLEKS R2 R1 K1 ["TransitionType"]
  JUMPIFEQKNIL R2 [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnPropertyChanged"]
  LOADK R3 K2 ["DefaultTransition"]
  GETTABLEKS R4 R1 K1 ["TransitionType"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K3 ["Duration"]
  JUMPIFEQKNIL R2 [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnPropertyChanged"]
  LOADK R3 K4 ["DefaultTransitionDuration"]
  GETTABLEKS R4 R1 K3 ["Duration"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K5 ["CurveType"]
  JUMPIFEQKNIL R2 [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnPropertyChanged"]
  LOADK R3 K6 ["DefaultTransitionCurve"]
  GETTABLEKS R4 R1 K5 ["CurveType"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  NEWTABLE R2 0 2
  DUPTABLE R3 K3 [{"Name", "Value"}]
  LOADK R4 K4 ["Walk"]
  SETTABLEKS R4 R3 K1 ["Name"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K2 ["Value"]
  DUPTABLE R4 K3 [{"Name", "Value"}]
  LOADK R5 K5 ["Run"]
  SETTABLEKS R5 R4 K1 ["Name"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K2 ["Value"]
  SETLIST R2 R3 2 [1]
  CALL R1 1 2
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["useToggleState"]
  LOADB R4 1
  CALL R3 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["useCallback"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  NEWTABLE R6 0 1
  MOVE R7 R2
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["useCallback"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R0
  NEWTABLE R7 0 1
  GETTABLEKS R8 R0 K8 ["OnPropertyChanged"]
  SETLIST R7 R8 1 [1]
  CALL R5 2 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K9 ["createPropertyHelpers"]
  MOVE R7 R0
  CALL R6 1 1
  DUPTABLE R7 K14 [{"Property_Selection", "Property_DefaultTransition", "Divider1", "Input"}]
  GETTABLEKS R8 R6 K15 ["nextProperty"]
  DUPTABLE R9 K19 [{"Name", "Label", "Type", "Value", "DefaultValue"}]
  LOADK R10 K20 ["Selection"]
  SETTABLEKS R10 R9 K1 ["Name"]
  LOADK R10 K20 ["Selection"]
  SETTABLEKS R10 R9 K16 ["Label"]
  LOADK R10 K21 ["String"]
  SETTABLEKS R10 R9 K17 ["Type"]
  GETTABLEKS R11 R0 K22 ["PropertyLookup"]
  GETTABLEKS R10 R11 K20 ["Selection"]
  SETTABLEKS R10 R9 K2 ["Value"]
  LOADK R10 K23 [""]
  SETTABLEKS R10 R9 K18 ["DefaultValue"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K10 ["Property_Selection"]
  GETTABLEKS R8 R6 K15 ["nextProperty"]
  DUPTABLE R9 K26 [{"Name", "Label", "Type", "Value", "DefaultValue", "OnChanged", "ExtraProps"}]
  LOADK R10 K27 ["DefaultTransition"]
  SETTABLEKS R10 R9 K1 ["Name"]
  LOADK R10 K28 ["Default Transition"]
  SETTABLEKS R10 R9 K16 ["Label"]
  LOADK R10 K29 ["Transition"]
  SETTABLEKS R10 R9 K17 ["Type"]
  DUPTABLE R10 K32 [{"TransitionType", "Duration"}]
  GETTABLEKS R12 R0 K22 ["PropertyLookup"]
  GETTABLEKS R11 R12 K27 ["DefaultTransition"]
  SETTABLEKS R11 R10 K30 ["TransitionType"]
  GETTABLEKS R12 R0 K22 ["PropertyLookup"]
  GETTABLEKS R11 R12 K33 ["DefaultTransitionDuration"]
  SETTABLEKS R11 R10 K31 ["Duration"]
  SETTABLEKS R10 R9 K2 ["Value"]
  DUPTABLE R10 K32 [{"TransitionType", "Duration"}]
  GETIMPORT R11 K37 [Enum.AnimationNodeTransitionType.CrossFade]
  SETTABLEKS R11 R10 K30 ["TransitionType"]
  LOADK R11 K38 [0.5]
  SETTABLEKS R11 R10 K31 ["Duration"]
  SETTABLEKS R10 R9 K18 ["DefaultValue"]
  SETTABLEKS R5 R9 K24 ["OnChanged"]
  DUPTABLE R10 K41 [{"Collapsed", "OnCollapseToggle"}]
  GETTABLEKS R11 R3 K42 ["enabled"]
  SETTABLEKS R11 R10 K39 ["Collapsed"]
  GETTABLEKS R11 R3 K43 ["toggle"]
  SETTABLEKS R11 R10 K40 ["OnCollapseToggle"]
  SETTABLEKS R10 R9 K25 ["ExtraProps"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K11 ["Property_DefaultTransition"]
  GETTABLEKS R9 R0 K39 ["Collapsed"]
  JUMPIF R9 [+4]
  GETTABLEKS R8 R6 K44 ["nextDivider"]
  CALL R8 0 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K12 ["Divider1"]
  GETTABLEKS R9 R0 K39 ["Collapsed"]
  JUMPIF R9 [+19]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K45 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K50 [{"LayoutOrder", "InputBuilder", "Inputs", "OnInputChanged"}]
  GETTABLEKS R11 R6 K51 ["nextOrder"]
  CALL R11 0 1
  SETTABLEKS R11 R10 K46 ["LayoutOrder"]
  GETUPVAL R11 4
  SETTABLEKS R11 R10 K47 ["InputBuilder"]
  SETTABLEKS R1 R10 K48 ["Inputs"]
  SETTABLEKS R4 R10 K49 ["OnInputChanged"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K13 ["Input"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K45 ["createElement"]
  GETUPVAL R9 5
  MOVE R10 R0
  MOVE R11 R7
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Parent"]
  GETTABLEKS R3 R4 K8 ["ReactUtils"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K9 ["Components"]
  GETTABLEKS R6 R7 K10 ["NodeView"]
  GETTABLEKS R5 R6 K11 ["CompositorNodes"]
  GETTABLEKS R4 R5 K12 ["CompositorNode"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["Nodes"]
  GETTABLEKS R5 R6 K15 ["CompositorNodeUtils"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K9 ["Components"]
  GETTABLEKS R8 R9 K10 ["NodeView"]
  GETTABLEKS R7 R8 K16 ["CompositorNodeInput"]
  GETTABLEKS R6 R7 K17 ["InputPanel"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K9 ["Components"]
  GETTABLEKS R9 R10 K10 ["NodeView"]
  GETTABLEKS R8 R9 K16 ["CompositorNodeInput"]
  GETTABLEKS R7 R8 K18 ["SelectInput"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K9 ["Components"]
  GETTABLEKS R10 R11 K10 ["NodeView"]
  GETTABLEKS R9 R10 K19 ["CompositorNodeProperty"]
  GETTABLEKS R8 R9 K20 ["TransitionProperty"]
  CALL R7 1 1
  DUPCLOSURE R8 K21 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R3
  RETURN R8 1
