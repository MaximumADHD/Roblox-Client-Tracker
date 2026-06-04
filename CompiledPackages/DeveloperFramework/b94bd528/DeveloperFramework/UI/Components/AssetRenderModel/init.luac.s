PROTO_0:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        3 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        5 JUMPIFEQ                         R2 R3 ; [+9]
        7 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        9 GETIMPORT                        R3 K5 [Enum.UserInputType.MouseButton3]
       11 JUMPIFEQ                         R2 R3 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R2 1
        1 GETTABLEKS                       R3 R0 K0 ["UserInputType"]
        3 GETIMPORT                        R4 K3 [Enum.UserInputType.MouseButton2]
        5 JUMPIFEQ                         R3 R4 ; [+9]
        7 LOADB                            R2 0
        8 GETTABLEKS                       R3 R0 K0 ["UserInputType"]
       10 GETIMPORT                        R4 K5 [Enum.UserInputType.MouseButton1]
       12 JUMPIFNOTEQ                      R3 R4 ; [+2]
       14 MOVE                             R2 R1
       15 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["DisablePan"]
        5 LOADB                            R2 1
        6 GETTABLEKS                       R4 R1 K2 ["UserInputType"]
        8 GETIMPORT                        R5 K5 [Enum.UserInputType.MouseButton2]
       10 JUMPIFEQ                         R4 R5 ; [+9]
       12 LOADB                            R2 0
       13 GETTABLEKS                       R4 R1 K2 ["UserInputType"]
       15 GETIMPORT                        R5 K7 [Enum.UserInputType.MouseButton1]
       17 JUMPIFNOTEQ                      R4 R5 ; [+2]
       19 MOVE                             R2 R3
       20 JUMPIFNOT                        R2 ; [+4]
       21 GETUPVAL                         R2 0
       22 LOADB                            R3 1
       23 SETTABLEKS                       R3 R2 K8 ["isOrbitDragging"]
       25 LOADB                            R2 1
       26 GETTABLEKS                       R3 R1 K2 ["UserInputType"]
       28 GETIMPORT                        R4 K7 [Enum.UserInputType.MouseButton1]
       30 JUMPIFEQ                         R3 R4 ; [+9]
       32 GETTABLEKS                       R3 R1 K2 ["UserInputType"]
       34 GETIMPORT                        R4 K10 [Enum.UserInputType.MouseButton3]
       36 JUMPIFEQ                         R3 R4 ; [+2]
       38 LOADB                            R2 0 +1
       39 LOADB                            R2 1
       40 JUMPIFNOT                        R2 ; [+9]
       41 GETUPVAL                         R2 0
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R4 R4 K0 ["props"]
       45 GETTABLEKS                       R4 R4 K1 ["DisablePan"]
       47 NOT                              R3 R4
       48 SETTABLEKS                       R3 R2 K11 ["isPanDragging"]
       50 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["DisablePan"]
        5 LOADB                            R2 1
        6 GETTABLEKS                       R4 R1 K2 ["UserInputType"]
        8 GETIMPORT                        R5 K5 [Enum.UserInputType.MouseButton2]
       10 JUMPIFEQ                         R4 R5 ; [+9]
       12 LOADB                            R2 0
       13 GETTABLEKS                       R4 R1 K2 ["UserInputType"]
       15 GETIMPORT                        R5 K7 [Enum.UserInputType.MouseButton1]
       17 JUMPIFNOTEQ                      R4 R5 ; [+2]
       19 MOVE                             R2 R3
       20 JUMPIFNOT                        R2 ; [+23]
       21 GETUPVAL                         R2 0
       22 LOADB                            R3 0
       23 SETTABLEKS                       R3 R2 K8 ["isOrbitDragging"]
       25 GETIMPORT                        R2 K10 [tick]
       27 CALL                             R2 0 1
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K12 ["lastClickTime"]
       31 ADDK                             R3 R4 K11 [0.25]
       32 JUMPIFNOTLT                      R2 R3 ; [+5]
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R2 R2 K13 ["centerCamera"]
       37 CALL                             R2 0 0
       38 GETUPVAL                         R2 0
       39 GETIMPORT                        R3 K10 [tick]
       41 CALL                             R3 0 1
       42 SETTABLEKS                       R3 R2 K12 ["lastClickTime"]
       44 LOADB                            R2 1
       45 GETTABLEKS                       R3 R1 K2 ["UserInputType"]
       47 GETIMPORT                        R4 K7 [Enum.UserInputType.MouseButton1]
       49 JUMPIFEQ                         R3 R4 ; [+9]
       51 GETTABLEKS                       R3 R1 K2 ["UserInputType"]
       53 GETIMPORT                        R4 K15 [Enum.UserInputType.MouseButton3]
       55 JUMPIFEQ                         R3 R4 ; [+2]
       57 LOADB                            R2 0 +1
       58 LOADB                            R2 1
       59 JUMPIFNOT                        R2 ; [+4]
       60 GETUPVAL                         R2 0
       61 LOADB                            R3 0
       62 SETTABLEKS                       R3 R2 K16 ["isPanDragging"]
       64 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K1 ["camera"]
        3 GETTABLEKS                       R3 R3 K2 ["FieldOfView"]
        5 DIVK                             R2 R3 K0 [2]
        6 FASTCALL1                        MATH_RAD R2 ; [+3]
        7 MOVE                             R7 R2
        8 GETIMPORT                        R6 K5 [math.rad]
       10 CALL                             R6 1 1
       11 FASTCALL1                        MATH_TAN R6 ; [+2]
       12 GETIMPORT                        R5 K7 [math.tan]
       14 CALL                             R5 1 1
       15 MUL                              R4 R0 R5
       16 MULK                             R3 R4 K0 [2]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K8 ["viewportFrameRef"]
       20 NAMECALL                         R4 R4 K9 ["getValue"]
       22 CALL                             R4 1 1
       23 GETTABLEKS                       R4 R4 K10 ["AbsoluteSize"]
       25 GETTABLEKS                       R6 R4 K11 ["X"]
       27 GETTABLEKS                       R7 R4 K12 ["Y"]
       29 DIV                              R5 R6 R7
       30 GETTABLEKS                       R9 R1 K11 ["X"]
       32 MUL                              R8 R3 R9
       33 GETTABLEKS                       R9 R4 K11 ["X"]
       35 DIV                              R7 R8 R9
       36 MUL                              R6 R7 R5
       37 GETTABLEKS                       R9 R1 K12 ["Y"]
       39 MUL                              R8 R3 R9
       40 GETTABLEKS                       R9 R4 K12 ["Y"]
       42 DIV                              R7 R8 R9
       43 RETURN                           R6 2

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R2 R3 ; [+5]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["isOrbitDragging"]
        9 JUMPIF                           R2 ; [+4]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K5 ["isPanDragging"]
       13 JUMPIFNOT                        R2 ; [+100]
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
       49 JUMP                             ; [+54]
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R5 R5 K5 ["isPanDragging"]
       53 JUMPIFNOT                        R5 ; [+50]
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
       71 GETUPVAL                         R6 0
       72 GETTABLEKS                       R6 R6 K21 ["getCameraMovementDistance"]
       74 MOVE                             R7 R5
       75 GETTABLEKS                       R8 R1 K14 ["Delta"]
       77 CALL                             R6 2 2
       78 GETTABLEKS                       R10 R4 K22 ["rightVector"]
       80 GETTABLEKS                       R10 R10 K23 ["Unit"]
       82 MUL                              R9 R10 R6
       83 GETUPVAL                         R10 0
       84 GETTABLEKS                       R10 R10 K24 ["props"]
       86 GETTABLEKS                       R10 R10 K25 ["PanSpeedMultiplier"]
       88 MUL                              R8 R9 R10
       89 GETTABLEKS                       R11 R4 K26 ["upVector"]
       91 GETTABLEKS                       R11 R11 K23 ["Unit"]
       93 MUL                              R10 R11 R7
       94 GETUPVAL                         R11 0
       95 GETTABLEKS                       R11 R11 K24 ["props"]
       97 GETTABLEKS                       R11 R11 K25 ["PanSpeedMultiplier"]
       99 MUL                              R9 R10 R11
      100 ADD                              R10 R4 R9
      101 SUB                              R4 R10 R8
      102 ADD                              R10 R3 R9
      103 SUB                              R3 R10 R8
      104 GETTABLEKS                       R5 R2 K7 ["Focus"]
      106 MOVE                             R7 R4
      107 NAMECALL                         R5 R5 K27 ["ToWorldSpace"]
      109 CALL                             R5 2 1
      110 SETTABLEKS                       R5 R2 K8 ["CFrame"]
      112 SETTABLEKS                       R3 R2 K7 ["Focus"]
      114 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["zoomCamera"]
        3 LOADN                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["zoomCamera"]
        3 LOADN                            R1 255
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["ResetCameraPosition"]
        5 JUMPIFEQKNIL                     R0 ; [+21]
        7 GETUPVAL                         R0 1
        8 GETIMPORT                        R1 K4 [CFrame.new]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["props"]
       13 GETTABLEKS                       R2 R2 K5 ["FocusPosition"]
       15 CALL                             R1 1 1
       16 SETTABLEKS                       R1 R0 K6 ["Focus"]
       18 GETUPVAL                         R0 1
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K0 ["props"]
       22 GETTABLEKS                       R1 R1 K1 ["ResetCameraPosition"]
       24 SETTABLEKS                       R1 R0 K2 ["CFrame"]
       26 RETURN                           R0 0
       27 GETUPVAL                         R0 0
       28 GETTABLEKS                       R0 R0 K7 ["viewportFrameModel"]
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R1 R1 K0 ["props"]
       33 GETTABLEKS                       R1 R1 K8 ["InitialDistance"]
       35 LOADNIL                          R2
       36 LOADK                            R5 K9 ["Model"]
       37 NAMECALL                         R3 R0 K10 ["IsA"]
       39 CALL                             R3 2 1
       40 JUMPIFNOT                        R3 ; [+5]
       41 NAMECALL                         R3 R0 K11 ["GetExtentsSize"]
       43 CALL                             R3 1 1
       44 MOVE                             R2 R3
       45 JUMP                             ; [+2]
       46 GETTABLEKS                       R2 R0 K12 ["Size"]
       48 MOVE                             R4 R1
       49 JUMPIF                           R4 ; [+2]
       50 GETTABLEKS                       R4 R2 K14 ["magnitude"]
       52 MULK                             R3 R4 K13 [0.8]
       53 GETUPVAL                         R4 0
       54 GETTABLEKS                       R4 R4 K0 ["props"]
       56 GETTABLEKS                       R4 R4 K15 ["FocusDirection"]
       58 GETTABLEKS                       R4 R4 K16 ["Unit"]
       60 GETUPVAL                         R5 1
       61 GETIMPORT                        R6 K4 [CFrame.new]
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R7 R7 K0 ["props"]
       66 GETTABLEKS                       R7 R7 K5 ["FocusPosition"]
       68 CALL                             R6 1 1
       69 SETTABLEKS                       R6 R5 K6 ["Focus"]
       71 GETUPVAL                         R5 1
       72 GETIMPORT                        R6 K4 [CFrame.new]
       74 GETUPVAL                         R8 1
       75 GETTABLEKS                       R8 R8 K6 ["Focus"]
       77 GETTABLEKS                       R8 R8 K17 ["Position"]
       79 MUL                              R9 R3 R4
       80 ADD                              R7 R8 R9
       81 GETUPVAL                         R8 1
       82 GETTABLEKS                       R8 R8 K6 ["Focus"]
       84 GETTABLEKS                       R8 R8 K17 ["Position"]
       86 CALL                             R6 2 1
       87 SETTABLEKS                       R6 R5 K2 ["CFrame"]
       89 RETURN                           R0 0

PROTO_11:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isOrbitDragging"]
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["isPanDragging"]
        6 LOADN                            R1 0
        7 SETTABLEKS                       R1 R0 K2 ["lastClickTime"]
        9 LOADB                            R1 0
       10 SETTABLEKS                       R1 R0 K3 ["initialCenter"]
       12 GETUPVAL                         R1 0
       13 CALL                             R1 0 1
       14 JUMPIFNOT                        R1 ; [+5]
       15 GETTABLEKS                       R1 R0 K4 ["props"]
       17 GETTABLEKS                       R1 R1 K5 ["ForwardRef"]
       19 JUMPIF                           R1 ; [+6]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K6 ["createRef"]
       23 CALL                             R1 0 1
       24 SETTABLEKS                       R1 R0 K7 ["viewportFrameRef"]
       26 LOADNIL                          R1
       27 GETTABLEKS                       R2 R0 K4 ["props"]
       29 GETTABLEKS                       R2 R2 K8 ["Camera"]
       31 JUMPIFNOT                        R2 ; [+5]
       32 GETTABLEKS                       R2 R0 K4 ["props"]
       34 GETTABLEKS                       R1 R2 K8 ["Camera"]
       36 JUMP                             ; [+8]
       37 GETIMPORT                        R2 K11 [Instance.new]
       39 LOADK                            R3 K8 ["Camera"]
       40 CALL                             R2 1 1
       41 MOVE                             R1 R2
       42 LOADK                            R2 K12 ["AssetRenderModelCamera"]
       43 SETTABLEKS                       R2 R1 K13 ["Name"]
       45 SETTABLEKS                       R1 R0 K14 ["camera"]
       47 GETTABLEKS                       R2 R0 K4 ["props"]
       49 GETTABLEKS                       R2 R2 K15 ["FieldOfView"]
       51 JUMPIFEQKNIL                     R2 ; [+7]
       53 GETTABLEKS                       R2 R0 K4 ["props"]
       55 GETTABLEKS                       R2 R2 K15 ["FieldOfView"]
       57 SETTABLEKS                       R2 R1 K15 ["FieldOfView"]
       59 LOADNIL                          R2
       60 SETTABLEKS                       R2 R0 K16 ["viewportFrameModel"]
       62 NEWCLOSURE                       R2 P0
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R2 R0 K17 ["onInputBegan"]
       66 NEWCLOSURE                       R2 P1
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R2 R0 K18 ["onInputEnded"]
       70 NEWCLOSURE                       R2 P2
       71 CAPTURE                          VAL R0
       72 SETTABLEKS                       R2 R0 K19 ["getCameraMovementDistance"]
       74 NEWCLOSURE                       R2 P3
       75 CAPTURE                          VAL R0
       76 CAPTURE                          UPVAL U2
       77 SETTABLEKS                       R2 R0 K20 ["onInputChanged"]
       79 NEWCLOSURE                       R2 P4
       80 CAPTURE                          VAL R0
       81 CAPTURE                          UPVAL U2
       82 SETTABLEKS                       R2 R0 K21 ["zoomCamera"]
       84 NEWCLOSURE                       R2 P5
       85 CAPTURE                          VAL R0
       86 SETTABLEKS                       R2 R0 K22 ["onMouseWheelBackward"]
       88 NEWCLOSURE                       R2 P6
       89 CAPTURE                          VAL R0
       90 SETTABLEKS                       R2 R0 K23 ["onMouseWheelForward"]
       92 NEWCLOSURE                       R2 P7
       93 CAPTURE                          VAL R0
       94 SETTABLEKS                       R2 R0 K24 ["centerModel"]
       96 NEWCLOSURE                       R2 P8
       97 CAPTURE                          VAL R0
       98 CAPTURE                          REF R1
       99 SETTABLEKS                       R2 R0 K25 ["centerCamera"]
      101 CLOSEUPVALS                      R1
      102 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Model"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["ShouldClone"]
        8 JUMPIF                           R2 ; [+9]
        9 GETTABLEKS                       R2 R0 K3 ["viewportFrameModel"]
       11 JUMPIFEQKNIL                     R2 ; [+6]
       13 GETTABLEKS                       R2 R0 K3 ["viewportFrameModel"]
       15 LOADNIL                          R3
       16 SETTABLEKS                       R3 R2 K4 ["Parent"]
       18 LOADK                            R4 K1 ["Model"]
       19 NAMECALL                         R2 R1 K5 ["IsA"]
       21 CALL                             R2 2 1
       22 JUMPIF                           R2 ; [+5]
       23 LOADK                            R4 K6 ["BasePart"]
       24 NAMECALL                         R2 R1 K5 ["IsA"]
       26 CALL                             R2 2 1
       27 JUMPIFNOT                        R2 ; [+37]
       28 GETTABLEKS                       R3 R0 K0 ["props"]
       30 GETTABLEKS                       R3 R3 K2 ["ShouldClone"]
       32 JUMPIFNOT                        R3 ; [+4]
       33 NAMECALL                         R2 R1 K7 ["Clone"]
       35 CALL                             R2 1 1
       36 JUMP                             ; [+1]
       37 MOVE                             R2 R1
       38 SETTABLEKS                       R2 R0 K3 ["viewportFrameModel"]
       40 GETTABLEKS                       R2 R0 K0 ["props"]
       42 GETTABLEKS                       R2 R2 K8 ["ShouldMuteModelSounds"]
       44 JUMPIFNOT                        R2 ; [+33]
       45 GETIMPORT                        R2 K10 [pairs]
       47 GETTABLEKS                       R3 R0 K3 ["viewportFrameModel"]
       49 NAMECALL                         R3 R3 K11 ["GetDescendants"]
       51 CALL                             R3 1 -1
       52 CALL                             R2 -1 3
       53 FORGPREP_NEXT                    R2
       54 LOADK                            R9 K12 ["Sound"]
       55 NAMECALL                         R7 R6 K5 ["IsA"]
       57 CALL                             R7 2 1
       58 JUMPIFNOT                        R7 ; [+3]
       59 LOADN                            R7 0
       60 SETTABLEKS                       R7 R6 K13 ["Volume"]
       62 FORGLOOP                         R2 2 ; [-9]
       64 JUMP                             ; [+13]
       65 GETIMPORT                        R2 K16 [Instance.new]
       67 LOADK                            R3 K1 ["Model"]
       68 CALL                             R2 1 1
       69 SETTABLEKS                       R2 R0 K3 ["viewportFrameModel"]
       71 NAMECALL                         R2 R1 K7 ["Clone"]
       73 CALL                             R2 1 1
       74 GETTABLEKS                       R3 R0 K3 ["viewportFrameModel"]
       76 SETTABLEKS                       R3 R2 K4 ["Parent"]
       78 GETUPVAL                         R3 0
       79 CALL                             R3 0 1
       80 JUMPIFNOT                        R3 ; [+13]
       81 GETTABLEKS                       R3 R0 K0 ["props"]
       83 GETTABLEKS                       R3 R3 K17 ["ForwardRef"]
       85 JUMPIFNOT                        R3 ; [+8]
       86 GETTABLEKS                       R2 R0 K0 ["props"]
       88 GETTABLEKS                       R2 R2 K17 ["ForwardRef"]
       90 NAMECALL                         R2 R2 K18 ["getValue"]
       92 CALL                             R2 1 1
       93 JUMP                             ; [+5]
       94 GETTABLEKS                       R2 R0 K19 ["viewportFrameRef"]
       96 NAMECALL                         R2 R2 K18 ["getValue"]
       98 CALL                             R2 1 1
       99 JUMPIFNOT                        R2 ; [+148]
      100 GETTABLEKS                       R3 R0 K0 ["props"]
      102 GETTABLEKS                       R3 R3 K2 ["ShouldClone"]
      104 JUMPIFNOT                        R3 ; [+4]
      105 NAMECALL                         R3 R2 K20 ["ClearAllChildren"]
      107 CALL                             R3 1 0
      108 JUMP                             ; [+9]
      109 NAMECALL                         R3 R2 K21 ["GetChildren"]
      111 CALL                             R3 1 3
      112 FORGPREP                         R3
      113 LOADNIL                          R8
      114 SETTABLEKS                       R8 R7 K4 ["Parent"]
      116 FORGLOOP                         R3 2 ; [-4]
      118 GETTABLEKS                       R3 R0 K0 ["props"]
      120 GETTABLEKS                       R3 R3 K22 ["OnViewModelLoaded"]
      122 JUMPIFNOT                        R3 ; [+7]
      123 GETTABLEKS                       R3 R0 K0 ["props"]
      125 GETTABLEKS                       R3 R3 K22 ["OnViewModelLoaded"]
      127 GETTABLEKS                       R4 R0 K3 ["viewportFrameModel"]
      129 CALL                             R3 1 0
      130 GETTABLEKS                       R3 R0 K3 ["viewportFrameModel"]
      132 SETTABLEKS                       R2 R3 K4 ["Parent"]
      134 GETTABLEKS                       R3 R0 K0 ["props"]
      136 GETTABLEKS                       R3 R3 K23 ["EnableSky"]
      138 JUMPIFNOT                        R3 ; [+46]
      139 GETTABLEKS                       R3 R0 K0 ["props"]
      141 GETTABLEKS                       R3 R3 K24 ["Stylizer"]
      143 GETIMPORT                        R4 K16 [Instance.new]
      145 LOADK                            R5 K25 ["Sky"]
      146 CALL                             R4 1 1
      147 GETTABLEKS                       R5 R3 K25 ["Sky"]
      149 GETTABLEKS                       R5 R5 K26 ["SkyboxBk"]
      151 SETTABLEKS                       R5 R4 K26 ["SkyboxBk"]
      153 GETTABLEKS                       R5 R3 K25 ["Sky"]
      155 GETTABLEKS                       R5 R5 K27 ["SkyboxDn"]
      157 SETTABLEKS                       R5 R4 K27 ["SkyboxDn"]
      159 GETTABLEKS                       R5 R3 K25 ["Sky"]
      161 GETTABLEKS                       R5 R5 K28 ["SkyboxFt"]
      163 SETTABLEKS                       R5 R4 K28 ["SkyboxFt"]
      165 GETTABLEKS                       R5 R3 K25 ["Sky"]
      167 GETTABLEKS                       R5 R5 K29 ["SkyboxLf"]
      169 SETTABLEKS                       R5 R4 K29 ["SkyboxLf"]
      171 GETTABLEKS                       R5 R3 K25 ["Sky"]
      173 GETTABLEKS                       R5 R5 K30 ["SkyboxRt"]
      175 SETTABLEKS                       R5 R4 K30 ["SkyboxRt"]
      177 GETTABLEKS                       R5 R3 K25 ["Sky"]
      179 GETTABLEKS                       R5 R5 K31 ["SkyboxUp"]
      181 SETTABLEKS                       R5 R4 K31 ["SkyboxUp"]
      183 SETTABLEKS                       R2 R4 K4 ["Parent"]
      185 GETTABLEKS                       R3 R0 K0 ["props"]
      187 GETTABLEKS                       R3 R3 K32 ["CornerRadius"]
      189 JUMPIFNOT                        R3 ; [+23]
      190 GETIMPORT                        R3 K16 [Instance.new]
      192 LOADK                            R4 K33 ["UICorner"]
      193 CALL                             R3 1 1
      194 GETTABLEKS                       R4 R0 K0 ["props"]
      196 GETTABLEKS                       R4 R4 K32 ["CornerRadius"]
      198 SETTABLEKS                       R4 R3 K32 ["CornerRadius"]
      200 LOADK                            R8 K33 ["UICorner"]
      201 NAMECALL                         R6 R2 K34 ["FindFirstChild"]
      203 CALL                             R6 2 1
      204 NOT                              R5 R6
      205 FASTCALL2K                       ASSERT R5 K35 ; [+4]
      207 LOADK                            R6 K35 ["ViewportFrame already has a UICorner child"]
      208 GETIMPORT                        R4 K37 [assert]
      210 CALL                             R4 2 0
      211 SETTABLEKS                       R2 R3 K4 ["Parent"]
      213 GETTABLEKS                       R3 R0 K38 ["initialCenter"]
      215 JUMPIF                           R3 ; [+10]
      216 GETTABLEKS                       R3 R0 K39 ["centerModel"]
      218 CALL                             R3 0 0
      219 GETTABLEKS                       R3 R0 K40 ["centerCamera"]
      221 CALL                             R3 0 0
      222 LOADB                            R3 1
      223 SETTABLEKS                       R3 R0 K38 ["initialCenter"]
      225 JUMP                             ; [+16]
      226 GETTABLEKS                       R3 R0 K0 ["props"]
      228 GETTABLEKS                       R3 R3 K41 ["RecenterModelOnUpdate"]
      230 JUMPIFNOT                        R3 ; [+3]
      231 GETTABLEKS                       R3 R0 K39 ["centerModel"]
      233 CALL                             R3 0 0
      234 GETTABLEKS                       R3 R0 K0 ["props"]
      236 GETTABLEKS                       R3 R3 K42 ["RecenterCameraOnUpdate"]
      238 JUMPIFNOT                        R3 ; [+3]
      239 GETTABLEKS                       R3 R0 K40 ["centerCamera"]
      241 CALL                             R3 0 0
      242 GETTABLEKS                       R3 R0 K0 ["props"]
      244 GETTABLEKS                       R3 R3 K43 ["ImageTransparency"]
      246 SETTABLEKS                       R3 R2 K43 ["ImageTransparency"]
      248 RETURN                           R0 0

PROTO_13:
        0 NAMECALL                         R1 R0 K0 ["updateViewportModel"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["FieldOfView"]
        4 GETTABLEKS                       R3 R1 K1 ["FieldOfView"]
        6 JUMPIFEQ                         R2 R3 ; [+15]
        8 GETTABLEKS                       R2 R0 K0 ["props"]
       10 GETTABLEKS                       R2 R2 K1 ["FieldOfView"]
       12 JUMPIFEQKNIL                     R2 ; [+9]
       14 GETTABLEKS                       R2 R0 K2 ["camera"]
       16 GETTABLEKS                       R3 R0 K0 ["props"]
       18 GETTABLEKS                       R3 R3 K1 ["FieldOfView"]
       20 SETTABLEKS                       R3 R2 K1 ["FieldOfView"]
       22 GETTABLEKS                       R2 R1 K3 ["Model"]
       24 GETTABLEKS                       R3 R0 K0 ["props"]
       26 GETTABLEKS                       R3 R3 K3 ["Model"]
       28 JUMPIFNOTEQ                      R2 R3 ; [+9]
       30 GETTABLEKS                       R2 R1 K4 ["EnableSky"]
       32 GETTABLEKS                       R3 R0 K0 ["props"]
       34 GETTABLEKS                       R3 R3 K4 ["EnableSky"]
       36 JUMPIFEQ                         R2 R3 ; [+4]
       38 NAMECALL                         R2 R0 K5 ["updateViewportModel"]
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["viewportFrameModel"]
        2 JUMPIFNOT                        R1 ; [+16]
        3 GETTABLEKS                       R1 R0 K1 ["props"]
        5 GETTABLEKS                       R1 R1 K2 ["ShouldClone"]
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETTABLEKS                       R1 R0 K0 ["viewportFrameModel"]
       10 NAMECALL                         R1 R1 K3 ["Destroy"]
       12 CALL                             R1 1 0
       13 JUMP                             ; [+5]
       14 GETTABLEKS                       R1 R0 K0 ["viewportFrameModel"]
       16 LOADNIL                          R2
       17 SETTABLEKS                       R2 R1 K4 ["Parent"]
       19 GETTABLEKS                       R1 R0 K5 ["camera"]
       21 JUMPIFNOT                        R1 ; [+5]
       22 GETTABLEKS                       R1 R0 K5 ["camera"]
       24 NAMECALL                         R1 R1 K3 ["Destroy"]
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["Position"]
        6 GETTABLEKS                       R4 R1 K3 ["Size"]
        8 JUMPIF                           R4 ; [+7]
        9 GETIMPORT                        R4 K6 [UDim2.new]
       11 LOADN                            R5 1
       12 LOADN                            R6 0
       13 LOADN                            R7 1
       14 LOADN                            R8 0
       15 CALL                             R4 4 1
       16 GETTABLEKS                       R5 R1 K7 ["Static"]
       18 GETTABLEKS                       R6 R1 K8 ["DisableZoom"]
       20 GETTABLEKS                       R7 R0 K9 ["camera"]
       22 GETTABLEKS                       R8 R1 K10 ["ShowAxisIndicator"]
       24 JUMPIF                           R8 ; [+2]
       25 GETTABLEKS                       R8 R1 K11 ["ShowResetCamera"]
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R9 R9 K12 ["createElement"]
       30 LOADK                            R10 K13 ["ViewportFrame"]
       31 NEWTABLE                         R11 32 0
       33 GETTABLEKS                       R12 R1 K14 ["Ambient"]
       35 SETTABLEKS                       R12 R11 K14 ["Ambient"]
       37 GETTABLEKS                       R12 R1 K15 ["BackgroundColor3"]
       39 SETTABLEKS                       R12 R11 K15 ["BackgroundColor3"]
       41 GETTABLEKS                       R12 R1 K16 ["LightColor"]
       43 SETTABLEKS                       R12 R11 K16 ["LightColor"]
       45 JUMPIFNOT                        R8 ; [+2]
       46 LOADNIL                          R12
       47 JUMP                             ; [+1]
       48 MOVE                             R12 R2
       49 SETTABLEKS                       R12 R11 K1 ["LayoutOrder"]
       51 GETTABLEKS                       R12 R1 K17 ["LightDirection"]
       53 SETTABLEKS                       R12 R11 K17 ["LightDirection"]
       55 JUMPIFNOT                        R8 ; [+2]
       56 LOADNIL                          R12
       57 JUMP                             ; [+1]
       58 MOVE                             R12 R3
       59 SETTABLEKS                       R12 R11 K2 ["Position"]
       61 JUMPIFNOT                        R8 ; [+6]
       62 GETIMPORT                        R12 K19 [UDim2.fromScale]
       64 LOADN                            R13 1
       65 LOADN                            R14 1
       66 CALL                             R12 2 1
       67 JUMP                             ; [+1]
       68 MOVE                             R12 R4
       69 SETTABLEKS                       R12 R11 K3 ["Size"]
       71 LOADN                            R12 0
       72 SETTABLEKS                       R12 R11 K20 ["BorderSizePixel"]
       74 LOADN                            R12 1
       75 SETTABLEKS                       R12 R11 K21 ["BackgroundTransparency"]
       77 GETTABLEKS                       R12 R1 K22 ["ImageTransparency"]
       79 SETTABLEKS                       R12 R11 K22 ["ImageTransparency"]
       81 SETTABLEKS                       R7 R11 K23 ["CurrentCamera"]
       83 GETUPVAL                         R12 0
       84 GETTABLEKS                       R12 R12 K24 ["Ref"]
       86 GETUPVAL                         R14 1
       87 CALL                             R14 0 1
       88 JUMPIFNOT                        R14 ; [+6]
       89 GETTABLEKS                       R14 R1 K25 ["ForwardRef"]
       91 JUMPIFNOT                        R14 ; [+3]
       92 GETTABLEKS                       R13 R1 K25 ["ForwardRef"]
       94 JUMP                             ; [+2]
       95 GETTABLEKS                       R13 R0 K26 ["viewportFrameRef"]
       97 SETTABLE                         R13 R11 R12
       98 GETUPVAL                         R12 0
       99 GETTABLEKS                       R12 R12 K27 ["Event"]
      101 GETTABLEKS                       R12 R12 K28 ["MouseEnter"]
      103 GETTABLEKS                       R13 R1 K29 ["OnMouseEnter"]
      105 SETTABLE                         R13 R11 R12
      106 GETUPVAL                         R12 0
      107 GETTABLEKS                       R12 R12 K27 ["Event"]
      109 GETTABLEKS                       R12 R12 K30 ["MouseLeave"]
      111 GETTABLEKS                       R13 R1 K31 ["OnMouseLeave"]
      113 SETTABLE                         R13 R11 R12
      114 GETUPVAL                         R12 0
      115 GETTABLEKS                       R12 R12 K27 ["Event"]
      117 GETTABLEKS                       R12 R12 K32 ["MouseWheelForward"]
      119 JUMPIF                           R5 ; [+4]
      120 JUMPIF                           R6 ; [+3]
      121 GETTABLEKS                       R13 R0 K33 ["onMouseWheelForward"]
      123 JUMP                             ; [+1]
      124 LOADNIL                          R13
      125 SETTABLE                         R13 R11 R12
      126 GETUPVAL                         R12 0
      127 GETTABLEKS                       R12 R12 K27 ["Event"]
      129 GETTABLEKS                       R12 R12 K34 ["MouseWheelBackward"]
      131 JUMPIF                           R5 ; [+4]
      132 JUMPIF                           R6 ; [+3]
      133 GETTABLEKS                       R13 R0 K35 ["onMouseWheelBackward"]
      135 JUMP                             ; [+1]
      136 LOADNIL                          R13
      137 SETTABLE                         R13 R11 R12
      138 GETUPVAL                         R12 0
      139 GETTABLEKS                       R12 R12 K27 ["Event"]
      141 GETTABLEKS                       R12 R12 K36 ["InputBegan"]
      143 JUMPIF                           R5 ; [+3]
      144 GETTABLEKS                       R13 R0 K37 ["onInputBegan"]
      146 JUMP                             ; [+1]
      147 LOADNIL                          R13
      148 SETTABLE                         R13 R11 R12
      149 GETUPVAL                         R12 0
      150 GETTABLEKS                       R12 R12 K27 ["Event"]
      152 GETTABLEKS                       R12 R12 K38 ["InputEnded"]
      154 JUMPIF                           R5 ; [+3]
      155 GETTABLEKS                       R13 R0 K39 ["onInputEnded"]
      157 JUMP                             ; [+1]
      158 LOADNIL                          R13
      159 SETTABLE                         R13 R11 R12
      160 GETUPVAL                         R12 0
      161 GETTABLEKS                       R12 R12 K27 ["Event"]
      163 GETTABLEKS                       R12 R12 K40 ["InputChanged"]
      165 JUMPIF                           R5 ; [+3]
      166 GETTABLEKS                       R13 R0 K41 ["onInputChanged"]
      168 JUMP                             ; [+1]
      169 LOADNIL                          R13
      170 SETTABLE                         R13 R11 R12
      171 LOADNIL                          R12
      172 CALL                             R9 3 1
      173 GETTABLEKS                       R10 R1 K10 ["ShowAxisIndicator"]
      175 JUMPIF                           R10 ; [+3]
      176 GETTABLEKS                       R10 R1 K11 ["ShowResetCamera"]
      178 JUMPIFNOT                        R10 ; [+133]
      179 GETTABLEKS                       R10 R0 K0 ["props"]
      181 GETTABLEKS                       R10 R10 K42 ["Localization"]
      183 GETTABLEKS                       R11 R0 K0 ["props"]
      185 GETTABLEKS                       R11 R11 K43 ["Stylizer"]
      187 GETUPVAL                         R12 0
      188 GETTABLEKS                       R12 R12 K12 ["createElement"]
      190 GETUPVAL                         R13 2
      191 DUPTABLE                         R14 K44 [{"LayoutOrder", "Position", "Size"}]
      192 SETTABLEKS                       R2 R14 K1 ["LayoutOrder"]
      194 SETTABLEKS                       R3 R14 K2 ["Position"]
      196 SETTABLEKS                       R4 R14 K3 ["Size"]
      198 DUPTABLE                         R15 K47 [{"ViewportFrame", "AxisIndicator", "ResetCameraButton"}]
      199 SETTABLEKS                       R9 R15 K13 ["ViewportFrame"]
      201 GETTABLEKS                       R17 R1 K10 ["ShowAxisIndicator"]
      203 JUMPIFNOT                        R17 ; [+16]
      204 GETUPVAL                         R16 0
      205 GETTABLEKS                       R16 R16 K12 ["createElement"]
      207 GETUPVAL                         R17 3
      208 DUPTABLE                         R18 K51 [{"BackgroundColor", "ReferenceCamera", "ZIndex"}]
      209 GETTABLEKS                       R19 R1 K15 ["BackgroundColor3"]
      211 SETTABLEKS                       R19 R18 K48 ["BackgroundColor"]
      213 SETTABLEKS                       R7 R18 K49 ["ReferenceCamera"]
      215 LOADN                            R19 2
      216 SETTABLEKS                       R19 R18 K50 ["ZIndex"]
      218 CALL                             R16 2 1
      219 JUMP                             ; [+1]
      220 LOADNIL                          R16
      221 SETTABLEKS                       R16 R15 K45 ["AxisIndicator"]
      223 GETTABLEKS                       R17 R1 K11 ["ShowResetCamera"]
      225 JUMPIFNOT                        R17 ; [+81]
      226 GETUPVAL                         R16 0
      227 GETTABLEKS                       R16 R16 K12 ["createElement"]
      229 GETUPVAL                         R17 4
      230 DUPTABLE                         R18 K55 [{"AnchorPoint", "OnClick", "Position", "Size", "Style", "ZIndex"}]
      231 GETIMPORT                        R19 K57 [Vector2.new]
      233 LOADN                            R20 1
      234 LOADN                            R21 0
      235 CALL                             R19 2 1
      236 SETTABLEKS                       R19 R18 K52 ["AnchorPoint"]
      238 GETTABLEKS                       R19 R0 K58 ["centerCamera"]
      240 SETTABLEKS                       R19 R18 K53 ["OnClick"]
      242 GETTABLEKS                       R19 R11 K46 ["ResetCameraButton"]
      244 GETTABLEKS                       R19 R19 K2 ["Position"]
      246 SETTABLEKS                       R19 R18 K2 ["Position"]
      248 GETTABLEKS                       R19 R11 K46 ["ResetCameraButton"]
      250 GETTABLEKS                       R19 R19 K3 ["Size"]
      252 SETTABLEKS                       R19 R18 K3 ["Size"]
      254 LOADK                            R19 K59 ["RoundSubtle"]
      255 SETTABLEKS                       R19 R18 K54 ["Style"]
      257 LOADN                            R19 2
      258 SETTABLEKS                       R19 R18 K50 ["ZIndex"]
      260 DUPTABLE                         R19 K61 [{"Icon"}]
      261 GETUPVAL                         R20 0
      262 GETTABLEKS                       R20 R20 K12 ["createElement"]
      264 GETUPVAL                         R21 5
      265 DUPTABLE                         R22 K63 [{"Image", "Style"}]
      266 GETTABLEKS                       R23 R11 K46 ["ResetCameraButton"]
      268 GETTABLEKS                       R23 R23 K62 ["Image"]
      270 SETTABLEKS                       R23 R22 K62 ["Image"]
      272 GETUPVAL                         R24 6
      273 JUMPIFNOT                        R24 ; [+8]
      274 DUPTABLE                         R23 K65 [{"Color"}]
      275 GETTABLEKS                       R24 R11 K46 ["ResetCameraButton"]
      277 GETTABLEKS                       R24 R24 K64 ["Color"]
      279 SETTABLEKS                       R24 R23 K64 ["Color"]
      281 JUMP                             ; [+1]
      282 LOADNIL                          R23
      283 SETTABLEKS                       R23 R22 K54 ["Style"]
      285 DUPTABLE                         R23 K67 [{"Tooltip"}]
      286 GETUPVAL                         R24 0
      287 GETTABLEKS                       R24 R24 K12 ["createElement"]
      289 GETUPVAL                         R25 7
      290 DUPTABLE                         R26 K69 [{"Text"}]
      291 GETUPVAL                         R29 8
      292 LOADK                            R30 K70 ["AssetRenderModel"]
      293 LOADK                            R31 K71 ["ResetCamera"]
      294 NAMECALL                         R27 R10 K72 ["getProjectText"]
      296 CALL                             R27 4 1
      297 SETTABLEKS                       R27 R26 K68 ["Text"]
      299 CALL                             R24 2 1
      300 SETTABLEKS                       R24 R23 K66 ["Tooltip"]
      302 CALL                             R20 3 1
      303 SETTABLEKS                       R20 R19 K60 ["Icon"]
      305 CALL                             R16 3 1
      306 JUMP                             ; [+1]
      307 LOADNIL                          R16
      308 SETTABLEKS                       R16 R15 K46 ["ResetCameraButton"]
      310 CALL                             R12 3 -1
      311 RETURN                           R12 -1
      312 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Wrappers"]
       29 GETTABLEKS                       R5 R5 K11 ["withForwardRef"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Resources"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R5 K13 ["LOCALIZATION_PROJECT_NAME"]
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R8 R0 K2 ["UI"]
       43 GETTABLEKS                       R8 R8 K14 ["Components"]
       45 GETTABLEKS                       R8 R8 K15 ["DEPRECATED_Button"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K6 [require]
       50 GETTABLEKS                       R9 R0 K2 ["UI"]
       52 GETTABLEKS                       R9 R9 K14 ["Components"]
       54 GETTABLEKS                       R9 R9 K16 ["Image"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K6 [require]
       59 GETTABLEKS                       R10 R0 K2 ["UI"]
       61 GETTABLEKS                       R10 R10 K14 ["Components"]
       63 GETTABLEKS                       R10 R10 K17 ["Pane"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K6 [require]
       68 GETTABLEKS                       R11 R0 K2 ["UI"]
       70 GETTABLEKS                       R11 R11 K14 ["Components"]
       72 GETTABLEKS                       R11 R11 K18 ["Tooltip"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K6 [require]
       77 GETTABLEKS                       R12 R0 K19 ["Util"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K6 [require]
       82 GETTABLEKS                       R13 R0 K19 ["Util"]
       84 GETTABLEKS                       R13 R13 K20 ["Typecheck"]
       86 CALL                             R12 1 1
       87 GETTABLEKS                       R13 R11 K21 ["Math"]
       89 GETIMPORT                        R14 K6 [require]
       91 GETIMPORT                        R15 K1 [script]
       93 GETTABLEKS                       R15 R15 K22 ["AxisIndicator"]
       95 CALL                             R14 1 1
       96 GETTABLEKS                       R15 R1 K23 ["PureComponent"]
       98 LOADK                            R17 K24 ["AssetRenderModel"]
       99 NAMECALL                         R15 R15 K25 ["extend"]
      101 CALL                             R15 2 1
      102 GETTABLEKS                       R16 R12 K26 ["wrap"]
      104 MOVE                             R17 R15
      105 GETIMPORT                        R18 K1 [script]
      107 CALL                             R16 2 0
      108 GETIMPORT                        R16 K6 [require]
      110 GETTABLEKS                       R17 R0 K27 ["SharedFlags"]
      112 GETTABLEKS                       R17 R17 K28 ["getFFlagForwardRefAssetRenderModel"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K30 [game]
      117 LOADK                            R19 K31 ["DevFrameworkResetCameraIconColor"]
      118 LOADB                            R20 0
      119 NAMECALL                         R17 R17 K32 ["DefineFastFlag"]
      121 CALL                             R17 3 1
      122 DUPTABLE                         R18 K41 [{"RecenterCameraOnUpdate", "RecenterModelOnUpdate", "ShouldClone", "FocusDirection", "FocusPosition", "PanSpeedMultiplier", "ShouldMuteModelSounds", "ImageTransparency"}]
      123 LOADB                            R19 1
      124 SETTABLEKS                       R19 R18 K33 ["RecenterCameraOnUpdate"]
      126 LOADB                            R19 1
      127 SETTABLEKS                       R19 R18 K34 ["RecenterModelOnUpdate"]
      129 LOADB                            R19 1
      130 SETTABLEKS                       R19 R18 K35 ["ShouldClone"]
      132 LOADK                            R19 K42 [{1, 1, 1}]
      133 SETTABLEKS                       R19 R18 K36 ["FocusDirection"]
      135 FASTCALL                         VECTOR ; [+2]
      136 GETIMPORT                        R19 K45 [Vector3.new]
      138 CALL                             R19 0 1
      139 SETTABLEKS                       R19 R18 K37 ["FocusPosition"]
      141 LOADN                            R19 1
      142 SETTABLEKS                       R19 R18 K38 ["PanSpeedMultiplier"]
      144 LOADB                            R19 0
      145 SETTABLEKS                       R19 R18 K39 ["ShouldMuteModelSounds"]
      147 LOADN                            R19 0
      148 SETTABLEKS                       R19 R18 K40 ["ImageTransparency"]
      150 SETTABLEKS                       R18 R15 K46 ["defaultProps"]
      152 DUPCLOSURE                       R18 K47 [PROTO_0]
      153 DUPCLOSURE                       R19 K48 [PROTO_1]
      154 DUPCLOSURE                       R20 K49 [PROTO_11]
      155 CAPTURE                          VAL R16
      156 CAPTURE                          VAL R1
      157 CAPTURE                          VAL R13
      158 SETTABLEKS                       R20 R15 K50 ["init"]
      160 DUPCLOSURE                       R20 K51 [PROTO_12]
      161 CAPTURE                          VAL R16
      162 SETTABLEKS                       R20 R15 K52 ["updateViewportModel"]
      164 DUPCLOSURE                       R20 K53 [PROTO_13]
      165 SETTABLEKS                       R20 R15 K54 ["didMount"]
      167 DUPCLOSURE                       R20 K55 [PROTO_14]
      168 SETTABLEKS                       R20 R15 K56 ["didUpdate"]
      170 DUPCLOSURE                       R20 K57 [PROTO_15]
      171 SETTABLEKS                       R20 R15 K58 ["willUnmount"]
      173 DUPCLOSURE                       R20 K59 [PROTO_16]
      174 CAPTURE                          VAL R1
      175 CAPTURE                          VAL R16
      176 CAPTURE                          VAL R9
      177 CAPTURE                          VAL R14
      178 CAPTURE                          VAL R7
      179 CAPTURE                          VAL R8
      180 CAPTURE                          VAL R17
      181 CAPTURE                          VAL R10
      182 CAPTURE                          VAL R6
      183 SETTABLEKS                       R20 R15 K60 ["render"]
      185 MOVE                             R20 R3
      186 DUPTABLE                         R21 K63 [{"Localization", "Stylizer"}]
      187 GETTABLEKS                       R22 R2 K61 ["Localization"]
      189 SETTABLEKS                       R22 R21 K61 ["Localization"]
      191 GETTABLEKS                       R22 R2 K62 ["Stylizer"]
      193 SETTABLEKS                       R22 R21 K62 ["Stylizer"]
      195 CALL                             R20 1 1
      196 MOVE                             R21 R15
      197 CALL                             R20 1 1
      198 MOVE                             R15 R20
      199 MOVE                             R20 R16
      200 CALL                             R20 0 1
      201 JUMPIFNOT                        R20 ; [+4]
      202 MOVE                             R20 R4
      203 MOVE                             R21 R15
      204 CALL                             R20 1 1
      205 MOVE                             R15 R20
      206 RETURN                           R15 1
