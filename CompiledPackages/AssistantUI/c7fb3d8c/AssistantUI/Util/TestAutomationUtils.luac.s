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
       12 GETUPVAL                         R0 1
       13 LOADK                            R2 K3 ["VirtualInputManager"]
       14 NAMECALL                         R0 R0 K1 ["GetService"]
       16 CALL                             R0 2 1
       17 SETUPVAL                         R0 3
       18 GETUPVAL                         R0 1
       19 LOADK                            R2 K4 ["PathfindingService"]
       20 NAMECALL                         R0 R0 K1 ["GetService"]
       22 CALL                             R0 2 1
       23 SETUPVAL                         R0 4
       24 RETURN                           R0 0

PROTO_1:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K0 ["TweenService"]
        3 NAMECALL                         R1 R1 K1 ["GetService"]
        5 CALL                             R1 2 1
        6 SETUPVAL                         R1 1
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K2 ["GuiService"]
        9 NAMECALL                         R1 R1 K1 ["GetService"]
       11 CALL                             R1 2 1
       12 SETUPVAL                         R1 2
       13 GETUPVAL                         R1 0
       14 LOADK                            R3 K3 ["VirtualInputManager"]
       15 NAMECALL                         R1 R1 K1 ["GetService"]
       17 CALL                             R1 2 1
       18 SETUPVAL                         R1 3
       19 GETUPVAL                         R1 0
       20 LOADK                            R3 K4 ["PathfindingService"]
       21 NAMECALL                         R1 R1 K1 ["GetService"]
       23 CALL                             R1 2 1
       24 SETUPVAL                         R1 4
       25 RETURN                           R0 0

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
       13 JUMPIF                           R1 ; [+109]
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
      116 SETUPVAL                         R4 2
      117 GETIMPORT                        R5 K37 [task.spawn]
      119 NEWCLOSURE                       R6 P0
      120 CAPTURE                          UPVAL U3
      121 CAPTURE                          VAL R3
      122 CALL                             R5 1 0
      123 LOADK                            R4 K11 ["Cursor"]
      124 NAMECALL                         R2 R1 K3 ["FindFirstChild"]
      126 CALL                             R2 2 1
      127 SETUPVAL                         R2 0
      128 GETUPVAL                         R2 0
      129 RETURN                           R2 1

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
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETIMPORT                        R5 K2 [Vector2.new]
        5 MOVE                             R6 R0
        6 MOVE                             R7 R1
        7 CALL                             R5 2 1
        8 GETTABLEKS                       R6 R2 K3 ["AbsolutePosition"]
       10 SUB                              R4 R5 R6
       11 GETTABLEKS                       R3 R4 K4 ["Magnitude"]
       13 LOADN                            R4 10
       14 JUMPIFNOTLT                      R3 R4 ; [+9]
       16 GETIMPORT                        R3 K7 [UDim2.fromOffset]
       18 MOVE                             R4 R0
       19 MOVE                             R5 R1
       20 CALL                             R3 2 1
       21 SETTABLEKS                       R3 R2 K8 ["Position"]
       23 RETURN                           R0 0
       24 GETIMPORT                        R3 K10 [TweenInfo.new]
       26 LOADK                            R4 K11 [0.3]
       27 GETIMPORT                        R5 K15 [Enum.EasingStyle.Linear]
       29 GETIMPORT                        R6 K18 [Enum.EasingDirection.Out]
       31 LOADN                            R7 0
       32 LOADB                            R8 0
       33 LOADN                            R9 0
       34 CALL                             R3 6 1
       35 DUPTABLE                         R4 K19 [{"Position"}]
       36 GETIMPORT                        R5 K7 [UDim2.fromOffset]
       38 MOVE                             R6 R0
       39 MOVE                             R7 R1
       40 CALL                             R5 2 1
       41 SETTABLEKS                       R5 R4 K8 ["Position"]
       43 GETUPVAL                         R5 1
       44 MOVE                             R7 R2
       45 MOVE                             R8 R3
       46 MOVE                             R9 R4
       47 NAMECALL                         R5 R5 K20 ["Create"]
       49 CALL                             R5 4 1
       50 NAMECALL                         R6 R5 K21 ["Play"]
       52 CALL                             R6 1 0
       53 GETTABLEKS                       R6 R5 K22 ["Completed"]
       55 NAMECALL                         R6 R6 K23 ["Wait"]
       57 CALL                             R6 1 0
       58 NAMECALL                         R6 R5 K24 ["Destroy"]
       60 CALL                             R6 1 0
       61 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+6]
        5 NAMECALL                         R2 R0 K2 ["GetPivot"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R1 R2 K3 ["Position"]
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

PROTO_9:
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

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["x"]
        2 JUMPIFEQKNIL                     R1 ; [+5]
        4 GETTABLEKS                       R1 R0 K1 ["y"]
        6 JUMPIFNOTEQKNIL                  R1 ; [+8]
        8 GETTABLEKS                       R1 R0 K2 ["instance_path"]
       10 JUMPIF                           R1 ; [+4]
       11 GETIMPORT                        R1 K4 [error]
       13 LOADK                            R2 K5 ["Either x and y or instance_path is required"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 0
       16 CALL                             R1 0 0
       17 GETTABLEKS                       R1 R0 K6 ["action"]
       19 LOADNIL                          R2
       20 LOADNIL                          R3
       21 GETTABLEKS                       R4 R0 K2 ["instance_path"]
       23 JUMPIFNOT                        R4 ; [+37]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R5 R6 K7 ["findInstanceByPath"]
       27 MOVE                             R6 R4
       28 CALL                             R5 1 1
       29 JUMPIFNOT                        R5 ; [+24]
       30 LOADK                            R9 K8 ["GuiObject"]
       31 NAMECALL                         R7 R5 K9 ["IsA"]
       33 CALL                             R7 2 1
       34 JUMPIF                           R7 ; [+8]
       35 GETIMPORT                        R6 K4 [error]
       37 LOADK                            R8 K10 ["Instance is not a GuiObject: "]
       38 GETTABLEKS                       R9 R5 K11 ["ClassName"]
       40 CONCAT                           R7 R8 R9
       41 CALL                             R6 1 1
       42 JUMP                             ; [+6]
       43 GETTABLEKS                       R7 R5 K12 ["AbsolutePosition"]
       45 GETTABLEKS                       R9 R5 K14 ["AbsoluteSize"]
       47 DIVK                             R8 R9 K13 [2]
       48 ADD                              R6 R7 R8
       49 GETTABLEKS                       R2 R6 K15 ["X"]
       51 GETTABLEKS                       R3 R6 K16 ["Y"]
       53 JUMP                             ; [+11]
       54 GETIMPORT                        R6 K4 [error]
       56 LOADK                            R8 K17 ["Instance not found: "]
       57 MOVE                             R9 R4
       58 CONCAT                           R7 R8 R9
       59 CALL                             R6 1 0
       60 JUMP                             ; [+4]
       61 GETTABLEKS                       R2 R0 K0 ["x"]
       63 GETTABLEKS                       R3 R0 K1 ["y"]
       65 GETUPVAL                         R5 2
       66 NAMECALL                         R5 R5 K18 ["GetGuiInset"]
       68 CALL                             R5 1 1
       69 GETTABLEKS                       R7 R5 K15 ["X"]
       71 ADD                              R6 R2 R7
       72 GETTABLEKS                       R8 R5 K16 ["Y"]
       74 ADD                              R7 R3 R8
       75 GETUPVAL                         R8 3
       76 JUMPIF                           R8 ; [+1]
       77 JUMP                             ; [+5]
       78 LOADN                            R9 10
       79 SETUPVAL                         R9 4
       80 LOADB                            R9 1
       81 SETTABLEKS                       R9 R8 K19 ["Visible"]
       83 JUMPIFNOTEQKS                    R1 K20 ["moveTo"] ; [+13]
       85 GETUPVAL                         R8 5
       86 MOVE                             R9 R2
       87 MOVE                             R10 R3
       88 CALL                             R8 2 0
       89 GETUPVAL                         R8 6
       90 MOVE                             R10 R6
       91 MOVE                             R11 R7
       92 LOADNIL                          R12
       93 NAMECALL                         R8 R8 K21 ["SendMouseMoveEvent"]
       95 CALL                             R8 4 0
       96 RETURN                           R0 0
       97 JUMPIFNOTEQKS                    R1 K22 ["click"] ; [+47]
       99 GETUPVAL                         R8 5
      100 MOVE                             R9 R2
      101 MOVE                             R10 R3
      102 CALL                             R8 2 0
      103 GETUPVAL                         R8 6
      104 MOVE                             R10 R6
      105 MOVE                             R11 R7
      106 LOADNIL                          R12
      107 NAMECALL                         R8 R8 K21 ["SendMouseMoveEvent"]
      109 CALL                             R8 4 0
      110 GETIMPORT                        R8 K25 [task.wait]
      112 LOADK                            R9 K26 [0.2]
      113 CALL                             R8 1 0
      114 GETUPVAL                         R8 6
      115 MOVE                             R10 R6
      116 MOVE                             R11 R7
      117 LOADN                            R12 0
      118 LOADB                            R13 1
      119 LOADNIL                          R14
      120 LOADN                            R15 0
      121 NAMECALL                         R8 R8 K27 ["SendMouseButtonEvent"]
      123 CALL                             R8 7 0
      124 GETIMPORT                        R8 K25 [task.wait]
      126 LOADK                            R9 K28 [0.1]
      127 CALL                             R8 1 0
      128 GETUPVAL                         R8 6
      129 MOVE                             R10 R6
      130 MOVE                             R11 R7
      131 LOADN                            R12 0
      132 LOADB                            R13 0
      133 LOADNIL                          R14
      134 LOADN                            R15 0
      135 NAMECALL                         R8 R8 K27 ["SendMouseButtonEvent"]
      137 CALL                             R8 7 0
      138 GETUPVAL                         R8 7
      139 LOADB                            R9 1
      140 CALL                             R8 1 0
      141 GETUPVAL                         R8 7
      142 LOADB                            R9 0
      143 CALL                             R8 1 0
      144 RETURN                           R0 0
      145 JUMPIFNOTEQKS                    R1 K29 ["rightClick"] ; [+41]
      147 GETUPVAL                         R8 5
      148 MOVE                             R9 R2
      149 MOVE                             R10 R3
      150 CALL                             R8 2 0
      151 GETUPVAL                         R8 6
      152 MOVE                             R10 R6
      153 MOVE                             R11 R7
      154 LOADNIL                          R12
      155 NAMECALL                         R8 R8 K21 ["SendMouseMoveEvent"]
      157 CALL                             R8 4 0
      158 GETIMPORT                        R8 K25 [task.wait]
      160 LOADK                            R9 K26 [0.2]
      161 CALL                             R8 1 0
      162 GETUPVAL                         R8 6
      163 MOVE                             R10 R6
      164 MOVE                             R11 R7
      165 LOADN                            R12 1
      166 LOADB                            R13 1
      167 LOADNIL                          R14
      168 LOADN                            R15 0
      169 NAMECALL                         R8 R8 K27 ["SendMouseButtonEvent"]
      171 CALL                             R8 7 0
      172 GETIMPORT                        R8 K25 [task.wait]
      174 LOADK                            R9 K28 [0.1]
      175 CALL                             R8 1 0
      176 GETUPVAL                         R8 6
      177 MOVE                             R10 R6
      178 MOVE                             R11 R7
      179 LOADN                            R12 1
      180 LOADB                            R13 0
      181 LOADNIL                          R14
      182 LOADN                            R15 0
      183 NAMECALL                         R8 R8 K27 ["SendMouseButtonEvent"]
      185 CALL                             R8 7 0
      186 RETURN                           R0 0
      187 JUMPIFNOTEQKS                    R1 K30 ["scrollUp"] ; [+10]
      189 GETUPVAL                         R8 6
      190 MOVE                             R10 R6
      191 MOVE                             R11 R7
      192 LOADB                            R12 1
      193 LOADNIL                          R13
      194 NAMECALL                         R8 R8 K31 ["SendMouseWheelEvent"]
      196 CALL                             R8 5 0
      197 RETURN                           R0 0
      198 JUMPIFNOTEQKS                    R1 K32 ["scrollDown"] ; [+9]
      200 GETUPVAL                         R8 6
      201 MOVE                             R10 R6
      202 MOVE                             R11 R7
      203 LOADB                            R12 0
      204 LOADNIL                          R13
      205 NAMECALL                         R8 R8 K31 ["SendMouseWheelEvent"]
      207 CALL                             R8 5 0
      208 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["action"]
        2 GETTABLEKS                       R2 R0 K1 ["key_code"]
        4 GETTABLEKS                       R3 R0 K2 ["text_inputs"]
        6 JUMPIFNOTEQKS                    R1 K3 ["keyDown"] ; [+10]
        8 GETUPVAL                         R4 0
        9 LOADB                            R6 1
       10 MOVE                             R7 R2
       11 LOADB                            R8 0
       12 LOADNIL                          R9
       13 NAMECALL                         R4 R4 K4 ["SendKeyEvent"]
       15 CALL                             R4 5 0
       16 RETURN                           R0 0
       17 JUMPIFNOTEQKS                    R1 K5 ["keyUp"] ; [+10]
       19 GETUPVAL                         R4 0
       20 LOADB                            R6 0
       21 MOVE                             R7 R2
       22 LOADB                            R8 0
       23 LOADNIL                          R9
       24 NAMECALL                         R4 R4 K4 ["SendKeyEvent"]
       26 CALL                             R4 5 0
       27 RETURN                           R0 0
       28 JUMPIFNOTEQKS                    R1 K6 ["keyPress"] ; [+22]
       30 GETUPVAL                         R4 0
       31 LOADB                            R6 1
       32 MOVE                             R7 R2
       33 LOADB                            R8 0
       34 LOADNIL                          R9
       35 NAMECALL                         R4 R4 K4 ["SendKeyEvent"]
       37 CALL                             R4 5 0
       38 GETIMPORT                        R4 K9 [task.wait]
       40 LOADK                            R5 K10 [0.1]
       41 CALL                             R4 1 0
       42 GETUPVAL                         R4 0
       43 LOADB                            R6 0
       44 MOVE                             R7 R2
       45 LOADB                            R8 0
       46 LOADNIL                          R9
       47 NAMECALL                         R4 R4 K4 ["SendKeyEvent"]
       49 CALL                             R4 5 0
       50 RETURN                           R0 0
       51 JUMPIFNOTEQKS                    R1 K11 ["textInput"] ; [+22]
       53 GETTABLEKS                       R4 R0 K12 ["instance_path"]
       55 JUMPIFNOT                        R4 ; [+12]
       56 GETUPVAL                         R5 1
       57 GETTABLEKS                       R4 R5 K13 ["mouseInput"]
       59 DUPTABLE                         R5 K14 [{"action", "instance_path"}]
       60 LOADK                            R6 K15 ["click"]
       61 SETTABLEKS                       R6 R5 K0 ["action"]
       63 GETTABLEKS                       R6 R0 K12 ["instance_path"]
       65 SETTABLEKS                       R6 R5 K12 ["instance_path"]
       67 CALL                             R4 1 0
       68 GETUPVAL                         R4 0
       69 MOVE                             R6 R3
       70 LOADNIL                          R7
       71 NAMECALL                         R4 R4 K16 ["SendTextInputCharacterEvent"]
       73 CALL                             R4 3 0
       74 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Position"]
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R0 R0 K1 ["ComputeAsync"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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
       49 GETUPVAL                         R3 5
       50 GETUPVAL                         R4 4
       51 GETTABLE                         R2 R3 R4
       52 GETTABLEKS                       R1 R2 K5 ["Action"]
       54 GETIMPORT                        R2 K9 [Enum.PathWaypointAction.Jump]
       56 JUMPIFNOTEQ                      R1 R2 ; [+7]
       58 GETUPVAL                         R1 7
       59 GETIMPORT                        R3 K12 [Enum.HumanoidStateType.Jumping]
       61 NAMECALL                         R1 R1 K13 ["ChangeState"]
       63 CALL                             R1 2 0
       64 GETUPVAL                         R2 7
       65 GETTABLEKS                       R1 R2 K14 ["Sit"]
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
       81 GETUPVAL                         R2 7
       82 GETTABLEKS                       R1 R2 K15 ["WalkSpeed"]
       84 LOADN                            R2 16
       85 JUMPIFNOTLT                      R2 R1 ; [+5]
       87 GETUPVAL                         R1 7
       88 LOADN                            R2 16
       89 SETTABLEKS                       R2 R1 K15 ["WalkSpeed"]
       91 GETUPVAL                         R1 7
       92 GETUPVAL                         R5 5
       93 GETUPVAL                         R6 4
       94 GETTABLE                         R4 R5 R6
       95 GETTABLEKS                       R3 R4 K16 ["Position"]
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
      111 LOADK                            R4 K18 ["Path Reached"]
      112 NAMECALL                         R1 R1 K2 ["Fire"]
      114 CALL                             R1 3 0
      115 RETURN                           R0 0
      116 RETURN                           R0 0

PROTO_17:
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
      104 GETTABLE                         R15 R5 R6
      105 GETTABLEKS                       R14 R15 K32 ["Action"]
      107 GETIMPORT                        R15 K35 [Enum.PathWaypointAction.Jump]
      109 JUMPIFEQ                         R14 R15 ; [+4]
      111 GETTABLEKS                       R14 R2 K36 ["Sit"]
      113 JUMPIFNOT                        R14 ; [+5]
      114 GETIMPORT                        R16 K39 [Enum.HumanoidStateType.Jumping]
      116 NAMECALL                         R14 R2 K40 ["ChangeState"]
      118 CALL                             R14 2 0
      119 GETTABLE                         R17 R5 R6
      120 GETTABLEKS                       R16 R17 K41 ["Position"]
      122 NAMECALL                         R14 R2 K42 ["MoveTo"]
      124 CALL                             R14 2 0
      125 GETTABLEKS                       R14 R11 K43 ["Event"]
      127 NAMECALL                         R14 R14 K10 ["Wait"]
      129 CALL                             R14 1 -1
      130 CLOSEUPVALS                      R5
      131 RETURN                           R14 -1
      132 CLOSEUPVALS                      R12
      133 LOADB                            R11 0
      134 LOADK                            R12 K44 ["Path Not Found"]
      135 CLOSEUPVALS                      R5
      136 RETURN                           R11 2

PROTO_18:
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
       41 GETUPVAL                         R8 1
       42 GETTABLEKS                       R7 R8 K15 ["findInstanceByPath"]
       44 MOVE                             R8 R5
       45 CALL                             R7 1 1
       46 JUMPIFNOT                        R7 ; [+34]
       47 LOADK                            R11 K16 ["Model"]
       48 NAMECALL                         R9 R7 K17 ["IsA"]
       50 CALL                             R9 2 1
       51 JUMPIFNOT                        R9 ; [+6]
       52 NAMECALL                         R9 R7 K18 ["GetPivot"]
       54 CALL                             R9 1 1
       55 GETTABLEKS                       R8 R9 K19 ["Position"]
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

PROTO_19:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 LOADB                            R5 0
        8 LOADN                            R6 10
        9 NEWTABLE                         R7 8 0
       11 NEWCLOSURE                       R8 P0
       12 CAPTURE                          REF R1
       13 CAPTURE                          REF R0
       14 CAPTURE                          REF R2
       15 CAPTURE                          REF R3
       16 CAPTURE                          REF R4
       17 LOADK                            R11 K2 ["TweenService"]
       18 NAMECALL                         R9 R0 K3 ["GetService"]
       20 CALL                             R9 2 1
       21 MOVE                             R1 R9
       22 LOADK                            R11 K4 ["GuiService"]
       23 NAMECALL                         R9 R0 K3 ["GetService"]
       25 CALL                             R9 2 1
       26 MOVE                             R2 R9
       27 LOADK                            R11 K5 ["VirtualInputManager"]
       28 NAMECALL                         R9 R0 K3 ["GetService"]
       30 CALL                             R9 2 1
       31 MOVE                             R3 R9
       32 LOADK                            R11 K6 ["PathfindingService"]
       33 NAMECALL                         R9 R0 K3 ["GetService"]
       35 CALL                             R9 2 1
       36 MOVE                             R4 R9
       37 NEWCLOSURE                       R9 P1
       38 CAPTURE                          REF R0
       39 CAPTURE                          REF R1
       40 CAPTURE                          REF R2
       41 CAPTURE                          REF R3
       42 CAPTURE                          REF R4
       43 SETTABLEKS                       R9 R7 K7 ["setDataModel"]
       45 LOADNIL                          R9
       46 LOADNIL                          R10
       47 NEWCLOSURE                       R11 P2
       48 CAPTURE                          REF R9
       49 CAPTURE                          REF R0
       50 CAPTURE                          REF R10
       51 CAPTURE                          REF R6
       52 NEWCLOSURE                       R12 P3
       53 CAPTURE                          REF R9
       54 CAPTURE                          REF R6
       55 NEWCLOSURE                       R13 P4
       56 CAPTURE                          REF R9
       57 CAPTURE                          REF R1
       58 NEWCLOSURE                       R14 P5
       59 CAPTURE                          REF R9
       60 CAPTURE                          REF R10
       61 CAPTURE                          REF R1
       62 DUPCLOSURE                       R15 K8 [PROTO_7]
       63 DUPCLOSURE                       R16 K9 [PROTO_8]
       64 NEWCLOSURE                       R17 P8
       65 CAPTURE                          REF R0
       66 SETTABLEKS                       R17 R7 K10 ["findInstanceByPath"]
       68 NEWCLOSURE                       R17 P9
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R7
       71 CAPTURE                          REF R2
       72 CAPTURE                          REF R9
       73 CAPTURE                          REF R6
       74 CAPTURE                          VAL R13
       75 CAPTURE                          REF R3
       76 CAPTURE                          VAL R14
       77 SETTABLEKS                       R17 R7 K11 ["mouseInput"]
       79 NEWCLOSURE                       R17 P10
       80 CAPTURE                          REF R3
       81 CAPTURE                          VAL R7
       82 SETTABLEKS                       R17 R7 K12 ["keyboardInput"]
       84 NEWCLOSURE                       R17 P11
       85 CAPTURE                          REF R0
       86 NEWCLOSURE                       R18 P12
       87 CAPTURE                          REF R4
       88 CAPTURE                          REF R0
       89 CAPTURE                          REF R5
       90 NEWCLOSURE                       R19 P13
       91 CAPTURE                          REF R0
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R18
       94 SETTABLEKS                       R19 R7 K13 ["characterNavigation"]
       96 NEWCLOSURE                       R19 P14
       97 CAPTURE                          REF R5
       98 SETTABLEKS                       R19 R7 K14 ["stopCharacterNavigation"]
      100 CLOSEUPVALS                      R0
      101 RETURN                           R7 1
