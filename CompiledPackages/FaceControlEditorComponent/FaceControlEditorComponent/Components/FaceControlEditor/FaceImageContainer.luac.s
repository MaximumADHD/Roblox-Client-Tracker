PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+6]
  GETIMPORT R0 K2 [UDim2.fromScale]
  LOADN R1 1
  LOADN R2 1
  CALL R0 2 -1
  RETURN R0 -1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["absoluteSize"]
  GETTABLEKS R0 R1 K4 ["Y"]
  LOADN R1 0
  JUMPIFLT R1 R0 [+9]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K3 ["absoluteSize"]
  GETTABLEKS R0 R1 K4 ["Y"]
  LOADN R1 0
  JUMPIFNOTLT R1 R0 [+20]
  GETIMPORT R0 K6 [UDim2.new]
  LOADN R1 1
  LOADN R2 0
  LOADN R3 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["absoluteSize"]
  GETTABLEKS R6 R7 K4 ["Y"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K3 ["absoluteSize"]
  GETTABLEKS R7 R8 K4 ["Y"]
  ADD R5 R6 R7
  ADDK R4 R5 K7 [20]
  CALL R0 4 -1
  RETURN R0 -1
  GETIMPORT R0 K2 [UDim2.fromScale]
  LOADN R1 1
  LOADN R2 2
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  GETTABLEKS R2 R0 K0 ["isSymmetryEnabled"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["useContext"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["Context"]
  CALL R3 1 1
  GETUPVAL R4 0
  CALL R4 0 1
  GETUPVAL R5 0
  CALL R5 0 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K3 ["createFrontViewSliders"]
  GETTABLEKS R7 R3 K4 ["sliderValues"]
  GETTABLEKS R8 R3 K5 ["setSliderValuesAsync"]
  MOVE R9 R2
  CALL R6 3 1
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K6 ["createSideViewSliders"]
  GETTABLEKS R8 R3 K4 ["sliderValues"]
  GETTABLEKS R9 R3 K5 ["setSliderValuesAsync"]
  MOVE R10 R2
  CALL R7 3 1
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K7 ["createDragboxesForMapping"]
  GETTABLEKS R9 R3 K4 ["sliderValues"]
  GETTABLEKS R10 R3 K5 ["setSliderValuesAsync"]
  CALL R8 2 1
  GETTABLEKS R9 R1 K8 ["absoluteSize"]
  LOADB R10 0
  GETTABLEKS R11 R9 K9 ["Y"]
  LOADN R12 0
  JUMPIFNOTLT R12 R11 [+11]
  GETTABLEKS R12 R9 K10 ["X"]
  GETTABLEKS R13 R9 K9 ["Y"]
  DIV R11 R12 R13
  LOADK R12 K11 [1.33333333333333]
  JUMPIFLT R12 R11 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  JUMPIFNOT R10 [+6]
  GETIMPORT R11 K14 [UDim2.fromScale]
  LOADK R12 K15 [0.8]
  LOADN R13 0
  CALL R11 2 1
  JUMP [+5]
  GETIMPORT R11 K14 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  NEWCLOSURE R12 P0
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R5
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K16 ["createElement"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K17 ["View"]
  DUPTABLE R15 K22 [{"ref", "Size", "Position", "BackgroundTransparency"}]
  GETTABLEKS R16 R1 K23 ["setFrame"]
  SETTABLEKS R16 R15 K18 ["ref"]
  GETIMPORT R16 K25 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 1
  GETUPVAL R22 5
  GETTABLEKS R21 R22 K26 ["FACE_CONTROLS_EDITOR_TOGGLES_CONTAINER_HEIGHT"]
  MINUS R20 R21
  CALL R16 4 1
  SETTABLEKS R16 R15 K19 ["Size"]
  GETIMPORT R16 K25 [UDim2.new]
  LOADN R17 0
  LOADN R18 0
  LOADN R19 0
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K26 ["FACE_CONTROLS_EDITOR_TOGGLES_CONTAINER_HEIGHT"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K20 ["Position"]
  LOADN R16 1
  SETTABLEKS R16 R15 K21 ["BackgroundTransparency"]
  DUPTABLE R16 K28 [{"ScrollView"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K16 ["createElement"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K27 ["ScrollView"]
  DUPTABLE R19 K31 [{"Size", "Position", "tag", "scroll"}]
  GETIMPORT R20 K25 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K19 ["Size"]
  GETIMPORT R20 K25 [UDim2.new]
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K20 ["Position"]
  LOADK R20 K32 ["bg-transparency-100"]
  SETTABLEKS R20 R19 K29 ["tag"]
  DUPTABLE R20 K35 [{"CanvasSize", "ScrollingDirection"}]
  MOVE R21 R12
  CALL R21 0 1
  SETTABLEKS R21 R20 K33 ["CanvasSize"]
  GETIMPORT R21 K37 [Enum.ScrollingDirection.Y]
  SETTABLEKS R21 R20 K34 ["ScrollingDirection"]
  SETTABLEKS R20 R19 K30 ["scroll"]
  DUPTABLE R20 K39 [{"CombinedContainer"}]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K16 ["createElement"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K17 ["View"]
  DUPTABLE R23 K42 [{"Size", "AutomaticSize", "Position", "AnchorPoint", "tag"}]
  GETIMPORT R24 K25 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K19 ["Size"]
  JUMPIFNOT R10 [+3]
  GETIMPORT R24 K43 [Enum.AutomaticSize.X]
  JUMP [+2]
  GETIMPORT R24 K44 [Enum.AutomaticSize.Y]
  SETTABLEKS R24 R23 K40 ["AutomaticSize"]
  GETIMPORT R24 K25 [UDim2.new]
  LOADK R25 K45 [0.5]
  LOADN R26 0
  LOADN R27 0
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K20 ["Position"]
  GETIMPORT R24 K47 [Vector2.new]
  LOADK R25 K45 [0.5]
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K41 ["AnchorPoint"]
  LOADK R24 K32 ["bg-transparency-100"]
  SETTABLEKS R24 R23 K29 ["tag"]
  DUPTABLE R24 K54 [{"UIListLayout", "AspectRatioConstraint", "UIListPadding", "UISizeConstraint", "FrontViewContainer", "SideViewContainer"}]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K16 ["createElement"]
  LOADK R26 K48 ["UIListLayout"]
  DUPTABLE R27 K60 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETIMPORT R28 K62 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R28 R27 K55 ["SortOrder"]
  JUMPIFNOT R10 [+3]
  GETIMPORT R28 K64 [Enum.FillDirection.Horizontal]
  JUMP [+2]
  GETIMPORT R28 K66 [Enum.FillDirection.Vertical]
  SETTABLEKS R28 R27 K56 ["FillDirection"]
  JUMPIFNOT R10 [+3]
  GETIMPORT R28 K68 [Enum.HorizontalAlignment.Left]
  JUMP [+2]
  GETIMPORT R28 K70 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R28 R27 K57 ["HorizontalAlignment"]
  JUMPIFNOT R10 [+3]
  GETIMPORT R28 K71 [Enum.VerticalAlignment.Center]
  JUMP [+2]
  GETIMPORT R28 K73 [Enum.VerticalAlignment.Top]
  SETTABLEKS R28 R27 K58 ["VerticalAlignment"]
  JUMPIFNOT R10 [+6]
  GETIMPORT R28 K75 [UDim.new]
  LOADN R29 0
  LOADN R30 10
  CALL R28 2 1
  JUMP [+5]
  GETIMPORT R28 K75 [UDim.new]
  LOADN R29 0
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K59 ["Padding"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K48 ["UIListLayout"]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K16 ["createElement"]
  LOADK R26 K76 ["UIAspectRatioConstraint"]
  DUPTABLE R27 K80 [{"AspectRatio", "AspectType", "DominantAxis"}]
  LOADN R28 1
  SETTABLEKS R28 R27 K77 ["AspectRatio"]
  GETIMPORT R28 K82 [Enum.AspectType.ScaleWithParentSize]
  SETTABLEKS R28 R27 K78 ["AspectType"]
  GETIMPORT R28 K84 [Enum.DominantAxis.Width]
  SETTABLEKS R28 R27 K79 ["DominantAxis"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K49 ["AspectRatioConstraint"]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K16 ["createElement"]
  LOADK R26 K85 ["UIPadding"]
  DUPTABLE R27 K87 [{"PaddingBottom"}]
  GETIMPORT R28 K75 [UDim.new]
  LOADN R29 0
  LOADN R30 20
  CALL R28 2 1
  SETTABLEKS R28 R27 K86 ["PaddingBottom"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K50 ["UIListPadding"]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K16 ["createElement"]
  LOADK R26 K51 ["UISizeConstraint"]
  DUPTABLE R27 K89 [{"MaxSize"}]
  GETIMPORT R28 K47 [Vector2.new]
  LOADN R29 232
  LOADN R30 232
  CALL R28 2 1
  SETTABLEKS R28 R27 K88 ["MaxSize"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K51 ["UISizeConstraint"]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K16 ["createElement"]
  GETUPVAL R27 4
  GETTABLEKS R26 R27 K17 ["View"]
  DUPTABLE R27 K90 [{"tag", "Size", "LayoutOrder", "ref"}]
  LOADK R28 K32 ["bg-transparency-100"]
  SETTABLEKS R28 R27 K29 ["tag"]
  SETTABLEKS R11 R27 K19 ["Size"]
  LOADN R28 1
  SETTABLEKS R28 R27 K61 ["LayoutOrder"]
  GETTABLEKS R28 R4 K23 ["setFrame"]
  SETTABLEKS R28 R27 K18 ["ref"]
  DUPTABLE R28 K92 [{"AspectRatioConstraint", "FaceFrontViewImage"}]
  GETUPVAL R30 1
  GETTABLEKS R29 R30 K16 ["createElement"]
  LOADK R30 K76 ["UIAspectRatioConstraint"]
  DUPTABLE R31 K80 [{"AspectRatio", "AspectType", "DominantAxis"}]
  LOADN R32 1
  SETTABLEKS R32 R31 K77 ["AspectRatio"]
  GETIMPORT R32 K82 [Enum.AspectType.ScaleWithParentSize]
  SETTABLEKS R32 R31 K78 ["AspectType"]
  GETIMPORT R32 K84 [Enum.DominantAxis.Width]
  SETTABLEKS R32 R31 K79 ["DominantAxis"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K49 ["AspectRatioConstraint"]
  GETUPVAL R30 1
  GETTABLEKS R29 R30 K16 ["createElement"]
  GETUPVAL R31 4
  GETTABLEKS R30 R31 K93 ["Image"]
  DUPTABLE R31 K95 [{"Image", "tag", "Size", "Position", "ScaleType"}]
  LOADK R32 K96 ["rbxasset://textures/FaceControlsEditor/face_frontView.png"]
  SETTABLEKS R32 R31 K93 ["Image"]
  LOADK R32 K97 ["bg-transparency-100 "]
  SETTABLEKS R32 R31 K29 ["tag"]
  GETIMPORT R32 K14 [UDim2.fromScale]
  LOADN R33 1
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K19 ["Size"]
  GETIMPORT R32 K14 [UDim2.fromScale]
  LOADN R33 0
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K20 ["Position"]
  GETIMPORT R32 K99 [Enum.ScaleType.Fit]
  SETTABLEKS R32 R31 K94 ["ScaleType"]
  DUPTABLE R32 K103 [{"Constraint", "Sliders", "Dragboxes"}]
  GETUPVAL R34 1
  GETTABLEKS R33 R34 K16 ["createElement"]
  LOADK R34 K76 ["UIAspectRatioConstraint"]
  DUPTABLE R35 K104 [{"AspectType"}]
  GETIMPORT R36 K82 [Enum.AspectType.ScaleWithParentSize]
  SETTABLEKS R36 R35 K78 ["AspectType"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K100 ["Constraint"]
  GETUPVAL R34 1
  GETTABLEKS R33 R34 K16 ["createElement"]
  GETUPVAL R35 1
  GETTABLEKS R34 R35 K105 ["Fragment"]
  LOADNIL R35
  NEWTABLE R36 0 1
  MOVE R37 R6
  SETLIST R36 R37 1 [1]
  CALL R33 3 1
  SETTABLEKS R33 R32 K101 ["Sliders"]
  GETUPVAL R34 1
  GETTABLEKS R33 R34 K16 ["createElement"]
  GETUPVAL R35 1
  GETTABLEKS R34 R35 K105 ["Fragment"]
  LOADNIL R35
  NEWTABLE R36 0 1
  MOVE R37 R8
  SETLIST R36 R37 1 [1]
  CALL R33 3 1
  SETTABLEKS R33 R32 K102 ["Dragboxes"]
  CALL R29 3 1
  SETTABLEKS R29 R28 K91 ["FaceFrontViewImage"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K52 ["FrontViewContainer"]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K16 ["createElement"]
  GETUPVAL R27 4
  GETTABLEKS R26 R27 K17 ["View"]
  DUPTABLE R27 K106 [{"tag", "Size", "LayoutOrder", "BackgroundTransparency", "ref"}]
  LOADK R28 K97 ["bg-transparency-100 "]
  SETTABLEKS R28 R27 K29 ["tag"]
  SETTABLEKS R11 R27 K19 ["Size"]
  LOADN R28 2
  SETTABLEKS R28 R27 K61 ["LayoutOrder"]
  LOADN R28 1
  SETTABLEKS R28 R27 K21 ["BackgroundTransparency"]
  GETTABLEKS R28 R5 K23 ["setFrame"]
  SETTABLEKS R28 R27 K18 ["ref"]
  DUPTABLE R28 K108 [{"AspectRatioConstraint", "FaceSideViewImage"}]
  GETUPVAL R30 1
  GETTABLEKS R29 R30 K16 ["createElement"]
  LOADK R30 K76 ["UIAspectRatioConstraint"]
  DUPTABLE R31 K80 [{"AspectRatio", "AspectType", "DominantAxis"}]
  LOADN R32 1
  SETTABLEKS R32 R31 K77 ["AspectRatio"]
  GETIMPORT R32 K82 [Enum.AspectType.ScaleWithParentSize]
  SETTABLEKS R32 R31 K78 ["AspectType"]
  GETIMPORT R32 K84 [Enum.DominantAxis.Width]
  SETTABLEKS R32 R31 K79 ["DominantAxis"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K49 ["AspectRatioConstraint"]
  GETUPVAL R30 1
  GETTABLEKS R29 R30 K16 ["createElement"]
  GETUPVAL R31 4
  GETTABLEKS R30 R31 K93 ["Image"]
  DUPTABLE R31 K95 [{"Image", "tag", "Size", "Position", "ScaleType"}]
  LOADK R32 K109 ["rbxasset://textures/FaceControlsEditor/face_sideView.png"]
  SETTABLEKS R32 R31 K93 ["Image"]
  LOADK R32 K32 ["bg-transparency-100"]
  SETTABLEKS R32 R31 K29 ["tag"]
  GETIMPORT R32 K14 [UDim2.fromScale]
  LOADK R33 K110 [0.9]
  LOADK R34 K110 [0.9]
  CALL R32 2 1
  SETTABLEKS R32 R31 K19 ["Size"]
  GETIMPORT R32 K14 [UDim2.fromScale]
  LOADN R33 0
  LOADN R34 0
  CALL R32 2 1
  SETTABLEKS R32 R31 K20 ["Position"]
  GETIMPORT R32 K99 [Enum.ScaleType.Fit]
  SETTABLEKS R32 R31 K94 ["ScaleType"]
  DUPTABLE R32 K111 [{"Constraint", "Sliders"}]
  GETUPVAL R34 1
  GETTABLEKS R33 R34 K16 ["createElement"]
  LOADK R34 K76 ["UIAspectRatioConstraint"]
  DUPTABLE R35 K104 [{"AspectType"}]
  GETIMPORT R36 K82 [Enum.AspectType.ScaleWithParentSize]
  SETTABLEKS R36 R35 K78 ["AspectType"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K100 ["Constraint"]
  GETUPVAL R34 1
  GETTABLEKS R33 R34 K16 ["createElement"]
  GETUPVAL R35 1
  GETTABLEKS R34 R35 K105 ["Fragment"]
  LOADNIL R35
  NEWTABLE R36 0 1
  MOVE R37 R7
  SETLIST R36 R37 1 [1]
  CALL R33 3 1
  SETTABLEKS R33 R32 K101 ["Sliders"]
  CALL R29 3 1
  SETTABLEKS R29 R28 K107 ["FaceSideViewImage"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K53 ["SideViewContainer"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K38 ["CombinedContainer"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K27 ["ScrollView"]
  CALL R13 3 -1
  RETURN R13 -1

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
  GETTABLEKS R6 R0 K7 ["Components"]
  GETTABLEKS R5 R6 K8 ["FaceControlEditor"]
  GETTABLEKS R4 R5 K10 ["AllFaceDraggables"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K11 ["Contexts"]
  GETTABLEKS R5 R6 K12 ["FaceControlEditorContext"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R1 K13 ["Foundation"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R7 R1 K14 ["React"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K15 ["Hooks"]
  GETTABLEKS R8 R9 K16 ["useAbsoluteSize"]
  CALL R7 1 1
  DUPCLOSURE R8 K17 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R2
  RETURN R8 1
