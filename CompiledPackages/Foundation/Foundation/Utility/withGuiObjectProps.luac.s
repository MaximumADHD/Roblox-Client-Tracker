PROTO_0:
  FASTCALL1 TYPE R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K1 [type]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K2 ["table"] [+151]
  GETTABLEKS R2 R0 K3 ["AutoLocalize"]
  SETTABLEKS R2 R1 K3 ["AutoLocalize"]
  GETTABLEKS R2 R0 K4 ["AutomaticSize"]
  SETTABLEKS R2 R1 K4 ["AutomaticSize"]
  GETTABLEKS R3 R0 K5 ["backgroundStyle"]
  JUMPIFNOT R3 [+6]
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K5 ["backgroundStyle"]
  LOADK R4 K6 ["Color3"]
  CALL R2 2 1
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K7 ["BackgroundColor3"]
  GETTABLEKS R3 R0 K5 ["backgroundStyle"]
  JUMPIFNOT R3 [+6]
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K5 ["backgroundStyle"]
  LOADK R4 K8 ["Transparency"]
  CALL R2 2 1
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K9 ["BackgroundTransparency"]
  GETTABLEKS R2 R0 K10 ["BorderSizePixel"]
  SETTABLEKS R2 R1 K10 ["BorderSizePixel"]
  GETTABLEKS R2 R0 K11 ["BorderColor3"]
  SETTABLEKS R2 R1 K11 ["BorderColor3"]
  GETTABLEKS R2 R0 K12 ["BorderMode"]
  SETTABLEKS R2 R1 K12 ["BorderMode"]
  GETTABLEKS R2 R0 K13 ["ClipsDescendants"]
  SETTABLEKS R2 R1 K13 ["ClipsDescendants"]
  GETTABLEKS R2 R0 K14 ["Rotation"]
  SETTABLEKS R2 R1 K14 ["Rotation"]
  GETTABLEKS R2 R0 K15 ["SizeConstraint"]
  SETTABLEKS R2 R1 K15 ["SizeConstraint"]
  GETTABLEKS R2 R0 K16 ["selection"]
  JUMPIFNOT R2 [+42]
  GETTABLEKS R3 R0 K16 ["selection"]
  GETTABLEKS R2 R3 K17 ["Selectable"]
  SETTABLEKS R2 R1 K17 ["Selectable"]
  GETTABLEKS R3 R0 K16 ["selection"]
  GETTABLEKS R2 R3 K18 ["SelectionImageObject"]
  SETTABLEKS R2 R1 K18 ["SelectionImageObject"]
  GETTABLEKS R3 R0 K16 ["selection"]
  GETTABLEKS R2 R3 K19 ["SelectionOrder"]
  SETTABLEKS R2 R1 K19 ["SelectionOrder"]
  GETTABLEKS R3 R0 K16 ["selection"]
  GETTABLEKS R2 R3 K20 ["NextSelectionDown"]
  SETTABLEKS R2 R1 K20 ["NextSelectionDown"]
  GETTABLEKS R3 R0 K16 ["selection"]
  GETTABLEKS R2 R3 K21 ["NextSelectionLeft"]
  SETTABLEKS R2 R1 K21 ["NextSelectionLeft"]
  GETTABLEKS R3 R0 K16 ["selection"]
  GETTABLEKS R2 R3 K22 ["NextSelectionRight"]
  SETTABLEKS R2 R1 K22 ["NextSelectionRight"]
  GETTABLEKS R3 R0 K16 ["selection"]
  GETTABLEKS R2 R3 K23 ["NextSelectionUp"]
  SETTABLEKS R2 R1 K23 ["NextSelectionUp"]
  GETTABLEKS R2 R0 K24 ["selectionGroup"]
  JUMPIFEQKNIL R2 [+42]
  GETTABLEKS R3 R0 K24 ["selectionGroup"]
  FASTCALL1 TYPE R3 [+2]
  GETIMPORT R2 K1 [type]
  CALL R2 1 1
  JUMPIFEQKS R2 K25 ["boolean"] [+8]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K26 ["isBinding"]
  GETTABLEKS R3 R0 K24 ["selectionGroup"]
  CALL R2 1 1
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K24 ["selectionGroup"]
  SETTABLEKS R2 R1 K27 ["SelectionGroup"]
  JUMP [+21]
  GETTABLEKS R2 R0 K24 ["selectionGroup"]
  LOADB R3 1
  SETTABLEKS R3 R1 K27 ["SelectionGroup"]
  GETTABLEKS R3 R2 K28 ["SelectionBehaviorUp"]
  SETTABLEKS R3 R1 K28 ["SelectionBehaviorUp"]
  GETTABLEKS R3 R2 K29 ["SelectionBehaviorDown"]
  SETTABLEKS R3 R1 K29 ["SelectionBehaviorDown"]
  GETTABLEKS R3 R2 K30 ["SelectionBehaviorLeft"]
  SETTABLEKS R3 R1 K30 ["SelectionBehaviorLeft"]
  GETTABLEKS R3 R2 K31 ["SelectionBehaviorRight"]
  SETTABLEKS R3 R1 K31 ["SelectionBehaviorRight"]
  GETTABLEKS R2 R0 K32 ["Size"]
  SETTABLEKS R2 R1 K32 ["Size"]
  GETUPVAL R2 2
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K33 ["Change"]
  GETTABLEKS R3 R4 K34 ["AbsoluteSize"]
  GETTABLEKS R4 R0 K35 ["onAbsoluteSizeChanged"]
  SETTABLE R4 R2 R3
  LOADNIL R3
  SETTABLEKS R3 R2 K35 ["onAbsoluteSizeChanged"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K33 ["Change"]
  GETTABLEKS R3 R4 K36 ["AbsolutePosition"]
  GETTABLEKS R4 R0 K37 ["onAbsolutePositionChanged"]
  SETTABLE R4 R2 R3
  LOADNIL R3
  SETTABLEKS R3 R2 K37 ["onAbsolutePositionChanged"]
  GETTABLEKS R4 R2 K38 ["testId"]
  JUMPIFNOT R4 [+5]
  LOADK R4 K39 ["data-testid="]
  GETTABLEKS R5 R2 K38 ["testId"]
  CONCAT R3 R4 R5
  JUMP [+1]
  LOADNIL R3
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K40 ["Tag"]
  GETTABLE R4 R2 R5
  JUMPIFNOT R4 [+10]
  JUMPIFNOT R3 [+9]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K40 ["Tag"]
  GETTABLE R6 R2 R4
  LOADK R7 K41 [" "]
  MOVE R8 R3
  CONCAT R5 R6 R8
  SETTABLE R5 R2 R4
  JUMP [+9]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K40 ["Tag"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K40 ["Tag"]
  GETTABLE R6 R2 R7
  OR R5 R6 R3
  SETTABLE R5 R2 R4
  LOADNIL R4
  SETTABLEKS R4 R2 K38 ["testId"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["ReactIs"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K9 ["Utility"]
  GETTABLEKS R5 R6 K10 ["indexBindable"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K9 ["Utility"]
  GETTABLEKS R6 R7 K11 ["withCommonProps"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K12 ["Components"]
  GETTABLEKS R7 R8 K13 ["Types"]
  CALL R6 1 1
  DUPCLOSURE R7 K14 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R2
  RETURN R7 1
