PROTO_0:
  RETURN R0 0

PROTO_1:
  DUPTABLE R0 K1 [{"onDimensionUpdate"}]
  DUPCLOSURE R1 K2 [PROTO_0]
  SETTABLEKS R1 R0 K0 ["onDimensionUpdate"]
  RETURN R0 1

PROTO_2:
  RETURN R0 0

PROTO_3:
  RETURN R0 0

PROTO_4:
  DUPTABLE R0 K4 [{"isSymmetryEnabled", "setIsSymmetryEnabled", "isFocusFaceEnabled", "setIsFocusFaceEnabled"}]
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["isSymmetryEnabled"]
  DUPCLOSURE R1 K5 [PROTO_2]
  SETTABLEKS R1 R0 K1 ["setIsSymmetryEnabled"]
  LOADB R1 0
  SETTABLEKS R1 R0 K2 ["isFocusFaceEnabled"]
  DUPCLOSURE R1 K6 [PROTO_3]
  SETTABLEKS R1 R0 K3 ["setIsFocusFaceEnabled"]
  RETURN R0 1

PROTO_5:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["setDragboxValues"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  DUPTABLE R0 K2 [{"dragboxValues", "setDragboxValues"}]
  DUPTABLE R1 K7 [{"EyesLookLeft", "EyesLookRight", "EyesLookUp", "EyesLookDown"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K3 ["EyesLookLeft"]
  LOADN R2 0
  SETTABLEKS R2 R1 K4 ["EyesLookRight"]
  LOADN R2 0
  SETTABLEKS R2 R1 K5 ["EyesLookUp"]
  LOADN R2 0
  SETTABLEKS R2 R1 K6 ["EyesLookDown"]
  SETTABLEKS R1 R0 K0 ["dragboxValues"]
  DUPCLOSURE R1 K8 [PROTO_5]
  SETTABLEKS R1 R0 K1 ["setDragboxValues"]
  RETURN R0 1

PROTO_7:
  DUPTABLE R0 K2 [{"frontViewControls", "sideViewControls"}]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["frontViewControls"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K1 ["sideViewControls"]
  RETURN R0 1

PROTO_8:
  RETURN R0 0

PROTO_9:
  DUPTABLE R0 K2 [{"enabled", "onClose"}]
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["enabled"]
  DUPCLOSURE R1 K3 [PROTO_8]
  SETTABLEKS R1 R0 K1 ["onClose"]
  RETURN R0 1

PROTO_10:
  RETURN R0 0

PROTO_11:
  RETURN R0 0

PROTO_12:
  DUPTABLE R0 K4 [{"sliderValues", "setSliderValuesAsync", "isSymmetryEnabled", "handleSizeChange"}]
  DUPTABLE R1 K6 [{"ChinRaiser"}]
  LOADK R2 K7 [0.5]
  SETTABLEKS R2 R1 K5 ["ChinRaiser"]
  SETTABLEKS R1 R0 K0 ["sliderValues"]
  DUPCLOSURE R1 K8 [PROTO_10]
  SETTABLEKS R1 R0 K1 ["setSliderValuesAsync"]
  LOADB R1 0
  SETTABLEKS R1 R0 K2 ["isSymmetryEnabled"]
  DUPCLOSURE R1 K9 [PROTO_11]
  SETTABLEKS R1 R0 K3 ["handleSizeChange"]
  RETURN R0 1

PROTO_13:
  RETURN R0 0

PROTO_14:
  DUPTABLE R0 K5 [{"name", "mapping", "value", "setSliderValuesAsync", "isSymmetryEnabled"}]
  LOADK R1 K6 ["test"]
  SETTABLEKS R1 R0 K0 ["name"]
  DUPTABLE R1 K12 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K7 ["currentValue"]
  LOADN R2 0
  SETTABLEKS R2 R1 K8 ["defaultValue"]
  GETIMPORT R2 K15 [UDim2.fromOffset]
  LOADN R3 165
  LOADN R4 240
  CALL R2 2 1
  SETTABLEKS R2 R1 K9 ["position"]
  LOADN R2 166
  SETTABLEKS R2 R1 K10 ["rotation"]
  LOADN R2 20
  SETTABLEKS R2 R1 K11 ["customWidth"]
  SETTABLEKS R1 R0 K1 ["mapping"]
  LOADN R1 0
  SETTABLEKS R1 R0 K2 ["value"]
  DUPCLOSURE R1 K16 [PROTO_13]
  SETTABLEKS R1 R0 K3 ["setSliderValuesAsync"]
  LOADB R1 0
  SETTABLEKS R1 R0 K4 ["isSymmetryEnabled"]
  RETURN R0 1

PROTO_15:
  DUPTABLE R0 K1 [{"LipsTogether"}]
  DUPTABLE R1 K7 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K2 ["currentValue"]
  LOADN R2 0
  SETTABLEKS R2 R1 K3 ["defaultValue"]
  GETIMPORT R2 K10 [UDim2.fromOffset]
  LOADN R3 165
  LOADN R4 240
  CALL R2 2 1
  SETTABLEKS R2 R1 K4 ["position"]
  LOADN R2 166
  SETTABLEKS R2 R1 K5 ["rotation"]
  LOADN R2 20
  SETTABLEKS R2 R1 K6 ["customWidth"]
  SETTABLEKS R1 R0 K0 ["LipsTogether"]
  RETURN R0 1

PROTO_16:
  LOADK R3 K0 ["SymmetryCheckbox"]
  LOADB R4 1
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_17:
  LOADK R3 K0 ["FocusFaceCheckbox"]
  LOADB R4 1
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_18:
  LOADK R3 K0 ["ImageContainer"]
  LOADB R4 1
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FaceControlEditorComponent"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Components"]
  GETTABLEKS R3 R4 K7 ["FaceControlEditor"]
  GETTABLEKS R2 R3 K8 ["FaceControlsHandler"]
  CALL R1 1 1
  NEWTABLE R2 16 0
  DUPCLOSURE R3 K9 [PROTO_1]
  SETTABLEKS R3 R2 K10 ["makeMockFoundationProvider"]
  DUPCLOSURE R3 K11 [PROTO_4]
  SETTABLEKS R3 R2 K12 ["makeMockCheckboxContainer"]
  DUPCLOSURE R3 K13 [PROTO_6]
  SETTABLEKS R3 R2 K14 ["makeMockDraggableViewBox"]
  DUPCLOSURE R3 K15 [PROTO_7]
  SETTABLEKS R3 R2 K16 ["makeMockFaceControlsMapping"]
  DUPCLOSURE R3 K17 [PROTO_9]
  SETTABLEKS R3 R2 K18 ["makeMockFaceEditorWindow"]
  DUPCLOSURE R3 K19 [PROTO_12]
  SETTABLEKS R3 R2 K20 ["makeMockFaceImageContainer"]
  DUPCLOSURE R3 K21 [PROTO_14]
  SETTABLEKS R3 R2 K22 ["makeMockFaceSlider"]
  DUPCLOSURE R3 K23 [PROTO_15]
  SETTABLEKS R3 R2 K24 ["makeMockSliderProps"]
  DUPCLOSURE R3 K25 [PROTO_16]
  SETTABLEKS R3 R2 K26 ["findSymmetryCheckbox"]
  DUPCLOSURE R3 K27 [PROTO_17]
  SETTABLEKS R3 R2 K28 ["findFocusFaceCheckbox"]
  DUPCLOSURE R3 K29 [PROTO_18]
  SETTABLEKS R3 R2 K30 ["findImageContainer"]
  RETURN R2 1
