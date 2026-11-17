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
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+8]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETUPVAL                         R2 3
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

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
        0 LOADNIL                          R3
        1 LOADNIL                          R4
        2 GETTABLEKS                       R5 R0 K0 ["actions"]
        4 LOADNIL                          R6
        5 LOADNIL                          R7
        6 FORGPREP                         R5
        7 GETTABLEKS                       R10 R9 K1 ["action"]
        9 JUMPIFNOTEQKS                    R10 K2 ["wait"] ; [+26]
       11 GETTABLEKS                       R11 R9 K3 ["wait_time_ms"]
       13 JUMPIFNOTEQKNIL                  R11 ; [+6]
       15 GETIMPORT                        R12 K5 [error]
       17 LOADK                            R13 K6 ["wait_time_ms is required for wait action"]
       18 LOADN                            R14 0
       19 CALL                             R12 2 0
       20 LOADN                            R12 0
       21 JUMPIFLT                         R11 R12 ; [+4]
       23 LOADN                            R12 10000
       24 JUMPIFNOTLT                      R12 R11 ; [+6]
       26 GETIMPORT                        R12 K5 [error]
       28 LOADK                            R13 K7 ["wait_time_ms must be between 0 and 10000"]
       29 LOADN                            R14 0
       30 CALL                             R12 2 0
       31 GETIMPORT                        R12 K9 [task.wait]
       33 DIVK                             R13 R11 K10 [1000]
       34 CALL                             R12 1 0
       35 JUMP                             ; [+280]
       36 LOADNIL                          R11
       37 LOADNIL                          R12
       38 GETTABLEKS                       R13 R9 K11 ["instance_path"]
       40 JUMPIFNOT                        R13 ; [+45]
       41 JUMPIFNOT                        R2 ; [+5]
       42 GETIMPORT                        R13 K5 [error]
       44 LOADK                            R14 K12 ["instance_path is not supported when plugin_gui_id is set; use x and y"]
       45 LOADN                            R15 0
       46 CALL                             R13 2 0
       47 GETUPVAL                         R13 0
       48 GETTABLEKS                       R13 R13 K13 ["findInstanceByPath"]
       50 GETTABLEKS                       R14 R9 K11 ["instance_path"]
       52 CALL                             R13 1 1
       53 JUMPIFNOT                        R13 ; [+24]
       54 LOADK                            R17 K14 ["GuiObject"]
       55 NAMECALL                         R15 R13 K15 ["IsA"]
       57 CALL                             R15 2 1
       58 JUMPIF                           R15 ; [+8]
       59 GETIMPORT                        R14 K5 [error]
       61 LOADK                            R16 K16 ["Instance is not a GuiObject: "]
       62 GETTABLEKS                       R17 R13 K17 ["ClassName"]
       64 CONCAT                           R15 R16 R17
       65 CALL                             R14 1 1
       66 JUMP                             ; [+6]
       67 GETTABLEKS                       R15 R13 K18 ["AbsolutePosition"]
       69 GETTABLEKS                       R17 R13 K20 ["AbsoluteSize"]
       71 DIVK                             R16 R17 K19 [2]
       72 ADD                              R14 R15 R16
       73 GETTABLEKS                       R11 R14 K21 ["X"]
       75 GETTABLEKS                       R12 R14 K22 ["Y"]
       77 JUMP                             ; [+33]
       78 GETIMPORT                        R14 K5 [error]
       80 LOADK                            R16 K23 ["Instance not found: "]
       81 GETTABLEKS                       R17 R9 K11 ["instance_path"]
       83 CONCAT                           R15 R16 R17
       84 CALL                             R14 1 0
       85 JUMP                             ; [+25]
       86 GETTABLEKS                       R13 R9 K24 ["x"]
       88 JUMPIFEQKNIL                     R13 ; [+10]
       90 GETTABLEKS                       R13 R9 K25 ["y"]
       92 JUMPIFEQKNIL                     R13 ; [+6]
       94 GETTABLEKS                       R11 R9 K24 ["x"]
       96 GETTABLEKS                       R12 R9 K25 ["y"]
       98 JUMP                             ; [+12]
       99 JUMPIFEQKNIL                     R3 ; [+6]
      101 JUMPIFEQKNIL                     R4 ; [+4]
      103 MOVE                             R11 R3
      104 MOVE                             R12 R4
      105 JUMP                             ; [+5]
      106 GETIMPORT                        R13 K5 [error]
      108 LOADK                            R14 K26 ["Either x and y, instance_path, or a prior action that establishes mouse position is required"]
      109 LOADN                            R15 0
      110 CALL                             R13 2 0
      111 MOVE                             R3 R11
      112 MOVE                             R4 R12
      113 JUMPIFNOT                        R2 ; [+3]
      114 GETIMPORT                        R13 K29 [Vector2.zero]
      116 JUMP                             ; [+4]
      117 GETUPVAL                         R13 1
      118 NAMECALL                         R13 R13 K30 ["GetGuiInset"]
      120 CALL                             R13 1 1
      121 GETTABLEKS                       R15 R13 K21 ["X"]
      123 ADD                              R14 R11 R15
      124 GETTABLEKS                       R16 R13 K22 ["Y"]
      126 ADD                              R15 R12 R16
      127 NEWCLOSURE                       R16 P0
      128 CAPTURE                          VAL R2
      129 CAPTURE                          UPVAL U2
      130 CAPTURE                          REF R11
      131 CAPTURE                          REF R12
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R13
      134 CAPTURE                          UPVAL U3
      135 JUMPIF                           R2 ; [+8]
      136 GETUPVAL                         R17 4
      137 JUMPIF                           R17 ; [+1]
      138 JUMP                             ; [+5]
      139 LOADN                            R18 10
      140 SETUPVAL                         R18 5
      141 LOADB                            R18 1
      142 SETTABLEKS                       R18 R17 K31 ["Visible"]
      144 JUMPIFNOTEQKS                    R10 K32 ["moveTo"] ; [+28]
      146 JUMPIF                           R2 ; [+8]
      147 GETUPVAL                         R17 2
      148 MOVE                             R18 R11
      149 MOVE                             R19 R12
      150 NEWCLOSURE                       R20 P1
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R13
      153 CAPTURE                          UPVAL U3
      154 CALL                             R17 3 0
      155 JUMPIFNOT                        R1 ; [+9]
      156 GETIMPORT                        R19 K34 [Vector2.new]
      158 MOVE                             R20 R14
      159 MOVE                             R21 R15
      160 CALL                             R19 2 -1
      161 NAMECALL                         R17 R1 K35 ["SendMousePosition"]
      163 CALL                             R17 -1 0
      164 JUMP                             ; [+150]
      165 GETUPVAL                         R17 3
      166 MOVE                             R19 R14
      167 MOVE                             R20 R15
      168 LOADNIL                          R21
      169 NAMECALL                         R17 R17 K36 ["SendMouseMoveEvent"]
      171 CALL                             R17 4 0
      172 JUMP                             ; [+142]
      173 JUMPIFEQKS                       R10 K37 ["mouseButtonDown"] ; [+5]
      175 JUMPIFEQKS                       R10 K38 ["mouseButtonUp"] ; [+3]
      177 JUMPIFNOTEQKS                    R10 K39 ["mouseButtonClick"] ; [+108]
      179 GETTABLEKS                       R17 R9 K40 ["mouse_button"]
      181 JUMPIFEQKS                       R17 K41 ["left"] ; [+10]
      183 JUMPIFEQKS                       R17 K42 ["right"] ; [+8]
      185 GETIMPORT                        R18 K5 [error]
      187 LOADK                            R20 K43 ["mouse_button (\"left\" or \"right\") is required for "]
      188 MOVE                             R21 R10
      189 CONCAT                           R19 R20 R21
      190 LOADN                            R20 0
      191 CALL                             R18 2 0
      192 JUMPIF                           R2 ; [+8]
      193 GETUPVAL                         R18 2
      194 MOVE                             R19 R11
      195 MOVE                             R20 R12
      196 NEWCLOSURE                       R21 P1
      197 CAPTURE                          VAL R1
      198 CAPTURE                          VAL R13
      199 CAPTURE                          UPVAL U3
      200 CALL                             R18 3 0
      201 JUMPIFNOT                        R1 ; [+9]
      202 GETIMPORT                        R20 K34 [Vector2.new]
      204 MOVE                             R21 R14
      205 MOVE                             R22 R15
      206 CALL                             R20 2 -1
      207 NAMECALL                         R18 R1 K35 ["SendMousePosition"]
      209 CALL                             R18 -1 0
      210 JUMP                             ; [+7]
      211 GETUPVAL                         R18 3
      212 MOVE                             R20 R14
      213 MOVE                             R21 R15
      214 LOADNIL                          R22
      215 NAMECALL                         R18 R18 K36 ["SendMouseMoveEvent"]
      217 CALL                             R18 4 0
      218 JUMPIFNOTEQKS                    R10 K37 ["mouseButtonDown"] ; [+13]
      220 GETUPVAL                         R18 6
      221 MOVE                             R19 R1
      222 MOVE                             R20 R14
      223 MOVE                             R21 R15
      224 MOVE                             R22 R17
      225 LOADB                            R23 1
      226 CALL                             R18 5 0
      227 JUMPIF                           R2 ; [+87]
      228 GETUPVAL                         R18 7
      229 LOADB                            R19 1
      230 CALL                             R18 1 0
      231 JUMP                             ; [+83]
      232 JUMPIFNOTEQKS                    R10 K38 ["mouseButtonUp"] ; [+22]
      234 GETUPVAL                         R18 6
      235 MOVE                             R19 R1
      236 MOVE                             R20 R14
      237 MOVE                             R21 R15
      238 MOVE                             R22 R17
      239 LOADB                            R23 0
      240 CALL                             R18 5 0
      241 JUMPIF                           R2 ; [+73]
      242 GETUPVAL                         R18 4
      243 GETUPVAL                         R19 8
      244 JUMPIFNOT                        R18 ; [+70]
      245 JUMPIF                           R19 ; [+1]
      246 JUMP                             ; [+68]
      247 GETIMPORT                        R20 K46 [UDim2.fromOffset]
      249 LOADN                            R21 50
      250 LOADN                            R22 50
      251 CALL                             R20 2 1
      252 SETTABLEKS                       R20 R18 K47 ["Size"]
      254 JUMP                             ; [+60]
      255 GETIMPORT                        R18 K9 [task.wait]
      257 LOADK                            R19 K48 [0.1]
      258 CALL                             R18 1 0
      259 GETUPVAL                         R18 6
      260 MOVE                             R19 R1
      261 MOVE                             R20 R14
      262 MOVE                             R21 R15
      263 MOVE                             R22 R17
      264 LOADB                            R23 1
      265 CALL                             R18 5 0
      266 GETIMPORT                        R18 K9 [task.wait]
      268 LOADK                            R19 K48 [0.1]
      269 CALL                             R18 1 0
      270 GETUPVAL                         R18 6
      271 MOVE                             R19 R1
      272 MOVE                             R20 R14
      273 MOVE                             R21 R15
      274 MOVE                             R22 R17
      275 LOADB                            R23 0
      276 CALL                             R18 5 0
      277 JUMPIF                           R2 ; [+37]
      278 GETIMPORT                        R18 K50 [task.spawn]
      280 NEWCLOSURE                       R19 P2
      281 CAPTURE                          UPVAL U7
      282 CAPTURE                          UPVAL U4
      283 CAPTURE                          UPVAL U8
      284 CALL                             R18 1 0
      285 JUMP                             ; [+29]
      286 JUMPIFNOTEQKS                    R10 K51 ["scrollUp"] ; [+8]
      288 GETUPVAL                         R17 9
      289 MOVE                             R18 R1
      290 MOVE                             R19 R14
      291 MOVE                             R20 R15
      292 LOADB                            R21 1
      293 CALL                             R17 4 0
      294 JUMP                             ; [+20]
      295 JUMPIFNOTEQKS                    R10 K52 ["scrollDown"] ; [+8]
      297 GETUPVAL                         R17 9
      298 MOVE                             R18 R1
      299 MOVE                             R19 R14
      300 MOVE                             R20 R15
      301 LOADB                            R21 0
      302 CALL                             R17 4 0
      303 JUMP                             ; [+11]
      304 GETIMPORT                        R17 K5 [error]
      306 LOADK                            R19 K53 ["Unknown mouse action: "]
      307 FASTCALL1                        TOSTRING R10 ; [+3]
      308 MOVE                             R21 R10
      309 GETIMPORT                        R20 K55 [tostring]
      311 CALL                             R20 1 1
      312 CONCAT                           R18 R19 R20
      313 LOADN                            R19 0
      314 CALL                             R17 2 0
      315 CLOSEUPVALS                      R11
      316 FORGLOOP                         R5 2 ; [-310]
      318 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R3 R0 K0 ["actions"]
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 GETTABLEKS                       R8 R7 K1 ["action"]
        7 GETTABLEKS                       R9 R7 K2 ["key_code"]
        9 GETTABLEKS                       R10 R7 K3 ["text_inputs"]
       11 JUMPIFNOTEQKS                    R8 K4 ["keyDown"] ; [+26]
       13 JUMPIFNOT                        R1 ; [+7]
       14 FASTCALL2K                       ASSERT R9 K5 ; [+5]
       16 MOVE                             R12 R9
       17 LOADK                            R13 K5 ["key_code is required for keyDown action"]
       18 GETIMPORT                        R11 K7 [assert]
       20 CALL                             R11 2 0
       21 JUMPIFNOT                        R1 ; [+7]
       22 LOADB                            R13 1
       23 MOVE                             R14 R9
       24 LOADB                            R15 0
       25 NAMECALL                         R11 R1 K8 ["SendKey"]
       27 CALL                             R11 4 0
       28 JUMP                             ; [+157]
       29 GETUPVAL                         R11 0
       30 LOADB                            R13 1
       31 MOVE                             R14 R9
       32 LOADB                            R15 0
       33 LOADNIL                          R16
       34 NAMECALL                         R11 R11 K9 ["SendKeyEvent"]
       36 CALL                             R11 5 0
       37 JUMP                             ; [+148]
       38 JUMPIFNOTEQKS                    R8 K10 ["keyUp"] ; [+26]
       40 JUMPIFNOT                        R1 ; [+7]
       41 FASTCALL2K                       ASSERT R9 K11 ; [+5]
       43 MOVE                             R12 R9
       44 LOADK                            R13 K11 ["key_code is required for keyUp action"]
       45 GETIMPORT                        R11 K7 [assert]
       47 CALL                             R11 2 0
       48 JUMPIFNOT                        R1 ; [+7]
       49 LOADB                            R13 0
       50 MOVE                             R14 R9
       51 LOADB                            R15 0
       52 NAMECALL                         R11 R1 K8 ["SendKey"]
       54 CALL                             R11 4 0
       55 JUMP                             ; [+130]
       56 GETUPVAL                         R11 0
       57 LOADB                            R13 0
       58 MOVE                             R14 R9
       59 LOADB                            R15 0
       60 LOADNIL                          R16
       61 NAMECALL                         R11 R11 K9 ["SendKeyEvent"]
       63 CALL                             R11 5 0
       64 JUMP                             ; [+121]
       65 JUMPIFNOTEQKS                    R8 K12 ["keyPress"] ; [+46]
       67 JUMPIFNOT                        R1 ; [+7]
       68 FASTCALL2K                       ASSERT R9 K13 ; [+5]
       70 MOVE                             R12 R9
       71 LOADK                            R13 K13 ["key_code is required for keyPress action"]
       72 GETIMPORT                        R11 K7 [assert]
       74 CALL                             R11 2 0
       75 JUMPIFNOT                        R1 ; [+7]
       76 LOADB                            R13 1
       77 MOVE                             R14 R9
       78 LOADB                            R15 0
       79 NAMECALL                         R11 R1 K8 ["SendKey"]
       81 CALL                             R11 4 0
       82 JUMP                             ; [+8]
       83 GETUPVAL                         R11 0
       84 LOADB                            R13 1
       85 MOVE                             R14 R9
       86 LOADB                            R15 0
       87 LOADNIL                          R16
       88 NAMECALL                         R11 R11 K9 ["SendKeyEvent"]
       90 CALL                             R11 5 0
       91 GETIMPORT                        R11 K16 [task.wait]
       93 LOADK                            R12 K17 [0.1]
       94 CALL                             R11 1 0
       95 JUMPIFNOT                        R1 ; [+7]
       96 LOADB                            R13 0
       97 MOVE                             R14 R9
       98 LOADB                            R15 0
       99 NAMECALL                         R11 R1 K8 ["SendKey"]
      101 CALL                             R11 4 0
      102 JUMP                             ; [+83]
      103 GETUPVAL                         R11 0
      104 LOADB                            R13 0
      105 MOVE                             R14 R9
      106 LOADB                            R15 0
      107 LOADNIL                          R16
      108 NAMECALL                         R11 R11 K9 ["SendKeyEvent"]
      110 CALL                             R11 5 0
      111 JUMP                             ; [+74]
      112 JUMPIFNOTEQKS                    R8 K18 ["textInput"] ; [+47]
      114 JUMPIFNOT                        R1 ; [+7]
      115 FASTCALL2K                       ASSERT R10 K19 ; [+5]
      117 MOVE                             R12 R10
      118 LOADK                            R13 K19 ["text_inputs is required for textInput action"]
      119 GETIMPORT                        R11 K7 [assert]
      121 CALL                             R11 2 0
      122 GETTABLEKS                       R11 R7 K20 ["instance_path"]
      124 JUMPIFNOT                        R11 ; [+22]
      125 JUMPIFNOT                        R2 ; [+5]
      126 GETIMPORT                        R11 K22 [error]
      128 LOADK                            R12 K23 ["instance_path is not supported when plugin_gui_id is set; click the field first"]
      129 LOADN                            R13 0
      130 CALL                             R11 2 0
      131 GETUPVAL                         R11 1
      132 GETTABLEKS                       R11 R11 K24 ["mouseInput"]
      134 DUPTABLE                         R12 K25 [{"actions"}]
      135 NEWTABLE                         R13 0 1
      137 DUPTABLE                         R14 K29 [{["action"] = "mouseButtonClick", ["instance_path"], ["mouse_button"] = "left"}]
      138 GETTABLEKS                       R15 R7 K20 ["instance_path"]
      140 SETTABLEKS                       R15 R14 K20 ["instance_path"]
      142 SETLIST                          R13 R14 1 [1]
      144 SETTABLEKS                       R13 R12 K0 ["actions"]
      146 CALL                             R11 1 0
      147 JUMPIFNOT                        R1 ; [+5]
      148 MOVE                             R13 R10
      149 NAMECALL                         R11 R1 K30 ["SendTextInput"]
      151 CALL                             R11 2 0
      152 JUMP                             ; [+33]
      153 GETUPVAL                         R11 0
      154 MOVE                             R13 R10
      155 LOADNIL                          R14
      156 NAMECALL                         R11 R11 K31 ["SendTextInputCharacterEvent"]
      158 CALL                             R11 3 0
      159 JUMP                             ; [+26]
      160 JUMPIFNOTEQKS                    R8 K15 ["wait"] ; [+25]
      162 GETTABLEKS                       R11 R7 K32 ["wait_time_ms"]
      164 JUMPIFNOTEQKNIL                  R11 ; [+6]
      166 GETIMPORT                        R12 K22 [error]
      168 LOADK                            R13 K33 ["wait_time_ms is required for wait action"]
      169 LOADN                            R14 0
      170 CALL                             R12 2 0
      171 LOADN                            R12 0
      172 JUMPIFLT                         R11 R12 ; [+4]
      174 LOADN                            R12 10000
      175 JUMPIFNOTLT                      R12 R11 ; [+6]
      177 GETIMPORT                        R12 K22 [error]
      179 LOADK                            R13 K34 ["wait_time_ms must be between 0 and 10000"]
      180 LOADN                            R14 0
      181 CALL                             R12 2 0
      182 GETIMPORT                        R12 K16 [task.wait]
      184 DIVK                             R13 R11 K35 [1000]
      185 CALL                             R12 1 0
      186 FORGLOOP                         R3 2 ; [-182]
      188 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["UserInputService"]
        2 NAMECALL                         R1 R1 K1 ["GetService"]
        4 CALL                             R1 2 1
        5 MOVE                             R4 R0
        6 NAMECALL                         R2 R1 K2 ["CreateVirtualInputForPluginGuiId"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantVirtualInputEnabled"]
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETUPVAL                         R1 2
        7 NAMECALL                         R1 R1 K1 ["CreateVirtualInput"]
        9 CALL                             R1 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R1
       12 GETUPVAL                         R2 3
       13 MOVE                             R3 R0
       14 MOVE                             R4 R1
       15 LOADB                            R5 0
       16 CALL                             R2 3 0
       17 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R5 1
        3 LOADK                            R7 K0 ["UserInputService"]
        4 NAMECALL                         R5 R5 K1 ["GetService"]
        6 CALL                             R5 2 1
        7 MOVE                             R8 R1
        8 NAMECALL                         R6 R5 K2 ["CreateVirtualInputForPluginGuiId"]
       10 CALL                             R6 2 1
       11 MOVE                             R4 R6
       12 LOADB                            R5 1
       13 CALL                             R2 3 0
       14 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantVirtualInputEnabled"]
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R1 R1 K1 ["CreateVirtualInput"]
        7 CALL                             R1 1 1
        8 JUMP                             ; [+1]
        9 LOADNIL                          R1
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 LOADB                            R5 0
       14 CALL                             R2 3 0
       15 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R5 1
        3 LOADK                            R7 K0 ["UserInputService"]
        4 NAMECALL                         R5 R5 K1 ["GetService"]
        6 CALL                             R5 2 1
        7 MOVE                             R8 R1
        8 NAMECALL                         R6 R5 K2 ["CreateVirtualInputForPluginGuiId"]
       10 CALL                             R6 2 1
       11 MOVE                             R4 R6
       12 LOADB                            R5 1
       13 CALL                             R2 3 0
       14 RETURN                           R0 0

PROTO_27:
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

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Position"]
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R0 R0 K1 ["ComputeAsync"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_29:
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

PROTO_30:
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

PROTO_31:
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
      101 GETUPVAL                         R1 8
      102 JUMPIFNOT                        R1 ; [+16]
      103 JUMPIF                           R0 ; [+15]
      104 GETUPVAL                         R1 1
      105 NAMECALL                         R1 R1 K0 ["Disconnect"]
      107 CALL                             R1 1 0
      108 GETUPVAL                         R1 2
      109 NAMECALL                         R1 R1 K0 ["Disconnect"]
      111 CALL                             R1 1 0
      112 GETUPVAL                         R1 3
      113 LOADB                            R3 0
      114 LOADK                            R4 K18 ["Stopped before reaching the destination (path blocked or stuck)"]
      115 NAMECALL                         R1 R1 K2 ["Fire"]
      117 CALL                             R1 3 0
      118 RETURN                           R0 0
      119 GETUPVAL                         R1 1
      120 NAMECALL                         R1 R1 K0 ["Disconnect"]
      122 CALL                             R1 1 0
      123 GETUPVAL                         R1 2
      124 NAMECALL                         R1 R1 K0 ["Disconnect"]
      126 CALL                             R1 1 0
      127 GETUPVAL                         R1 3
      128 LOADB                            R3 1
      129 LOADK                            R4 K19 ["Destination reached"]
      130 NAMECALL                         R1 R1 K2 ["Fire"]
      132 CALL                             R1 3 0
      133 RETURN                           R0 0
      134 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K6 [{[1] = 2, ["AgentHeight"] = 5, ["AgentCanJump"] = True}]
        2 NAMECALL                         R2 R2 K7 ["CreatePath"]
        4 CALL                             R2 2 1
        5 GETUPVAL                         R5 1
        6 LOADK                            R7 K8 ["Players"]
        7 NAMECALL                         R5 R5 K9 ["GetService"]
        9 CALL                             R5 2 1
       10 GETTABLEKS                       R6 R5 K10 ["LocalPlayer"]
       12 GETTABLEKS                       R7 R6 K11 ["Character"]
       14 JUMPIF                           R7 ; [+5]
       15 GETTABLEKS                       R7 R6 K12 ["CharacterAdded"]
       17 NAMECALL                         R7 R7 K13 ["Wait"]
       19 CALL                             R7 1 1
       20 LOADK                            R10 K14 ["Humanoid"]
       21 NAMECALL                         R8 R7 K15 ["WaitForChild"]
       23 CALL                             R8 2 1
       24 MOVE                             R3 R8
       25 MOVE                             R4 R7
       26 GETTABLEKS                       R5 R4 K16 ["PrimaryPart"]
       28 JUMPIF                           R5 ; [+22]
       29 JUMPIFNOT                        R1 ; [+21]
       30 GETIMPORT                        R7 K19 [os.clock]
       32 CALL                             R7 0 1
       33 ADDK                             R6 R7 K3 [5]
       34 GETIMPORT                        R7 K22 [task.wait]
       36 LOADK                            R8 K23 [0.1]
       37 CALL                             R7 1 0
       38 GETTABLEKS                       R7 R4 K16 ["PrimaryPart"]
       40 JUMPIF                           R7 ; [+2]
       41 GETTABLEKS                       R7 R3 K24 ["RootPart"]
       43 MOVE                             R5 R7
       44 JUMPIF                           R5 ; [+6]
       45 GETIMPORT                        R7 K19 [os.clock]
       47 CALL                             R7 0 1
       48 JUMPIFLT                         R6 R7 ; [+2]
       50 JUMPBACK                         ; [-17]
       51 JUMPIF                           R5 ; [+4]
       52 GETIMPORT                        R6 K26 [error]
       54 LOADK                            R7 K27 ["Character PrimaryPart not found"]
       55 CALL                             R6 1 0
       56 LOADNIL                          R6
       57 LOADNIL                          R7
       58 LOADNIL                          R8
       59 LOADNIL                          R9
       60 NEWCLOSURE                       R11 P0
       61 CAPTURE                          VAL R2
       62 CAPTURE                          REF R5
       63 CAPTURE                          VAL R0
       64 FASTPCALL                        pcall 1 ; [+2]
       65 GETIMPORT                        R10 K29 [pcall]
       67 CALL                             R10 1 2
       68 JUMPIFNOT                        R10 ; [+79]
       69 GETTABLEKS                       R12 R2 K30 ["Status"]
       71 GETIMPORT                        R13 K34 [Enum.PathStatus.Success]
       73 JUMPIFNOTEQ                      R12 R13 ; [+74]
       75 NAMECALL                         R12 R2 K35 ["GetWaypoints"]
       77 CALL                             R12 1 1
       78 MOVE                             R6 R12
       79 GETIMPORT                        R12 K38 [Instance.new]
       81 LOADK                            R13 K39 ["BindableEvent"]
       82 CALL                             R12 1 1
       83 LOADNIL                          R13
       84 LOADB                            R14 1
       85 SETUPVAL                         R14 2
       86 NEWCLOSURE                       R14 P1
       87 CAPTURE                          REF R9
       88 CAPTURE                          REF R8
       89 CAPTURE                          VAL R12
       90 GETTABLEKS                       R15 R2 K40 ["Blocked"]
       92 NEWCLOSURE                       R17 P2
       93 CAPTURE                          REF R13
       94 CAPTURE                          REF R7
       95 CAPTURE                          REF R9
       96 CAPTURE                          REF R8
       97 CAPTURE                          VAL R12
       98 NAMECALL                         R15 R15 K41 ["Connect"]
      100 CALL                             R15 2 1
      101 MOVE                             R9 R15
      102 JUMPIF                           R8 ; [+16]
      103 GETTABLEKS                       R15 R3 K42 ["MoveToFinished"]
      105 NEWCLOSURE                       R17 P3
      106 CAPTURE                          UPVAL U2
      107 CAPTURE                          REF R9
      108 CAPTURE                          REF R8
      109 CAPTURE                          VAL R12
      110 CAPTURE                          REF R7
      111 CAPTURE                          REF R6
      112 CAPTURE                          REF R13
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R1
      115 NAMECALL                         R15 R15 K41 ["Connect"]
      117 CALL                             R15 2 1
      118 MOVE                             R8 R15
      119 LOADN                            R7 2
      120 GETTABLE                         R15 R6 R7
      121 GETTABLEKS                       R15 R15 K43 ["Action"]
      123 GETIMPORT                        R16 K46 [Enum.PathWaypointAction.Jump]
      125 JUMPIFEQ                         R15 R16 ; [+4]
      127 GETTABLEKS                       R15 R3 K47 ["Sit"]
      129 JUMPIFNOT                        R15 ; [+5]
      130 GETIMPORT                        R17 K50 [Enum.HumanoidStateType.Jumping]
      132 NAMECALL                         R15 R3 K51 ["ChangeState"]
      134 CALL                             R15 2 0
      135 GETTABLE                         R17 R6 R7
      136 GETTABLEKS                       R17 R17 K52 ["Position"]
      138 NAMECALL                         R15 R3 K53 ["MoveTo"]
      140 CALL                             R15 2 0
      141 GETTABLEKS                       R15 R12 K54 ["Event"]
      143 NAMECALL                         R15 R15 K13 ["Wait"]
      145 CALL                             R15 1 -1
      146 CLOSEUPVALS                      R5
      147 RETURN                           R15 -1
      148 JUMPIFNOT                        R1 ; [+21]
      149 JUMPIFNOT                        R10 ; [+5]
      150 GETTABLEKS                       R12 R2 K30 ["Status"]
      152 GETTABLEKS                       R12 R12 K55 ["Name"]
      154 JUMP                             ; [+7]
      155 LOADK                            R13 K56 ["ComputeError: "]
      156 FASTCALL1                        TOSTRING R11 ; [+3]
      157 MOVE                             R15 R11
      158 GETIMPORT                        R14 K58 [tostring]
      160 CALL                             R14 1 1
      161 CONCAT                           R12 R13 R14
      162 LOADB                            R13 0
      163 LOADK                            R14 K59 ["Can not find a route to the destination (PathStatus: %*)"]
      164 MOVE                             R16 R12
      165 NAMECALL                         R14 R14 K60 ["format"]
      167 CALL                             R14 2 1
      168 CLOSEUPVALS                      R5
      169 RETURN                           R13 2
      170 LOADB                            R12 0
      171 LOADK                            R13 K61 ["Can not find a route to the destination"]
      172 CLOSEUPVALS                      R5
      173 RETURN                           R12 2

PROTO_33:
        0 GETUPVAL                         R3 0
        1 LOADK                            R5 K0 ["Workspace"]
        2 NAMECALL                         R3 R3 K1 ["GetService"]
        4 CALL                             R3 2 1
        5 GETIMPORT                        R4 K4 [RaycastParams.new]
        7 CALL                             R4 0 1
        8 GETIMPORT                        R5 K8 [Enum.RaycastFilterType.Exclude]
       10 SETTABLEKS                       R5 R4 K9 ["FilterType"]
       12 NEWTABLE                         R5 0 1
       14 MOVE                             R6 R0
       15 SETLIST                          R5 R6 1 [1]
       17 JUMPIFNOT                        R1 ; [+7]
       18 FASTCALL2                        TABLE_INSERT R5 R1 ; [+5]
       20 MOVE                             R7 R5
       21 MOVE                             R8 R1
       22 GETIMPORT                        R6 K12 [table.insert]
       24 CALL                             R6 2 0
       25 SETTABLEKS                       R5 R4 K13 ["FilterDescendantsInstances"]
       27 LOADB                            R6 1
       28 SETTABLEKS                       R6 R4 K14 ["IgnoreWater"]
       30 LOADK                            R9 K15 [{0, 5, 0}]
       31 ADD                              R8 R2 R9
       32 LOADK                            R9 K16 [{0, -512, 0}]
       33 MOVE                             R10 R4
       34 NAMECALL                         R6 R3 K17 ["Raycast"]
       36 CALL                             R6 4 1
       37 JUMPIFNOT                        R6 ; [+3]
       38 GETTABLEKS                       R7 R6 K18 ["Position"]
       40 RETURN                           R7 1
       41 LOADNIL                          R7
       42 RETURN                           R7 1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetBoundingBox"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_35:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 CALL                             R4 3 1
        7 JUMPIFNOT                        R4 ; [+9]
        8 DUPTABLE                         R7 K3 [{[1] = "floor", ["pos"]}]
        9 SETTABLEKS                       R4 R7 K2 ["pos"]
       11 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
       13 MOVE                             R6 R3
       14 GETIMPORT                        R5 K6 [table.insert]
       16 CALL                             R5 2 0
       17 LOADN                            R5 6
       18 JUMPIFNOT                        R1 ; [+47]
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          VAL R1
       21 FASTPCALL                        pcall 1 ; [+2]
       22 GETIMPORT                        R6 K8 [pcall]
       24 CALL                             R6 1 3
       25 JUMPIFNOT                        R6 ; [+40]
       26 JUMPIFNOT                        R7 ; [+39]
       27 JUMPIFNOT                        R8 ; [+38]
       28 GETTABLEKS                       R11 R8 K11 ["X"]
       30 GETTABLEKS                       R12 R8 K12 ["Z"]
       32 FASTCALL2                        MATH_MAX R11 R12 ; [+3]
       34 GETIMPORT                        R10 K15 [math.max]
       36 CALL                             R10 2 1
       37 DIVK                             R9 R10 K10 [2]
       38 ADDK                             R5 R9 K9 [4]
       39 GETTABLEKS                       R10 R7 K16 ["Position"]
       41 LOADN                            R12 0
       42 GETTABLEKS                       R14 R8 K17 ["Y"]
       44 DIVK                             R13 R14 K10 [2]
       45 LOADN                            R14 0
       46 FASTCALL                         VECTOR ; [+2]
       47 GETIMPORT                        R11 K20 [Vector3.new]
       49 CALL                             R11 3 1
       50 SUB                              R9 R10 R11
       51 GETUPVAL                         R10 0
       52 MOVE                             R11 R0
       53 MOVE                             R12 R1
       54 MOVE                             R13 R9
       55 CALL                             R10 3 1
       56 JUMPIFNOT                        R10 ; [+9]
       57 DUPTABLE                         R13 K22 [{[1] = "bbox", ["pos"]}]
       58 SETTABLEKS                       R10 R13 K2 ["pos"]
       60 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
       62 MOVE                             R12 R3
       63 GETIMPORT                        R11 K6 [table.insert]
       65 CALL                             R11 2 0
       66 NEWTABLE                         R6 0 4
       68 LOADK                            R7 K23 [{1, 0, 0}]
       69 LOADK                            R8 K24 [{-1, 0, 0}]
       70 LOADK                            R9 K25 [{0, 0, 1}]
       71 LOADK                            R10 K26 [{0, 0, -1}]
       72 SETLIST                          R6 R7 4 [1]
       74 MOVE                             R7 R6
       75 LOADNIL                          R8
       76 LOADNIL                          R9
       77 FORGPREP                         R7
       78 GETUPVAL                         R12 0
       79 MOVE                             R13 R0
       80 MOVE                             R14 R1
       81 MUL                              R16 R11 R5
       82 ADD                              R15 R2 R16
       83 CALL                             R12 3 1
       84 JUMPIFNOT                        R12 ; [+9]
       85 DUPTABLE                         R15 K28 [{[1] = "ring", ["pos"]}]
       86 SETTABLEKS                       R12 R15 K2 ["pos"]
       88 FASTCALL2                        TABLE_INSERT R3 R15 ; [+4]
       90 MOVE                             R14 R3
       91 GETIMPORT                        R13 K6 [table.insert]
       93 CALL                             R13 2 0
       94 FORGLOOP                         R7 2 ; [-17]
       96 RETURN                           R3 1

PROTO_36:
        0 GETUPVAL                         R3 0
        1 LOADK                            R5 K0 ["Players"]
        2 NAMECALL                         R3 R3 K1 ["GetService"]
        4 CALL                             R3 2 1
        5 GETTABLEKS                       R4 R3 K2 ["LocalPlayer"]
        7 GETTABLEKS                       R5 R4 K3 ["Character"]
        9 JUMPIF                           R5 ; [+5]
       10 GETTABLEKS                       R5 R4 K4 ["CharacterAdded"]
       12 NAMECALL                         R5 R5 K5 ["Wait"]
       14 CALL                             R5 1 1
       15 LOADK                            R8 K6 ["Humanoid"]
       16 NAMECALL                         R6 R5 K7 ["WaitForChild"]
       18 CALL                             R6 2 1
       19 MOVE                             R1 R6
       20 MOVE                             R2 R5
       21 GETTABLEKS                       R3 R0 K8 ["x"]
       23 GETTABLEKS                       R4 R0 K9 ["y"]
       25 GETTABLEKS                       R5 R0 K10 ["z"]
       27 GETTABLEKS                       R6 R0 K11 ["instance_path"]
       29 GETTABLEKS                       R8 R0 K13 ["speed_multiplier"]
       31 ORK                              R7 R8 K12 [1]
       32 LOADK                            R8 K14 [0.1]
       33 JUMPIFNOTLT                      R7 R8 ; [+3]
       35 LOADK                            R7 K14 [0.1]
       36 JUMP                             ; [+4]
       37 LOADN                            R8 10
       38 JUMPIFNOTLT                      R8 R7 ; [+2]
       40 LOADN                            R7 10
       41 LOADNIL                          R8
       42 JUMPIFNOT                        R6 ; [+47]
       43 GETUPVAL                         R9 1
       44 GETTABLEKS                       R9 R9 K15 ["findInstanceByPath"]
       46 MOVE                             R10 R6
       47 CALL                             R9 1 1
       48 JUMPIFNOT                        R9 ; [+35]
       49 MOVE                             R8 R9
       50 LOADK                            R13 K16 ["Model"]
       51 NAMECALL                         R11 R9 K17 ["IsA"]
       53 CALL                             R11 2 1
       54 JUMPIFNOT                        R11 ; [+6]
       55 NAMECALL                         R10 R9 K18 ["GetPivot"]
       57 CALL                             R10 1 1
       58 GETTABLEKS                       R10 R10 K19 ["Position"]
       60 JUMP                             ; [+16]
       61 LOADK                            R13 K20 ["BasePart"]
       62 NAMECALL                         R11 R9 K17 ["IsA"]
       64 CALL                             R11 2 1
       65 JUMPIFNOT                        R11 ; [+3]
       66 GETTABLEKS                       R10 R9 K19 ["Position"]
       68 JUMP                             ; [+8]
       69 GETIMPORT                        R11 K22 [error]
       71 LOADK                            R13 K23 ["Instance is not a Model or BasePart: "]
       72 GETTABLEKS                       R14 R9 K24 ["ClassName"]
       74 CONCAT                           R12 R13 R14
       75 CALL                             R11 1 0
       76 LOADNIL                          R10
       77 GETTABLEKS                       R3 R10 K25 ["X"]
       79 GETTABLEKS                       R4 R10 K26 ["Y"]
       81 GETTABLEKS                       R5 R10 K27 ["Z"]
       83 JUMP                             ; [+6]
       84 GETIMPORT                        R10 K22 [error]
       86 LOADK                            R12 K28 ["Instance not found: "]
       87 MOVE                             R13 R6
       88 CONCAT                           R11 R12 R13
       89 CALL                             R10 1 0
       90 GETUPVAL                         R9 2
       91 GETTABLEKS                       R9 R9 K29 ["FFlagAssistantPlaytestToolFix"]
       93 JUMPIFNOT                        R9 ; [+6]
       94 GETTABLEKS                       R10 R0 K30 ["__playtestToolFix"]
       96 JUMPIFEQKB                       R10 TRUE ; [+2]
       98 LOADB                            R9 0 +1
       99 LOADB                            R9 1
      100 FASTCALL3                        VECTOR R3 R4 R5
      102 MOVE                             R11 R3
      103 MOVE                             R12 R4
      104 MOVE                             R13 R5
      105 GETIMPORT                        R10 K33 [Vector3.new]
      107 CALL                             R10 3 1
      108 GETTABLEKS                       R11 R1 K34 ["WalkSpeed"]
      110 MUL                              R12 R11 R7
      111 SETTABLEKS                       R12 R1 K34 ["WalkSpeed"]
      113 GETUPVAL                         R12 3
      114 MOVE                             R13 R10
      115 MOVE                             R14 R9
      116 CALL                             R12 2 2
      117 LOADNIL                          R14
      118 JUMPIF                           R12 ; [+57]
      119 JUMPIFNOT                        R9 ; [+56]
      120 FASTCALL1                        TYPEOF R13 ; [+3]
      121 MOVE                             R16 R13
      122 GETIMPORT                        R15 K36 [typeof]
      124 CALL                             R15 1 1
      125 JUMPIFNOTEQKS                    R15 K37 ["string"] ; [+50]
      127 GETIMPORT                        R15 K39 [string.find]
      129 MOVE                             R16 R13
      130 LOADK                            R17 K40 ["Can not find a route to the destination"]
      131 LOADN                            R18 1
      132 LOADB                            R19 1
      133 CALL                             R15 4 1
      134 JUMPIFEQKNIL                     R15 ; [+41]
      136 GETUPVAL                         R15 4
      137 MOVE                             R16 R2
      138 MOVE                             R17 R8
      139 MOVE                             R18 R10
      140 CALL                             R15 3 3
      141 FORGPREP                         R15
      142 GETUPVAL                         R20 3
      143 GETTABLEKS                       R21 R19 K41 ["pos"]
      145 MOVE                             R22 R9
      146 CALL                             R20 2 1
      147 JUMPIFNOT                        R20 ; [+26]
      148 LOADB                            R12 1
      149 LOADNIL                          R13
      150 GETUPVAL                         R23 5
      151 GETTABLEKS                       R24 R19 K43 ["label"]
      153 GETTABLE                         R22 R23 R24
      154 ORK                              R21 R22 K42 ["near the target"]
      155 GETIMPORT                        R22 K45 [string.format]
      157 LOADK                            R23 K46 ["original target was unreachable; navigated to (%.1f, %.1f, %.1f) %s"]
      158 GETTABLEKS                       R24 R19 K41 ["pos"]
      160 GETTABLEKS                       R24 R24 K25 ["X"]
      162 GETTABLEKS                       R25 R19 K41 ["pos"]
      164 GETTABLEKS                       R25 R25 K26 ["Y"]
      166 GETTABLEKS                       R26 R19 K41 ["pos"]
      168 GETTABLEKS                       R26 R26 K27 ["Z"]
      170 MOVE                             R27 R21
      171 CALL                             R22 5 1
      172 MOVE                             R14 R22
      173 JUMP                             ; [+2]
      174 FORGLOOP                         R15 2 ; [-33]
      176 SETTABLEKS                       R11 R1 K34 ["WalkSpeed"]
      178 JUMPIF                           R12 ; [+4]
      179 GETIMPORT                        R15 K22 [error]
      181 MOVE                             R16 R13
      182 CALL                             R15 1 0
      183 RETURN                           R14 1

PROTO_37:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_38:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_39:
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

PROTO_40:
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

PROTO_41:
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

PROTO_42:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_43:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+4]
        7 JUMPIFEQKS                       R0 K3 [""] ; [+2]
        9 RETURN                           R0 1
       10 LOADNIL                          R1
       11 RETURN                           R1 1

PROTO_44:
        0 GETIMPORT                        R2 K2 [string.match]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K3 ["[^/\\]+$"]
        4 CALL                             R2 2 1
        5 OR                               R1 R2 R0
        6 GETIMPORT                        R2 K2 [string.match]
        8 MOVE                             R3 R1
        9 LOADK                            R4 K4 ["^(.*)%.[^%.]+$"]
       10 CALL                             R2 2 1
       11 OR                               R3 R2 R1
       12 RETURN                           R3 1

PROTO_45:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+17]
        7 DUPTABLE                         R1 K4 [{"videoPath"}]
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R4 R0
       10 GETIMPORT                        R3 K1 [typeof]
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+5]
       15 JUMPIFEQKS                       R0 K5 [""] ; [+3]
       17 MOVE                             R2 R0
       18 JUMP                             ; [+1]
       19 LOADNIL                          R2
       20 SETTABLEKS                       R2 R1 K3 ["videoPath"]
       22 RETURN                           R1 1
       23 FASTCALL1                        TYPEOF R0 ; [+3]
       24 MOVE                             R2 R0
       25 GETIMPORT                        R1 K1 [typeof]
       27 CALL                             R1 1 1
       28 JUMPIFNOTEQKS                    R1 K6 ["table"] ; [+51]
       30 DUPTABLE                         R1 K9 [{"videoPath", "manifestPath", "ptsPath"}]
       31 GETTABLEKS                       R3 R0 K3 ["videoPath"]
       33 FASTCALL1                        TYPEOF R3 ; [+3]
       34 MOVE                             R5 R3
       35 GETIMPORT                        R4 K1 [typeof]
       37 CALL                             R4 1 1
       38 JUMPIFNOTEQKS                    R4 K2 ["string"] ; [+5]
       40 JUMPIFEQKS                       R3 K5 [""] ; [+3]
       42 MOVE                             R2 R3
       43 JUMP                             ; [+1]
       44 LOADNIL                          R2
       45 SETTABLEKS                       R2 R1 K3 ["videoPath"]
       47 GETTABLEKS                       R3 R0 K7 ["manifestPath"]
       49 FASTCALL1                        TYPEOF R3 ; [+3]
       50 MOVE                             R5 R3
       51 GETIMPORT                        R4 K1 [typeof]
       53 CALL                             R4 1 1
       54 JUMPIFNOTEQKS                    R4 K2 ["string"] ; [+5]
       56 JUMPIFEQKS                       R3 K5 [""] ; [+3]
       58 MOVE                             R2 R3
       59 JUMP                             ; [+1]
       60 LOADNIL                          R2
       61 SETTABLEKS                       R2 R1 K7 ["manifestPath"]
       63 GETTABLEKS                       R3 R0 K8 ["ptsPath"]
       65 FASTCALL1                        TYPEOF R3 ; [+3]
       66 MOVE                             R5 R3
       67 GETIMPORT                        R4 K1 [typeof]
       69 CALL                             R4 1 1
       70 JUMPIFNOTEQKS                    R4 K2 ["string"] ; [+5]
       72 JUMPIFEQKS                       R3 K5 [""] ; [+3]
       74 MOVE                             R2 R3
       75 JUMP                             ; [+1]
       76 LOADNIL                          R2
       77 SETTABLEKS                       R2 R1 K8 ["ptsPath"]
       79 RETURN                           R1 1
       80 NEWTABLE                         R1 0 0
       82 RETURN                           R1 1

PROTO_46:
        0 GETTABLEKS                       R2 R1 K0 ["videoPath"]
        2 JUMPIF                           R2 ; [+2]
        3 LOADNIL                          R3
        4 RETURN                           R3 1
        5 GETIMPORT                        R4 K4 [Enum.VideoCaptureResult.TimeLimitReached]
        7 JUMPIFEQ                         R0 R4 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 NEWTABLE                         R4 0 0
       13 JUMPIFNOT                        R3 ; [+7]
       14 FASTCALL2K                       TABLE_INSERT R4 K5 ; [+5]
       16 MOVE                             R6 R4
       17 LOADK                            R7 K5 ["Capture stopped because the maximum recording duration was reached. Treat this as a partial recording, not the end of the gameplay session."]
       18 GETIMPORT                        R5 K8 [table.insert]
       20 CALL                             R5 2 0
       21 DUPTABLE                         R5 K13 [{"recording_id", "status", "artifacts", "warnings"}]
       22 GETIMPORT                        R8 K16 [string.match]
       24 MOVE                             R9 R2
       25 LOADK                            R10 K17 ["[^/\\]+$"]
       26 CALL                             R8 2 1
       27 OR                               R7 R8 R2
       28 GETIMPORT                        R8 K16 [string.match]
       30 MOVE                             R9 R7
       31 LOADK                            R10 K18 ["^(.*)%.[^%.]+$"]
       32 CALL                             R8 2 1
       33 OR                               R6 R8 R7
       34 SETTABLEKS                       R6 R5 K9 ["recording_id"]
       36 JUMPIFNOT                        R3 ; [+2]
       37 LOADK                            R6 K19 ["partial"]
       38 JUMP                             ; [+1]
       39 LOADK                            R6 K20 ["completed"]
       40 SETTABLEKS                       R6 R5 K10 ["status"]
       42 DUPTABLE                         R6 K24 [{"video", "manifest", "frame_times"}]
       43 SETTABLEKS                       R2 R6 K21 ["video"]
       45 GETTABLEKS                       R7 R1 K25 ["manifestPath"]
       47 SETTABLEKS                       R7 R6 K22 ["manifest"]
       49 GETTABLEKS                       R7 R1 K26 ["ptsPath"]
       51 SETTABLEKS                       R7 R6 K23 ["frame_times"]
       53 SETTABLEKS                       R6 R5 K11 ["artifacts"]
       55 SETTABLEKS                       R4 R5 K12 ["warnings"]
       57 RETURN                           R5 1

PROTO_47:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 LOADNIL                          R0
        4 SETUPVAL                         R0 1
        5 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETIMPORT                        R0 K2 [task.cancel]
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_49:
        0 LOADB                            R1 1
        1 JUMPIFEQKNIL                     R0 ; [+12]
        3 LOADB                            R1 1
        4 GETIMPORT                        R2 K3 [Enum.VideoCaptureResult.Success]
        6 JUMPIFEQ                         R0 R2 ; [+7]
        8 GETIMPORT                        R2 K5 [Enum.VideoCaptureResult.TimeLimitReached]
       10 JUMPIFEQ                         R0 R2 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 RETURN                           R1 1

PROTO_50:
        0 GETUPVAL                         R1 0
        1 LOADB                            R0 1
        2 JUMPIFEQKNIL                     R1 ; [+12]
        4 LOADB                            R0 1
        5 GETIMPORT                        R2 K3 [Enum.VideoCaptureResult.Success]
        7 JUMPIFEQ                         R1 R2 ; [+7]
        9 GETIMPORT                        R2 K5 [Enum.VideoCaptureResult.TimeLimitReached]
       11 JUMPIFEQ                         R1 R2 ; [+2]
       13 LOADB                            R0 0 +1
       14 LOADB                            R0 1
       15 JUMPIF                           R0 ; [+16]
       16 GETUPVAL                         R1 0
       17 JUMPIFNOT                        R1 ; [+4]
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K6 ["Name"]
       21 JUMP                             ; [+1]
       22 LOADK                            R0 K7 ["Unknown"]
       23 GETIMPORT                        R1 K9 [error]
       25 LOADK                            R2 K10 ["MCP video capture failed: %*"]
       26 MOVE                             R4 R0
       27 NAMECALL                         R2 R2 K11 ["format"]
       29 CALL                             R2 2 1
       30 LOADN                            R3 0
       31 CALL                             R1 2 0
       32 GETUPVAL                         R0 1
       33 GETUPVAL                         R1 0
       34 GETUPVAL                         R2 2
       35 JUMPIF                           R2 ; [+2]
       36 NEWTABLE                         R2 0 0
       38 CALL                             R0 2 1
       39 RETURN                           R0 1

PROTO_51:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 JUMPIFEQ                         R2 R3 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 ADDK                             R2 R2 K0 [1]
        7 SETUPVAL                         R2 1
        8 GETUPVAL                         R2 2
        9 JUMPIFNOT                        R2 ; [+6]
       10 GETIMPORT                        R2 K3 [task.cancel]
       12 GETUPVAL                         R3 2
       13 CALL                             R2 1 0
       14 LOADNIL                          R2
       15 SETUPVAL                         R2 2
       16 SETUPVAL                         R0 3
       17 GETUPVAL                         R2 5
       18 MOVE                             R3 R1
       19 CALL                             R2 1 1
       20 SETUPVAL                         R2 4
       21 LOADB                            R2 0
       22 SETUPVAL                         R2 6
       23 LOADNIL                          R2
       24 SETUPVAL                         R2 7
       25 GETUPVAL                         R2 8
       26 NAMECALL                         R2 R2 K4 ["Fire"]
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_52:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U1
        2 CAPTURE                          UPVAL U2
        3 CAPTURE                          UPVAL U3
        4 CAPTURE                          UPVAL U4
        5 CAPTURE                          UPVAL U5
        6 CAPTURE                          UPVAL U6
        7 CAPTURE                          UPVAL U7
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U8
       10 SETUPVAL                         R0 0
       11 GETUPVAL                         R0 9
       12 GETUPVAL                         R2 0
       13 NAMECALL                         R0 R0 K0 ["StartVideoCaptureForMCPAsync"]
       15 CALL                             R0 2 -1
       16 RETURN                           R0 -1

PROTO_53:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETIMPORT                        R0 K1 [error]
        4 LOADK                            R1 K2 ["MCP video recording already started"]
        5 LOADN                            R2 0
        6 CALL                             R0 2 0
        7 LOADB                            R0 1
        8 SETUPVAL                         R0 0
        9 LOADNIL                          R0
       10 SETUPVAL                         R0 1
       11 LOADNIL                          R0
       12 SETUPVAL                         R0 2
       13 GETUPVAL                         R0 3
       14 JUMPIFNOT                        R0 ; [+6]
       15 GETIMPORT                        R0 K5 [task.cancel]
       17 GETUPVAL                         R1 3
       18 CALL                             R0 1 0
       19 LOADNIL                          R0
       20 SETUPVAL                         R0 3
       21 GETUPVAL                         R0 4
       22 ADDK                             R0 R0 K6 [1]
       23 SETUPVAL                         R0 4
       24 GETUPVAL                         R0 4
       25 NEWCLOSURE                       R2 P0
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          UPVAL U7
       35 CAPTURE                          UPVAL U8
       36 FASTPCALL                        pcall 1 ; [+2]
       37 GETIMPORT                        R1 K8 [pcall]
       39 CALL                             R1 1 2
       40 JUMPIF                           R1 ; [+12]
       41 LOADB                            R3 0
       42 SETUPVAL                         R3 0
       43 GETUPVAL                         R3 4
       44 ADDK                             R3 R3 K6 [1]
       45 SETUPVAL                         R3 4
       46 LOADNIL                          R3
       47 SETUPVAL                         R3 5
       48 GETIMPORT                        R3 K1 [error]
       50 MOVE                             R4 R2
       51 LOADN                            R5 0
       52 CALL                             R3 2 0
       53 GETIMPORT                        R3 K12 [Enum.VideoCaptureStartedResult.Success]
       55 JUMPIFEQ                         R2 R3 ; [+18]
       57 LOADB                            R3 0
       58 SETUPVAL                         R3 0
       59 GETUPVAL                         R3 4
       60 ADDK                             R3 R3 K6 [1]
       61 SETUPVAL                         R3 4
       62 LOADNIL                          R3
       63 SETUPVAL                         R3 5
       64 GETIMPORT                        R3 K1 [error]
       66 LOADK                            R4 K13 ["Unable to start MCP video recording: %*"]
       67 GETTABLEKS                       R6 R2 K14 ["Name"]
       69 NAMECALL                         R4 R4 K15 ["format"]
       71 CALL                             R4 2 1
       72 LOADN                            R5 0
       73 CALL                             R3 2 0
       74 RETURN                           R0 0

PROTO_54:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 LOADB                            R0 1
        3 SETUPVAL                         R0 1
        4 GETUPVAL                         R0 2
        5 NAMECALL                         R0 R0 K0 ["Fire"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 1
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 2
        6 NAMECALL                         R0 R0 K0 ["StopVideoCaptureForMCP"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 0
       10 JUMPIFNOT                        R0 ; [+38]
       11 LOADB                            R0 0
       12 GETIMPORT                        R1 K3 [task.delay]
       14 LOADN                            R2 15
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          REF R0
       18 CAPTURE                          UPVAL U4
       19 CALL                             R1 2 1
       20 SETUPVAL                         R1 3
       21 GETUPVAL                         R1 4
       22 NAMECALL                         R1 R1 K4 ["Wait"]
       24 CALL                             R1 1 0
       25 GETUPVAL                         R1 3
       26 JUMPIFNOT                        R1 ; [+6]
       27 GETIMPORT                        R1 K6 [task.cancel]
       29 GETUPVAL                         R2 3
       30 CALL                             R1 1 0
       31 LOADNIL                          R1
       32 SETUPVAL                         R1 3
       33 JUMPIFNOT                        R0 ; [+14]
       34 GETUPVAL                         R1 0
       35 JUMPIFNOT                        R1 ; [+12]
       36 LOADB                            R1 0
       37 SETUPVAL                         R1 0
       38 GETUPVAL                         R1 5
       39 ADDK                             R1 R1 K7 [1]
       40 SETUPVAL                         R1 5
       41 LOADNIL                          R1
       42 SETUPVAL                         R1 6
       43 GETIMPORT                        R1 K9 [error]
       45 LOADK                            R2 K10 ["Timed out waiting for MCP video capture"]
       46 LOADN                            R3 0
       47 CALL                             R1 2 0
       48 CLOSEUPVALS                      R0
       49 GETUPVAL                         R0 1
       50 CALL                             R0 0 1
       51 RETURN                           R0 1

PROTO_56:
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
       26 LOADB                            R0 0
       27 SETUPVAL                         R0 6
       28 LOADNIL                          R0
       29 SETUPVAL                         R0 7
       30 LOADNIL                          R0
       31 SETUPVAL                         R0 8
       32 GETUPVAL                         R0 9
       33 ADDK                             R0 R0 K4 [1]
       34 SETUPVAL                         R0 9
       35 LOADNIL                          R0
       36 SETUPVAL                         R0 10
       37 GETUPVAL                         R0 11
       38 JUMPIFNOT                        R0 ; [+6]
       39 GETIMPORT                        R0 K7 [task.cancel]
       41 GETUPVAL                         R1 11
       42 CALL                             R0 1 0
       43 LOADNIL                          R0
       44 SETUPVAL                         R0 11
       45 RETURN                           R0 0

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
       82 CAPTURE                          VAL R12
       83 CAPTURE                          REF R5
       84 CAPTURE                          VAL R18
       85 CAPTURE                          REF R6
       86 CAPTURE                          REF R14
       87 CAPTURE                          REF R11
       88 CAPTURE                          VAL R24
       89 CAPTURE                          VAL R19
       90 CAPTURE                          REF R15
       91 CAPTURE                          VAL R25
       92 NEWCLOSURE                       R29 P16
       93 CAPTURE                          REF R6
       94 CAPTURE                          VAL R12
       95 NEWCLOSURE                       R30 P17
       96 CAPTURE                          REF R3
       97 NEWCLOSURE                       R31 P18
       98 CAPTURE                          VAL R16
       99 CAPTURE                          VAL R1
      100 CAPTURE                          REF R8
      101 CAPTURE                          VAL R28
      102 SETTABLEKS                       R31 R12 K16 ["mouseInput"]
      104 NEWCLOSURE                       R31 P19
      105 CAPTURE                          VAL R28
      106 CAPTURE                          REF R3
      107 SETTABLEKS                       R31 R12 K17 ["pluginGuiMouseInput"]
      109 NEWCLOSURE                       R31 P20
      110 CAPTURE                          VAL R1
      111 CAPTURE                          REF R8
      112 CAPTURE                          VAL R29
      113 SETTABLEKS                       R31 R12 K18 ["keyboardInput"]
      115 NEWCLOSURE                       R31 P21
      116 CAPTURE                          VAL R29
      117 CAPTURE                          REF R3
      118 SETTABLEKS                       R31 R12 K19 ["pluginGuiKeyboardInput"]
      120 NEWCLOSURE                       R31 P22
      121 CAPTURE                          REF R3
      122 NEWCLOSURE                       R32 P23
      123 CAPTURE                          REF R7
      124 CAPTURE                          REF R3
      125 CAPTURE                          REF R10
      126 DUPTABLE                         R33 K26 [{["floor"] = "by raycasting straight down to the floor below it", ["bbox"] = "at the base of its bounding box", ["ring"] = "on the walkable ground around its base"}]
      127 NEWCLOSURE                       R34 P24
      128 CAPTURE                          REF R3
      129 DUPCLOSURE                       R35 K27 [PROTO_35]
      130 CAPTURE                          VAL R34
      131 NEWCLOSURE                       R36 P26
      132 CAPTURE                          REF R3
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R32
      136 CAPTURE                          VAL R35
      137 CAPTURE                          VAL R33
      138 SETTABLEKS                       R36 R12 K28 ["characterNavigation"]
      140 NEWCLOSURE                       R36 P27
      141 CAPTURE                          REF R10
      142 SETTABLEKS                       R36 R12 K29 ["stopCharacterNavigation"]
      144 LOADB                            R36 0
      145 LOADB                            R37 0
      146 GETTABLEKS                       R38 R2 K30 ["new"]
      148 CALL                             R38 0 1
      149 GETTABLEKS                       R39 R2 K30 ["new"]
      151 CALL                             R39 0 1
      152 LOADNIL                          R40
      153 LOADNIL                          R41
      154 NEWTABLE                         R42 0 0
      156 LOADNIL                          R43
      157 NEWCLOSURE                       R44 P28
      158 CAPTURE                          REF R36
      159 CAPTURE                          REF R37
      160 CAPTURE                          REF R40
      161 CAPTURE                          REF R9
      162 CAPTURE                          VAL R38
      163 CAPTURE                          REF R41
      164 CAPTURE                          REF R43
      165 CAPTURE                          VAL R42
      166 CAPTURE                          VAL R39
      167 SETTABLEKS                       R44 R12 K31 ["startScreenRecording"]
      169 NEWCLOSURE                       R44 P29
      170 CAPTURE                          REF R36
      171 CAPTURE                          REF R43
      172 CAPTURE                          REF R9
      173 CAPTURE                          VAL R39
      174 SETTABLEKS                       R44 R12 K32 ["stopScreenRecording"]
      176 DUPCLOSURE                       R44 K33 [PROTO_42]
      177 CAPTURE                          VAL R42
      178 SETTABLEKS                       R44 R12 K34 ["getAllRecordingFilePaths"]
      180 LOADB                            R44 0
      181 GETTABLEKS                       R45 R2 K30 ["new"]
      183 CALL                             R45 0 1
      184 LOADNIL                          R46
      185 LOADNIL                          R47
      186 LOADNIL                          R48
      187 LOADNIL                          R49
      188 LOADN                            R50 0
      189 DUPCLOSURE                       R51 K35 [PROTO_43]
      190 DUPCLOSURE                       R52 K36 [PROTO_44]
      191 DUPCLOSURE                       R53 K37 [PROTO_45]
      192 DUPCLOSURE                       R54 K38 [PROTO_46]
      193 NEWCLOSURE                       R55 P35
      194 CAPTURE                          REF R50
      195 CAPTURE                          REF R48
      196 NEWCLOSURE                       R56 P36
      197 CAPTURE                          REF R49
      198 DUPCLOSURE                       R57 K39 [PROTO_49]
      199 NEWCLOSURE                       R58 P38
      200 CAPTURE                          REF R47
      201 CAPTURE                          VAL R54
      202 CAPTURE                          REF R46
      203 NEWCLOSURE                       R59 P39
      204 CAPTURE                          REF R44
      205 CAPTURE                          REF R46
      206 CAPTURE                          REF R47
      207 CAPTURE                          REF R49
      208 CAPTURE                          REF R50
      209 CAPTURE                          REF R48
      210 CAPTURE                          VAL R53
      211 CAPTURE                          VAL R45
      212 CAPTURE                          REF R9
      213 SETTABLEKS                       R59 R12 K40 ["startMCPVideoRecording"]
      215 NEWCLOSURE                       R59 P40
      216 CAPTURE                          REF R44
      217 CAPTURE                          VAL R58
      218 CAPTURE                          REF R9
      219 CAPTURE                          REF R49
      220 CAPTURE                          VAL R45
      221 CAPTURE                          REF R50
      222 CAPTURE                          REF R48
      223 SETTABLEKS                       R59 R12 K41 ["stopMCPVideoRecording"]
      225 NEWCLOSURE                       R59 P41
      226 CAPTURE                          REF R40
      227 CAPTURE                          REF R41
      228 CAPTURE                          REF R36
      229 CAPTURE                          REF R37
      230 CAPTURE                          VAL R42
      231 CAPTURE                          REF R43
      232 CAPTURE                          REF R44
      233 CAPTURE                          REF R46
      234 CAPTURE                          REF R47
      235 CAPTURE                          REF R50
      236 CAPTURE                          REF R48
      237 CAPTURE                          REF R49
      238 SETTABLEKS                       R59 R12 K42 ["_resetScreenRecordingForTests"]
      240 CLOSEUPVALS                      R3
      241 RETURN                           R12 1
