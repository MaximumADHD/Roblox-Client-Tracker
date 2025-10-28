PROTO_0:
  GETTABLEKS R3 R0 K0 ["Stroke"]
  GETTABLEKS R2 R3 K1 ["Standard"]
  FASTCALL1 MATH_CEIL R2 [+2]
  GETIMPORT R1 K4 [math.ceil]
  CALL R1 1 1
  DUPTABLE R2 K7 [{"container", "input"}]
  DUPTABLE R3 K10 [{"tag", "padding"}]
  LOADK R4 K11 ["row auto-xy align-x-left align-y-center"]
  SETTABLEKS R4 R3 K8 ["tag"]
  GETIMPORT R4 K14 [UDim.new]
  LOADN R5 0
  MOVE R6 R1
  CALL R4 2 1
  SETTABLEKS R4 R3 K9 ["padding"]
  SETTABLEKS R3 R2 K5 ["container"]
  DUPTABLE R3 K16 [{"stroke"}]
  DUPTABLE R4 K18 [{"thickness"}]
  SETTABLEKS R1 R4 K17 ["thickness"]
  SETTABLEKS R4 R3 K15 ["stroke"]
  SETTABLEKS R3 R2 K6 ["input"]
  NEWTABLE R3 4 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K19 ["XSmall"]
  DUPTABLE R5 K20 [{"container"}]
  DUPTABLE R6 K21 [{"tag"}]
  LOADK R7 K22 ["gap-small"]
  SETTABLEKS R7 R6 K8 ["tag"]
  SETTABLEKS R6 R5 K5 ["container"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K23 ["Small"]
  DUPTABLE R5 K20 [{"container"}]
  DUPTABLE R6 K21 [{"tag"}]
  LOADK R7 K22 ["gap-small"]
  SETTABLEKS R7 R6 K8 ["tag"]
  SETTABLEKS R6 R5 K5 ["container"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K24 ["Medium"]
  DUPTABLE R5 K20 [{"container"}]
  DUPTABLE R6 K21 [{"tag"}]
  LOADK R7 K25 ["gap-medium"]
  SETTABLEKS R7 R6 K8 ["tag"]
  SETTABLEKS R6 R5 K5 ["container"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K26 ["Large"]
  DUPTABLE R5 K20 [{"container"}]
  DUPTABLE R6 K21 [{"tag"}]
  LOADK R7 K27 ["gap-large"]
  SETTABLEKS R7 R6 K8 ["tag"]
  SETTABLEKS R6 R5 K5 ["container"]
  SETTABLE R5 R3 R4
  DUPTABLE R4 K30 [{"common", "sizes"}]
  SETTABLEKS R2 R4 K28 ["common"]
  SETTABLEKS R3 R4 K29 ["sizes"]
  RETURN R4 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useVariants"]
  LOADK R3 K1 ["InternalInput"]
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
  GETTABLEKS R3 R0 K6 ["Components"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Enums"]
  GETTABLEKS R3 R4 K9 ["InputSize"]
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
  CAPTURE VAL R2
  DUPCLOSURE R7 K17 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R3
  RETURN R7 1
