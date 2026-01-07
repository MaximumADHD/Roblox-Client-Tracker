PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnPropertyChanged"]
  JUMPIFNOT R2 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnPropertyChanged"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useCallback"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  NEWTABLE R3 0 1
  GETTABLEKS R4 R0 K1 ["OnPropertyChanged"]
  SETLIST R3 R4 1 [1]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["createPropertyHelpers"]
  MOVE R3 R0
  CALL R2 1 1
  DUPTABLE R3 K6 [{"Property_Pose", "Property_Mask", "Property_Invert"}]
  GETTABLEKS R4 R2 K7 ["nextInput"]
  DUPTABLE R5 K10 [{"Name", "Builder"}]
  LOADK R6 K11 ["Pose"]
  SETTABLEKS R6 R5 K8 ["Name"]
  GETUPVAL R6 2
  SETTABLEKS R6 R5 K9 ["Builder"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["Property_Pose"]
  GETTABLEKS R4 R2 K12 ["nextProperty"]
  DUPTABLE R5 K17 [{"Name", "Type", "Value", "DefaultValue", "OnChanged"}]
  LOADK R6 K18 ["Mask"]
  SETTABLEKS R6 R5 K8 ["Name"]
  LOADK R6 K18 ["Mask"]
  SETTABLEKS R6 R5 K13 ["Type"]
  GETTABLEKS R7 R0 K19 ["PropertyLookup"]
  GETTABLEKS R6 R7 K18 ["Mask"]
  SETTABLEKS R6 R5 K14 ["Value"]
  LOADK R6 K20 [""]
  SETTABLEKS R6 R5 K15 ["DefaultValue"]
  SETTABLEKS R1 R5 K16 ["OnChanged"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K4 ["Property_Mask"]
  GETTABLEKS R4 R2 K12 ["nextProperty"]
  DUPTABLE R5 K21 [{"Name", "Type", "Value", "DefaultValue"}]
  LOADK R6 K22 ["Invert"]
  SETTABLEKS R6 R5 K8 ["Name"]
  LOADK R6 K23 ["Boolean"]
  SETTABLEKS R6 R5 K13 ["Type"]
  GETTABLEKS R7 R0 K19 ["PropertyLookup"]
  GETTABLEKS R6 R7 K22 ["Invert"]
  SETTABLEKS R6 R5 K14 ["Value"]
  LOADB R6 0
  SETTABLEKS R6 R5 K15 ["DefaultValue"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K5 ["Property_Invert"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K24 ["createElement"]
  GETUPVAL R5 3
  MOVE R6 R0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1

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
  DUPCLOSURE R5 K17 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R2
  RETURN R5 1
