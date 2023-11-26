PROTO_0:
  JUMPIFNOT R0 [+7]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["mock"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  CALL R1 2 1
  JUMP [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["new"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  CALL R1 2 1
  GETUPVAL R4 3
  NAMECALL R2 R1 K2 ["extend"]
  CALL R2 2 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["Util"]
  GETTABLEKS R4 R3 K10 ["StyleModifier"]
  GETTABLEKS R5 R2 K11 ["Style"]
  GETTABLEKS R7 R5 K12 ["Themes"]
  GETTABLEKS R6 R7 K13 ["StudioTheme"]
  GETTABLEKS R7 R5 K14 ["StyleKey"]
  GETTABLEKS R8 R5 K15 ["Colors"]
  GETTABLEKS R9 R2 K16 ["UI"]
  GETTABLEKS R10 R9 K17 ["Box"]
  GETTABLEKS R11 R9 K18 ["RoundBox"]
  GETTABLEKS R12 R9 K19 ["TextLabel"]
  GETTABLEKS R13 R9 K20 ["Image"]
  GETTABLEKS R15 R5 K12 ["Themes"]
  GETTABLEKS R14 R15 K21 ["LightTheme"]
  GETTABLEKS R16 R5 K12 ["Themes"]
  GETTABLEKS R15 R16 K22 ["DarkTheme"]
  GETTABLEKS R16 R5 K23 ["getRawComponentStyle"]
  GETTABLEKS R17 R5 K24 ["ComponentSymbols"]
  GETTABLEKS R18 R2 K25 ["Dash"]
  GETTABLEKS R19 R18 K26 ["join"]
  GETTABLEKS R21 R1 K27 ["Dictionary"]
  GETTABLEKS R20 R21 K26 ["join"]
  MOVE R21 R14
  NEWTABLE R22 64 0
  GETTABLEKS R23 R7 K28 ["DialogButtonTextDisabled"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 184
  LOADN R26 184
  LOADN R27 184
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K32 ["TrackShadedBackgroundColor"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 243
  LOADN R26 243
  LOADN R27 243
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K33 ["TrackTitleBackgroundColor"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 227
  LOADN R26 227
  LOADN R27 227
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K34 ["TrackPrimaryBackgroundColor"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 243
  LOADN R26 243
  LOADN R27 243
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K35 ["TrackButtonColor"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 136
  LOADN R26 136
  LOADN R27 136
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K36 ["TrackHoveredButtonColor"]
  GETTABLEKS R24 R8 K37 ["Blue"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K38 ["TrackAddButtonColor"]
  GETTABLEKS R24 R8 K39 ["Gray_Light"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K40 ["TrackHoveredAddButtonColor"]
  GETTABLEKS R24 R8 K37 ["Blue"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K41 ["TrackPlusIconColor"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 82
  LOADN R26 82
  LOADN R27 82
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K42 ["TimelineDimmedColor"]
  GETTABLEKS R24 R8 K39 ["Gray_Light"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K43 ["TimelineBackgroundColor"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 243
  LOADN R26 243
  LOADN R27 243
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K44 ["KeyframePrimaryClusterColor"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 136
  LOADN R26 136
  LOADN R27 136
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K45 ["EventMarkerImageColor"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 184
  LOADN R26 184
  LOADN R27 184
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K46 ["EventMarkerBorderColor"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 136
  LOADN R26 136
  LOADN R27 136
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K47 ["ScrollBarControl"]
  GETTABLEKS R24 R8 K48 ["White"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K49 ["ScrollBarHover"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 231
  LOADN R26 240
  LOADN R27 250
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K50 ["ScrollBarPressed"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 224
  LOADN R26 224
  LOADN R27 224
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K51 ["StartScreenDarkTextColor"]
  GETTABLEKS R24 R8 K48 ["White"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K52 ["IKHeaderColor"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 243
  LOADN R26 243
  LOADN R27 243
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K53 ["IKHeaderBorder"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 243
  LOADN R26 243
  LOADN R27 243
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K54 ["KeyframePrimaryBackgroundColor"]
  GETTABLEKS R24 R8 K48 ["White"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K55 ["KeyframePrimaryBackgroundColorSelected"]
  GETTABLEKS R24 R8 K48 ["White"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K56 ["KeyframeErrorBackgroundColor"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 255
  LOADN R26 161
  LOADN R27 161
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K57 ["KeyframeErrorBorderColor"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 168
  LOADN R26 132
  LOADN R27 132
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K58 ["KeyframeErrorBackgroundColorSelected"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 255
  LOADN R26 161
  LOADN R27 161
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K59 ["KeyframeErrorBorderColorSelected"]
  GETTABLEKS R24 R8 K60 ["Red"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K61 ["KeyframePrimaryErrorBackgroundColor"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 255
  LOADN R26 161
  LOADN R27 161
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K62 ["KeyframePrimaryErrorBorderColor"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 168
  LOADN R26 132
  LOADN R27 132
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K63 ["KeyframePrimaryErrorBackgroundColorSelected"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 255
  LOADN R26 161
  LOADN R27 161
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K64 ["KeyframePrimaryErrorBorderColorSelected"]
  GETTABLEKS R24 R8 K60 ["Red"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K65 ["CurvePositionX"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 255
  LOADN R26 0
  LOADN R27 0
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K66 ["CurvePositionY"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 3
  LOADN R26 201
  LOADN R27 3
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K67 ["CurvePositionZ"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 0
  LOADN R26 0
  LOADN R27 255
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K68 ["CurveRotationX"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 47
  LOADN R26 128
  LOADN R27 123
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K69 ["CurveRotationY"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 255
  LOADN R26 0
  LOADN R27 255
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K70 ["CurveRotationZ"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 255
  LOADN R26 165
  LOADN R27 0
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K71 ["CurveEditorButton"]
  LOADK R24 K72 ["rbxasset://textures/AnimationEditor/Button_Curve_Lightmode.png"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K73 ["DopeSheetButton"]
  LOADK R24 K74 ["rbxasset://textures/AnimationEditor/Button_Dopesheet_Lightmode.png"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K75 ["StopRecordingButtonImage"]
  LOADK R24 K76 ["rbxasset://textures/AnimationEditor/FaceCaptureUI/StopRecordButton_lightTheme.png"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K77 ["FaceCaptureDefaultButtonIconColor"]
  GETIMPORT R24 K31 [Color3.fromRGB]
  LOADN R25 82
  LOADN R26 82
  LOADN R27 82
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K78 ["FaceSliderKnob"]
  GETTABLEKS R24 R8 K37 ["Blue"]
  SETTABLE R24 R22 R23
  CALL R20 2 1
  GETTABLEKS R22 R1 K27 ["Dictionary"]
  GETTABLEKS R21 R22 K26 ["join"]
  MOVE R22 R15
  NEWTABLE R23 64 0
  GETTABLEKS R24 R7 K28 ["DialogButtonTextDisabled"]
  GETIMPORT R25 K31 [Color3.fromRGB]
  LOADN R26 92
  LOADN R27 92
  LOADN R28 92
  CALL R25 3 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K32 ["TrackShadedBackgroundColor"]
  GETIMPORT R25 K31 [Color3.fromRGB]
  LOADN R26 54
  LOADN R27 54
  LOADN R28 54
  CALL R25 3 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K33 ["TrackTitleBackgroundColor"]
  GETIMPORT R25 K31 [Color3.fromRGB]
  LOADN R26 54
  LOADN R27 54
  LOADN R28 54
  CALL R25 3 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K34 ["TrackPrimaryBackgroundColor"]
  GETIMPORT R25 K31 [Color3.fromRGB]
  LOADN R26 37
  LOADN R27 37
  LOADN R28 37
  CALL R25 3 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K35 ["TrackButtonColor"]
  GETTABLEKS R25 R8 K39 ["Gray_Light"]
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K36 ["TrackHoveredButtonColor"]
  GETTABLEKS R25 R8 K48 ["White"]
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K38 ["TrackAddButtonColor"]
  GETTABLEKS R25 R8 K79 ["Gray"]
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K40 ["TrackHoveredAddButtonColor"]
  GETTABLEKS R25 R8 K80 ["lighter"]
  GETTABLEKS R26 R8 K79 ["Gray"]
  LOADK R27 K81 [0.26]
  CALL R25 2 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K41 ["TrackPlusIconColor"]
  GETTABLEKS R25 R8 K39 ["Gray_Light"]
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K42 ["TimelineDimmedColor"]
  GETIMPORT R25 K31 [Color3.fromRGB]
  LOADN R26 102
  LOADN R27 102
  LOADN R28 102
  CALL R25 3 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K43 ["TimelineBackgroundColor"]
  GETIMPORT R25 K31 [Color3.fromRGB]
  LOADN R26 56
  LOADN R27 56
  LOADN R28 56
  CALL R25 3 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K44 ["KeyframePrimaryClusterColor"]
  GETIMPORT R25 K31 [Color3.fromRGB]
  LOADN R26 170
  LOADN R27 170
  LOADN R28 170
  CALL R25 3 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K45 ["EventMarkerImageColor"]
  GETTABLEKS R25 R8 K39 ["Gray_Light"]
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K46 ["EventMarkerBorderColor"]
  GETTABLEKS R25 R8 K48 ["White"]
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K47 ["ScrollBarControl"]
  GETIMPORT R25 K31 [Color3.fromRGB]
  LOADN R26 64
  LOADN R27 64
  LOADN R28 64
  CALL R25 3 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K49 ["ScrollBarHover"]
  GETIMPORT R25 K31 [Color3.fromRGB]
  LOADN R26 80
  LOADN R27 80
  LOADN R28 80
  CALL R25 3 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K50 ["ScrollBarPressed"]
  GETIMPORT R25 K31 [Color3.fromRGB]
  LOADN R26 80
  LOADN R27 80
  LOADN R28 80
  CALL R25 3 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K51 ["StartScreenDarkTextColor"]
  GETTABLEKS R25 R8 K39 ["Gray_Light"]
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K52 ["IKHeaderColor"]
  GETTABLEKS R25 R8 K82 ["Slate"]
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K53 ["IKHeaderBorder"]
  GETIMPORT R25 K31 [Color3.fromRGB]
  LOADN R26 26
  LOADN R27 26
  LOADN R28 26
  CALL R25 3 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K54 ["KeyframePrimaryBackgroundColor"]
  GETTABLEKS R25 R8 K39 ["Gray_Light"]
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K55 ["KeyframePrimaryBackgroundColorSelected"]
  GETTABLEKS R25 R8 K39 ["Gray_Light"]
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K56 ["KeyframeErrorBackgroundColor"]
  GETTABLEKS R25 R8 K80 ["lighter"]
  GETTABLEKS R26 R8 K83 ["Black"]
  LOADK R27 K84 [0.4]
  CALL R25 2 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K57 ["KeyframeErrorBorderColor"]
  GETIMPORT R25 K31 [Color3.fromRGB]
  LOADN R26 255
  LOADN R27 68
  LOADN R28 68
  CALL R25 3 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K58 ["KeyframeErrorBackgroundColorSelected"]
  GETIMPORT R25 K31 [Color3.fromRGB]
  LOADN R26 170
  LOADN R27 170
  LOADN R28 170
  CALL R25 3 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K59 ["KeyframeErrorBorderColorSelected"]
  GETIMPORT R25 K31 [Color3.fromRGB]
  LOADN R26 255
  LOADN R27 68
  LOADN R28 68
  CALL R25 3 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K61 ["KeyframePrimaryErrorBackgroundColor"]
  GETTABLEKS R25 R8 K39 ["Gray_Light"]
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K62 ["KeyframePrimaryErrorBorderColor"]
  GETIMPORT R25 K31 [Color3.fromRGB]
  LOADN R26 255
  LOADN R27 68
  LOADN R28 68
  CALL R25 3 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K63 ["KeyframePrimaryErrorBackgroundColorSelected"]
  GETTABLEKS R25 R8 K39 ["Gray_Light"]
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K64 ["KeyframePrimaryErrorBorderColorSelected"]
  GETIMPORT R25 K31 [Color3.fromRGB]
  LOADN R26 255
  LOADN R27 68
  LOADN R28 68
  CALL R25 3 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K65 ["CurvePositionX"]
  GETIMPORT R25 K31 [Color3.fromRGB]
  LOADN R26 255
  LOADN R27 0
  LOADN R28 0
  CALL R25 3 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K66 ["CurvePositionY"]
  GETIMPORT R25 K31 [Color3.fromRGB]
  LOADN R26 3
  LOADN R27 201
  LOADN R28 3
  CALL R25 3 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K67 ["CurvePositionZ"]
  GETIMPORT R25 K31 [Color3.fromRGB]
  LOADN R26 0
  LOADN R27 0
  LOADN R28 255
  CALL R25 3 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K68 ["CurveRotationX"]
  GETIMPORT R25 K31 [Color3.fromRGB]
  LOADN R26 47
  LOADN R27 128
  LOADN R28 123
  CALL R25 3 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K69 ["CurveRotationY"]
  GETIMPORT R25 K31 [Color3.fromRGB]
  LOADN R26 255
  LOADN R27 0
  LOADN R28 255
  CALL R25 3 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K70 ["CurveRotationZ"]
  GETIMPORT R25 K31 [Color3.fromRGB]
  LOADN R26 255
  LOADN R27 165
  LOADN R28 0
  CALL R25 3 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K71 ["CurveEditorButton"]
  LOADK R25 K85 ["rbxasset://textures/AnimationEditor/Button_Curve_Darkmode.png"]
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K73 ["DopeSheetButton"]
  LOADK R25 K86 ["rbxasset://textures/AnimationEditor/Button_Dopesheet_Darkmode.png"]
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K75 ["StopRecordingButtonImage"]
  LOADK R25 K87 ["rbxasset://textures/AnimationEditor/FaceCaptureUI/StopRecordButton.png"]
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K77 ["FaceCaptureDefaultButtonIconColor"]
  GETIMPORT R25 K31 [Color3.fromRGB]
  LOADN R26 255
  LOADN R27 255
  LOADN R28 255
  CALL R25 3 1
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R7 K78 ["FaceSliderKnob"]
  GETTABLEKS R25 R8 K48 ["White"]
  SETTABLE R25 R23 R24
  CALL R21 2 1
  DUPTABLE R22 K104 [{"autokeyOn", "autokeyOff", "skipBackward", "skipForward", "play", "pause", "loop", "reverse", "goToFirstFrame", "goToLastFrame", "selectClipDropdownIcon", "iconColor", "iconHighlightColor", "timeInputBackground", "borderColor", "inputBorderColor"}]
  LOADK R23 K105 [""]
  SETTABLEKS R23 R22 K88 ["autokeyOn"]
  LOADK R23 K105 [""]
  SETTABLEKS R23 R22 K89 ["autokeyOff"]
  LOADK R23 K106 ["rbxasset://textures/AnimationEditor/button_control_previous.png"]
  SETTABLEKS R23 R22 K90 ["skipBackward"]
  LOADK R23 K107 ["rbxasset://textures/AnimationEditor/button_control_next.png"]
  SETTABLEKS R23 R22 K91 ["skipForward"]
  LOADK R23 K108 ["rbxasset://textures/AnimationEditor/button_control_play.png"]
  SETTABLEKS R23 R22 K92 ["play"]
  LOADK R23 K109 ["rbxasset://textures/AnimationEditor/button_pause_white@2x.png"]
  SETTABLEKS R23 R22 K93 ["pause"]
  LOADK R23 K110 ["rbxasset://textures/AnimationEditor/button_loop.png"]
  SETTABLEKS R23 R22 K94 ["loop"]
  LOADK R23 K111 ["rbxasset://textures/AnimationEditor/button_control_reverseplay.png"]
  SETTABLEKS R23 R22 K95 ["reverse"]
  LOADK R23 K112 ["rbxasset://textures/AnimationEditor/button_control_firstframe.png"]
  SETTABLEKS R23 R22 K96 ["goToFirstFrame"]
  LOADK R23 K113 ["rbxasset://textures/AnimationEditor/button_control_lastframe.png"]
  SETTABLEKS R23 R22 K97 ["goToLastFrame"]
  LOADK R23 K114 ["rbxasset://textures/AnimationEditor/btn_expand.png"]
  SETTABLEKS R23 R22 K98 ["selectClipDropdownIcon"]
  GETTABLEKS R23 R7 K115 ["MainText"]
  SETTABLEKS R23 R22 K99 ["iconColor"]
  GETTABLEKS R23 R7 K116 ["DialogMainButtonText"]
  SETTABLEKS R23 R22 K100 ["iconHighlightColor"]
  GETTABLEKS R23 R7 K117 ["InputFieldBackground"]
  SETTABLEKS R23 R22 K101 ["timeInputBackground"]
  GETTABLEKS R23 R7 K118 ["Border"]
  SETTABLEKS R23 R22 K102 ["borderColor"]
  GETTABLEKS R23 R7 K119 ["InputFieldBorder"]
  SETTABLEKS R23 R22 K103 ["inputBorderColor"]
  DUPTABLE R23 K125 [{"itemColor", "hoveredItemColor", "textColor", "itemHeight", "textSize"}]
  GETTABLEKS R24 R7 K126 ["Item"]
  SETTABLEKS R24 R23 K120 ["itemColor"]
  GETTABLEKS R24 R7 K127 ["ItemHovered"]
  SETTABLEKS R24 R23 K121 ["hoveredItemColor"]
  GETTABLEKS R24 R7 K115 ["MainText"]
  SETTABLEKS R24 R23 K122 ["textColor"]
  LOADN R24 22
  SETTABLEKS R24 R23 K123 ["itemHeight"]
  LOADN R24 15
  SETTABLEKS R24 R23 K124 ["textSize"]
  DUPTABLE R24 K147 [{"backgroundColor", "shadedBackgroundColor", "titleBackgroundColor", "selectedBackgroundColor", "primaryBackgroundColor", "textColor", "primaryTextColor", "selectedTextColor", "textSize", "arrow", "contextMenu", "addButtonBackground", "addEventBackground", "addEventBorder", "plusIcon", "buttonColor", "hoveredButtonColor", "addButtonColor", "hoveredAddButtonColor", "plusIconColor", "hoveredPlusIconColor"}]
  GETTABLEKS R25 R7 K148 ["MainBackground"]
  SETTABLEKS R25 R24 K128 ["backgroundColor"]
  GETTABLEKS R25 R7 K32 ["TrackShadedBackgroundColor"]
  SETTABLEKS R25 R24 K129 ["shadedBackgroundColor"]
  GETTABLEKS R25 R7 K33 ["TrackTitleBackgroundColor"]
  SETTABLEKS R25 R24 K130 ["titleBackgroundColor"]
  GETTABLEKS R25 R7 K149 ["ItemSelected"]
  SETTABLEKS R25 R24 K131 ["selectedBackgroundColor"]
  GETTABLEKS R25 R7 K34 ["TrackPrimaryBackgroundColor"]
  SETTABLEKS R25 R24 K132 ["primaryBackgroundColor"]
  GETTABLEKS R25 R7 K115 ["MainText"]
  SETTABLEKS R25 R24 K122 ["textColor"]
  GETTABLEKS R25 R7 K150 ["BrightText"]
  SETTABLEKS R25 R24 K133 ["primaryTextColor"]
  GETTABLEKS R25 R7 K151 ["MainTextSelected"]
  SETTABLEKS R25 R24 K134 ["selectedTextColor"]
  LOADN R25 15
  SETTABLEKS R25 R24 K124 ["textSize"]
  DUPTABLE R25 K154 [{"collapsed", "expanded"}]
  LOADK R26 K155 ["rbxasset://textures/StudioToolbox/ArrowCollapsed.png"]
  SETTABLEKS R26 R25 K152 ["collapsed"]
  LOADK R26 K156 ["rbxasset://textures/StudioToolbox/ArrowExpanded.png"]
  SETTABLEKS R26 R25 K153 ["expanded"]
  SETTABLEKS R25 R24 K135 ["arrow"]
  LOADK R25 K157 ["rbxasset://textures/AnimationEditor/icon_showmore.png"]
  SETTABLEKS R25 R24 K136 ["contextMenu"]
  LOADK R25 K158 ["rbxasset://textures/AnimationEditor/Circle.png"]
  SETTABLEKS R25 R24 K137 ["addButtonBackground"]
  LOADK R25 K159 ["rbxasset://textures/AnimationEditor/addEvent_inner.png"]
  SETTABLEKS R25 R24 K138 ["addEventBackground"]
  LOADK R25 K160 ["rbxasset://textures/AnimationEditor/addEvent_border.png"]
  SETTABLEKS R25 R24 K139 ["addEventBorder"]
  LOADK R25 K161 ["rbxasset://textures/AnimationEditor/icon_add.png"]
  SETTABLEKS R25 R24 K140 ["plusIcon"]
  GETTABLEKS R25 R7 K35 ["TrackButtonColor"]
  SETTABLEKS R25 R24 K141 ["buttonColor"]
  GETTABLEKS R25 R7 K36 ["TrackHoveredButtonColor"]
  SETTABLEKS R25 R24 K142 ["hoveredButtonColor"]
  GETTABLEKS R25 R7 K38 ["TrackAddButtonColor"]
  SETTABLEKS R25 R24 K143 ["addButtonColor"]
  GETTABLEKS R25 R7 K40 ["TrackHoveredAddButtonColor"]
  SETTABLEKS R25 R24 K144 ["hoveredAddButtonColor"]
  GETTABLEKS R25 R7 K41 ["TrackPlusIconColor"]
  SETTABLEKS R25 R24 K145 ["plusIconColor"]
  GETTABLEKS R25 R7 K116 ["DialogMainButtonText"]
  SETTABLEKS R25 R24 K146 ["hoveredPlusIconColor"]
  DUPTABLE R25 K163 [{"mainColor", "textColor", "textSize"}]
  GETTABLEKS R26 R7 K164 ["DialogMainButton"]
  SETTABLEKS R26 R25 K162 ["mainColor"]
  GETTABLEKS R26 R7 K116 ["DialogMainButtonText"]
  SETTABLEKS R26 R25 K122 ["textColor"]
  LOADN R26 15
  SETTABLEKS R26 R25 K124 ["textSize"]
  DUPTABLE R26 K168 [{"textSize", "textColor", "backgroundColor", "errorBorder", "focusedBorder", "defaultBorder"}]
  LOADN R27 16
  SETTABLEKS R27 R26 K124 ["textSize"]
  GETTABLEKS R27 R7 K115 ["MainText"]
  SETTABLEKS R27 R26 K122 ["textColor"]
  GETTABLEKS R27 R7 K117 ["InputFieldBackground"]
  SETTABLEKS R27 R26 K128 ["backgroundColor"]
  GETTABLEKS R27 R7 K169 ["ErrorText"]
  SETTABLEKS R27 R26 K165 ["errorBorder"]
  GETTABLEKS R27 R7 K164 ["DialogMainButton"]
  SETTABLEKS R27 R26 K166 ["focusedBorder"]
  GETTABLEKS R27 R7 K118 ["Border"]
  SETTABLEKS R27 R26 K167 ["defaultBorder"]
  DUPTABLE R27 K172 [{"image", "imageColor"}]
  LOADK R28 K173 ["rbxasset://textures/AnimationEditor/btn_manage.png"]
  SETTABLEKS R28 R27 K170 ["image"]
  GETTABLEKS R28 R7 K115 ["MainText"]
  SETTABLEKS R28 R27 K171 ["imageColor"]
  DUPTABLE R28 K176 [{"clusterColor", "primaryClusterColor"}]
  GETTABLEKS R29 R7 K28 ["DialogButtonTextDisabled"]
  SETTABLEKS R29 R28 K174 ["clusterColor"]
  GETTABLEKS R29 R7 K44 ["KeyframePrimaryClusterColor"]
  SETTABLEKS R29 R28 K175 ["primaryClusterColor"]
  DUPTABLE R29 K181 [{"backgroundColor", "titleColor", "font", "textSize", "backgroundImage", "selectedImage"}]
  GETIMPORT R30 K31 [Color3.fromRGB]
  LOADN R31 182
  LOADN R32 182
  LOADN R33 182
  CALL R30 3 1
  SETTABLEKS R30 R29 K128 ["backgroundColor"]
  GETTABLEKS R30 R7 K115 ["MainText"]
  SETTABLEKS R30 R29 K177 ["titleColor"]
  GETIMPORT R30 K185 [Enum.Font.Legacy]
  SETTABLEKS R30 R29 K178 ["font"]
  LOADN R30 8
  SETTABLEKS R30 R29 K124 ["textSize"]
  LOADK R30 K186 ["rbxasset://textures/GameSettings/UncheckedBox.png"]
  SETTABLEKS R30 R29 K179 ["backgroundImage"]
  LOADK R30 K187 ["rbxasset://textures/GameSettings/CheckedBoxLight.png"]
  SETTABLEKS R30 R29 K180 ["selectedImage"]
  GETIMPORT R30 K190 [Rect.new]
  LOADN R31 3
  LOADN R32 0
  LOADN R33 4
  LOADN R34 6
  CALL R30 4 1
  GETTABLEKS R31 R7 K78 ["FaceSliderKnob"]
  NEWTABLE R32 8 0
  GETIMPORT R33 K192 [Vector2.new]
  LOADK R34 K193 [0.5]
  LOADK R35 K193 [0.5]
  CALL R33 2 1
  SETTABLEKS R33 R32 K194 ["AnchorPoint"]
  SETTABLEKS R31 R32 K195 ["Color"]
  GETTABLEKS R33 R7 K196 ["SliderKnobImage"]
  SETTABLEKS R33 R32 K20 ["Image"]
  GETIMPORT R33 K198 [UDim2.new]
  LOADN R34 0
  LOADK R35 K199 [6.5]
  LOADN R36 0
  LOADK R37 K199 [6.5]
  CALL R33 4 1
  SETTABLEKS R33 R32 K200 ["Size"]
  GETTABLEKS R33 R4 K201 ["Disabled"]
  DUPTABLE R34 K202 [{"Color"}]
  GETTABLEKS R35 R7 K203 ["Button"]
  SETTABLEKS R35 R34 K195 ["Color"]
  SETTABLE R34 R32 R33
  NEWTABLE R33 8 0
  GETIMPORT R34 K192 [Vector2.new]
  LOADK R35 K193 [0.5]
  LOADK R36 K193 [0.5]
  CALL R34 2 1
  SETTABLEKS R34 R33 K194 ["AnchorPoint"]
  SETTABLEKS R31 R33 K195 ["Color"]
  GETTABLEKS R34 R7 K196 ["SliderKnobImage"]
  SETTABLEKS R34 R33 K20 ["Image"]
  GETIMPORT R34 K198 [UDim2.new]
  LOADN R35 0
  LOADN R36 9
  LOADN R37 0
  LOADN R38 9
  CALL R34 4 1
  SETTABLEKS R34 R33 K200 ["Size"]
  GETTABLEKS R34 R4 K201 ["Disabled"]
  DUPTABLE R35 K202 [{"Color"}]
  GETTABLEKS R36 R7 K203 ["Button"]
  SETTABLEKS R36 R35 K195 ["Color"]
  SETTABLE R35 R33 R34
  DUPTABLE R34 K213 [{"KnobSize", "Background", "BackgroundStyle", "Foreground", "ForegroundStyle", "LowerKnobBackground", "LowerKnobBackgroundStyle", "UpperKnobBackground", "UpperKnobBackgroundStyle"}]
  GETIMPORT R35 K192 [Vector2.new]
  LOADN R36 18
  LOADN R37 18
  CALL R35 2 1
  SETTABLEKS R35 R34 K204 ["KnobSize"]
  SETTABLEKS R13 R34 K205 ["Background"]
  DUPTABLE R35 K214 [{"Background", "Size"}]
  GETIMPORT R36 K31 [Color3.fromRGB]
  LOADN R37 87
  LOADN R38 87
  LOADN R39 87
  CALL R36 3 1
  SETTABLEKS R36 R35 K205 ["Background"]
  GETIMPORT R36 K198 [UDim2.new]
  LOADN R37 1
  LOADN R38 0
  LOADN R39 0
  LOADN R40 1
  CALL R36 4 1
  SETTABLEKS R36 R35 K200 ["Size"]
  SETTABLEKS R35 R34 K206 ["BackgroundStyle"]
  SETTABLEKS R13 R34 K207 ["Foreground"]
  NEWTABLE R35 4 0
  GETTABLEKS R36 R7 K164 ["DialogMainButton"]
  SETTABLEKS R36 R35 K205 ["Background"]
  GETIMPORT R36 K198 [UDim2.new]
  LOADN R37 1
  LOADN R38 0
  LOADN R39 0
  LOADN R40 1
  CALL R36 4 1
  SETTABLEKS R36 R35 K200 ["Size"]
  GETTABLEKS R36 R4 K201 ["Disabled"]
  DUPTABLE R37 K215 [{"Background"}]
  GETTABLEKS R38 R7 K203 ["Button"]
  SETTABLEKS R38 R37 K205 ["Background"]
  SETTABLE R37 R35 R36
  SETTABLEKS R35 R34 K208 ["ForegroundStyle"]
  SETTABLEKS R13 R34 K209 ["LowerKnobBackground"]
  SETTABLEKS R32 R34 K210 ["LowerKnobBackgroundStyle"]
  SETTABLEKS R13 R34 K211 ["UpperKnobBackground"]
  SETTABLEKS R32 R34 K212 ["UpperKnobBackgroundStyle"]
  DUPTABLE R35 K213 [{"KnobSize", "Background", "BackgroundStyle", "Foreground", "ForegroundStyle", "LowerKnobBackground", "LowerKnobBackgroundStyle", "UpperKnobBackground", "UpperKnobBackgroundStyle"}]
  GETIMPORT R36 K192 [Vector2.new]
  LOADN R37 18
  LOADN R38 18
  CALL R36 2 1
  SETTABLEKS R36 R35 K204 ["KnobSize"]
  SETTABLEKS R13 R35 K205 ["Background"]
  DUPTABLE R36 K214 [{"Background", "Size"}]
  GETIMPORT R37 K31 [Color3.fromRGB]
  LOADN R38 87
  LOADN R39 87
  LOADN R40 87
  CALL R37 3 1
  SETTABLEKS R37 R36 K205 ["Background"]
  GETIMPORT R37 K198 [UDim2.new]
  LOADN R38 1
  LOADN R39 0
  LOADN R40 0
  LOADN R41 1
  CALL R37 4 1
  SETTABLEKS R37 R36 K200 ["Size"]
  SETTABLEKS R36 R35 K206 ["BackgroundStyle"]
  SETTABLEKS R13 R35 K207 ["Foreground"]
  NEWTABLE R36 4 0
  GETTABLEKS R37 R7 K164 ["DialogMainButton"]
  SETTABLEKS R37 R36 K205 ["Background"]
  GETIMPORT R37 K198 [UDim2.new]
  LOADN R38 1
  LOADN R39 0
  LOADN R40 0
  LOADN R41 1
  CALL R37 4 1
  SETTABLEKS R37 R36 K200 ["Size"]
  GETTABLEKS R37 R4 K201 ["Disabled"]
  DUPTABLE R38 K215 [{"Background"}]
  GETTABLEKS R39 R7 K203 ["Button"]
  SETTABLEKS R39 R38 K205 ["Background"]
  SETTABLE R38 R36 R37
  SETTABLEKS R36 R35 K208 ["ForegroundStyle"]
  SETTABLEKS R13 R35 K209 ["LowerKnobBackground"]
  SETTABLEKS R33 R35 K210 ["LowerKnobBackgroundStyle"]
  SETTABLEKS R13 R35 K211 ["UpperKnobBackground"]
  SETTABLEKS R33 R35 K212 ["UpperKnobBackgroundStyle"]
  DUPTABLE R36 K219 [{"KnobSize", "Background", "BackgroundStyle", "ForegroundStyle", "OutlineStyle", "KnobBackground", "KnobBackgroundStyle"}]
  GETIMPORT R37 K192 [Vector2.new]
  LOADN R38 18
  LOADN R39 18
  CALL R37 2 1
  SETTABLEKS R37 R36 K204 ["KnobSize"]
  SETTABLEKS R13 R36 K205 ["Background"]
  DUPTABLE R37 K225 [{"AnchorPoint", "Color", "Position", "ScaleType", "Size", "SliceCenter", "BackgroundTransparency", "ImageTransparency"}]
  GETIMPORT R38 K192 [Vector2.new]
  LOADN R39 0
  LOADK R40 K193 [0.5]
  CALL R38 2 1
  SETTABLEKS R38 R37 K194 ["AnchorPoint"]
  GETIMPORT R38 K31 [Color3.fromRGB]
  LOADN R39 87
  LOADN R40 87
  LOADN R41 87
  CALL R38 3 1
  SETTABLEKS R38 R37 K195 ["Color"]
  GETIMPORT R38 K198 [UDim2.new]
  LOADN R39 0
  LOADN R40 0
  LOADK R41 K193 [0.5]
  LOADN R42 0
  CALL R38 4 1
  SETTABLEKS R38 R37 K220 ["Position"]
  GETIMPORT R38 K227 [Enum.ScaleType.Slice]
  SETTABLEKS R38 R37 K221 ["ScaleType"]
  GETIMPORT R38 K198 [UDim2.new]
  GETIMPORT R39 K229 [UDim.new]
  LOADN R40 1
  LOADN R41 0
  CALL R39 2 1
  GETIMPORT R40 K229 [UDim.new]
  LOADN R41 1
  LOADN R42 0
  CALL R40 2 -1
  CALL R38 -1 1
  SETTABLEKS R38 R37 K200 ["Size"]
  SETTABLEKS R30 R37 K222 ["SliceCenter"]
  LOADN R38 1
  SETTABLEKS R38 R37 K223 ["BackgroundTransparency"]
  LOADN R38 1
  SETTABLEKS R38 R37 K224 ["ImageTransparency"]
  SETTABLEKS R37 R36 K206 ["BackgroundStyle"]
  NEWTABLE R37 8 0
  GETIMPORT R38 K192 [Vector2.new]
  LOADN R39 0
  LOADK R40 K193 [0.5]
  CALL R38 2 1
  SETTABLEKS R38 R37 K194 ["AnchorPoint"]
  LOADK R38 K230 ["rbxasset://textures/DeveloperFramework/slider_bg.png"]
  SETTABLEKS R38 R37 K20 ["Image"]
  GETTABLEKS R38 R7 K164 ["DialogMainButton"]
  SETTABLEKS R38 R37 K195 ["Color"]
  GETIMPORT R38 K227 [Enum.ScaleType.Slice]
  SETTABLEKS R38 R37 K221 ["ScaleType"]
  GETIMPORT R38 K198 [UDim2.new]
  GETIMPORT R39 K229 [UDim.new]
  LOADN R40 1
  LOADN R41 0
  CALL R39 2 1
  GETIMPORT R40 K229 [UDim.new]
  LOADN R41 0
  LOADN R42 1
  CALL R40 2 -1
  CALL R38 -1 1
  SETTABLEKS R38 R37 K200 ["Size"]
  SETTABLEKS R30 R37 K222 ["SliceCenter"]
  GETTABLEKS R38 R4 K201 ["Disabled"]
  DUPTABLE R39 K202 [{"Color"}]
  GETTABLEKS R40 R7 K203 ["Button"]
  SETTABLEKS R40 R39 K195 ["Color"]
  SETTABLE R39 R37 R38
  SETTABLEKS R37 R36 K208 ["ForegroundStyle"]
  DUPTABLE R37 K202 [{"Color"}]
  GETIMPORT R38 K31 [Color3.fromRGB]
  LOADN R39 87
  LOADN R40 87
  LOADN R41 87
  CALL R38 3 1
  SETTABLEKS R38 R37 K195 ["Color"]
  SETTABLEKS R37 R36 K216 ["OutlineStyle"]
  SETTABLEKS R13 R36 K217 ["KnobBackground"]
  SETTABLEKS R32 R36 K218 ["KnobBackgroundStyle"]
  DUPTABLE R37 K219 [{"KnobSize", "Background", "BackgroundStyle", "ForegroundStyle", "OutlineStyle", "KnobBackground", "KnobBackgroundStyle"}]
  GETIMPORT R38 K192 [Vector2.new]
  LOADN R39 18
  LOADN R40 18
  CALL R38 2 1
  SETTABLEKS R38 R37 K204 ["KnobSize"]
  SETTABLEKS R13 R37 K205 ["Background"]
  DUPTABLE R38 K225 [{"AnchorPoint", "Color", "Position", "ScaleType", "Size", "SliceCenter", "BackgroundTransparency", "ImageTransparency"}]
  GETIMPORT R39 K192 [Vector2.new]
  LOADN R40 0
  LOADK R41 K193 [0.5]
  CALL R39 2 1
  SETTABLEKS R39 R38 K194 ["AnchorPoint"]
  GETIMPORT R39 K31 [Color3.fromRGB]
  LOADN R40 87
  LOADN R41 87
  LOADN R42 87
  CALL R39 3 1
  SETTABLEKS R39 R38 K195 ["Color"]
  GETIMPORT R39 K198 [UDim2.new]
  LOADN R40 0
  LOADN R41 0
  LOADK R42 K193 [0.5]
  LOADN R43 0
  CALL R39 4 1
  SETTABLEKS R39 R38 K220 ["Position"]
  GETIMPORT R39 K227 [Enum.ScaleType.Slice]
  SETTABLEKS R39 R38 K221 ["ScaleType"]
  GETIMPORT R39 K198 [UDim2.new]
  GETIMPORT R40 K229 [UDim.new]
  LOADN R41 1
  LOADN R42 0
  CALL R40 2 1
  GETIMPORT R41 K229 [UDim.new]
  LOADN R42 1
  LOADN R43 0
  CALL R41 2 -1
  CALL R39 -1 1
  SETTABLEKS R39 R38 K200 ["Size"]
  SETTABLEKS R30 R38 K222 ["SliceCenter"]
  LOADN R39 1
  SETTABLEKS R39 R38 K223 ["BackgroundTransparency"]
  LOADN R39 1
  SETTABLEKS R39 R38 K224 ["ImageTransparency"]
  SETTABLEKS R38 R37 K206 ["BackgroundStyle"]
  NEWTABLE R38 8 0
  GETIMPORT R39 K192 [Vector2.new]
  LOADN R40 0
  LOADK R41 K193 [0.5]
  CALL R39 2 1
  SETTABLEKS R39 R38 K194 ["AnchorPoint"]
  LOADK R39 K230 ["rbxasset://textures/DeveloperFramework/slider_bg.png"]
  SETTABLEKS R39 R38 K20 ["Image"]
  GETTABLEKS R39 R7 K164 ["DialogMainButton"]
  SETTABLEKS R39 R38 K195 ["Color"]
  GETIMPORT R39 K227 [Enum.ScaleType.Slice]
  SETTABLEKS R39 R38 K221 ["ScaleType"]
  GETIMPORT R39 K198 [UDim2.new]
  GETIMPORT R40 K229 [UDim.new]
  LOADN R41 1
  LOADN R42 0
  CALL R40 2 1
  GETIMPORT R41 K229 [UDim.new]
  LOADN R42 0
  LOADN R43 1
  CALL R41 2 -1
  CALL R39 -1 1
  SETTABLEKS R39 R38 K200 ["Size"]
  SETTABLEKS R30 R38 K222 ["SliceCenter"]
  GETTABLEKS R39 R4 K201 ["Disabled"]
  DUPTABLE R40 K202 [{"Color"}]
  GETTABLEKS R41 R7 K203 ["Button"]
  SETTABLEKS R41 R40 K195 ["Color"]
  SETTABLE R40 R38 R39
  SETTABLEKS R38 R37 K208 ["ForegroundStyle"]
  DUPTABLE R38 K202 [{"Color"}]
  GETIMPORT R39 K31 [Color3.fromRGB]
  LOADN R40 87
  LOADN R41 87
  LOADN R42 87
  CALL R39 3 1
  SETTABLEKS R39 R38 K195 ["Color"]
  SETTABLEKS R38 R37 K216 ["OutlineStyle"]
  SETTABLEKS R13 R37 K217 ["KnobBackground"]
  SETTABLEKS R33 R37 K218 ["KnobBackgroundStyle"]
  DUPTABLE R38 K233 [{"slice", "backgroundImage", "borderImage"}]
  GETIMPORT R39 K190 [Rect.new]
  LOADN R40 3
  LOADN R41 3
  LOADN R42 13
  LOADN R43 13
  CALL R39 4 1
  SETTABLEKS R39 R38 K231 ["slice"]
  LOADK R39 K234 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
  SETTABLEKS R39 R38 K179 ["backgroundImage"]
  LOADK R39 K235 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
  SETTABLEKS R39 R38 K232 ["borderImage"]
  DUPTABLE R39 K243 [{"MediaControl", "EventFilter", "ActiveControl", "IKDefault", "IKActive", "FaceControlsEditorActive", "FaceControlsEditorDefault"}]
  NEWTABLE R40 4 0
  SETTABLEKS R10 R40 K205 ["Background"]
  DUPTABLE R41 K246 [{"Color", "BorderColor", "BorderSize"}]
  GETTABLEKS R42 R7 K148 ["MainBackground"]
  SETTABLEKS R42 R41 K195 ["Color"]
  GETTABLEKS R42 R7 K118 ["Border"]
  SETTABLEKS R42 R41 K244 ["BorderColor"]
  LOADN R42 1
  SETTABLEKS R42 R41 K245 ["BorderSize"]
  SETTABLEKS R41 R40 K206 ["BackgroundStyle"]
  GETTABLEKS R41 R4 K247 ["Hover"]
  DUPTABLE R42 K248 [{"BackgroundStyle"}]
  DUPTABLE R43 K246 [{"Color", "BorderColor", "BorderSize"}]
  GETTABLEKS R44 R7 K249 ["ButtonHover"]
  SETTABLEKS R44 R43 K195 ["Color"]
  GETTABLEKS R44 R7 K118 ["Border"]
  SETTABLEKS R44 R43 K244 ["BorderColor"]
  LOADN R44 1
  SETTABLEKS R44 R43 K245 ["BorderSize"]
  SETTABLEKS R43 R42 K206 ["BackgroundStyle"]
  SETTABLE R42 R40 R41
  SETTABLEKS R40 R39 K236 ["MediaControl"]
  NEWTABLE R40 4 0
  SETTABLEKS R10 R40 K205 ["Background"]
  DUPTABLE R41 K202 [{"Color"}]
  GETTABLEKS R42 R7 K33 ["TrackTitleBackgroundColor"]
  SETTABLEKS R42 R41 K195 ["Color"]
  SETTABLEKS R41 R40 K206 ["BackgroundStyle"]
  GETTABLEKS R41 R4 K247 ["Hover"]
  DUPTABLE R42 K248 [{"BackgroundStyle"}]
  DUPTABLE R43 K202 [{"Color"}]
  GETTABLEKS R44 R7 K249 ["ButtonHover"]
  SETTABLEKS R44 R43 K195 ["Color"]
  SETTABLEKS R43 R42 K206 ["BackgroundStyle"]
  SETTABLE R42 R40 R41
  SETTABLEKS R40 R39 K237 ["EventFilter"]
  NEWTABLE R40 4 0
  SETTABLEKS R10 R40 K205 ["Background"]
  DUPTABLE R41 K246 [{"Color", "BorderColor", "BorderSize"}]
  GETTABLEKS R42 R7 K164 ["DialogMainButton"]
  SETTABLEKS R42 R41 K195 ["Color"]
  GETTABLEKS R42 R7 K164 ["DialogMainButton"]
  SETTABLEKS R42 R41 K244 ["BorderColor"]
  LOADN R42 1
  SETTABLEKS R42 R41 K245 ["BorderSize"]
  SETTABLEKS R41 R40 K206 ["BackgroundStyle"]
  GETTABLEKS R41 R4 K247 ["Hover"]
  DUPTABLE R42 K248 [{"BackgroundStyle"}]
  DUPTABLE R43 K246 [{"Color", "BorderColor", "BorderSize"}]
  GETTABLEKS R44 R7 K250 ["DialogMainButtonHover"]
  SETTABLEKS R44 R43 K195 ["Color"]
  GETTABLEKS R44 R7 K250 ["DialogMainButtonHover"]
  SETTABLEKS R44 R43 K244 ["BorderColor"]
  LOADN R44 1
  SETTABLEKS R44 R43 K245 ["BorderSize"]
  SETTABLEKS R43 R42 K206 ["BackgroundStyle"]
  SETTABLE R42 R40 R41
  SETTABLEKS R40 R39 K238 ["ActiveControl"]
  DUPTABLE R40 K215 [{"Background"}]
  SETTABLEKS R11 R40 K205 ["Background"]
  SETTABLEKS R40 R39 K239 ["IKDefault"]
  DUPTABLE R40 K215 [{"Background"}]
  SETTABLEKS R11 R40 K205 ["Background"]
  SETTABLEKS R40 R39 K240 ["IKActive"]
  DUPTABLE R40 K215 [{"Background"}]
  SETTABLEKS R11 R40 K205 ["Background"]
  SETTABLEKS R40 R39 K241 ["FaceControlsEditorActive"]
  DUPTABLE R40 K215 [{"Background"}]
  SETTABLEKS R11 R40 K205 ["Background"]
  SETTABLEKS R40 R39 K242 ["FaceControlsEditorDefault"]
  MOVE R40 R16
  LOADK R41 K203 ["Button"]
  CALL R40 1 1
  MOVE R41 R19
  MOVE R42 R40
  NEWTABLE R43 2 0
  MOVE R44 R19
  GETTABLEKS R45 R40 K251 ["&Round"]
  DUPTABLE R46 K215 [{"Background"}]
  SETTABLEKS R11 R46 K205 ["Background"]
  CALL R44 2 1
  SETTABLEKS R44 R43 K252 ["&ACEHeaderButtonDefault"]
  MOVE R44 R19
  GETTABLEKS R45 R40 K253 ["&RoundPrimary"]
  NEWTABLE R46 0 0
  CALL R44 2 1
  SETTABLEKS R44 R43 K254 ["&ACEHeaderButtonActive"]
  CALL R41 2 1
  DUPTABLE R42 K258 [{"imageColor", "borderColor", "selectionBorderColor", "mainImage", "borderImage", "selectionBorderImage", "textSize"}]
  GETTABLEKS R43 R7 K45 ["EventMarkerImageColor"]
  SETTABLEKS R43 R42 K171 ["imageColor"]
  GETTABLEKS R43 R7 K46 ["EventMarkerBorderColor"]
  SETTABLEKS R43 R42 K102 ["borderColor"]
  GETTABLEKS R43 R7 K164 ["DialogMainButton"]
  SETTABLEKS R43 R42 K255 ["selectionBorderColor"]
  LOADK R43 K3 ["FindFirstAncestor"]
  SETTABLEKS R43 R42 K256 ["mainImage"]
  LOADK R43 K4 ["require"]
  SETTABLEKS R43 R42 K232 ["borderImage"]
  LOADK R43 K5 [require]
  SETTABLEKS R43 R42 K257 ["selectionBorderImage"]
  LOADN R43 15
  SETTABLEKS R43 R42 K124 ["textSize"]
  DUPTABLE R43 K268 [{"controlImage", "arrowImage", "imageColor", "controlColor", "hoverColor", "pressedColor", "backgroundColor", "borderColor", "borderSize"}]
  LOADK R44 K13 ["StudioTheme"]
  SETTABLEKS R44 R43 K262 ["controlImage"]
  LOADK R44 K14 ["StyleKey"]
  SETTABLEKS R44 R43 K263 ["arrowImage"]
  GETTABLEKS R44 R7 K115 ["MainText"]
  SETTABLEKS R44 R43 K171 ["imageColor"]
  GETTABLEKS R44 R7 K47 ["ScrollBarControl"]
  SETTABLEKS R44 R43 K264 ["controlColor"]
  GETTABLEKS R44 R7 K49 ["ScrollBarHover"]
  SETTABLEKS R44 R43 K265 ["hoverColor"]
  GETTABLEKS R44 R7 K50 ["ScrollBarPressed"]
  SETTABLEKS R44 R43 K266 ["pressedColor"]
  GETTABLEKS R44 R7 K271 ["ScrollBarBackground"]
  SETTABLEKS R44 R43 K128 ["backgroundColor"]
  GETTABLEKS R44 R7 K119 ["InputFieldBorder"]
  SETTABLEKS R44 R43 K102 ["borderColor"]
  LOADN R44 1
  SETTABLEKS R44 R43 K267 ["borderSize"]
  DUPTABLE R44 K277 [{"lineColor", "textColor", "dimmedColor", "barColor", "backgroundColor", "lowerTransparency", "lowerBrightTransparency", "textSize"}]
  GETTABLEKS R45 R7 K278 ["DimmedText"]
  SETTABLEKS R45 R44 K272 ["lineColor"]
  GETTABLEKS R45 R7 K278 ["DimmedText"]
  SETTABLEKS R45 R44 K122 ["textColor"]
  GETTABLEKS R45 R7 K42 ["TimelineDimmedColor"]
  SETTABLEKS R45 R44 K273 ["dimmedColor"]
  GETTABLEKS R45 R7 K148 ["MainBackground"]
  SETTABLEKS R45 R44 K274 ["barColor"]
  GETTABLEKS R45 R7 K43 ["TimelineBackgroundColor"]
  SETTABLEKS R45 R44 K128 ["backgroundColor"]
  LOADK R45 K23 ["getRawComponentStyle"]
  SETTABLEKS R45 R44 K275 ["lowerTransparency"]
  LOADK R45 K24 ["ComponentSymbols"]
  SETTABLEKS R45 R44 K276 ["lowerBrightTransparency"]
  LOADN R45 15
  SETTABLEKS R45 R44 K124 ["textSize"]
  DUPTABLE R45 K288 [{"textSize", "subTextSize", "headerFont", "textColor", "subTextColor", "errorTextColor", "deleteImage", "addImage", "errorImage"}]
  LOADN R46 16
  SETTABLEKS R46 R45 K124 ["textSize"]
  LOADN R46 15
  SETTABLEKS R46 R45 K281 ["subTextSize"]
  GETIMPORT R46 K290 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R46 R45 K282 ["headerFont"]
  GETTABLEKS R46 R7 K115 ["MainText"]
  SETTABLEKS R46 R45 K122 ["textColor"]
  GETTABLEKS R46 R7 K278 ["DimmedText"]
  SETTABLEKS R46 R45 K283 ["subTextColor"]
  GETTABLEKS R46 R7 K169 ["ErrorText"]
  SETTABLEKS R46 R45 K284 ["errorTextColor"]
  LOADK R46 K35 ["TrackButtonColor"]
  SETTABLEKS R46 R45 K285 ["deleteImage"]
  LOADK R46 K161 ["rbxasset://textures/AnimationEditor/icon_add.png"]
  SETTABLEKS R46 R45 K286 ["addImage"]
  LOADK R46 K36 ["TrackHoveredButtonColor"]
  SETTABLEKS R46 R45 K287 ["errorImage"]
  DUPTABLE R46 K296 [{"textSize", "textColor", "shadowTransparency", "shadowColor", "shadowSize"}]
  LOADN R47 16
  SETTABLEKS R47 R46 K124 ["textSize"]
  GETTABLEKS R47 R7 K115 ["MainText"]
  SETTABLEKS R47 R46 K122 ["textColor"]
  LOADK R47 K41 ["TrackPlusIconColor"]
  SETTABLEKS R47 R46 K293 ["shadowTransparency"]
  GETIMPORT R47 K298 [Color3.new]
  CALL R47 0 1
  SETTABLEKS R47 R46 K294 ["shadowColor"]
  LOADN R47 35
  SETTABLEKS R47 R46 K295 ["shadowSize"]
  DUPTABLE R47 K300 [{"textSize", "textColor", "darkTextColor"}]
  LOADN R48 16
  SETTABLEKS R48 R47 K124 ["textSize"]
  GETTABLEKS R48 R7 K115 ["MainText"]
  SETTABLEKS R48 R47 K122 ["textColor"]
  GETTABLEKS R48 R7 K51 ["StartScreenDarkTextColor"]
  SETTABLEKS R48 R47 K299 ["darkTextColor"]
  DUPTABLE R48 K301 [{"lineColor"}]
  GETIMPORT R49 K303 [BrickColor.new]
  GETIMPORT R50 K298 [Color3.new]
  LOADN R51 1
  LOADN R52 1
  LOADN R53 1
  CALL R50 3 -1
  CALL R49 -1 1
  SETTABLEKS R49 R48 K272 ["lineColor"]
  DUPTABLE R49 K314 [{"textColor", "primaryTextColor", "textSize", "lineColor", "ikLineColor", "transparency", "leafNodeImage", "expandImage", "collapseImage", "pinImage", "iconColor", "iconHighlightColor", "selected", "headerColor", "headerBorder", "pinHover"}]
  GETTABLEKS R50 R7 K115 ["MainText"]
  SETTABLEKS R50 R49 K122 ["textColor"]
  GETTABLEKS R50 R7 K151 ["MainTextSelected"]
  SETTABLEKS R50 R49 K133 ["primaryTextColor"]
  LOADN R50 15
  SETTABLEKS R50 R49 K124 ["textSize"]
  GETTABLEKS R50 R7 K278 ["DimmedText"]
  SETTABLEKS R50 R49 K272 ["lineColor"]
  GETIMPORT R50 K31 [Color3.fromRGB]
  LOADN R51 182
  LOADN R52 80
  LOADN R53 203
  CALL R50 3 1
  SETTABLEKS R50 R49 K304 ["ikLineColor"]
  LOADK R50 K59 ["KeyframeErrorBorderColorSelected"]
  SETTABLEKS R50 R49 K305 ["transparency"]
  LOADK R50 K60 ["Red"]
  SETTABLEKS R50 R49 K306 ["leafNodeImage"]
  LOADK R50 K61 ["KeyframePrimaryErrorBackgroundColor"]
  SETTABLEKS R50 R49 K307 ["expandImage"]
  LOADK R50 K62 ["KeyframePrimaryErrorBorderColor"]
  SETTABLEKS R50 R49 K308 ["collapseImage"]
  LOADK R50 K63 ["KeyframePrimaryErrorBackgroundColorSelected"]
  SETTABLEKS R50 R49 K309 ["pinImage"]
  GETTABLEKS R50 R7 K278 ["DimmedText"]
  SETTABLEKS R50 R49 K99 ["iconColor"]
  GETTABLEKS R50 R7 K150 ["BrightText"]
  SETTABLEKS R50 R49 K100 ["iconHighlightColor"]
  GETTABLEKS R50 R7 K149 ["ItemSelected"]
  SETTABLEKS R50 R49 K310 ["selected"]
  GETTABLEKS R50 R7 K52 ["IKHeaderColor"]
  SETTABLEKS R50 R49 K311 ["headerColor"]
  GETTABLEKS R50 R7 K53 ["IKHeaderBorder"]
  SETTABLEKS R50 R49 K312 ["headerBorder"]
  GETTABLEKS R50 R7 K250 ["DialogMainButtonHover"]
  SETTABLEKS R50 R49 K313 ["pinHover"]
  DUPTABLE R50 K328 [{"Default", "Primary", "Error", "PrimaryError", "Bounce", "Constant", "Cubic", "Elastic"}]
  DUPTABLE R51 K329 [{"backgroundColor", "borderColor", "selected"}]
  GETTABLEKS R52 R7 K28 ["DialogButtonTextDisabled"]
  SETTABLEKS R52 R51 K128 ["backgroundColor"]
  GETTABLEKS R52 R7 K278 ["DimmedText"]
  SETTABLEKS R52 R51 K102 ["borderColor"]
  DUPTABLE R52 K330 [{"backgroundColor", "borderColor"}]
  GETTABLEKS R53 R7 K28 ["DialogButtonTextDisabled"]
  SETTABLEKS R53 R52 K128 ["backgroundColor"]
  GETTABLEKS R53 R7 K164 ["DialogMainButton"]
  SETTABLEKS R53 R52 K102 ["borderColor"]
  SETTABLEKS R52 R51 K310 ["selected"]
  SETTABLEKS R51 R50 K320 ["Default"]
  DUPTABLE R51 K329 [{"backgroundColor", "borderColor", "selected"}]
  GETTABLEKS R52 R7 K54 ["KeyframePrimaryBackgroundColor"]
  SETTABLEKS R52 R51 K128 ["backgroundColor"]
  GETTABLEKS R52 R7 K118 ["Border"]
  SETTABLEKS R52 R51 K102 ["borderColor"]
  DUPTABLE R52 K330 [{"backgroundColor", "borderColor"}]
  GETTABLEKS R53 R7 K55 ["KeyframePrimaryBackgroundColorSelected"]
  SETTABLEKS R53 R52 K128 ["backgroundColor"]
  GETTABLEKS R53 R8 K37 ["Blue"]
  SETTABLEKS R53 R52 K102 ["borderColor"]
  SETTABLEKS R52 R51 K310 ["selected"]
  SETTABLEKS R51 R50 K321 ["Primary"]
  DUPTABLE R51 K329 [{"backgroundColor", "borderColor", "selected"}]
  GETTABLEKS R52 R7 K56 ["KeyframeErrorBackgroundColor"]
  SETTABLEKS R52 R51 K128 ["backgroundColor"]
  GETTABLEKS R52 R7 K57 ["KeyframeErrorBorderColor"]
  SETTABLEKS R52 R51 K102 ["borderColor"]
  DUPTABLE R52 K330 [{"backgroundColor", "borderColor"}]
  GETTABLEKS R53 R7 K58 ["KeyframeErrorBackgroundColorSelected"]
  SETTABLEKS R53 R52 K128 ["backgroundColor"]
  GETTABLEKS R53 R7 K59 ["KeyframeErrorBorderColorSelected"]
  SETTABLEKS R53 R52 K102 ["borderColor"]
  SETTABLEKS R52 R51 K310 ["selected"]
  SETTABLEKS R51 R50 K322 ["Error"]
  DUPTABLE R51 K329 [{"backgroundColor", "borderColor", "selected"}]
  GETTABLEKS R52 R7 K61 ["KeyframePrimaryErrorBackgroundColor"]
  SETTABLEKS R52 R51 K128 ["backgroundColor"]
  GETTABLEKS R52 R7 K62 ["KeyframePrimaryErrorBorderColor"]
  SETTABLEKS R52 R51 K102 ["borderColor"]
  DUPTABLE R52 K330 [{"backgroundColor", "borderColor"}]
  GETTABLEKS R53 R7 K63 ["KeyframePrimaryErrorBackgroundColorSelected"]
  SETTABLEKS R53 R52 K128 ["backgroundColor"]
  GETTABLEKS R53 R7 K64 ["KeyframePrimaryErrorBorderColorSelected"]
  SETTABLEKS R53 R52 K102 ["borderColor"]
  SETTABLEKS R52 R51 K310 ["selected"]
  SETTABLEKS R51 R50 K323 ["PrimaryError"]
  DUPTABLE R51 K329 [{"backgroundColor", "borderColor", "selected"}]
  GETIMPORT R52 K31 [Color3.fromRGB]
  LOADN R53 155
  LOADN R54 198
  LOADN R55 204
  CALL R52 3 1
  SETTABLEKS R52 R51 K128 ["backgroundColor"]
  GETIMPORT R52 K31 [Color3.fromRGB]
  LOADN R53 56
  LOADN R54 56
  LOADN R55 56
  CALL R52 3 1
  SETTABLEKS R52 R51 K102 ["borderColor"]
  DUPTABLE R52 K330 [{"backgroundColor", "borderColor"}]
  GETIMPORT R53 K31 [Color3.fromRGB]
  LOADN R54 155
  LOADN R55 198
  LOADN R56 204
  CALL R53 3 1
  SETTABLEKS R53 R52 K128 ["backgroundColor"]
  GETTABLEKS R53 R7 K164 ["DialogMainButton"]
  SETTABLEKS R53 R52 K102 ["borderColor"]
  SETTABLEKS R52 R51 K310 ["selected"]
  SETTABLEKS R51 R50 K324 ["Bounce"]
  DUPTABLE R51 K329 [{"backgroundColor", "borderColor", "selected"}]
  GETIMPORT R52 K31 [Color3.fromRGB]
  LOADN R53 156
  LOADN R54 147
  LOADN R55 226
  CALL R52 3 1
  SETTABLEKS R52 R51 K128 ["backgroundColor"]
  GETIMPORT R52 K31 [Color3.fromRGB]
  LOADN R53 56
  LOADN R54 56
  LOADN R55 56
  CALL R52 3 1
  SETTABLEKS R52 R51 K102 ["borderColor"]
  DUPTABLE R52 K330 [{"backgroundColor", "borderColor"}]
  GETIMPORT R53 K31 [Color3.fromRGB]
  LOADN R54 156
  LOADN R55 147
  LOADN R56 226
  CALL R53 3 1
  SETTABLEKS R53 R52 K128 ["backgroundColor"]
  GETTABLEKS R53 R7 K164 ["DialogMainButton"]
  SETTABLEKS R53 R52 K102 ["borderColor"]
  SETTABLEKS R52 R51 K310 ["selected"]
  SETTABLEKS R51 R50 K325 ["Constant"]
  DUPTABLE R51 K329 [{"backgroundColor", "borderColor", "selected"}]
  GETIMPORT R52 K31 [Color3.fromRGB]
  LOADN R53 254
  LOADN R54 189
  LOADN R55 81
  CALL R52 3 1
  SETTABLEKS R52 R51 K128 ["backgroundColor"]
  GETIMPORT R52 K31 [Color3.fromRGB]
  LOADN R53 56
  LOADN R54 56
  LOADN R55 56
  CALL R52 3 1
  SETTABLEKS R52 R51 K102 ["borderColor"]
  DUPTABLE R52 K330 [{"backgroundColor", "borderColor"}]
  GETIMPORT R53 K31 [Color3.fromRGB]
  LOADN R54 254
  LOADN R55 189
  LOADN R56 81
  CALL R53 3 1
  SETTABLEKS R53 R52 K128 ["backgroundColor"]
  GETTABLEKS R53 R7 K164 ["DialogMainButton"]
  SETTABLEKS R53 R52 K102 ["borderColor"]
  SETTABLEKS R52 R51 K310 ["selected"]
  SETTABLEKS R51 R50 K326 ["Cubic"]
  DUPTABLE R51 K329 [{"backgroundColor", "borderColor", "selected"}]
  GETIMPORT R52 K31 [Color3.fromRGB]
  LOADN R53 137
  LOADN R54 187
  LOADN R55 77
  CALL R52 3 1
  SETTABLEKS R52 R51 K128 ["backgroundColor"]
  GETIMPORT R52 K31 [Color3.fromRGB]
  LOADN R53 56
  LOADN R54 56
  LOADN R55 56
  CALL R52 3 1
  SETTABLEKS R52 R51 K102 ["borderColor"]
  DUPTABLE R52 K330 [{"backgroundColor", "borderColor"}]
  GETIMPORT R53 K31 [Color3.fromRGB]
  LOADN R54 137
  LOADN R55 187
  LOADN R56 77
  CALL R53 3 1
  SETTABLEKS R53 R52 K128 ["backgroundColor"]
  GETTABLEKS R53 R7 K164 ["DialogMainButton"]
  SETTABLEKS R53 R52 K102 ["borderColor"]
  SETTABLEKS R52 R51 K310 ["selected"]
  SETTABLEKS R51 R50 K327 ["Elastic"]
  DUPTABLE R51 K344 [{"default", "positionX", "positionY", "positionZ", "rotationX", "rotationY", "rotationZ", "selected", "xAxis", "curveEditorButton", "dopesheetButton", "tangentControlColor", "tangentAutoButton", "tangentDefinedButton"}]
  GETTABLEKS R52 R7 K115 ["MainText"]
  SETTABLEKS R52 R51 K331 ["default"]
  GETTABLEKS R52 R7 K65 ["CurvePositionX"]
  SETTABLEKS R52 R51 K332 ["positionX"]
  GETTABLEKS R52 R7 K66 ["CurvePositionY"]
  SETTABLEKS R52 R51 K333 ["positionY"]
  GETTABLEKS R52 R7 K67 ["CurvePositionZ"]
  SETTABLEKS R52 R51 K334 ["positionZ"]
  GETTABLEKS R52 R7 K68 ["CurveRotationX"]
  SETTABLEKS R52 R51 K335 ["rotationX"]
  GETTABLEKS R52 R7 K69 ["CurveRotationY"]
  SETTABLEKS R52 R51 K336 ["rotationY"]
  GETTABLEKS R52 R7 K70 ["CurveRotationZ"]
  SETTABLEKS R52 R51 K337 ["rotationZ"]
  GETTABLEKS R52 R7 K164 ["DialogMainButton"]
  SETTABLEKS R52 R51 K310 ["selected"]
  GETTABLEKS R52 R7 K150 ["BrightText"]
  SETTABLEKS R52 R51 K338 ["xAxis"]
  GETTABLEKS R52 R7 K71 ["CurveEditorButton"]
  SETTABLEKS R52 R51 K339 ["curveEditorButton"]
  GETTABLEKS R52 R7 K73 ["DopeSheetButton"]
  SETTABLEKS R52 R51 K340 ["dopesheetButton"]
  GETTABLEKS R52 R7 K150 ["BrightText"]
  SETTABLEKS R52 R51 K341 ["tangentControlColor"]
  LOADK R52 K89 ["autokeyOff"]
  SETTABLEKS R52 R51 K342 ["tangentAutoButton"]
  LOADK R52 K90 ["skipBackward"]
  SETTABLEKS R52 R51 K343 ["tangentDefinedButton"]
  DUPTABLE R52 K351 [{"faceCaptureDefaultButtonIconColor", "stopRecordingButtonImage", "errorIcon", "warningIcon"}]
  GETTABLEKS R53 R7 K77 ["FaceCaptureDefaultButtonIconColor"]
  SETTABLEKS R53 R52 K347 ["faceCaptureDefaultButtonIconColor"]
  GETTABLEKS R53 R7 K75 ["StopRecordingButtonImage"]
  SETTABLEKS R53 R52 K348 ["stopRecordingButtonImage"]
  LOADK R53 K36 ["TrackHoveredButtonColor"]
  SETTABLEKS R53 R52 K349 ["errorIcon"]
  LOADK R53 K96 ["goToFirstFrame"]
  SETTABLEKS R53 R52 K350 ["warningIcon"]
  DUPTABLE R53 K353 [{"backgroundColor", "image"}]
  GETTABLEKS R54 R7 K164 ["DialogMainButton"]
  SETTABLEKS R54 R53 K128 ["backgroundColor"]
  LOADK R54 K98 ["selectClipDropdownIcon"]
  SETTABLEKS R54 R53 K170 ["image"]
  DUPTABLE R54 K355 [{"backgroundColor"}]
  GETTABLEKS R55 R8 K37 ["Blue"]
  SETTABLEKS R55 R54 K128 ["backgroundColor"]
  DUPTABLE R55 K357 [{"filterButton"}]
  DUPTABLE R56 K359 [{"image", "size"}]
  LOADK R57 K104 [{"autokeyOn", "autokeyOff", "skipBackward", "skipForward", "play", "pause", "loop", "reverse", "goToFirstFrame", "goToLastFrame", "selectClipDropdownIcon", "iconColor", "iconHighlightColor", "timeInputBackground", "borderColor", "inputBorderColor"}]
  SETTABLEKS R57 R56 K170 ["image"]
  GETIMPORT R57 K362 [UDim2.fromOffset]
  LOADN R58 16
  LOADN R59 16
  CALL R57 2 1
  SETTABLEKS R57 R56 K358 ["size"]
  SETTABLEKS R56 R55 K356 ["filterButton"]
  DUPTABLE R56 K368 [{"font", "textColor", "textSize", "buttonHeight", "radioButtonBackground", "radioButtonSelected", "contentPadding", "buttonPadding"}]
  GETIMPORT R57 K370 [Enum.Font.SourceSans]
  SETTABLEKS R57 R56 K178 ["font"]
  GETTABLEKS R57 R7 K115 ["MainText"]
  SETTABLEKS R57 R56 K122 ["textColor"]
  LOADN R57 15
  SETTABLEKS R57 R56 K124 ["textSize"]
  LOADN R57 20
  SETTABLEKS R57 R56 K363 ["buttonHeight"]
  LOADK R57 K115 ["MainText"]
  SETTABLEKS R57 R56 K364 ["radioButtonBackground"]
  LOADK R57 K116 ["DialogMainButtonText"]
  SETTABLEKS R57 R56 K365 ["radioButtonSelected"]
  LOADN R57 16
  SETTABLEKS R57 R56 K366 ["contentPadding"]
  LOADN R57 6
  SETTABLEKS R57 R56 K367 ["buttonPadding"]
  NEWTABLE R57 64 0
  GETIMPORT R58 K370 [Enum.Font.SourceSans]
  SETTABLEKS R58 R57 K178 ["font"]
  GETTABLEKS R58 R7 K148 ["MainBackground"]
  SETTABLEKS R58 R57 K128 ["backgroundColor"]
  GETTABLEKS R58 R7 K118 ["Border"]
  SETTABLEKS R58 R57 K102 ["borderColor"]
  SETTABLEKS R22 R57 K373 ["playbackTheme"]
  SETTABLEKS R23 R57 K374 ["dropdownTheme"]
  SETTABLEKS R24 R57 K375 ["trackTheme"]
  SETTABLEKS R55 R57 K376 ["eventTheme"]
  SETTABLEKS R28 R57 K377 ["keyframeTheme"]
  SETTABLEKS R42 R57 K378 ["eventMarker"]
  GETTABLEKS R58 R7 K164 ["DialogMainButton"]
  SETTABLEKS R58 R57 K379 ["selectionBox"]
  SETTABLEKS R43 R57 K380 ["zoomBarTheme"]
  SETTABLEKS R43 R57 K381 ["scrollBarTheme"]
  SETTABLEKS R44 R57 K382 ["timelineTheme"]
  SETTABLEKS R25 R57 K383 ["scaleControlsTheme"]
  SETTABLEKS R26 R57 K384 ["textBox"]
  SETTABLEKS R27 R57 K385 ["settingsButtonTheme"]
  SETTABLEKS R45 R57 K386 ["dialogTheme"]
  SETTABLEKS R46 R57 K387 ["toastTheme"]
  SETTABLEKS R47 R57 K388 ["startScreenTheme"]
  SETTABLEKS R48 R57 K389 ["gridTheme"]
  SETTABLEKS R49 R57 K390 ["ikTheme"]
  SETTABLEKS R29 R57 K391 ["checkBox"]
  SETTABLEKS R34 R57 K392 ["faceSliderTheme"]
  SETTABLEKS R35 R57 K393 ["faceSliderMaxValueTheme"]
  SETTABLEKS R36 R57 K394 ["faceDragBoxTheme"]
  SETTABLEKS R37 R57 K395 ["faceDragBoxMaxValueTheme"]
  SETTABLEKS R38 R57 K396 ["roundFrame"]
  SETTABLEKS R39 R57 K397 ["button"]
  SETTABLEKS R50 R57 K398 ["keyframe"]
  SETTABLEKS R53 R57 K399 ["scrubberTheme"]
  SETTABLEKS R52 R57 K400 ["faceCaptureTheme"]
  SETTABLEKS R51 R57 K401 ["curveTheme"]
  SETTABLEKS R54 R57 K402 ["progressBarTheme"]
  GETTABLEKS R58 R17 K203 ["Button"]
  SETTABLE R41 R57 R58
  SETTABLEKS R56 R57 K403 ["radioButton"]
  DUPCLOSURE R58 K404 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R21
  CAPTURE VAL R20
  CAPTURE VAL R57
  RETURN R58 1
