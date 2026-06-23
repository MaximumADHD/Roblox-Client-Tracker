PROTO_0:
        0 GETUPVAL                         R0 1
        1 LOADK                            R2 K0 ["TweenService"]
        2 NAMECALL                         R0 R0 K1 ["GetService"]
        4 CALL                             R0 2 1
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R0 1
        7 LOADK                            R2 K2 ["GuiService"]
        8 NAMECALL                         R0 R0 K1 ["GetService"]
       10 CALL                             R0 2 1
       11 SETUPVAL                         R0 2
       12 GETUPVAL                         R0 3
       13 CALL                             R0 0 1
       14 JUMPIF                           R0 ; [+6]
       15 GETUPVAL                         R0 1
       16 LOADK                            R2 K3 ["VirtualInputManager"]
       17 NAMECALL                         R0 R0 K1 ["GetService"]
       19 CALL                             R0 2 1
       20 SETUPVAL                         R0 4
       21 GETUPVAL                         R0 1
       22 LOADK                            R2 K4 ["PathfindingService"]
       23 NAMECALL                         R0 R0 K1 ["GetService"]
       25 CALL                             R0 2 1
       26 SETUPVAL                         R0 5
       27 GETUPVAL                         R0 3
       28 CALL                             R0 0 1
       29 JUMPIFNOT                        R0 ; [+6]
       30 GETUPVAL                         R0 1
       31 LOADK                            R2 K5 ["UserInputService"]
       32 NAMECALL                         R0 R0 K1 ["GetService"]
       34 CALL                             R0 2 1
       35 SETUPVAL                         R0 6
       36 GETUPVAL                         R0 1
       37 LOADK                            R2 K6 ["CaptureService"]
       38 NAMECALL                         R0 R0 K1 ["GetService"]
       40 CALL                             R0 2 1
       41 SETUPVAL                         R0 7
       42 RETURN                           R0 0

PROTO_1:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 JUMPIFNOTLT                      R1 R0 ; [+12]
        4 GETUPVAL                         R1 0
        5 SUBK                             R0 R1 K0 [1]
        6 SETUPVAL                         R0 0
        7 GETUPVAL                         R0 0
        8 LOADN                            R1 0
        9 JUMPIFNOTLE                      R0 R1 ; [+5]
       11 GETUPVAL                         R0 1
       12 LOADB                            R1 0
       13 SETTABLEKS                       R1 R0 K1 ["Visible"]
       15 GETIMPORT                        R0 K4 [task.wait]
       17 LOADN                            R1 1
       18 CALL                             R0 1 0
       19 JUMPBACK                         ; [-20]
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 LOADK                            R2 K0 ["CoreGui"]
        6 NAMECALL                         R0 R0 K1 ["GetService"]
        8 CALL                             R0 2 1
        9 LOADK                            R3 K2 ["AssistantScreenGui"]
       10 NAMECALL                         R1 R0 K3 ["FindFirstChild"]
       12 CALL                             R1 2 1
       13 JUMPIF                           R1 ; [+108]
       14 GETIMPORT                        R2 K6 [Instance.new]
       16 LOADK                            R3 K7 ["ScreenGui"]
       17 CALL                             R2 1 1
       18 LOADK                            R3 K2 ["AssistantScreenGui"]
       19 SETTABLEKS                       R3 R2 K8 ["Name"]
       21 SETTABLEKS                       R0 R2 K9 ["Parent"]
       23 MOVE                             R1 R2
       24 GETIMPORT                        R3 K6 [Instance.new]
       26 LOADK                            R4 K10 ["TextLabel"]
       27 CALL                             R3 1 1
       28 LOADK                            R4 K11 ["Cursor"]
       29 SETTABLEKS                       R4 R3 K8 ["Name"]
       31 SETTABLEKS                       R1 R3 K9 ["Parent"]
       33 GETIMPORT                        R4 K14 [UDim2.fromOffset]
       35 LOADN                            R5 50
       36 LOADN                            R6 50
       37 CALL                             R4 2 1
       38 SETTABLEKS                       R4 R3 K15 ["Size"]
       40 LOADB                            R4 1
       41 SETTABLEKS                       R4 R3 K16 ["TextScaled"]
       43 GETIMPORT                        R4 K18 [UDim2.fromScale]
       45 LOADK                            R5 K19 [0.5]
       46 LOADK                            R6 K19 [0.5]
       47 CALL                             R4 2 1
       48 SETTABLEKS                       R4 R3 K20 ["Position"]
       50 LOADN                            R4 1
       51 SETTABLEKS                       R4 R3 K21 ["BackgroundTransparency"]
       53 LOADK                            R4 K22 ["👆"]
       54 SETTABLEKS                       R4 R3 K23 ["Text"]
       56 GETIMPORT                        R4 K25 [Vector2.new]
       58 LOADK                            R5 K26 [0.4]
       59 LOADN                            R6 0
       60 CALL                             R4 2 1
       61 SETTABLEKS                       R4 R3 K27 ["AnchorPoint"]
       63 GETIMPORT                        R4 K6 [Instance.new]
       65 LOADK                            R5 K10 ["TextLabel"]
       66 CALL                             R4 1 1
       67 LOADK                            R5 K28 ["Circle"]
       68 SETTABLEKS                       R5 R4 K8 ["Name"]
       70 SETTABLEKS                       R1 R4 K9 ["Parent"]
       72 GETIMPORT                        R5 K14 [UDim2.fromOffset]
       74 LOADN                            R6 50
       75 LOADN                            R7 50
       76 CALL                             R5 2 1
       77 SETTABLEKS                       R5 R4 K15 ["Size"]
       79 LOADB                            R5 1
       80 SETTABLEKS                       R5 R4 K16 ["TextScaled"]
       82 LOADB                            R5 1
       83 SETTABLEKS                       R5 R4 K29 ["RichText"]
       85 GETIMPORT                        R5 K18 [UDim2.fromScale]
       87 LOADK                            R6 K19 [0.5]
       88 LOADK                            R7 K19 [0.5]
       89 CALL                             R5 2 1
       90 SETTABLEKS                       R5 R4 K20 ["Position"]
       92 LOADN                            R5 1
       93 SETTABLEKS                       R5 R4 K21 ["BackgroundTransparency"]
       95 GETIMPORT                        R5 K31 [Color3.new]
       97 LOADN                            R6 1
       98 LOADN                            R7 0
       99 LOADN                            R8 0
      100 CALL                             R5 3 1
      101 SETTABLEKS                       R5 R4 K32 ["TextColor3"]
      103 LOADK                            R5 K33 ["〇"]
      104 SETTABLEKS                       R5 R4 K23 ["Text"]
      106 GETIMPORT                        R5 K25 [Vector2.new]
      108 LOADK                            R6 K19 [0.5]
      109 LOADK                            R7 K19 [0.5]
      110 CALL                             R5 2 1
      111 SETTABLEKS                       R5 R4 K27 ["AnchorPoint"]
      113 LOADB                            R5 0
      114 SETTABLEKS                       R5 R4 K34 ["Visible"]
      116 GETIMPORT                        R5 K37 [task.spawn]
      118 NEWCLOSURE                       R6 P0
      119 CAPTURE                          UPVAL U2
      120 CAPTURE                          VAL R3
      121 CALL                             R5 1 0
      122 LOADK                            R4 K11 ["Cursor"]
      123 NAMECALL                         R2 R1 K3 ["FindFirstChild"]
      125 CALL                             R2 2 1
      126 SETUPVAL                         R2 0
      127 LOADK                            R4 K28 ["Circle"]
      128 NAMECALL                         R2 R1 K3 ["FindFirstChild"]
      130 CALL                             R2 2 1
      131 SETUPVAL                         R2 3
      132 GETUPVAL                         R2 0
      133 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADN                            R1 10
        4 SETUPVAL                         R1 1
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K0 ["Visible"]
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        3 GETTABLEKS                       R3 R0 K3 ["X"]
        5 GETTABLEKS                       R4 R0 K4 ["Y"]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R2 R1 K5 ["Position"]
       10 GETUPVAL                         R1 1
       11 JUMPIFNOT                        R1 ; [+6]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R2 R0 K3 ["X"]
       15 GETTABLEKS                       R3 R0 K4 ["Y"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 JUMPIF                           R3 ; [+1]
        2 RETURN                           R0 0
        3 GETIMPORT                        R5 K2 [Vector2.new]
        5 MOVE                             R6 R0
        6 MOVE                             R7 R1
        7 CALL                             R5 2 1
        8 GETIMPORT                        R6 K2 [Vector2.new]
       10 GETTABLEKS                       R7 R3 K3 ["Position"]
       12 GETTABLEKS                       R7 R7 K4 ["X"]
       14 GETTABLEKS                       R7 R7 K5 ["Offset"]
       16 GETTABLEKS                       R8 R3 K3 ["Position"]
       18 GETTABLEKS                       R8 R8 K6 ["Y"]
       20 GETTABLEKS                       R8 R8 K5 ["Offset"]
       22 CALL                             R6 2 1
       23 SUB                              R4 R5 R6
       24 GETTABLEKS                       R4 R4 K7 ["Magnitude"]
       26 LOADN                            R5 10
       27 JUMPIFNOTLT                      R4 R5 ; [+14]
       29 GETIMPORT                        R4 K10 [UDim2.fromOffset]
       31 MOVE                             R5 R0
       32 MOVE                             R6 R1
       33 CALL                             R4 2 1
       34 SETTABLEKS                       R4 R3 K3 ["Position"]
       36 JUMPIFNOT                        R2 ; [+4]
       37 MOVE                             R4 R2
       38 MOVE                             R5 R0
       39 MOVE                             R6 R1
       40 CALL                             R4 2 0
       41 RETURN                           R0 0
       42 GETIMPORT                        R4 K12 [Instance.new]
       44 LOADK                            R5 K13 ["Vector3Value"]
       45 CALL                             R4 1 1
       46 LOADK                            R5 K14 ["TweenVector"]
       47 SETTABLEKS                       R5 R4 K15 ["Name"]
       49 GETTABLEKS                       R6 R3 K3 ["Position"]
       51 GETTABLEKS                       R6 R6 K4 ["X"]
       53 GETTABLEKS                       R6 R6 K5 ["Offset"]
       55 GETTABLEKS                       R7 R3 K3 ["Position"]
       57 GETTABLEKS                       R7 R7 K6 ["Y"]
       59 GETTABLEKS                       R7 R7 K5 ["Offset"]
       61 LOADN                            R8 0
       62 FASTCALL                         VECTOR ; [+2]
       63 GETIMPORT                        R5 K17 [Vector3.new]
       65 CALL                             R5 3 1
       66 SETTABLEKS                       R5 R4 K18 ["Value"]
       68 GETTABLEKS                       R5 R4 K19 ["Changed"]
       70 NEWCLOSURE                       R7 P0
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R2
       73 NAMECALL                         R5 R5 K20 ["Connect"]
       75 CALL                             R5 2 0
       76 GETIMPORT                        R5 K22 [TweenInfo.new]
       78 LOADK                            R6 K23 [0.3]
       79 GETIMPORT                        R7 K27 [Enum.EasingStyle.Linear]
       81 GETIMPORT                        R8 K30 [Enum.EasingDirection.Out]
       83 LOADN                            R9 0
       84 LOADB                            R10 0
       85 LOADN                            R11 0
       86 CALL                             R5 6 1
       87 DUPTABLE                         R6 K31 [{"Value"}]
       88 LOADN                            R10 0
       89 FASTCALL3                        VECTOR R0 R1 R10
       91 MOVE                             R8 R0
       92 MOVE                             R9 R1
       93 GETIMPORT                        R7 K17 [Vector3.new]
       95 CALL                             R7 3 1
       96 SETTABLEKS                       R7 R6 K18 ["Value"]
       98 GETUPVAL                         R7 1
       99 MOVE                             R9 R4
      100 MOVE                             R10 R5
      101 MOVE                             R11 R6
      102 NAMECALL                         R7 R7 K32 ["Create"]
      104 CALL                             R7 4 1
      105 NAMECALL                         R8 R7 K33 ["Play"]
      107 CALL                             R8 1 0
      108 GETTABLEKS                       R8 R7 K34 ["Completed"]
      110 NAMECALL                         R8 R8 K35 ["Wait"]
      112 CALL                             R8 1 0
      113 NAMECALL                         R8 R7 K36 ["Destroy"]
      115 CALL                             R8 1 0
      116 NAMECALL                         R8 R4 K36 ["Destroy"]
      118 CALL                             R8 1 0
      119 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 JUMPIFNOT                        R1 ; [+1]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 JUMPIFNOT                        R0 ; [+62]
        6 GETIMPORT                        R3 K2 [UDim2.fromOffset]
        8 LOADN                            R4 80
        9 LOADN                            R5 80
       10 CALL                             R3 2 1
       11 SETTABLEKS                       R3 R1 K3 ["Size"]
       13 GETIMPORT                        R3 K2 [UDim2.fromOffset]
       15 LOADN                            R4 0
       16 LOADN                            R5 0
       17 CALL                             R3 2 1
       18 SETTABLEKS                       R3 R2 K3 ["Size"]
       20 GETTABLEKS                       R3 R1 K4 ["Position"]
       22 SETTABLEKS                       R3 R2 K4 ["Position"]
       24 LOADB                            R3 1
       25 SETTABLEKS                       R3 R2 K5 ["Visible"]
       27 GETIMPORT                        R3 K8 [TweenInfo.new]
       29 LOADK                            R4 K9 [0.3]
       30 GETIMPORT                        R5 K13 [Enum.EasingStyle.Linear]
       32 GETIMPORT                        R6 K16 [Enum.EasingDirection.Out]
       34 LOADN                            R7 0
       35 LOADB                            R8 0
       36 LOADN                            R9 0
       37 CALL                             R3 6 1
       38 DUPTABLE                         R4 K17 [{"Size"}]
       39 GETIMPORT                        R5 K2 [UDim2.fromOffset]
       41 LOADN                            R6 200
       42 LOADN                            R7 200
       43 CALL                             R5 2 1
       44 SETTABLEKS                       R5 R4 K3 ["Size"]
       46 GETUPVAL                         R5 2
       47 MOVE                             R7 R2
       48 MOVE                             R8 R3
       49 MOVE                             R9 R4
       50 NAMECALL                         R5 R5 K18 ["Create"]
       52 CALL                             R5 4 1
       53 NAMECALL                         R6 R5 K19 ["Play"]
       55 CALL                             R6 1 0
       56 GETTABLEKS                       R6 R5 K20 ["Completed"]
       58 NAMECALL                         R6 R6 K21 ["Wait"]
       60 CALL                             R6 1 0
       61 NAMECALL                         R6 R5 K22 ["Destroy"]
       63 CALL                             R6 1 0
       64 LOADB                            R6 0
       65 SETTABLEKS                       R6 R2 K5 ["Visible"]
       67 RETURN                           R0 0
       68 GETIMPORT                        R3 K2 [UDim2.fromOffset]
       70 LOADN                            R4 50
       71 LOADN                            R5 50
       72 CALL                             R3 2 1
       73 SETTABLEKS                       R3 R1 K3 ["Size"]
       75 RETURN                           R0 0

PROTO_8:
        0 LOADK                            R3 K0 ["GuiObject"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+8]
        5 GETIMPORT                        R1 K3 [error]
        7 LOADK                            R3 K4 ["Instance is not a GuiObject: "]
        8 GETTABLEKS                       R4 R0 K5 ["ClassName"]
       10 CONCAT                           R2 R3 R4
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1
       13 GETTABLEKS                       R2 R0 K6 ["AbsolutePosition"]
       15 GETTABLEKS                       R4 R0 K8 ["AbsoluteSize"]
       17 DIVK                             R3 R4 K7 [2]
       18 ADD                              R1 R2 R3
       19 RETURN                           R1 1

PROTO_9:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+6]
        5 NAMECALL                         R1 R0 K2 ["GetPivot"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R1 R1 K3 ["Position"]
       10 RETURN                           R1 1
       11 LOADK                            R3 K4 ["BasePart"]
       12 NAMECALL                         R1 R0 K1 ["IsA"]
       14 CALL                             R1 2 1
       15 JUMPIFNOT                        R1 ; [+3]
       16 GETTABLEKS                       R1 R0 K3 ["Position"]
       18 RETURN                           R1 1
       19 GETIMPORT                        R1 K6 [error]
       21 LOADK                            R3 K7 ["Instance is not a Model or BasePart: "]
       22 GETTABLEKS                       R4 R0 K8 ["ClassName"]
       24 CONCAT                           R2 R3 R4
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_10:
        0 JUMPIFNOT                        R0 ; [+2]
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 LOADNIL                          R1
        6 GETIMPORT                        R2 K3 [string.split]
        8 MOVE                             R3 R0
        9 LOADK                            R4 K4 ["."]
       10 CALL                             R2 2 1
       11 LENGTH                           R3 R2
       12 LOADN                            R4 0
       13 JUMPIFNOTLT                      R4 R3 ; [+39]
       15 GETTABLEN                        R3 R2 1
       16 JUMPIFNOTEQKS                    R3 K5 ["game"] ; [+3]
       18 GETUPVAL                         R1 0
       19 JUMP                             ; [+33]
       20 GETTABLEN                        R3 R2 1
       21 JUMPIFNOTEQKS                    R3 K6 ["Players"] ; [+8]
       23 GETUPVAL                         R3 0
       24 LOADK                            R5 K6 ["Players"]
       25 NAMECALL                         R3 R3 K7 ["GetService"]
       27 CALL                             R3 2 1
       28 MOVE                             R1 R3
       29 JUMP                             ; [+23]
       30 GETTABLEN                        R3 R2 1
       31 JUMPIFNOTEQKS                    R3 K8 ["LocalPlayer"] ; [+9]
       33 GETUPVAL                         R3 0
       34 LOADK                            R5 K6 ["Players"]
       35 NAMECALL                         R3 R3 K7 ["GetService"]
       37 CALL                             R3 2 1
       38 GETTABLEKS                       R1 R3 K8 ["LocalPlayer"]
       40 JUMP                             ; [+12]
       41 GETTABLEN                        R3 R2 1
       42 JUMPIFEQKS                       R3 K9 ["Workspace"] ; [+4]
       44 GETTABLEN                        R3 R2 1
       45 JUMPIFNOTEQKS                    R3 K10 ["workspace"] ; [+7]
       47 GETUPVAL                         R3 0
       48 LOADK                            R5 K9 ["Workspace"]
       49 NAMECALL                         R3 R3 K7 ["GetService"]
       51 CALL                             R3 2 1
       52 MOVE                             R1 R3
       53 JUMPIF                           R1 ; [+2]
       54 LOADNIL                          R3
       55 RETURN                           R3 1
       56 LOADN                            R5 2
       57 LENGTH                           R3 R2
       58 LOADN                            R4 1
       59 FORNPREP                         R3
       60 GETTABLE                         R8 R2 R5
       61 NAMECALL                         R6 R1 K11 ["FindFirstChild"]
       63 CALL                             R6 2 1
       64 MOVE                             R1 R6
       65 JUMPIF                           R1 ; [+2]
       66 LOADNIL                          R6
       67 RETURN                           R6 1
       68 FORNLOOP                         R3
       69 RETURN                           R1 1

PROTO_11:
        0 JUMPIFNOTEQKNIL                  R0 ; [+6]
        2 GETIMPORT                        R1 K1 [error]
        4 LOADK                            R2 K2 ["wait_time_ms is required for wait action"]
        5 LOADN                            R3 0
        6 CALL                             R1 2 0
        7 LOADN                            R1 0
        8 JUMPIFLT                         R0 R1 ; [+4]
       10 LOADN                            R1 16
       11 JUMPIFNOTLT                      R1 R0 ; [+6]
       13 GETIMPORT                        R1 K1 [error]
       15 LOADK                            R2 K3 ["wait_time_ms must be between 0 and 10000"]
       16 LOADN                            R3 0
       17 CALL                             R1 2 0
       18 GETIMPORT                        R1 K6 [task.wait]
       20 DIVK                             R2 R0 K7 [1000]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOT                        R0 ; [+9]
        1 GETIMPORT                        R5 K2 [Vector2.new]
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R5 2 -1
        6 NAMECALL                         R3 R0 K3 ["SendMousePosition"]
        8 CALL                             R3 -1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 0
       11 MOVE                             R5 R1
       12 MOVE                             R6 R2
       13 LOADNIL                          R7
       14 NAMECALL                         R3 R3 K4 ["SendMouseMoveEvent"]
       16 CALL                             R3 4 0
       17 RETURN                           R0 0

PROTO_13:
        0 JUMPIFNOT                        R0 ; [+19]
        1 JUMPIFNOTEQKS                    R3 K0 ["left"] ; [+4]
        3 GETIMPORT                        R5 K4 [Enum.UserInputType.MouseButton1]
        5 JUMP                             ; [+2]
        6 GETIMPORT                        R5 K6 [Enum.UserInputType.MouseButton2]
        8 GETIMPORT                        R8 K9 [Vector2.new]
       10 MOVE                             R9 R1
       11 MOVE                             R10 R2
       12 CALL                             R8 2 1
       13 MOVE                             R9 R5
       14 MOVE                             R10 R4
       15 LOADN                            R11 0
       16 NAMECALL                         R6 R0 K10 ["SendMouseButton"]
       18 CALL                             R6 5 0
       19 RETURN                           R0 0
       20 JUMPIFNOTEQKS                    R3 K0 ["left"] ; [+3]
       22 LOADN                            R5 0
       23 JUMP                             ; [+1]
       24 LOADN                            R5 1
       25 GETUPVAL                         R6 0
       26 MOVE                             R8 R1
       27 MOVE                             R9 R2
       28 MOVE                             R10 R5
       29 MOVE                             R11 R4
       30 LOADNIL                          R12
       31 LOADN                            R13 0
       32 NAMECALL                         R6 R6 K11 ["SendMouseButtonEvent"]
       34 CALL                             R6 7 0
       35 RETURN                           R0 0

PROTO_14:
        0 JUMPIFNOT                        R0 ; [+16]
        1 GETIMPORT                        R6 K2 [Vector2.new]
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 CALL                             R6 2 1
        6 DUPTABLE                         R7 K4 [{"Wheel"}]
        7 JUMPIFNOT                        R3 ; [+2]
        8 LOADN                            R8 1
        9 JUMP                             ; [+1]
       10 LOADN                            R8 255
       11 SETTABLEKS                       R8 R7 K3 ["Wheel"]
       13 NAMECALL                         R4 R0 K5 ["SendPointerAction"]
       15 CALL                             R4 3 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R4 0
       18 MOVE                             R6 R1
       19 MOVE                             R7 R2
       20 MOVE                             R8 R3
       21 LOADNIL                          R9
       22 NAMECALL                         R4 R4 K6 ["SendMouseWheelEvent"]
       24 CALL                             R4 5 0
       25 RETURN                           R0 0

PROTO_15:
        0 JUMPIFNOT                        R0 ; [+7]
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 LOADB                            R7 0
        4 NAMECALL                         R3 R0 K0 ["SendKey"]
        6 CALL                             R3 4 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 0
        9 MOVE                             R5 R1
       10 MOVE                             R6 R2
       11 LOADB                            R7 0
       12 LOADNIL                          R8
       13 NAMECALL                         R3 R3 K1 ["SendKeyEvent"]
       15 CALL                             R3 5 0
       16 RETURN                           R0 0

PROTO_16:
        0 JUMPIFNOT                        R0 ; [+5]
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R0 K0 ["SendTextInput"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 MOVE                             R4 R1
        8 LOADNIL                          R5
        9 NAMECALL                         R2 R2 K1 ["SendTextInputCharacterEvent"]
       11 CALL                             R2 3 0
       12 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["X"]
        4 ADD                              R3 R0 R4
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K1 ["Y"]
        8 ADD                              R4 R1 R5
        9 JUMPIFNOT                        R2 ; [+9]
       10 GETIMPORT                        R7 K4 [Vector2.new]
       12 MOVE                             R8 R3
       13 MOVE                             R9 R4
       14 CALL                             R7 2 -1
       15 NAMECALL                         R5 R2 K5 ["SendMousePosition"]
       17 CALL                             R5 -1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R5 2
       20 MOVE                             R7 R3
       21 MOVE                             R8 R4
       22 LOADNIL                          R9
       23 NAMECALL                         R5 R5 K6 ["SendMouseMoveEvent"]
       25 CALL                             R5 4 0
       26 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["X"]
        4 ADD                              R3 R0 R4
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K1 ["Y"]
        8 ADD                              R4 R1 R5
        9 JUMPIFNOT                        R2 ; [+9]
       10 GETIMPORT                        R7 K4 [Vector2.new]
       12 MOVE                             R8 R3
       13 MOVE                             R9 R4
       14 CALL                             R7 2 -1
       15 NAMECALL                         R5 R2 K5 ["SendMousePosition"]
       17 CALL                             R5 -1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R5 2
       20 MOVE                             R7 R3
       21 MOVE                             R8 R4
       22 LOADNIL                          R9
       23 NAMECALL                         R5 R5 K6 ["SendMouseMoveEvent"]
       25 CALL                             R5 4 0
       26 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 JUMPIFNOT                        R0 ; [+9]
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETIMPORT                        R2 K2 [UDim2.fromOffset]
       10 LOADN                            R3 50
       11 LOADN                            R4 50
       12 CALL                             R2 2 1
       13 SETTABLEKS                       R2 R0 K3 ["Size"]
       15 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 LOADNIL                          R1
        3 LOADNIL                          R2
        4 GETUPVAL                         R4 1
        5 CALL                             R4 0 1
        6 JUMPIFNOT                        R4 ; [+5]
        7 GETUPVAL                         R3 2
        8 NAMECALL                         R3 R3 K0 ["CreateVirtualInput"]
       10 CALL                             R3 1 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R3
       13 GETTABLEKS                       R4 R0 K1 ["actions"]
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 GETTABLEKS                       R9 R8 K2 ["action"]
       20 JUMPIFNOTEQKS                    R9 K3 ["wait"] ; [+26]
       22 GETTABLEKS                       R10 R8 K4 ["wait_time_ms"]
       24 JUMPIFNOTEQKNIL                  R10 ; [+6]
       26 GETIMPORT                        R11 K6 [error]
       28 LOADK                            R12 K7 ["wait_time_ms is required for wait action"]
       29 LOADN                            R13 0
       30 CALL                             R11 2 0
       31 LOADN                            R11 0
       32 JUMPIFLT                         R10 R11 ; [+4]
       34 LOADN                            R11 16
       35 JUMPIFNOTLT                      R11 R10 ; [+6]
       37 GETIMPORT                        R11 K6 [error]
       39 LOADK                            R12 K8 ["wait_time_ms must be between 0 and 10000"]
       40 LOADN                            R13 0
       41 CALL                             R11 2 0
       42 GETIMPORT                        R11 K10 [task.wait]
       44 DIVK                             R12 R10 K11 [1000]
       45 CALL                             R11 1 0
       46 JUMP                             ; [+255]
       47 LOADNIL                          R10
       48 LOADNIL                          R11
       49 GETTABLEKS                       R12 R8 K12 ["instance_path"]
       51 JUMPIFNOT                        R12 ; [+39]
       52 GETUPVAL                         R12 3
       53 GETTABLEKS                       R12 R12 K13 ["findInstanceByPath"]
       55 GETTABLEKS                       R13 R8 K12 ["instance_path"]
       57 CALL                             R12 1 1
       58 JUMPIFNOT                        R12 ; [+24]
       59 LOADK                            R16 K14 ["GuiObject"]
       60 NAMECALL                         R14 R12 K15 ["IsA"]
       62 CALL                             R14 2 1
       63 JUMPIF                           R14 ; [+8]
       64 GETIMPORT                        R13 K6 [error]
       66 LOADK                            R15 K16 ["Instance is not a GuiObject: "]
       67 GETTABLEKS                       R16 R12 K17 ["ClassName"]
       69 CONCAT                           R14 R15 R16
       70 CALL                             R13 1 1
       71 JUMP                             ; [+6]
       72 GETTABLEKS                       R14 R12 K18 ["AbsolutePosition"]
       74 GETTABLEKS                       R16 R12 K20 ["AbsoluteSize"]
       76 DIVK                             R15 R16 K19 [2]
       77 ADD                              R13 R14 R15
       78 GETTABLEKS                       R10 R13 K21 ["X"]
       80 GETTABLEKS                       R11 R13 K22 ["Y"]
       82 JUMP                             ; [+33]
       83 GETIMPORT                        R13 K6 [error]
       85 LOADK                            R15 K23 ["Instance not found: "]
       86 GETTABLEKS                       R16 R8 K12 ["instance_path"]
       88 CONCAT                           R14 R15 R16
       89 CALL                             R13 1 0
       90 JUMP                             ; [+25]
       91 GETTABLEKS                       R12 R8 K24 ["x"]
       93 JUMPIFEQKNIL                     R12 ; [+10]
       95 GETTABLEKS                       R12 R8 K25 ["y"]
       97 JUMPIFEQKNIL                     R12 ; [+6]
       99 GETTABLEKS                       R10 R8 K24 ["x"]
      101 GETTABLEKS                       R11 R8 K25 ["y"]
      103 JUMP                             ; [+12]
      104 JUMPIFEQKNIL                     R1 ; [+6]
      106 JUMPIFEQKNIL                     R2 ; [+4]
      108 MOVE                             R10 R1
      109 MOVE                             R11 R2
      110 JUMP                             ; [+5]
      111 GETIMPORT                        R12 K6 [error]
      113 LOADK                            R13 K26 ["Either x and y, instance_path, or a prior action that establishes mouse position is required"]
      114 LOADN                            R14 0
      115 CALL                             R12 2 0
      116 MOVE                             R1 R10
      117 MOVE                             R2 R11
      118 GETUPVAL                         R12 4
      119 NAMECALL                         R12 R12 K27 ["GetGuiInset"]
      121 CALL                             R12 1 1
      122 GETTABLEKS                       R14 R12 K21 ["X"]
      124 ADD                              R13 R10 R14
      125 GETTABLEKS                       R15 R12 K22 ["Y"]
      127 ADD                              R14 R11 R15
      128 GETUPVAL                         R15 5
      129 JUMPIF                           R15 ; [+1]
      130 JUMP                             ; [+5]
      131 LOADN                            R16 10
      132 SETUPVAL                         R16 6
      133 LOADB                            R16 1
      134 SETTABLEKS                       R16 R15 K28 ["Visible"]
      136 JUMPIFNOTEQKS                    R9 K29 ["moveTo"] ; [+27]
      138 GETUPVAL                         R15 7
      139 MOVE                             R16 R10
      140 MOVE                             R17 R11
      141 NEWCLOSURE                       R18 P0
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R12
      144 CAPTURE                          UPVAL U8
      145 CALL                             R15 3 0
      146 JUMPIFNOT                        R3 ; [+9]
      147 GETIMPORT                        R17 K32 [Vector2.new]
      149 MOVE                             R18 R13
      150 MOVE                             R19 R14
      151 CALL                             R17 2 -1
      152 NAMECALL                         R15 R3 K33 ["SendMousePosition"]
      154 CALL                             R15 -1 0
      155 JUMP                             ; [+146]
      156 GETUPVAL                         R15 8
      157 MOVE                             R17 R13
      158 MOVE                             R18 R14
      159 LOADNIL                          R19
      160 NAMECALL                         R15 R15 K34 ["SendMouseMoveEvent"]
      162 CALL                             R15 4 0
      163 JUMP                             ; [+138]
      164 JUMPIFEQKS                       R9 K35 ["mouseButtonDown"] ; [+5]
      166 JUMPIFEQKS                       R9 K36 ["mouseButtonUp"] ; [+3]
      168 JUMPIFNOTEQKS                    R9 K37 ["mouseButtonClick"] ; [+104]
      170 GETTABLEKS                       R15 R8 K38 ["mouse_button"]
      172 JUMPIFEQKS                       R15 K39 ["left"] ; [+10]
      174 JUMPIFEQKS                       R15 K40 ["right"] ; [+8]
      176 GETIMPORT                        R16 K6 [error]
      178 LOADK                            R18 K41 ["mouse_button (\"left\" or \"right\") is required for "]
      179 MOVE                             R19 R9
      180 CONCAT                           R17 R18 R19
      181 LOADN                            R18 0
      182 CALL                             R16 2 0
      183 GETUPVAL                         R16 7
      184 MOVE                             R17 R10
      185 MOVE                             R18 R11
      186 NEWCLOSURE                       R19 P1
      187 CAPTURE                          VAL R3
      188 CAPTURE                          VAL R12
      189 CAPTURE                          UPVAL U8
      190 CALL                             R16 3 0
      191 JUMPIFNOT                        R3 ; [+9]
      192 GETIMPORT                        R18 K32 [Vector2.new]
      194 MOVE                             R19 R13
      195 MOVE                             R20 R14
      196 CALL                             R18 2 -1
      197 NAMECALL                         R16 R3 K33 ["SendMousePosition"]
      199 CALL                             R16 -1 0
      200 JUMP                             ; [+7]
      201 GETUPVAL                         R16 8
      202 MOVE                             R18 R13
      203 MOVE                             R19 R14
      204 LOADNIL                          R20
      205 NAMECALL                         R16 R16 K34 ["SendMouseMoveEvent"]
      207 CALL                             R16 4 0
      208 JUMPIFNOTEQKS                    R9 K35 ["mouseButtonDown"] ; [+12]
      210 GETUPVAL                         R16 9
      211 MOVE                             R17 R3
      212 MOVE                             R18 R13
      213 MOVE                             R19 R14
      214 MOVE                             R20 R15
      215 LOADB                            R21 1
      216 CALL                             R16 5 0
      217 GETUPVAL                         R16 10
      218 LOADB                            R17 1
      219 CALL                             R16 1 0
      220 JUMP                             ; [+81]
      221 JUMPIFNOTEQKS                    R9 K36 ["mouseButtonUp"] ; [+21]
      223 GETUPVAL                         R16 9
      224 MOVE                             R17 R3
      225 MOVE                             R18 R13
      226 MOVE                             R19 R14
      227 MOVE                             R20 R15
      228 LOADB                            R21 0
      229 CALL                             R16 5 0
      230 GETUPVAL                         R16 5
      231 GETUPVAL                         R17 11
      232 JUMPIFNOT                        R16 ; [+69]
      233 JUMPIF                           R17 ; [+1]
      234 JUMP                             ; [+67]
      235 GETIMPORT                        R18 K44 [UDim2.fromOffset]
      237 LOADN                            R19 50
      238 LOADN                            R20 50
      239 CALL                             R18 2 1
      240 SETTABLEKS                       R18 R16 K45 ["Size"]
      242 JUMP                             ; [+59]
      243 GETIMPORT                        R16 K10 [task.wait]
      245 LOADK                            R17 K46 [0.1]
      246 CALL                             R16 1 0
      247 GETUPVAL                         R16 9
      248 MOVE                             R17 R3
      249 MOVE                             R18 R13
      250 MOVE                             R19 R14
      251 MOVE                             R20 R15
      252 LOADB                            R21 1
      253 CALL                             R16 5 0
      254 GETIMPORT                        R16 K10 [task.wait]
      256 LOADK                            R17 K46 [0.1]
      257 CALL                             R16 1 0
      258 GETUPVAL                         R16 9
      259 MOVE                             R17 R3
      260 MOVE                             R18 R13
      261 MOVE                             R19 R14
      262 MOVE                             R20 R15
      263 LOADB                            R21 0
      264 CALL                             R16 5 0
      265 GETIMPORT                        R16 K48 [task.spawn]
      267 NEWCLOSURE                       R17 P2
      268 CAPTURE                          UPVAL U10
      269 CAPTURE                          UPVAL U5
      270 CAPTURE                          UPVAL U11
      271 CALL                             R16 1 0
      272 JUMP                             ; [+29]
      273 JUMPIFNOTEQKS                    R9 K49 ["scrollUp"] ; [+8]
      275 GETUPVAL                         R15 12
      276 MOVE                             R16 R3
      277 MOVE                             R17 R13
      278 MOVE                             R18 R14
      279 LOADB                            R19 1
      280 CALL                             R15 4 0
      281 JUMP                             ; [+20]
      282 JUMPIFNOTEQKS                    R9 K50 ["scrollDown"] ; [+8]
      284 GETUPVAL                         R15 12
      285 MOVE                             R16 R3
      286 MOVE                             R17 R13
      287 MOVE                             R18 R14
      288 LOADB                            R19 0
      289 CALL                             R15 4 0
      290 JUMP                             ; [+11]
      291 GETIMPORT                        R15 K6 [error]
      293 LOADK                            R17 K51 ["Unknown mouse action: "]
      294 FASTCALL1                        TOSTRING R9 ; [+3]
      295 MOVE                             R19 R9
      296 GETIMPORT                        R18 K53 [tostring]
      298 CALL                             R18 1 1
      299 CONCAT                           R16 R17 R18
      300 LOADN                            R17 0
      301 CALL                             R15 2 0
      302 FORGLOOP                         R4 2 ; [-285]
      304 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K0 ["CreateVirtualInput"]
        6 CALL                             R1 1 1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 GETTABLEKS                       R2 R0 K1 ["actions"]
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 GETTABLEKS                       R7 R6 K2 ["action"]
       16 GETTABLEKS                       R8 R6 K3 ["key_code"]
       18 GETTABLEKS                       R9 R6 K4 ["text_inputs"]
       20 JUMPIFNOTEQKS                    R7 K5 ["keyDown"] ; [+28]
       22 GETUPVAL                         R10 0
       23 CALL                             R10 0 1
       24 JUMPIFNOT                        R10 ; [+7]
       25 FASTCALL2K                       ASSERT R8 K6 ; [+5]
       27 MOVE                             R11 R8
       28 LOADK                            R12 K6 ["key_code is required for keyDown action"]
       29 GETIMPORT                        R10 K8 [assert]
       31 CALL                             R10 2 0
       32 JUMPIFNOT                        R1 ; [+7]
       33 LOADB                            R12 1
       34 MOVE                             R13 R8
       35 LOADB                            R14 0
       36 NAMECALL                         R10 R1 K9 ["SendKey"]
       38 CALL                             R10 4 0
       39 JUMP                             ; [+163]
       40 GETUPVAL                         R10 2
       41 LOADB                            R12 1
       42 MOVE                             R13 R8
       43 LOADB                            R14 0
       44 LOADNIL                          R15
       45 NAMECALL                         R10 R10 K10 ["SendKeyEvent"]
       47 CALL                             R10 5 0
       48 JUMP                             ; [+154]
       49 JUMPIFNOTEQKS                    R7 K11 ["keyUp"] ; [+28]
       51 GETUPVAL                         R10 0
       52 CALL                             R10 0 1
       53 JUMPIFNOT                        R10 ; [+7]
       54 FASTCALL2K                       ASSERT R8 K12 ; [+5]
       56 MOVE                             R11 R8
       57 LOADK                            R12 K12 ["key_code is required for keyUp action"]
       58 GETIMPORT                        R10 K8 [assert]
       60 CALL                             R10 2 0
       61 JUMPIFNOT                        R1 ; [+7]
       62 LOADB                            R12 0
       63 MOVE                             R13 R8
       64 LOADB                            R14 0
       65 NAMECALL                         R10 R1 K9 ["SendKey"]
       67 CALL                             R10 4 0
       68 JUMP                             ; [+134]
       69 GETUPVAL                         R10 2
       70 LOADB                            R12 0
       71 MOVE                             R13 R8
       72 LOADB                            R14 0
       73 LOADNIL                          R15
       74 NAMECALL                         R10 R10 K10 ["SendKeyEvent"]
       76 CALL                             R10 5 0
       77 JUMP                             ; [+125]
       78 JUMPIFNOTEQKS                    R7 K13 ["keyPress"] ; [+48]
       80 GETUPVAL                         R10 0
       81 CALL                             R10 0 1
       82 JUMPIFNOT                        R10 ; [+7]
       83 FASTCALL2K                       ASSERT R8 K14 ; [+5]
       85 MOVE                             R11 R8
       86 LOADK                            R12 K14 ["key_code is required for keyPress action"]
       87 GETIMPORT                        R10 K8 [assert]
       89 CALL                             R10 2 0
       90 JUMPIFNOT                        R1 ; [+7]
       91 LOADB                            R12 1
       92 MOVE                             R13 R8
       93 LOADB                            R14 0
       94 NAMECALL                         R10 R1 K9 ["SendKey"]
       96 CALL                             R10 4 0
       97 JUMP                             ; [+8]
       98 GETUPVAL                         R10 2
       99 LOADB                            R12 1
      100 MOVE                             R13 R8
      101 LOADB                            R14 0
      102 LOADNIL                          R15
      103 NAMECALL                         R10 R10 K10 ["SendKeyEvent"]
      105 CALL                             R10 5 0
      106 GETIMPORT                        R10 K17 [task.wait]
      108 LOADK                            R11 K18 [0.1]
      109 CALL                             R10 1 0
      110 JUMPIFNOT                        R1 ; [+7]
      111 LOADB                            R12 0
      112 MOVE                             R13 R8
      113 LOADB                            R14 0
      114 NAMECALL                         R10 R1 K9 ["SendKey"]
      116 CALL                             R10 4 0
      117 JUMP                             ; [+85]
      118 GETUPVAL                         R10 2
      119 LOADB                            R12 0
      120 MOVE                             R13 R8
      121 LOADB                            R14 0
      122 LOADNIL                          R15
      123 NAMECALL                         R10 R10 K10 ["SendKeyEvent"]
      125 CALL                             R10 5 0
      126 JUMP                             ; [+76]
      127 JUMPIFNOTEQKS                    R7 K19 ["textInput"] ; [+49]
      129 GETUPVAL                         R10 0
      130 CALL                             R10 0 1
      131 JUMPIFNOT                        R10 ; [+7]
      132 FASTCALL2K                       ASSERT R9 K20 ; [+5]
      134 MOVE                             R11 R9
      135 LOADK                            R12 K20 ["text_inputs is required for textInput action"]
      136 GETIMPORT                        R10 K8 [assert]
      138 CALL                             R10 2 0
      139 GETTABLEKS                       R10 R6 K21 ["instance_path"]
      141 JUMPIFNOT                        R10 ; [+22]
      142 GETUPVAL                         R10 3
      143 GETTABLEKS                       R10 R10 K22 ["mouseInput"]
      145 DUPTABLE                         R11 K23 [{"actions"}]
      146 NEWTABLE                         R12 0 1
      148 DUPTABLE                         R13 K25 [{"action", "instance_path", "mouse_button"}]
      149 LOADK                            R14 K26 ["mouseButtonClick"]
      150 SETTABLEKS                       R14 R13 K2 ["action"]
      152 GETTABLEKS                       R14 R6 K21 ["instance_path"]
      154 SETTABLEKS                       R14 R13 K21 ["instance_path"]
      156 LOADK                            R14 K27 ["left"]
      157 SETTABLEKS                       R14 R13 K24 ["mouse_button"]
      159 SETLIST                          R12 R13 1 [1]
      161 SETTABLEKS                       R12 R11 K1 ["actions"]
      163 CALL                             R10 1 0
      164 JUMPIFNOT                        R1 ; [+5]
      165 MOVE                             R12 R9
      166 NAMECALL                         R10 R1 K28 ["SendTextInput"]
      168 CALL                             R10 2 0
      169 JUMP                             ; [+33]
      170 GETUPVAL                         R10 2
      171 MOVE                             R12 R9
      172 LOADNIL                          R13
      173 NAMECALL                         R10 R10 K29 ["SendTextInputCharacterEvent"]
      175 CALL                             R10 3 0
      176 JUMP                             ; [+26]
      177 JUMPIFNOTEQKS                    R7 K16 ["wait"] ; [+25]
      179 GETTABLEKS                       R10 R6 K30 ["wait_time_ms"]
      181 JUMPIFNOTEQKNIL                  R10 ; [+6]
      183 GETIMPORT                        R11 K32 [error]
      185 LOADK                            R12 K33 ["wait_time_ms is required for wait action"]
      186 LOADN                            R13 0
      187 CALL                             R11 2 0
      188 LOADN                            R11 0
      189 JUMPIFLT                         R10 R11 ; [+4]
      191 LOADN                            R11 16
      192 JUMPIFNOTLT                      R11 R10 ; [+6]
      194 GETIMPORT                        R11 K32 [error]
      196 LOADK                            R12 K34 ["wait_time_ms must be between 0 and 10000"]
      197 LOADN                            R13 0
      198 CALL                             R11 2 0
      199 GETIMPORT                        R11 K17 [task.wait]
      201 DIVK                             R12 R10 K35 [1000]
      202 CALL                             R11 1 0
      203 FORGLOOP                         R2 2 ; [-190]
      205 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Players"]
        2 NAMECALL                         R0 R0 K1 ["GetService"]
        4 CALL                             R0 2 1
        5 GETTABLEKS                       R1 R0 K2 ["LocalPlayer"]
        7 GETTABLEKS                       R2 R1 K3 ["Character"]
        9 JUMPIF                           R2 ; [+5]
       10 GETTABLEKS                       R2 R1 K4 ["CharacterAdded"]
       12 NAMECALL                         R2 R2 K5 ["Wait"]
       14 CALL                             R2 1 1
       15 LOADK                            R5 K6 ["Humanoid"]
       16 NAMECALL                         R3 R2 K7 ["WaitForChild"]
       18 CALL                             R3 2 1
       19 MOVE                             R4 R3
       20 MOVE                             R5 R2
       21 RETURN                           R4 2

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Position"]
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R0 R0 K1 ["ComputeAsync"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["Disconnect"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["Disconnect"]
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 2
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 NAMECALL                         R2 R2 K1 ["Fire"]
       13 CALL                             R2 3 0
       14 RETURN                           R0 0

PROTO_25:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 JUMPIFNOTLE                      R2 R1 ; [+22]
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 1
        7 SUB                              R1 R2 R3
        8 LOADN                            R2 3
        9 JUMPIFNOTLT                      R1 R2 ; [+16]
       11 GETUPVAL                         R1 2
       12 NAMECALL                         R1 R1 K0 ["Disconnect"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 3
       16 NAMECALL                         R1 R1 K0 ["Disconnect"]
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 4
       20 LOADB                            R3 0
       21 LOADK                            R4 K1 ["Path Blocked"]
       22 NAMECALL                         R1 R1 K2 ["Fire"]
       24 CALL                             R1 3 0
       25 RETURN                           R0 0
       26 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+15]
        2 GETUPVAL                         R1 1
        3 NAMECALL                         R1 R1 K0 ["Disconnect"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 2
        7 NAMECALL                         R1 R1 K0 ["Disconnect"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 3
       11 LOADB                            R3 1
       12 LOADK                            R4 K1 ["User Cancelled"]
       13 NAMECALL                         R1 R1 K2 ["Fire"]
       15 CALL                             R1 3 0
       16 RETURN                           R0 0
       17 JUMPIFNOT                        R0 ; [+83]
       18 GETUPVAL                         R1 4
       19 GETUPVAL                         R3 5
       20 LENGTH                           R2 R3
       21 JUMPIFNOTLT                      R1 R2 ; [+79]
       23 GETUPVAL                         R2 4
       24 ADDK                             R1 R2 K3 [1]
       25 SETUPVAL                         R1 4
       26 GETUPVAL                         R1 6
       27 JUMPIFNOT                        R1 ; [+21]
       28 GETUPVAL                         R2 6
       29 GETUPVAL                         R3 4
       30 SUB                              R1 R2 R3
       31 LOADN                            R2 3
       32 JUMPIFNOTLT                      R1 R2 ; [+16]
       34 GETUPVAL                         R1 1
       35 NAMECALL                         R1 R1 K0 ["Disconnect"]
       37 CALL                             R1 1 0
       38 GETUPVAL                         R1 2
       39 NAMECALL                         R1 R1 K0 ["Disconnect"]
       41 CALL                             R1 1 0
       42 GETUPVAL                         R1 3
       43 LOADB                            R3 0
       44 LOADK                            R4 K4 ["Path Blocked"]
       45 NAMECALL                         R1 R1 K2 ["Fire"]
       47 CALL                             R1 3 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R2 5
       50 GETUPVAL                         R3 4
       51 GETTABLE                         R1 R2 R3
       52 GETTABLEKS                       R1 R1 K5 ["Action"]
       54 GETIMPORT                        R2 K9 [Enum.PathWaypointAction.Jump]
       56 JUMPIFNOTEQ                      R1 R2 ; [+7]
       58 GETUPVAL                         R1 7
       59 GETIMPORT                        R3 K12 [Enum.HumanoidStateType.Jumping]
       61 NAMECALL                         R1 R1 K13 ["ChangeState"]
       63 CALL                             R1 2 0
       64 GETUPVAL                         R1 7
       65 GETTABLEKS                       R1 R1 K14 ["Sit"]
       67 JUMPIFNOT                        R1 ; [+6]
       68 GETUPVAL                         R1 7
       69 GETIMPORT                        R3 K12 [Enum.HumanoidStateType.Jumping]
       71 NAMECALL                         R1 R1 K13 ["ChangeState"]
       73 CALL                             R1 2 0
       74 GETUPVAL                         R3 5
       75 LENGTH                           R2 R3
       76 GETUPVAL                         R3 4
       77 SUB                              R1 R2 R3
       78 LOADN                            R2 3
       79 JUMPIFNOTLT                      R1 R2 ; [+11]
       81 GETUPVAL                         R1 7
       82 GETTABLEKS                       R1 R1 K15 ["WalkSpeed"]
       84 LOADN                            R2 16
       85 JUMPIFNOTLT                      R2 R1 ; [+5]
       87 GETUPVAL                         R1 7
       88 LOADN                            R2 16
       89 SETTABLEKS                       R2 R1 K15 ["WalkSpeed"]
       91 GETUPVAL                         R1 7
       92 GETUPVAL                         R4 5
       93 GETUPVAL                         R5 4
       94 GETTABLE                         R3 R4 R5
       95 GETTABLEKS                       R3 R3 K16 ["Position"]
       97 NAMECALL                         R1 R1 K17 ["MoveTo"]
       99 CALL                             R1 2 0
      100 RETURN                           R0 0
      101 GETUPVAL                         R1 1
      102 NAMECALL                         R1 R1 K0 ["Disconnect"]
      104 CALL                             R1 1 0
      105 GETUPVAL                         R1 2
      106 NAMECALL                         R1 R1 K0 ["Disconnect"]
      108 CALL                             R1 1 0
      109 GETUPVAL                         R1 3
      110 LOADB                            R3 1
      111 LOADK                            R4 K18 ["Destination reached"]
      112 NAMECALL                         R1 R1 K2 ["Fire"]
      114 CALL                             R1 3 0
      115 RETURN                           R0 0
      116 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K3 [{"AgentRadius", "AgentHeight", "AgentCanJump"}]
        2 LOADN                            R4 2
        3 SETTABLEKS                       R4 R3 K0 ["AgentRadius"]
        5 LOADN                            R4 5
        6 SETTABLEKS                       R4 R3 K1 ["AgentHeight"]
        8 LOADB                            R4 1
        9 SETTABLEKS                       R4 R3 K2 ["AgentCanJump"]
       11 NAMECALL                         R1 R1 K4 ["CreatePath"]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R4 1
       15 LOADK                            R6 K5 ["Players"]
       16 NAMECALL                         R4 R4 K6 ["GetService"]
       18 CALL                             R4 2 1
       19 GETTABLEKS                       R5 R4 K7 ["LocalPlayer"]
       21 GETTABLEKS                       R6 R5 K8 ["Character"]
       23 JUMPIF                           R6 ; [+5]
       24 GETTABLEKS                       R6 R5 K9 ["CharacterAdded"]
       26 NAMECALL                         R6 R6 K10 ["Wait"]
       28 CALL                             R6 1 1
       29 LOADK                            R9 K11 ["Humanoid"]
       30 NAMECALL                         R7 R6 K12 ["WaitForChild"]
       32 CALL                             R7 2 1
       33 MOVE                             R2 R7
       34 MOVE                             R3 R6
       35 GETTABLEKS                       R4 R3 K13 ["PrimaryPart"]
       37 JUMPIF                           R4 ; [+4]
       38 GETIMPORT                        R5 K15 [error]
       40 LOADK                            R6 K16 ["Character PrimaryPart not found"]
       41 CALL                             R5 1 0
       42 LOADNIL                          R5
       43 LOADNIL                          R6
       44 LOADNIL                          R7
       45 LOADNIL                          R8
       46 GETIMPORT                        R9 K18 [pcall]
       48 NEWCLOSURE                       R10 P0
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R0
       52 CALL                             R9 1 2
       53 JUMPIFNOT                        R9 ; [+79]
       54 GETTABLEKS                       R11 R1 K19 ["Status"]
       56 GETIMPORT                        R12 K23 [Enum.PathStatus.Success]
       58 JUMPIFNOTEQ                      R11 R12 ; [+74]
       60 NAMECALL                         R11 R1 K24 ["GetWaypoints"]
       62 CALL                             R11 1 1
       63 MOVE                             R5 R11
       64 GETIMPORT                        R11 K27 [Instance.new]
       66 LOADK                            R12 K28 ["BindableEvent"]
       67 CALL                             R11 1 1
       68 LOADNIL                          R12
       69 LOADB                            R13 1
       70 SETUPVAL                         R13 2
       71 NEWCLOSURE                       R13 P1
       72 CAPTURE                          REF R8
       73 CAPTURE                          REF R7
       74 CAPTURE                          VAL R11
       75 GETTABLEKS                       R14 R1 K29 ["Blocked"]
       77 NEWCLOSURE                       R16 P2
       78 CAPTURE                          REF R12
       79 CAPTURE                          REF R6
       80 CAPTURE                          REF R8
       81 CAPTURE                          REF R7
       82 CAPTURE                          VAL R11
       83 NAMECALL                         R14 R14 K30 ["Connect"]
       85 CALL                             R14 2 1
       86 MOVE                             R8 R14
       87 JUMPIF                           R7 ; [+15]
       88 GETTABLEKS                       R14 R2 K31 ["MoveToFinished"]
       90 NEWCLOSURE                       R16 P3
       91 CAPTURE                          UPVAL U2
       92 CAPTURE                          REF R8
       93 CAPTURE                          REF R7
       94 CAPTURE                          VAL R11
       95 CAPTURE                          REF R6
       96 CAPTURE                          REF R5
       97 CAPTURE                          REF R12
       98 CAPTURE                          VAL R2
       99 NAMECALL                         R14 R14 K30 ["Connect"]
      101 CALL                             R14 2 1
      102 MOVE                             R7 R14
      103 LOADN                            R6 2
      104 GETTABLE                         R14 R5 R6
      105 GETTABLEKS                       R14 R14 K32 ["Action"]
      107 GETIMPORT                        R15 K35 [Enum.PathWaypointAction.Jump]
      109 JUMPIFEQ                         R14 R15 ; [+4]
      111 GETTABLEKS                       R14 R2 K36 ["Sit"]
      113 JUMPIFNOT                        R14 ; [+5]
      114 GETIMPORT                        R16 K39 [Enum.HumanoidStateType.Jumping]
      116 NAMECALL                         R14 R2 K40 ["ChangeState"]
      118 CALL                             R14 2 0
      119 GETTABLE                         R16 R5 R6
      120 GETTABLEKS                       R16 R16 K41 ["Position"]
      122 NAMECALL                         R14 R2 K42 ["MoveTo"]
      124 CALL                             R14 2 0
      125 GETTABLEKS                       R14 R11 K43 ["Event"]
      127 NAMECALL                         R14 R14 K10 ["Wait"]
      129 CALL                             R14 1 -1
      130 CLOSEUPVALS                      R5
      131 RETURN                           R14 -1
      132 CLOSEUPVALS                      R12
      133 LOADB                            R11 0
      134 LOADK                            R12 K44 ["Can not find a route to the destination"]
      135 CLOSEUPVALS                      R5
      136 RETURN                           R11 2

PROTO_28:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["Players"]
        2 NAMECALL                         R2 R2 K1 ["GetService"]
        4 CALL                             R2 2 1
        5 GETTABLEKS                       R3 R2 K2 ["LocalPlayer"]
        7 GETTABLEKS                       R4 R3 K3 ["Character"]
        9 JUMPIF                           R4 ; [+5]
       10 GETTABLEKS                       R4 R3 K4 ["CharacterAdded"]
       12 NAMECALL                         R4 R4 K5 ["Wait"]
       14 CALL                             R4 1 1
       15 LOADK                            R7 K6 ["Humanoid"]
       16 NAMECALL                         R5 R4 K7 ["WaitForChild"]
       18 CALL                             R5 2 1
       19 MOVE                             R1 R5
       20 GETTABLEKS                       R2 R0 K8 ["x"]
       22 GETTABLEKS                       R3 R0 K9 ["y"]
       24 GETTABLEKS                       R4 R0 K10 ["z"]
       26 GETTABLEKS                       R5 R0 K11 ["instance_path"]
       28 GETTABLEKS                       R7 R0 K13 ["speed_multiplier"]
       30 ORK                              R6 R7 K12 [1]
       31 LOADK                            R7 K14 [0.1]
       32 JUMPIFNOTLT                      R6 R7 ; [+3]
       34 LOADK                            R6 K14 [0.1]
       35 JUMP                             ; [+4]
       36 LOADN                            R7 10
       37 JUMPIFNOTLT                      R7 R6 ; [+2]
       39 LOADN                            R6 10
       40 JUMPIFNOT                        R5 ; [+46]
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R7 R7 K15 ["findInstanceByPath"]
       44 MOVE                             R8 R5
       45 CALL                             R7 1 1
       46 JUMPIFNOT                        R7 ; [+34]
       47 LOADK                            R11 K16 ["Model"]
       48 NAMECALL                         R9 R7 K17 ["IsA"]
       50 CALL                             R9 2 1
       51 JUMPIFNOT                        R9 ; [+6]
       52 NAMECALL                         R8 R7 K18 ["GetPivot"]
       54 CALL                             R8 1 1
       55 GETTABLEKS                       R8 R8 K19 ["Position"]
       57 JUMP                             ; [+16]
       58 LOADK                            R11 K20 ["BasePart"]
       59 NAMECALL                         R9 R7 K17 ["IsA"]
       61 CALL                             R9 2 1
       62 JUMPIFNOT                        R9 ; [+3]
       63 GETTABLEKS                       R8 R7 K19 ["Position"]
       65 JUMP                             ; [+8]
       66 GETIMPORT                        R9 K22 [error]
       68 LOADK                            R11 K23 ["Instance is not a Model or BasePart: "]
       69 GETTABLEKS                       R12 R7 K24 ["ClassName"]
       71 CONCAT                           R10 R11 R12
       72 CALL                             R9 1 0
       73 LOADNIL                          R8
       74 GETTABLEKS                       R2 R8 K25 ["X"]
       76 GETTABLEKS                       R3 R8 K26 ["Y"]
       78 GETTABLEKS                       R4 R8 K27 ["Z"]
       80 JUMP                             ; [+6]
       81 GETIMPORT                        R8 K22 [error]
       83 LOADK                            R10 K28 ["Instance not found: "]
       84 MOVE                             R11 R5
       85 CONCAT                           R9 R10 R11
       86 CALL                             R8 1 0
       87 FASTCALL3                        VECTOR R2 R3 R4
       89 MOVE                             R8 R2
       90 MOVE                             R9 R3
       91 MOVE                             R10 R4
       92 GETIMPORT                        R7 K31 [Vector3.new]
       94 CALL                             R7 3 1
       95 GETTABLEKS                       R8 R1 K32 ["WalkSpeed"]
       97 MUL                              R9 R8 R6
       98 SETTABLEKS                       R9 R1 K32 ["WalkSpeed"]
      100 GETUPVAL                         R9 2
      101 MOVE                             R10 R7
      102 CALL                             R9 1 2
      103 SETTABLEKS                       R8 R1 K32 ["WalkSpeed"]
      105 JUMPIF                           R9 ; [+4]
      106 GETIMPORT                        R11 K22 [error]
      108 MOVE                             R12 R10
      109 CALL                             R11 1 0
      110 RETURN                           R0 0

PROTO_29:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_30:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["videoCapture"]
        2 GETTABLEKS                       R1 R1 K1 ["FilePath"]
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R1 0
        6 JUMPIFNOT                        R1 ; [+7]
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 0
        9 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       11 GETIMPORT                        R1 K4 [table.insert]
       13 CALL                             R1 2 0
       14 LOADB                            R1 0
       15 SETUPVAL                         R1 2
       16 GETUPVAL                         R1 3
       17 NAMECALL                         R1 R1 K5 ["Fire"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETIMPORT                        R0 K1 [error]
        6 LOADK                            R1 K2 ["Screen recording already started"]
        7 LOADN                            R2 0
        8 CALL                             R0 2 0
        9 LOADB                            R0 1
       10 SETUPVAL                         R0 1
       11 GETUPVAL                         R0 2
       12 JUMPIF                           R0 ; [+10]
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K3 ["CaptureBegan"]
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U4
       19 NAMECALL                         R0 R0 K4 ["Connect"]
       21 CALL                             R0 2 1
       22 SETUPVAL                         R0 2
       23 GETUPVAL                         R0 5
       24 JUMPIF                           R0 ; [+12]
       25 GETUPVAL                         R0 3
       26 GETTABLEKS                       R0 R0 K5 ["CaptureSavedInternal"]
       28 NEWCLOSURE                       R2 P1
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          UPVAL U8
       33 NAMECALL                         R0 R0 K4 ["Connect"]
       35 CALL                             R0 2 1
       36 SETUPVAL                         R0 5
       37 LOADNIL                          R0
       38 SETUPVAL                         R0 6
       39 GETUPVAL                         R0 3
       40 NAMECALL                         R0 R0 K6 ["StartVideoCaptureInternalAsync"]
       42 CALL                             R0 1 0
       43 GETUPVAL                         R0 0
       44 JUMPIF                           R0 ; [+4]
       45 GETUPVAL                         R0 4
       46 NAMECALL                         R0 R0 K7 ["Wait"]
       48 CALL                             R0 1 0
       49 LOADB                            R0 0
       50 SETUPVAL                         R0 1
       51 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 2
        5 NAMECALL                         R0 R0 K0 ["StopVideoCaptureInternal"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 0
        9 JUMPIFNOT                        R0 ; [+4]
       10 GETUPVAL                         R0 3
       11 NAMECALL                         R0 R0 K1 ["Wait"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 1
       15 RETURN                           R0 1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R0 1
       11 NAMECALL                         R0 R0 K0 ["Disconnect"]
       13 CALL                             R0 1 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 1
       16 LOADB                            R0 0
       17 SETUPVAL                         R0 2
       18 LOADB                            R0 0
       19 SETUPVAL                         R0 3
       20 GETIMPORT                        R0 K3 [table.clear]
       22 GETUPVAL                         R1 4
       23 CALL                             R0 1 0
       24 LOADNIL                          R0
       25 SETUPVAL                         R0 5
       26 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Signal"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 LOADNIL                          R6
       20 LOADNIL                          R7
       21 LOADNIL                          R8
       22 LOADB                            R9 0
       23 LOADN                            R10 10
       24 GETIMPORT                        R11 K5 [require]
       26 GETTABLEKS                       R12 R0 K10 ["Flags"]
       28 GETTABLEKS                       R12 R12 K11 ["FFlagAssistantVirtualInputEnabled"]
       30 CALL                             R11 1 1
       31 NEWTABLE                         R12 16 0
       33 NEWCLOSURE                       R13 P0
       34 CAPTURE                          REF R3
       35 CAPTURE                          REF R2
       36 CAPTURE                          REF R4
       37 CAPTURE                          VAL R11
       38 CAPTURE                          REF R5
       39 CAPTURE                          REF R6
       40 CAPTURE                          REF R7
       41 CAPTURE                          REF R8
       42 MOVE                             R14 R13
       43 CALL                             R14 0 0
       44 NEWCLOSURE                       R14 P1
       45 CAPTURE                          REF R2
       46 CAPTURE                          VAL R13
       47 SETTABLEKS                       R14 R12 K12 ["setDataModel"]
       49 LOADNIL                          R14
       50 LOADNIL                          R15
       51 NEWCLOSURE                       R16 P2
       52 CAPTURE                          REF R14
       53 CAPTURE                          REF R2
       54 CAPTURE                          REF R10
       55 CAPTURE                          REF R15
       56 NEWCLOSURE                       R17 P3
       57 CAPTURE                          REF R14
       58 CAPTURE                          REF R10
       59 NEWCLOSURE                       R18 P4
       60 CAPTURE                          REF R14
       61 CAPTURE                          REF R3
       62 NEWCLOSURE                       R19 P5
       63 CAPTURE                          REF R14
       64 CAPTURE                          REF R15
       65 CAPTURE                          REF R3
       66 DUPCLOSURE                       R20 K13 [PROTO_8]
       67 DUPCLOSURE                       R21 K14 [PROTO_9]
       68 NEWCLOSURE                       R22 P8
       69 CAPTURE                          REF R2
       70 SETTABLEKS                       R22 R12 K15 ["findInstanceByPath"]
       72 DUPCLOSURE                       R22 K16 [PROTO_11]
       73 NEWCLOSURE                       R23 P10
       74 CAPTURE                          REF R5
       75 NEWCLOSURE                       R24 P11
       76 CAPTURE                          REF R5
       77 NEWCLOSURE                       R25 P12
       78 CAPTURE                          REF R5
       79 NEWCLOSURE                       R26 P13
       80 CAPTURE                          REF R5
       81 NEWCLOSURE                       R27 P14
       82 CAPTURE                          REF R5
       83 NEWCLOSURE                       R28 P15
       84 CAPTURE                          VAL R16
       85 CAPTURE                          VAL R11
       86 CAPTURE                          REF R7
       87 CAPTURE                          VAL R12
       88 CAPTURE                          REF R4
       89 CAPTURE                          REF R14
       90 CAPTURE                          REF R10
       91 CAPTURE                          VAL R18
       92 CAPTURE                          REF R5
       93 CAPTURE                          VAL R24
       94 CAPTURE                          VAL R19
       95 CAPTURE                          REF R15
       96 CAPTURE                          VAL R25
       97 SETTABLEKS                       R28 R12 K17 ["mouseInput"]
       99 NEWCLOSURE                       R28 P16
      100 CAPTURE                          VAL R11
      101 CAPTURE                          REF R7
      102 CAPTURE                          REF R5
      103 CAPTURE                          VAL R12
      104 SETTABLEKS                       R28 R12 K18 ["keyboardInput"]
      106 NEWCLOSURE                       R28 P17
      107 CAPTURE                          REF R2
      108 NEWCLOSURE                       R29 P18
      109 CAPTURE                          REF R6
      110 CAPTURE                          REF R2
      111 CAPTURE                          REF R9
      112 NEWCLOSURE                       R30 P19
      113 CAPTURE                          REF R2
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R29
      116 SETTABLEKS                       R30 R12 K19 ["characterNavigation"]
      118 NEWCLOSURE                       R30 P20
      119 CAPTURE                          REF R9
      120 SETTABLEKS                       R30 R12 K20 ["stopCharacterNavigation"]
      122 LOADB                            R30 0
      123 LOADB                            R31 0
      124 GETTABLEKS                       R32 R1 K21 ["new"]
      126 CALL                             R32 0 1
      127 GETTABLEKS                       R33 R1 K21 ["new"]
      129 CALL                             R33 0 1
      130 LOADNIL                          R34
      131 LOADNIL                          R35
      132 NEWTABLE                         R36 0 0
      134 LOADNIL                          R37
      135 NEWCLOSURE                       R38 P21
      136 CAPTURE                          REF R30
      137 CAPTURE                          REF R31
      138 CAPTURE                          REF R34
      139 CAPTURE                          REF R8
      140 CAPTURE                          VAL R32
      141 CAPTURE                          REF R35
      142 CAPTURE                          REF R37
      143 CAPTURE                          VAL R36
      144 CAPTURE                          VAL R33
      145 SETTABLEKS                       R38 R12 K22 ["startScreenRecording"]
      147 NEWCLOSURE                       R38 P22
      148 CAPTURE                          REF R30
      149 CAPTURE                          REF R37
      150 CAPTURE                          REF R8
      151 CAPTURE                          VAL R33
      152 SETTABLEKS                       R38 R12 K23 ["stopScreenRecording"]
      154 DUPCLOSURE                       R38 K24 [PROTO_34]
      155 CAPTURE                          VAL R36
      156 SETTABLEKS                       R38 R12 K25 ["getAllRecordingFilePaths"]
      158 NEWCLOSURE                       R38 P24
      159 CAPTURE                          REF R34
      160 CAPTURE                          REF R35
      161 CAPTURE                          REF R30
      162 CAPTURE                          REF R31
      163 CAPTURE                          VAL R36
      164 CAPTURE                          REF R37
      165 SETTABLEKS                       R38 R12 K26 ["_resetScreenRecordingForTests"]
      167 CLOSEUPVALS                      R2
      168 RETURN                           R12 1
