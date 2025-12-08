PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  DUPTABLE R4 K2 [{"LayoutOrder", "onActivated"}]
  GETTABLEKS R5 R0 K3 ["layoutOrder"]
  SETTABLEKS R5 R4 K0 ["LayoutOrder"]
  GETTABLEKS R5 R0 K1 ["onActivated"]
  SETTABLEKS R5 R4 K1 ["onActivated"]
  DUPTABLE R5 K5 [{"ColorSwatch"}]
  GETUPVAL R6 1
  GETUPVAL R7 3
  DUPTABLE R8 K8 [{"tag", "backgroundStyle"}]
  LOADK R9 K9 ["size-300-300 anchor-center-center position-center-center radius-xsmall"]
  SETTABLEKS R9 R8 K6 ["tag"]
  DUPTABLE R9 K11 [{"Color3"}]
  GETTABLEKS R10 R0 K12 ["swatchColor"]
  SETTABLEKS R10 R9 K10 ["Color3"]
  SETTABLEKS R9 R8 K7 ["backgroundStyle"]
  DUPTABLE R9 K14 [{"Border"}]
  GETUPVAL R10 1
  LOADK R11 K15 ["UIStroke"]
  DUPTABLE R12 K21 [{"BorderStrokePosition", "Color", "LineJoinMode", "Thickness", "Transparency"}]
  GETIMPORT R13 K24 [Enum.BorderStrokePosition.Inner]
  SETTABLEKS R13 R12 K16 ["BorderStrokePosition"]
  GETTABLEKS R16 R1 K17 ["Color"]
  GETTABLEKS R15 R16 K25 ["Stroke"]
  GETTABLEKS R14 R15 K26 ["Default"]
  GETTABLEKS R13 R14 K10 ["Color3"]
  SETTABLEKS R13 R12 K17 ["Color"]
  GETIMPORT R13 K28 [Enum.LineJoinMode.Round]
  SETTABLEKS R13 R12 K18 ["LineJoinMode"]
  LOADN R13 1
  SETTABLEKS R13 R12 K19 ["Thickness"]
  GETTABLEKS R16 R1 K17 ["Color"]
  GETTABLEKS R15 R16 K25 ["Stroke"]
  GETTABLEKS R14 R15 K26 ["Default"]
  GETTABLEKS R13 R14 K20 ["Transparency"]
  SETTABLEKS R13 R12 K20 ["Transparency"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["Border"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K4 ["ColorSwatch"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Foundation"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["PopoverButton"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Parent"]
  GETTABLEKS R4 R5 K11 ["React"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["createElement"]
  GETTABLEKS R5 R1 K13 ["View"]
  GETTABLEKS R7 R1 K14 ["Hooks"]
  GETTABLEKS R6 R7 K15 ["useTokens"]
  DUPCLOSURE R7 K16 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R5
  RETURN R7 1
