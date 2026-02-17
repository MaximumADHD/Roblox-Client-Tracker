PROTO_0:
  DUPTABLE R1 K2 [{"container", "text"}]
  DUPTABLE R2 K4 [{"tag"}]
  LOADK R3 K5 ["radius-circle row align-y-center align-x-center gap-xsmall"]
  SETTABLEKS R3 R2 K3 ["tag"]
  SETTABLEKS R2 R1 K0 ["container"]
  DUPTABLE R2 K4 [{"tag"}]
  NEWTABLE R3 2 0
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["auto-xy text-label-small"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["FoundationFixBadgeAndIndicatorTextAlignment"]
  SETTABLEKS R4 R3 K8 ["text-align-x-left"]
  SETTABLEKS R3 R2 K3 ["tag"]
  SETTABLEKS R2 R1 K1 ["text"]
  NEWTABLE R2 8 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K9 ["Alert"]
  DUPTABLE R4 K11 [{"container", "content"}]
  DUPTABLE R5 K13 [{"backgroundStyle"}]
  GETTABLEKS R8 R0 K14 ["Color"]
  GETTABLEKS R7 R8 K15 ["System"]
  GETTABLEKS R6 R7 K9 ["Alert"]
  SETTABLEKS R6 R5 K12 ["backgroundStyle"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K17 [{"style"}]
  GETTABLEKS R8 R0 K18 ["DarkMode"]
  GETTABLEKS R7 R8 K19 ["Content"]
  GETTABLEKS R6 R7 K20 ["Emphasis"]
  SETTABLEKS R6 R5 K16 ["style"]
  SETTABLEKS R5 R4 K10 ["content"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K21 ["Success"]
  DUPTABLE R4 K11 [{"container", "content"}]
  DUPTABLE R5 K13 [{"backgroundStyle"}]
  GETTABLEKS R8 R0 K14 ["Color"]
  GETTABLEKS R7 R8 K15 ["System"]
  GETTABLEKS R6 R7 K21 ["Success"]
  SETTABLEKS R6 R5 K12 ["backgroundStyle"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K17 [{"style"}]
  GETTABLEKS R8 R0 K22 ["LightMode"]
  GETTABLEKS R7 R8 K19 ["Content"]
  GETTABLEKS R6 R7 K20 ["Emphasis"]
  SETTABLEKS R6 R5 K16 ["style"]
  SETTABLEKS R5 R4 K10 ["content"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K23 ["Warning"]
  DUPTABLE R4 K11 [{"container", "content"}]
  DUPTABLE R5 K13 [{"backgroundStyle"}]
  GETTABLEKS R8 R0 K14 ["Color"]
  GETTABLEKS R7 R8 K15 ["System"]
  GETTABLEKS R6 R7 K23 ["Warning"]
  SETTABLEKS R6 R5 K12 ["backgroundStyle"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K17 [{"style"}]
  GETTABLEKS R8 R0 K22 ["LightMode"]
  GETTABLEKS R7 R8 K19 ["Content"]
  GETTABLEKS R6 R7 K20 ["Emphasis"]
  SETTABLEKS R6 R5 K16 ["style"]
  SETTABLEKS R5 R4 K10 ["content"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K24 ["Contrast"]
  DUPTABLE R4 K11 [{"container", "content"}]
  DUPTABLE R5 K13 [{"backgroundStyle"}]
  GETTABLEKS R8 R0 K14 ["Color"]
  GETTABLEKS R7 R8 K15 ["System"]
  GETTABLEKS R6 R7 K24 ["Contrast"]
  SETTABLEKS R6 R5 K12 ["backgroundStyle"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K17 [{"style"}]
  GETTABLEKS R8 R0 K25 ["Inverse"]
  GETTABLEKS R7 R8 K19 ["Content"]
  GETTABLEKS R6 R7 K20 ["Emphasis"]
  SETTABLEKS R6 R5 K16 ["style"]
  SETTABLEKS R5 R4 K10 ["content"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K26 ["Neutral"]
  DUPTABLE R4 K11 [{"container", "content"}]
  DUPTABLE R5 K13 [{"backgroundStyle"}]
  GETTABLEKS R8 R0 K14 ["Color"]
  GETTABLEKS R7 R8 K27 ["Shift"]
  GETTABLEKS R6 R7 K28 ["Shift_300"]
  SETTABLEKS R6 R5 K12 ["backgroundStyle"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K17 [{"style"}]
  GETTABLEKS R8 R0 K14 ["Color"]
  GETTABLEKS R7 R8 K19 ["Content"]
  GETTABLEKS R6 R7 K20 ["Emphasis"]
  SETTABLEKS R6 R5 K16 ["style"]
  SETTABLEKS R5 R4 K10 ["content"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K29 ["OverMedia"]
  DUPTABLE R4 K11 [{"container", "content"}]
  DUPTABLE R5 K31 [{"backgroundStyle", "stroke"}]
  GETTABLEKS R8 R0 K22 ["LightMode"]
  GETTABLEKS R7 R8 K32 ["Surface"]
  GETTABLEKS R6 R7 K33 ["Surface_100"]
  SETTABLEKS R6 R5 K12 ["backgroundStyle"]
  DUPTABLE R6 K35 [{"Color", "Transparency"}]
  GETTABLEKS R10 R0 K22 ["LightMode"]
  GETTABLEKS R9 R10 K36 ["Stroke"]
  GETTABLEKS R8 R9 K37 ["Default"]
  GETTABLEKS R7 R8 K38 ["Color3"]
  SETTABLEKS R7 R6 K14 ["Color"]
  GETTABLEKS R10 R0 K22 ["LightMode"]
  GETTABLEKS R9 R10 K36 ["Stroke"]
  GETTABLEKS R8 R9 K37 ["Default"]
  GETTABLEKS R7 R8 K34 ["Transparency"]
  SETTABLEKS R7 R6 K34 ["Transparency"]
  SETTABLEKS R6 R5 K30 ["stroke"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K17 [{"style"}]
  GETTABLEKS R8 R0 K22 ["LightMode"]
  GETTABLEKS R7 R8 K19 ["Content"]
  GETTABLEKS R6 R7 K20 ["Emphasis"]
  SETTABLEKS R6 R5 K16 ["style"]
  SETTABLEKS R5 R4 K10 ["content"]
  SETTABLE R4 R2 R3
  NEWTABLE R3 2 0
  LOADB R4 1
  DUPTABLE R5 K39 [{"container"}]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K40 ["size-600"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  SETTABLE R5 R3 R4
  LOADB R4 0
  DUPTABLE R5 K39 [{"container"}]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K41 ["size-0-600 auto-x padding-x-small"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  SETTABLE R5 R3 R4
  DUPTABLE R4 K45 [{"common", "variants", "iconOnly"}]
  SETTABLEKS R1 R4 K42 ["common"]
  SETTABLEKS R2 R4 K43 ["variants"]
  SETTABLEKS R3 R4 K44 ["iconOnly"]
  RETURN R4 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useVariants"]
  LOADK R4 K1 ["Badge"]
  GETGLOBAL R5 K2 ["variantsFactory"]
  MOVE R6 R0
  CALL R3 3 1
  GETUPVAL R4 1
  GETTABLEKS R5 R3 K3 ["common"]
  GETTABLEKS R7 R3 K4 ["variants"]
  GETTABLE R6 R7 R1
  GETTABLEKS R8 R3 K5 ["iconOnly"]
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
  GETTABLEKS R3 R0 K6 ["Utility"]
  GETTABLEKS R2 R3 K7 ["Flags"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Enums"]
  GETTABLEKS R3 R4 K9 ["BadgeVariant"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Enums"]
  GETTABLEKS R4 R5 K10 ["BadgeSize"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K11 ["Components"]
  GETTABLEKS R5 R6 K12 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Utility"]
  GETTABLEKS R6 R7 K13 ["composeStyleVariant"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K14 ["Providers"]
  GETTABLEKS R8 R9 K15 ["Style"]
  GETTABLEKS R7 R8 K16 ["Tokens"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K14 ["Providers"]
  GETTABLEKS R9 R10 K15 ["Style"]
  GETTABLEKS R8 R9 K17 ["VariantsContext"]
  CALL R7 1 1
  DUPCLOSURE R8 K18 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETGLOBAL R8 K19 ["variantsFactory"]
  DUPCLOSURE R8 K20 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R5
  RETURN R8 1
