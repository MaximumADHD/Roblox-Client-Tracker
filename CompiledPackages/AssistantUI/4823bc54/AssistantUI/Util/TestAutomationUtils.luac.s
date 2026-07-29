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
       13 GETTABLEKS                       R0 R0 K3 ["FFlagAssistantVirtualInputEnabled"]
       15 JUMPIF                           R0 ; [+6]
       16 GETUPVAL                         R0 1
       17 LOADK                            R2 K4 ["VirtualInputManager"]
       18 NAMECALL                         R0 R0 K1 ["GetService"]
       20 CALL                             R0 2 1
       21 SETUPVAL                         R0 4
       22 GETUPVAL                         R0 1
       23 LOADK                            R2 K5 ["PathfindingService"]
       24 NAMECALL                         R0 R0 K1 ["GetService"]
       26 CALL                             R0 2 1
       27 SETUPVAL                         R0 5
       28 GETUPVAL                         R0 3
       29 GETTABLEKS                       R0 R0 K3 ["FFlagAssistantVirtualInputEnabled"]
       31 JUMPIFNOT                        R0 ; [+6]
       32 GETUPVAL                         R0 1
       33 LOADK                            R2 K6 ["UserInputService"]
       34 NAMECALL                         R0 R0 K1 ["GetService"]
       36 CALL                             R0 2 1
       37 SETUPVAL                         R0 6
       38 GETUPVAL                         R0 1
       39 LOADK                            R2 K7 ["CaptureService"]
       40 NAMECALL                         R0 R0 K1 ["GetService"]
       42 CALL                             R0 2 1
       43 SETUPVAL                         R0 7
       44 RETURN                           R0 0

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
       10 LOADN                            R1 10000
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
       10 LOADN                            R8 -1
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
        5 GETTABLEKS                       R4 R4 K0 ["FFlagAssistantVirtualInputEnabled"]
        7 JUMPIFNOT                        R4 ; [+5]
        8 GETUPVAL                         R3 2
        9 NAMECALL                         R3 R3 K1 ["CreateVirtualInput"]
       11 CALL                             R3 1 1
       12 JUMP                             ; [+1]
       13 LOADNIL                          R3
       14 GETTABLEKS                       R4 R0 K2 ["actions"]
       16 LOADNIL                          R5
       17 LOADNIL                          R6
       18 FORGPREP                         R4
       19 GETTABLEKS                       R9 R8 K3 ["action"]
       21 JUMPIFNOTEQKS                    R9 K4 ["wait"] ; [+26]
       23 GETTABLEKS                       R10 R8 K5 ["wait_time_ms"]
       25 JUMPIFNOTEQKNIL                  R10 ; [+6]
       27 GETIMPORT                        R11 K7 [error]
       29 LOADK                            R12 K8 ["wait_time_ms is required for wait action"]
       30 LOADN                            R13 0
       31 CALL                             R11 2 0
       32 LOADN                            R11 0
       33 JUMPIFLT                         R10 R11 ; [+4]
       35 LOADN                            R11 10000
       36 JUMPIFNOTLT                      R11 R10 ; [+6]
       38 GETIMPORT                        R11 K7 [error]
       40 LOADK                            R12 K9 ["wait_time_ms must be between 0 and 10000"]
       41 LOADN                            R13 0
       42 CALL                             R11 2 0
       43 GETIMPORT                        R11 K11 [task.wait]
       45 DIVK                             R12 R10 K12 [1000]
       46 CALL                             R11 1 0
       47 JUMP                             ; [+255]
       48 LOADNIL                          R10
       49 LOADNIL                          R11
       50 GETTABLEKS                       R12 R8 K13 ["instance_path"]
       52 JUMPIFNOT                        R12 ; [+39]
       53 GETUPVAL                         R12 3
       54 GETTABLEKS                       R12 R12 K14 ["findInstanceByPath"]
       56 GETTABLEKS                       R13 R8 K13 ["instance_path"]
       58 CALL                             R12 1 1
       59 JUMPIFNOT                        R12 ; [+24]
       60 LOADK                            R16 K15 ["GuiObject"]
       61 NAMECALL                         R14 R12 K16 ["IsA"]
       63 CALL                             R14 2 1
       64 JUMPIF                           R14 ; [+8]
       65 GETIMPORT                        R13 K7 [error]
       67 LOADK                            R15 K17 ["Instance is not a GuiObject: "]
       68 GETTABLEKS                       R16 R12 K18 ["ClassName"]
       70 CONCAT                           R14 R15 R16
       71 CALL                             R13 1 1
       72 JUMP                             ; [+6]
       73 GETTABLEKS                       R14 R12 K19 ["AbsolutePosition"]
       75 GETTABLEKS                       R16 R12 K21 ["AbsoluteSize"]
       77 DIVK                             R15 R16 K20 [2]
       78 ADD                              R13 R14 R15
       79 GETTABLEKS                       R10 R13 K22 ["X"]
       81 GETTABLEKS                       R11 R13 K23 ["Y"]
       83 JUMP                             ; [+33]
       84 GETIMPORT                        R13 K7 [error]
       86 LOADK                            R15 K24 ["Instance not found: "]
       87 GETTABLEKS                       R16 R8 K13 ["instance_path"]
       89 CONCAT                           R14 R15 R16
       90 CALL                             R13 1 0
       91 JUMP                             ; [+25]
       92 GETTABLEKS                       R12 R8 K25 ["x"]
       94 JUMPIFEQKNIL                     R12 ; [+10]
       96 GETTABLEKS                       R12 R8 K26 ["y"]
       98 JUMPIFEQKNIL                     R12 ; [+6]
      100 GETTABLEKS                       R10 R8 K25 ["x"]
      102 GETTABLEKS                       R11 R8 K26 ["y"]
      104 JUMP                             ; [+12]
      105 JUMPIFEQKNIL                     R1 ; [+6]
      107 JUMPIFEQKNIL                     R2 ; [+4]
      109 MOVE                             R10 R1
      110 MOVE                             R11 R2
      111 JUMP                             ; [+5]
      112 GETIMPORT                        R12 K7 [error]
      114 LOADK                            R13 K27 ["Either x and y, instance_path, or a prior action that establishes mouse position is required"]
      115 LOADN                            R14 0
      116 CALL                             R12 2 0
      117 MOVE                             R1 R10
      118 MOVE                             R2 R11
      119 GETUPVAL                         R12 4
      120 NAMECALL                         R12 R12 K28 ["GetGuiInset"]
      122 CALL                             R12 1 1
      123 GETTABLEKS                       R14 R12 K22 ["X"]
      125 ADD                              R13 R10 R14
      126 GETTABLEKS                       R15 R12 K23 ["Y"]
      128 ADD                              R14 R11 R15
      129 GETUPVAL                         R15 5
      130 JUMPIF                           R15 ; [+1]
      131 JUMP                             ; [+5]
      132 LOADN                            R16 10
      133 SETUPVAL                         R16 6
      134 LOADB                            R16 1
      135 SETTABLEKS                       R16 R15 K29 ["Visible"]
      137 JUMPIFNOTEQKS                    R9 K30 ["moveTo"] ; [+27]
      139 GETUPVAL                         R15 7
      140 MOVE                             R16 R10
      141 MOVE                             R17 R11
      142 NEWCLOSURE                       R18 P0
      143 CAPTURE                          VAL R3
      144 CAPTURE                          VAL R12
      145 CAPTURE                          UPVAL U8
      146 CALL                             R15 3 0
      147 JUMPIFNOT                        R3 ; [+9]
      148 GETIMPORT                        R17 K33 [Vector2.new]
      150 MOVE                             R18 R13
      151 MOVE                             R19 R14
      152 CALL                             R17 2 -1
      153 NAMECALL                         R15 R3 K34 ["SendMousePosition"]
      155 CALL                             R15 -1 0
      156 JUMP                             ; [+146]
      157 GETUPVAL                         R15 8
      158 MOVE                             R17 R13
      159 MOVE                             R18 R14
      160 LOADNIL                          R19
      161 NAMECALL                         R15 R15 K35 ["SendMouseMoveEvent"]
      163 CALL                             R15 4 0
      164 JUMP                             ; [+138]
      165 JUMPIFEQKS                       R9 K36 ["mouseButtonDown"] ; [+5]
      167 JUMPIFEQKS                       R9 K37 ["mouseButtonUp"] ; [+3]
      169 JUMPIFNOTEQKS                    R9 K38 ["mouseButtonClick"] ; [+104]
      171 GETTABLEKS                       R15 R8 K39 ["mouse_button"]
      173 JUMPIFEQKS                       R15 K40 ["left"] ; [+10]
      175 JUMPIFEQKS                       R15 K41 ["right"] ; [+8]
      177 GETIMPORT                        R16 K7 [error]
      179 LOADK                            R18 K42 ["mouse_button (\"left\" or \"right\") is required for "]
      180 MOVE                             R19 R9
      181 CONCAT                           R17 R18 R19
      182 LOADN                            R18 0
      183 CALL                             R16 2 0
      184 GETUPVAL                         R16 7
      185 MOVE                             R17 R10
      186 MOVE                             R18 R11
      187 NEWCLOSURE                       R19 P1
      188 CAPTURE                          VAL R3
      189 CAPTURE                          VAL R12
      190 CAPTURE                          UPVAL U8
      191 CALL                             R16 3 0
      192 JUMPIFNOT                        R3 ; [+9]
      193 GETIMPORT                        R18 K33 [Vector2.new]
      195 MOVE                             R19 R13
      196 MOVE                             R20 R14
      197 CALL                             R18 2 -1
      198 NAMECALL                         R16 R3 K34 ["SendMousePosition"]
      200 CALL                             R16 -1 0
      201 JUMP                             ; [+7]
      202 GETUPVAL                         R16 8
      203 MOVE                             R18 R13
      204 MOVE                             R19 R14
      205 LOADNIL                          R20
      206 NAMECALL                         R16 R16 K35 ["SendMouseMoveEvent"]
      208 CALL                             R16 4 0
      209 JUMPIFNOTEQKS                    R9 K36 ["mouseButtonDown"] ; [+12]
      211 GETUPVAL                         R16 9
      212 MOVE                             R17 R3
      213 MOVE                             R18 R13
      214 MOVE                             R19 R14
      215 MOVE                             R20 R15
      216 LOADB                            R21 1
      217 CALL                             R16 5 0
      218 GETUPVAL                         R16 10
      219 LOADB                            R17 1
      220 CALL                             R16 1 0
      221 JUMP                             ; [+81]
      222 JUMPIFNOTEQKS                    R9 K37 ["mouseButtonUp"] ; [+21]
      224 GETUPVAL                         R16 9
      225 MOVE                             R17 R3
      226 MOVE                             R18 R13
      227 MOVE                             R19 R14
      228 MOVE                             R20 R15
      229 LOADB                            R21 0
      230 CALL                             R16 5 0
      231 GETUPVAL                         R16 5
      232 GETUPVAL                         R17 11
      233 JUMPIFNOT                        R16 ; [+69]
      234 JUMPIF                           R17 ; [+1]
      235 JUMP                             ; [+67]
      236 GETIMPORT                        R18 K45 [UDim2.fromOffset]
      238 LOADN                            R19 50
      239 LOADN                            R20 50
      240 CALL                             R18 2 1
      241 SETTABLEKS                       R18 R16 K46 ["Size"]
      243 JUMP                             ; [+59]
      244 GETIMPORT                        R16 K11 [task.wait]
      246 LOADK                            R17 K47 [0.1]
      247 CALL                             R16 1 0
      248 GETUPVAL                         R16 9
      249 MOVE                             R17 R3
      250 MOVE                             R18 R13
      251 MOVE                             R19 R14
      252 MOVE                             R20 R15
      253 LOADB                            R21 1
      254 CALL                             R16 5 0
      255 GETIMPORT                        R16 K11 [task.wait]
      257 LOADK                            R17 K47 [0.1]
      258 CALL                             R16 1 0
      259 GETUPVAL                         R16 9
      260 MOVE                             R17 R3
      261 MOVE                             R18 R13
      262 MOVE                             R19 R14
      263 MOVE                             R20 R15
      264 LOADB                            R21 0
      265 CALL                             R16 5 0
      266 GETIMPORT                        R16 K49 [task.spawn]
      268 NEWCLOSURE                       R17 P2
      269 CAPTURE                          UPVAL U10
      270 CAPTURE                          UPVAL U5
      271 CAPTURE                          UPVAL U11
      272 CALL                             R16 1 0
      273 JUMP                             ; [+29]
      274 JUMPIFNOTEQKS                    R9 K50 ["scrollUp"] ; [+8]
      276 GETUPVAL                         R15 12
      277 MOVE                             R16 R3
      278 MOVE                             R17 R13
      279 MOVE                             R18 R14
      280 LOADB                            R19 1
      281 CALL                             R15 4 0
      282 JUMP                             ; [+20]
      283 JUMPIFNOTEQKS                    R9 K51 ["scrollDown"] ; [+8]
      285 GETUPVAL                         R15 12
      286 MOVE                             R16 R3
      287 MOVE                             R17 R13
      288 MOVE                             R18 R14
      289 LOADB                            R19 0
      290 CALL                             R15 4 0
      291 JUMP                             ; [+11]
      292 GETIMPORT                        R15 K7 [error]
      294 LOADK                            R17 K52 ["Unknown mouse action: "]
      295 FASTCALL1                        TOSTRING R9 ; [+3]
      296 MOVE                             R19 R9
      297 GETIMPORT                        R18 K54 [tostring]
      299 CALL                             R18 1 1
      300 CONCAT                           R16 R17 R18
      301 LOADN                            R17 0
      302 CALL                             R15 2 0
      303 FORGLOOP                         R4 2 ; [-285]
      305 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantVirtualInputEnabled"]
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R1 R1 K1 ["CreateVirtualInput"]
        7 CALL                             R1 1 1
        8 JUMP                             ; [+1]
        9 LOADNIL                          R1
       10 GETTABLEKS                       R2 R0 K2 ["actions"]
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 GETTABLEKS                       R7 R6 K3 ["action"]
       17 GETTABLEKS                       R8 R6 K4 ["key_code"]
       19 GETTABLEKS                       R9 R6 K5 ["text_inputs"]
       21 JUMPIFNOTEQKS                    R7 K6 ["keyDown"] ; [+29]
       23 GETUPVAL                         R10 0
       24 GETTABLEKS                       R10 R10 K0 ["FFlagAssistantVirtualInputEnabled"]
       26 JUMPIFNOT                        R10 ; [+7]
       27 FASTCALL2K                       ASSERT R8 K7 ; [+5]
       29 MOVE                             R11 R8
       30 LOADK                            R12 K7 ["key_code is required for keyDown action"]
       31 GETIMPORT                        R10 K9 [assert]
       33 CALL                             R10 2 0
       34 JUMPIFNOT                        R1 ; [+7]
       35 LOADB                            R12 1
       36 MOVE                             R13 R8
       37 LOADB                            R14 0
       38 NAMECALL                         R10 R1 K10 ["SendKey"]
       40 CALL                             R10 4 0
       41 JUMP                             ; [+160]
       42 GETUPVAL                         R10 2
       43 LOADB                            R12 1
       44 MOVE                             R13 R8
       45 LOADB                            R14 0
       46 LOADNIL                          R15
       47 NAMECALL                         R10 R10 K11 ["SendKeyEvent"]
       49 CALL                             R10 5 0
       50 JUMP                             ; [+151]
       51 JUMPIFNOTEQKS                    R7 K12 ["keyUp"] ; [+29]
       53 GETUPVAL                         R10 0
       54 GETTABLEKS                       R10 R10 K0 ["FFlagAssistantVirtualInputEnabled"]
       56 JUMPIFNOT                        R10 ; [+7]
       57 FASTCALL2K                       ASSERT R8 K13 ; [+5]
       59 MOVE                             R11 R8
       60 LOADK                            R12 K13 ["key_code is required for keyUp action"]
       61 GETIMPORT                        R10 K9 [assert]
       63 CALL                             R10 2 0
       64 JUMPIFNOT                        R1 ; [+7]
       65 LOADB                            R12 0
       66 MOVE                             R13 R8
       67 LOADB                            R14 0
       68 NAMECALL                         R10 R1 K10 ["SendKey"]
       70 CALL                             R10 4 0
       71 JUMP                             ; [+130]
       72 GETUPVAL                         R10 2
       73 LOADB                            R12 0
       74 MOVE                             R13 R8
       75 LOADB                            R14 0
       76 LOADNIL                          R15
       77 NAMECALL                         R10 R10 K11 ["SendKeyEvent"]
       79 CALL                             R10 5 0
       80 JUMP                             ; [+121]
       81 JUMPIFNOTEQKS                    R7 K14 ["keyPress"] ; [+49]
       83 GETUPVAL                         R10 0
       84 GETTABLEKS                       R10 R10 K0 ["FFlagAssistantVirtualInputEnabled"]
       86 JUMPIFNOT                        R10 ; [+7]
       87 FASTCALL2K                       ASSERT R8 K15 ; [+5]
       89 MOVE                             R11 R8
       90 LOADK                            R12 K15 ["key_code is required for keyPress action"]
       91 GETIMPORT                        R10 K9 [assert]
       93 CALL                             R10 2 0
       94 JUMPIFNOT                        R1 ; [+7]
       95 LOADB                            R12 1
       96 MOVE                             R13 R8
       97 LOADB                            R14 0
       98 NAMECALL                         R10 R1 K10 ["SendKey"]
      100 CALL                             R10 4 0
      101 JUMP                             ; [+8]
      102 GETUPVAL                         R10 2
      103 LOADB                            R12 1
      104 MOVE                             R13 R8
      105 LOADB                            R14 0
      106 LOADNIL                          R15
      107 NAMECALL                         R10 R10 K11 ["SendKeyEvent"]
      109 CALL                             R10 5 0
      110 GETIMPORT                        R10 K18 [task.wait]
      112 LOADK                            R11 K19 [0.1]
      113 CALL                             R10 1 0
      114 JUMPIFNOT                        R1 ; [+7]
      115 LOADB                            R12 0
      116 MOVE                             R13 R8
      117 LOADB                            R14 0
      118 NAMECALL                         R10 R1 K10 ["SendKey"]
      120 CALL                             R10 4 0
      121 JUMP                             ; [+80]
      122 GETUPVAL                         R10 2
      123 LOADB                            R12 0
      124 MOVE                             R13 R8
      125 LOADB                            R14 0
      126 LOADNIL                          R15
      127 NAMECALL                         R10 R10 K11 ["SendKeyEvent"]
      129 CALL                             R10 5 0
      130 JUMP                             ; [+71]
      131 JUMPIFNOTEQKS                    R7 K20 ["textInput"] ; [+44]
      133 GETUPVAL                         R10 0
      134 GETTABLEKS                       R10 R10 K0 ["FFlagAssistantVirtualInputEnabled"]
      136 JUMPIFNOT                        R10 ; [+7]
      137 FASTCALL2K                       ASSERT R9 K21 ; [+5]
      139 MOVE                             R11 R9
      140 LOADK                            R12 K21 ["text_inputs is required for textInput action"]
      141 GETIMPORT                        R10 K9 [assert]
      143 CALL                             R10 2 0
      144 GETTABLEKS                       R10 R6 K22 ["instance_path"]
      146 JUMPIFNOT                        R10 ; [+16]
      147 GETUPVAL                         R10 3
      148 GETTABLEKS                       R10 R10 K23 ["mouseInput"]
      150 DUPTABLE                         R11 K24 [{"actions"}]
      151 NEWTABLE                         R12 0 1
      153 DUPTABLE                         R13 K28 [{["action"] = "mouseButtonClick", ["instance_path"], ["mouse_button"] = "left"}]
      154 GETTABLEKS                       R14 R6 K22 ["instance_path"]
      156 SETTABLEKS                       R14 R13 K22 ["instance_path"]
      158 SETLIST                          R12 R13 1 [1]
      160 SETTABLEKS                       R12 R11 K2 ["actions"]
      162 CALL                             R10 1 0
      163 JUMPIFNOT                        R1 ; [+5]
      164 MOVE                             R12 R9
      165 NAMECALL                         R10 R1 K29 ["SendTextInput"]
      167 CALL                             R10 2 0
      168 JUMP                             ; [+33]
      169 GETUPVAL                         R10 2
      170 MOVE                             R12 R9
      171 LOADNIL                          R13
      172 NAMECALL                         R10 R10 K30 ["SendTextInputCharacterEvent"]
      174 CALL                             R10 3 0
      175 JUMP                             ; [+26]
      176 JUMPIFNOTEQKS                    R7 K17 ["wait"] ; [+25]
      178 GETTABLEKS                       R10 R6 K31 ["wait_time_ms"]
      180 JUMPIFNOTEQKNIL                  R10 ; [+6]
      182 GETIMPORT                        R11 K33 [error]
      184 LOADK                            R12 K34 ["wait_time_ms is required for wait action"]
      185 LOADN                            R13 0
      186 CALL                             R11 2 0
      187 LOADN                            R11 0
      188 JUMPIFLT                         R10 R11 ; [+4]
      190 LOADN                            R11 10000
      191 JUMPIFNOTLT                      R11 R10 ; [+6]
      193 GETIMPORT                        R11 K33 [error]
      195 LOADK                            R12 K35 ["wait_time_ms must be between 0 and 10000"]
      196 LOADN                            R13 0
      197 CALL                             R11 2 0
      198 GETIMPORT                        R11 K18 [task.wait]
      200 DIVK                             R12 R10 K36 [1000]
      201 CALL                             R11 1 0
      202 FORGLOOP                         R2 2 ; [-188]
      204 RETURN                           R0 0

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
        1 DUPTABLE                         R3 K6 [{[1] = 2, ["AgentHeight"] = 5, ["AgentCanJump"] = True}]
        2 NAMECALL                         R1 R1 K7 ["CreatePath"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R4 1
        6 LOADK                            R6 K8 ["Players"]
        7 NAMECALL                         R4 R4 K9 ["GetService"]
        9 CALL                             R4 2 1
       10 GETTABLEKS                       R5 R4 K10 ["LocalPlayer"]
       12 GETTABLEKS                       R6 R5 K11 ["Character"]
       14 JUMPIF                           R6 ; [+5]
       15 GETTABLEKS                       R6 R5 K12 ["CharacterAdded"]
       17 NAMECALL                         R6 R6 K13 ["Wait"]
       19 CALL                             R6 1 1
       20 LOADK                            R9 K14 ["Humanoid"]
       21 NAMECALL                         R7 R6 K15 ["WaitForChild"]
       23 CALL                             R7 2 1
       24 MOVE                             R2 R7
       25 MOVE                             R3 R6
       26 GETTABLEKS                       R4 R3 K16 ["PrimaryPart"]
       28 JUMPIF                           R4 ; [+4]
       29 GETIMPORT                        R5 K18 [error]
       31 LOADK                            R6 K19 ["Character PrimaryPart not found"]
       32 CALL                             R5 1 0
       33 LOADNIL                          R5
       34 LOADNIL                          R6
       35 LOADNIL                          R7
       36 LOADNIL                          R8
       37 GETIMPORT                        R9 K21 [pcall]
       39 NEWCLOSURE                       R10 P0
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R0
       43 CALL                             R9 1 2
       44 JUMPIFNOT                        R9 ; [+79]
       45 GETTABLEKS                       R11 R1 K22 ["Status"]
       47 GETIMPORT                        R12 K26 [Enum.PathStatus.Success]
       49 JUMPIFNOTEQ                      R11 R12 ; [+74]
       51 NAMECALL                         R11 R1 K27 ["GetWaypoints"]
       53 CALL                             R11 1 1
       54 MOVE                             R5 R11
       55 GETIMPORT                        R11 K30 [Instance.new]
       57 LOADK                            R12 K31 ["BindableEvent"]
       58 CALL                             R11 1 1
       59 LOADNIL                          R12
       60 LOADB                            R13 1
       61 SETUPVAL                         R13 2
       62 NEWCLOSURE                       R13 P1
       63 CAPTURE                          REF R8
       64 CAPTURE                          REF R7
       65 CAPTURE                          VAL R11
       66 GETTABLEKS                       R14 R1 K32 ["Blocked"]
       68 NEWCLOSURE                       R16 P2
       69 CAPTURE                          REF R12
       70 CAPTURE                          REF R6
       71 CAPTURE                          REF R8
       72 CAPTURE                          REF R7
       73 CAPTURE                          VAL R11
       74 NAMECALL                         R14 R14 K33 ["Connect"]
       76 CALL                             R14 2 1
       77 MOVE                             R8 R14
       78 JUMPIF                           R7 ; [+15]
       79 GETTABLEKS                       R14 R2 K34 ["MoveToFinished"]
       81 NEWCLOSURE                       R16 P3
       82 CAPTURE                          UPVAL U2
       83 CAPTURE                          REF R8
       84 CAPTURE                          REF R7
       85 CAPTURE                          VAL R11
       86 CAPTURE                          REF R6
       87 CAPTURE                          REF R5
       88 CAPTURE                          REF R12
       89 CAPTURE                          VAL R2
       90 NAMECALL                         R14 R14 K33 ["Connect"]
       92 CALL                             R14 2 1
       93 MOVE                             R7 R14
       94 LOADN                            R6 2
       95 GETTABLE                         R14 R5 R6
       96 GETTABLEKS                       R14 R14 K35 ["Action"]
       98 GETIMPORT                        R15 K38 [Enum.PathWaypointAction.Jump]
      100 JUMPIFEQ                         R14 R15 ; [+4]
      102 GETTABLEKS                       R14 R2 K39 ["Sit"]
      104 JUMPIFNOT                        R14 ; [+5]
      105 GETIMPORT                        R16 K42 [Enum.HumanoidStateType.Jumping]
      107 NAMECALL                         R14 R2 K43 ["ChangeState"]
      109 CALL                             R14 2 0
      110 GETTABLE                         R16 R5 R6
      111 GETTABLEKS                       R16 R16 K44 ["Position"]
      113 NAMECALL                         R14 R2 K45 ["MoveTo"]
      115 CALL                             R14 2 0
      116 GETTABLEKS                       R14 R11 K46 ["Event"]
      118 NAMECALL                         R14 R14 K13 ["Wait"]
      120 CALL                             R14 1 -1
      121 CLOSEUPVALS                      R5
      122 RETURN                           R14 -1
      123 CLOSEUPVALS                      R12
      124 LOADB                            R11 0
      125 LOADK                            R12 K47 ["Can not find a route to the destination"]
      126 CLOSEUPVALS                      R5
      127 RETURN                           R11 2

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
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Signal"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K10 [game]
       21 LOADNIL                          R4
       22 LOADNIL                          R5
       23 LOADNIL                          R6
       24 LOADNIL                          R7
       25 LOADNIL                          R8
       26 LOADNIL                          R9
       27 LOADB                            R10 0
       28 LOADN                            R11 10
       29 NEWTABLE                         R12 16 0
       31 NEWCLOSURE                       R13 P0
       32 CAPTURE                          REF R4
       33 CAPTURE                          REF R3
       34 CAPTURE                          REF R5
       35 CAPTURE                          VAL R1
       36 CAPTURE                          REF R6
       37 CAPTURE                          REF R7
       38 CAPTURE                          REF R8
       39 CAPTURE                          REF R9
       40 MOVE                             R14 R13
       41 CALL                             R14 0 0
       42 NEWCLOSURE                       R14 P1
       43 CAPTURE                          REF R3
       44 CAPTURE                          VAL R13
       45 SETTABLEKS                       R14 R12 K11 ["setDataModel"]
       47 LOADNIL                          R14
       48 LOADNIL                          R15
       49 NEWCLOSURE                       R16 P2
       50 CAPTURE                          REF R14
       51 CAPTURE                          REF R3
       52 CAPTURE                          REF R11
       53 CAPTURE                          REF R15
       54 NEWCLOSURE                       R17 P3
       55 CAPTURE                          REF R14
       56 CAPTURE                          REF R11
       57 NEWCLOSURE                       R18 P4
       58 CAPTURE                          REF R14
       59 CAPTURE                          REF R4
       60 NEWCLOSURE                       R19 P5
       61 CAPTURE                          REF R14
       62 CAPTURE                          REF R15
       63 CAPTURE                          REF R4
       64 DUPCLOSURE                       R20 K12 [PROTO_8]
       65 DUPCLOSURE                       R21 K13 [PROTO_9]
       66 NEWCLOSURE                       R22 P8
       67 CAPTURE                          REF R3
       68 SETTABLEKS                       R22 R12 K14 ["findInstanceByPath"]
       70 DUPCLOSURE                       R22 K15 [PROTO_11]
       71 NEWCLOSURE                       R23 P10
       72 CAPTURE                          REF R6
       73 NEWCLOSURE                       R24 P11
       74 CAPTURE                          REF R6
       75 NEWCLOSURE                       R25 P12
       76 CAPTURE                          REF R6
       77 NEWCLOSURE                       R26 P13
       78 CAPTURE                          REF R6
       79 NEWCLOSURE                       R27 P14
       80 CAPTURE                          REF R6
       81 NEWCLOSURE                       R28 P15
       82 CAPTURE                          VAL R16
       83 CAPTURE                          VAL R1
       84 CAPTURE                          REF R8
       85 CAPTURE                          VAL R12
       86 CAPTURE                          REF R5
       87 CAPTURE                          REF R14
       88 CAPTURE                          REF R11
       89 CAPTURE                          VAL R18
       90 CAPTURE                          REF R6
       91 CAPTURE                          VAL R24
       92 CAPTURE                          VAL R19
       93 CAPTURE                          REF R15
       94 CAPTURE                          VAL R25
       95 SETTABLEKS                       R28 R12 K16 ["mouseInput"]
       97 NEWCLOSURE                       R28 P16
       98 CAPTURE                          VAL R1
       99 CAPTURE                          REF R8
      100 CAPTURE                          REF R6
      101 CAPTURE                          VAL R12
      102 SETTABLEKS                       R28 R12 K17 ["keyboardInput"]
      104 NEWCLOSURE                       R28 P17
      105 CAPTURE                          REF R3
      106 NEWCLOSURE                       R29 P18
      107 CAPTURE                          REF R7
      108 CAPTURE                          REF R3
      109 CAPTURE                          REF R10
      110 NEWCLOSURE                       R30 P19
      111 CAPTURE                          REF R3
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R29
      114 SETTABLEKS                       R30 R12 K18 ["characterNavigation"]
      116 NEWCLOSURE                       R30 P20
      117 CAPTURE                          REF R10
      118 SETTABLEKS                       R30 R12 K19 ["stopCharacterNavigation"]
      120 LOADB                            R30 0
      121 LOADB                            R31 0
      122 GETTABLEKS                       R32 R2 K20 ["new"]
      124 CALL                             R32 0 1
      125 GETTABLEKS                       R33 R2 K20 ["new"]
      127 CALL                             R33 0 1
      128 LOADNIL                          R34
      129 LOADNIL                          R35
      130 NEWTABLE                         R36 0 0
      132 LOADNIL                          R37
      133 NEWCLOSURE                       R38 P21
      134 CAPTURE                          REF R30
      135 CAPTURE                          REF R31
      136 CAPTURE                          REF R34
      137 CAPTURE                          REF R9
      138 CAPTURE                          VAL R32
      139 CAPTURE                          REF R35
      140 CAPTURE                          REF R37
      141 CAPTURE                          VAL R36
      142 CAPTURE                          VAL R33
      143 SETTABLEKS                       R38 R12 K21 ["startScreenRecording"]
      145 NEWCLOSURE                       R38 P22
      146 CAPTURE                          REF R30
      147 CAPTURE                          REF R37
      148 CAPTURE                          REF R9
      149 CAPTURE                          VAL R33
      150 SETTABLEKS                       R38 R12 K22 ["stopScreenRecording"]
      152 DUPCLOSURE                       R38 K23 [PROTO_34]
      153 CAPTURE                          VAL R36
      154 SETTABLEKS                       R38 R12 K24 ["getAllRecordingFilePaths"]
      156 NEWCLOSURE                       R38 P24
      157 CAPTURE                          REF R34
      158 CAPTURE                          REF R35
      159 CAPTURE                          REF R30
      160 CAPTURE                          REF R31
      161 CAPTURE                          VAL R36
      162 CAPTURE                          REF R37
      163 SETTABLEKS                       R38 R12 K25 ["_resetScreenRecordingForTests"]
      165 CLOSEUPVALS                      R3
      166 RETURN                           R12 1
