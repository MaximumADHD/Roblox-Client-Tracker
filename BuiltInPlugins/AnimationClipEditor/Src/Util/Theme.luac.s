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
  GETTABLEKS R12 R9 K19 ["Image"]
  GETTABLEKS R14 R5 K12 ["Themes"]
  GETTABLEKS R13 R14 K20 ["LightTheme"]
  GETTABLEKS R15 R5 K12 ["Themes"]
  GETTABLEKS R14 R15 K21 ["DarkTheme"]
  GETTABLEKS R15 R5 K22 ["getRawComponentStyle"]
  GETTABLEKS R16 R5 K23 ["ComponentSymbols"]
  GETTABLEKS R17 R2 K24 ["Dash"]
  GETTABLEKS R18 R17 K25 ["join"]
  GETTABLEKS R20 R1 K26 ["Dictionary"]
  GETTABLEKS R19 R20 K25 ["join"]
  MOVE R20 R13
  NEWTABLE R21 64 0
  GETTABLEKS R22 R7 K27 ["DialogButtonTextDisabled"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 184
  LOADN R25 184
  LOADN R26 184
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K31 ["TrackShadedBackgroundColor"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 243
  LOADN R25 243
  LOADN R26 243
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K32 ["TrackTitleBackgroundColor"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 227
  LOADN R25 227
  LOADN R26 227
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K33 ["TrackPrimaryBackgroundColor"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 243
  LOADN R25 243
  LOADN R26 243
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K34 ["TrackButtonColor"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 136
  LOADN R25 136
  LOADN R26 136
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K35 ["TrackHoveredButtonColor"]
  GETTABLEKS R23 R8 K36 ["Blue"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K37 ["TrackAddButtonColor"]
  GETTABLEKS R23 R8 K38 ["Gray_Light"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K39 ["TrackHoveredAddButtonColor"]
  GETTABLEKS R23 R8 K36 ["Blue"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K40 ["TrackPlusIconColor"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 82
  LOADN R25 82
  LOADN R26 82
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K41 ["TimelineDimmedColor"]
  GETTABLEKS R23 R8 K38 ["Gray_Light"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K42 ["TimelineBackgroundColor"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 243
  LOADN R25 243
  LOADN R26 243
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K43 ["KeyframePrimaryClusterColor"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 136
  LOADN R25 136
  LOADN R26 136
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K44 ["EventMarkerImageColor"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 184
  LOADN R25 184
  LOADN R26 184
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K45 ["EventMarkerBorderColor"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 136
  LOADN R25 136
  LOADN R26 136
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K46 ["ScrollBarControl"]
  GETTABLEKS R23 R8 K47 ["White"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K48 ["ScrollBarHover"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 231
  LOADN R25 240
  LOADN R26 250
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K49 ["ScrollBarPressed"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 224
  LOADN R25 224
  LOADN R26 224
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K50 ["StartScreenDarkTextColor"]
  GETTABLEKS R23 R8 K47 ["White"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K51 ["IKHeaderColor"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 243
  LOADN R25 243
  LOADN R26 243
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K52 ["IKHeaderBorder"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 243
  LOADN R25 243
  LOADN R26 243
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K53 ["KeyframePrimaryBackgroundColor"]
  GETTABLEKS R23 R8 K47 ["White"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K54 ["KeyframePrimaryBackgroundColorSelected"]
  GETTABLEKS R23 R8 K47 ["White"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K55 ["KeyframeErrorBackgroundColor"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 255
  LOADN R25 161
  LOADN R26 161
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K56 ["KeyframeErrorBorderColor"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 168
  LOADN R25 132
  LOADN R26 132
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K57 ["KeyframeErrorBackgroundColorSelected"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 255
  LOADN R25 161
  LOADN R26 161
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K58 ["KeyframeErrorBorderColorSelected"]
  GETTABLEKS R23 R8 K59 ["Red"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K60 ["KeyframePrimaryErrorBackgroundColor"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 255
  LOADN R25 161
  LOADN R26 161
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K61 ["KeyframePrimaryErrorBorderColor"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 168
  LOADN R25 132
  LOADN R26 132
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K62 ["KeyframePrimaryErrorBackgroundColorSelected"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 255
  LOADN R25 161
  LOADN R26 161
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K63 ["KeyframePrimaryErrorBorderColorSelected"]
  GETTABLEKS R23 R8 K59 ["Red"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K64 ["CurvePositionX"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 255
  LOADN R25 0
  LOADN R26 0
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K65 ["CurvePositionY"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 3
  LOADN R25 201
  LOADN R26 3
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K66 ["CurvePositionZ"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 0
  LOADN R25 0
  LOADN R26 255
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K67 ["CurveRotationX"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 47
  LOADN R25 128
  LOADN R26 123
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K68 ["CurveRotationY"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 255
  LOADN R25 0
  LOADN R26 255
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K69 ["CurveRotationZ"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 255
  LOADN R25 165
  LOADN R26 0
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K70 ["CurveEditorButton"]
  LOADK R23 K71 ["rbxasset://textures/AnimationEditor/Button_Curve_Lightmode.png"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K72 ["DopeSheetButton"]
  LOADK R23 K73 ["rbxasset://textures/AnimationEditor/Button_Dopesheet_Lightmode.png"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K74 ["StopRecordingButtonImage"]
  LOADK R23 K75 ["rbxasset://textures/AnimationEditor/FaceCaptureUI/StopRecordButton_lightTheme.png"]
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K76 ["FaceCaptureDefaultButtonIconColor"]
  GETIMPORT R23 K30 [Color3.fromRGB]
  LOADN R24 82
  LOADN R25 82
  LOADN R26 82
  CALL R23 3 1
  SETTABLE R23 R21 R22
  GETTABLEKS R22 R7 K77 ["FaceSliderKnob"]
  GETTABLEKS R23 R8 K36 ["Blue"]
  SETTABLE R23 R21 R22
  CALL R19 2 1
  GETTABLEKS R21 R1 K26 ["Dictionary"]
  GETTABLEKS R20 R21 K25 ["join"]
  MOVE R21 R14
  NEWTABLE R22 64 0
  GETTABLEKS R23 R7 K27 ["DialogButtonTextDisabled"]
  GETIMPORT R24 K30 [Color3.fromRGB]
  LOADN R25 92
  LOADN R26 92
  LOADN R27 92
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K31 ["TrackShadedBackgroundColor"]
  GETIMPORT R24 K30 [Color3.fromRGB]
  LOADN R25 54
  LOADN R26 54
  LOADN R27 54
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K32 ["TrackTitleBackgroundColor"]
  GETIMPORT R24 K30 [Color3.fromRGB]
  LOADN R25 54
  LOADN R26 54
  LOADN R27 54
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K33 ["TrackPrimaryBackgroundColor"]
  GETIMPORT R24 K30 [Color3.fromRGB]
  LOADN R25 37
  LOADN R26 37
  LOADN R27 37
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K34 ["TrackButtonColor"]
  GETTABLEKS R24 R8 K38 ["Gray_Light"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K35 ["TrackHoveredButtonColor"]
  GETTABLEKS R24 R8 K47 ["White"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K37 ["TrackAddButtonColor"]
  GETTABLEKS R24 R8 K78 ["Gray"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K39 ["TrackHoveredAddButtonColor"]
  GETTABLEKS R24 R8 K79 ["lighter"]
  GETTABLEKS R25 R8 K78 ["Gray"]
  LOADK R26 K80 [0.26]
  CALL R24 2 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K40 ["TrackPlusIconColor"]
  GETTABLEKS R24 R8 K38 ["Gray_Light"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K41 ["TimelineDimmedColor"]
  GETIMPORT R24 K30 [Color3.fromRGB]
  LOADN R25 102
  LOADN R26 102
  LOADN R27 102
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K42 ["TimelineBackgroundColor"]
  GETIMPORT R24 K30 [Color3.fromRGB]
  LOADN R25 56
  LOADN R26 56
  LOADN R27 56
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K43 ["KeyframePrimaryClusterColor"]
  GETIMPORT R24 K30 [Color3.fromRGB]
  LOADN R25 170
  LOADN R26 170
  LOADN R27 170
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K44 ["EventMarkerImageColor"]
  GETTABLEKS R24 R8 K38 ["Gray_Light"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K45 ["EventMarkerBorderColor"]
  GETTABLEKS R24 R8 K47 ["White"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K46 ["ScrollBarControl"]
  GETIMPORT R24 K30 [Color3.fromRGB]
  LOADN R25 64
  LOADN R26 64
  LOADN R27 64
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K48 ["ScrollBarHover"]
  GETIMPORT R24 K30 [Color3.fromRGB]
  LOADN R25 80
  LOADN R26 80
  LOADN R27 80
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K49 ["ScrollBarPressed"]
  GETIMPORT R24 K30 [Color3.fromRGB]
  LOADN R25 80
  LOADN R26 80
  LOADN R27 80
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K50 ["StartScreenDarkTextColor"]
  GETTABLEKS R24 R8 K38 ["Gray_Light"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K51 ["IKHeaderColor"]
  GETTABLEKS R24 R8 K81 ["Slate"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K52 ["IKHeaderBorder"]
  GETIMPORT R24 K30 [Color3.fromRGB]
  LOADN R25 26
  LOADN R26 26
  LOADN R27 26
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K53 ["KeyframePrimaryBackgroundColor"]
  GETTABLEKS R24 R8 K38 ["Gray_Light"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K54 ["KeyframePrimaryBackgroundColorSelected"]
  GETTABLEKS R24 R8 K38 ["Gray_Light"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K55 ["KeyframeErrorBackgroundColor"]
  GETTABLEKS R24 R8 K79 ["lighter"]
  GETTABLEKS R25 R8 K82 ["Black"]
  LOADK R26 K83 [0.4]
  CALL R24 2 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K56 ["KeyframeErrorBorderColor"]
  GETIMPORT R24 K30 [Color3.fromRGB]
  LOADN R25 255
  LOADN R26 68
  LOADN R27 68
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K57 ["KeyframeErrorBackgroundColorSelected"]
  GETIMPORT R24 K30 [Color3.fromRGB]
  LOADN R25 170
  LOADN R26 170
  LOADN R27 170
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K58 ["KeyframeErrorBorderColorSelected"]
  GETIMPORT R24 K30 [Color3.fromRGB]
  LOADN R25 255
  LOADN R26 68
  LOADN R27 68
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K60 ["KeyframePrimaryErrorBackgroundColor"]
  GETTABLEKS R24 R8 K38 ["Gray_Light"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K61 ["KeyframePrimaryErrorBorderColor"]
  GETIMPORT R24 K30 [Color3.fromRGB]
  LOADN R25 255
  LOADN R26 68
  LOADN R27 68
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K62 ["KeyframePrimaryErrorBackgroundColorSelected"]
  GETTABLEKS R24 R8 K38 ["Gray_Light"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K63 ["KeyframePrimaryErrorBorderColorSelected"]
  GETIMPORT R24 K30 [Color3.fromRGB]
  LOADN R25 255
  LOADN R26 68
  LOADN R27 68
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K64 ["CurvePositionX"]
  GETIMPORT R24 K30 [Color3.fromRGB]
  LOADN R25 255
  LOADN R26 0
  LOADN R27 0
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K65 ["CurvePositionY"]
  GETIMPORT R24 K30 [Color3.fromRGB]
  LOADN R25 3
  LOADN R26 201
  LOADN R27 3
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K66 ["CurvePositionZ"]
  GETIMPORT R24 K30 [Color3.fromRGB]
  LOADN R25 0
  LOADN R26 0
  LOADN R27 255
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K67 ["CurveRotationX"]
  GETIMPORT R24 K30 [Color3.fromRGB]
  LOADN R25 47
  LOADN R26 128
  LOADN R27 123
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K68 ["CurveRotationY"]
  GETIMPORT R24 K30 [Color3.fromRGB]
  LOADN R25 255
  LOADN R26 0
  LOADN R27 255
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K69 ["CurveRotationZ"]
  GETIMPORT R24 K30 [Color3.fromRGB]
  LOADN R25 255
  LOADN R26 165
  LOADN R27 0
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K70 ["CurveEditorButton"]
  LOADK R24 K84 ["rbxasset://textures/AnimationEditor/Button_Curve_Darkmode.png"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K72 ["DopeSheetButton"]
  LOADK R24 K85 ["rbxasset://textures/AnimationEditor/Button_Dopesheet_Darkmode.png"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K74 ["StopRecordingButtonImage"]
  LOADK R24 K86 ["rbxasset://textures/AnimationEditor/FaceCaptureUI/StopRecordButton.png"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K76 ["FaceCaptureDefaultButtonIconColor"]
  GETIMPORT R24 K30 [Color3.fromRGB]
  LOADN R25 255
  LOADN R26 255
  LOADN R27 255
  CALL R24 3 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R7 K77 ["FaceSliderKnob"]
  GETTABLEKS R24 R8 K47 ["White"]
  SETTABLE R24 R22 R23
  CALL R20 2 1
  DUPTABLE R21 K103 [{"autokeyOn", "autokeyOff", "skipBackward", "skipForward", "play", "pause", "loop", "reverse", "goToFirstFrame", "goToLastFrame", "selectClipDropdownIcon", "iconColor", "iconHighlightColor", "timeInputBackground", "borderColor", "inputBorderColor"}]
  LOADK R22 K104 [""]
  SETTABLEKS R22 R21 K87 ["autokeyOn"]
  LOADK R22 K104 [""]
  SETTABLEKS R22 R21 K88 ["autokeyOff"]
  LOADK R22 K105 ["rbxasset://textures/AnimationEditor/button_control_previous.png"]
  SETTABLEKS R22 R21 K89 ["skipBackward"]
  LOADK R22 K106 ["rbxasset://textures/AnimationEditor/button_control_next.png"]
  SETTABLEKS R22 R21 K90 ["skipForward"]
  LOADK R22 K107 ["rbxasset://textures/AnimationEditor/button_control_play.png"]
  SETTABLEKS R22 R21 K91 ["play"]
  LOADK R22 K108 ["rbxasset://textures/AnimationEditor/button_pause_white@2x.png"]
  SETTABLEKS R22 R21 K92 ["pause"]
  LOADK R22 K109 ["rbxasset://textures/AnimationEditor/button_loop.png"]
  SETTABLEKS R22 R21 K93 ["loop"]
  LOADK R22 K110 ["rbxasset://textures/AnimationEditor/button_control_reverseplay.png"]
  SETTABLEKS R22 R21 K94 ["reverse"]
  LOADK R22 K111 ["rbxasset://textures/AnimationEditor/button_control_firstframe.png"]
  SETTABLEKS R22 R21 K95 ["goToFirstFrame"]
  LOADK R22 K112 ["rbxasset://textures/AnimationEditor/button_control_lastframe.png"]
  SETTABLEKS R22 R21 K96 ["goToLastFrame"]
  LOADK R22 K113 ["rbxasset://textures/AnimationEditor/btn_expand.png"]
  SETTABLEKS R22 R21 K97 ["selectClipDropdownIcon"]
  GETTABLEKS R22 R7 K114 ["MainText"]
  SETTABLEKS R22 R21 K98 ["iconColor"]
  GETTABLEKS R22 R7 K115 ["DialogMainButtonText"]
  SETTABLEKS R22 R21 K99 ["iconHighlightColor"]
  GETTABLEKS R22 R7 K116 ["InputFieldBackground"]
  SETTABLEKS R22 R21 K100 ["timeInputBackground"]
  GETTABLEKS R22 R7 K117 ["Border"]
  SETTABLEKS R22 R21 K101 ["borderColor"]
  GETTABLEKS R22 R7 K118 ["InputFieldBorder"]
  SETTABLEKS R22 R21 K102 ["inputBorderColor"]
  DUPTABLE R22 K124 [{"itemColor", "hoveredItemColor", "textColor", "itemHeight", "textSize"}]
  GETTABLEKS R23 R7 K125 ["Item"]
  SETTABLEKS R23 R22 K119 ["itemColor"]
  GETTABLEKS R23 R7 K126 ["ItemHovered"]
  SETTABLEKS R23 R22 K120 ["hoveredItemColor"]
  GETTABLEKS R23 R7 K114 ["MainText"]
  SETTABLEKS R23 R22 K121 ["textColor"]
  LOADN R23 22
  SETTABLEKS R23 R22 K122 ["itemHeight"]
  LOADN R23 15
  SETTABLEKS R23 R22 K123 ["textSize"]
  DUPTABLE R23 K147 [{"backgroundColor", "shadedBackgroundColor", "titleBackgroundColor", "selectedBackgroundColor", "primaryBackgroundColor", "textColor", "primaryTextColor", "selectedTextColor", "textSize", "arrow", "contextMenu", "addButtonBackground", "addEventBackground", "addEventBorder", "plusIcon", "errorImage", "buttonColor", "hoveredButtonColor", "addButtonColor", "hoveredAddButtonColor", "plusIconColor", "hoveredPlusIconColor"}]
  GETTABLEKS R24 R7 K148 ["MainBackground"]
  SETTABLEKS R24 R23 K127 ["backgroundColor"]
  GETTABLEKS R24 R7 K31 ["TrackShadedBackgroundColor"]
  SETTABLEKS R24 R23 K128 ["shadedBackgroundColor"]
  GETTABLEKS R24 R7 K32 ["TrackTitleBackgroundColor"]
  SETTABLEKS R24 R23 K129 ["titleBackgroundColor"]
  GETTABLEKS R24 R7 K149 ["ItemSelected"]
  SETTABLEKS R24 R23 K130 ["selectedBackgroundColor"]
  GETTABLEKS R24 R7 K33 ["TrackPrimaryBackgroundColor"]
  SETTABLEKS R24 R23 K131 ["primaryBackgroundColor"]
  GETTABLEKS R24 R7 K114 ["MainText"]
  SETTABLEKS R24 R23 K121 ["textColor"]
  GETTABLEKS R24 R7 K150 ["BrightText"]
  SETTABLEKS R24 R23 K132 ["primaryTextColor"]
  GETTABLEKS R24 R7 K151 ["MainTextSelected"]
  SETTABLEKS R24 R23 K133 ["selectedTextColor"]
  LOADN R24 15
  SETTABLEKS R24 R23 K123 ["textSize"]
  DUPTABLE R24 K154 [{"collapsed", "expanded"}]
  LOADK R25 K155 ["rbxasset://textures/StudioToolbox/ArrowCollapsed.png"]
  SETTABLEKS R25 R24 K152 ["collapsed"]
  LOADK R25 K156 ["rbxasset://textures/StudioToolbox/ArrowExpanded.png"]
  SETTABLEKS R25 R24 K153 ["expanded"]
  SETTABLEKS R24 R23 K134 ["arrow"]
  LOADK R24 K157 ["rbxasset://textures/AnimationEditor/icon_showmore.png"]
  SETTABLEKS R24 R23 K135 ["contextMenu"]
  LOADK R24 K158 ["rbxasset://textures/AnimationEditor/Circle.png"]
  SETTABLEKS R24 R23 K136 ["addButtonBackground"]
  LOADK R24 K159 ["rbxasset://textures/AnimationEditor/addEvent_inner.png"]
  SETTABLEKS R24 R23 K137 ["addEventBackground"]
  LOADK R24 K160 ["rbxasset://textures/AnimationEditor/addEvent_border.png"]
  SETTABLEKS R24 R23 K138 ["addEventBorder"]
  LOADK R24 K161 ["rbxasset://textures/AnimationEditor/icon_add.png"]
  SETTABLEKS R24 R23 K139 ["plusIcon"]
  LOADK R24 K162 ["rbxasset://textures/AnimationEditor/icon_error.png"]
  SETTABLEKS R24 R23 K140 ["errorImage"]
  GETTABLEKS R24 R7 K34 ["TrackButtonColor"]
  SETTABLEKS R24 R23 K141 ["buttonColor"]
  GETTABLEKS R24 R7 K35 ["TrackHoveredButtonColor"]
  SETTABLEKS R24 R23 K142 ["hoveredButtonColor"]
  GETTABLEKS R24 R7 K37 ["TrackAddButtonColor"]
  SETTABLEKS R24 R23 K143 ["addButtonColor"]
  GETTABLEKS R24 R7 K39 ["TrackHoveredAddButtonColor"]
  SETTABLEKS R24 R23 K144 ["hoveredAddButtonColor"]
  GETTABLEKS R24 R7 K40 ["TrackPlusIconColor"]
  SETTABLEKS R24 R23 K145 ["plusIconColor"]
  GETTABLEKS R24 R7 K115 ["DialogMainButtonText"]
  SETTABLEKS R24 R23 K146 ["hoveredPlusIconColor"]
  DUPTABLE R24 K164 [{"mainColor", "textColor", "textSize"}]
  GETTABLEKS R25 R7 K165 ["DialogMainButton"]
  SETTABLEKS R25 R24 K163 ["mainColor"]
  GETTABLEKS R25 R7 K115 ["DialogMainButtonText"]
  SETTABLEKS R25 R24 K121 ["textColor"]
  LOADN R25 15
  SETTABLEKS R25 R24 K123 ["textSize"]
  DUPTABLE R25 K169 [{"textSize", "textColor", "backgroundColor", "errorBorder", "focusedBorder", "defaultBorder"}]
  LOADN R26 16
  SETTABLEKS R26 R25 K123 ["textSize"]
  GETTABLEKS R26 R7 K114 ["MainText"]
  SETTABLEKS R26 R25 K121 ["textColor"]
  GETTABLEKS R26 R7 K116 ["InputFieldBackground"]
  SETTABLEKS R26 R25 K127 ["backgroundColor"]
  GETTABLEKS R26 R7 K170 ["ErrorText"]
  SETTABLEKS R26 R25 K166 ["errorBorder"]
  GETTABLEKS R26 R7 K165 ["DialogMainButton"]
  SETTABLEKS R26 R25 K167 ["focusedBorder"]
  GETTABLEKS R26 R7 K117 ["Border"]
  SETTABLEKS R26 R25 K168 ["defaultBorder"]
  DUPTABLE R26 K173 [{"image", "imageColor"}]
  LOADK R27 K174 ["rbxasset://textures/AnimationEditor/btn_manage.png"]
  SETTABLEKS R27 R26 K171 ["image"]
  GETTABLEKS R27 R7 K114 ["MainText"]
  SETTABLEKS R27 R26 K172 ["imageColor"]
  DUPTABLE R27 K177 [{"clusterColor", "primaryClusterColor"}]
  GETTABLEKS R28 R7 K27 ["DialogButtonTextDisabled"]
  SETTABLEKS R28 R27 K175 ["clusterColor"]
  GETTABLEKS R28 R7 K43 ["KeyframePrimaryClusterColor"]
  SETTABLEKS R28 R27 K176 ["primaryClusterColor"]
  DUPTABLE R28 K182 [{"backgroundColor", "titleColor", "font", "textSize", "backgroundImage", "selectedImage"}]
  GETIMPORT R29 K30 [Color3.fromRGB]
  LOADN R30 182
  LOADN R31 182
  LOADN R32 182
  CALL R29 3 1
  SETTABLEKS R29 R28 K127 ["backgroundColor"]
  GETTABLEKS R29 R7 K114 ["MainText"]
  SETTABLEKS R29 R28 K178 ["titleColor"]
  GETIMPORT R29 K186 [Enum.Font.Legacy]
  SETTABLEKS R29 R28 K179 ["font"]
  LOADN R29 8
  SETTABLEKS R29 R28 K123 ["textSize"]
  LOADK R29 K187 ["rbxasset://textures/GameSettings/UncheckedBox.png"]
  SETTABLEKS R29 R28 K180 ["backgroundImage"]
  LOADK R29 K188 ["rbxasset://textures/GameSettings/CheckedBoxLight.png"]
  SETTABLEKS R29 R28 K181 ["selectedImage"]
  GETIMPORT R29 K191 [Rect.new]
  LOADN R30 3
  LOADN R31 0
  LOADN R32 4
  LOADN R33 6
  CALL R29 4 1
  GETTABLEKS R30 R7 K77 ["FaceSliderKnob"]
  NEWTABLE R31 8 0
  GETIMPORT R32 K193 [Vector2.new]
  LOADK R33 K194 [0.5]
  LOADK R34 K194 [0.5]
  CALL R32 2 1
  SETTABLEKS R32 R31 K195 ["AnchorPoint"]
  SETTABLEKS R30 R31 K196 ["Color"]
  GETTABLEKS R32 R7 K197 ["SliderKnobImage"]
  SETTABLEKS R32 R31 K19 ["Image"]
  GETIMPORT R32 K199 [UDim2.new]
  LOADN R33 0
  LOADK R34 K200 [6.5]
  LOADN R35 0
  LOADK R36 K200 [6.5]
  CALL R32 4 1
  SETTABLEKS R32 R31 K201 ["Size"]
  GETTABLEKS R32 R4 K202 ["Disabled"]
  DUPTABLE R33 K203 [{"Color"}]
  GETTABLEKS R34 R7 K204 ["Button"]
  SETTABLEKS R34 R33 K196 ["Color"]
  SETTABLE R33 R31 R32
  NEWTABLE R32 8 0
  GETIMPORT R33 K193 [Vector2.new]
  LOADK R34 K194 [0.5]
  LOADK R35 K194 [0.5]
  CALL R33 2 1
  SETTABLEKS R33 R32 K195 ["AnchorPoint"]
  SETTABLEKS R30 R32 K196 ["Color"]
  GETTABLEKS R33 R7 K197 ["SliderKnobImage"]
  SETTABLEKS R33 R32 K19 ["Image"]
  GETIMPORT R33 K199 [UDim2.new]
  LOADN R34 0
  LOADN R35 9
  LOADN R36 0
  LOADN R37 9
  CALL R33 4 1
  SETTABLEKS R33 R32 K201 ["Size"]
  GETTABLEKS R33 R4 K202 ["Disabled"]
  DUPTABLE R34 K203 [{"Color"}]
  GETTABLEKS R35 R7 K204 ["Button"]
  SETTABLEKS R35 R34 K196 ["Color"]
  SETTABLE R34 R32 R33
  DUPTABLE R33 K216 [{"KnobSize", "Background", "BackgroundStyle", "Foreground", "ForegroundStyle", "LowerKnobBackground", "LowerKnobBackgroundStyle", "UpperKnobBackground", "UpperKnobBackgroundStyle", "BackgroundStyleHorizontal", "BackgroundStyleVertical"}]
  GETIMPORT R34 K193 [Vector2.new]
  LOADN R35 18
  LOADN R36 18
  CALL R34 2 1
  SETTABLEKS R34 R33 K205 ["KnobSize"]
  SETTABLEKS R12 R33 K206 ["Background"]
  DUPTABLE R34 K217 [{"Background", "Size"}]
  GETIMPORT R35 K30 [Color3.fromRGB]
  LOADN R36 87
  LOADN R37 87
  LOADN R38 87
  CALL R35 3 1
  SETTABLEKS R35 R34 K206 ["Background"]
  GETIMPORT R35 K199 [UDim2.new]
  LOADN R36 1
  LOADN R37 0
  LOADN R38 0
  LOADN R39 1
  CALL R35 4 1
  SETTABLEKS R35 R34 K201 ["Size"]
  SETTABLEKS R34 R33 K207 ["BackgroundStyle"]
  SETTABLEKS R12 R33 K208 ["Foreground"]
  NEWTABLE R34 4 0
  GETTABLEKS R35 R7 K165 ["DialogMainButton"]
  SETTABLEKS R35 R34 K206 ["Background"]
  GETIMPORT R35 K199 [UDim2.new]
  LOADN R36 1
  LOADN R37 0
  LOADN R38 0
  LOADN R39 1
  CALL R35 4 1
  SETTABLEKS R35 R34 K201 ["Size"]
  GETTABLEKS R35 R4 K202 ["Disabled"]
  DUPTABLE R36 K218 [{"Background"}]
  GETTABLEKS R37 R7 K204 ["Button"]
  SETTABLEKS R37 R36 K206 ["Background"]
  SETTABLE R36 R34 R35
  SETTABLEKS R34 R33 K209 ["ForegroundStyle"]
  SETTABLEKS R12 R33 K210 ["LowerKnobBackground"]
  SETTABLEKS R31 R33 K211 ["LowerKnobBackgroundStyle"]
  SETTABLEKS R12 R33 K212 ["UpperKnobBackground"]
  SETTABLEKS R31 R33 K213 ["UpperKnobBackgroundStyle"]
  DUPTABLE R34 K217 [{"Background", "Size"}]
  GETIMPORT R35 K30 [Color3.fromRGB]
  LOADN R36 87
  LOADN R37 87
  LOADN R38 87
  CALL R35 3 1
  SETTABLEKS R35 R34 K206 ["Background"]
  GETIMPORT R35 K199 [UDim2.new]
  LOADN R36 1
  LOADN R37 0
  LOADN R38 0
  LOADN R39 1
  CALL R35 4 1
  SETTABLEKS R35 R34 K201 ["Size"]
  SETTABLEKS R34 R33 K214 ["BackgroundStyleHorizontal"]
  DUPTABLE R34 K217 [{"Background", "Size"}]
  GETIMPORT R35 K30 [Color3.fromRGB]
  LOADN R36 87
  LOADN R37 87
  LOADN R38 87
  CALL R35 3 1
  SETTABLEKS R35 R34 K206 ["Background"]
  GETIMPORT R35 K199 [UDim2.new]
  LOADN R36 1
  LOADN R37 0
  LOADN R38 0
  LOADN R39 1
  CALL R35 4 1
  SETTABLEKS R35 R34 K201 ["Size"]
  SETTABLEKS R34 R33 K215 ["BackgroundStyleVertical"]
  DUPTABLE R34 K216 [{"KnobSize", "Background", "BackgroundStyle", "Foreground", "ForegroundStyle", "LowerKnobBackground", "LowerKnobBackgroundStyle", "UpperKnobBackground", "UpperKnobBackgroundStyle", "BackgroundStyleHorizontal", "BackgroundStyleVertical"}]
  GETIMPORT R35 K193 [Vector2.new]
  LOADN R36 18
  LOADN R37 18
  CALL R35 2 1
  SETTABLEKS R35 R34 K205 ["KnobSize"]
  SETTABLEKS R12 R34 K206 ["Background"]
  DUPTABLE R35 K217 [{"Background", "Size"}]
  GETIMPORT R36 K30 [Color3.fromRGB]
  LOADN R37 87
  LOADN R38 87
  LOADN R39 87
  CALL R36 3 1
  SETTABLEKS R36 R35 K206 ["Background"]
  GETIMPORT R36 K199 [UDim2.new]
  LOADN R37 1
  LOADN R38 0
  LOADN R39 0
  LOADN R40 1
  CALL R36 4 1
  SETTABLEKS R36 R35 K201 ["Size"]
  SETTABLEKS R35 R34 K207 ["BackgroundStyle"]
  SETTABLEKS R12 R34 K208 ["Foreground"]
  NEWTABLE R35 4 0
  GETTABLEKS R36 R7 K165 ["DialogMainButton"]
  SETTABLEKS R36 R35 K206 ["Background"]
  GETIMPORT R36 K199 [UDim2.new]
  LOADN R37 1
  LOADN R38 0
  LOADN R39 0
  LOADN R40 1
  CALL R36 4 1
  SETTABLEKS R36 R35 K201 ["Size"]
  GETTABLEKS R36 R4 K202 ["Disabled"]
  DUPTABLE R37 K218 [{"Background"}]
  GETTABLEKS R38 R7 K204 ["Button"]
  SETTABLEKS R38 R37 K206 ["Background"]
  SETTABLE R37 R35 R36
  SETTABLEKS R35 R34 K209 ["ForegroundStyle"]
  SETTABLEKS R12 R34 K210 ["LowerKnobBackground"]
  SETTABLEKS R32 R34 K211 ["LowerKnobBackgroundStyle"]
  SETTABLEKS R12 R34 K212 ["UpperKnobBackground"]
  SETTABLEKS R32 R34 K213 ["UpperKnobBackgroundStyle"]
  DUPTABLE R35 K217 [{"Background", "Size"}]
  GETIMPORT R36 K30 [Color3.fromRGB]
  LOADN R37 87
  LOADN R38 87
  LOADN R39 87
  CALL R36 3 1
  SETTABLEKS R36 R35 K206 ["Background"]
  GETIMPORT R36 K199 [UDim2.new]
  LOADN R37 1
  LOADN R38 0
  LOADN R39 0
  LOADN R40 1
  CALL R36 4 1
  SETTABLEKS R36 R35 K201 ["Size"]
  SETTABLEKS R35 R34 K214 ["BackgroundStyleHorizontal"]
  DUPTABLE R35 K217 [{"Background", "Size"}]
  GETIMPORT R36 K30 [Color3.fromRGB]
  LOADN R37 87
  LOADN R38 87
  LOADN R39 87
  CALL R36 3 1
  SETTABLEKS R36 R35 K206 ["Background"]
  GETIMPORT R36 K199 [UDim2.new]
  LOADN R37 1
  LOADN R38 0
  LOADN R39 0
  LOADN R40 1
  CALL R36 4 1
  SETTABLEKS R36 R35 K201 ["Size"]
  SETTABLEKS R35 R34 K215 ["BackgroundStyleVertical"]
  DUPTABLE R35 K222 [{"KnobSize", "Background", "BackgroundStyle", "ForegroundStyle", "OutlineStyle", "KnobBackground", "KnobBackgroundStyle"}]
  GETIMPORT R36 K193 [Vector2.new]
  LOADN R37 18
  LOADN R38 18
  CALL R36 2 1
  SETTABLEKS R36 R35 K205 ["KnobSize"]
  SETTABLEKS R12 R35 K206 ["Background"]
  DUPTABLE R36 K228 [{"AnchorPoint", "Color", "Position", "ScaleType", "Size", "SliceCenter", "BackgroundTransparency", "ImageTransparency"}]
  GETIMPORT R37 K193 [Vector2.new]
  LOADN R38 0
  LOADK R39 K194 [0.5]
  CALL R37 2 1
  SETTABLEKS R37 R36 K195 ["AnchorPoint"]
  GETIMPORT R37 K30 [Color3.fromRGB]
  LOADN R38 87
  LOADN R39 87
  LOADN R40 87
  CALL R37 3 1
  SETTABLEKS R37 R36 K196 ["Color"]
  GETIMPORT R37 K199 [UDim2.new]
  LOADN R38 0
  LOADN R39 0
  LOADK R40 K194 [0.5]
  LOADN R41 0
  CALL R37 4 1
  SETTABLEKS R37 R36 K223 ["Position"]
  GETIMPORT R37 K230 [Enum.ScaleType.Slice]
  SETTABLEKS R37 R36 K224 ["ScaleType"]
  GETIMPORT R37 K199 [UDim2.new]
  GETIMPORT R38 K232 [UDim.new]
  LOADN R39 1
  LOADN R40 0
  CALL R38 2 1
  GETIMPORT R39 K232 [UDim.new]
  LOADN R40 1
  LOADN R41 0
  CALL R39 2 -1
  CALL R37 -1 1
  SETTABLEKS R37 R36 K201 ["Size"]
  SETTABLEKS R29 R36 K225 ["SliceCenter"]
  LOADN R37 1
  SETTABLEKS R37 R36 K226 ["BackgroundTransparency"]
  LOADN R37 1
  SETTABLEKS R37 R36 K227 ["ImageTransparency"]
  SETTABLEKS R36 R35 K207 ["BackgroundStyle"]
  NEWTABLE R36 8 0
  GETIMPORT R37 K193 [Vector2.new]
  LOADN R38 0
  LOADK R39 K194 [0.5]
  CALL R37 2 1
  SETTABLEKS R37 R36 K195 ["AnchorPoint"]
  LOADK R37 K233 ["rbxasset://textures/DeveloperFramework/slider_bg.png"]
  SETTABLEKS R37 R36 K19 ["Image"]
  GETTABLEKS R37 R7 K165 ["DialogMainButton"]
  SETTABLEKS R37 R36 K196 ["Color"]
  GETIMPORT R37 K230 [Enum.ScaleType.Slice]
  SETTABLEKS R37 R36 K224 ["ScaleType"]
  GETIMPORT R37 K199 [UDim2.new]
  GETIMPORT R38 K232 [UDim.new]
  LOADN R39 1
  LOADN R40 0
  CALL R38 2 1
  GETIMPORT R39 K232 [UDim.new]
  LOADN R40 0
  LOADN R41 1
  CALL R39 2 -1
  CALL R37 -1 1
  SETTABLEKS R37 R36 K201 ["Size"]
  SETTABLEKS R29 R36 K225 ["SliceCenter"]
  GETTABLEKS R37 R4 K202 ["Disabled"]
  DUPTABLE R38 K203 [{"Color"}]
  GETTABLEKS R39 R7 K204 ["Button"]
  SETTABLEKS R39 R38 K196 ["Color"]
  SETTABLE R38 R36 R37
  SETTABLEKS R36 R35 K209 ["ForegroundStyle"]
  DUPTABLE R36 K203 [{"Color"}]
  GETIMPORT R37 K30 [Color3.fromRGB]
  LOADN R38 87
  LOADN R39 87
  LOADN R40 87
  CALL R37 3 1
  SETTABLEKS R37 R36 K196 ["Color"]
  SETTABLEKS R36 R35 K219 ["OutlineStyle"]
  SETTABLEKS R12 R35 K220 ["KnobBackground"]
  SETTABLEKS R31 R35 K221 ["KnobBackgroundStyle"]
  DUPTABLE R36 K222 [{"KnobSize", "Background", "BackgroundStyle", "ForegroundStyle", "OutlineStyle", "KnobBackground", "KnobBackgroundStyle"}]
  GETIMPORT R37 K193 [Vector2.new]
  LOADN R38 18
  LOADN R39 18
  CALL R37 2 1
  SETTABLEKS R37 R36 K205 ["KnobSize"]
  SETTABLEKS R12 R36 K206 ["Background"]
  DUPTABLE R37 K228 [{"AnchorPoint", "Color", "Position", "ScaleType", "Size", "SliceCenter", "BackgroundTransparency", "ImageTransparency"}]
  GETIMPORT R38 K193 [Vector2.new]
  LOADN R39 0
  LOADK R40 K194 [0.5]
  CALL R38 2 1
  SETTABLEKS R38 R37 K195 ["AnchorPoint"]
  GETIMPORT R38 K30 [Color3.fromRGB]
  LOADN R39 87
  LOADN R40 87
  LOADN R41 87
  CALL R38 3 1
  SETTABLEKS R38 R37 K196 ["Color"]
  GETIMPORT R38 K199 [UDim2.new]
  LOADN R39 0
  LOADN R40 0
  LOADK R41 K194 [0.5]
  LOADN R42 0
  CALL R38 4 1
  SETTABLEKS R38 R37 K223 ["Position"]
  GETIMPORT R38 K230 [Enum.ScaleType.Slice]
  SETTABLEKS R38 R37 K224 ["ScaleType"]
  GETIMPORT R38 K199 [UDim2.new]
  GETIMPORT R39 K232 [UDim.new]
  LOADN R40 1
  LOADN R41 0
  CALL R39 2 1
  GETIMPORT R40 K232 [UDim.new]
  LOADN R41 1
  LOADN R42 0
  CALL R40 2 -1
  CALL R38 -1 1
  SETTABLEKS R38 R37 K201 ["Size"]
  SETTABLEKS R29 R37 K225 ["SliceCenter"]
  LOADN R38 1
  SETTABLEKS R38 R37 K226 ["BackgroundTransparency"]
  LOADN R38 1
  SETTABLEKS R38 R37 K227 ["ImageTransparency"]
  SETTABLEKS R37 R36 K207 ["BackgroundStyle"]
  NEWTABLE R37 8 0
  GETIMPORT R38 K193 [Vector2.new]
  LOADN R39 0
  LOADK R40 K194 [0.5]
  CALL R38 2 1
  SETTABLEKS R38 R37 K195 ["AnchorPoint"]
  LOADK R38 K233 ["rbxasset://textures/DeveloperFramework/slider_bg.png"]
  SETTABLEKS R38 R37 K19 ["Image"]
  GETTABLEKS R38 R7 K165 ["DialogMainButton"]
  SETTABLEKS R38 R37 K196 ["Color"]
  GETIMPORT R38 K230 [Enum.ScaleType.Slice]
  SETTABLEKS R38 R37 K224 ["ScaleType"]
  GETIMPORT R38 K199 [UDim2.new]
  GETIMPORT R39 K232 [UDim.new]
  LOADN R40 1
  LOADN R41 0
  CALL R39 2 1
  GETIMPORT R40 K232 [UDim.new]
  LOADN R41 0
  LOADN R42 1
  CALL R40 2 -1
  CALL R38 -1 1
  SETTABLEKS R38 R37 K201 ["Size"]
  SETTABLEKS R29 R37 K225 ["SliceCenter"]
  GETTABLEKS R38 R4 K202 ["Disabled"]
  DUPTABLE R39 K203 [{"Color"}]
  GETTABLEKS R40 R7 K204 ["Button"]
  SETTABLEKS R40 R39 K196 ["Color"]
  SETTABLE R39 R37 R38
  SETTABLEKS R37 R36 K209 ["ForegroundStyle"]
  DUPTABLE R37 K203 [{"Color"}]
  GETIMPORT R38 K30 [Color3.fromRGB]
  LOADN R39 87
  LOADN R40 87
  LOADN R41 87
  CALL R38 3 1
  SETTABLEKS R38 R37 K196 ["Color"]
  SETTABLEKS R37 R36 K219 ["OutlineStyle"]
  SETTABLEKS R12 R36 K220 ["KnobBackground"]
  SETTABLEKS R32 R36 K221 ["KnobBackgroundStyle"]
  DUPTABLE R37 K236 [{"slice", "backgroundImage", "borderImage"}]
  GETIMPORT R38 K191 [Rect.new]
  LOADN R39 3
  LOADN R40 3
  LOADN R41 13
  LOADN R42 13
  CALL R38 4 1
  SETTABLEKS R38 R37 K234 ["slice"]
  LOADK R38 K237 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
  SETTABLEKS R38 R37 K180 ["backgroundImage"]
  LOADK R38 K238 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
  SETTABLEKS R38 R37 K235 ["borderImage"]
  DUPTABLE R38 K246 [{"MediaControl", "EventFilter", "ActiveControl", "IKDefault", "IKActive", "FaceControlsEditorActive", "FaceControlsEditorDefault"}]
  NEWTABLE R39 4 0
  SETTABLEKS R10 R39 K206 ["Background"]
  DUPTABLE R40 K249 [{"Color", "BorderColor", "BorderSize"}]
  GETTABLEKS R41 R7 K148 ["MainBackground"]
  SETTABLEKS R41 R40 K196 ["Color"]
  GETTABLEKS R41 R7 K117 ["Border"]
  SETTABLEKS R41 R40 K247 ["BorderColor"]
  LOADN R41 1
  SETTABLEKS R41 R40 K248 ["BorderSize"]
  SETTABLEKS R40 R39 K207 ["BackgroundStyle"]
  GETTABLEKS R40 R4 K250 ["Hover"]
  DUPTABLE R41 K251 [{"BackgroundStyle"}]
  DUPTABLE R42 K249 [{"Color", "BorderColor", "BorderSize"}]
  GETTABLEKS R43 R7 K252 ["ButtonHover"]
  SETTABLEKS R43 R42 K196 ["Color"]
  GETTABLEKS R43 R7 K117 ["Border"]
  SETTABLEKS R43 R42 K247 ["BorderColor"]
  LOADN R43 1
  SETTABLEKS R43 R42 K248 ["BorderSize"]
  SETTABLEKS R42 R41 K207 ["BackgroundStyle"]
  SETTABLE R41 R39 R40
  SETTABLEKS R39 R38 K239 ["MediaControl"]
  NEWTABLE R39 4 0
  SETTABLEKS R10 R39 K206 ["Background"]
  DUPTABLE R40 K203 [{"Color"}]
  GETTABLEKS R41 R7 K32 ["TrackTitleBackgroundColor"]
  SETTABLEKS R41 R40 K196 ["Color"]
  SETTABLEKS R40 R39 K207 ["BackgroundStyle"]
  GETTABLEKS R40 R4 K250 ["Hover"]
  DUPTABLE R41 K251 [{"BackgroundStyle"}]
  DUPTABLE R42 K203 [{"Color"}]
  GETTABLEKS R43 R7 K252 ["ButtonHover"]
  SETTABLEKS R43 R42 K196 ["Color"]
  SETTABLEKS R42 R41 K207 ["BackgroundStyle"]
  SETTABLE R41 R39 R40
  SETTABLEKS R39 R38 K240 ["EventFilter"]
  NEWTABLE R39 4 0
  SETTABLEKS R10 R39 K206 ["Background"]
  DUPTABLE R40 K249 [{"Color", "BorderColor", "BorderSize"}]
  GETTABLEKS R41 R7 K165 ["DialogMainButton"]
  SETTABLEKS R41 R40 K196 ["Color"]
  GETTABLEKS R41 R7 K165 ["DialogMainButton"]
  SETTABLEKS R41 R40 K247 ["BorderColor"]
  LOADN R41 1
  SETTABLEKS R41 R40 K248 ["BorderSize"]
  SETTABLEKS R40 R39 K207 ["BackgroundStyle"]
  GETTABLEKS R40 R4 K250 ["Hover"]
  DUPTABLE R41 K251 [{"BackgroundStyle"}]
  DUPTABLE R42 K249 [{"Color", "BorderColor", "BorderSize"}]
  GETTABLEKS R43 R7 K253 ["DialogMainButtonHover"]
  SETTABLEKS R43 R42 K196 ["Color"]
  GETTABLEKS R43 R7 K253 ["DialogMainButtonHover"]
  SETTABLEKS R43 R42 K247 ["BorderColor"]
  LOADN R43 1
  SETTABLEKS R43 R42 K248 ["BorderSize"]
  SETTABLEKS R42 R41 K207 ["BackgroundStyle"]
  SETTABLE R41 R39 R40
  SETTABLEKS R39 R38 K241 ["ActiveControl"]
  DUPTABLE R39 K218 [{"Background"}]
  SETTABLEKS R11 R39 K206 ["Background"]
  SETTABLEKS R39 R38 K242 ["IKDefault"]
  DUPTABLE R39 K218 [{"Background"}]
  SETTABLEKS R11 R39 K206 ["Background"]
  SETTABLEKS R39 R38 K243 ["IKActive"]
  DUPTABLE R39 K218 [{"Background"}]
  SETTABLEKS R11 R39 K206 ["Background"]
  SETTABLEKS R39 R38 K244 ["FaceControlsEditorActive"]
  DUPTABLE R39 K218 [{"Background"}]
  SETTABLEKS R11 R39 K206 ["Background"]
  SETTABLEKS R39 R38 K245 ["FaceControlsEditorDefault"]
  MOVE R39 R15
  LOADK R40 K204 ["Button"]
  CALL R39 1 1
  MOVE R40 R18
  MOVE R41 R39
  NEWTABLE R42 2 0
  MOVE R43 R18
  GETTABLEKS R44 R39 K254 ["&Round"]
  DUPTABLE R45 K218 [{"Background"}]
  SETTABLEKS R11 R45 K206 ["Background"]
  CALL R43 2 1
  SETTABLEKS R43 R42 K255 ["&ACEHeaderButtonDefault"]
  MOVE R43 R18
  GETTABLEKS R44 R39 K256 ["&RoundPrimary"]
  NEWTABLE R45 0 0
  CALL R43 2 1
  SETTABLEKS R43 R42 K257 ["&ACEHeaderButtonActive"]
  CALL R40 2 1
  DUPTABLE R41 K261 [{"imageColor", "borderColor", "selectionBorderColor", "mainImage", "borderImage", "selectionBorderImage", "textSize"}]
  GETTABLEKS R42 R7 K44 ["EventMarkerImageColor"]
  SETTABLEKS R42 R41 K172 ["imageColor"]
  GETTABLEKS R42 R7 K45 ["EventMarkerBorderColor"]
  SETTABLEKS R42 R41 K101 ["borderColor"]
  GETTABLEKS R42 R7 K165 ["DialogMainButton"]
  SETTABLEKS R42 R41 K258 ["selectionBorderColor"]
  LOADK R42 K6 ["Packages"]
  SETTABLEKS R42 R41 K259 ["mainImage"]
  LOADK R42 K7 ["Cryo"]
  SETTABLEKS R42 R41 K235 ["borderImage"]
  LOADK R42 K8 ["Framework"]
  SETTABLEKS R42 R41 K260 ["selectionBorderImage"]
  LOADN R42 15
  SETTABLEKS R42 R41 K123 ["textSize"]
  DUPTABLE R42 K271 [{"controlImage", "arrowImage", "imageColor", "controlColor", "hoverColor", "pressedColor", "backgroundColor", "borderColor", "borderSize"}]
  LOADK R43 K16 ["UI"]
  SETTABLEKS R43 R42 K265 ["controlImage"]
  LOADK R43 K17 ["Box"]
  SETTABLEKS R43 R42 K266 ["arrowImage"]
  GETTABLEKS R43 R7 K114 ["MainText"]
  SETTABLEKS R43 R42 K172 ["imageColor"]
  GETTABLEKS R43 R7 K46 ["ScrollBarControl"]
  SETTABLEKS R43 R42 K267 ["controlColor"]
  GETTABLEKS R43 R7 K48 ["ScrollBarHover"]
  SETTABLEKS R43 R42 K268 ["hoverColor"]
  GETTABLEKS R43 R7 K49 ["ScrollBarPressed"]
  SETTABLEKS R43 R42 K269 ["pressedColor"]
  GETTABLEKS R43 R7 K274 ["ScrollBarBackground"]
  SETTABLEKS R43 R42 K127 ["backgroundColor"]
  GETTABLEKS R43 R7 K118 ["InputFieldBorder"]
  SETTABLEKS R43 R42 K101 ["borderColor"]
  LOADN R43 1
  SETTABLEKS R43 R42 K270 ["borderSize"]
  DUPTABLE R43 K280 [{"lineColor", "textColor", "dimmedColor", "barColor", "backgroundColor", "lowerTransparency", "lowerBrightTransparency", "textSize"}]
  GETTABLEKS R44 R7 K281 ["DimmedText"]
  SETTABLEKS R44 R43 K275 ["lineColor"]
  GETTABLEKS R44 R7 K281 ["DimmedText"]
  SETTABLEKS R44 R43 K121 ["textColor"]
  GETTABLEKS R44 R7 K41 ["TimelineDimmedColor"]
  SETTABLEKS R44 R43 K276 ["dimmedColor"]
  GETTABLEKS R44 R7 K148 ["MainBackground"]
  SETTABLEKS R44 R43 K277 ["barColor"]
  GETTABLEKS R44 R7 K42 ["TimelineBackgroundColor"]
  SETTABLEKS R44 R43 K127 ["backgroundColor"]
  LOADK R44 K26 ["Dictionary"]
  SETTABLEKS R44 R43 K278 ["lowerTransparency"]
  LOADK R44 K27 ["DialogButtonTextDisabled"]
  SETTABLEKS R44 R43 K279 ["lowerBrightTransparency"]
  LOADN R44 15
  SETTABLEKS R44 R43 K123 ["textSize"]
  DUPTABLE R44 K292 [{"textSize", "subTextSize", "headerFont", "textColor", "subTextColor", "errorTextColor", "deleteImage", "addImage", "errorImage", "warningImage", "headerTextSize"}]
  LOADN R45 16
  SETTABLEKS R45 R44 K123 ["textSize"]
  LOADN R45 15
  SETTABLEKS R45 R44 K284 ["subTextSize"]
  GETIMPORT R45 K294 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R45 R44 K285 ["headerFont"]
  GETTABLEKS R45 R7 K114 ["MainText"]
  SETTABLEKS R45 R44 K121 ["textColor"]
  GETTABLEKS R45 R7 K281 ["DimmedText"]
  SETTABLEKS R45 R44 K286 ["subTextColor"]
  GETTABLEKS R45 R7 K170 ["ErrorText"]
  SETTABLEKS R45 R44 K287 ["errorTextColor"]
  LOADK R45 K39 ["TrackHoveredAddButtonColor"]
  SETTABLEKS R45 R44 K288 ["deleteImage"]
  LOADK R45 K161 ["rbxasset://textures/AnimationEditor/icon_add.png"]
  SETTABLEKS R45 R44 K289 ["addImage"]
  LOADK R45 K162 ["rbxasset://textures/AnimationEditor/icon_error.png"]
  SETTABLEKS R45 R44 K140 ["errorImage"]
  LOADK R45 K40 ["TrackPlusIconColor"]
  SETTABLEKS R45 R44 K290 ["warningImage"]
  LOADN R45 18
  SETTABLEKS R45 R44 K291 ["headerTextSize"]
  DUPTABLE R45 K300 [{"textSize", "textColor", "shadowTransparency", "shadowColor", "shadowSize"}]
  LOADN R46 16
  SETTABLEKS R46 R45 K123 ["textSize"]
  GETTABLEKS R46 R7 K114 ["MainText"]
  SETTABLEKS R46 R45 K121 ["textColor"]
  LOADK R46 K45 ["EventMarkerBorderColor"]
  SETTABLEKS R46 R45 K297 ["shadowTransparency"]
  GETIMPORT R46 K302 [Color3.new]
  CALL R46 0 1
  SETTABLEKS R46 R45 K298 ["shadowColor"]
  LOADN R46 35
  SETTABLEKS R46 R45 K299 ["shadowSize"]
  DUPTABLE R46 K304 [{"textSize", "textColor", "darkTextColor"}]
  LOADN R47 16
  SETTABLEKS R47 R46 K123 ["textSize"]
  GETTABLEKS R47 R7 K114 ["MainText"]
  SETTABLEKS R47 R46 K121 ["textColor"]
  GETTABLEKS R47 R7 K50 ["StartScreenDarkTextColor"]
  SETTABLEKS R47 R46 K303 ["darkTextColor"]
  DUPTABLE R47 K305 [{"lineColor"}]
  GETIMPORT R48 K307 [BrickColor.new]
  GETIMPORT R49 K302 [Color3.new]
  LOADN R50 1
  LOADN R51 1
  LOADN R52 1
  CALL R49 3 -1
  CALL R48 -1 1
  SETTABLEKS R48 R47 K275 ["lineColor"]
  DUPTABLE R48 K318 [{"textColor", "primaryTextColor", "textSize", "lineColor", "ikLineColor", "transparency", "leafNodeImage", "expandImage", "collapseImage", "pinImage", "iconColor", "iconHighlightColor", "selected", "headerColor", "headerBorder", "pinHover"}]
  GETTABLEKS R49 R7 K114 ["MainText"]
  SETTABLEKS R49 R48 K121 ["textColor"]
  GETTABLEKS R49 R7 K151 ["MainTextSelected"]
  SETTABLEKS R49 R48 K132 ["primaryTextColor"]
  LOADN R49 15
  SETTABLEKS R49 R48 K123 ["textSize"]
  GETTABLEKS R49 R7 K281 ["DimmedText"]
  SETTABLEKS R49 R48 K275 ["lineColor"]
  GETIMPORT R49 K30 [Color3.fromRGB]
  LOADN R50 182
  LOADN R51 80
  LOADN R52 203
  CALL R49 3 1
  SETTABLEKS R49 R48 K308 ["ikLineColor"]
  LOADK R49 K63 ["KeyframePrimaryErrorBorderColorSelected"]
  SETTABLEKS R49 R48 K309 ["transparency"]
  LOADK R49 K64 ["CurvePositionX"]
  SETTABLEKS R49 R48 K310 ["leafNodeImage"]
  LOADK R49 K65 ["CurvePositionY"]
  SETTABLEKS R49 R48 K311 ["expandImage"]
  LOADK R49 K66 ["CurvePositionZ"]
  SETTABLEKS R49 R48 K312 ["collapseImage"]
  LOADK R49 K67 ["CurveRotationX"]
  SETTABLEKS R49 R48 K313 ["pinImage"]
  GETTABLEKS R49 R7 K281 ["DimmedText"]
  SETTABLEKS R49 R48 K98 ["iconColor"]
  GETTABLEKS R49 R7 K150 ["BrightText"]
  SETTABLEKS R49 R48 K99 ["iconHighlightColor"]
  GETTABLEKS R49 R7 K149 ["ItemSelected"]
  SETTABLEKS R49 R48 K314 ["selected"]
  GETTABLEKS R49 R7 K51 ["IKHeaderColor"]
  SETTABLEKS R49 R48 K315 ["headerColor"]
  GETTABLEKS R49 R7 K52 ["IKHeaderBorder"]
  SETTABLEKS R49 R48 K316 ["headerBorder"]
  GETTABLEKS R49 R7 K253 ["DialogMainButtonHover"]
  SETTABLEKS R49 R48 K317 ["pinHover"]
  DUPTABLE R49 K332 [{"Default", "Primary", "Error", "PrimaryError", "Bounce", "Constant", "Cubic", "Elastic"}]
  DUPTABLE R50 K333 [{"backgroundColor", "borderColor", "selected"}]
  GETTABLEKS R51 R7 K27 ["DialogButtonTextDisabled"]
  SETTABLEKS R51 R50 K127 ["backgroundColor"]
  GETTABLEKS R51 R7 K281 ["DimmedText"]
  SETTABLEKS R51 R50 K101 ["borderColor"]
  DUPTABLE R51 K334 [{"backgroundColor", "borderColor"}]
  GETTABLEKS R52 R7 K27 ["DialogButtonTextDisabled"]
  SETTABLEKS R52 R51 K127 ["backgroundColor"]
  GETTABLEKS R52 R7 K165 ["DialogMainButton"]
  SETTABLEKS R52 R51 K101 ["borderColor"]
  SETTABLEKS R51 R50 K314 ["selected"]
  SETTABLEKS R50 R49 K324 ["Default"]
  DUPTABLE R50 K333 [{"backgroundColor", "borderColor", "selected"}]
  GETTABLEKS R51 R7 K53 ["KeyframePrimaryBackgroundColor"]
  SETTABLEKS R51 R50 K127 ["backgroundColor"]
  GETTABLEKS R51 R7 K117 ["Border"]
  SETTABLEKS R51 R50 K101 ["borderColor"]
  DUPTABLE R51 K334 [{"backgroundColor", "borderColor"}]
  GETTABLEKS R52 R7 K54 ["KeyframePrimaryBackgroundColorSelected"]
  SETTABLEKS R52 R51 K127 ["backgroundColor"]
  GETTABLEKS R52 R8 K36 ["Blue"]
  SETTABLEKS R52 R51 K101 ["borderColor"]
  SETTABLEKS R51 R50 K314 ["selected"]
  SETTABLEKS R50 R49 K325 ["Primary"]
  DUPTABLE R50 K333 [{"backgroundColor", "borderColor", "selected"}]
  GETTABLEKS R51 R7 K55 ["KeyframeErrorBackgroundColor"]
  SETTABLEKS R51 R50 K127 ["backgroundColor"]
  GETTABLEKS R51 R7 K56 ["KeyframeErrorBorderColor"]
  SETTABLEKS R51 R50 K101 ["borderColor"]
  DUPTABLE R51 K334 [{"backgroundColor", "borderColor"}]
  GETTABLEKS R52 R7 K57 ["KeyframeErrorBackgroundColorSelected"]
  SETTABLEKS R52 R51 K127 ["backgroundColor"]
  GETTABLEKS R52 R7 K58 ["KeyframeErrorBorderColorSelected"]
  SETTABLEKS R52 R51 K101 ["borderColor"]
  SETTABLEKS R51 R50 K314 ["selected"]
  SETTABLEKS R50 R49 K326 ["Error"]
  DUPTABLE R50 K333 [{"backgroundColor", "borderColor", "selected"}]
  GETTABLEKS R51 R7 K60 ["KeyframePrimaryErrorBackgroundColor"]
  SETTABLEKS R51 R50 K127 ["backgroundColor"]
  GETTABLEKS R51 R7 K61 ["KeyframePrimaryErrorBorderColor"]
  SETTABLEKS R51 R50 K101 ["borderColor"]
  DUPTABLE R51 K334 [{"backgroundColor", "borderColor"}]
  GETTABLEKS R52 R7 K62 ["KeyframePrimaryErrorBackgroundColorSelected"]
  SETTABLEKS R52 R51 K127 ["backgroundColor"]
  GETTABLEKS R52 R7 K63 ["KeyframePrimaryErrorBorderColorSelected"]
  SETTABLEKS R52 R51 K101 ["borderColor"]
  SETTABLEKS R51 R50 K314 ["selected"]
  SETTABLEKS R50 R49 K327 ["PrimaryError"]
  DUPTABLE R50 K333 [{"backgroundColor", "borderColor", "selected"}]
  GETIMPORT R51 K30 [Color3.fromRGB]
  LOADN R52 155
  LOADN R53 198
  LOADN R54 204
  CALL R51 3 1
  SETTABLEKS R51 R50 K127 ["backgroundColor"]
  GETIMPORT R51 K30 [Color3.fromRGB]
  LOADN R52 56
  LOADN R53 56
  LOADN R54 56
  CALL R51 3 1
  SETTABLEKS R51 R50 K101 ["borderColor"]
  DUPTABLE R51 K334 [{"backgroundColor", "borderColor"}]
  GETIMPORT R52 K30 [Color3.fromRGB]
  LOADN R53 155
  LOADN R54 198
  LOADN R55 204
  CALL R52 3 1
  SETTABLEKS R52 R51 K127 ["backgroundColor"]
  GETTABLEKS R52 R7 K165 ["DialogMainButton"]
  SETTABLEKS R52 R51 K101 ["borderColor"]
  SETTABLEKS R51 R50 K314 ["selected"]
  SETTABLEKS R50 R49 K328 ["Bounce"]
  DUPTABLE R50 K333 [{"backgroundColor", "borderColor", "selected"}]
  GETIMPORT R51 K30 [Color3.fromRGB]
  LOADN R52 156
  LOADN R53 147
  LOADN R54 226
  CALL R51 3 1
  SETTABLEKS R51 R50 K127 ["backgroundColor"]
  GETIMPORT R51 K30 [Color3.fromRGB]
  LOADN R52 56
  LOADN R53 56
  LOADN R54 56
  CALL R51 3 1
  SETTABLEKS R51 R50 K101 ["borderColor"]
  DUPTABLE R51 K334 [{"backgroundColor", "borderColor"}]
  GETIMPORT R52 K30 [Color3.fromRGB]
  LOADN R53 156
  LOADN R54 147
  LOADN R55 226
  CALL R52 3 1
  SETTABLEKS R52 R51 K127 ["backgroundColor"]
  GETTABLEKS R52 R7 K165 ["DialogMainButton"]
  SETTABLEKS R52 R51 K101 ["borderColor"]
  SETTABLEKS R51 R50 K314 ["selected"]
  SETTABLEKS R50 R49 K329 ["Constant"]
  DUPTABLE R50 K333 [{"backgroundColor", "borderColor", "selected"}]
  GETIMPORT R51 K30 [Color3.fromRGB]
  LOADN R52 254
  LOADN R53 189
  LOADN R54 81
  CALL R51 3 1
  SETTABLEKS R51 R50 K127 ["backgroundColor"]
  GETIMPORT R51 K30 [Color3.fromRGB]
  LOADN R52 56
  LOADN R53 56
  LOADN R54 56
  CALL R51 3 1
  SETTABLEKS R51 R50 K101 ["borderColor"]
  DUPTABLE R51 K334 [{"backgroundColor", "borderColor"}]
  GETIMPORT R52 K30 [Color3.fromRGB]
  LOADN R53 254
  LOADN R54 189
  LOADN R55 81
  CALL R52 3 1
  SETTABLEKS R52 R51 K127 ["backgroundColor"]
  GETTABLEKS R52 R7 K165 ["DialogMainButton"]
  SETTABLEKS R52 R51 K101 ["borderColor"]
  SETTABLEKS R51 R50 K314 ["selected"]
  SETTABLEKS R50 R49 K330 ["Cubic"]
  DUPTABLE R50 K333 [{"backgroundColor", "borderColor", "selected"}]
  GETIMPORT R51 K30 [Color3.fromRGB]
  LOADN R52 137
  LOADN R53 187
  LOADN R54 77
  CALL R51 3 1
  SETTABLEKS R51 R50 K127 ["backgroundColor"]
  GETIMPORT R51 K30 [Color3.fromRGB]
  LOADN R52 56
  LOADN R53 56
  LOADN R54 56
  CALL R51 3 1
  SETTABLEKS R51 R50 K101 ["borderColor"]
  DUPTABLE R51 K334 [{"backgroundColor", "borderColor"}]
  GETIMPORT R52 K30 [Color3.fromRGB]
  LOADN R53 137
  LOADN R54 187
  LOADN R55 77
  CALL R52 3 1
  SETTABLEKS R52 R51 K127 ["backgroundColor"]
  GETTABLEKS R52 R7 K165 ["DialogMainButton"]
  SETTABLEKS R52 R51 K101 ["borderColor"]
  SETTABLEKS R51 R50 K314 ["selected"]
  SETTABLEKS R50 R49 K331 ["Elastic"]
  DUPTABLE R50 K348 [{"default", "positionX", "positionY", "positionZ", "rotationX", "rotationY", "rotationZ", "selected", "xAxis", "curveEditorButton", "dopesheetButton", "tangentControlColor", "tangentAutoButton", "tangentDefinedButton"}]
  GETTABLEKS R51 R7 K114 ["MainText"]
  SETTABLEKS R51 R50 K335 ["default"]
  GETTABLEKS R51 R7 K64 ["CurvePositionX"]
  SETTABLEKS R51 R50 K336 ["positionX"]
  GETTABLEKS R51 R7 K65 ["CurvePositionY"]
  SETTABLEKS R51 R50 K337 ["positionY"]
  GETTABLEKS R51 R7 K66 ["CurvePositionZ"]
  SETTABLEKS R51 R50 K338 ["positionZ"]
  GETTABLEKS R51 R7 K67 ["CurveRotationX"]
  SETTABLEKS R51 R50 K339 ["rotationX"]
  GETTABLEKS R51 R7 K68 ["CurveRotationY"]
  SETTABLEKS R51 R50 K340 ["rotationY"]
  GETTABLEKS R51 R7 K69 ["CurveRotationZ"]
  SETTABLEKS R51 R50 K341 ["rotationZ"]
  GETTABLEKS R51 R7 K165 ["DialogMainButton"]
  SETTABLEKS R51 R50 K314 ["selected"]
  GETTABLEKS R51 R7 K150 ["BrightText"]
  SETTABLEKS R51 R50 K342 ["xAxis"]
  GETTABLEKS R51 R7 K70 ["CurveEditorButton"]
  SETTABLEKS R51 R50 K343 ["curveEditorButton"]
  GETTABLEKS R51 R7 K72 ["DopeSheetButton"]
  SETTABLEKS R51 R50 K344 ["dopesheetButton"]
  GETTABLEKS R51 R7 K150 ["BrightText"]
  SETTABLEKS R51 R50 K345 ["tangentControlColor"]
  LOADK R51 K93 ["loop"]
  SETTABLEKS R51 R50 K346 ["tangentAutoButton"]
  LOADK R51 K94 ["reverse"]
  SETTABLEKS R51 R50 K347 ["tangentDefinedButton"]
  DUPTABLE R51 K355 [{"faceCaptureDefaultButtonIconColor", "stopRecordingButtonImage", "errorIcon", "warningIcon"}]
  GETTABLEKS R52 R7 K76 ["FaceCaptureDefaultButtonIconColor"]
  SETTABLEKS R52 R51 K351 ["faceCaptureDefaultButtonIconColor"]
  GETTABLEKS R52 R7 K74 ["StopRecordingButtonImage"]
  SETTABLEKS R52 R51 K352 ["stopRecordingButtonImage"]
  LOADK R52 K162 ["rbxasset://textures/AnimationEditor/icon_error.png"]
  SETTABLEKS R52 R51 K353 ["errorIcon"]
  LOADK R52 K40 ["TrackPlusIconColor"]
  SETTABLEKS R52 R51 K354 ["warningIcon"]
  DUPTABLE R52 K356 [{"backgroundColor", "image"}]
  GETTABLEKS R53 R7 K165 ["DialogMainButton"]
  SETTABLEKS R53 R52 K127 ["backgroundColor"]
  LOADK R53 K101 ["borderColor"]
  SETTABLEKS R53 R52 K171 ["image"]
  DUPTABLE R53 K358 [{"backgroundColor"}]
  GETTABLEKS R54 R8 K36 ["Blue"]
  SETTABLEKS R54 R53 K127 ["backgroundColor"]
  DUPTABLE R54 K360 [{"filterButton"}]
  DUPTABLE R55 K362 [{"image", "size"}]
  LOADK R56 K107 ["rbxasset://textures/AnimationEditor/button_control_play.png"]
  SETTABLEKS R56 R55 K171 ["image"]
  GETIMPORT R56 K365 [UDim2.fromOffset]
  LOADN R57 16
  LOADN R58 16
  CALL R56 2 1
  SETTABLEKS R56 R55 K361 ["size"]
  SETTABLEKS R55 R54 K359 ["filterButton"]
  DUPTABLE R55 K371 [{"font", "textColor", "textSize", "buttonHeight", "radioButtonBackground", "radioButtonSelected", "contentPadding", "buttonPadding"}]
  GETIMPORT R56 K373 [Enum.Font.SourceSans]
  SETTABLEKS R56 R55 K179 ["font"]
  GETTABLEKS R56 R7 K114 ["MainText"]
  SETTABLEKS R56 R55 K121 ["textColor"]
  LOADN R56 15
  SETTABLEKS R56 R55 K123 ["textSize"]
  LOADN R56 20
  SETTABLEKS R56 R55 K366 ["buttonHeight"]
  LOADK R56 K118 ["InputFieldBorder"]
  SETTABLEKS R56 R55 K367 ["radioButtonBackground"]
  LOADK R56 K119 ["itemColor"]
  SETTABLEKS R56 R55 K368 ["radioButtonSelected"]
  LOADN R56 16
  SETTABLEKS R56 R55 K369 ["contentPadding"]
  LOADN R56 6
  SETTABLEKS R56 R55 K370 ["buttonPadding"]
  NEWTABLE R56 64 0
  GETIMPORT R57 K373 [Enum.Font.SourceSans]
  SETTABLEKS R57 R56 K179 ["font"]
  GETTABLEKS R57 R7 K148 ["MainBackground"]
  SETTABLEKS R57 R56 K127 ["backgroundColor"]
  GETTABLEKS R57 R7 K117 ["Border"]
  SETTABLEKS R57 R56 K101 ["borderColor"]
  SETTABLEKS R21 R56 K376 ["playbackTheme"]
  SETTABLEKS R22 R56 K377 ["dropdownTheme"]
  SETTABLEKS R23 R56 K378 ["trackTheme"]
  SETTABLEKS R54 R56 K379 ["eventTheme"]
  SETTABLEKS R27 R56 K380 ["keyframeTheme"]
  SETTABLEKS R41 R56 K381 ["eventMarker"]
  GETTABLEKS R57 R7 K165 ["DialogMainButton"]
  SETTABLEKS R57 R56 K382 ["selectionBox"]
  SETTABLEKS R42 R56 K383 ["zoomBarTheme"]
  SETTABLEKS R42 R56 K384 ["scrollBarTheme"]
  SETTABLEKS R43 R56 K385 ["timelineTheme"]
  SETTABLEKS R24 R56 K386 ["scaleControlsTheme"]
  SETTABLEKS R25 R56 K387 ["textBox"]
  SETTABLEKS R26 R56 K388 ["settingsButtonTheme"]
  SETTABLEKS R44 R56 K389 ["dialogTheme"]
  SETTABLEKS R45 R56 K390 ["toastTheme"]
  SETTABLEKS R46 R56 K391 ["startScreenTheme"]
  SETTABLEKS R47 R56 K392 ["gridTheme"]
  SETTABLEKS R48 R56 K393 ["ikTheme"]
  SETTABLEKS R28 R56 K394 ["checkBox"]
  SETTABLEKS R33 R56 K395 ["faceSliderTheme"]
  SETTABLEKS R34 R56 K396 ["faceSliderMaxValueTheme"]
  SETTABLEKS R35 R56 K397 ["faceDragBoxTheme"]
  SETTABLEKS R36 R56 K398 ["faceDragBoxMaxValueTheme"]
  SETTABLEKS R37 R56 K399 ["roundFrame"]
  SETTABLEKS R38 R56 K400 ["button"]
  SETTABLEKS R49 R56 K401 ["keyframe"]
  SETTABLEKS R52 R56 K402 ["scrubberTheme"]
  SETTABLEKS R51 R56 K403 ["faceCaptureTheme"]
  SETTABLEKS R50 R56 K404 ["curveTheme"]
  SETTABLEKS R53 R56 K405 ["progressBarTheme"]
  GETTABLEKS R57 R16 K204 ["Button"]
  SETTABLE R40 R56 R57
  SETTABLEKS R55 R56 K406 ["radioButton"]
  DUPCLOSURE R57 K407 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R20
  CAPTURE VAL R19
  CAPTURE VAL R56
  RETURN R57 1
