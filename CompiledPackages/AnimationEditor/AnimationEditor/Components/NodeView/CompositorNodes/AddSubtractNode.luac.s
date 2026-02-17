PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createPropertyHelpers"]
  MOVE R2 R0
  CALL R1 1 1
  DUPTABLE R2 K4 [{"Input_A", "Input_B", "Property_Weight"}]
  GETTABLEKS R3 R1 K5 ["nextInput"]
  DUPTABLE R4 K8 [{"Input", "Builder"}]
  DUPTABLE R5 K10 [{"Name"}]
  LOADK R6 K11 ["A"]
  SETTABLEKS R6 R5 K9 ["Name"]
  SETTABLEKS R5 R4 K6 ["Input"]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K7 ["Builder"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K1 ["Input_A"]
  GETTABLEKS R3 R1 K5 ["nextInput"]
  DUPTABLE R4 K8 [{"Input", "Builder"}]
  DUPTABLE R5 K10 [{"Name"}]
  LOADK R6 K12 ["B"]
  SETTABLEKS R6 R5 K9 ["Name"]
  SETTABLEKS R5 R4 K6 ["Input"]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K7 ["Builder"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["Input_B"]
  GETTABLEKS R3 R1 K13 ["nextProperty"]
  DUPTABLE R4 K17 [{"Name", "Type", "Value", "DefaultValue"}]
  LOADK R5 K18 ["Weight"]
  SETTABLEKS R5 R4 K9 ["Name"]
  LOADK R5 K19 ["Number"]
  SETTABLEKS R5 R4 K14 ["Type"]
  GETTABLEKS R6 R0 K20 ["PropertyLookup"]
  GETTABLEKS R5 R6 K18 ["Weight"]
  SETTABLEKS R5 R4 K15 ["Value"]
  LOADN R5 1
  SETTABLEKS R5 R4 K16 ["DefaultValue"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["Property_Weight"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K21 ["createElement"]
  GETUPVAL R4 3
  GETTABLEKS R5 R1 K22 ["nodeProps"]
  DUPTABLE R6 K24 [{"OutputPin"}]
  GETTABLEKS R7 R1 K25 ["outputPin"]
  CALL R7 0 1
  SETTABLEKS R7 R6 K23 ["OutputPin"]
  CALL R5 1 1
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
