PROTO_0:
  DUPTABLE R1 K2 [{"text", "content"}]
  DUPTABLE R2 K4 [{"tag"}]
  LOADK R3 K5 ["auto-x"]
  SETTABLEKS R3 R2 K3 ["tag"]
  SETTABLEKS R2 R1 K0 ["text"]
  DUPTABLE R2 K4 [{"tag"}]
  LOADK R3 K6 ["align-x-center align-y-center row gap-small"]
  SETTABLEKS R3 R2 K3 ["tag"]
  SETTABLEKS R2 R1 K1 ["content"]
  NEWTABLE R2 4 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["XSmall"]
  DUPTABLE R4 K9 [{"text", "content", "icon"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K10 ["text-label-small size-0-400"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["text"]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K11 ["padding-y-small"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K1 ["content"]
  DUPTABLE R5 K13 [{"size"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K7 ["XSmall"]
  SETTABLEKS R6 R5 K12 ["size"]
  SETTABLEKS R5 R4 K8 ["icon"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K14 ["Small"]
  DUPTABLE R4 K9 [{"text", "content", "icon"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K15 ["text-label-medium size-0-600"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["text"]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K11 ["padding-y-small"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K1 ["content"]
  DUPTABLE R5 K13 [{"size"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K16 ["Medium"]
  SETTABLEKS R6 R5 K12 ["size"]
  SETTABLEKS R5 R4 K8 ["icon"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K16 ["Medium"]
  DUPTABLE R4 K9 [{"text", "content", "icon"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K15 ["text-label-medium size-0-600"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["text"]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K17 ["padding-y-medium"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K1 ["content"]
  DUPTABLE R5 K13 [{"size"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K16 ["Medium"]
  SETTABLEKS R6 R5 K12 ["size"]
  SETTABLEKS R5 R4 K8 ["icon"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K18 ["Large"]
  DUPTABLE R4 K9 [{"text", "content", "icon"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K15 ["text-label-medium size-0-600"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["text"]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K19 ["padding-y-xlarge"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K1 ["content"]
  DUPTABLE R5 K13 [{"size"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K16 ["Medium"]
  SETTABLEKS R6 R5 K12 ["size"]
  SETTABLEKS R5 R4 K8 ["icon"]
  SETTABLE R4 R2 R3
  NEWTABLE R3 4 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["XSmall"]
  DUPTABLE R5 K20 [{"content"}]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K21 ["padding-x-small"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K1 ["content"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K14 ["Small"]
  DUPTABLE R5 K20 [{"content"}]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K21 ["padding-x-small"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K1 ["content"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K16 ["Medium"]
  DUPTABLE R5 K20 [{"content"}]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K22 ["padding-x-medium"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K1 ["content"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K18 ["Large"]
  DUPTABLE R5 K20 [{"content"}]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K23 ["padding-x-large"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K1 ["content"]
  SETTABLE R5 R3 R4
  NEWTABLE R4 2 0
  LOADB R5 0
  DUPTABLE R6 K25 [{"container", "content"}]
  DUPTABLE R7 K4 [{"tag"}]
  LOADK R8 K26 ["auto-xy"]
  SETTABLEKS R8 R7 K3 ["tag"]
  SETTABLEKS R7 R6 K24 ["container"]
  DUPTABLE R7 K4 [{"tag"}]
  LOADK R8 K27 ["size-0-full auto-x"]
  SETTABLEKS R8 R7 K3 ["tag"]
  SETTABLEKS R7 R6 K1 ["content"]
  SETTABLE R6 R4 R5
  LOADB R5 1
  DUPTABLE R6 K25 [{"container", "content"}]
  DUPTABLE R7 K4 [{"tag"}]
  LOADK R8 K28 ["auto-xy grow"]
  SETTABLEKS R8 R7 K3 ["tag"]
  SETTABLEKS R7 R6 K24 ["container"]
  DUPTABLE R7 K4 [{"tag"}]
  LOADK R8 K29 ["size-full-full"]
  SETTABLEKS R8 R7 K3 ["tag"]
  SETTABLEKS R7 R6 K1 ["content"]
  SETTABLE R6 R4 R5
  DUPTABLE R5 K34 [{"common", "sizes", "isFill", "paddings"}]
  SETTABLEKS R1 R5 K30 ["common"]
  SETTABLEKS R2 R5 K31 ["sizes"]
  SETTABLEKS R4 R5 K32 ["isFill"]
  SETTABLEKS R3 R5 K33 ["paddings"]
  RETURN R5 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useVariants"]
  LOADK R4 K1 ["Tab"]
  GETUPVAL R5 1
  MOVE R6 R0
  CALL R3 3 1
  GETUPVAL R4 2
  GETTABLEKS R5 R3 K2 ["common"]
  GETTABLEKS R7 R3 K3 ["sizes"]
  GETTABLE R6 R7 R1
  GETTABLEKS R8 R3 K4 ["isFill"]
  GETTABLE R7 R8 R2
  JUMPIFNOT R2 [+4]
  GETTABLEKS R9 R3 K5 ["paddings"]
  GETTABLE R8 R9 R1
  JUMP [+2]
  NEWTABLE R8 0 0
  CALL R4 4 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Utility"]
  GETTABLEKS R2 R3 K7 ["composeStyleVariant"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Providers"]
  GETTABLEKS R4 R5 K9 ["Style"]
  GETTABLEKS R3 R4 K10 ["Tokens"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Providers"]
  GETTABLEKS R5 R6 K9 ["Style"]
  GETTABLEKS R4 R5 K11 ["VariantsContext"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K12 ["Enums"]
  GETTABLEKS R5 R6 K13 ["InputSize"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K12 ["Enums"]
  GETTABLEKS R6 R7 K14 ["IconSize"]
  CALL R5 1 1
  DUPCLOSURE R6 K15 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R5
  DUPCLOSURE R7 K16 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R1
  RETURN R7 1
