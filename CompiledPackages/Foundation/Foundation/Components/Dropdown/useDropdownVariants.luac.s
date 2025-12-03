PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["join"]
  MOVE R2 R0
  DUPTABLE R3 K2 [{"text"}]
  DUPTABLE R4 K4 [{"tag"}]
  LOADK R5 K5 ["content-muted"]
  SETTABLEKS R5 R4 K3 ["tag"]
  SETTABLEKS R4 R3 K1 ["text"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Dictionary"]
  GETTABLEKS R1 R2 K1 ["join"]
  MOVE R2 R0
  DUPTABLE R3 K3 [{"text"}]
  DUPTABLE R4 K5 [{"tag"}]
  LOADK R5 K6 ["content-muted"]
  SETTABLEKS R5 R4 K4 ["tag"]
  SETTABLEKS R4 R3 K2 ["text"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  DUPTABLE R1 K2 [{"container", "text"}]
  DUPTABLE R2 K4 [{"tag"}]
  LOADK R3 K5 ["row align-y-center flex-x-between stroke-standard"]
  SETTABLEKS R3 R2 K3 ["tag"]
  SETTABLEKS R2 R1 K0 ["container"]
  DUPTABLE R2 K4 [{"tag"}]
  LOADK R3 K6 ["auto-xy text-truncate-split shrink"]
  SETTABLEKS R3 R2 K3 ["tag"]
  SETTABLEKS R2 R1 K1 ["text"]
  NEWTABLE R2 4 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["XSmall"]
  DUPTABLE R4 K9 [{"container", "text", "arrow"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K10 ["radius-small padding-small gap-xxsmall size-full-600"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K11 ["text-body-small"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K1 ["text"]
  DUPTABLE R5 K13 [{"size"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K14 ["Small"]
  SETTABLEKS R6 R5 K12 ["size"]
  SETTABLEKS R5 R4 K8 ["arrow"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K14 ["Small"]
  DUPTABLE R4 K9 [{"container", "text", "arrow"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K15 ["radius-medium padding-medium gap-xxsmall size-full-800"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K11 ["text-body-small"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K1 ["text"]
  DUPTABLE R5 K13 [{"size"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K14 ["Small"]
  SETTABLEKS R6 R5 K12 ["size"]
  SETTABLEKS R5 R4 K8 ["arrow"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K16 ["Medium"]
  DUPTABLE R4 K9 [{"container", "text", "arrow"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K17 ["radius-medium padding-medium size-full-1000"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K18 ["text-body-medium"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K1 ["text"]
  DUPTABLE R5 K13 [{"size"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K16 ["Medium"]
  SETTABLEKS R6 R5 K12 ["size"]
  SETTABLEKS R5 R4 K8 ["arrow"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K19 ["Large"]
  DUPTABLE R4 K9 [{"container", "text", "arrow"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K20 ["radius-medium padding-medium size-full-1200"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K21 ["text-body-large"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K1 ["text"]
  DUPTABLE R5 K13 [{"size"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K16 ["Medium"]
  SETTABLEKS R6 R5 K12 ["size"]
  SETTABLEKS R5 R4 K8 ["arrow"]
  SETTABLE R4 R2 R3
  NEWTABLE R3 8 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K22 ["Disabled"]
  DUPTABLE R5 K2 [{"container", "text"}]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K23 ["stroke-muted"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K24 ["content-muted"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K1 ["text"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K25 ["Initialize"]
  DUPTABLE R5 K2 [{"container", "text"}]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K26 ["stroke-default"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K27 ["content-default"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K1 ["text"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K28 ["Default"]
  DUPTABLE R5 K2 [{"container", "text"}]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K26 ["stroke-default"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K27 ["content-default"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K1 ["text"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K29 ["Hover"]
  DUPTABLE R5 K2 [{"container", "text"}]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K30 ["stroke-emphasis"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K31 ["content-emphasis"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K1 ["text"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K32 ["Pressed"]
  DUPTABLE R5 K2 [{"container", "text"}]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K30 ["stroke-emphasis"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K31 ["content-emphasis"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K1 ["text"]
  SETTABLE R5 R3 R4
  DUPTABLE R4 K2 [{"container", "text"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K33 ["stroke-alert"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K27 ["content-default"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K1 ["text"]
  SETTABLEKS R4 R3 K34 ["Error"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K35 ["FoundationMigrateCryoToDash"]
  JUMPIFNOT R5 [+8]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K36 ["map"]
  MOVE R5 R3
  DUPCLOSURE R6 K37 [PROTO_0]
  CAPTURE UPVAL U3
  CALL R4 2 1
  JUMP [+9]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K38 ["Dictionary"]
  GETTABLEKS R4 R5 K36 ["map"]
  MOVE R5 R3
  DUPCLOSURE R6 K39 [PROTO_1]
  CAPTURE UPVAL U4
  CALL R4 2 1
  DUPTABLE R5 K44 [{"common", "sizes", "states", "placeholderStates"}]
  SETTABLEKS R1 R5 K40 ["common"]
  SETTABLEKS R2 R5 K41 ["sizes"]
  SETTABLEKS R3 R5 K42 ["states"]
  SETTABLEKS R4 R5 K43 ["placeholderStates"]
  RETURN R5 1

PROTO_3:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["useVariants"]
  LOADK R6 K1 ["Dropdown"]
  GETUPVAL R7 1
  MOVE R8 R0
  CALL R5 3 1
  JUMPIFNOT R4 [+2]
  LOADK R6 K2 ["Error"]
  JUMP [+1]
  MOVE R6 R2
  GETUPVAL R7 2
  GETTABLEKS R8 R5 K3 ["common"]
  GETTABLEKS R10 R5 K4 ["sizes"]
  GETTABLE R9 R10 R1
  JUMPIFNOT R3 [+4]
  GETTABLEKS R11 R5 K5 ["placeholderStates"]
  GETTABLE R10 R11 R6
  JUMP [+3]
  GETTABLEKS R11 R5 K6 ["states"]
  GETTABLE R10 R11 R6
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Dash"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K11 ["Enums"]
  GETTABLEKS R6 R7 K12 ["ControlState"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K11 ["Enums"]
  GETTABLEKS R7 R8 K13 ["InputSize"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K11 ["Enums"]
  GETTABLEKS R8 R9 K14 ["IconSize"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K11 ["Enums"]
  GETTABLEKS R9 R10 K15 ["InputLabelSize"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K16 ["Utility"]
  GETTABLEKS R10 R11 K17 ["composeStyleVariant"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R0 K16 ["Utility"]
  GETTABLEKS R11 R12 K18 ["Flags"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R14 R0 K19 ["Providers"]
  GETTABLEKS R13 R14 K20 ["Style"]
  GETTABLEKS R12 R13 K21 ["Tokens"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R15 R0 K19 ["Providers"]
  GETTABLEKS R14 R15 K20 ["Style"]
  GETTABLEKS R13 R14 K22 ["VariantsContext"]
  CALL R12 1 1
  DUPCLOSURE R13 K23 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R3
  CAPTURE VAL R2
  DUPCLOSURE R14 K24 [PROTO_3]
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R9
  RETURN R14 1
