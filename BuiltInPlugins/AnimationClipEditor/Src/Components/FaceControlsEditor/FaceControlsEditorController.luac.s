PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showMenu"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["showMenu"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showMenu"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["showMenu"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"showFaceControlsEditorPanel"}]
  SETTABLEKS R0 R3 K0 ["showFaceControlsEditorPanel"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["SelectedTracks"]
  JUMPIFNOT R0 [+13]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["SelectedTracks"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["SelectedTracks"]
  LENGTH R2 R3
  GETTABLE R0 R1 R2
  RETURN R0 1
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["ToggleFaceControlsEditorEnabled"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["Analytics"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_5:
  DUPTABLE R1 K2 [{"showMenu", "showFaceControlsEditorPanel"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["showMenu"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["showFaceControlsEditorPanel"]
  SETTABLEKS R1 R0 K3 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["showMenu"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["hideMenu"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["setShowFaceControlsEditorPanel"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["getLastSelectedTrack"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["toggleFaceControlsEditorEnabledHandler"]
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setShowFaceControlsEditorPanel"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["ShowFaceControlsEditorPanel"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["ShowFaceControlsEditorPanel"]
  GETTABLEKS R4 R2 K3 ["showFaceControlsEditorPanel"]
  JUMPIFEQ R3 R4 [+17]
  GETTABLEKS R3 R1 K2 ["ShowFaceControlsEditorPanel"]
  JUMPIFEQKNIL R3 [+8]
  GETIMPORT R3 K5 [spawn]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R3 1 0
  RETURN R0 0
  GETTABLEKS R3 R0 K6 ["setShowFaceControlsEditorPanel"]
  GETTABLEKS R4 R1 K2 ["ShowFaceControlsEditorPanel"]
  CALL R3 1 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K2 ["Stylizer"]
  GETTABLEKS R4 R0 K3 ["getLastSelectedTrack"]
  CALL R4 0 1
  GETTABLEKS R5 R3 K4 ["button"]
  GETTABLEKS R6 R0 K5 ["state"]
  GETTABLEKS R7 R2 K6 ["ToggleShowFaceControlsEditorPanel"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["canUseFaceControlsEditor"]
  GETTABLEKS R9 R2 K8 ["RootInstance"]
  CALL R8 1 1
  LOADK R11 K9 ["Title"]
  LOADK R12 K10 ["FACE"]
  NAMECALL R9 R1 K11 ["getText"]
  CALL R9 3 1
  GETTABLEKS R11 R3 K12 ["ikTheme"]
  GETTABLEKS R10 R11 K13 ["textSize"]
  GETTABLEKS R11 R3 K14 ["font"]
  GETUPVAL R12 1
  MOVE R13 R9
  MOVE R14 R10
  MOVE R15 R11
  GETIMPORT R16 K17 [Vector2.new]
  LOADN R17 232
  LOADN R18 232
  CALL R16 2 -1
  CALL R12 -1 1
  GETTABLEKS R14 R12 K19 ["X"]
  ADDK R13 R14 K18 [10]
  GETTABLEKS R15 R0 K0 ["props"]
  GETTABLEKS R14 R15 K8 ["RootInstance"]
  JUMPIFNOT R14 [+181]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K20 ["createElement"]
  LOADK R15 K21 ["Frame"]
  DUPTABLE R16 K27 [{"Position", "Size", "BackgroundTransparency", "AnchorPoint", "LayoutOrder"}]
  GETTABLEKS R17 R2 K22 ["Position"]
  SETTABLEKS R17 R16 K22 ["Position"]
  GETIMPORT R17 K29 [UDim2.new]
  LOADN R18 0
  MOVE R19 R13
  LOADN R20 0
  LOADN R21 18
  CALL R17 4 1
  SETTABLEKS R17 R16 K23 ["Size"]
  LOADN R17 1
  SETTABLEKS R17 R16 K24 ["BackgroundTransparency"]
  GETIMPORT R17 K17 [Vector2.new]
  LOADN R18 0
  LOADK R19 K30 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K25 ["AnchorPoint"]
  LOADN R17 2
  SETTABLEKS R17 R16 K26 ["LayoutOrder"]
  DUPTABLE R17 K33 [{"FaceControlsEditorButton", "FaceControlsEditorWindow"}]
  GETTABLEKS R18 R2 K8 ["RootInstance"]
  JUMPIFNOT R18 [+99]
  MOVE R18 R8
  JUMPIFNOT R18 [+97]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K20 ["createElement"]
  GETUPVAL R19 3
  DUPTABLE R20 K36 [{"Style", "Size", "OnClick"}]
  GETTABLEKS R22 R6 K37 ["showFaceControlsEditorPanel"]
  JUMPIFNOT R22 [+3]
  GETTABLEKS R21 R5 K38 ["FaceControlsEditorActive"]
  JUMPIF R21 [+2]
  GETTABLEKS R21 R5 K39 ["FaceControlsEditorDefault"]
  SETTABLEKS R21 R20 K34 ["Style"]
  GETIMPORT R21 K29 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 1
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K23 ["Size"]
  SETTABLEKS R7 R20 K35 ["OnClick"]
  DUPTABLE R21 K41 [{"Label"}]
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K20 ["createElement"]
  LOADK R23 K42 ["TextLabel"]
  DUPTABLE R24 K48 [{"BackgroundTransparency", "Size", "TextYAlignment", "TextSize", "Text", "Font", "TextColor3"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K24 ["BackgroundTransparency"]
  GETIMPORT R25 K29 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 1
  LOADN R29 0
  CALL R25 4 1
  SETTABLEKS R25 R24 K23 ["Size"]
  GETIMPORT R25 K51 [Enum.TextYAlignment.Center]
  SETTABLEKS R25 R24 K43 ["TextYAlignment"]
  GETTABLEKS R26 R3 K12 ["ikTheme"]
  GETTABLEKS R25 R26 K13 ["textSize"]
  SETTABLEKS R25 R24 K44 ["TextSize"]
  LOADK R27 K9 ["Title"]
  LOADK R28 K10 ["FACE"]
  NAMECALL R25 R1 K11 ["getText"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K45 ["Text"]
  GETTABLEKS R25 R3 K14 ["font"]
  SETTABLEKS R25 R24 K46 ["Font"]
  GETTABLEKS R26 R3 K12 ["ikTheme"]
  GETTABLEKS R25 R26 K52 ["textColor"]
  SETTABLEKS R25 R24 K47 ["TextColor3"]
  DUPTABLE R25 K54 [{"TeachingCallout"}]
  GETUPVAL R27 2
  GETTABLEKS R26 R27 K20 ["createElement"]
  GETUPVAL R27 4
  DUPTABLE R28 K58 [{"Offset", "DefinitionId", "LocationId"}]
  GETIMPORT R29 K17 [Vector2.new]
  LOADN R30 0
  LOADN R31 6
  CALL R29 2 1
  SETTABLEKS R29 R28 K55 ["Offset"]
  LOADK R29 K59 ["FaceControlsEditorCallout"]
  SETTABLEKS R29 R28 K56 ["DefinitionId"]
  LOADK R29 K31 ["FaceControlsEditorButton"]
  SETTABLEKS R29 R28 K57 ["LocationId"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K53 ["TeachingCallout"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K40 ["Label"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K31 ["FaceControlsEditorButton"]
  GETTABLEKS R18 R2 K60 ["ShowFaceControlsEditorPanel"]
  JUMPIFNOT R18 [+39]
  GETTABLEKS R18 R6 K37 ["showFaceControlsEditorPanel"]
  JUMPIFNOT R18 [+36]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K20 ["createElement"]
  GETUPVAL R19 5
  DUPTABLE R20 K67 [{"RootInstance", "FaceControlsEditorEnabled", "ShowFaceControlsEditorPanel", "SelectedTrack", "SetSelectedTracks", "ToggleFaceControlsEditorEnabled", "SetShowFaceControlsEditorPanel", "SetFaceControlsEditorEnabled"}]
  GETTABLEKS R21 R2 K8 ["RootInstance"]
  SETTABLEKS R21 R20 K8 ["RootInstance"]
  GETTABLEKS R21 R2 K61 ["FaceControlsEditorEnabled"]
  SETTABLEKS R21 R20 K61 ["FaceControlsEditorEnabled"]
  GETTABLEKS R21 R2 K60 ["ShowFaceControlsEditorPanel"]
  SETTABLEKS R21 R20 K60 ["ShowFaceControlsEditorPanel"]
  SETTABLEKS R4 R20 K62 ["SelectedTrack"]
  GETTABLEKS R21 R2 K63 ["SetSelectedTracks"]
  SETTABLEKS R21 R20 K63 ["SetSelectedTracks"]
  GETTABLEKS R21 R0 K68 ["toggleFaceControlsEditorEnabledHandler"]
  SETTABLEKS R21 R20 K64 ["ToggleFaceControlsEditorEnabled"]
  GETTABLEKS R21 R2 K65 ["SetShowFaceControlsEditorPanel"]
  SETTABLEKS R21 R20 K65 ["SetShowFaceControlsEditorPanel"]
  GETTABLEKS R21 R2 K66 ["SetFaceControlsEditorEnabled"]
  SETTABLEKS R21 R20 K66 ["SetFaceControlsEditorEnabled"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K32 ["FaceControlsEditorWindow"]
  CALL R14 3 1
  RETURN R14 1

PROTO_9:
  DUPTABLE R2 K4 [{"ShowFaceControlsEditorPanel", "FaceControlsEditorEnabled", "RootInstance", "SelectedTracks"}]
  GETTABLEKS R4 R0 K5 ["Status"]
  GETTABLEKS R3 R4 K0 ["ShowFaceControlsEditorPanel"]
  SETTABLEKS R3 R2 K0 ["ShowFaceControlsEditorPanel"]
  GETTABLEKS R4 R0 K5 ["Status"]
  GETTABLEKS R3 R4 K1 ["FaceControlsEditorEnabled"]
  SETTABLEKS R3 R2 K1 ["FaceControlsEditorEnabled"]
  GETTABLEKS R4 R0 K5 ["Status"]
  GETTABLEKS R3 R4 K2 ["RootInstance"]
  SETTABLEKS R3 R2 K2 ["RootInstance"]
  GETTABLEKS R4 R0 K5 ["Status"]
  GETTABLEKS R3 R4 K3 ["SelectedTracks"]
  SETTABLEKS R3 R2 K3 ["SelectedTracks"]
  RETURN R2 1

PROTO_10:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+6]
  GETUPVAL R1 1
  GETUPVAL R2 2
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0
  GETUPVAL R1 1
  GETUPVAL R2 3
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_15:
  DUPTABLE R1 K5 [{"ToggleShowFaceControlsEditorPanel", "SetFaceControlsEditorEnabled", "ToggleFaceControlsEditorEnabled", "SetShowFaceControlsEditorPanel", "SetSelectedTracks"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["ToggleShowFaceControlsEditorPanel"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["SetFaceControlsEditorEnabled"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["ToggleFaceControlsEditorEnabled"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["SetShowFaceControlsEditorPanel"]
  NEWCLOSURE R2 P4
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  SETTABLEKS R2 R1 K4 ["SetSelectedTracks"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K10 ["UI"]
  GETTABLEKS R4 R5 K11 ["Button"]
  GETTABLEKS R5 R3 K12 ["ContextServices"]
  GETTABLEKS R6 R5 K13 ["withContext"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K14 ["Src"]
  GETTABLEKS R9 R10 K15 ["Util"]
  GETTABLEKS R8 R9 K16 ["RigUtils"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R12 R0 K14 ["Src"]
  GETTABLEKS R11 R12 K17 ["Components"]
  GETTABLEKS R10 R11 K18 ["FaceControlsEditor"]
  GETTABLEKS R9 R10 K19 ["FaceControlsEditorWindow"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K14 ["Src"]
  GETTABLEKS R11 R12 K20 ["Thunks"]
  GETTABLEKS R10 R11 K21 ["ToggleFaceControlsEditorEnabled"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K14 ["Src"]
  GETTABLEKS R12 R13 K20 ["Thunks"]
  GETTABLEKS R11 R12 K22 ["ToggleShowFaceControlsEditorPanel"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K14 ["Src"]
  GETTABLEKS R13 R14 K23 ["Actions"]
  GETTABLEKS R12 R13 K24 ["SetFaceControlsEditorEnabled"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K14 ["Src"]
  GETTABLEKS R14 R15 K23 ["Actions"]
  GETTABLEKS R13 R14 K25 ["SetShowFaceControlsEditorPanel"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K14 ["Src"]
  GETTABLEKS R15 R16 K23 ["Actions"]
  GETTABLEKS R14 R15 K26 ["SetSelectedTracks"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K14 ["Src"]
  GETTABLEKS R16 R17 K20 ["Thunks"]
  GETTABLEKS R15 R16 K26 ["SetSelectedTracks"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K14 ["Src"]
  GETTABLEKS R17 R18 K17 ["Components"]
  GETTABLEKS R16 R17 K27 ["TeachingCallout"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R18 R0 K28 ["LuaFlags"]
  GETTABLEKS R17 R18 K29 ["GetFFlagSelectFromViewport"]
  CALL R16 1 1
  GETTABLEKS R17 R1 K30 ["PureComponent"]
  LOADK R19 K31 ["FaceControlsEditorController"]
  NAMECALL R17 R17 K32 ["extend"]
  CALL R17 2 1
  GETTABLEKS R19 R3 K15 ["Util"]
  GETTABLEKS R18 R19 K33 ["GetTextSize"]
  DUPCLOSURE R19 K34 [PROTO_5]
  SETTABLEKS R19 R17 K35 ["init"]
  DUPCLOSURE R19 K36 [PROTO_7]
  SETTABLEKS R19 R17 K37 ["didUpdate"]
  DUPCLOSURE R19 K38 [PROTO_8]
  CAPTURE VAL R7
  CAPTURE VAL R18
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R15
  CAPTURE VAL R8
  SETTABLEKS R19 R17 K39 ["render"]
  MOVE R19 R6
  DUPTABLE R20 K43 [{"Stylizer", "Localization", "Analytics"}]
  GETTABLEKS R21 R5 K40 ["Stylizer"]
  SETTABLEKS R21 R20 K40 ["Stylizer"]
  GETTABLEKS R21 R5 K41 ["Localization"]
  SETTABLEKS R21 R20 K41 ["Localization"]
  GETTABLEKS R21 R5 K42 ["Analytics"]
  SETTABLEKS R21 R20 K42 ["Analytics"]
  CALL R19 1 1
  MOVE R20 R17
  CALL R19 1 1
  MOVE R17 R19
  DUPCLOSURE R19 K44 [PROTO_9]
  DUPCLOSURE R20 K45 [PROTO_15]
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R16
  CAPTURE VAL R14
  CAPTURE VAL R13
  GETTABLEKS R21 R2 K46 ["connect"]
  MOVE R22 R19
  MOVE R23 R20
  CALL R21 2 1
  MOVE R22 R17
  CALL R21 1 -1
  RETURN R21 -1
