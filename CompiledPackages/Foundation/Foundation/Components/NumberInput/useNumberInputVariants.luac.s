PROTO_0:
  GETIMPORT R1 K2 [UDim.new]
  LOADN R2 0
  GETTABLEKS R5 R0 K4 ["width"]
  GETTABLEKS R6 R0 K5 ["horizontalPadding"]
  SUB R4 R5 R6
  DIVK R3 R4 K3 [2]
  CALL R1 2 1
  DUPTABLE R2 K10 [{"button", "upButton", "downButton", "splitButton"}]
  DUPTABLE R3 K13 [{"tag", "width", "padding"}]
  LOADK R4 K14 ["size-full fill"]
  SETTABLEKS R4 R3 K11 ["tag"]
  GETTABLEKS R4 R0 K4 ["width"]
  SETTABLEKS R4 R3 K4 ["width"]
  DUPTABLE R4 K17 [{"left", "right"}]
  SETTABLEKS R1 R4 K15 ["left"]
  SETTABLEKS R1 R4 K16 ["right"]
  SETTABLEKS R4 R3 K12 ["padding"]
  SETTABLEKS R3 R2 K6 ["button"]
  DUPTABLE R3 K18 [{"tag"}]
  GETTABLEKS R4 R0 K19 ["upButtonTag"]
  SETTABLEKS R4 R3 K11 ["tag"]
  SETTABLEKS R3 R2 K7 ["upButton"]
  DUPTABLE R3 K18 [{"tag"}]
  GETTABLEKS R4 R0 K20 ["downButtonTag"]
  SETTABLEKS R4 R3 K11 ["tag"]
  SETTABLEKS R3 R2 K8 ["downButton"]
  DUPTABLE R3 K22 [{"size", "tag"}]
  GETTABLEKS R4 R0 K23 ["splitButtonSize"]
  SETTABLEKS R4 R3 K21 ["size"]
  GETTABLEKS R4 R0 K24 ["splitButtonTag"]
  SETTABLEKS R4 R3 K11 ["tag"]
  SETTABLEKS R3 R2 K9 ["splitButton"]
  RETURN R2 1

PROTO_1:
  DUPTABLE R1 K4 [{"upButton", "downButton", "splitButton", "icon"}]
  DUPTABLE R2 K6 [{"tag"}]
  LOADK R3 K7 ["size-full fill padding-bottom-xsmall"]
  SETTABLEKS R3 R2 K5 ["tag"]
  SETTABLEKS R2 R1 K0 ["upButton"]
  DUPTABLE R2 K6 [{"tag"}]
  LOADK R3 K8 ["size-full fill padding-top-xsmall"]
  SETTABLEKS R3 R2 K5 ["tag"]
  SETTABLEKS R2 R1 K1 ["downButton"]
  DUPTABLE R2 K6 [{"tag"}]
  LOADK R3 K9 ["bg-shift-100"]
  SETTABLEKS R3 R2 K5 ["tag"]
  SETTABLEKS R2 R1 K2 ["splitButton"]
  DUPTABLE R2 K6 [{"tag"}]
  LOADK R3 K10 ["content-default size-150-100"]
  SETTABLEKS R3 R2 K5 ["tag"]
  SETTABLEKS R2 R1 K3 ["icon"]
  NEWTABLE R2 4 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K11 ["XSmall"]
  GETUPVAL R4 1
  DUPTABLE R5 K18 [{"width", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
  GETTABLEKS R7 R0 K19 ["Size"]
  GETTABLEKS R6 R7 K20 ["Size_400"]
  SETTABLEKS R6 R5 K12 ["width"]
  GETTABLEKS R7 R0 K19 ["Size"]
  GETTABLEKS R6 R7 K21 ["Size_150"]
  SETTABLEKS R6 R5 K13 ["horizontalPadding"]
  LOADK R6 K22 ["padding-top-xxsmall"]
  SETTABLEKS R6 R5 K14 ["upButtonTag"]
  LOADK R6 K23 ["padding-bottom-xxsmall"]
  SETTABLEKS R6 R5 K15 ["downButtonTag"]
  LOADK R6 K24 ["radius-small"]
  SETTABLEKS R6 R5 K16 ["splitButtonTag"]
  GETTABLEKS R7 R0 K19 ["Size"]
  GETTABLEKS R6 R7 K25 ["Size_600"]
  SETTABLEKS R6 R5 K17 ["splitButtonSize"]
  CALL R4 1 1
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K26 ["Small"]
  GETUPVAL R4 1
  DUPTABLE R5 K18 [{"width", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
  GETTABLEKS R7 R0 K19 ["Size"]
  GETTABLEKS R6 R7 K25 ["Size_600"]
  SETTABLEKS R6 R5 K12 ["width"]
  GETTABLEKS R7 R0 K19 ["Size"]
  GETTABLEKS R6 R7 K21 ["Size_150"]
  SETTABLEKS R6 R5 K13 ["horizontalPadding"]
  LOADK R6 K27 ["padding-top-xsmall"]
  SETTABLEKS R6 R5 K14 ["upButtonTag"]
  LOADK R6 K28 ["padding-bottom-xsmall"]
  SETTABLEKS R6 R5 K15 ["downButtonTag"]
  LOADK R6 K29 ["radius-medium"]
  SETTABLEKS R6 R5 K16 ["splitButtonTag"]
  GETTABLEKS R7 R0 K19 ["Size"]
  GETTABLEKS R6 R7 K30 ["Size_800"]
  SETTABLEKS R6 R5 K17 ["splitButtonSize"]
  CALL R4 1 1
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K31 ["Medium"]
  GETUPVAL R4 1
  DUPTABLE R5 K18 [{"width", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
  GETTABLEKS R7 R0 K19 ["Size"]
  GETTABLEKS R6 R7 K25 ["Size_600"]
  SETTABLEKS R6 R5 K12 ["width"]
  GETTABLEKS R7 R0 K19 ["Size"]
  GETTABLEKS R6 R7 K21 ["Size_150"]
  SETTABLEKS R6 R5 K13 ["horizontalPadding"]
  LOADK R6 K32 ["padding-top-small"]
  SETTABLEKS R6 R5 K14 ["upButtonTag"]
  LOADK R6 K33 ["padding-bottom-small"]
  SETTABLEKS R6 R5 K15 ["downButtonTag"]
  LOADK R6 K29 ["radius-medium"]
  SETTABLEKS R6 R5 K16 ["splitButtonTag"]
  GETTABLEKS R7 R0 K19 ["Size"]
  GETTABLEKS R6 R7 K34 ["Size_1000"]
  SETTABLEKS R6 R5 K17 ["splitButtonSize"]
  CALL R4 1 1
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K35 ["Large"]
  GETUPVAL R4 1
  DUPTABLE R5 K18 [{"width", "horizontalPadding", "upButtonTag", "downButtonTag", "splitButtonTag", "splitButtonSize"}]
  GETTABLEKS R7 R0 K19 ["Size"]
  GETTABLEKS R6 R7 K30 ["Size_800"]
  SETTABLEKS R6 R5 K12 ["width"]
  GETTABLEKS R7 R0 K19 ["Size"]
  GETTABLEKS R6 R7 K21 ["Size_150"]
  SETTABLEKS R6 R5 K13 ["horizontalPadding"]
  LOADK R6 K36 ["padding-top-medium"]
  SETTABLEKS R6 R5 K14 ["upButtonTag"]
  LOADK R6 K37 ["padding-bottom-medium"]
  SETTABLEKS R6 R5 K15 ["downButtonTag"]
  LOADK R6 K29 ["radius-medium"]
  SETTABLEKS R6 R5 K16 ["splitButtonTag"]
  GETTABLEKS R7 R0 K19 ["Size"]
  GETTABLEKS R6 R7 K38 ["Size_1200"]
  SETTABLEKS R6 R5 K17 ["splitButtonSize"]
  CALL R4 1 1
  SETTABLE R4 R2 R3
  DUPTABLE R3 K41 [{"common", "sizes"}]
  SETTABLEKS R1 R3 K39 ["common"]
  SETTABLEKS R2 R3 K40 ["sizes"]
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
