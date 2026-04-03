PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"onDimensionUpdate"}]
        1 DUPCLOSURE                       R1 K2 [PROTO_0]
        2 SETTABLEKS                       R1 R0 K0 ["onDimensionUpdate"]
        4 RETURN                           R0 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K4 [{"isSymmetryEnabled", "setIsSymmetryEnabled", "isFocusFaceEnabled", "setIsFocusFaceEnabled"}]
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isSymmetryEnabled"]
        4 DUPCLOSURE                       R1 K5 [PROTO_2]
        5 SETTABLEKS                       R1 R0 K1 ["setIsSymmetryEnabled"]
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K2 ["isFocusFaceEnabled"]
       10 DUPCLOSURE                       R1 K6 [PROTO_3]
       11 SETTABLEKS                       R1 R0 K3 ["setIsFocusFaceEnabled"]
       13 RETURN                           R0 1

PROTO_5:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["setDragboxValues"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R0 K2 [{"dragboxValues", "setDragboxValues"}]
        1 DUPTABLE                         R1 K7 [{"EyesLookLeft", "EyesLookRight", "EyesLookUp", "EyesLookDown"}]
        2 LOADN                            R2 0
        3 SETTABLEKS                       R2 R1 K3 ["EyesLookLeft"]
        5 LOADN                            R2 0
        6 SETTABLEKS                       R2 R1 K4 ["EyesLookRight"]
        8 LOADN                            R2 0
        9 SETTABLEKS                       R2 R1 K5 ["EyesLookUp"]
       11 LOADN                            R2 0
       12 SETTABLEKS                       R2 R1 K6 ["EyesLookDown"]
       14 SETTABLEKS                       R1 R0 K0 ["dragboxValues"]
       16 DUPCLOSURE                       R1 K8 [PROTO_5]
       17 SETTABLEKS                       R1 R0 K1 ["setDragboxValues"]
       19 RETURN                           R0 1

PROTO_7:
        0 DUPTABLE                         R0 K2 [{"frontViewControls", "sideViewControls"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["frontViewControls"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["sideViewControls"]
        9 RETURN                           R0 1

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R0 K2 [{"enabled", "onClose"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["enabled"]
        4 DUPCLOSURE                       R1 K3 [PROTO_8]
        5 SETTABLEKS                       R1 R0 K1 ["onClose"]
        7 RETURN                           R0 1

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R0 K4 [{"sliderValues", "setSliderValuesAsync", "isSymmetryEnabled", "handleSizeChange"}]
        1 DUPTABLE                         R1 K6 [{"ChinRaiser"}]
        2 LOADK                            R2 K7 [0.5]
        3 SETTABLEKS                       R2 R1 K5 ["ChinRaiser"]
        5 SETTABLEKS                       R1 R0 K0 ["sliderValues"]
        7 DUPCLOSURE                       R1 K8 [PROTO_10]
        8 SETTABLEKS                       R1 R0 K1 ["setSliderValuesAsync"]
       10 LOADB                            R1 0
       11 SETTABLEKS                       R1 R0 K2 ["isSymmetryEnabled"]
       13 DUPCLOSURE                       R1 K9 [PROTO_11]
       14 SETTABLEKS                       R1 R0 K3 ["handleSizeChange"]
       16 RETURN                           R0 1

PROTO_13:
        0 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R0 K5 [{"name", "mapping", "value", "setSliderValuesAsync", "isSymmetryEnabled"}]
        1 LOADK                            R1 K6 ["test"]
        2 SETTABLEKS                       R1 R0 K0 ["name"]
        4 DUPTABLE                         R1 K12 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
        5 LOADN                            R2 0
        6 SETTABLEKS                       R2 R1 K7 ["currentValue"]
        8 LOADN                            R2 0
        9 SETTABLEKS                       R2 R1 K8 ["defaultValue"]
       11 GETIMPORT                        R2 K15 [UDim2.fromOffset]
       13 LOADN                            R3 165
       14 LOADN                            R4 240
       15 CALL                             R2 2 1
       16 SETTABLEKS                       R2 R1 K9 ["position"]
       18 LOADN                            R2 166
       19 SETTABLEKS                       R2 R1 K10 ["rotation"]
       21 LOADN                            R2 20
       22 SETTABLEKS                       R2 R1 K11 ["customWidth"]
       24 SETTABLEKS                       R1 R0 K1 ["mapping"]
       26 LOADN                            R1 0
       27 SETTABLEKS                       R1 R0 K2 ["value"]
       29 DUPCLOSURE                       R1 K16 [PROTO_13]
       30 SETTABLEKS                       R1 R0 K3 ["setSliderValuesAsync"]
       32 LOADB                            R1 0
       33 SETTABLEKS                       R1 R0 K4 ["isSymmetryEnabled"]
       35 RETURN                           R0 1

PROTO_15:
        0 DUPTABLE                         R0 K1 [{"LipsTogether"}]
        1 DUPTABLE                         R1 K7 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
        2 LOADN                            R2 0
        3 SETTABLEKS                       R2 R1 K2 ["currentValue"]
        5 LOADN                            R2 0
        6 SETTABLEKS                       R2 R1 K3 ["defaultValue"]
        8 GETIMPORT                        R2 K10 [UDim2.fromOffset]
       10 LOADN                            R3 165
       11 LOADN                            R4 240
       12 CALL                             R2 2 1
       13 SETTABLEKS                       R2 R1 K4 ["position"]
       15 LOADN                            R2 166
       16 SETTABLEKS                       R2 R1 K5 ["rotation"]
       18 LOADN                            R2 20
       19 SETTABLEKS                       R2 R1 K6 ["customWidth"]
       21 SETTABLEKS                       R1 R0 K0 ["LipsTogether"]
       23 RETURN                           R0 1

PROTO_16:
        0 LOADK                            R3 K0 ["SymmetryCheckbox"]
        1 LOADB                            R4 1
        2 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_17:
        0 LOADK                            R3 K0 ["FocusFaceCheckbox"]
        1 LOADB                            R4 1
        2 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_18:
        0 LOADK                            R3 K0 ["ImageContainer"]
        1 LOADB                            R4 1
        2 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FaceControlEditorComponent"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["FaceControlEditor"]
       13 GETTABLEKS                       R2 R3 K8 ["FaceControlsHandler"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 16 0
       18 DUPCLOSURE                       R3 K9 [PROTO_1]
       19 SETTABLEKS                       R3 R2 K10 ["makeMockFoundationProvider"]
       21 DUPCLOSURE                       R3 K11 [PROTO_4]
       22 SETTABLEKS                       R3 R2 K12 ["makeMockCheckboxContainer"]
       24 DUPCLOSURE                       R3 K13 [PROTO_6]
       25 SETTABLEKS                       R3 R2 K14 ["makeMockDraggableViewBox"]
       27 DUPCLOSURE                       R3 K15 [PROTO_7]
       28 SETTABLEKS                       R3 R2 K16 ["makeMockFaceControlsMapping"]
       30 DUPCLOSURE                       R3 K17 [PROTO_9]
       31 SETTABLEKS                       R3 R2 K18 ["makeMockFaceEditorWindow"]
       33 DUPCLOSURE                       R3 K19 [PROTO_12]
       34 SETTABLEKS                       R3 R2 K20 ["makeMockFaceImageContainer"]
       36 DUPCLOSURE                       R3 K21 [PROTO_14]
       37 SETTABLEKS                       R3 R2 K22 ["makeMockFaceSlider"]
       39 DUPCLOSURE                       R3 K23 [PROTO_15]
       40 SETTABLEKS                       R3 R2 K24 ["makeMockSliderProps"]
       42 DUPCLOSURE                       R3 K25 [PROTO_16]
       43 SETTABLEKS                       R3 R2 K26 ["findSymmetryCheckbox"]
       45 DUPCLOSURE                       R3 K27 [PROTO_17]
       46 SETTABLEKS                       R3 R2 K28 ["findFocusFaceCheckbox"]
       48 DUPCLOSURE                       R3 K29 [PROTO_18]
       49 SETTABLEKS                       R3 R2 K30 ["findImageContainer"]
       51 RETURN                           R2 1
