PROTO_0:
  DUPTABLE R1 K5 [{"container", "icon", "text", "title", "check"}]
  DUPTABLE R2 K7 [{"tag"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K8 ["FoundationMenuWidthGrowth"]
  JUMPIFNOT R4 [+2]
  LOADK R3 K9 ["row align-y-center flex-x-between auto-x"]
  JUMP [+1]
  LOADK R3 K10 ["row align-y-center flex-x-between"]
  SETTABLEKS R3 R2 K6 ["tag"]
  SETTABLEKS R2 R1 K0 ["container"]
  DUPTABLE R2 K12 [{"tag", "style"}]
  LOADK R3 K13 ["content-emphasis"]
  SETTABLEKS R3 R2 K6 ["tag"]
  GETTABLEKS R5 R0 K14 ["Color"]
  GETTABLEKS R4 R5 K15 ["Content"]
  GETTABLEKS R3 R4 K16 ["Emphasis"]
  SETTABLEKS R3 R2 K11 ["style"]
  SETTABLEKS R2 R1 K1 ["icon"]
  DUPTABLE R2 K7 [{"tag"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K8 ["FoundationMenuWidthGrowth"]
  JUMPIFNOT R4 [+2]
  LOADK R3 K17 ["content-emphasis auto-xy fill text-align-x-left text-truncate-split"]
  JUMP [+1]
  LOADK R3 K18 ["content-emphasis auto-y grow text-align-x-left text-truncate-end"]
  SETTABLEKS R3 R2 K6 ["tag"]
  SETTABLEKS R2 R1 K2 ["text"]
  DUPTABLE R2 K7 [{"tag"}]
  LOADK R3 K19 ["content-default auto-xy fill text-align-x-left text-truncate-split"]
  SETTABLEKS R3 R2 K6 ["tag"]
  SETTABLEKS R2 R1 K3 ["title"]
  DUPTABLE R2 K12 [{"tag", "style"}]
  LOADK R3 K13 ["content-emphasis"]
  SETTABLEKS R3 R2 K6 ["tag"]
  GETTABLEKS R5 R0 K14 ["Color"]
  GETTABLEKS R4 R5 K15 ["Content"]
  GETTABLEKS R3 R4 K16 ["Emphasis"]
  SETTABLEKS R3 R2 K11 ["style"]
  SETTABLEKS R2 R1 K4 ["check"]
  NEWTABLE R2 4 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K20 ["XSmall"]
  DUPTABLE R4 K5 [{"container", "icon", "text", "title", "check"}]
  DUPTABLE R5 K7 [{"tag"}]
  LOADK R6 K21 ["size-full-600 radius-small padding-x-xsmall gap-xsmall"]
  SETTABLEKS R6 R5 K6 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K23 [{"tag", "size"}]
  LOADK R6 K24 ["size-400"]
  SETTABLEKS R6 R5 K6 ["tag"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K20 ["XSmall"]
  SETTABLEKS R6 R5 K22 ["size"]
  SETTABLEKS R5 R4 K1 ["icon"]
  DUPTABLE R5 K7 [{"tag"}]
  LOADK R6 K25 ["text-title-small"]
  SETTABLEKS R6 R5 K6 ["tag"]
  SETTABLEKS R5 R4 K2 ["text"]
  DUPTABLE R5 K7 [{"tag"}]
  LOADK R6 K26 ["text-caption-small"]
  SETTABLEKS R6 R5 K6 ["tag"]
  SETTABLEKS R5 R4 K3 ["title"]
  DUPTABLE R5 K23 [{"tag", "size"}]
  LOADK R6 K27 ["size-300"]
  SETTABLEKS R6 R5 K6 ["tag"]
  GETTABLEKS R7 R0 K28 ["Size"]
  GETTABLEKS R6 R7 K29 ["Size_600"]
  SETTABLEKS R6 R5 K22 ["size"]
  SETTABLEKS R5 R4 K4 ["check"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K30 ["Small"]
  DUPTABLE R4 K5 [{"container", "icon", "text", "title", "check"}]
  DUPTABLE R5 K7 [{"tag"}]
  LOADK R6 K31 ["size-full-800 radius-medium padding-x-small gap-xsmall"]
  SETTABLEKS R6 R5 K6 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K23 [{"tag", "size"}]
  LOADK R6 K32 ["size-500"]
  SETTABLEKS R6 R5 K6 ["tag"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K30 ["Small"]
  SETTABLEKS R6 R5 K22 ["size"]
  SETTABLEKS R5 R4 K1 ["icon"]
  DUPTABLE R5 K7 [{"tag"}]
  LOADK R6 K25 ["text-title-small"]
  SETTABLEKS R6 R5 K6 ["tag"]
  SETTABLEKS R5 R4 K2 ["text"]
  DUPTABLE R5 K7 [{"tag"}]
  LOADK R6 K26 ["text-caption-small"]
  SETTABLEKS R6 R5 K6 ["tag"]
  SETTABLEKS R5 R4 K3 ["title"]
  DUPTABLE R5 K23 [{"tag", "size"}]
  LOADK R6 K24 ["size-400"]
  SETTABLEKS R6 R5 K6 ["tag"]
  GETTABLEKS R7 R0 K28 ["Size"]
  GETTABLEKS R6 R7 K33 ["Size_700"]
  SETTABLEKS R6 R5 K22 ["size"]
  SETTABLEKS R5 R4 K4 ["check"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K34 ["Medium"]
  DUPTABLE R4 K5 [{"container", "icon", "text", "title", "check"}]
  DUPTABLE R5 K7 [{"tag"}]
  LOADK R6 K35 ["size-full-1000 radius-medium padding-x-small gap-small"]
  SETTABLEKS R6 R5 K6 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K23 [{"tag", "size"}]
  LOADK R6 K36 ["size-600"]
  SETTABLEKS R6 R5 K6 ["tag"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K34 ["Medium"]
  SETTABLEKS R6 R5 K22 ["size"]
  SETTABLEKS R5 R4 K1 ["icon"]
  DUPTABLE R5 K7 [{"tag"}]
  LOADK R6 K37 ["text-title-medium"]
  SETTABLEKS R6 R5 K6 ["tag"]
  SETTABLEKS R5 R4 K2 ["text"]
  DUPTABLE R5 K7 [{"tag"}]
  LOADK R6 K37 ["text-title-medium"]
  SETTABLEKS R6 R5 K6 ["tag"]
  SETTABLEKS R5 R4 K3 ["title"]
  DUPTABLE R5 K23 [{"tag", "size"}]
  LOADK R6 K32 ["size-500"]
  SETTABLEKS R6 R5 K6 ["tag"]
  GETTABLEKS R7 R0 K28 ["Size"]
  GETTABLEKS R6 R7 K38 ["Size_800"]
  SETTABLEKS R6 R5 K22 ["size"]
  SETTABLEKS R5 R4 K4 ["check"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K39 ["Large"]
  DUPTABLE R4 K5 [{"container", "icon", "text", "title", "check"}]
  DUPTABLE R5 K7 [{"tag"}]
  LOADK R6 K40 ["size-full-1200 radius-medium padding-x-small gap-small"]
  SETTABLEKS R6 R5 K6 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K23 [{"tag", "size"}]
  LOADK R6 K41 ["size-700"]
  SETTABLEKS R6 R5 K6 ["tag"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K39 ["Large"]
  SETTABLEKS R6 R5 K22 ["size"]
  SETTABLEKS R5 R4 K1 ["icon"]
  DUPTABLE R5 K7 [{"tag"}]
  LOADK R6 K42 ["text-title-large"]
  SETTABLEKS R6 R5 K6 ["tag"]
  SETTABLEKS R5 R4 K2 ["text"]
  DUPTABLE R5 K7 [{"tag"}]
  LOADK R6 K43 ["text-caption-large"]
  SETTABLEKS R6 R5 K6 ["tag"]
  SETTABLEKS R5 R4 K3 ["title"]
  DUPTABLE R5 K23 [{"tag", "size"}]
  LOADK R6 K36 ["size-600"]
  SETTABLEKS R6 R5 K6 ["tag"]
  GETTABLEKS R7 R0 K28 ["Size"]
  GETTABLEKS R6 R7 K44 ["Size_900"]
  SETTABLEKS R6 R5 K22 ["size"]
  SETTABLEKS R5 R4 K4 ["check"]
  SETTABLE R4 R2 R3
  NEWTABLE R3 2 0
  LOADB R4 0
  DUPTABLE R5 K45 [{"container"}]
  DUPTABLE R6 K7 [{"tag"}]
  LOADK R7 K46 [""]
  SETTABLEKS R7 R6 K6 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  SETTABLE R5 R3 R4
  LOADB R4 1
  DUPTABLE R5 K45 [{"container"}]
  DUPTABLE R6 K7 [{"tag"}]
  LOADK R7 K47 ["bg-surface-200"]
  SETTABLEKS R7 R6 K6 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  SETTABLE R5 R3 R4
  DUPTABLE R4 K51 [{"common", "sizes", "isChecked"}]
  SETTABLEKS R1 R4 K48 ["common"]
  SETTABLEKS R2 R4 K49 ["sizes"]
  SETTABLEKS R3 R4 K50 ["isChecked"]
  RETURN R4 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useVariants"]
  LOADK R4 K1 ["MenuItem"]
  GETUPVAL R5 1
  MOVE R6 R0
  CALL R3 3 1
  GETUPVAL R4 2
  GETTABLEKS R5 R3 K2 ["common"]
  GETTABLEKS R7 R3 K3 ["sizes"]
  GETTABLE R6 R7 R1
  GETTABLEKS R8 R3 K4 ["isChecked"]
  GETTABLE R7 R8 R2
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Enums"]
  GETTABLEKS R2 R3 K7 ["InputSize"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Providers"]
  GETTABLEKS R4 R5 K9 ["Style"]
  GETTABLEKS R3 R4 K10 ["VariantsContext"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K11 ["Utility"]
  GETTABLEKS R4 R5 K12 ["composeStyleVariant"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K13 ["Components"]
  GETTABLEKS R5 R6 K14 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Providers"]
  GETTABLEKS R7 R8 K9 ["Style"]
  GETTABLEKS R6 R7 K15 ["Tokens"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K6 ["Enums"]
  GETTABLEKS R7 R8 K16 ["IconSize"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K11 ["Utility"]
  GETTABLEKS R8 R9 K17 ["Flags"]
  CALL R7 1 1
  DUPCLOSURE R8 K18 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R6
  DUPCLOSURE R9 K19 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R3
  RETURN R9 1
