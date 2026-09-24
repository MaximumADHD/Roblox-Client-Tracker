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
        3 LOADN                            R1 -1
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
       12 GETTABLEKS                       R1 R0 K4 ["props"]
       14 GETTABLEKS                       R1 R1 K5 ["ForwardRef"]
       16 JUMPIF                           R1 ; [+6]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K6 ["createRef"]
       20 CALL                             R1 0 1
       21 SETTABLEKS                       R1 R0 K7 ["viewportFrameRef"]
       23 LOADNIL                          R1
       24 GETTABLEKS                       R2 R0 K4 ["props"]
       26 GETTABLEKS                       R2 R2 K8 ["Camera"]
       28 JUMPIFNOT                        R2 ; [+5]
       29 GETTABLEKS                       R2 R0 K4 ["props"]
       31 GETTABLEKS                       R1 R2 K8 ["Camera"]
       33 JUMP                             ; [+8]
       34 GETIMPORT                        R2 K11 [Instance.new]
       36 LOADK                            R3 K8 ["Camera"]
       37 CALL                             R2 1 1
       38 MOVE                             R1 R2
       39 LOADK                            R2 K12 ["AssetRenderModelCamera"]
       40 SETTABLEKS                       R2 R1 K13 ["Name"]
       42 SETTABLEKS                       R1 R0 K14 ["camera"]
       44 GETTABLEKS                       R2 R0 K4 ["props"]
       46 GETTABLEKS                       R2 R2 K15 ["FieldOfView"]
       48 JUMPIFEQKNIL                     R2 ; [+7]
       50 GETTABLEKS                       R2 R0 K4 ["props"]
       52 GETTABLEKS                       R2 R2 K15 ["FieldOfView"]
       54 SETTABLEKS                       R2 R1 K15 ["FieldOfView"]
       56 LOADNIL                          R2
       57 SETTABLEKS                       R2 R0 K16 ["viewportFrameModel"]
       59 NEWCLOSURE                       R2 P0
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R2 R0 K17 ["onInputBegan"]
       63 NEWCLOSURE                       R2 P1
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R2 R0 K18 ["onInputEnded"]
       67 NEWCLOSURE                       R2 P2
       68 CAPTURE                          VAL R0
       69 SETTABLEKS                       R2 R0 K19 ["getCameraMovementDistance"]
       71 NEWCLOSURE                       R2 P3
       72 CAPTURE                          VAL R0
       73 CAPTURE                          UPVAL U1
       74 SETTABLEKS                       R2 R0 K20 ["onInputChanged"]
       76 NEWCLOSURE                       R2 P4
       77 CAPTURE                          VAL R0
       78 CAPTURE                          UPVAL U1
       79 SETTABLEKS                       R2 R0 K21 ["zoomCamera"]
       81 NEWCLOSURE                       R2 P5
       82 CAPTURE                          VAL R0
       83 SETTABLEKS                       R2 R0 K22 ["onMouseWheelBackward"]
       85 NEWCLOSURE                       R2 P6
       86 CAPTURE                          VAL R0
       87 SETTABLEKS                       R2 R0 K23 ["onMouseWheelForward"]
       89 NEWCLOSURE                       R2 P7
       90 CAPTURE                          VAL R0
       91 SETTABLEKS                       R2 R0 K24 ["centerModel"]
       93 NEWCLOSURE                       R2 P8
       94 CAPTURE                          VAL R0
       95 CAPTURE                          REF R1
       96 SETTABLEKS                       R2 R0 K25 ["centerCamera"]
       98 CLOSEUPVALS                      R1
       99 RETURN                           R0 0

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
       78 GETTABLEKS                       R3 R0 K0 ["props"]
       80 GETTABLEKS                       R3 R3 K17 ["ForwardRef"]
       82 JUMPIFNOT                        R3 ; [+8]
       83 GETTABLEKS                       R2 R0 K0 ["props"]
       85 GETTABLEKS                       R2 R2 K17 ["ForwardRef"]
       87 NAMECALL                         R2 R2 K18 ["getValue"]
       89 CALL                             R2 1 1
       90 JUMP                             ; [+5]
       91 GETTABLEKS                       R2 R0 K19 ["viewportFrameRef"]
       93 NAMECALL                         R2 R2 K18 ["getValue"]
       95 CALL                             R2 1 1
       96 JUMPIFNOT                        R2 ; [+148]
       97 GETTABLEKS                       R3 R0 K0 ["props"]
       99 GETTABLEKS                       R3 R3 K2 ["ShouldClone"]
      101 JUMPIFNOT                        R3 ; [+4]
      102 NAMECALL                         R3 R2 K20 ["ClearAllChildren"]
      104 CALL                             R3 1 0
      105 JUMP                             ; [+9]
      106 NAMECALL                         R3 R2 K21 ["GetChildren"]
      108 CALL                             R3 1 3
      109 FORGPREP                         R3
      110 LOADNIL                          R8
      111 SETTABLEKS                       R8 R7 K4 ["Parent"]
      113 FORGLOOP                         R3 2 ; [-4]
      115 GETTABLEKS                       R3 R0 K0 ["props"]
      117 GETTABLEKS                       R3 R3 K22 ["OnViewModelLoaded"]
      119 JUMPIFNOT                        R3 ; [+7]
      120 GETTABLEKS                       R3 R0 K0 ["props"]
      122 GETTABLEKS                       R3 R3 K22 ["OnViewModelLoaded"]
      124 GETTABLEKS                       R4 R0 K3 ["viewportFrameModel"]
      126 CALL                             R3 1 0
      127 GETTABLEKS                       R3 R0 K3 ["viewportFrameModel"]
      129 SETTABLEKS                       R2 R3 K4 ["Parent"]
      131 GETTABLEKS                       R3 R0 K0 ["props"]
      133 GETTABLEKS                       R3 R3 K23 ["EnableSky"]
      135 JUMPIFNOT                        R3 ; [+46]
      136 GETTABLEKS                       R3 R0 K0 ["props"]
      138 GETTABLEKS                       R3 R3 K24 ["Stylizer"]
      140 GETIMPORT                        R4 K16 [Instance.new]
      142 LOADK                            R5 K25 ["Sky"]
      143 CALL                             R4 1 1
      144 GETTABLEKS                       R5 R3 K25 ["Sky"]
      146 GETTABLEKS                       R5 R5 K26 ["SkyboxBk"]
      148 SETTABLEKS                       R5 R4 K26 ["SkyboxBk"]
      150 GETTABLEKS                       R5 R3 K25 ["Sky"]
      152 GETTABLEKS                       R5 R5 K27 ["SkyboxDn"]
      154 SETTABLEKS                       R5 R4 K27 ["SkyboxDn"]
      156 GETTABLEKS                       R5 R3 K25 ["Sky"]
      158 GETTABLEKS                       R5 R5 K28 ["SkyboxFt"]
      160 SETTABLEKS                       R5 R4 K28 ["SkyboxFt"]
      162 GETTABLEKS                       R5 R3 K25 ["Sky"]
      164 GETTABLEKS                       R5 R5 K29 ["SkyboxLf"]
      166 SETTABLEKS                       R5 R4 K29 ["SkyboxLf"]
      168 GETTABLEKS                       R5 R3 K25 ["Sky"]
      170 GETTABLEKS                       R5 R5 K30 ["SkyboxRt"]
      172 SETTABLEKS                       R5 R4 K30 ["SkyboxRt"]
      174 GETTABLEKS                       R5 R3 K25 ["Sky"]
      176 GETTABLEKS                       R5 R5 K31 ["SkyboxUp"]
      178 SETTABLEKS                       R5 R4 K31 ["SkyboxUp"]
      180 SETTABLEKS                       R2 R4 K4 ["Parent"]
      182 GETTABLEKS                       R3 R0 K0 ["props"]
      184 GETTABLEKS                       R3 R3 K32 ["CornerRadius"]
      186 JUMPIFNOT                        R3 ; [+23]
      187 GETIMPORT                        R3 K16 [Instance.new]
      189 LOADK                            R4 K33 ["UICorner"]
      190 CALL                             R3 1 1
      191 GETTABLEKS                       R4 R0 K0 ["props"]
      193 GETTABLEKS                       R4 R4 K32 ["CornerRadius"]
      195 SETTABLEKS                       R4 R3 K32 ["CornerRadius"]
      197 LOADK                            R8 K33 ["UICorner"]
      198 NAMECALL                         R6 R2 K34 ["FindFirstChild"]
      200 CALL                             R6 2 1
      201 NOT                              R5 R6
      202 FASTCALL2K                       ASSERT R5 K35 ; [+4]
      204 LOADK                            R6 K35 ["ViewportFrame already has a UICorner child"]
      205 GETIMPORT                        R4 K37 [assert]
      207 CALL                             R4 2 0
      208 SETTABLEKS                       R2 R3 K4 ["Parent"]
      210 GETTABLEKS                       R3 R0 K38 ["initialCenter"]
      212 JUMPIF                           R3 ; [+10]
      213 GETTABLEKS                       R3 R0 K39 ["centerModel"]
      215 CALL                             R3 0 0
      216 GETTABLEKS                       R3 R0 K40 ["centerCamera"]
      218 CALL                             R3 0 0
      219 LOADB                            R3 1
      220 SETTABLEKS                       R3 R0 K38 ["initialCenter"]
      222 JUMP                             ; [+16]
      223 GETTABLEKS                       R3 R0 K0 ["props"]
      225 GETTABLEKS                       R3 R3 K41 ["RecenterModelOnUpdate"]
      227 JUMPIFNOT                        R3 ; [+3]
      228 GETTABLEKS                       R3 R0 K39 ["centerModel"]
      230 CALL                             R3 0 0
      231 GETTABLEKS                       R3 R0 K0 ["props"]
      233 GETTABLEKS                       R3 R3 K42 ["RecenterCameraOnUpdate"]
      235 JUMPIFNOT                        R3 ; [+3]
      236 GETTABLEKS                       R3 R0 K40 ["centerCamera"]
      238 CALL                             R3 0 0
      239 GETTABLEKS                       R3 R0 K0 ["props"]
      241 GETTABLEKS                       R3 R3 K43 ["ImageTransparency"]
      243 SETTABLEKS                       R3 R2 K43 ["ImageTransparency"]
      245 RETURN                           R0 0

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
       86 GETTABLEKS                       R14 R1 K25 ["ForwardRef"]
       88 JUMPIFNOT                        R14 ; [+3]
       89 GETTABLEKS                       R13 R1 K25 ["ForwardRef"]
       91 JUMP                             ; [+2]
       92 GETTABLEKS                       R13 R0 K26 ["viewportFrameRef"]
       94 SETTABLE                         R13 R11 R12
       95 GETUPVAL                         R12 0
       96 GETTABLEKS                       R12 R12 K27 ["Event"]
       98 GETTABLEKS                       R12 R12 K28 ["MouseEnter"]
      100 GETTABLEKS                       R13 R1 K29 ["OnMouseEnter"]
      102 SETTABLE                         R13 R11 R12
      103 GETUPVAL                         R12 0
      104 GETTABLEKS                       R12 R12 K27 ["Event"]
      106 GETTABLEKS                       R12 R12 K30 ["MouseLeave"]
      108 GETTABLEKS                       R13 R1 K31 ["OnMouseLeave"]
      110 SETTABLE                         R13 R11 R12
      111 GETUPVAL                         R12 0
      112 GETTABLEKS                       R12 R12 K27 ["Event"]
      114 GETTABLEKS                       R12 R12 K32 ["MouseWheelForward"]
      116 JUMPIF                           R5 ; [+4]
      117 JUMPIF                           R6 ; [+3]
      118 GETTABLEKS                       R13 R0 K33 ["onMouseWheelForward"]
      120 JUMP                             ; [+1]
      121 LOADNIL                          R13
      122 SETTABLE                         R13 R11 R12
      123 GETUPVAL                         R12 0
      124 GETTABLEKS                       R12 R12 K27 ["Event"]
      126 GETTABLEKS                       R12 R12 K34 ["MouseWheelBackward"]
      128 JUMPIF                           R5 ; [+4]
      129 JUMPIF                           R6 ; [+3]
      130 GETTABLEKS                       R13 R0 K35 ["onMouseWheelBackward"]
      132 JUMP                             ; [+1]
      133 LOADNIL                          R13
      134 SETTABLE                         R13 R11 R12
      135 GETUPVAL                         R12 0
      136 GETTABLEKS                       R12 R12 K27 ["Event"]
      138 GETTABLEKS                       R12 R12 K36 ["InputBegan"]
      140 JUMPIF                           R5 ; [+3]
      141 GETTABLEKS                       R13 R0 K37 ["onInputBegan"]
      143 JUMP                             ; [+1]
      144 LOADNIL                          R13
      145 SETTABLE                         R13 R11 R12
      146 GETUPVAL                         R12 0
      147 GETTABLEKS                       R12 R12 K27 ["Event"]
      149 GETTABLEKS                       R12 R12 K38 ["InputEnded"]
      151 JUMPIF                           R5 ; [+3]
      152 GETTABLEKS                       R13 R0 K39 ["onInputEnded"]
      154 JUMP                             ; [+1]
      155 LOADNIL                          R13
      156 SETTABLE                         R13 R11 R12
      157 GETUPVAL                         R12 0
      158 GETTABLEKS                       R12 R12 K27 ["Event"]
      160 GETTABLEKS                       R12 R12 K40 ["InputChanged"]
      162 JUMPIF                           R5 ; [+3]
      163 GETTABLEKS                       R13 R0 K41 ["onInputChanged"]
      165 JUMP                             ; [+1]
      166 LOADNIL                          R13
      167 SETTABLE                         R13 R11 R12
      168 LOADNIL                          R12
      169 CALL                             R9 3 1
      170 GETTABLEKS                       R10 R1 K10 ["ShowAxisIndicator"]
      172 JUMPIF                           R10 ; [+3]
      173 GETTABLEKS                       R10 R1 K11 ["ShowResetCamera"]
      175 JUMPIFNOT                        R10 ; [+124]
      176 GETTABLEKS                       R10 R0 K0 ["props"]
      178 GETTABLEKS                       R10 R10 K42 ["Localization"]
      180 GETTABLEKS                       R11 R0 K0 ["props"]
      182 GETTABLEKS                       R11 R11 K43 ["Stylizer"]
      184 GETUPVAL                         R12 0
      185 GETTABLEKS                       R12 R12 K12 ["createElement"]
      187 GETUPVAL                         R13 1
      188 DUPTABLE                         R14 K44 [{"LayoutOrder", "Position", "Size"}]
      189 SETTABLEKS                       R2 R14 K1 ["LayoutOrder"]
      191 SETTABLEKS                       R3 R14 K2 ["Position"]
      193 SETTABLEKS                       R4 R14 K3 ["Size"]
      195 DUPTABLE                         R15 K47 [{"ViewportFrame", "AxisIndicator", "ResetCameraButton"}]
      196 SETTABLEKS                       R9 R15 K13 ["ViewportFrame"]
      198 GETTABLEKS                       R17 R1 K10 ["ShowAxisIndicator"]
      200 JUMPIFNOT                        R17 ; [+13]
      201 GETUPVAL                         R16 0
      202 GETTABLEKS                       R16 R16 K12 ["createElement"]
      204 GETUPVAL                         R17 2
      205 DUPTABLE                         R18 K52 [{["BackgroundColor"], ["ReferenceCamera"], ["ZIndex"] = 2}]
      206 GETTABLEKS                       R19 R1 K15 ["BackgroundColor3"]
      208 SETTABLEKS                       R19 R18 K48 ["BackgroundColor"]
      210 SETTABLEKS                       R7 R18 K49 ["ReferenceCamera"]
      212 CALL                             R16 2 1
      213 JUMP                             ; [+1]
      214 LOADNIL                          R16
      215 SETTABLEKS                       R16 R15 K45 ["AxisIndicator"]
      217 GETTABLEKS                       R17 R1 K11 ["ShowResetCamera"]
      219 JUMPIFNOT                        R17 ; [+75]
      220 GETUPVAL                         R16 0
      221 GETTABLEKS                       R16 R16 K12 ["createElement"]
      223 GETUPVAL                         R17 3
      224 DUPTABLE                         R18 K57 [{["AnchorPoint"], ["OnClick"], ["Position"], ["Size"], ["Style"] = "RoundSubtle", ["ZIndex"] = 2}]
      225 GETIMPORT                        R19 K59 [Vector2.new]
      227 LOADN                            R20 1
      228 LOADN                            R21 0
      229 CALL                             R19 2 1
      230 SETTABLEKS                       R19 R18 K53 ["AnchorPoint"]
      232 GETTABLEKS                       R19 R0 K60 ["centerCamera"]
      234 SETTABLEKS                       R19 R18 K54 ["OnClick"]
      236 GETTABLEKS                       R19 R11 K46 ["ResetCameraButton"]
      238 GETTABLEKS                       R19 R19 K2 ["Position"]
      240 SETTABLEKS                       R19 R18 K2 ["Position"]
      242 GETTABLEKS                       R19 R11 K46 ["ResetCameraButton"]
      244 GETTABLEKS                       R19 R19 K3 ["Size"]
      246 SETTABLEKS                       R19 R18 K3 ["Size"]
      248 DUPTABLE                         R19 K62 [{"Icon"}]
      249 GETUPVAL                         R20 0
      250 GETTABLEKS                       R20 R20 K12 ["createElement"]
      252 GETUPVAL                         R21 4
      253 DUPTABLE                         R22 K64 [{"Image", "Style"}]
      254 GETTABLEKS                       R23 R11 K46 ["ResetCameraButton"]
      256 GETTABLEKS                       R23 R23 K63 ["Image"]
      258 SETTABLEKS                       R23 R22 K63 ["Image"]
      260 GETUPVAL                         R24 5
      261 JUMPIFNOT                        R24 ; [+8]
      262 DUPTABLE                         R23 K66 [{"Color"}]
      263 GETTABLEKS                       R24 R11 K46 ["ResetCameraButton"]
      265 GETTABLEKS                       R24 R24 K65 ["Color"]
      267 SETTABLEKS                       R24 R23 K65 ["Color"]
      269 JUMP                             ; [+1]
      270 LOADNIL                          R23
      271 SETTABLEKS                       R23 R22 K55 ["Style"]
      273 DUPTABLE                         R23 K68 [{"Tooltip"}]
      274 GETUPVAL                         R24 0
      275 GETTABLEKS                       R24 R24 K12 ["createElement"]
      277 GETUPVAL                         R25 6
      278 DUPTABLE                         R26 K70 [{"Text"}]
      279 GETUPVAL                         R29 7
      280 LOADK                            R30 K71 ["AssetRenderModel"]
      281 LOADK                            R31 K72 ["ResetCamera"]
      282 NAMECALL                         R27 R10 K73 ["getProjectText"]
      284 CALL                             R27 4 1
      285 SETTABLEKS                       R27 R26 K69 ["Text"]
      287 CALL                             R24 2 1
      288 SETTABLEKS                       R24 R23 K67 ["Tooltip"]
      290 CALL                             R20 3 1
      291 SETTABLEKS                       R20 R19 K61 ["Icon"]
      293 CALL                             R16 3 1
      294 JUMP                             ; [+1]
      295 LOADNIL                          R16
      296 SETTABLEKS                       R16 R15 K46 ["ResetCameraButton"]
      298 CALL                             R12 3 -1
      299 RETURN                           R12 -1
      300 RETURN                           R9 1

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
      108 GETIMPORT                        R16 K28 [game]
      110 LOADK                            R18 K29 ["DevFrameworkResetCameraIconColor"]
      111 LOADB                            R19 0
      112 NAMECALL                         R16 R16 K30 ["DefineFastFlag"]
      114 CALL                             R16 3 1
      115 DUPTABLE                         R17 K44 [{["RecenterCameraOnUpdate"] = True, ["RecenterModelOnUpdate"] = True, ["ShouldClone"] = True, ["FocusDirection"] = {1, 1, 1}, ["FocusPosition"], ["PanSpeedMultiplier"] = 1, ["ShouldMuteModelSounds"] = False, ["ImageTransparency"] = 0}]
      116 FASTCALL                         VECTOR ; [+2]
      117 GETIMPORT                        R18 K47 [Vector3.new]
      119 CALL                             R18 0 1
      120 SETTABLEKS                       R18 R17 K37 ["FocusPosition"]
      122 SETTABLEKS                       R17 R15 K48 ["defaultProps"]
      124 DUPCLOSURE                       R17 K49 [PROTO_0]
      125 DUPCLOSURE                       R18 K50 [PROTO_1]
      126 DUPCLOSURE                       R19 K51 [PROTO_11]
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R13
      129 SETTABLEKS                       R19 R15 K52 ["init"]
      131 DUPCLOSURE                       R19 K53 [PROTO_12]
      132 SETTABLEKS                       R19 R15 K54 ["updateViewportModel"]
      134 DUPCLOSURE                       R19 K55 [PROTO_13]
      135 SETTABLEKS                       R19 R15 K56 ["didMount"]
      137 DUPCLOSURE                       R19 K57 [PROTO_14]
      138 SETTABLEKS                       R19 R15 K58 ["didUpdate"]
      140 DUPCLOSURE                       R19 K59 [PROTO_15]
      141 SETTABLEKS                       R19 R15 K60 ["willUnmount"]
      143 DUPCLOSURE                       R19 K61 [PROTO_16]
      144 CAPTURE                          VAL R1
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R14
      147 CAPTURE                          VAL R7
      148 CAPTURE                          VAL R8
      149 CAPTURE                          VAL R16
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R6
      152 SETTABLEKS                       R19 R15 K62 ["render"]
      154 MOVE                             R19 R3
      155 DUPTABLE                         R20 K65 [{"Localization", "Stylizer"}]
      156 GETTABLEKS                       R21 R2 K63 ["Localization"]
      158 SETTABLEKS                       R21 R20 K63 ["Localization"]
      160 GETTABLEKS                       R21 R2 K64 ["Stylizer"]
      162 SETTABLEKS                       R21 R20 K64 ["Stylizer"]
      164 CALL                             R19 1 1
      165 MOVE                             R20 R15
      166 CALL                             R19 1 1
      167 MOVE                             R15 R19
      168 MOVE                             R19 R4
      169 MOVE                             R20 R15
      170 CALL                             R19 1 1
      171 MOVE                             R15 R19
      172 RETURN                           R15 1
