PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createPropertyHelpers"]
  MOVE R2 R0
  CALL R1 1 1
  DUPTABLE R2 K4 [{"Property_A", "Property_B", "Property_Weight"}]
  GETTABLEKS R3 R1 K5 ["nextInput"]
  DUPTABLE R4 K8 [{"Name", "Builder"}]
  LOADK R5 K9 ["A"]
  SETTABLEKS R5 R4 K6 ["Name"]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K7 ["Builder"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K1 ["Property_A"]
  GETTABLEKS R3 R1 K5 ["nextInput"]
  DUPTABLE R4 K8 [{"Name", "Builder"}]
  LOADK R5 K10 ["B"]
  SETTABLEKS R5 R4 K6 ["Name"]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K7 ["Builder"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["Property_B"]
  GETTABLEKS R3 R1 K11 ["nextProperty"]
  DUPTABLE R4 K15 [{"Name", "Type", "Value", "DefaultValue"}]
  LOADK R5 K16 ["Weight"]
  SETTABLEKS R5 R4 K6 ["Name"]
  LOADK R5 K17 ["Number"]
  SETTABLEKS R5 R4 K12 ["Type"]
  GETTABLEKS R6 R0 K18 ["PropertyLookup"]
  GETTABLEKS R5 R6 K16 ["Weight"]
  SETTABLEKS R5 R4 K13 ["Value"]
  LOADN R5 1
  SETTABLEKS R5 R4 K14 ["DefaultValue"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["Property_Weight"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K19 ["createElement"]
  GETUPVAL R4 3
  MOVE R5 R0
  MOVE R6 R2
  CALL R3 3 -1
  RETURN R3 -1

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
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K9 ["NodeView"]
  GETTABLEKS R4 R5 K10 ["CompositorNodes"]
  GETTABLEKS R3 R4 K11 ["CompositorNode"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K12 ["Util"]
  GETTABLEKS R5 R6 K13 ["Nodes"]
  GETTABLEKS R4 R5 K14 ["CompositorNodeUtils"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K8 ["Components"]
  GETTABLEKS R7 R8 K9 ["NodeView"]
  GETTABLEKS R6 R7 K15 ["CompositorNodeInput"]
  GETTABLEKS R5 R6 K16 ["SimpleInput"]
  CALL R4 1 1
  DUPCLOSURE R5 K17 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R5 1
