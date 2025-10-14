PROTO_0:
  DUPTABLE R1 K3 [{"container", "stroke", "line"}]
  DUPTABLE R2 K5 [{"tag"}]
  LOADK R3 K6 ["size-full-0 auto-y col"]
  SETTABLEKS R3 R2 K4 ["tag"]
  SETTABLEKS R2 R1 K0 ["container"]
  DUPTABLE R2 K8 [{"tag", "backgroundStyle"}]
  LOADK R3 K9 ["size-full-50"]
  SETTABLEKS R3 R2 K4 ["tag"]
  GETTABLEKS R5 R0 K10 ["Color"]
  GETTABLEKS R4 R5 K11 ["Stroke"]
  GETTABLEKS R3 R4 K12 ["Default"]
  SETTABLEKS R3 R2 K7 ["backgroundStyle"]
  SETTABLEKS R2 R1 K1 ["stroke"]
  DUPTABLE R2 K14 [{"tag", "position", "backgroundStyle"}]
  LOADK R3 K15 ["size-full-200"]
  SETTABLEKS R3 R2 K4 ["tag"]
  GETIMPORT R3 K18 [UDim2.new]
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  GETTABLEKS R8 R0 K19 ["Size"]
  GETTABLEKS R7 R8 K20 ["Size_50"]
  CALL R3 4 1
  SETTABLEKS R3 R2 K13 ["position"]
  GETTABLEKS R5 R0 K10 ["Color"]
  GETTABLEKS R4 R5 K21 ["Common"]
  GETTABLEKS R3 R4 K22 ["HeavyDivider"]
  SETTABLEKS R3 R2 K7 ["backgroundStyle"]
  SETTABLEKS R2 R1 K2 ["line"]
  NEWTABLE R2 4 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K23 ["Inset"]
  DUPTABLE R4 K24 [{"container"}]
  DUPTABLE R5 K5 [{"tag"}]
  LOADK R6 K25 ["padding-x-xlarge"]
  SETTABLEKS R6 R5 K4 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K26 ["InsetLeft"]
  DUPTABLE R4 K24 [{"container"}]
  DUPTABLE R5 K5 [{"tag"}]
  LOADK R6 K27 ["padding-left-xlarge"]
  SETTABLEKS R6 R5 K4 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K28 ["InsetRight"]
  DUPTABLE R4 K24 [{"container"}]
  DUPTABLE R5 K5 [{"tag"}]
  LOADK R6 K29 ["padding-right-xlarge"]
  SETTABLEKS R6 R5 K4 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  SETTABLE R4 R2 R3
  DUPTABLE R3 K32 [{"common", "padding"}]
  SETTABLEKS R1 R3 K30 ["common"]
  SETTABLEKS R2 R3 K31 ["padding"]
  RETURN R3 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useVariants"]
  LOADK R3 K1 ["Divider"]
  GETUPVAL R4 1
  MOVE R5 R0
  CALL R2 3 1
  GETUPVAL R3 2
  GETTABLEKS R4 R2 K2 ["common"]
  GETTABLEKS R6 R2 K3 ["padding"]
  GETTABLE R5 R6 R1
  JUMPIF R5 [+2]
  NEWTABLE R5 0 0
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
  GETTABLEKS R3 R4 K9 ["DividerVariant"]
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
