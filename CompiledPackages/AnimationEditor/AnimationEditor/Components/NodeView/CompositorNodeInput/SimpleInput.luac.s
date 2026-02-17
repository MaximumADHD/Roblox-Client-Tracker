PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["View"]
  DUPTABLE R3 K4 [{"tag", "LayoutOrder"}]
  LOADK R4 K5 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
  SETTABLEKS R4 R3 K2 ["tag"]
  GETTABLEKS R4 R0 K3 ["LayoutOrder"]
  SETTABLEKS R4 R3 K3 ["LayoutOrder"]
  DUPTABLE R4 K8 [{"InputLabelWeight", "PinChildren"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K11 [{"Name", "Weight", "LayoutOrder"}]
  GETTABLEKS R8 R0 K12 ["DisplayName"]
  JUMPIF R8 [+4]
  GETTABLEKS R9 R0 K13 ["Input"]
  GETTABLEKS R8 R9 K9 ["Name"]
  SETTABLEKS R8 R7 K9 ["Name"]
  GETTABLEKS R9 R0 K13 ["Input"]
  GETTABLEKS R8 R9 K10 ["Weight"]
  SETTABLEKS R8 R7 K10 ["Weight"]
  LOADN R8 1
  SETTABLEKS R8 R7 K3 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["InputLabelWeight"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K14 ["Folder"]
  NEWTABLE R7 0 0
  DUPTABLE R8 K16 [{"RenderedPinInput"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K22 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName"}]
  GETIMPORT R12 K25 [UDim2.new]
  LOADN R13 0
  LOADN R14 247
  LOADK R15 K26 [0.5]
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K17 ["Position"]
  LOADK R12 K13 ["Input"]
  SETTABLEKS R12 R11 K18 ["pinSide"]
  LOADK R12 K27 ["Animation"]
  SETTABLEKS R12 R11 K19 ["pinDataType"]
  GETTABLEKS R12 R0 K28 ["NodeId"]
  SETTABLEKS R12 R11 K20 ["pinNodeId"]
  GETTABLEKS R13 R0 K13 ["Input"]
  GETTABLEKS R12 R13 K9 ["Name"]
  SETTABLEKS R12 R11 K21 ["pinName"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["RenderedPinInput"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K7 ["PinChildren"]
  CALL R1 3 -1
  RETURN R1 -1

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
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K9 ["NodeView"]
  GETTABLEKS R4 R5 K10 ["CompositorNodeInput"]
  GETTABLEKS R3 R4 K11 ["InputLabelWeight"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K8 ["Components"]
  GETTABLEKS R6 R7 K9 ["NodeView"]
  GETTABLEKS R5 R6 K10 ["CompositorNodeInput"]
  GETTABLEKS R4 R5 K12 ["InputPanelTypes"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Parent"]
  GETTABLEKS R5 R6 K13 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K8 ["Components"]
  GETTABLEKS R8 R9 K9 ["NodeView"]
  GETTABLEKS R7 R8 K14 ["CompositorNodes"]
  GETTABLEKS R6 R7 K15 ["RenderedCompositorPin"]
  CALL R5 1 1
  DUPCLOSURE R6 K16 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R5
  RETURN R6 1
