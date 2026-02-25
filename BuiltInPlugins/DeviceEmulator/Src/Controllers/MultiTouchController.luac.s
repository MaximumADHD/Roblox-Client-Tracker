PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_studioDeviceEmulatorService"]
        3 NAMECALL                         R1 R1 K1 ["asService"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R0 R1 K2 ["IsMultiTouchEnabled"]
        8 JUMPIFNOT                        R0 ; [+61]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R0 R1 K3 ["_screenGui"]
       12 LOADB                            R1 1
       13 SETTABLEKS                       R1 R0 K4 ["Enabled"]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K0 ["_studioDeviceEmulatorService"]
       18 NAMECALL                         R1 R1 K1 ["asService"]
       20 CALL                             R1 1 1
       21 GETTABLEKS                       R0 R1 K5 ["PivotPosition"]
       23 GETUPVAL                         R1 0
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R3 R4 K6 ["_pivot"]
       27 MOVE                             R4 R0
       28 NAMECALL                         R1 R1 K7 ["updateControlCirclePos"]
       30 CALL                             R1 3 0
       31 LOADN                            R3 1
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R4 R5 K8 ["_touches"]
       35 LENGTH                           R1 R4
       36 LOADN                            R2 1
       37 FORNPREP                         R1
       38 GETUPVAL                         R4 0
       39 GETUPVAL                         R8 0
       40 GETTABLEKS                       R7 R8 K8 ["_touches"]
       42 GETTABLE                         R6 R7 R3
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R7 R8 K0 ["_studioDeviceEmulatorService"]
       46 NAMECALL                         R7 R7 K1 ["asService"]
       48 CALL                             R7 1 1
       49 SUBK                             R9 R3 K9 [1]
       50 NAMECALL                         R7 R7 K10 ["GetTouchPosition"]
       52 CALL                             R7 2 -1
       53 NAMECALL                         R4 R4 K7 ["updateControlCirclePos"]
       55 CALL                             R4 -1 0
       56 GETUPVAL                         R4 0
       57 GETUPVAL                         R8 0
       58 GETTABLEKS                       R7 R8 K11 ["_connectingLines"]
       60 GETTABLE                         R6 R7 R3
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R8 R9 K8 ["_touches"]
       64 GETTABLE                         R7 R8 R3
       65 NAMECALL                         R4 R4 K12 ["updateConnectingLine"]
       67 CALL                             R4 3 0
       68 FORNLOOP                         R1
       69 RETURN                           R0 0
       70 GETUPVAL                         R1 0
       71 GETTABLEKS                       R0 R1 K3 ["_screenGui"]
       73 LOADB                            R1 0
       74 SETTABLEKS                       R1 R0 K4 ["Enabled"]
       76 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_studioDeviceEmulatorService"]
        3 NAMECALL                         R1 R1 K1 ["asService"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R0 R1 K2 ["PivotPosition"]
        8 GETUPVAL                         R1 0
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K3 ["_pivot"]
       12 MOVE                             R4 R0
       13 NAMECALL                         R1 R1 K4 ["updateControlCirclePos"]
       15 CALL                             R1 3 0
       16 LOADN                            R3 1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K5 ["_touches"]
       20 LENGTH                           R1 R4
       21 LOADN                            R2 1
       22 FORNPREP                         R1
       23 GETUPVAL                         R4 0
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R7 R8 K6 ["_connectingLines"]
       27 GETTABLE                         R6 R7 R3
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R8 R9 K5 ["_touches"]
       31 GETTABLE                         R7 R8 R3
       32 NAMECALL                         R4 R4 K7 ["updateConnectingLine"]
       34 CALL                             R4 3 0
       35 FORNLOOP                         R1
       36 RETURN                           R0 0

PROTO_2:
        0 LOADN                            R2 1
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["_touches"]
        4 LENGTH                           R0 R3
        5 LOADN                            R1 1
        6 FORNPREP                         R0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R6 R7 K0 ["_touches"]
       11 GETTABLE                         R5 R6 R2
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K1 ["_studioDeviceEmulatorService"]
       15 NAMECALL                         R6 R6 K2 ["asService"]
       17 CALL                             R6 1 1
       18 SUBK                             R8 R2 K3 [1]
       19 NAMECALL                         R6 R6 K4 ["GetTouchPosition"]
       21 CALL                             R6 2 -1
       22 NAMECALL                         R3 R3 K5 ["updateControlCirclePos"]
       24 CALL                             R3 -1 0
       25 GETUPVAL                         R3 0
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R6 R7 K6 ["_connectingLines"]
       29 GETTABLE                         R5 R6 R2
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R7 R8 K0 ["_touches"]
       33 GETTABLE                         R6 R7 R2
       34 NAMECALL                         R3 R3 K7 ["updateConnectingLine"]
       36 CALL                             R3 3 0
       37 FORNLOOP                         R0
       38 RETURN                           R0 0

PROTO_3:
        0 LOADN                            R2 1
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["_touches"]
        4 LENGTH                           R0 R3
        5 LOADN                            R1 1
        6 FORNPREP                         R0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R6 R7 K0 ["_touches"]
       11 GETTABLE                         R5 R6 R2
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K1 ["_studioDeviceEmulatorService"]
       15 NAMECALL                         R6 R6 K2 ["asService"]
       17 CALL                             R6 1 1
       18 SUBK                             R8 R2 K3 [1]
       19 NAMECALL                         R6 R6 K4 ["GetTouchInBounds"]
       21 CALL                             R6 2 -1
       22 NAMECALL                         R3 R3 K5 ["updateControlCircleColor"]
       24 CALL                             R3 -1 0
       25 FORNLOOP                         R0
       26 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R2 K6 [{"_studioDeviceEmulatorService", "_screenGui", "_pivot", "_touches", "_connectingLines", "_mock"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K7 ["new"]
        4 LOADK                            R4 K8 ["StudioDeviceEmulatorService"]
        5 MOVE                             R5 R0
        6 CALL                             R3 2 1
        7 SETTABLEKS                       R3 R2 K0 ["_studioDeviceEmulatorService"]
        9 LOADNIL                          R3
       10 SETTABLEKS                       R3 R2 K1 ["_screenGui"]
       12 LOADNIL                          R3
       13 SETTABLEKS                       R3 R2 K2 ["_pivot"]
       15 NEWTABLE                         R3 0 0
       17 SETTABLEKS                       R3 R2 K3 ["_touches"]
       19 NEWTABLE                         R3 0 0
       21 SETTABLEKS                       R3 R2 K4 ["_connectingLines"]
       23 SETTABLEKS                       R0 R2 K5 ["_mock"]
       25 GETUPVAL                         R3 1
       26 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       28 GETIMPORT                        R1 K10 [setmetatable]
       30 CALL                             R1 2 1
       31 NAMECALL                         R2 R1 K11 ["initScreenGui"]
       33 CALL                             R2 1 1
       34 SETTABLEKS                       R2 R1 K1 ["_screenGui"]
       36 NAMECALL                         R2 R1 K12 ["makeNewPivotCircle"]
       38 CALL                             R2 1 1
       39 SETTABLEKS                       R2 R1 K2 ["_pivot"]
       41 LOADN                            R4 1
       42 GETTABLEKS                       R5 R1 K0 ["_studioDeviceEmulatorService"]
       44 NAMECALL                         R5 R5 K13 ["asService"]
       46 CALL                             R5 1 1
       47 NAMECALL                         R5 R5 K14 ["GetMaxNumTouches"]
       49 CALL                             R5 1 1
       50 MOVE                             R2 R5
       51 LOADN                            R3 1
       52 FORNPREP                         R2
       53 GETTABLEKS                       R5 R1 K3 ["_touches"]
       55 NAMECALL                         R6 R1 K15 ["makeNewControlCircle"]
       57 CALL                             R6 1 1
       58 SETTABLE                         R6 R5 R4
       59 GETTABLEKS                       R5 R1 K4 ["_connectingLines"]
       61 NAMECALL                         R6 R1 K16 ["makeNewConnectingLine"]
       63 CALL                             R6 1 1
       64 SETTABLE                         R6 R5 R4
       65 FORNLOOP                         R2
       66 JUMPIF                           R0 ; [+60]
       67 GETTABLEKS                       R2 R1 K0 ["_studioDeviceEmulatorService"]
       69 NAMECALL                         R2 R2 K17 ["asInstance"]
       71 CALL                             R2 1 1
       72 LOADK                            R4 K18 ["IsMultiTouchEnabled"]
       73 NAMECALL                         R2 R2 K19 ["GetPropertyChangedSignal"]
       75 CALL                             R2 2 1
       76 NEWCLOSURE                       R4 P0
       77 CAPTURE                          VAL R1
       78 NAMECALL                         R2 R2 K20 ["Connect"]
       80 CALL                             R2 2 1
       81 SETTABLEKS                       R2 R1 K21 ["_isMultiTouchEnabledChanged"]
       83 GETTABLEKS                       R2 R1 K0 ["_studioDeviceEmulatorService"]
       85 NAMECALL                         R2 R2 K17 ["asInstance"]
       87 CALL                             R2 1 1
       88 LOADK                            R4 K22 ["PivotPosition"]
       89 NAMECALL                         R2 R2 K19 ["GetPropertyChangedSignal"]
       91 CALL                             R2 2 1
       92 NEWCLOSURE                       R4 P1
       93 CAPTURE                          VAL R1
       94 NAMECALL                         R2 R2 K20 ["Connect"]
       96 CALL                             R2 2 1
       97 SETTABLEKS                       R2 R1 K23 ["_pivotPositionChanged"]
       99 GETTABLEKS                       R3 R1 K0 ["_studioDeviceEmulatorService"]
      101 NAMECALL                         R3 R3 K13 ["asService"]
      103 CALL                             R3 1 1
      104 GETTABLEKS                       R2 R3 K24 ["TouchPositionsChanged"]
      106 NEWCLOSURE                       R4 P2
      107 CAPTURE                          VAL R1
      108 NAMECALL                         R2 R2 K20 ["Connect"]
      110 CALL                             R2 2 1
      111 SETTABLEKS                       R2 R1 K25 ["_touchPositionsChanged"]
      113 GETTABLEKS                       R3 R1 K0 ["_studioDeviceEmulatorService"]
      115 NAMECALL                         R3 R3 K13 ["asService"]
      117 CALL                             R3 1 1
      118 GETTABLEKS                       R2 R3 K26 ["TouchInBoundsChanged"]
      120 NEWCLOSURE                       R4 P3
      121 CAPTURE                          VAL R1
      122 NAMECALL                         R2 R2 K20 ["Connect"]
      124 CALL                             R2 2 1
      125 SETTABLEKS                       R2 R1 K27 ["_touchInBoundsChanged"]
      127 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_mock"]
        2 JUMPIF                           R1 ; [+20]
        3 GETTABLEKS                       R1 R0 K1 ["_isMultiTouchEnabledChanged"]
        5 NAMECALL                         R1 R1 K2 ["Disconnect"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K3 ["_pivotPositionChanged"]
       10 NAMECALL                         R1 R1 K2 ["Disconnect"]
       12 CALL                             R1 1 0
       13 GETTABLEKS                       R1 R0 K4 ["_touchPositionsChanged"]
       15 NAMECALL                         R1 R1 K2 ["Disconnect"]
       17 CALL                             R1 1 0
       18 GETTABLEKS                       R1 R0 K5 ["_touchInBoundsChanged"]
       20 NAMECALL                         R1 R1 K2 ["Disconnect"]
       22 CALL                             R1 1 0
       23 GETTABLEKS                       R1 R0 K6 ["_screenGui"]
       25 JUMPIFNOT                        R1 ; [+5]
       26 GETTABLEKS                       R1 R0 K6 ["_screenGui"]
       28 NAMECALL                         R1 R1 K7 ["Destroy"]
       30 CALL                             R1 1 0
       31 GETTABLEKS                       R1 R0 K8 ["_studioDeviceEmulatorService"]
       33 NAMECALL                         R1 R1 K9 ["destroy"]
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R2 K1 [game]
        2 GETTABLEKS                       R1 R2 K2 ["CoreGui"]
        4 LOADK                            R3 K3 ["MultiTouchScreenGui"]
        5 NAMECALL                         R1 R1 K4 ["FindFirstChild"]
        7 CALL                             R1 2 1
        8 JUMPIFNOT                        R1 ; [+4]
        9 NAMECALL                         R2 R1 K5 ["ClearAllChildren"]
       11 CALL                             R2 1 0
       12 RETURN                           R1 1
       13 GETIMPORT                        R2 K8 [Instance.new]
       15 LOADK                            R3 K9 ["ScreenGui"]
       16 CALL                             R2 1 1
       17 MOVE                             R1 R2
       18 LOADK                            R2 K3 ["MultiTouchScreenGui"]
       19 SETTABLEKS                       R2 R1 K10 ["Name"]
       21 LOADB                            R2 1
       22 SETTABLEKS                       R2 R1 K11 ["IgnoreGuiInset"]
       24 LOADB                            R2 0
       25 SETTABLEKS                       R2 R1 K12 ["Enabled"]
       27 GETIMPORT                        R3 K1 [game]
       29 GETTABLEKS                       R2 R3 K2 ["CoreGui"]
       31 SETTABLEKS                       R2 R1 K13 ["Parent"]
       33 RETURN                           R1 1

PROTO_8:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Frame"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K5 [UDim2.new]
        6 LOADK                            R3 K6 [0.05]
        7 LOADN                            R4 0
        8 LOADK                            R5 K6 [0.05]
        9 LOADN                            R6 0
       10 CALL                             R2 4 1
       11 SETTABLEKS                       R2 R1 K7 ["Size"]
       13 GETIMPORT                        R2 K9 [Vector2.new]
       15 LOADK                            R3 K10 [0.5]
       16 LOADK                            R4 K10 [0.5]
       17 CALL                             R2 2 1
       18 SETTABLEKS                       R2 R1 K11 ["AnchorPoint"]
       20 GETIMPORT                        R2 K14 [Color3.fromRGB]
       22 LOADN                            R3 0
       23 LOADN                            R4 0
       24 LOADN                            R5 0
       25 CALL                             R2 3 1
       26 SETTABLEKS                       R2 R1 K15 ["BackgroundColor3"]
       28 LOADK                            R2 K10 [0.5]
       29 SETTABLEKS                       R2 R1 K16 ["BackgroundTransparency"]
       31 GETTABLEKS                       R2 R0 K17 ["_screenGui"]
       33 SETTABLEKS                       R2 R1 K18 ["Parent"]
       35 GETIMPORT                        R2 K2 [Instance.new]
       37 LOADK                            R3 K19 ["UIAspectRatioConstraint"]
       38 CALL                             R2 1 1
       39 LOADN                            R3 1
       40 SETTABLEKS                       R3 R2 K20 ["AspectRatio"]
       42 SETTABLEKS                       R1 R2 K18 ["Parent"]
       44 GETIMPORT                        R3 K2 [Instance.new]
       46 LOADK                            R4 K21 ["UICorner"]
       47 CALL                             R3 1 1
       48 GETIMPORT                        R4 K23 [UDim.new]
       50 LOADN                            R5 1
       51 LOADN                            R6 0
       52 CALL                             R4 2 1
       53 SETTABLEKS                       R4 R3 K24 ["CornerRadius"]
       55 SETTABLEKS                       R1 R3 K18 ["Parent"]
       57 GETIMPORT                        R4 K2 [Instance.new]
       59 LOADK                            R5 K25 ["UIStroke"]
       60 CALL                             R4 1 1
       61 LOADK                            R5 K10 [0.5]
       62 SETTABLEKS                       R5 R4 K26 ["Transparency"]
       64 SETTABLEKS                       R1 R4 K18 ["Parent"]
       66 RETURN                           R1 1

PROTO_9:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Frame"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K4 ["_screenGui"]
        6 SETTABLEKS                       R2 R1 K5 ["Parent"]
        8 GETIMPORT                        R2 K7 [UDim2.new]
       10 LOADK                            R3 K8 [0.01]
       11 LOADN                            R4 0
       12 LOADK                            R5 K8 [0.01]
       13 LOADN                            R6 0
       14 CALL                             R2 4 1
       15 SETTABLEKS                       R2 R1 K9 ["Size"]
       17 GETIMPORT                        R2 K11 [Vector2.new]
       19 LOADK                            R3 K12 [0.5]
       20 LOADK                            R4 K12 [0.5]
       21 CALL                             R2 2 1
       22 SETTABLEKS                       R2 R1 K13 ["AnchorPoint"]
       24 GETIMPORT                        R2 K16 [Color3.fromRGB]
       26 LOADN                            R3 0
       27 LOADN                            R4 0
       28 LOADN                            R5 0
       29 CALL                             R2 3 1
       30 SETTABLEKS                       R2 R1 K17 ["BackgroundColor3"]
       32 LOADK                            R2 K12 [0.5]
       33 SETTABLEKS                       R2 R1 K18 ["BackgroundTransparency"]
       35 GETIMPORT                        R2 K2 [Instance.new]
       37 LOADK                            R3 K19 ["UIAspectRatioConstraint"]
       38 CALL                             R2 1 1
       39 LOADN                            R3 1
       40 SETTABLEKS                       R3 R2 K20 ["AspectRatio"]
       42 SETTABLEKS                       R1 R2 K5 ["Parent"]
       44 GETIMPORT                        R3 K2 [Instance.new]
       46 LOADK                            R4 K21 ["UICorner"]
       47 CALL                             R3 1 1
       48 GETIMPORT                        R4 K23 [UDim.new]
       50 LOADN                            R5 1
       51 LOADN                            R6 0
       52 CALL                             R4 2 1
       53 SETTABLEKS                       R4 R3 K24 ["CornerRadius"]
       55 SETTABLEKS                       R1 R3 K5 ["Parent"]
       57 RETURN                           R1 1

PROTO_10:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Frame"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K4 ["_screenGui"]
        6 SETTABLEKS                       R2 R1 K5 ["Parent"]
        8 GETIMPORT                        R2 K7 [Vector2.new]
       10 LOADK                            R3 K8 [0.5]
       11 LOADK                            R4 K8 [0.5]
       12 CALL                             R2 2 1
       13 SETTABLEKS                       R2 R1 K9 ["AnchorPoint"]
       15 GETIMPORT                        R2 K12 [Color3.fromRGB]
       17 LOADN                            R3 0
       18 LOADN                            R4 0
       19 LOADN                            R5 0
       20 CALL                             R2 3 1
       21 SETTABLEKS                       R2 R1 K13 ["BackgroundColor3"]
       23 RETURN                           R1 1

PROTO_11:
        0 GETIMPORT                        R3 K2 [UDim2.new]
        2 LOADN                            R4 0
        3 GETTABLEKS                       R5 R2 K3 ["x"]
        5 LOADN                            R6 0
        6 GETTABLEKS                       R7 R2 K4 ["y"]
        8 CALL                             R3 4 1
        9 SETTABLEKS                       R3 R1 K5 ["Position"]
       11 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOT                        R2 ; [+9]
        1 GETIMPORT                        R3 K2 [Color3.fromRGB]
        3 LOADN                            R4 0
        4 LOADN                            R5 0
        5 LOADN                            R6 0
        6 CALL                             R3 3 1
        7 SETTABLEKS                       R3 R1 K3 ["BackgroundColor3"]
        9 RETURN                           R0 0
       10 GETIMPORT                        R3 K2 [Color3.fromRGB]
       12 LOADN                            R4 255
       13 LOADN                            R5 0
       14 LOADN                            R6 0
       15 CALL                             R3 3 1
       16 SETTABLEKS                       R3 R1 K3 ["BackgroundColor3"]
       18 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R6 R0 K0 ["_pivot"]
        2 GETTABLEKS                       R5 R6 K1 ["Position"]
        4 GETTABLEKS                       R4 R5 K2 ["X"]
        6 GETTABLEKS                       R3 R4 K3 ["Offset"]
        8 GETTABLEKS                       R7 R0 K0 ["_pivot"]
       10 GETTABLEKS                       R6 R7 K1 ["Position"]
       12 GETTABLEKS                       R5 R6 K4 ["Y"]
       14 GETTABLEKS                       R4 R5 K3 ["Offset"]
       16 GETTABLEKS                       R7 R2 K1 ["Position"]
       18 GETTABLEKS                       R6 R7 K2 ["X"]
       20 GETTABLEKS                       R5 R6 K3 ["Offset"]
       22 GETTABLEKS                       R8 R2 K1 ["Position"]
       24 GETTABLEKS                       R7 R8 K4 ["Y"]
       26 GETTABLEKS                       R6 R7 K3 ["Offset"]
       28 GETIMPORT                        R7 K7 [UDim2.new]
       30 LOADN                            R8 0
       31 SUB                              R12 R5 R3
       32 POWK                             R11 R12 K8 [2]
       33 SUB                              R13 R6 R4
       34 POWK                             R12 R13 K8 [2]
       35 ADD                              R10 R11 R12
       36 FASTCALL1                        MATH_SQRT R10 ; [+2]
       37 GETIMPORT                        R9 K11 [math.sqrt]
       39 CALL                             R9 1 1
       40 LOADN                            R10 0
       41 LOADK                            R11 K12 [0.5]
       42 CALL                             R7 4 1
       43 SETTABLEKS                       R7 R1 K13 ["Size"]
       45 GETIMPORT                        R7 K7 [UDim2.new]
       47 LOADN                            R8 0
       48 ADD                              R10 R3 R5
       49 DIVK                             R9 R10 K8 [2]
       50 LOADN                            R10 0
       51 ADD                              R12 R4 R6
       52 DIVK                             R11 R12 K8 [2]
       53 CALL                             R7 4 1
       54 SETTABLEKS                       R7 R1 K1 ["Position"]
       56 SUB                              R9 R6 R4
       57 SUB                              R10 R5 R3
       58 FASTCALL2                        MATH_ATAN2 R9 R10 ; [+3]
       60 GETIMPORT                        R8 K15 [math.atan2]
       62 CALL                             R8 2 1
       63 FASTCALL1                        MATH_DEG R8 ; [+2]
       64 GETIMPORT                        R7 K17 [math.deg]
       66 CALL                             R7 1 1
       67 SETTABLEKS                       R7 R1 K18 ["Rotation"]
       69 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K7 ["TestHelpers"]
       18 GETTABLEKS                       R2 R3 K8 ["ServiceWrapper"]
       20 GETTABLEKS                       R4 R1 K9 ["ContextServices"]
       22 GETTABLEKS                       R3 R4 K10 ["ContextItem"]
       24 LOADK                            R6 K11 ["MultiTouchController"]
       25 NAMECALL                         R4 R3 K12 ["extend"]
       27 CALL                             R4 2 1
       28 DUPCLOSURE                       R5 K13 [PROTO_4]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R4
       31 SETTABLEKS                       R5 R4 K14 ["new"]
       33 DUPCLOSURE                       R5 K15 [PROTO_5]
       34 CAPTURE                          VAL R4
       35 SETTABLEKS                       R5 R4 K16 ["mock"]
       37 DUPCLOSURE                       R5 K17 [PROTO_6]
       38 SETTABLEKS                       R5 R4 K18 ["destroy"]
       40 DUPCLOSURE                       R5 K19 [PROTO_7]
       41 SETTABLEKS                       R5 R4 K20 ["initScreenGui"]
       43 DUPCLOSURE                       R5 K21 [PROTO_8]
       44 SETTABLEKS                       R5 R4 K22 ["makeNewControlCircle"]
       46 DUPCLOSURE                       R5 K23 [PROTO_9]
       47 SETTABLEKS                       R5 R4 K24 ["makeNewPivotCircle"]
       49 DUPCLOSURE                       R5 K25 [PROTO_10]
       50 SETTABLEKS                       R5 R4 K26 ["makeNewConnectingLine"]
       52 DUPCLOSURE                       R5 K27 [PROTO_11]
       53 SETTABLEKS                       R5 R4 K28 ["updateControlCirclePos"]
       55 DUPCLOSURE                       R5 K29 [PROTO_12]
       56 SETTABLEKS                       R5 R4 K30 ["updateControlCircleColor"]
       58 DUPCLOSURE                       R5 K31 [PROTO_13]
       59 SETTABLEKS                       R5 R4 K32 ["updateConnectingLine"]
       61 RETURN                           R4 1
