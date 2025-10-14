PROTO_0:
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

PROTO_1:
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
  DUPTABLE R5 K11 [{"height", "tag"}]
  GETIMPORT R6 K14 [UDim.new]
  LOADN R7 0
  GETTABLEKS R9 R0 K15 ["Size"]
  GETTABLEKS R8 R9 K16 ["Size_600"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["height"]
  LOADK R6 K17 ["radius-small padding-small gap-xxsmall size-full-600"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K18 ["text-body-small"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K1 ["text"]
  DUPTABLE R5 K20 [{"size"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K21 ["Small"]
  SETTABLEKS R6 R5 K19 ["size"]
  SETTABLEKS R5 R4 K8 ["arrow"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K21 ["Small"]
  DUPTABLE R4 K9 [{"container", "text", "arrow"}]
  DUPTABLE R5 K11 [{"height", "tag"}]
  GETIMPORT R6 K14 [UDim.new]
  LOADN R7 0
  GETTABLEKS R9 R0 K15 ["Size"]
  GETTABLEKS R8 R9 K22 ["Size_800"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["height"]
  LOADK R6 K23 ["radius-medium padding-medium gap-xxsmall size-full-800"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K18 ["text-body-small"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K1 ["text"]
  DUPTABLE R5 K20 [{"size"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K21 ["Small"]
  SETTABLEKS R6 R5 K19 ["size"]
  SETTABLEKS R5 R4 K8 ["arrow"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K24 ["Medium"]
  DUPTABLE R4 K9 [{"container", "text", "arrow"}]
  DUPTABLE R5 K25 [{"size", "height", "tag"}]
  GETIMPORT R6 K27 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  GETTABLEKS R11 R0 K15 ["Size"]
  GETTABLEKS R10 R11 K28 ["Size_1000"]
  CALL R6 4 1
  SETTABLEKS R6 R5 K19 ["size"]
  GETIMPORT R6 K14 [UDim.new]
  LOADN R7 0
  GETTABLEKS R9 R0 K15 ["Size"]
  GETTABLEKS R8 R9 K28 ["Size_1000"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["height"]
  LOADK R6 K29 ["radius-medium padding-medium size-full-1000"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K30 ["text-body-medium"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K1 ["text"]
  DUPTABLE R5 K20 [{"size"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K24 ["Medium"]
  SETTABLEKS R6 R5 K19 ["size"]
  SETTABLEKS R5 R4 K8 ["arrow"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K31 ["Large"]
  DUPTABLE R4 K9 [{"container", "text", "arrow"}]
  DUPTABLE R5 K25 [{"size", "height", "tag"}]
  GETIMPORT R6 K27 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  GETTABLEKS R11 R0 K15 ["Size"]
  GETTABLEKS R10 R11 K32 ["Size_1200"]
  CALL R6 4 1
  SETTABLEKS R6 R5 K19 ["size"]
  GETIMPORT R6 K14 [UDim.new]
  LOADN R7 0
  GETTABLEKS R9 R0 K15 ["Size"]
  GETTABLEKS R8 R9 K32 ["Size_1200"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["height"]
  LOADK R6 K33 ["radius-medium padding-medium size-full-1200"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K34 ["text-body-large"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K1 ["text"]
  DUPTABLE R5 K20 [{"size"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K24 ["Medium"]
  SETTABLEKS R6 R5 K19 ["size"]
  SETTABLEKS R5 R4 K8 ["arrow"]
  SETTABLE R4 R2 R3
  NEWTABLE R3 8 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K35 ["Disabled"]
  DUPTABLE R5 K2 [{"container", "text"}]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K36 ["stroke-muted"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K37 ["content-muted"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K1 ["text"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K38 ["Initialize"]
  DUPTABLE R5 K2 [{"container", "text"}]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K39 ["stroke-default"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K40 ["content-default"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K1 ["text"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K41 ["Default"]
  DUPTABLE R5 K2 [{"container", "text"}]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K39 ["stroke-default"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K40 ["content-default"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K1 ["text"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K42 ["Hover"]
  DUPTABLE R5 K2 [{"container", "text"}]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K43 ["stroke-emphasis"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K44 ["content-emphasis"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K1 ["text"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K45 ["Pressed"]
  DUPTABLE R5 K2 [{"container", "text"}]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K43 ["stroke-emphasis"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K44 ["content-emphasis"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K1 ["text"]
  SETTABLE R5 R3 R4
  DUPTABLE R4 K2 [{"container", "text"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K46 ["stroke-alert"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K40 ["content-default"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K1 ["text"]
  SETTABLEKS R4 R3 K47 ["Error"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K48 ["Dictionary"]
  GETTABLEKS R4 R5 K49 ["map"]
  MOVE R5 R3
  DUPCLOSURE R6 K50 [PROTO_0]
  CAPTURE UPVAL U2
  CALL R4 2 1
  DUPTABLE R5 K55 [{"common", "sizes", "states", "placeholderStates"}]
  SETTABLEKS R1 R5 K51 ["common"]
  SETTABLEKS R2 R5 K52 ["sizes"]
  SETTABLEKS R3 R5 K53 ["states"]
  SETTABLEKS R4 R5 K54 ["placeholderStates"]
  RETURN R5 1

PROTO_2:
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
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K10 ["Enums"]
  GETTABLEKS R5 R6 K11 ["ControlState"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K10 ["Enums"]
  GETTABLEKS R6 R7 K12 ["InputSize"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K10 ["Enums"]
  GETTABLEKS R7 R8 K13 ["IconSize"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K10 ["Enums"]
  GETTABLEKS R8 R9 K14 ["InputLabelSize"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K15 ["Utility"]
  GETTABLEKS R9 R10 K16 ["composeStyleVariant"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R12 R0 K17 ["Providers"]
  GETTABLEKS R11 R12 K18 ["Style"]
  GETTABLEKS R10 R11 K19 ["Tokens"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R13 R0 K17 ["Providers"]
  GETTABLEKS R12 R13 K18 ["Style"]
  GETTABLEKS R11 R12 K20 ["VariantsContext"]
  CALL R10 1 1
  DUPCLOSURE R11 K21 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R2
  DUPCLOSURE R12 K22 [PROTO_2]
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R8
  RETURN R12 1
