PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["View"]
  DUPTABLE R3 K5 [{"tag", "Size", "LayoutOrder"}]
  LOADK R4 K6 ["row auto-y flex-between align-y-center gap-xsmall items-stretch"]
  SETTABLEKS R4 R3 K2 ["tag"]
  GETIMPORT R4 K9 [UDim2.new]
  LOADN R5 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K10 ["PROPERTY_WIDTH"]
  LOADN R7 0
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K3 ["Size"]
  LOADN R4 2
  SETTABLEKS R4 R3 K4 ["LayoutOrder"]
  DUPTABLE R4 K13 [{"Input", "RevertOverrideButton"}]
  GETTABLEKS R5 R0 K14 ["children"]
  SETTABLEKS R5 R4 K11 ["Input"]
  GETTABLEKS R6 R0 K15 ["IsParameterOverridden"]
  JUMPIFNOT R6 [+28]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K16 ["IconButton"]
  DUPTABLE R7 K20 [{"LayoutOrder", "size", "icon", "onActivated"}]
  LOADN R8 3
  SETTABLEKS R8 R7 K4 ["LayoutOrder"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K21 ["Enums"]
  GETTABLEKS R9 R10 K22 ["InputSize"]
  GETTABLEKS R8 R9 K23 ["XSmall"]
  SETTABLEKS R8 R7 K17 ["size"]
  LOADK R8 K24 ["icons/actions/edit/undo"]
  SETTABLEKS R8 R7 K18 ["icon"]
  GETTABLEKS R8 R0 K25 ["OnParameterOverrideRevert"]
  SETTABLEKS R8 R7 K19 ["onActivated"]
  CALL R5 2 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K12 ["RevertOverrideButton"]
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
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K8 ["PropertyConstants"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Parent"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R4 1
