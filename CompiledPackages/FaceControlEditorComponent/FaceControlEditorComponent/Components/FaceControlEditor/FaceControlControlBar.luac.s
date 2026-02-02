PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setFocusEnabledAsync"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getDefaultPropertiesValues"]
  CALL R0 0 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["setSliderValuesAsync"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createNextOrder"]
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["useContext"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["Context"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["useContext"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K2 ["Context"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K3 ["focusEnabled"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["useCallback"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R3
  NEWTABLE R7 0 1
  MOVE R8 R3
  SETLIST R7 R8 1 [1]
  CALL R5 2 1
  NEWCLOSURE R6 P1
  CAPTURE UPVAL U4
  CAPTURE VAL R2
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["createElement"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K6 ["View"]
  DUPTABLE R9 K10 [{"Size", "tag", "ZIndex"}]
  GETIMPORT R10 K13 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K14 ["FACE_CONTROLS_EDITOR_TOGGLES_CONTAINER_HEIGHT"]
  CALL R10 4 1
  SETTABLEKS R10 R9 K7 ["Size"]
  LOADK R10 K15 ["bg-surface-100 row align-y-center align-x-right gap-medium clip padding-small wrap auto-y"]
  SETTABLEKS R10 R9 K8 ["tag"]
  LOADN R10 232
  SETTABLEKS R10 R9 K9 ["ZIndex"]
  DUPTABLE R10 K19 [{"SymmetryCheckbox", "FocusFaceCheckbox", "ResetAllButton"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K5 ["createElement"]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K20 ["Checkbox"]
  DUPTABLE R13 K26 [{"label", "size", "isChecked", "onActivated", "LayoutOrder"}]
  GETTABLEKS R14 R0 K27 ["localizationFunction"]
  LOADK R15 K16 ["SymmetryCheckbox"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K21 ["label"]
  LOADK R14 K28 ["XSmall"]
  SETTABLEKS R14 R13 K22 ["size"]
  GETTABLEKS R14 R0 K29 ["isSymmetryEnabled"]
  SETTABLEKS R14 R13 K23 ["isChecked"]
  GETTABLEKS R14 R0 K30 ["setIsSymmetryEnabled"]
  SETTABLEKS R14 R13 K24 ["onActivated"]
  MOVE R14 R1
  CALL R14 0 1
  SETTABLEKS R14 R13 K25 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K16 ["SymmetryCheckbox"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K5 ["createElement"]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K20 ["Checkbox"]
  DUPTABLE R13 K26 [{"label", "size", "isChecked", "onActivated", "LayoutOrder"}]
  GETTABLEKS R14 R0 K27 ["localizationFunction"]
  LOADK R15 K17 ["FocusFaceCheckbox"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K21 ["label"]
  LOADK R14 K28 ["XSmall"]
  SETTABLEKS R14 R13 K22 ["size"]
  SETTABLEKS R4 R13 K23 ["isChecked"]
  SETTABLEKS R5 R13 K24 ["onActivated"]
  MOVE R14 R1
  CALL R14 0 1
  SETTABLEKS R14 R13 K25 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K17 ["FocusFaceCheckbox"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K5 ["createElement"]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K31 ["Button"]
  DUPTABLE R13 K33 [{"text", "size", "onActivated", "LayoutOrder"}]
  GETTABLEKS R14 R0 K27 ["localizationFunction"]
  LOADK R15 K18 ["ResetAllButton"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K32 ["text"]
  LOADK R14 K28 ["XSmall"]
  SETTABLEKS R14 R13 K22 ["size"]
  SETTABLEKS R6 R13 K24 ["onActivated"]
  MOVE R14 R1
  CALL R14 0 1
  SETTABLEKS R14 R13 K25 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K18 ["ResetAllButton"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FaceControlEditorComponent"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R5 R0 K7 ["Components"]
  GETTABLEKS R4 R5 K8 ["FaceControlEditor"]
  GETTABLEKS R3 R4 K9 ["FaceControlEditorConstants"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K10 ["Foundation"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K11 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R1 K12 ["ReactUtils"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R9 R0 K7 ["Components"]
  GETTABLEKS R8 R9 K8 ["FaceControlEditor"]
  GETTABLEKS R7 R8 K13 ["FaceControlsHandler"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K14 ["Contexts"]
  GETTABLEKS R8 R9 K15 ["FaceControlEditorContext"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K14 ["Contexts"]
  GETTABLEKS R9 R10 K16 ["FocusOnFaceContext"]
  CALL R8 1 1
  DUPCLOSURE R9 K17 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R9 1
