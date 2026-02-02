PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnChanged"]
  JUMPIFEQKNIL R2 [+22]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnChanged"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["join"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["Input"]
  GETTABLEKS R4 R5 K3 ["Value"]
  DUPTABLE R5 K5 [{"Transition"}]
  MOVE R6 R1
  JUMPIF R6 [+3]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["None"]
  SETTABLEKS R6 R5 K4 ["Transition"]
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createPropertyHelpers"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["useCallback"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NEWTABLE R4 0 2
  GETTABLEKS R5 R0 K2 ["OnChanged"]
  GETTABLEKS R6 R0 K3 ["Input"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K5 ["View"]
  DUPTABLE R5 K8 [{"tag", "LayoutOrder"}]
  LOADK R6 K9 ["col auto-y gap-small size-full-700"]
  SETTABLEKS R6 R5 K6 ["tag"]
  GETTABLEKS R6 R0 K7 ["LayoutOrder"]
  SETTABLEKS R6 R5 K7 ["LayoutOrder"]
  DUPTABLE R6 K12 [{"Transition", "PinChildren"}]
  GETTABLEKS R7 R1 K13 ["nextProperty"]
  DUPTABLE R8 K21 [{"Name", "Label", "Weight", "Type", "Value", "DefaultValue", "OnChanged", "ExtraProps"}]
  LOADK R9 K10 ["Transition"]
  SETTABLEKS R9 R8 K14 ["Name"]
  GETTABLEKS R10 R0 K3 ["Input"]
  GETTABLEKS R9 R10 K14 ["Name"]
  SETTABLEKS R9 R8 K15 ["Label"]
  GETTABLEKS R10 R0 K3 ["Input"]
  GETTABLEKS R9 R10 K16 ["Weight"]
  SETTABLEKS R9 R8 K16 ["Weight"]
  LOADK R9 K10 ["Transition"]
  SETTABLEKS R9 R8 K17 ["Type"]
  GETTABLEKS R12 R0 K3 ["Input"]
  GETTABLEKS R11 R12 K18 ["Value"]
  GETTABLEKS R10 R11 K10 ["Transition"]
  ORK R9 R10 K22 []
  SETTABLEKS R9 R8 K18 ["Value"]
  GETTABLEKS R10 R0 K23 ["InputBuilderProps"]
  GETTABLEKS R9 R10 K24 ["DefaultTransition"]
  SETTABLEKS R9 R8 K19 ["DefaultValue"]
  SETTABLEKS R2 R8 K2 ["OnChanged"]
  DUPTABLE R9 K26 [{"TransitionBuilder"}]
  GETUPVAL R10 4
  SETTABLEKS R10 R9 K25 ["TransitionBuilder"]
  SETTABLEKS R9 R8 K20 ["ExtraProps"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K10 ["Transition"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K4 ["createElement"]
  LOADK R8 K27 ["Folder"]
  NEWTABLE R9 0 0
  DUPTABLE R10 K29 [{"RenderedPinInput"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K4 ["createElement"]
  GETUPVAL R12 5
  DUPTABLE R13 K35 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName"}]
  GETIMPORT R14 K38 [UDim2.new]
  LOADN R15 0
  LOADN R16 247
  LOADK R17 K39 [0.5]
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K30 ["Position"]
  LOADK R14 K3 ["Input"]
  SETTABLEKS R14 R13 K31 ["pinSide"]
  LOADK R14 K40 ["Animation"]
  SETTABLEKS R14 R13 K32 ["pinDataType"]
  GETTABLEKS R14 R0 K41 ["NodeId"]
  SETTABLEKS R14 R13 K33 ["pinNodeId"]
  GETTABLEKS R15 R0 K3 ["Input"]
  GETTABLEKS R14 R15 K14 ["Name"]
  SETTABLEKS R14 R13 K34 ["pinName"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K28 ["RenderedPinInput"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K11 ["PinChildren"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Util"]
  GETTABLEKS R3 R4 K7 ["Nodes"]
  GETTABLEKS R2 R3 K8 ["CompositorNodeUtils"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Parent"]
  GETTABLEKS R3 R4 K10 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Parent"]
  GETTABLEKS R4 R5 K11 ["Foundation"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K12 ["Components"]
  GETTABLEKS R7 R8 K13 ["NodeView"]
  GETTABLEKS R6 R7 K14 ["CompositorNodeInput"]
  GETTABLEKS R5 R6 K15 ["InputPanelTypes"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K9 ["Parent"]
  GETTABLEKS R6 R7 K16 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K12 ["Components"]
  GETTABLEKS R9 R10 K13 ["NodeView"]
  GETTABLEKS R8 R9 K17 ["CompositorNodes"]
  GETTABLEKS R7 R8 K18 ["RenderedCompositorPin"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K12 ["Components"]
  GETTABLEKS R10 R11 K13 ["NodeView"]
  GETTABLEKS R9 R10 K19 ["CompositorNodeTransition"]
  GETTABLEKS R8 R9 K20 ["SequenceTransition"]
  CALL R7 1 1
  DUPCLOSURE R8 K21 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R6
  RETURN R8 1
