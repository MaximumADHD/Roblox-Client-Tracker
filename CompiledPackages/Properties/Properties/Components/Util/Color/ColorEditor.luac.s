PROTO_0:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["opening a cool color picker"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  LOADNIL R2
  GETTABLEKS R3 R0 K0 ["color3Part"]
  JUMPIFEQKNIL R3 [+15]
  GETTABLEKS R4 R0 K0 ["color3Part"]
  GETTABLEKS R3 R4 K1 ["multiple"]
  JUMPIFNOT R3 [+4]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["multipleSwatchColor"]
  JUMP [+32]
  GETTABLEKS R3 R0 K0 ["color3Part"]
  GETTABLEKS R2 R3 K3 ["value"]
  JUMP [+27]
  GETTABLEKS R5 R0 K4 ["brickColorPart"]
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K5 [+4]
  LOADK R5 K5 ["Trying to make a color editor without a color"]
  GETIMPORT R3 K7 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R0 K4 ["brickColorPart"]
  GETTABLEKS R3 R4 K1 ["multiple"]
  JUMPIFNOT R3 [+4]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["multipleSwatchColor"]
  JUMP [+6]
  GETTABLEKS R4 R0 K4 ["brickColorPart"]
  GETTABLEKS R3 R4 K3 ["value"]
  GETTABLEKS R2 R3 K8 ["Color"]
  GETUPVAL R3 2
  GETUPVAL R4 3
  DUPTABLE R5 K12 [{"tag", "LayoutOrder", "stateLayer"}]
  LOADK R6 K13 ["size-full-600 bg-shift-200 row radius-small"]
  SETTABLEKS R6 R5 K9 ["tag"]
  GETTABLEKS R6 R0 K14 ["layoutOrder"]
  SETTABLEKS R6 R5 K10 ["LayoutOrder"]
  DUPTABLE R6 K16 [{"affordance"}]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K17 ["Enums"]
  GETTABLEKS R8 R9 K18 ["StateLayerAffordance"]
  GETTABLEKS R7 R8 K19 ["None"]
  SETTABLEKS R7 R6 K15 ["affordance"]
  SETTABLEKS R6 R5 K11 ["stateLayer"]
  DUPTABLE R6 K21 [{"ColorPickerButton"}]
  GETUPVAL R7 2
  GETUPVAL R8 5
  DUPTABLE R9 K24 [{"layoutOrder", "swatchColor", "onActivated"}]
  MOVE R10 R1
  CALL R10 0 1
  SETTABLEKS R10 R9 K14 ["layoutOrder"]
  SETTABLEKS R2 R9 K22 ["swatchColor"]
  DUPCLOSURE R10 K25 [PROTO_0]
  SETTABLEKS R10 R9 K23 ["onActivated"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K20 ["ColorPickerButton"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Components"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["Color"]
  GETTABLEKS R2 R3 K9 ["ColorPickerButton"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K7 ["Util"]
  GETTABLEKS R3 R4 K10 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K11 ["Parent"]
  GETTABLEKS R4 R5 K12 ["Foundation"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R0 K13 ["PropertyEditorTypes"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R0 K14 ["PropertyTypes"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K11 ["Parent"]
  GETTABLEKS R7 R8 K15 ["React"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K11 ["Parent"]
  GETTABLEKS R8 R9 K16 ["ReactUtils"]
  CALL R7 1 1
  GETTABLEKS R8 R3 K17 ["View"]
  GETTABLEKS R9 R6 K18 ["createElement"]
  GETTABLEKS R10 R7 K19 ["createNextOrder"]
  DUPCLOSURE R11 K20 [PROTO_1]
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R1
  RETURN R11 1
