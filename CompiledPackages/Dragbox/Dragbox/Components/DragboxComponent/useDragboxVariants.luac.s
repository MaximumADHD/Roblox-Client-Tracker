PROTO_0:
  NEWTABLE R1 1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["VariantEnum"]
  GETTABLEKS R2 R3 K1 ["Standard"]
  DUPTABLE R3 K4 [{"container", "knob"}]
  DUPTABLE R4 K8 [{"tag", "backgroundStyle", "stroke"}]
  LOADK R5 K9 ["button"]
  SETTABLEKS R5 R4 K5 ["tag"]
  GETTABLEKS R7 R0 K10 ["Color"]
  GETTABLEKS R6 R7 K11 ["Shift"]
  GETTABLEKS R5 R6 K12 ["Shift_200"]
  SETTABLEKS R5 R4 K6 ["backgroundStyle"]
  DUPTABLE R5 K15 [{"style", "thickness"}]
  GETTABLEKS R8 R0 K10 ["Color"]
  GETTABLEKS R7 R8 K16 ["Stroke"]
  GETTABLEKS R6 R7 K17 ["Emphasis"]
  SETTABLEKS R6 R5 K13 ["style"]
  GETTABLEKS R7 R0 K16 ["Stroke"]
  GETTABLEKS R6 R7 K18 ["Thicker"]
  SETTABLEKS R6 R5 K14 ["thickness"]
  SETTABLEKS R5 R4 K7 ["stroke"]
  SETTABLEKS R4 R3 K2 ["container"]
  DUPTABLE R4 K21 [{"style", "dragStyle", "hasShadow"}]
  GETTABLEKS R7 R0 K10 ["Color"]
  GETTABLEKS R6 R7 K22 ["Content"]
  GETTABLEKS R5 R6 K23 ["Default"]
  SETTABLEKS R5 R4 K13 ["style"]
  GETTABLEKS R7 R0 K10 ["Color"]
  GETTABLEKS R6 R7 K22 ["Content"]
  GETTABLEKS R5 R6 K17 ["Emphasis"]
  SETTABLEKS R5 R4 K19 ["dragStyle"]
  LOADB R5 1
  SETTABLEKS R5 R4 K20 ["hasShadow"]
  SETTABLEKS R4 R3 K3 ["knob"]
  SETTABLE R3 R1 R2
  DUPTABLE R2 K25 [{"variants"}]
  SETTABLEKS R1 R2 K24 ["variants"]
  RETURN R2 1

PROTO_1:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R4 R2 K0 ["variants"]
  GETTABLE R3 R4 R1
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Dragbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Components"]
  GETTABLEKS R3 R4 K7 ["DragboxComponent"]
  GETTABLEKS R2 R3 K8 ["DragboxTypes"]
  CALL R1 1 1
  DUPCLOSURE R2 K9 [PROTO_0]
  CAPTURE VAL R1
  DUPCLOSURE R3 K10 [PROTO_1]
  CAPTURE VAL R2
  RETURN R3 1
