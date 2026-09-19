PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["camera"]
        3 GETTABLEKS                       R0 R0 K1 ["CFrame"]
        5 GETTABLEKS                       R0 R0 K2 ["LookVector"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["viewportFrameRef"]
       10 NAMECALL                         R1 R1 K4 ["getValue"]
       12 CALL                             R1 1 1
       13 JUMPIFNOT                        R1 ; [+2]
       14 SETTABLEKS                       R0 R1 K5 ["LightDirection"]
       16 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+5]
        6 GETUPVAL                         R2 0
        7 LOADB                            R3 1
        8 SETTABLEKS                       R3 R2 K4 ["isOrbitDragging"]
       10 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
       12 GETIMPORT                        R3 K6 [Enum.UserInputType.MouseButton3]
       14 JUMPIFEQ                         R2 R3 ; [+7]
       16 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
       18 GETIMPORT                        R3 K8 [Enum.UserInputType.MouseButton2]
       20 JUMPIFNOTEQ                      R2 R3 ; [+10]
       22 GETUPVAL                         R2 0
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K9 ["props"]
       26 GETTABLEKS                       R4 R4 K10 ["DisablePan"]
       28 NOT                              R3 R4
       29 SETTABLEKS                       R3 R2 K11 ["isPanDragging"]
       31 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+16]
        6 GETUPVAL                         R2 0
        7 LOADB                            R3 0
        8 SETTABLEKS                       R3 R2 K4 ["isOrbitDragging"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K5 ["doubleClickDetector"]
       13 NAMECALL                         R2 R2 K6 ["isDoubleClick"]
       15 CALL                             R2 1 1
       16 JUMPIFNOT                        R2 ; [+4]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K7 ["centerCamera"]
       20 CALL                             R2 0 0
       21 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
       23 GETIMPORT                        R3 K9 [Enum.UserInputType.MouseButton3]
       25 JUMPIFEQ                         R2 R3 ; [+7]
       27 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
       29 GETIMPORT                        R3 K11 [Enum.UserInputType.MouseButton2]
       31 JUMPIFNOTEQ                      R2 R3 ; [+5]
       33 GETUPVAL                         R2 0
       34 LOADB                            R3 0
       35 SETTABLEKS                       R3 R2 K12 ["isPanDragging"]
       37 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R2 R3 ; [+5]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["isOrbitDragging"]
        9 JUMPIF                           R2 ; [+4]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K5 ["isPanDragging"]
       13 JUMPIFNOT                        R2 ; [+99]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K6 ["camera"]
       17 GETTABLEKS                       R3 R2 K7 ["Focus"]
       19 GETTABLEKS                       R6 R2 K8 ["CFrame"]
       21 NAMECALL                         R4 R3 K9 ["ToObjectSpace"]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K4 ["isOrbitDragging"]
       27 JUMPIFNOT                        R5 ; [+22]
       28 GETIMPORT                        R5 K11 [CFrame.fromAxisAngle]
       30 GETTABLEKS                       R6 R4 K12 ["RightVector"]
       32 GETTABLEKS                       R8 R1 K14 ["Delta"]
       34 GETTABLEKS                       R8 R8 K15 ["y"]
       36 MULK                             R7 R8 K13 [-0.01]
       37 CALL                             R5 2 1
       38 MUL                              R4 R5 R4
       39 GETIMPORT                        R5 K11 [CFrame.fromAxisAngle]
       41 LOADK                            R6 K16 [{0, 1, 0}]
       42 GETTABLEKS                       R8 R1 K14 ["Delta"]
       44 GETTABLEKS                       R8 R8 K17 ["x"]
       46 MULK                             R7 R8 K13 [-0.01]
       47 CALL                             R5 2 1
       48 MUL                              R4 R5 R4
       49 JUMP                             ; [+49]
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R5 R5 K5 ["isPanDragging"]
       53 JUMPIFNOT                        R5 ; [+45]
       54 GETTABLEKS                       R6 R4 K18 ["p"]
       56 GETTABLEKS                       R7 R3 K18 ["p"]
       58 SUB                              R5 R6 R7
       59 GETTABLEKS                       R5 R5 K19 ["magnitude"]
       61 GETUPVAL                         R7 1
       62 GETTABLEKS                       R7 R7 K20 ["isNaN"]
       64 MOVE                             R8 R5
       65 CALL                             R7 1 1
       66 JUMPIFNOT                        R7 ; [+2]
       67 LOADN                            R6 0
       68 JUMP                             ; [+1]
       69 MOVE                             R6 R5
       70 MOVE                             R5 R6
       71 LOADK                            R7 K21 [0.1]
       72 MULK                             R8 R5 K21 [0.1]
       73 MUL                              R6 R7 R8
       74 GETTABLEKS                       R9 R4 K22 ["upVector"]
       76 GETTABLEKS                       R9 R9 K23 ["Unit"]
       78 GETTABLEKS                       R10 R1 K14 ["Delta"]
       80 GETTABLEKS                       R10 R10 K15 ["y"]
       82 MUL                              R8 R9 R10
       83 MUL                              R7 R8 R6
       84 GETTABLEKS                       R11 R4 K24 ["rightVector"]
       86 GETTABLEKS                       R11 R11 K23 ["Unit"]
       88 MINUS                            R10 R11
       89 GETTABLEKS                       R11 R1 K14 ["Delta"]
       91 GETTABLEKS                       R11 R11 K17 ["x"]
       93 MUL                              R9 R10 R11
       94 MUL                              R8 R9 R6
       95 ADD                              R9 R4 R7
       96 ADD                              R4 R9 R8
       97 ADD                              R9 R3 R7
       98 ADD                              R3 R9 R8
       99 GETTABLEKS                       R5 R2 K7 ["Focus"]
      101 MOVE                             R7 R4
      102 NAMECALL                         R5 R5 K25 ["ToWorldSpace"]
      104 CALL                             R5 2 1
      105 SETTABLEKS                       R5 R2 K8 ["CFrame"]
      107 SETTABLEKS                       R3 R2 K7 ["Focus"]
      109 GETUPVAL                         R5 0
      110 GETTABLEKS                       R5 R5 K26 ["updateViewportFrameLighting"]
      112 CALL                             R5 0 0
      113 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["camera"]
        3 GETTABLEKS                       R2 R1 K1 ["CFrame"]
        5 GETTABLEKS                       R3 R1 K2 ["Focus"]
        7 GETTABLEKS                       R5 R2 K3 ["p"]
        9 GETTABLEKS                       R6 R3 K3 ["p"]
       11 SUB                              R4 R5 R6
       12 GETTABLEKS                       R4 R4 K4 ["magnitude"]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K5 ["isNaN"]
       17 MOVE                             R7 R4
       18 CALL                             R6 1 1
       19 JUMPIFNOT                        R6 ; [+2]
       20 LOADN                            R5 0
       21 JUMP                             ; [+1]
       22 MOVE                             R5 R4
       23 MOVE                             R4 R5
       24 MULK                             R6 R4 K6 [0.1]
       25 FASTCALL2K                       MATH_MAX R6 K6 ; [+4]
       27 LOADK                            R7 K6 [0.1]
       28 GETIMPORT                        R5 K9 [math.max]
       30 CALL                             R5 2 1
       31 GETIMPORT                        R7 K11 [CFrame.new]
       33 LOADN                            R8 0
       34 LOADN                            R9 0
       35 MUL                              R10 R0 R5
       36 CALL                             R7 3 1
       37 MUL                              R6 R2 R7
       38 SETTABLEKS                       R6 R1 K1 ["CFrame"]
       40 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["zoomCamera"]
        3 LOADN                            R1 -1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["zoomCamera"]
        3 LOADN                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["viewportFrameModel"]
        3 LOADK                            R3 K1 ["Model"]
        4 NAMECALL                         R1 R0 K2 ["IsA"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+10]
        8 NAMECALL                         R1 R0 K3 ["GetBoundingBox"]
       10 CALL                             R1 1 1
       11 GETTABLEKS                       R5 R1 K4 ["Position"]
       13 MINUS                            R4 R5
       14 NAMECALL                         R2 R0 K5 ["TranslateBy"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0
       18 GETTABLEKS                       R2 R0 K6 ["CFrame"]
       20 GETTABLEKS                       R3 R0 K6 ["CFrame"]
       22 GETTABLEKS                       R3 R3 K4 ["Position"]
       24 SUB                              R1 R2 R3
       25 SETTABLEKS                       R1 R0 K6 ["CFrame"]
       27 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["viewportFrameModel"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["props"]
        6 GETTABLEKS                       R1 R1 K2 ["InitialDistance"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["camera"]
       11 LOADNIL                          R3
       12 LOADK                            R6 K4 ["Model"]
       13 NAMECALL                         R4 R0 K5 ["IsA"]
       15 CALL                             R4 2 1
       16 JUMPIFNOT                        R4 ; [+5]
       17 NAMECALL                         R4 R0 K6 ["GetExtentsSize"]
       19 CALL                             R4 1 1
       20 MOVE                             R3 R4
       21 JUMP                             ; [+2]
       22 GETTABLEKS                       R3 R0 K7 ["Size"]
       24 MOVE                             R5 R1
       25 JUMPIF                           R5 ; [+2]
       26 GETTABLEKS                       R5 R3 K9 ["magnitude"]
       28 MULK                             R4 R5 K8 [0.8]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K1 ["props"]
       32 GETTABLEKS                       R5 R5 K10 ["FocusDirection"]
       34 GETTABLEKS                       R5 R5 K11 ["Unit"]
       36 GETIMPORT                        R6 K14 [CFrame.new]
       38 CALL                             R6 0 1
       39 SETTABLEKS                       R6 R2 K15 ["Focus"]
       41 GETIMPORT                        R6 K14 [CFrame.new]
       43 MUL                              R7 R4 R5
       44 GETTABLEKS                       R8 R2 K15 ["Focus"]
       46 GETTABLEKS                       R8 R8 K16 ["Position"]
       48 CALL                             R6 2 1
       49 SETTABLEKS                       R6 R2 K12 ["CFrame"]
       51 GETUPVAL                         R6 0
       52 GETTABLEKS                       R6 R6 K17 ["updateViewportFrameLighting"]
       54 CALL                             R6 0 0
       55 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isOrbitDragging"]
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["isPanDragging"]
        6 LOADB                            R1 0
        7 SETTABLEKS                       R1 R0 K2 ["initialCenter"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["new"]
       12 CALL                             R1 0 1
       13 SETTABLEKS                       R1 R0 K4 ["doubleClickDetector"]
       15 NEWTABLE                         R1 0 0
       17 SETTABLEKS                       R1 R0 K5 ["previewAvatar"]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K6 ["createRef"]
       22 CALL                             R1 0 1
       23 SETTABLEKS                       R1 R0 K7 ["viewportFrameRef"]
       25 GETTABLEKS                       R1 R0 K8 ["props"]
       27 GETTABLEKS                       R1 R1 K9 ["Camera"]
       29 JUMPIF                           R1 ; [+8]
       30 GETIMPORT                        R2 K11 [Instance.new]
       32 LOADK                            R3 K9 ["Camera"]
       33 CALL                             R2 1 1
       34 MOVE                             R1 R2
       35 LOADK                            R2 K12 ["PreviewRenderModelCamera"]
       36 SETTABLEKS                       R2 R1 K13 ["Name"]
       38 SETTABLEKS                       R1 R0 K14 ["camera"]
       40 LOADNIL                          R2
       41 SETTABLEKS                       R2 R0 K15 ["viewportFrameModel"]
       43 LOADNIL                          R2
       44 SETTABLEKS                       R2 R0 K16 ["worldModel"]
       46 NEWCLOSURE                       R2 P0
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R2 R0 K17 ["updateViewportFrameLighting"]
       50 NEWCLOSURE                       R2 P1
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R2 R0 K18 ["onInputBegan"]
       54 NEWCLOSURE                       R2 P2
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R2 R0 K19 ["onInputEnded"]
       58 NEWCLOSURE                       R2 P3
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U2
       61 SETTABLEKS                       R2 R0 K20 ["onInputChanged"]
       63 NEWCLOSURE                       R2 P4
       64 CAPTURE                          VAL R0
       65 CAPTURE                          UPVAL U2
       66 SETTABLEKS                       R2 R0 K21 ["zoomCamera"]
       68 NEWCLOSURE                       R2 P5
       69 CAPTURE                          VAL R0
       70 SETTABLEKS                       R2 R0 K22 ["onMouseWheelBackward"]
       72 NEWCLOSURE                       R2 P6
       73 CAPTURE                          VAL R0
       74 SETTABLEKS                       R2 R0 K23 ["onMouseWheelForward"]
       76 NEWCLOSURE                       R2 P7
       77 CAPTURE                          VAL R0
       78 SETTABLEKS                       R2 R0 K24 ["centerModel"]
       80 NEWCLOSURE                       R2 P8
       81 CAPTURE                          VAL R0
       82 SETTABLEKS                       R2 R0 K25 ["centerCamera"]
       84 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PreviewAvatar"]
        4 GETTABLEKS                       R1 R1 K2 ["model"]
        6 GETTABLEKS                       R2 R0 K3 ["viewportFrameModel"]
        8 JUMPIFEQKNIL                     R2 ; [+6]
       10 GETTABLEKS                       R2 R0 K3 ["viewportFrameModel"]
       12 LOADNIL                          R3
       13 SETTABLEKS                       R3 R2 K4 ["Parent"]
       15 LOADK                            R4 K5 ["Model"]
       16 NAMECALL                         R2 R1 K6 ["IsA"]
       18 CALL                             R2 2 1
       19 JUMPIF                           R2 ; [+5]
       20 LOADK                            R4 K7 ["BasePart"]
       21 NAMECALL                         R2 R1 K6 ["IsA"]
       23 CALL                             R2 2 1
       24 JUMPIFNOT                        R2 ; [+3]
       25 SETTABLEKS                       R1 R0 K3 ["viewportFrameModel"]
       27 JUMP                             ; [+10]
       28 GETIMPORT                        R2 K10 [Instance.new]
       30 LOADK                            R3 K5 ["Model"]
       31 CALL                             R2 1 1
       32 SETTABLEKS                       R2 R0 K3 ["viewportFrameModel"]
       34 GETTABLEKS                       R2 R0 K3 ["viewportFrameModel"]
       36 SETTABLEKS                       R2 R1 K4 ["Parent"]
       38 NEWTABLE                         R2 0 1
       40 GETTABLEKS                       R3 R0 K0 ["props"]
       42 GETTABLEKS                       R3 R3 K1 ["PreviewAvatar"]
       44 SETLIST                          R2 R3 1 [1]
       46 SETTABLEKS                       R2 R0 K11 ["previewAvatar"]
       48 GETTABLEKS                       R2 R0 K12 ["viewportFrameRef"]
       50 NAMECALL                         R2 R2 K13 ["getValue"]
       52 CALL                             R2 1 1
       53 JUMPIFNOT                        R2 ; [+48]
       54 GETTABLEKS                       R3 R0 K14 ["worldModel"]
       56 JUMPIF                           R3 ; [+6]
       57 GETIMPORT                        R3 K10 [Instance.new]
       59 LOADK                            R4 K15 ["WorldModel"]
       60 CALL                             R3 1 1
       61 SETTABLEKS                       R3 R0 K14 ["worldModel"]
       63 GETTABLEKS                       R3 R0 K14 ["worldModel"]
       65 SETTABLEKS                       R2 R3 K4 ["Parent"]
       67 GETTABLEKS                       R3 R0 K3 ["viewportFrameModel"]
       69 GETTABLEKS                       R4 R0 K14 ["worldModel"]
       71 SETTABLEKS                       R4 R3 K4 ["Parent"]
       73 GETTABLEKS                       R3 R0 K16 ["initialCenter"]
       75 JUMPIF                           R3 ; [+10]
       76 GETTABLEKS                       R3 R0 K17 ["centerModel"]
       78 CALL                             R3 0 0
       79 GETTABLEKS                       R3 R0 K18 ["centerCamera"]
       81 CALL                             R3 0 0
       82 LOADB                            R3 1
       83 SETTABLEKS                       R3 R0 K16 ["initialCenter"]
       85 JUMP                             ; [+16]
       86 GETTABLEKS                       R3 R0 K0 ["props"]
       88 GETTABLEKS                       R3 R3 K19 ["RecenterModelOnUpdate"]
       90 JUMPIFNOT                        R3 ; [+3]
       91 GETTABLEKS                       R3 R0 K17 ["centerModel"]
       93 CALL                             R3 0 0
       94 GETTABLEKS                       R3 R0 K0 ["props"]
       96 GETTABLEKS                       R3 R3 K20 ["RecenterCameraOnUpdate"]
       98 JUMPIFNOT                        R3 ; [+3]
       99 GETTABLEKS                       R3 R0 K18 ["centerCamera"]
      101 CALL                             R3 0 0
      102 GETTABLEKS                       R3 R0 K0 ["props"]
      104 GETTABLEKS                       R3 R3 K21 ["PreviewContext"]
      106 NAMECALL                         R3 R3 K22 ["getAnimationTargetChangedSignal"]
      108 CALL                             R3 1 1
      109 NAMECALL                         R3 R3 K23 ["Fire"]
      111 CALL                             R3 1 0
      112 RETURN                           R0 0

PROTO_11:
        0 NAMECALL                         R1 R0 K0 ["updateViewportModel"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R1 K0 ["PreviewAvatar"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R3 K0 ["PreviewAvatar"]
        6 JUMPIFEQ                         R2 R3 ; [+4]
        8 NAMECALL                         R2 R0 K2 ["updateViewportModel"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["viewportFrameModel"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["viewportFrameModel"]
        5 LOADNIL                          R2
        6 SETTABLEKS                       R2 R1 K1 ["Parent"]
        8 GETTABLEKS                       R1 R0 K2 ["worldModel"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R1 R0 K2 ["worldModel"]
       13 NAMECALL                         R1 R1 K3 ["Destroy"]
       15 CALL                             R1 1 0
       16 GETTABLEKS                       R1 R0 K4 ["camera"]
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETTABLEKS                       R1 R0 K4 ["camera"]
       21 NAMECALL                         R1 R1 K3 ["Destroy"]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["Position"]
        6 GETTABLEKS                       R4 R1 K3 ["Size"]
        8 GETTABLEKS                       R5 R1 K4 ["Ambient"]
       10 GETTABLEKS                       R6 R1 K5 ["LightColor"]
       12 GETTABLEKS                       R7 R0 K6 ["camera"]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K7 ["createElement"]
       17 LOADK                            R9 K8 ["ViewportFrame"]
       18 NEWTABLE                         R10 16 0
       20 SETTABLEKS                       R2 R10 K1 ["LayoutOrder"]
       22 SETTABLEKS                       R3 R10 K2 ["Position"]
       24 SETTABLEKS                       R4 R10 K3 ["Size"]
       26 LOADN                            R11 1
       27 SETTABLEKS                       R11 R10 K9 ["BackgroundTransparency"]
       29 SETTABLEKS                       R5 R10 K4 ["Ambient"]
       31 SETTABLEKS                       R6 R10 K5 ["LightColor"]
       33 SETTABLEKS                       R7 R10 K10 ["CurrentCamera"]
       35 GETUPVAL                         R11 0
       36 GETTABLEKS                       R11 R11 K11 ["Ref"]
       38 GETTABLEKS                       R12 R0 K12 ["viewportFrameRef"]
       40 SETTABLE                         R12 R10 R11
       41 GETUPVAL                         R11 0
       42 GETTABLEKS                       R11 R11 K13 ["Event"]
       44 GETTABLEKS                       R11 R11 K14 ["MouseEnter"]
       46 GETTABLEKS                       R12 R1 K15 ["OnMouseEnter"]
       48 SETTABLE                         R12 R10 R11
       49 GETUPVAL                         R11 0
       50 GETTABLEKS                       R11 R11 K13 ["Event"]
       52 GETTABLEKS                       R11 R11 K16 ["MouseLeave"]
       54 GETTABLEKS                       R12 R1 K17 ["OnMouseLeave"]
       56 SETTABLE                         R12 R10 R11
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R11 R11 K13 ["Event"]
       60 GETTABLEKS                       R11 R11 K18 ["MouseWheelForward"]
       62 GETTABLEKS                       R12 R0 K19 ["onMouseWheelForward"]
       64 SETTABLE                         R12 R10 R11
       65 GETUPVAL                         R11 0
       66 GETTABLEKS                       R11 R11 K13 ["Event"]
       68 GETTABLEKS                       R11 R11 K20 ["MouseWheelBackward"]
       70 GETTABLEKS                       R12 R0 K21 ["onMouseWheelBackward"]
       72 SETTABLE                         R12 R10 R11
       73 GETUPVAL                         R11 0
       74 GETTABLEKS                       R11 R11 K13 ["Event"]
       76 GETTABLEKS                       R11 R11 K22 ["InputBegan"]
       78 GETTABLEKS                       R12 R0 K23 ["onInputBegan"]
       80 SETTABLE                         R12 R10 R11
       81 GETUPVAL                         R11 0
       82 GETTABLEKS                       R11 R11 K13 ["Event"]
       84 GETTABLEKS                       R11 R11 K24 ["InputEnded"]
       86 GETTABLEKS                       R12 R0 K25 ["onInputEnded"]
       88 SETTABLE                         R12 R10 R11
       89 GETUPVAL                         R11 0
       90 GETTABLEKS                       R11 R11 K13 ["Event"]
       92 GETTABLEKS                       R11 R11 K26 ["InputChanged"]
       94 GETTABLEKS                       R12 R0 K27 ["onInputChanged"]
       96 SETTABLE                         R12 R10 R11
       97 CALL                             R8 2 -1
       98 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Framework"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R1 K6 ["Roact"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R2 K7 ["ContextServices"]
       21 GETTABLEKS                       R5 R4 K8 ["withContext"]
       23 GETIMPORT                        R6 K4 [require]
       25 GETTABLEKS                       R7 R0 K9 ["Contexts"]
       27 GETTABLEKS                       R7 R7 K10 ["PreviewContext"]
       29 CALL                             R6 1 1
       30 GETIMPORT                        R7 K4 [require]
       32 GETIMPORT                        R8 K1 [script]
       34 GETTABLEKS                       R8 R8 K2 ["Parent"]
       36 GETTABLEKS                       R8 R8 K11 ["PreviewAnimationPlayback"]
       38 CALL                             R7 1 1
       39 GETTABLEKS                       R8 R2 K12 ["Util"]
       41 GETTABLEKS                       R9 R8 K13 ["Typecheck"]
       43 GETTABLEKS                       R10 R8 K14 ["Math"]
       45 GETTABLEKS                       R11 R8 K15 ["DoubleClickDetector"]
       47 GETTABLEKS                       R12 R3 K16 ["PureComponent"]
       49 LOADK                            R14 K17 ["PreviewRenderModel"]
       50 NAMECALL                         R12 R12 K18 ["extend"]
       52 CALL                             R12 2 1
       53 GETTABLEKS                       R13 R9 K19 ["wrap"]
       55 MOVE                             R14 R12
       56 GETIMPORT                        R15 K1 [script]
       58 CALL                             R13 2 0
       59 DUPTABLE                         R13 K27 [{["RecenterCameraOnUpdate"] = True, ["RecenterModelOnUpdate"] = True, ["FocusDirection"] = {1, 1, 1}, ["Ambient"], ["LightColor"]}]
       60 GETIMPORT                        R14 K30 [Color3.new]
       62 LOADK                            R15 K31 [0.4]
       63 LOADK                            R16 K31 [0.4]
       64 LOADK                            R17 K31 [0.4]
       65 CALL                             R14 3 1
       66 SETTABLEKS                       R14 R13 K25 ["Ambient"]
       68 GETIMPORT                        R14 K30 [Color3.new]
       70 LOADN                            R15 1
       71 LOADN                            R16 1
       72 LOADN                            R17 1
       73 CALL                             R14 3 1
       74 SETTABLEKS                       R14 R13 K26 ["LightColor"]
       76 SETTABLEKS                       R13 R12 K32 ["defaultProps"]
       78 DUPCLOSURE                       R13 K33 [PROTO_9]
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R10
       82 SETTABLEKS                       R13 R12 K34 ["init"]
       84 DUPCLOSURE                       R13 K35 [PROTO_10]
       85 SETTABLEKS                       R13 R12 K36 ["updateViewportModel"]
       87 DUPCLOSURE                       R13 K37 [PROTO_11]
       88 SETTABLEKS                       R13 R12 K38 ["didMount"]
       90 DUPCLOSURE                       R13 K39 [PROTO_12]
       91 SETTABLEKS                       R13 R12 K40 ["didUpdate"]
       93 DUPCLOSURE                       R13 K41 [PROTO_13]
       94 SETTABLEKS                       R13 R12 K42 ["willUnmount"]
       96 DUPCLOSURE                       R13 K43 [PROTO_14]
       97 CAPTURE                          VAL R3
       98 SETTABLEKS                       R13 R12 K44 ["render"]
      100 MOVE                             R13 R5
      101 DUPTABLE                         R14 K46 [{"PreviewContext", "Stylizer"}]
      102 SETTABLEKS                       R6 R14 K10 ["PreviewContext"]
      104 GETTABLEKS                       R15 R4 K45 ["Stylizer"]
      106 SETTABLEKS                       R15 R14 K45 ["Stylizer"]
      108 CALL                             R13 1 1
      109 MOVE                             R14 R12
      110 CALL                             R13 1 1
      111 MOVE                             R12 R13
      112 RETURN                           R12 1
