PROTO_0:
  GETIMPORT R1 K2 [UDim.new]
  LOADN R2 0
  GETTABLEKS R5 R0 K4 ["width"]
  GETTABLEKS R6 R0 K5 ["horizontalPadding"]
  SUB R4 R5 R6
  DIVK R3 R4 K3 [2]
  CALL R1 2 1
  DUPTABLE R2 K9 [{"button", "upButton", "downButton"}]
  DUPTABLE R3 K12 [{"tag", "width", "padding"}]
  LOADK R4 K13 ["size-full fill"]
  SETTABLEKS R4 R3 K10 ["tag"]
  GETTABLEKS R4 R0 K4 ["width"]
  SETTABLEKS R4 R3 K4 ["width"]
  DUPTABLE R4 K16 [{"left", "right"}]
  SETTABLEKS R1 R4 K14 ["left"]
  SETTABLEKS R1 R4 K15 ["right"]
  SETTABLEKS R4 R3 K11 ["padding"]
  SETTABLEKS R3 R2 K6 ["button"]
  DUPTABLE R3 K17 [{"tag"}]
  GETTABLEKS R4 R0 K18 ["upButtonTag"]
  SETTABLEKS R4 R3 K10 ["tag"]
  SETTABLEKS R3 R2 K7 ["upButton"]
  DUPTABLE R3 K17 [{"tag"}]
  GETTABLEKS R4 R0 K19 ["downButtonTag"]
  SETTABLEKS R4 R3 K10 ["tag"]
  SETTABLEKS R3 R2 K8 ["downButton"]
  RETURN R2 1

PROTO_1:
  DUPTABLE R1 K3 [{"upButton", "downButton", "icon"}]
  DUPTABLE R2 K5 [{"tag"}]
  LOADK R3 K6 ["size-full fill padding-bottom-xsmall"]
  SETTABLEKS R3 R2 K4 ["tag"]
  SETTABLEKS R2 R1 K0 ["upButton"]
  DUPTABLE R2 K5 [{"tag"}]
  LOADK R3 K7 ["size-full fill padding-top-xsmall"]
  SETTABLEKS R3 R2 K4 ["tag"]
  SETTABLEKS R2 R1 K1 ["downButton"]
  DUPTABLE R2 K5 [{"tag"}]
  LOADK R3 K8 ["content-default size-150-100"]
  SETTABLEKS R3 R2 K4 ["tag"]
  SETTABLEKS R2 R1 K2 ["icon"]
  NEWTABLE R2 4 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K9 ["XSmall"]
  GETUPVAL R4 1
  DUPTABLE R5 K14 [{"width", "horizontalPadding", "upButtonTag", "downButtonTag"}]
  GETTABLEKS R7 R0 K15 ["Size"]
  GETTABLEKS R6 R7 K16 ["Size_400"]
  SETTABLEKS R6 R5 K10 ["width"]
  GETTABLEKS R7 R0 K15 ["Size"]
  GETTABLEKS R6 R7 K17 ["Size_150"]
  SETTABLEKS R6 R5 K11 ["horizontalPadding"]
  LOADK R6 K18 ["padding-top-xxsmall"]
  SETTABLEKS R6 R5 K12 ["upButtonTag"]
  LOADK R6 K19 ["padding-bottom-xxsmall"]
  SETTABLEKS R6 R5 K13 ["downButtonTag"]
  CALL R4 1 1
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K20 ["Small"]
  GETUPVAL R4 1
  DUPTABLE R5 K14 [{"width", "horizontalPadding", "upButtonTag", "downButtonTag"}]
  GETTABLEKS R7 R0 K15 ["Size"]
  GETTABLEKS R6 R7 K21 ["Size_600"]
  SETTABLEKS R6 R5 K10 ["width"]
  GETTABLEKS R7 R0 K15 ["Size"]
  GETTABLEKS R6 R7 K17 ["Size_150"]
  SETTABLEKS R6 R5 K11 ["horizontalPadding"]
  LOADK R6 K22 ["padding-top-xsmall"]
  SETTABLEKS R6 R5 K12 ["upButtonTag"]
  LOADK R6 K23 ["padding-bottom-xsmall"]
  SETTABLEKS R6 R5 K13 ["downButtonTag"]
  CALL R4 1 1
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K24 ["Medium"]
  GETUPVAL R4 1
  DUPTABLE R5 K14 [{"width", "horizontalPadding", "upButtonTag", "downButtonTag"}]
  GETTABLEKS R7 R0 K15 ["Size"]
  GETTABLEKS R6 R7 K21 ["Size_600"]
  SETTABLEKS R6 R5 K10 ["width"]
  GETTABLEKS R7 R0 K15 ["Size"]
  GETTABLEKS R6 R7 K17 ["Size_150"]
  SETTABLEKS R6 R5 K11 ["horizontalPadding"]
  LOADK R6 K25 ["padding-top-small"]
  SETTABLEKS R6 R5 K12 ["upButtonTag"]
  LOADK R6 K26 ["padding-bottom-small"]
  SETTABLEKS R6 R5 K13 ["downButtonTag"]
  CALL R4 1 1
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K27 ["Large"]
  GETUPVAL R4 1
  DUPTABLE R5 K14 [{"width", "horizontalPadding", "upButtonTag", "downButtonTag"}]
  GETTABLEKS R7 R0 K15 ["Size"]
  GETTABLEKS R6 R7 K28 ["Size_800"]
  SETTABLEKS R6 R5 K10 ["width"]
  GETTABLEKS R7 R0 K15 ["Size"]
  GETTABLEKS R6 R7 K17 ["Size_150"]
  SETTABLEKS R6 R5 K11 ["horizontalPadding"]
  LOADK R6 K29 ["padding-top-medium"]
  SETTABLEKS R6 R5 K12 ["upButtonTag"]
  LOADK R6 K30 ["padding-bottom-medium"]
  SETTABLEKS R6 R5 K13 ["downButtonTag"]
  CALL R4 1 1
  SETTABLE R4 R2 R3
  DUPTABLE R3 K33 [{"common", "sizes"}]
  SETTABLEKS R1 R3 K31 ["common"]
  SETTABLEKS R2 R3 K32 ["sizes"]
  RETURN R3 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useVariants"]
  LOADK R3 K1 ["NumberInput"]
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
  GETTABLEKS R3 R0 K6 ["Enums"]
  GETTABLEKS R2 R3 K7 ["InputSize"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Utility"]
  GETTABLEKS R3 R4 K9 ["composeStyleVariant"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Providers"]
  GETTABLEKS R5 R6 K11 ["Style"]
  GETTABLEKS R4 R5 K12 ["Tokens"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Providers"]
  GETTABLEKS R6 R7 K11 ["Style"]
  GETTABLEKS R5 R6 K13 ["VariantsContext"]
  CALL R4 1 1
  DUPCLOSURE R5 K14 [PROTO_0]
  DUPCLOSURE R6 K15 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R5
  DUPCLOSURE R7 K16 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R2
  RETURN R7 1
