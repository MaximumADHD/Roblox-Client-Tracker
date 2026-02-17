PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnPropertyChanged"]
  JUMPIFEQKNIL R2 [+15]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnPropertyChanged"]
  LOADK R3 K1 ["Weight"]
  GETTABLEKS R4 R1 K1 ["Weight"]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnPropertyChanged"]
  LOADK R3 K2 ["Clamped"]
  GETTABLEKS R4 R1 K2 ["Clamped"]
  CALL R2 2 0
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
  NEWTABLE R4 0 1
  GETTABLEKS R5 R0 K2 ["OnPropertyChanged"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 1
  DUPTABLE R3 K6 [{"Input_A", "Input_B", "Property_Weight"}]
  GETTABLEKS R4 R1 K7 ["nextInput"]
  DUPTABLE R5 K10 [{"Input", "Builder"}]
  DUPTABLE R6 K12 [{"Name"}]
  LOADK R7 K13 ["A"]
  SETTABLEKS R7 R6 K11 ["Name"]
  SETTABLEKS R6 R5 K8 ["Input"]
  GETUPVAL R6 2
  SETTABLEKS R6 R5 K9 ["Builder"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["Input_A"]
  GETTABLEKS R4 R1 K7 ["nextInput"]
  DUPTABLE R5 K10 [{"Input", "Builder"}]
  DUPTABLE R6 K12 [{"Name"}]
  LOADK R7 K14 ["B"]
  SETTABLEKS R7 R6 K11 ["Name"]
  SETTABLEKS R6 R5 K8 ["Input"]
  GETUPVAL R6 2
  SETTABLEKS R6 R5 K9 ["Builder"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K4 ["Input_B"]
  GETTABLEKS R4 R1 K15 ["nextProperty"]
  DUPTABLE R5 K20 [{"Name", "Type", "Value", "OnChanged", "DefaultValue"}]
  LOADK R6 K21 ["Weight"]
  SETTABLEKS R6 R5 K11 ["Name"]
  LOADK R6 K22 ["ClampedWeight"]
  SETTABLEKS R6 R5 K16 ["Type"]
  DUPTABLE R6 K24 [{"Weight", "Clamped"}]
  GETTABLEKS R8 R0 K25 ["PropertyLookup"]
  GETTABLEKS R7 R8 K21 ["Weight"]
  SETTABLEKS R7 R6 K21 ["Weight"]
  GETTABLEKS R8 R0 K25 ["PropertyLookup"]
  GETTABLEKS R7 R8 K23 ["Clamped"]
  SETTABLEKS R7 R6 K23 ["Clamped"]
  SETTABLEKS R6 R5 K17 ["Value"]
  SETTABLEKS R2 R5 K18 ["OnChanged"]
  LOADN R6 1
  SETTABLEKS R6 R5 K19 ["DefaultValue"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K5 ["Property_Weight"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K26 ["createElement"]
  GETUPVAL R5 3
  GETTABLEKS R6 R1 K27 ["nodeProps"]
  DUPTABLE R7 K29 [{"OutputPin"}]
  GETTABLEKS R8 R1 K30 ["outputPin"]
  CALL R8 0 1
  SETTABLEKS R8 R7 K28 ["OutputPin"]
  CALL R6 1 1
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
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R2
  RETURN R5 1
