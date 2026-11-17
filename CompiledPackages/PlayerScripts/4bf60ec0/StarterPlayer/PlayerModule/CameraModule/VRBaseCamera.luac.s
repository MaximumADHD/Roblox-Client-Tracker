PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GamepadReset"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        7 GETIMPORT                        R0 K2 [setmetatable]
        9 CALL                             R0 2 1
       10 NEWTABLE                         R1 0 2
       12 LOADN                            R2 0
       13 LOADN                            R3 7
       14 SETLIST                          R1 R2 2 [1]
       16 SETTABLEKS                       R1 R0 K3 ["gamepadZoomLevels"]
       18 LOADN                            R1 1
       19 SETTABLEKS                       R1 R0 K4 ["headScale"]
       21 LOADN                            R3 7
       22 NAMECALL                         R1 R0 K5 ["SetCameraToSubjectDistance"]
       24 CALL                             R1 2 0
       25 LOADN                            R1 0
       26 SETTABLEKS                       R1 R0 K6 ["VRFadeResetTimer"]
       28 LOADN                            R1 0
       29 SETTABLEKS                       R1 R0 K7 ["VREdgeBlurTimer"]
       31 LOADB                            R1 1
       32 SETTABLEKS                       R1 R0 K8 ["needsReset"]
       34 LOADB                            R1 0
       35 SETTABLEKS                       R1 R0 K9 ["recentered"]
       37 GETUPVAL                         R1 2
       38 GETTABLEKS                       R1 R1 K10 ["Pressed"]
       40 NEWCLOSURE                       R3 P0
       41 CAPTURE                          VAL R0
       42 NAMECALL                         R1 R1 K11 ["Connect"]
       44 CALL                             R1 2 1
       45 SETTABLEKS                       R1 R0 K12 ["gamepadResetConnection"]
       47 NAMECALL                         R1 R0 K13 ["Reset"]
       49 CALL                             R1 1 0
       50 RETURN                           R0 1

PROTO_2:
        0 LOADN                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["stepRotateTimeout"]
        3 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R1 K0 ["VRBaseCamera"]
        1 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GamepadZoomPress"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 NAMECALL                         R1 R0 K1 ["GamepadReset"]
        7 CALL                             R1 1 0
        8 NAMECALL                         R1 R0 K2 ["ResetZoom"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 LOADN                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["stepRotateTimeout"]
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K1 ["needsReset"]
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetZoomParameters"]
        3 GETTABLEKS                       R2 R0 K1 ["currentSubjectDistance"]
        5 LOADN                            R3 0
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["ReleaseSpring"]
       10 CALL                             R1 0 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Reset"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R2 K3 [Enum.UserCFrame.Floor]
        2 JUMPIFNOTEQ                      R0 R2 ; [+5]
        4 GETUPVAL                         R2 0
        5 LOADB                            R3 1
        6 SETTABLEKS                       R3 R2 K4 ["recentered"]
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnEnabledChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K1 ["enabled"]
        7 JUMPIFNOT                        R1 ; [+27]
        8 GETUPVAL                         R1 1
        9 LOADB                            R2 1
       10 SETTABLEKS                       R2 R1 K2 ["Enabled"]
       12 GETUPVAL                         R1 2
       13 LOADK                            R3 K3 ["ThirdPersonFollowCamEnabled"]
       14 NAMECALL                         R1 R1 K4 ["GetPropertyChangedSignal"]
       16 CALL                             R1 2 1
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R0
       19 NAMECALL                         R1 R1 K5 ["Connect"]
       21 CALL                             R1 2 1
       22 SETTABLEKS                       R1 R0 K6 ["thirdPersonOptionChanged"]
       24 GETUPVAL                         R1 2
       25 GETTABLEKS                       R1 R1 K7 ["UserCFrameChanged"]
       27 NEWCLOSURE                       R3 P1
       28 CAPTURE                          VAL R0
       29 NAMECALL                         R1 R1 K5 ["Connect"]
       31 CALL                             R1 2 1
       32 SETTABLEKS                       R1 R0 K8 ["vrRecentered"]
       34 RETURN                           R0 0
       35 GETTABLEKS                       R1 R0 K9 ["inFirstPerson"]
       37 JUMPIFNOT                        R1 ; [+3]
       38 NAMECALL                         R1 R0 K10 ["GamepadZoomPress"]
       40 CALL                             R1 1 0
       41 GETTABLEKS                       R1 R0 K6 ["thirdPersonOptionChanged"]
       43 JUMPIFNOT                        R1 ; [+8]
       44 GETTABLEKS                       R1 R0 K6 ["thirdPersonOptionChanged"]
       46 NAMECALL                         R1 R1 K11 ["Disconnect"]
       48 CALL                             R1 1 0
       49 LOADNIL                          R1
       50 SETTABLEKS                       R1 R0 K6 ["thirdPersonOptionChanged"]
       52 GETTABLEKS                       R1 R0 K8 ["vrRecentered"]
       54 JUMPIFNOT                        R1 ; [+8]
       55 GETTABLEKS                       R1 R0 K8 ["vrRecentered"]
       57 NAMECALL                         R1 R1 K11 ["Disconnect"]
       59 CALL                             R1 1 0
       60 LOADNIL                          R1
       61 SETTABLEKS                       R1 R0 K8 ["vrRecentered"]
       63 GETTABLEKS                       R1 R0 K12 ["cameraHeadScaleChangedConn"]
       65 JUMPIFNOT                        R1 ; [+8]
       66 GETTABLEKS                       R1 R0 K12 ["cameraHeadScaleChangedConn"]
       68 NAMECALL                         R1 R1 K11 ["Disconnect"]
       70 CALL                             R1 1 0
       71 LOADNIL                          R1
       72 SETTABLEKS                       R1 R0 K12 ["cameraHeadScaleChangedConn"]
       74 GETUPVAL                         R1 1
       75 LOADB                            R2 0
       76 SETTABLEKS                       R2 R1 K2 ["Enabled"]
       78 GETUPVAL                         R1 3
       79 LOADK                            R3 K13 ["VRFade"]
       80 NAMECALL                         R1 R1 K14 ["FindFirstChild"]
       82 CALL                             R1 2 1
       83 JUMPIFNOT                        R1 ; [+3]
       84 LOADN                            R2 0
       85 SETTABLEKS                       R2 R1 K15 ["Brightness"]
       87 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["OnHeadScaleChanged"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnCurrentCameraChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K1 ["cameraHeadScaleChangedConn"]
        7 JUMPIFNOT                        R1 ; [+8]
        8 GETTABLEKS                       R1 R0 K1 ["cameraHeadScaleChangedConn"]
       10 NAMECALL                         R1 R1 K2 ["Disconnect"]
       12 CALL                             R1 1 0
       13 LOADNIL                          R1
       14 SETTABLEKS                       R1 R0 K1 ["cameraHeadScaleChangedConn"]
       16 GETIMPORT                        R1 K4 [workspace]
       18 GETTABLEKS                       R1 R1 K5 ["CurrentCamera"]
       20 JUMPIFNOT                        R1 ; [+14]
       21 LOADK                            R4 K6 ["HeadScale"]
       22 NAMECALL                         R2 R1 K7 ["GetPropertyChangedSignal"]
       24 CALL                             R2 2 1
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          VAL R0
       27 NAMECALL                         R2 R2 K8 ["Connect"]
       29 CALL                             R2 2 1
       30 SETTABLEKS                       R2 R0 K1 ["cameraHeadScaleChangedConn"]
       32 NAMECALL                         R2 R0 K9 ["OnHeadScaleChanged"]
       34 CALL                             R2 1 0
       35 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R1 K1 [workspace]
        2 GETTABLEKS                       R1 R1 K2 ["CurrentCamera"]
        4 GETTABLEKS                       R2 R1 K3 ["HeadScale"]
        6 GETTABLEKS                       R3 R0 K4 ["gamepadZoomLevels"]
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETTABLEKS                       R8 R0 K4 ["gamepadZoomLevels"]
       13 MUL                              R10 R7 R2
       14 GETTABLEKS                       R11 R0 K5 ["headScale"]
       16 DIV                              R9 R10 R11
       17 SETTABLE                         R9 R8 R6
       18 FORGLOOP                         R3 2 ; [-8]
       20 NAMECALL                         R7 R0 K6 ["GetCameraToSubjectDistance"]
       22 CALL                             R7 1 1
       23 MUL                              R6 R7 R2
       24 GETTABLEKS                       R7 R0 K5 ["headScale"]
       26 DIV                              R5 R6 R7
       27 NAMECALL                         R3 R0 K7 ["SetCameraToSubjectDistance"]
       29 CALL                             R3 2 0
       30 SETTABLEKS                       R2 R0 K5 ["headScale"]
       32 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R4 R0 K0 ["lastCameraFocus"]
        2 OR                               R3 R4 R1
        3 GETTABLEKS                       R5 R0 K1 ["cameraTranslationConstraints"]
        5 GETTABLEKS                       R5 R5 K2 ["x"]
        7 LOADN                            R7 1
        8 GETTABLEKS                       R9 R0 K1 ["cameraTranslationConstraints"]
       10 GETTABLEKS                       R9 R9 K3 ["y"]
       12 ADD                              R8 R9 R2
       13 FASTCALL2                        MATH_MIN R7 R8 ; [+3]
       15 GETIMPORT                        R6 K6 [math.min]
       17 CALL                             R6 2 1
       18 GETTABLEKS                       R7 R0 K1 ["cameraTranslationConstraints"]
       20 GETTABLEKS                       R7 R7 K7 ["z"]
       22 FASTCALL                         VECTOR ; [+2]
       23 GETIMPORT                        R4 K10 [Vector3.new]
       25 CALL                             R4 3 1
       26 SETTABLEKS                       R4 R0 K1 ["cameraTranslationConstraints"]
       28 LOADN                            R5 0
       29 NAMECALL                         R6 R0 K11 ["GetCameraHeight"]
       31 CALL                             R6 1 1
       32 LOADN                            R7 0
       33 FASTCALL                         VECTOR ; [+2]
       34 GETIMPORT                        R4 K10 [Vector3.new]
       36 CALL                             R4 3 1
       37 GETIMPORT                        R5 K13 [CFrame.new]
       39 GETTABLEKS                       R7 R1 K2 ["x"]
       41 GETTABLEKS                       R8 R3 K3 ["y"]
       43 GETTABLEKS                       R9 R1 K7 ["z"]
       45 FASTCALL                         VECTOR ; [+2]
       46 GETIMPORT                        R6 K10 [Vector3.new]
       48 CALL                             R6 3 1
       49 ADD                              R8 R1 R4
       50 GETTABLEKS                       R9 R0 K1 ["cameraTranslationConstraints"]
       52 GETTABLEKS                       R9 R9 K3 ["y"]
       54 NAMECALL                         R6 R6 K14 ["Lerp"]
       56 CALL                             R6 3 -1
       57 CALL                             R5 -1 1
       58 RETURN                           R5 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["VignetteEnabled"]
        3 JUMPIFNOTEQKB                    R1 FALSE ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K1 ["VRFade"]
        8 NAMECALL                         R1 R1 K2 ["FindFirstChild"]
       10 CALL                             R1 2 1
       11 JUMPIF                           R1 ; [+11]
       12 GETIMPORT                        R2 K5 [Instance.new]
       14 LOADK                            R3 K6 ["ColorCorrectionEffect"]
       15 CALL                             R2 1 1
       16 MOVE                             R1 R2
       17 LOADK                            R2 K1 ["VRFade"]
       18 SETTABLEKS                       R2 R1 K7 ["Name"]
       20 GETUPVAL                         R2 1
       21 SETTABLEKS                       R2 R1 K8 ["Parent"]
       23 LOADN                            R2 -1
       24 SETTABLEKS                       R2 R1 K9 ["Brightness"]
       26 LOADK                            R2 K10 [0.1]
       27 SETTABLEKS                       R2 R0 K11 ["VRFadeResetTimer"]
       29 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["VRFade"]
        2 NAMECALL                         R2 R2 K1 ["FindFirstChild"]
        4 CALL                             R2 2 1
        5 GETTABLEKS                       R3 R0 K2 ["VRFadeResetTimer"]
        7 LOADN                            R4 0
        8 JUMPIFNOTLT                      R4 R3 ; [+36]
       10 GETTABLEKS                       R5 R0 K2 ["VRFadeResetTimer"]
       12 SUB                              R4 R5 R1
       13 FASTCALL2K                       MATH_MAX R4 K3 ; [+4]
       15 LOADK                            R5 K3 [0]
       16 GETIMPORT                        R3 K6 [math.max]
       18 CALL                             R3 2 1
       19 SETTABLEKS                       R3 R0 K2 ["VRFadeResetTimer"]
       21 GETUPVAL                         R3 0
       22 LOADK                            R5 K0 ["VRFade"]
       23 NAMECALL                         R3 R3 K1 ["FindFirstChild"]
       25 CALL                             R3 2 1
       26 JUMPIFNOT                        R3 ; [+22]
       27 GETTABLEKS                       R4 R3 K7 ["Brightness"]
       29 LOADN                            R5 0
       30 JUMPIFNOTLT                      R4 R5 ; [+18]
       32 GETTABLEKS                       R6 R3 K7 ["Brightness"]
       34 MULK                             R7 R1 K8 [10]
       35 ADD                              R5 R6 R7
       36 FASTCALL2K                       MATH_MIN R5 K3 ; [+4]
       38 LOADK                            R6 K3 [0]
       39 GETIMPORT                        R4 K10 [math.min]
       41 CALL                             R4 2 1
       42 SETTABLEKS                       R4 R3 K7 ["Brightness"]
       44 RETURN                           R0 0
       45 JUMPIFNOT                        R2 ; [+3]
       46 LOADN                            R3 0
       47 SETTABLEKS                       R3 R2 K7 ["Brightness"]
       49 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K3 [Enum.UserCFrame.Head]
        3 NAMECALL                         R1 R1 K4 ["GetUserCFrame"]
        5 CALL                             R1 2 1
        6 GETIMPORT                        R3 K6 [workspace]
        8 GETTABLEKS                       R3 R3 K7 ["CurrentCamera"]
       10 GETTABLEKS                       R3 R3 K8 ["CFrame"]
       12 GETIMPORT                        R5 K10 [CFrame.new]
       14 GETTABLEKS                       R7 R1 K11 ["Position"]
       16 GETIMPORT                        R8 K6 [workspace]
       18 GETTABLEKS                       R8 R8 K7 ["CurrentCamera"]
       20 GETTABLEKS                       R8 R8 K12 ["HeadScale"]
       22 MUL                              R6 R7 R8
       23 CALL                             R5 1 1
       24 GETTABLEKS                       R7 R1 K11 ["Position"]
       26 SUB                              R6 R1 R7
       27 MUL                              R4 R5 R6
       28 MUL                              R2 R3 R4
       29 GETUPVAL                         R3 1
       30 GETIMPORT                        R6 K14 [CFrame.Angles]
       32 LOADN                            R7 0
       33 LOADK                            R8 K15 [3.141592653589793]
       34 LOADN                            R9 0
       35 CALL                             R6 3 1
       36 MUL                              R5 R2 R6
       37 GETTABLEKS                       R7 R2 K16 ["LookVector"]
       39 LOADK                            R9 K17 [1.05]
       40 GETIMPORT                        R10 K6 [workspace]
       42 GETTABLEKS                       R10 R10 K7 ["CurrentCamera"]
       44 GETTABLEKS                       R10 R10 K12 ["HeadScale"]
       46 MUL                              R8 R9 R10
       47 MUL                              R6 R7 R8
       48 ADD                              R4 R5 R6
       49 SETTABLEKS                       R4 R3 K8 ["CFrame"]
       51 GETUPVAL                         R3 1
       52 LOADK                            R5 K18 [{0.44, 0.47, 1}]
       53 GETIMPORT                        R6 K6 [workspace]
       55 GETTABLEKS                       R6 R6 K7 ["CurrentCamera"]
       57 GETTABLEKS                       R6 R6 K12 ["HeadScale"]
       59 MUL                              R4 R5 R6
       60 SETTABLEKS                       R4 R3 K19 ["Size"]
       62 RETURN                           R0 0

PROTO_17:
        0 JUMPIF                           R2 ; [+6]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["VignetteEnabled"]
        4 JUMPIFNOTEQKB                    R3 FALSE ; [+2]
        6 RETURN                           R0 0
        7 LOADNIL                          R3
        8 GETIMPORT                        R4 K2 [workspace]
       10 GETTABLEKS                       R4 R4 K3 ["CurrentCamera"]
       12 LOADK                            R6 K4 ["VRBlurPart"]
       13 NAMECALL                         R4 R4 K5 ["FindFirstChild"]
       15 CALL                             R4 2 1
       16 MOVE                             R3 R4
       17 JUMPIF                           R3 ; [+44]
       18 GETIMPORT                        R4 K8 [Instance.new]
       20 LOADK                            R5 K9 ["Part"]
       21 CALL                             R4 1 1
       22 MOVE                             R3 R4
       23 LOADK                            R4 K4 ["VRBlurPart"]
       24 SETTABLEKS                       R4 R3 K10 ["Name"]
       26 GETIMPORT                        R4 K2 [workspace]
       28 GETTABLEKS                       R4 R4 K3 ["CurrentCamera"]
       30 SETTABLEKS                       R4 R3 K11 ["Parent"]
       32 LOADB                            R4 0
       33 SETTABLEKS                       R4 R3 K12 ["CanTouch"]
       35 LOADB                            R4 0
       36 SETTABLEKS                       R4 R3 K13 ["CanCollide"]
       38 LOADB                            R4 0
       39 SETTABLEKS                       R4 R3 K14 ["CanQuery"]
       41 LOADB                            R4 1
       42 SETTABLEKS                       R4 R3 K15 ["Anchored"]
       44 LOADK                            R4 K16 [{0.44, 0.47, 1}]
       45 SETTABLEKS                       R4 R3 K17 ["Size"]
       47 LOADN                            R4 1
       48 SETTABLEKS                       R4 R3 K18 ["Transparency"]
       50 LOADB                            R4 0
       51 SETTABLEKS                       R4 R3 K19 ["CastShadow"]
       53 GETUPVAL                         R4 1
       54 GETTABLEKS                       R4 R4 K20 ["RenderStepped"]
       56 NEWCLOSURE                       R6 P0
       57 CAPTURE                          UPVAL U2
       58 CAPTURE                          REF R3
       59 NAMECALL                         R4 R4 K21 ["Connect"]
       61 CALL                             R4 2 0
       62 GETTABLEKS                       R4 R1 K22 ["PlayerGui"]
       64 LOADK                            R6 K23 ["VRBlurScreen"]
       65 NAMECALL                         R4 R4 K5 ["FindFirstChild"]
       67 CALL                             R4 2 1
       68 LOADNIL                          R5
       69 JUMPIFNOT                        R4 ; [+5]
       70 LOADK                            R8 K24 ["VRBlur"]
       71 NAMECALL                         R6 R4 K5 ["FindFirstChild"]
       73 CALL                             R6 2 1
       74 MOVE                             R5 R6
       75 JUMPIF                           R5 ; [+81]
       76 JUMPIF                           R4 ; [+5]
       77 GETIMPORT                        R6 K8 [Instance.new]
       79 LOADK                            R7 K25 ["SurfaceGui"]
       80 CALL                             R6 1 1
       81 MOVE                             R4 R6
       82 LOADK                            R6 K23 ["VRBlurScreen"]
       83 SETTABLEKS                       R6 R4 K10 ["Name"]
       85 GETTABLEKS                       R6 R1 K22 ["PlayerGui"]
       87 SETTABLEKS                       R6 R4 K11 ["Parent"]
       89 SETTABLEKS                       R3 R4 K26 ["Adornee"]
       91 GETIMPORT                        R6 K8 [Instance.new]
       93 LOADK                            R7 K27 ["ImageLabel"]
       94 CALL                             R6 1 1
       95 MOVE                             R5 R6
       96 LOADK                            R6 K24 ["VRBlur"]
       97 SETTABLEKS                       R6 R5 K10 ["Name"]
       99 SETTABLEKS                       R4 R5 K11 ["Parent"]
      101 LOADK                            R6 K28 ["rbxasset://textures/ui/VR/edgeBlur.png"]
      102 SETTABLEKS                       R6 R5 K29 ["Image"]
      104 GETIMPORT                        R6 K31 [Vector2.new]
      106 LOADK                            R7 K32 [0.5]
      107 LOADK                            R8 K32 [0.5]
      108 CALL                             R6 2 1
      109 SETTABLEKS                       R6 R5 K33 ["AnchorPoint"]
      111 GETIMPORT                        R6 K35 [UDim2.new]
      113 LOADK                            R7 K32 [0.5]
      114 LOADN                            R8 0
      115 LOADK                            R9 K32 [0.5]
      116 LOADN                            R10 0
      117 CALL                             R6 4 1
      118 SETTABLEKS                       R6 R5 K36 ["Position"]
      120 GETIMPORT                        R8 K2 [workspace]
      122 GETTABLEKS                       R8 R8 K3 ["CurrentCamera"]
      124 GETTABLEKS                       R8 R8 K39 ["ViewportSize"]
      126 GETTABLEKS                       R8 R8 K40 ["X"]
      128 MULK                             R7 R8 K38 [2.3]
      129 DIVK                             R6 R7 K37 [512]
      130 GETIMPORT                        R9 K2 [workspace]
      132 GETTABLEKS                       R9 R9 K3 ["CurrentCamera"]
      134 GETTABLEKS                       R9 R9 K39 ["ViewportSize"]
      136 GETTABLEKS                       R9 R9 K41 ["Y"]
      138 MULK                             R8 R9 K38 [2.3]
      139 DIVK                             R7 R8 K37 [512]
      140 GETIMPORT                        R8 K43 [UDim2.fromScale]
      142 MOVE                             R9 R6
      143 MOVE                             R10 R7
      144 CALL                             R8 2 1
      145 SETTABLEKS                       R8 R5 K17 ["Size"]
      147 LOADN                            R8 1
      148 SETTABLEKS                       R8 R5 K44 ["BackgroundTransparency"]
      150 LOADB                            R8 1
      151 SETTABLEKS                       R8 R5 K45 ["Active"]
      153 GETIMPORT                        R8 K49 [Enum.ScaleType.Stretch]
      155 SETTABLEKS                       R8 R5 K47 ["ScaleType"]
      157 LOADB                            R6 1
      158 SETTABLEKS                       R6 R5 K50 ["Visible"]
      160 LOADN                            R6 0
      161 SETTABLEKS                       R6 R5 K51 ["ImageTransparency"]
      163 LOADK                            R6 K52 [0.14]
      164 SETTABLEKS                       R6 R0 K53 ["VREdgeBlurTimer"]
      166 CLOSEUPVALS                      R3
      167 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R3 R1 K0 ["PlayerGui"]
        2 LOADK                            R5 K1 ["VRBlurScreen"]
        3 NAMECALL                         R3 R3 K2 ["FindFirstChild"]
        5 CALL                             R3 2 1
        6 LOADNIL                          R4
        7 JUMPIFNOT                        R3 ; [+5]
        8 LOADK                            R7 K3 ["VRBlur"]
        9 NAMECALL                         R5 R3 K2 ["FindFirstChild"]
       11 CALL                             R5 2 1
       12 MOVE                             R4 R5
       13 JUMPIFNOT                        R4 ; [+38]
       14 GETTABLEKS                       R5 R0 K4 ["VREdgeBlurTimer"]
       16 LOADN                            R6 0
       17 JUMPIFNOTLT                      R6 R5 ; [+31]
       19 GETTABLEKS                       R6 R0 K4 ["VREdgeBlurTimer"]
       21 SUB                              R5 R6 R2
       22 SETTABLEKS                       R5 R0 K4 ["VREdgeBlurTimer"]
       24 GETTABLEKS                       R5 R1 K0 ["PlayerGui"]
       26 LOADK                            R7 K1 ["VRBlurScreen"]
       27 NAMECALL                         R5 R5 K2 ["FindFirstChild"]
       29 CALL                             R5 2 1
       30 JUMPIFNOT                        R5 ; [+21]
       31 LOADK                            R8 K3 ["VRBlur"]
       32 NAMECALL                         R6 R5 K2 ["FindFirstChild"]
       34 CALL                             R6 2 1
       35 JUMPIFNOT                        R6 ; [+16]
       36 GETTABLEKS                       R10 R0 K4 ["VREdgeBlurTimer"]
       38 LOADK                            R11 K7 [0.01]
       39 LOADK                            R12 K8 [0.14]
       40 FASTCALL                         MATH_CLAMP ; [+2]
       41 GETIMPORT                        R9 K11 [math.clamp]
       43 CALL                             R9 3 1
       44 MULK                             R8 R9 K6 [7.142857142857142]
       45 SUBRK                            R7 K5 [1] R8
       46 SETTABLEKS                       R7 R6 K12 ["ImageTransparency"]
       48 RETURN                           R0 0
       49 LOADB                            R5 0
       50 SETTABLEKS                       R5 R4 K13 ["Visible"]
       52 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["inFirstPerson"]
        2 JUMPIF                           R1 ; [+5]
        3 LOADK                            R2 K1 [0.25881904510252074]
        4 GETTABLEKS                       R3 R0 K2 ["currentSubjectDistance"]
        6 MUL                              R1 R2 R3
        7 RETURN                           R1 1
        8 LOADN                            R1 0
        9 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetSubjectCFrame"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETIMPORT                        R2 K2 [workspace]
        7 GETTABLEKS                       R2 R2 K3 ["CurrentCamera"]
        9 MOVE                             R3 R2
       10 JUMPIFNOT                        R3 ; [+2]
       11 GETTABLEKS                       R3 R2 K4 ["CameraSubject"]
       13 JUMPIF                           R3 ; [+1]
       14 RETURN                           R1 1
       15 LOADK                            R6 K5 ["Humanoid"]
       16 NAMECALL                         R4 R3 K6 ["IsA"]
       18 CALL                             R4 2 1
       19 JUMPIFNOT                        R4 ; [+16]
       20 NAMECALL                         R5 R3 K7 ["GetState"]
       22 CALL                             R5 1 1
       23 GETIMPORT                        R6 K11 [Enum.HumanoidStateType.Dead]
       25 JUMPIFEQ                         R5 R6 ; [+2]
       27 LOADB                            R4 0 +1
       28 LOADB                            R4 1
       29 JUMPIFNOT                        R4 ; [+6]
       30 GETTABLEKS                       R5 R0 K12 ["lastSubject"]
       32 JUMPIFNOTEQ                      R3 R5 ; [+3]
       34 GETTABLEKS                       R1 R0 K13 ["lastSubjectCFrame"]
       36 JUMPIFNOT                        R1 ; [+2]
       37 SETTABLEKS                       R1 R0 K13 ["lastSubjectCFrame"]
       39 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetSubjectPosition"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETIMPORT                        R2 K2 [game]
        7 GETTABLEKS                       R2 R2 K3 ["Workspace"]
        9 GETTABLEKS                       R2 R2 K4 ["CurrentCamera"]
       11 MOVE                             R3 R2
       12 JUMPIFNOT                        R3 ; [+2]
       13 GETTABLEKS                       R3 R2 K5 ["CameraSubject"]
       15 JUMPIFNOT                        R3 ; [+39]
       16 LOADK                            R6 K6 ["Humanoid"]
       17 NAMECALL                         R4 R3 K7 ["IsA"]
       19 CALL                             R4 2 1
       20 JUMPIFNOT                        R4 ; [+17]
       21 NAMECALL                         R5 R3 K8 ["GetState"]
       23 CALL                             R5 1 1
       24 GETIMPORT                        R6 K12 [Enum.HumanoidStateType.Dead]
       26 JUMPIFEQ                         R5 R6 ; [+2]
       28 LOADB                            R4 0 +1
       29 LOADB                            R4 1
       30 JUMPIFNOT                        R4 ; [+26]
       31 GETTABLEKS                       R5 R0 K13 ["lastSubject"]
       33 JUMPIFNOTEQ                      R3 R5 ; [+23]
       35 GETTABLEKS                       R1 R0 K14 ["lastSubjectPosition"]
       37 JUMP                             ; [+19]
       38 LOADK                            R6 K15 ["VehicleSeat"]
       39 NAMECALL                         R4 R3 K7 ["IsA"]
       41 CALL                             R4 2 1
       42 JUMPIFNOT                        R4 ; [+14]
       43 GETTABLEKS                       R4 R3 K16 ["CFrame"]
       45 GETTABLEKS                       R4 R4 K17 ["Position"]
       47 GETTABLEKS                       R5 R3 K16 ["CFrame"]
       49 LOADK                            R7 K18 [{0, 4, 0}]
       50 NAMECALL                         R5 R5 K19 ["vectorToWorldSpace"]
       52 CALL                             R5 2 1
       53 ADD                              R1 R4 R5
       54 JUMP                             ; [+2]
       55 LOADNIL                          R4
       56 RETURN                           R4 1
       57 SETTABLEKS                       R1 R0 K14 ["lastSubjectPosition"]
       59 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getRotation"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 LOADN                            R3 0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["VRSmoothRotationEnabled"]
        9 JUMPIFNOT                        R4 ; [+3]
       10 GETTABLEKS                       R3 R2 K2 ["X"]
       12 RETURN                           R3 1
       13 GETTABLEKS                       R5 R2 K2 ["X"]
       15 FASTCALL1                        MATH_ABS R5 ; [+2]
       16 GETIMPORT                        R4 K5 [math.abs]
       18 CALL                             R4 1 1
       19 LOADK                            R5 K6 [0.03]
       20 JUMPIFNOTLT                      R5 R4 ; [+31]
       22 GETTABLEKS                       R4 R0 K7 ["stepRotateTimeout"]
       24 LOADN                            R5 0
       25 JUMPIFNOTLT                      R5 R4 ; [+6]
       27 GETTABLEKS                       R4 R0 K7 ["stepRotateTimeout"]
       29 SUB                              R4 R4 R1
       30 SETTABLEKS                       R4 R0 K7 ["stepRotateTimeout"]
       32 GETTABLEKS                       R4 R0 K7 ["stepRotateTimeout"]
       34 LOADN                            R5 0
       35 JUMPIFNOTLE                      R4 R5 ; [+28]
       37 LOADN                            R3 1
       38 GETTABLEKS                       R4 R2 K2 ["X"]
       40 LOADN                            R5 0
       41 JUMPIFNOTLT                      R4 R5 ; [+2]
       43 LOADN                            R3 -1
       44 MULK                             R3 R3 K8 [0.5235987755982988]
       45 NAMECALL                         R4 R0 K9 ["StartFadeFromBlack"]
       47 CALL                             R4 1 0
       48 LOADK                            R4 K10 [0.25]
       49 SETTABLEKS                       R4 R0 K7 ["stepRotateTimeout"]
       51 RETURN                           R3 1
       52 GETTABLEKS                       R5 R2 K2 ["X"]
       54 FASTCALL1                        MATH_ABS R5 ; [+2]
       55 GETIMPORT                        R4 K5 [math.abs]
       57 CALL                             R4 1 1
       58 LOADK                            R5 K11 [0.02]
       59 JUMPIFNOTLT                      R4 R5 ; [+4]
       61 LOADN                            R4 0
       62 SETTABLEKS                       R4 R0 K7 ["stepRotateTimeout"]
       64 RETURN                           R3 1

PROTO_23:
        0 JUMPIFNOT                        R1 ; [+11]
        1 GETTABLEKS                       R2 R1 K0 ["IsInFirstPerson"]
        3 JUMPIFNOT                        R2 ; [+8]
        4 NAMECALL                         R2 R1 K0 ["IsInFirstPerson"]
        6 CALL                             R2 1 1
        7 JUMPIFNOT                        R2 ; [+4]
        8 LOADN                            R4 0
        9 NAMECALL                         R2 R0 K1 ["SetCameraToSubjectDistance"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["VRService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Players"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K5 ["LocalPlayer"]
       15 GETIMPORT                        R3 K1 [game]
       17 LOADK                            R5 K6 ["Lighting"]
       18 NAMECALL                         R3 R3 K3 ["GetService"]
       20 CALL                             R3 2 1
       21 GETIMPORT                        R4 K1 [game]
       23 LOADK                            R6 K7 ["RunService"]
       24 NAMECALL                         R4 R4 K3 ["GetService"]
       26 CALL                             R4 2 1
       27 GETIMPORT                        R5 K9 [UserSettings]
       29 CALL                             R5 0 1
       30 LOADK                            R7 K10 ["UserGameSettings"]
       31 NAMECALL                         R5 R5 K3 ["GetService"]
       33 CALL                             R5 2 1
       34 GETIMPORT                        R6 K12 [require]
       36 GETIMPORT                        R7 K14 [script]
       38 GETTABLEKS                       R7 R7 K15 ["Parent"]
       40 LOADK                            R9 K16 ["CameraInput"]
       41 NAMECALL                         R7 R7 K17 ["WaitForChild"]
       43 CALL                             R7 2 -1
       44 CALL                             R6 -1 1
       45 GETIMPORT                        R7 K12 [require]
       47 GETIMPORT                        R8 K14 [script]
       49 GETTABLEKS                       R8 R8 K15 ["Parent"]
       51 LOADK                            R10 K18 ["ZoomController"]
       52 NAMECALL                         R8 R8 K17 ["WaitForChild"]
       54 CALL                             R8 2 -1
       55 CALL                             R7 -1 1
       56 GETIMPORT                        R8 K12 [require]
       58 GETIMPORT                        R9 K14 [script]
       60 GETTABLEKS                       R9 R9 K15 ["Parent"]
       62 GETTABLEKS                       R9 R9 K15 ["Parent"]
       64 LOADK                            R11 K19 ["CommonUtils"]
       65 NAMECALL                         R9 R9 K17 ["WaitForChild"]
       67 CALL                             R9 2 -1
       68 CALL                             R8 -1 1
       69 GETTABLEKS                       R9 R8 K20 ["get"]
       71 LOADK                            R10 K21 ["FlagUtil"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K14 [script]
       75 GETTABLEKS                       R10 R10 K15 ["Parent"]
       77 GETTABLEKS                       R10 R10 K15 ["Parent"]
       79 LOADK                            R12 K22 ["InputContexts"]
       80 NAMECALL                         R10 R10 K17 ["WaitForChild"]
       82 CALL                             R10 2 1
       83 LOADK                            R13 K23 ["CameraContext"]
       84 NAMECALL                         R11 R10 K17 ["WaitForChild"]
       86 CALL                             R11 2 1
       87 LOADK                            R14 K24 ["CameraGamepadResetAction"]
       88 NAMECALL                         R12 R11 K17 ["WaitForChild"]
       90 CALL                             R12 2 1
       91 GETIMPORT                        R13 K12 [require]
       93 GETIMPORT                        R14 K14 [script]
       95 GETTABLEKS                       R14 R14 K15 ["Parent"]
       97 LOADK                            R16 K25 ["BaseCamera"]
       98 NAMECALL                         R14 R14 K17 ["WaitForChild"]
      100 CALL                             R14 2 -1
      101 CALL                             R13 -1 1
      102 NEWTABLE                         R15 32 0
      104 FASTCALL2                        SETMETATABLE R15 R13 ; [+4]
      106 MOVE                             R16 R13
      107 GETIMPORT                        R14 K27 [setmetatable]
      109 CALL                             R14 2 1
      110 SETTABLEKS                       R14 R14 K28 ["__index"]
      112 DUPCLOSURE                       R15 K29 [PROTO_1]
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R12
      116 SETTABLEKS                       R15 R14 K30 ["new"]
      118 DUPCLOSURE                       R15 K31 [PROTO_2]
      119 SETTABLEKS                       R15 R14 K32 ["Reset"]
      121 DUPCLOSURE                       R15 K33 [PROTO_3]
      122 SETTABLEKS                       R15 R14 K34 ["GetModuleName"]
      124 DUPCLOSURE                       R15 K35 [PROTO_4]
      125 CAPTURE                          VAL R13
      126 SETTABLEKS                       R15 R14 K36 ["GamepadZoomPress"]
      128 DUPCLOSURE                       R15 K37 [PROTO_5]
      129 SETTABLEKS                       R15 R14 K38 ["GamepadReset"]
      131 DUPCLOSURE                       R15 K39 [PROTO_6]
      132 CAPTURE                          VAL R7
      133 SETTABLEKS                       R15 R14 K40 ["ResetZoom"]
      135 DUPCLOSURE                       R15 K41 [PROTO_9]
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R0
      139 CAPTURE                          VAL R3
      140 SETTABLEKS                       R15 R14 K42 ["OnEnabledChanged"]
      142 DUPCLOSURE                       R15 K43 [PROTO_11]
      143 CAPTURE                          VAL R13
      144 SETTABLEKS                       R15 R14 K44 ["OnCurrentCameraChanged"]
      146 DUPCLOSURE                       R15 K45 [PROTO_12]
      147 SETTABLEKS                       R15 R14 K46 ["OnHeadScaleChanged"]
      149 DUPCLOSURE                       R15 K47 [PROTO_13]
      150 SETTABLEKS                       R15 R14 K48 ["GetVRFocus"]
      152 DUPCLOSURE                       R15 K49 [PROTO_14]
      153 CAPTURE                          VAL R5
      154 CAPTURE                          VAL R3
      155 SETTABLEKS                       R15 R14 K50 ["StartFadeFromBlack"]
      157 DUPCLOSURE                       R15 K51 [PROTO_15]
      158 CAPTURE                          VAL R3
      159 SETTABLEKS                       R15 R14 K52 ["UpdateFadeFromBlack"]
      161 DUPCLOSURE                       R15 K53 [PROTO_17]
      162 CAPTURE                          VAL R5
      163 CAPTURE                          VAL R4
      164 CAPTURE                          VAL R0
      165 SETTABLEKS                       R15 R14 K54 ["StartVREdgeBlur"]
      167 DUPCLOSURE                       R15 K55 [PROTO_18]
      168 SETTABLEKS                       R15 R14 K56 ["UpdateEdgeBlur"]
      170 DUPCLOSURE                       R15 K57 [PROTO_19]
      171 SETTABLEKS                       R15 R14 K58 ["GetCameraHeight"]
      173 DUPCLOSURE                       R15 K59 [PROTO_20]
      174 CAPTURE                          VAL R13
      175 SETTABLEKS                       R15 R14 K60 ["GetSubjectCFrame"]
      177 DUPCLOSURE                       R15 K61 [PROTO_21]
      178 CAPTURE                          VAL R13
      179 SETTABLEKS                       R15 R14 K62 ["GetSubjectPosition"]
      181 DUPCLOSURE                       R15 K63 [PROTO_22]
      182 CAPTURE                          VAL R6
      183 CAPTURE                          VAL R5
      184 SETTABLEKS                       R15 R14 K64 ["getRotation"]
      186 DUPCLOSURE                       R15 K65 [PROTO_23]
      187 SETTABLEKS                       R15 R14 K66 ["HandleSubjectDistance"]
      189 RETURN                           R14 1
