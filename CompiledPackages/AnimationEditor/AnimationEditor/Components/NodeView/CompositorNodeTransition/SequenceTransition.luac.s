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
  DUPTABLE R5 K11 [{"Transition_WaitFor", "Transition_WaitForExpression", "Transition_Duration", "Transition_Curve"}]
  GETTABLEKS R6 R1 K12 ["nextProperty"]
  DUPTABLE R7 K17 [{"Name", "Label", "Type", "Value"}]
  LOADK R8 K18 ["WaitFor"]
  SETTABLEKS R8 R7 K13 ["Name"]
  LOADK R8 K19 ["Wait For"]
  SETTABLEKS R8 R7 K14 ["Label"]
  LOADK R8 K20 ["Enum.AnimationNodeWaitFor"]
  SETTABLEKS R8 R7 K15 ["Type"]
  GETTABLEKS R8 R0 K21 ["Transition"]
  JUMPIFNOT R8 [+4]
  GETTABLEKS R9 R0 K21 ["Transition"]
  GETTABLEKS R8 R9 K18 ["WaitFor"]
  SETTABLEKS R8 R7 K16 ["Value"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["Transition_WaitFor"]
  GETTABLEKS R8 R0 K21 ["Transition"]
  GETTABLEKS R7 R8 K18 ["WaitFor"]
  GETIMPORT R8 K25 [Enum.AnimationNodeWaitFor.Expression]
  JUMPIFNOTEQ R7 R8 [+24]
  GETTABLEKS R6 R1 K12 ["nextProperty"]
  DUPTABLE R7 K17 [{"Name", "Label", "Type", "Value"}]
  LOADK R8 K26 ["WaitForExpression"]
  SETTABLEKS R8 R7 K13 ["Name"]
  LOADK R8 K27 ["Wait For Expression"]
  SETTABLEKS R8 R7 K14 ["Label"]
  LOADK R8 K28 ["Boolean"]
  SETTABLEKS R8 R7 K15 ["Type"]
  GETTABLEKS R8 R0 K21 ["Transition"]
  JUMPIFNOT R8 [+4]
  GETTABLEKS R9 R0 K21 ["Transition"]
  GETTABLEKS R8 R9 K26 ["WaitForExpression"]
  SETTABLEKS R8 R7 K16 ["Value"]
  CALL R6 1 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K8 ["Transition_WaitForExpression"]
  GETTABLEKS R6 R1 K12 ["nextProperty"]
  DUPTABLE R7 K17 [{"Name", "Label", "Type", "Value"}]
  LOADK R8 K29 ["Duration"]
  SETTABLEKS R8 R7 K13 ["Name"]
  LOADK R8 K30 ["Length"]
  SETTABLEKS R8 R7 K14 ["Label"]
  LOADK R8 K31 ["Timestamp"]
  SETTABLEKS R8 R7 K15 ["Type"]
  GETTABLEKS R8 R0 K21 ["Transition"]
  JUMPIFNOT R8 [+4]
  GETTABLEKS R9 R0 K21 ["Transition"]
  GETTABLEKS R8 R9 K29 ["Duration"]
  SETTABLEKS R8 R7 K16 ["Value"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K9 ["Transition_Duration"]
  GETTABLEKS R6 R1 K12 ["nextProperty"]
  DUPTABLE R7 K33 [{"Name", "Label", "Type", "Choices", "Value"}]
  LOADK R8 K34 ["Curve"]
  SETTABLEKS R8 R7 K13 ["Name"]
  LOADK R8 K34 ["Curve"]
  SETTABLEKS R8 R7 K14 ["Label"]
  LOADK R8 K35 ["Enum.PoseEasingStyle"]
  SETTABLEKS R8 R7 K15 ["Type"]
  NEWTABLE R8 2 0
  GETIMPORT R9 K38 [Enum.PoseEasingStyle.Linear]
  LOADK R10 K37 ["Linear"]
  SETTABLE R10 R8 R9
  GETIMPORT R9 K40 [Enum.PoseEasingStyle.Cubic]
  LOADK R10 K41 ["In/Out"]
  SETTABLE R10 R8 R9
  SETTABLEKS R8 R7 K32 ["Choices"]
  GETTABLEKS R8 R0 K21 ["Transition"]
  JUMPIFNOT R8 [+4]
  GETTABLEKS R9 R0 K21 ["Transition"]
  GETTABLEKS R8 R9 K34 ["Curve"]
  SETTABLEKS R8 R7 K16 ["Value"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K10 ["Transition_Curve"]
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
