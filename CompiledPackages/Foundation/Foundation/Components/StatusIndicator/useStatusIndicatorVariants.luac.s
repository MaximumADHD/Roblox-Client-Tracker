PROTO_0:
  DUPTABLE R1 K2 [{"container", "content"}]
  DUPTABLE R2 K4 [{"tag"}]
  LOADK R3 K5 ["radius-circle"]
  SETTABLEKS R3 R2 K3 ["tag"]
  SETTABLEKS R2 R1 K0 ["container"]
  DUPTABLE R2 K4 [{"tag"}]
  LOADK R3 K6 ["auto-xy text-caption-small"]
  SETTABLEKS R3 R2 K3 ["tag"]
  SETTABLEKS R2 R1 K1 ["content"]
  NEWTABLE R2 8 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["Alert"]
  DUPTABLE R4 K2 [{"container", "content"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K8 ["bg-system-alert"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K10 [{"style"}]
  GETTABLEKS R8 R0 K11 ["DarkMode"]
  GETTABLEKS R7 R8 K12 ["Content"]
  GETTABLEKS R6 R7 K13 ["Emphasis"]
  SETTABLEKS R6 R5 K9 ["style"]
  SETTABLEKS R5 R4 K1 ["content"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K14 ["Success"]
  DUPTABLE R4 K2 [{"container", "content"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K15 ["bg-system-success"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K10 [{"style"}]
  GETTABLEKS R8 R0 K16 ["LightMode"]
  GETTABLEKS R7 R8 K12 ["Content"]
  GETTABLEKS R6 R7 K13 ["Emphasis"]
  SETTABLEKS R6 R5 K9 ["style"]
  SETTABLEKS R5 R4 K1 ["content"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K17 ["Warning"]
  DUPTABLE R4 K2 [{"container", "content"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K18 ["bg-system-warning"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K10 [{"style"}]
  GETTABLEKS R8 R0 K16 ["LightMode"]
  GETTABLEKS R7 R8 K12 ["Content"]
  GETTABLEKS R6 R7 K13 ["Emphasis"]
  SETTABLEKS R6 R5 K9 ["style"]
  SETTABLEKS R5 R4 K1 ["content"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K13 ["Emphasis"]
  DUPTABLE R4 K2 [{"container", "content"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K19 ["bg-system-emphasis"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K10 [{"style"}]
  GETTABLEKS R8 R0 K11 ["DarkMode"]
  GETTABLEKS R7 R8 K12 ["Content"]
  GETTABLEKS R6 R7 K13 ["Emphasis"]
  SETTABLEKS R6 R5 K9 ["style"]
  SETTABLEKS R5 R4 K1 ["content"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K20 ["Neutral"]
  DUPTABLE R4 K2 [{"container", "content"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K21 ["bg-system-neutral"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K10 [{"style"}]
  GETTABLEKS R8 R0 K22 ["Inverse"]
  GETTABLEKS R7 R8 K12 ["Content"]
  GETTABLEKS R6 R7 K13 ["Emphasis"]
  SETTABLEKS R6 R5 K9 ["style"]
  SETTABLEKS R5 R4 K1 ["content"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K23 ["Standard"]
  DUPTABLE R4 K2 [{"container", "content"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K24 ["bg-action-standard"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K10 [{"style"}]
  GETTABLEKS R8 R0 K25 ["Color"]
  GETTABLEKS R7 R8 K12 ["Content"]
  GETTABLEKS R6 R7 K13 ["Emphasis"]
  SETTABLEKS R6 R5 K9 ["style"]
  SETTABLEKS R5 R4 K1 ["content"]
  SETTABLE R4 R2 R3
  NEWTABLE R3 2 0
  LOADB R4 0
  DUPTABLE R5 K26 [{"container"}]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K27 ["size-200-200"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  SETTABLE R5 R3 R4
  LOADB R4 1
  DUPTABLE R5 K26 [{"container"}]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K28 ["size-400-400 auto-x row align-y-center align-x-center padding-xsmall"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  SETTABLE R5 R3 R4
  DUPTABLE R4 K32 [{"common", "variants", "hasValue"}]
  SETTABLEKS R1 R4 K29 ["common"]
  SETTABLEKS R2 R4 K30 ["variants"]
  SETTABLEKS R3 R4 K31 ["hasValue"]
  RETURN R4 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useVariants"]
  LOADK R4 K1 ["StatusIndicator"]
  GETGLOBAL R5 K2 ["variantsFactory"]
  MOVE R6 R0
  CALL R3 3 1
  GETUPVAL R4 1
  GETTABLEKS R5 R3 K3 ["common"]
  GETTABLEKS R7 R3 K4 ["variants"]
  GETTABLE R6 R7 R1
  GETTABLEKS R8 R3 K5 ["hasValue"]
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
  GETTABLEKS R2 R3 K7 ["StatusIndicatorVariant"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Components"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Utility"]
  GETTABLEKS R4 R5 K11 ["composeStyleVariant"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K12 ["Providers"]
  GETTABLEKS R6 R7 K13 ["Style"]
  GETTABLEKS R5 R6 K14 ["Tokens"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K12 ["Providers"]
  GETTABLEKS R7 R8 K13 ["Style"]
  GETTABLEKS R6 R7 K15 ["VariantsContext"]
  CALL R5 1 1
  DUPCLOSURE R6 K16 [PROTO_0]
  CAPTURE VAL R1
  SETGLOBAL R6 K17 ["variantsFactory"]
  DUPCLOSURE R6 K18 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R3
  RETURN R6 1
