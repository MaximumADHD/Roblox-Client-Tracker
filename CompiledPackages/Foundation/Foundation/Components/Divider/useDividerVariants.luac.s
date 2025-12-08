PROTO_0:
  DUPTABLE R1 K3 [{"container", "stroke", "line"}]
  DUPTABLE R2 K5 [{"tag"}]
  LOADK R3 K6 ["col"]
  SETTABLEKS R3 R2 K4 ["tag"]
  SETTABLEKS R2 R1 K0 ["container"]
  DUPTABLE R2 K8 [{"backgroundStyle"}]
  GETTABLEKS R5 R0 K9 ["Color"]
  GETTABLEKS R4 R5 K10 ["Stroke"]
  GETTABLEKS R3 R4 K11 ["Default"]
  SETTABLEKS R3 R2 K7 ["backgroundStyle"]
  SETTABLEKS R2 R1 K1 ["stroke"]
  DUPTABLE R2 K13 [{"tag", "position", "backgroundStyle"}]
  LOADK R3 K14 ["size-full-200"]
  SETTABLEKS R3 R2 K4 ["tag"]
  GETIMPORT R3 K17 [UDim2.new]
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  GETTABLEKS R8 R0 K18 ["Size"]
  GETTABLEKS R7 R8 K19 ["Size_50"]
  CALL R3 4 1
  SETTABLEKS R3 R2 K12 ["position"]
  GETTABLEKS R5 R0 K9 ["Color"]
  GETTABLEKS R4 R5 K20 ["Common"]
  GETTABLEKS R3 R4 K21 ["HeavyDivider"]
  SETTABLEKS R3 R2 K7 ["backgroundStyle"]
  SETTABLEKS R2 R1 K2 ["line"]
  NEWTABLE R2 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K22 ["Horizontal"]
  DUPTABLE R4 K23 [{"container", "stroke"}]
  DUPTABLE R5 K5 [{"tag"}]
  LOADK R6 K24 ["size-full-0 auto-y"]
  SETTABLEKS R6 R5 K4 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K25 [{"Size"}]
  GETIMPORT R6 K17 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  GETTABLEKS R11 R0 K10 ["Stroke"]
  GETTABLEKS R10 R11 K26 ["Standard"]
  CALL R6 4 1
  SETTABLEKS R6 R5 K18 ["Size"]
  SETTABLEKS R5 R4 K1 ["stroke"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K27 ["Vertical"]
  DUPTABLE R4 K23 [{"container", "stroke"}]
  DUPTABLE R5 K5 [{"tag"}]
  LOADK R6 K28 ["size-0-full auto-x"]
  SETTABLEKS R6 R5 K4 ["tag"]
  SETTABLEKS R5 R4 K0 ["container"]
  DUPTABLE R5 K25 [{"Size"}]
  GETIMPORT R6 K17 [UDim2.new]
  LOADN R7 0
  GETTABLEKS R9 R0 K10 ["Stroke"]
  GETTABLEKS R8 R9 K26 ["Standard"]
  LOADN R9 1
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K18 ["Size"]
  SETTABLEKS R5 R4 K1 ["stroke"]
  SETTABLE R4 R2 R3
  NEWTABLE R3 4 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K29 ["Inset"]
  DUPTABLE R5 K30 [{"container"}]
  DUPTABLE R6 K5 [{"tag"}]
  LOADK R7 K31 ["padding-x-xlarge"]
  SETTABLEKS R7 R6 K4 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K32 ["InsetLeft"]
  DUPTABLE R5 K30 [{"container"}]
  DUPTABLE R6 K5 [{"tag"}]
  LOADK R7 K33 ["padding-left-xlarge"]
  SETTABLEKS R7 R6 K4 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K34 ["InsetRight"]
  DUPTABLE R5 K30 [{"container"}]
  DUPTABLE R6 K5 [{"tag"}]
  LOADK R7 K35 ["padding-right-xlarge"]
  SETTABLEKS R7 R6 K4 ["tag"]
  SETTABLEKS R6 R5 K0 ["container"]
  SETTABLE R5 R3 R4
  DUPTABLE R4 K39 [{"common", "padding", "orientation"}]
  SETTABLEKS R1 R4 K36 ["common"]
  SETTABLEKS R3 R4 K37 ["padding"]
  SETTABLEKS R2 R4 K38 ["orientation"]
  RETURN R4 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useVariants"]
  LOADK R4 K1 ["Divider"]
  GETUPVAL R5 1
  MOVE R6 R0
  CALL R3 3 1
  GETUPVAL R4 2
  GETTABLEKS R5 R3 K2 ["common"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K3 ["Horizontal"]
  JUMPIFNOTEQ R2 R7 [+5]
  GETTABLEKS R7 R3 K4 ["padding"]
  GETTABLE R6 R7 R1
  JUMP [+2]
  NEWTABLE R6 0 0
  GETTABLEKS R8 R3 K5 ["orientation"]
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
  GETTABLEKS R3 R0 K6 ["Components"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Enums"]
  GETTABLEKS R3 R4 K9 ["DividerVariant"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Enums"]
  GETTABLEKS R4 R5 K10 ["Orientation"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K11 ["Utility"]
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
  CAPTURE VAL R3
  CAPTURE VAL R2
  DUPCLOSURE R8 K18 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R3
  RETURN R8 1
