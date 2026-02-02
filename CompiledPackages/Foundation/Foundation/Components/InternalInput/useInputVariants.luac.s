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
  LOADNIL R3
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K19 ["FoundationInternalInputSelectedStylesAndSpacing"]
  JUMPIFNOT R4 [+48]
  NEWTABLE R4 4 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K20 ["XSmall"]
  DUPTABLE R6 K21 [{"container"}]
  DUPTABLE R7 K22 [{"tag"}]
  LOADK R8 K23 ["gap-medium"]
  SETTABLEKS R8 R7 K8 ["tag"]
  SETTABLEKS R7 R6 K5 ["container"]
  SETTABLE R6 R4 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K24 ["Small"]
  DUPTABLE R6 K21 [{"container"}]
  DUPTABLE R7 K22 [{"tag"}]
  LOADK R8 K23 ["gap-medium"]
  SETTABLEKS R8 R7 K8 ["tag"]
  SETTABLEKS R7 R6 K5 ["container"]
  SETTABLE R6 R4 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K25 ["Medium"]
  DUPTABLE R6 K21 [{"container"}]
  DUPTABLE R7 K22 [{"tag"}]
  LOADK R8 K23 ["gap-medium"]
  SETTABLEKS R8 R7 K8 ["tag"]
  SETTABLEKS R7 R6 K5 ["container"]
  SETTABLE R6 R4 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K26 ["Large"]
  DUPTABLE R6 K21 [{"container"}]
  DUPTABLE R7 K22 [{"tag"}]
  LOADK R8 K23 ["gap-medium"]
  SETTABLEKS R8 R7 K8 ["tag"]
  SETTABLEKS R7 R6 K5 ["container"]
  SETTABLE R6 R4 R5
  MOVE R3 R4
  JUMP [+47]
  NEWTABLE R4 4 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K20 ["XSmall"]
  DUPTABLE R6 K21 [{"container"}]
  DUPTABLE R7 K22 [{"tag"}]
  LOADK R8 K27 ["gap-small"]
  SETTABLEKS R8 R7 K8 ["tag"]
  SETTABLEKS R7 R6 K5 ["container"]
  SETTABLE R6 R4 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K24 ["Small"]
  DUPTABLE R6 K21 [{"container"}]
  DUPTABLE R7 K22 [{"tag"}]
  LOADK R8 K27 ["gap-small"]
  SETTABLEKS R8 R7 K8 ["tag"]
  SETTABLEKS R7 R6 K5 ["container"]
  SETTABLE R6 R4 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K25 ["Medium"]
  DUPTABLE R6 K21 [{"container"}]
  DUPTABLE R7 K22 [{"tag"}]
  LOADK R8 K23 ["gap-medium"]
  SETTABLEKS R8 R7 K8 ["tag"]
  SETTABLEKS R7 R6 K5 ["container"]
  SETTABLE R6 R4 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K26 ["Large"]
  DUPTABLE R6 K21 [{"container"}]
  DUPTABLE R7 K22 [{"tag"}]
  LOADK R8 K28 ["gap-large"]
  SETTABLEKS R8 R7 K8 ["tag"]
  SETTABLEKS R7 R6 K5 ["container"]
  SETTABLE R6 R4 R5
  MOVE R3 R4
  NEWTABLE R4 1 0
  LOADB R5 1
  DUPTABLE R6 K21 [{"container"}]
  DUPTABLE R7 K22 [{"tag"}]
  LOADK R8 K29 ["flex-x-between size-full-0"]
  SETTABLEKS R8 R7 K8 ["tag"]
  SETTABLEKS R7 R6 K5 ["container"]
  SETTABLE R6 R4 R5
  DUPTABLE R5 K33 [{"common", "sizes", "justifyContent"}]
  SETTABLEKS R2 R5 K30 ["common"]
  SETTABLEKS R3 R5 K31 ["sizes"]
  SETTABLEKS R4 R5 K32 ["justifyContent"]
  RETURN R5 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useVariants"]
  LOADK R4 K1 ["InternalInput"]
  GETUPVAL R5 1
  MOVE R6 R0
  CALL R3 3 1
  GETUPVAL R4 2
  GETTABLEKS R5 R3 K2 ["common"]
  GETTABLEKS R7 R3 K3 ["sizes"]
  GETTABLE R6 R7 R1
  GETTABLEKS R8 R3 K4 ["justifyContent"]
  ORK R9 R2 K5 [False]
  GETTABLE R7 R8 R9
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
  GETTABLEKS R4 R0 K8 ["Components"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Enums"]
  GETTABLEKS R4 R5 K11 ["InputSize"]
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
  CAPTURE VAL R3
  DUPCLOSURE R8 K18 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R4
  RETURN R8 1
