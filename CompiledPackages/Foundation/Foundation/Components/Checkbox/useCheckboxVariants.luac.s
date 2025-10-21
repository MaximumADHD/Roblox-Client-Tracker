PROTO_0:
  DUPTABLE R1 K2 [{"input", "checkmark"}]
  DUPTABLE R2 K6 [{"tag", "checkedStyle", "cursorRadius"}]
  LOADK R3 K7 ["radius-small"]
  SETTABLEKS R3 R2 K3 ["tag"]
  GETTABLEKS R5 R0 K8 ["Color"]
  GETTABLEKS R4 R5 K9 ["ActionSubEmphasis"]
  GETTABLEKS R3 R4 K10 ["Background"]
  SETTABLEKS R3 R2 K4 ["checkedStyle"]
  GETIMPORT R3 K13 [UDim.new]
  LOADN R4 0
  LOADN R5 0
  CALL R3 2 1
  SETTABLEKS R3 R2 K5 ["cursorRadius"]
  SETTABLEKS R2 R1 K0 ["input"]
  DUPTABLE R2 K14 [{"tag"}]
  LOADK R3 K15 ["position-center-center anchor-center-center content-action-sub-emphasis"]
  SETTABLEKS R3 R2 K3 ["tag"]
  SETTABLEKS R2 R1 K1 ["checkmark"]
  NEWTABLE R2 4 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K16 ["XSmall"]
  DUPTABLE R4 K2 [{"input", "checkmark"}]
  DUPTABLE R5 K18 [{"size"}]
  GETIMPORT R6 K21 [UDim2.fromOffset]
  GETTABLEKS R8 R0 K22 ["Size"]
  GETTABLEKS R7 R8 K23 ["Size_400"]
  GETTABLEKS R9 R0 K22 ["Size"]
  GETTABLEKS R8 R9 K23 ["Size_400"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K17 ["size"]
  SETTABLEKS R5 R4 K0 ["input"]
  DUPTABLE R5 K14 [{"tag"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K24 ["FoundationMigrateIconNames"]
  JUMPIFNOT R7 [+2]
  LOADK R6 K25 ["size-400"]
  JUMP [+1]
  LOADK R6 K26 ["size-300"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K1 ["checkmark"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K27 ["Small"]
  DUPTABLE R4 K2 [{"input", "checkmark"}]
  DUPTABLE R5 K18 [{"size"}]
  GETIMPORT R6 K21 [UDim2.fromOffset]
  GETTABLEKS R8 R0 K22 ["Size"]
  GETTABLEKS R7 R8 K28 ["Size_500"]
  GETTABLEKS R9 R0 K22 ["Size"]
  GETTABLEKS R8 R9 K28 ["Size_500"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K17 ["size"]
  SETTABLEKS R5 R4 K0 ["input"]
  DUPTABLE R5 K14 [{"tag"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K24 ["FoundationMigrateIconNames"]
  JUMPIFNOT R7 [+2]
  LOADK R6 K29 ["size-500"]
  JUMP [+1]
  LOADK R6 K30 ["size-350"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K1 ["checkmark"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K31 ["Medium"]
  DUPTABLE R4 K2 [{"input", "checkmark"}]
  DUPTABLE R5 K18 [{"size"}]
  GETIMPORT R6 K21 [UDim2.fromOffset]
  GETTABLEKS R8 R0 K22 ["Size"]
  GETTABLEKS R7 R8 K32 ["Size_600"]
  GETTABLEKS R9 R0 K22 ["Size"]
  GETTABLEKS R8 R9 K32 ["Size_600"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K17 ["size"]
  SETTABLEKS R5 R4 K0 ["input"]
  DUPTABLE R5 K14 [{"tag"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K24 ["FoundationMigrateIconNames"]
  JUMPIFNOT R7 [+2]
  LOADK R6 K33 ["size-600"]
  JUMP [+1]
  LOADK R6 K25 ["size-400"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K1 ["checkmark"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K34 ["Large"]
  DUPTABLE R4 K2 [{"input", "checkmark"}]
  DUPTABLE R5 K18 [{"size"}]
  GETIMPORT R6 K21 [UDim2.fromOffset]
  GETTABLEKS R8 R0 K22 ["Size"]
  GETTABLEKS R7 R8 K35 ["Size_700"]
  GETTABLEKS R9 R0 K22 ["Size"]
  GETTABLEKS R8 R9 K35 ["Size_700"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K17 ["size"]
  SETTABLEKS R5 R4 K0 ["input"]
  DUPTABLE R5 K14 [{"tag"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K24 ["FoundationMigrateIconNames"]
  JUMPIFNOT R7 [+2]
  LOADK R6 K36 ["size-700"]
  JUMP [+1]
  LOADK R6 K29 ["size-500"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K1 ["checkmark"]
  SETTABLE R4 R2 R3
  DUPTABLE R3 K39 [{"common", "sizes"}]
  SETTABLEKS R1 R3 K37 ["common"]
  SETTABLEKS R2 R3 K38 ["sizes"]
  RETURN R3 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useVariants"]
  LOADK R3 K1 ["Checkbox"]
  GETUPVAL R4 1
  MOVE R5 R0
  CALL R2 3 1
  GETUPVAL R3 2
  GETTABLEKS R4 R2 K2 ["common"]
  GETTABLEKS R6 R2 K3 ["sizes"]
  GETTABLE R5 R6 R1
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Utility"]
  GETTABLEKS R2 R3 K7 ["Flags"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Components"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K10 ["InternalInput"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K11 ["Enums"]
  GETTABLEKS R5 R6 K12 ["InputSize"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K11 ["Enums"]
  GETTABLEKS R6 R7 K13 ["ControlState"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K6 ["Utility"]
  GETTABLEKS R7 R8 K14 ["composeStyleVariant"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K15 ["Providers"]
  GETTABLEKS R9 R10 K16 ["Style"]
  GETTABLEKS R8 R9 K17 ["Tokens"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K15 ["Providers"]
  GETTABLEKS R10 R11 K16 ["Style"]
  GETTABLEKS R9 R10 K18 ["VariantsContext"]
  CALL R8 1 1
  DUPCLOSURE R9 K19 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R1
  DUPCLOSURE R10 K20 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R6
  RETURN R10 1
