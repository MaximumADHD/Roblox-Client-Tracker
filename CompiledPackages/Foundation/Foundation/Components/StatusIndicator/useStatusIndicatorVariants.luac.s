PROTO_0:
  DUPTABLE R1 K2 [{"container", "content"}]
  DUPTABLE R2 K4 [{"tag"}]
  LOADK R3 K5 ["radius-circle"]
  SETTABLEKS R3 R2 K3 ["tag"]
  SETTABLEKS R2 R1 K0 ["container"]
  DUPTABLE R2 K4 [{"tag"}]
  NEWTABLE R3 2 0
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["auto-xy text-caption-small"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["FoundationFixBadgeAndIndicatorTextAlignment"]
  SETTABLEKS R4 R3 K8 ["text-align-x-left"]
  SETTABLEKS R3 R2 K3 ["tag"]
  SETTABLEKS R2 R1 K1 ["content"]
  NEWTABLE R2 8 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K9 ["Alert"]
  DUPTABLE R4 K2 [{"container", "content"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K10 ["bg-system-alert"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K12 [{"style"}]
  GETTABLEKS R8 R0 K13 ["DarkMode"]
  GETTABLEKS R7 R8 K14 ["Content"]
  GETTABLEKS R6 R7 K15 ["Emphasis"]
  SETTABLEKS R6 R5 K11 ["style"]
  SETTABLEKS R5 R4 K1 ["content"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K16 ["Success"]
  DUPTABLE R4 K2 [{"container", "content"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K17 ["bg-system-success"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K12 [{"style"}]
  GETTABLEKS R8 R0 K18 ["LightMode"]
  GETTABLEKS R7 R8 K14 ["Content"]
  GETTABLEKS R6 R7 K15 ["Emphasis"]
  SETTABLEKS R6 R5 K11 ["style"]
  SETTABLEKS R5 R4 K1 ["content"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K19 ["Warning"]
  DUPTABLE R4 K2 [{"container", "content"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K20 ["bg-system-warning"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K12 [{"style"}]
  GETTABLEKS R8 R0 K18 ["LightMode"]
  GETTABLEKS R7 R8 K14 ["Content"]
  GETTABLEKS R6 R7 K15 ["Emphasis"]
  SETTABLEKS R6 R5 K11 ["style"]
  SETTABLEKS R5 R4 K1 ["content"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K15 ["Emphasis"]
  DUPTABLE R4 K2 [{"container", "content"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K21 ["bg-system-emphasis"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K12 [{"style"}]
  GETTABLEKS R8 R0 K13 ["DarkMode"]
  GETTABLEKS R7 R8 K14 ["Content"]
  GETTABLEKS R6 R7 K15 ["Emphasis"]
  SETTABLEKS R6 R5 K11 ["style"]
  SETTABLEKS R5 R4 K1 ["content"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K22 ["Neutral"]
  DUPTABLE R4 K2 [{"container", "content"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K23 ["bg-system-neutral"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K12 [{"style"}]
  GETTABLEKS R8 R0 K24 ["Inverse"]
  GETTABLEKS R7 R8 K14 ["Content"]
  GETTABLEKS R6 R7 K15 ["Emphasis"]
  SETTABLEKS R6 R5 K11 ["style"]
  SETTABLEKS R5 R4 K1 ["content"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K25 ["Standard"]
  DUPTABLE R4 K2 [{"container", "content"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K26 ["bg-action-standard"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K12 [{"style"}]
  GETTABLEKS R8 R0 K27 ["Color"]
  GETTABLEKS R7 R8 K14 ["Content"]
  GETTABLEKS R6 R7 K15 ["Emphasis"]
  SETTABLEKS R6 R5 K11 ["style"]
  SETTABLEKS R5 R4 K1 ["content"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K28 ["Contrast_Experiment"]
  DUPTABLE R4 K2 [{"container", "content"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K29 ["bg-system-contrast"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K12 [{"style"}]
  GETTABLEKS R8 R0 K24 ["Inverse"]
  GETTABLEKS R7 R8 K14 ["Content"]
  GETTABLEKS R6 R7 K15 ["Emphasis"]
  SETTABLEKS R6 R5 K11 ["style"]
  SETTABLEKS R5 R4 K1 ["content"]
  SETTABLE R4 R2 R3
  NEWTABLE R3 2 0
  LOADB R4 0
  DUPTABLE R5 K30 [{"container"}]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K31 ["size-200-200"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  SETTABLE R5 R3 R4
  LOADB R4 1
  DUPTABLE R5 K30 [{"container"}]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K32 ["size-400-400 auto-x row align-y-center align-x-center padding-xsmall"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  SETTABLE R5 R3 R4
  DUPTABLE R4 K36 [{"common", "variants", "hasValue"}]
  SETTABLEKS R1 R4 K33 ["common"]
  SETTABLEKS R2 R4 K34 ["variants"]
  SETTABLEKS R3 R4 K35 ["hasValue"]
  RETURN R4 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["FoundationStatusIndicatorVariantExperiment"]
  JUMPIF R3 [+19]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Contrast_Experiment"]
  JUMPIFNOTEQ R1 R3 [+5]
  GETIMPORT R3 K3 [error]
  LOADK R4 K4 ["Contrast is not a supported StatusIndicator variant."]
  CALL R3 1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["Alert"]
  JUMPIFNOTEQ R1 R3 [+6]
  JUMPIFNOT R2 [+4]
  GETIMPORT R3 K3 [error]
  LOADK R4 K6 ["Alert is not a supported numeric StatusIndicator variant."]
  CALL R3 1 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K7 ["useVariants"]
  LOADK R4 K8 ["StatusIndicator"]
  GETGLOBAL R5 K9 ["variantsFactory"]
  MOVE R6 R0
  CALL R3 3 1
  GETUPVAL R4 3
  GETTABLEKS R5 R3 K10 ["common"]
  GETTABLEKS R7 R3 K11 ["variants"]
  GETTABLE R6 R7 R1
  GETTABLEKS R8 R3 K12 ["hasValue"]
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
  GETTABLEKS R3 R4 K9 ["StatusIndicatorVariant"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Components"]
  GETTABLEKS R4 R5 K11 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Utility"]
  GETTABLEKS R5 R6 K12 ["composeStyleVariant"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K13 ["Providers"]
  GETTABLEKS R7 R8 K14 ["Style"]
  GETTABLEKS R6 R7 K15 ["Tokens"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K13 ["Providers"]
  GETTABLEKS R8 R9 K14 ["Style"]
  GETTABLEKS R7 R8 K16 ["VariantsContext"]
  CALL R6 1 1
  DUPCLOSURE R7 K17 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETGLOBAL R7 K18 ["variantsFactory"]
  DUPCLOSURE R7 K19 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R4
  RETURN R7 1
