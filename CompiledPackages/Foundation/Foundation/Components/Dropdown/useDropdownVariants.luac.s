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
  LOADK R3 K5 ["row radius-medium align-y-center flex-x-between stroke-standard"]
  SETTABLEKS R3 R2 K3 ["tag"]
  SETTABLEKS R2 R1 K0 ["container"]
  DUPTABLE R2 K4 [{"tag"}]
  LOADK R4 K6 ["auto-xy %*"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K7 ["FoundationFixDropdownValueTuncation"]
  JUMPIFNOT R7 [+2]
  LOADK R6 K8 ["text-truncate-split shrink"]
  JUMP [+1]
  LOADK R6 K9 [""]
  NAMECALL R4 R4 K10 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLEKS R3 R2 K3 ["tag"]
  SETTABLEKS R2 R1 K1 ["text"]
  NEWTABLE R2 4 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K11 ["XSmall"]
  DUPTABLE R4 K13 [{"container", "text", "arrow"}]
  DUPTABLE R5 K15 [{"height", "tag"}]
  GETIMPORT R6 K18 [UDim.new]
  LOADN R7 0
  GETTABLEKS R9 R0 K19 ["Size"]
  GETTABLEKS R8 R9 K20 ["Size_600"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K14 ["height"]
  LOADK R7 K21 ["padding-small %* %*"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K7 ["FoundationFixDropdownValueTuncation"]
  JUMPIFNOT R10 [+2]
  LOADK R9 K22 ["gap-xxsmall"]
  JUMP [+1]
  LOADK R9 K9 [""]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K23 ["FoundationFixInputFieldWidth"]
  JUMPIFNOT R11 [+2]
  LOADK R10 K24 ["size-full-600"]
  JUMP [+1]
  LOADK R10 K9 [""]
  NAMECALL R7 R7 K10 ["format"]
  CALL R7 3 1
  MOVE R6 R7
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K25 ["text-body-small"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K1 ["text"]
  DUPTABLE R5 K27 [{"size"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K28 ["Small"]
  SETTABLEKS R6 R5 K26 ["size"]
  SETTABLEKS R5 R4 K12 ["arrow"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K28 ["Small"]
  DUPTABLE R4 K13 [{"container", "text", "arrow"}]
  DUPTABLE R5 K15 [{"height", "tag"}]
  GETIMPORT R6 K18 [UDim.new]
  LOADN R7 0
  GETTABLEKS R9 R0 K19 ["Size"]
  GETTABLEKS R8 R9 K29 ["Size_800"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K14 ["height"]
  LOADK R7 K30 ["padding-medium %* %*"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K7 ["FoundationFixDropdownValueTuncation"]
  JUMPIFNOT R10 [+2]
  LOADK R9 K22 ["gap-xxsmall"]
  JUMP [+1]
  LOADK R9 K9 [""]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K23 ["FoundationFixInputFieldWidth"]
  JUMPIFNOT R11 [+2]
  LOADK R10 K31 ["size-full-800"]
  JUMP [+1]
  LOADK R10 K9 [""]
  NAMECALL R7 R7 K10 ["format"]
  CALL R7 3 1
  MOVE R6 R7
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K25 ["text-body-small"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K1 ["text"]
  DUPTABLE R5 K27 [{"size"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K28 ["Small"]
  SETTABLEKS R6 R5 K26 ["size"]
  SETTABLEKS R5 R4 K12 ["arrow"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K32 ["Medium"]
  DUPTABLE R4 K13 [{"container", "text", "arrow"}]
  DUPTABLE R5 K33 [{"size", "height", "tag"}]
  GETIMPORT R6 K35 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  GETTABLEKS R11 R0 K19 ["Size"]
  GETTABLEKS R10 R11 K36 ["Size_1000"]
  CALL R6 4 1
  SETTABLEKS R6 R5 K26 ["size"]
  GETIMPORT R6 K18 [UDim.new]
  LOADN R7 0
  GETTABLEKS R9 R0 K19 ["Size"]
  GETTABLEKS R8 R9 K36 ["Size_1000"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K14 ["height"]
  LOADK R7 K37 ["padding-medium %*"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K23 ["FoundationFixInputFieldWidth"]
  JUMPIFNOT R10 [+2]
  LOADK R9 K38 ["size-full-1000"]
  JUMP [+1]
  LOADK R9 K9 [""]
  NAMECALL R7 R7 K10 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K39 ["text-body-medium"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K1 ["text"]
  DUPTABLE R5 K27 [{"size"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K32 ["Medium"]
  SETTABLEKS R6 R5 K26 ["size"]
  SETTABLEKS R5 R4 K12 ["arrow"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K40 ["Large"]
  DUPTABLE R4 K13 [{"container", "text", "arrow"}]
  DUPTABLE R5 K33 [{"size", "height", "tag"}]
  GETIMPORT R6 K35 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  GETTABLEKS R11 R0 K19 ["Size"]
  GETTABLEKS R10 R11 K41 ["Size_1200"]
  CALL R6 4 1
  SETTABLEKS R6 R5 K26 ["size"]
  GETIMPORT R6 K18 [UDim.new]
  LOADN R7 0
  GETTABLEKS R9 R0 K19 ["Size"]
  GETTABLEKS R8 R9 K41 ["Size_1200"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K14 ["height"]
  LOADK R7 K37 ["padding-medium %*"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K23 ["FoundationFixInputFieldWidth"]
  JUMPIFNOT R10 [+2]
  LOADK R9 K42 ["size-full-1200"]
  JUMP [+1]
  LOADK R9 K9 [""]
  NAMECALL R7 R7 K10 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K43 ["text-body-large"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K1 ["text"]
  DUPTABLE R5 K27 [{"size"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K32 ["Medium"]
  SETTABLEKS R6 R5 K26 ["size"]
  SETTABLEKS R5 R4 K12 ["arrow"]
  SETTABLE R4 R2 R3
  NEWTABLE R3 8 0
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K44 ["Disabled"]
  DUPTABLE R5 K2 [{"container", "text"}]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K45 ["stroke-muted"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K46 ["content-muted"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K1 ["text"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K47 ["Initialize"]
  DUPTABLE R5 K2 [{"container", "text"}]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K48 ["stroke-default"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K49 ["content-default"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K1 ["text"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K50 ["Default"]
  DUPTABLE R5 K2 [{"container", "text"}]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K48 ["stroke-default"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K49 ["content-default"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K1 ["text"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K51 ["Hover"]
  DUPTABLE R5 K2 [{"container", "text"}]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K52 ["stroke-emphasis"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K53 ["content-emphasis"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K1 ["text"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K54 ["Pressed"]
  DUPTABLE R5 K2 [{"container", "text"}]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K52 ["stroke-emphasis"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K53 ["content-emphasis"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K1 ["text"]
  SETTABLE R5 R3 R4
  DUPTABLE R4 K2 [{"container", "text"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K55 ["stroke-alert"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K49 ["content-default"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K1 ["text"]
  SETTABLEKS R4 R3 K56 ["Error"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K57 ["Dictionary"]
  GETTABLEKS R4 R5 K58 ["map"]
  MOVE R5 R3
  DUPCLOSURE R6 K59 [PROTO_0]
  CAPTURE UPVAL U3
  CALL R4 2 1
  DUPTABLE R5 K64 [{"common", "sizes", "states", "placeholderStates"}]
  SETTABLEKS R1 R5 K60 ["common"]
  SETTABLEKS R2 R5 K61 ["sizes"]
  SETTABLEKS R3 R5 K62 ["states"]
  SETTABLEKS R4 R5 K63 ["placeholderStates"]
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
  GETTABLEKS R4 R0 K7 ["Utility"]
  GETTABLEKS R3 R4 K8 ["Flags"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K9 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K10 ["Components"]
  GETTABLEKS R5 R6 K11 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K12 ["Enums"]
  GETTABLEKS R6 R7 K13 ["ControlState"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K12 ["Enums"]
  GETTABLEKS R7 R8 K14 ["InputSize"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K12 ["Enums"]
  GETTABLEKS R8 R9 K15 ["IconSize"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K12 ["Enums"]
  GETTABLEKS R9 R10 K16 ["InputLabelSize"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K7 ["Utility"]
  GETTABLEKS R10 R11 K17 ["composeStyleVariant"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R13 R0 K18 ["Providers"]
  GETTABLEKS R12 R13 K19 ["Style"]
  GETTABLEKS R11 R12 K20 ["Tokens"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R14 R0 K18 ["Providers"]
  GETTABLEKS R13 R14 K19 ["Style"]
  GETTABLEKS R12 R13 K21 ["VariantsContext"]
  CALL R11 1 1
  DUPCLOSURE R12 K22 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R3
  DUPCLOSURE R13 K23 [PROTO_2]
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R9
  RETURN R13 1
