PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createPropertyHelpers"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["View"]
  DUPTABLE R4 K5 [{"tag", "LayoutOrder"}]
  LOADK R5 K6 ["col auto-y gap-small size-full-700"]
  SETTABLEKS R5 R4 K3 ["tag"]
  GETTABLEKS R5 R0 K4 ["LayoutOrder"]
  SETTABLEKS R5 R4 K4 ["LayoutOrder"]
  DUPTABLE R5 K9 [{"Transition_Duration", "Transition_Curve"}]
  GETTABLEKS R6 R1 K10 ["nextProperty"]
  DUPTABLE R7 K15 [{"Name", "Label", "Type", "Value"}]
  LOADK R8 K16 ["Duration"]
  SETTABLEKS R8 R7 K11 ["Name"]
  LOADK R8 K17 ["Length"]
  SETTABLEKS R8 R7 K12 ["Label"]
  LOADK R8 K18 ["Timestamp"]
  SETTABLEKS R8 R7 K13 ["Type"]
  GETTABLEKS R8 R0 K19 ["Transition"]
  JUMPIFNOT R8 [+4]
  GETTABLEKS R9 R0 K19 ["Transition"]
  GETTABLEKS R8 R9 K16 ["Duration"]
  SETTABLEKS R8 R7 K14 ["Value"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["Transition_Duration"]
  GETTABLEKS R6 R1 K10 ["nextProperty"]
  DUPTABLE R7 K21 [{"Name", "Label", "Type", "Choices", "Value"}]
  LOADK R8 K22 ["Curve"]
  SETTABLEKS R8 R7 K11 ["Name"]
  LOADK R8 K22 ["Curve"]
  SETTABLEKS R8 R7 K12 ["Label"]
  LOADK R8 K23 ["Enum.PoseEasingStyle"]
  SETTABLEKS R8 R7 K13 ["Type"]
  NEWTABLE R8 2 0
  GETIMPORT R9 K27 [Enum.PoseEasingStyle.Linear]
  LOADK R10 K26 ["Linear"]
  SETTABLE R10 R8 R9
  GETIMPORT R9 K29 [Enum.PoseEasingStyle.Cubic]
  LOADK R10 K30 ["In/Out"]
  SETTABLE R10 R8 R9
  SETTABLEKS R8 R7 K20 ["Choices"]
  GETTABLEKS R8 R0 K19 ["Transition"]
  JUMPIFNOT R8 [+4]
  GETTABLEKS R9 R0 K19 ["Transition"]
  GETTABLEKS R8 R9 K22 ["Curve"]
  SETTABLEKS R8 R7 K14 ["Value"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K8 ["Transition_Curve"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Foundation"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Parent"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Util"]
  GETTABLEKS R5 R6 K10 ["Nodes"]
  GETTABLEKS R4 R5 K11 ["CompositorNodeUtils"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K12 ["Components"]
  GETTABLEKS R7 R8 K13 ["NodeView"]
  GETTABLEKS R6 R7 K14 ["CompositorNodeTransition"]
  GETTABLEKS R5 R6 K15 ["TransitionPanel"]
  CALL R4 1 1
  DUPCLOSURE R5 K16 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R5 1
