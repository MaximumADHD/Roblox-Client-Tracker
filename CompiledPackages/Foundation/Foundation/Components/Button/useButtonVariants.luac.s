PROTO_0:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  DUPTABLE R2 K2 [{"container", "text"}]
  DUPTABLE R3 K4 [{"tag"}]
  LOADK R4 K5 ["row align-y-center align-x-center clip"]
  SETTABLEKS R4 R3 K3 ["tag"]
  SETTABLEKS R3 R2 K0 ["container"]
  DUPTABLE R3 K4 [{"tag"}]
  LOADK R4 K6 ["size-0-full auto-x text-truncate-end shrink"]
  SETTABLEKS R4 R3 K3 ["tag"]
  SETTABLEKS R3 R2 K1 ["text"]
  NEWTABLE R3 4 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K7 ["XSmall"]
  DUPTABLE R5 K9 [{"container", "icon", "text"}]
  DUPTABLE R6 K12 [{"tag", "radius", "height"}]
  LOADK R7 K13 ["gap-xsmall padding-small"]
  SETTABLEKS R7 R6 K3 ["tag"]
  GETTABLEKS R10 R1 K14 ["sizes"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["XSmall"]
  GETTABLE R9 R10 R11
  GETTABLEKS R8 R9 K0 ["container"]
  GETTABLEKS R7 R8 K10 ["radius"]
  SETTABLEKS R7 R6 K10 ["radius"]
  GETTABLEKS R10 R1 K14 ["sizes"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["XSmall"]
  GETTABLE R9 R10 R11
  GETTABLEKS R8 R9 K0 ["container"]
  GETTABLEKS R7 R8 K11 ["height"]
  SETTABLEKS R7 R6 K11 ["height"]
  SETTABLEKS R6 R5 K0 ["container"]
  DUPTABLE R6 K16 [{"size"}]
  GETIMPORT R7 K19 [UDim2.fromOffset]
  GETTABLEKS R9 R0 K20 ["Size"]
  GETTABLEKS R8 R9 K21 ["Size_300"]
  GETTABLEKS R10 R0 K20 ["Size"]
  GETTABLEKS R9 R10 K21 ["Size_300"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K15 ["size"]
  SETTABLEKS R6 R5 K8 ["icon"]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K22 ["text-title-small"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K1 ["text"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K23 ["Small"]
  DUPTABLE R5 K9 [{"container", "icon", "text"}]
  DUPTABLE R6 K12 [{"tag", "radius", "height"}]
  LOADK R7 K13 ["gap-xsmall padding-small"]
  SETTABLEKS R7 R6 K3 ["tag"]
  GETTABLEKS R10 R1 K14 ["sizes"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K23 ["Small"]
  GETTABLE R9 R10 R11
  GETTABLEKS R8 R9 K0 ["container"]
  GETTABLEKS R7 R8 K10 ["radius"]
  SETTABLEKS R7 R6 K10 ["radius"]
  GETTABLEKS R10 R1 K14 ["sizes"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K23 ["Small"]
  GETTABLE R9 R10 R11
  GETTABLEKS R8 R9 K0 ["container"]
  GETTABLEKS R7 R8 K11 ["height"]
  SETTABLEKS R7 R6 K11 ["height"]
  SETTABLEKS R6 R5 K0 ["container"]
  DUPTABLE R6 K16 [{"size"}]
  GETIMPORT R7 K19 [UDim2.fromOffset]
  GETTABLEKS R9 R0 K20 ["Size"]
  GETTABLEKS R8 R9 K24 ["Size_400"]
  GETTABLEKS R10 R0 K20 ["Size"]
  GETTABLEKS R9 R10 K24 ["Size_400"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K15 ["size"]
  SETTABLEKS R6 R5 K8 ["icon"]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K22 ["text-title-small"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K1 ["text"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K25 ["Medium"]
  DUPTABLE R5 K9 [{"container", "icon", "text"}]
  DUPTABLE R6 K12 [{"tag", "radius", "height"}]
  LOADK R7 K26 ["gap-small padding-medium"]
  SETTABLEKS R7 R6 K3 ["tag"]
  GETTABLEKS R10 R1 K14 ["sizes"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K25 ["Medium"]
  GETTABLE R9 R10 R11
  GETTABLEKS R8 R9 K0 ["container"]
  GETTABLEKS R7 R8 K10 ["radius"]
  SETTABLEKS R7 R6 K10 ["radius"]
  GETTABLEKS R10 R1 K14 ["sizes"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K25 ["Medium"]
  GETTABLE R9 R10 R11
  GETTABLEKS R8 R9 K0 ["container"]
  GETTABLEKS R7 R8 K11 ["height"]
  SETTABLEKS R7 R6 K11 ["height"]
  SETTABLEKS R6 R5 K0 ["container"]
  DUPTABLE R6 K16 [{"size"}]
  GETIMPORT R7 K19 [UDim2.fromOffset]
  GETTABLEKS R9 R0 K20 ["Size"]
  GETTABLEKS R8 R9 K27 ["Size_500"]
  GETTABLEKS R10 R0 K20 ["Size"]
  GETTABLEKS R9 R10 K27 ["Size_500"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K15 ["size"]
  SETTABLEKS R6 R5 K8 ["icon"]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K28 ["text-title-medium"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K1 ["text"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K29 ["Large"]
  DUPTABLE R5 K9 [{"container", "icon", "text"}]
  DUPTABLE R6 K12 [{"tag", "radius", "height"}]
  LOADK R7 K26 ["gap-small padding-medium"]
  SETTABLEKS R7 R6 K3 ["tag"]
  GETTABLEKS R10 R1 K14 ["sizes"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K29 ["Large"]
  GETTABLE R9 R10 R11
  GETTABLEKS R8 R9 K0 ["container"]
  GETTABLEKS R7 R8 K10 ["radius"]
  SETTABLEKS R7 R6 K10 ["radius"]
  GETTABLEKS R10 R1 K14 ["sizes"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K29 ["Large"]
  GETTABLE R9 R10 R11
  GETTABLEKS R8 R9 K0 ["container"]
  GETTABLEKS R7 R8 K11 ["height"]
  SETTABLEKS R7 R6 K11 ["height"]
  SETTABLEKS R6 R5 K0 ["container"]
  DUPTABLE R6 K16 [{"size"}]
  GETIMPORT R7 K19 [UDim2.fromOffset]
  GETTABLEKS R9 R0 K20 ["Size"]
  GETTABLEKS R8 R9 K30 ["Size_600"]
  GETTABLEKS R10 R0 K20 ["Size"]
  GETTABLEKS R9 R10 K30 ["Size_600"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K15 ["size"]
  SETTABLEKS R6 R5 K8 ["icon"]
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K31 ["text-title-large"]
  SETTABLEKS R7 R6 K3 ["tag"]
  SETTABLEKS R6 R5 K1 ["text"]
  SETTABLE R5 R3 R4
  DUPTABLE R4 K34 [{"common", "sizes", "types"}]
  SETTABLEKS R2 R4 K32 ["common"]
  SETTABLEKS R3 R4 K14 ["sizes"]
  GETTABLEKS R5 R1 K33 ["types"]
  SETTABLEKS R5 R4 K33 ["types"]
  RETURN R4 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useVariants"]
  LOADK R4 K1 ["Button"]
  GETUPVAL R5 1
  MOVE R6 R0
  CALL R3 3 1
  GETUPVAL R4 2
  GETTABLEKS R5 R3 K2 ["common"]
  GETTABLEKS R7 R3 K3 ["sizes"]
  GETTABLE R6 R7 R1
  GETTABLEKS R8 R3 K4 ["types"]
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
  GETTABLEKS R4 R0 K6 ["Enums"]
  GETTABLEKS R3 R4 K8 ["ButtonVariant"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Components"]
  GETTABLEKS R4 R5 K10 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K11 ["Providers"]
  GETTABLEKS R6 R7 K12 ["Style"]
  GETTABLEKS R5 R6 K13 ["VariantsContext"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K14 ["Utility"]
  GETTABLEKS R6 R7 K15 ["composeStyleVariant"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K16 ["Parent"]
  GETTABLEKS R7 R8 K17 ["getSharedVariants"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K11 ["Providers"]
  GETTABLEKS R9 R10 K12 ["Style"]
  GETTABLEKS R8 R9 K18 ["Tokens"]
  CALL R7 1 1
  DUPCLOSURE R8 K19 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R1
  DUPCLOSURE R9 K20 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R5
  RETURN R9 1
