PROTO_0:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Frame"]
        3 CALL                             R1 1 1
        4 LOADK                            R2 K4 ["Body"]
        5 SETTABLEKS                       R2 R1 K5 ["Name"]
        7 GETIMPORT                        R2 K7 [UDim2.new]
        9 LOADN                            R3 1
       10 LOADN                            R4 0
       11 LOADN                            R5 0
       12 LOADN                            R6 0
       13 CALL                             R2 4 1
       14 SETTABLEKS                       R2 R1 K8 ["Size"]
       16 GETIMPORT                        R2 K12 [Enum.AutomaticSize.Y]
       18 SETTABLEKS                       R2 R1 K10 ["AutomaticSize"]
       20 LOADN                            R2 1
       21 SETTABLEKS                       R2 R1 K13 ["BackgroundTransparency"]
       23 LOADN                            R2 0
       24 SETTABLEKS                       R2 R1 K14 ["BorderSizePixel"]
       26 SETTABLEKS                       R0 R1 K15 ["Parent"]
       28 GETIMPORT                        R2 K2 [Instance.new]
       30 LOADK                            R3 K16 ["UIListLayout"]
       31 CALL                             R2 1 1
       32 GETIMPORT                        R3 K19 [Enum.SortOrder.LayoutOrder]
       34 SETTABLEKS                       R3 R2 K17 ["SortOrder"]
       36 SETTABLEKS                       R1 R2 K15 ["Parent"]
       38 GETIMPORT                        R3 K2 [Instance.new]
       40 LOADK                            R4 K20 ["UICorner"]
       41 CALL                             R3 1 1
       42 GETIMPORT                        R4 K22 [UDim.new]
       44 LOADN                            R5 0
       45 LOADN                            R6 16
       46 CALL                             R4 2 1
       47 SETTABLEKS                       R4 R3 K23 ["CornerRadius"]
       49 SETTABLEKS                       R0 R3 K15 ["Parent"]
       51 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["TextButton"]
        3 CALL                             R1 1 1
        4 LOADK                            R2 K4 ["HeaderDragHandle"]
        5 SETTABLEKS                       R2 R1 K5 ["Name"]
        7 GETIMPORT                        R2 K7 [UDim2.new]
        9 LOADN                            R3 1
       10 LOADN                            R4 -36
       11 LOADN                            R5 0
       12 LOADN                            R6 40
       13 CALL                             R2 4 1
       14 SETTABLEKS                       R2 R1 K8 ["Size"]
       16 GETIMPORT                        R2 K10 [UDim2.fromOffset]
       18 LOADN                            R3 0
       19 LOADN                            R4 0
       20 CALL                             R2 2 1
       21 SETTABLEKS                       R2 R1 K11 ["Position"]
       23 LOADN                            R2 1
       24 SETTABLEKS                       R2 R1 K12 ["BackgroundTransparency"]
       26 LOADN                            R2 0
       27 SETTABLEKS                       R2 R1 K13 ["BorderSizePixel"]
       29 LOADK                            R2 K14 [""]
       30 SETTABLEKS                       R2 R1 K15 ["Text"]
       32 LOADB                            R2 0
       33 SETTABLEKS                       R2 R1 K16 ["AutoButtonColor"]
       35 LOADB                            R2 0
       36 SETTABLEKS                       R2 R1 K17 ["Selectable"]
       38 LOADB                            R2 1
       39 SETTABLEKS                       R2 R1 K18 ["Active"]
       41 LOADN                            R2 100
       42 SETTABLEKS                       R2 R1 K19 ["ZIndex"]
       44 SETTABLEKS                       R0 R1 K20 ["Parent"]
       46 RETURN                           R1 1

PROTO_2:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+9]
        2 LOADK                            R4 K0 ["PluginGui"]
        3 NAMECALL                         R2 R1 K1 ["IsA"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+1]
        7 RETURN                           R1 1
        8 GETTABLEKS                       R1 R1 K2 ["Parent"]
       10 JUMPBACK                         ; [-10]
       11 LOADNIL                          R2
       12 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Parent"]
        5 JUMPIF                           R1 ; [+15]
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R2
        8 JUMPIFNOT                        R3 ; [+10]
        9 LOADK                            R6 K1 ["PluginGui"]
       10 NAMECALL                         R4 R3 K2 ["IsA"]
       12 CALL                             R4 2 1
       13 JUMPIFNOT                        R4 ; [+2]
       14 MOVE                             R1 R3
       15 JUMP                             ; [+4]
       16 GETTABLEKS                       R3 R3 K0 ["Parent"]
       18 JUMPBACK                         ; [-11]
       19 LOADNIL                          R1
       20 SETUPVAL                         R1 0
       21 GETUPVAL                         R1 0
       22 JUMPIFNOT                        R1 ; [+5]
       23 GETUPVAL                         R1 0
       24 NAMECALL                         R1 R1 K3 ["GetRelativeMousePosition"]
       26 CALL                             R1 1 -1
       27 RETURN                           R1 -1
       28 JUMPIFNOT                        R0 ; [+10]
       29 GETTABLEKS                       R1 R0 K4 ["Position"]
       31 GETIMPORT                        R2 K7 [Vector2.new]
       33 GETTABLEKS                       R3 R1 K8 ["X"]
       35 GETTABLEKS                       R4 R1 K9 ["Y"]
       37 CALL                             R2 2 -1
       38 RETURN                           R2 -1
       39 GETUPVAL                         R1 2
       40 JUMPIF                           R1 ; [+2]
       41 GETIMPORT                        R1 K11 [Vector2.zero]
       43 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R1 0
        1 SETUPVAL                         R1 0
        2 LOADNIL                          R1
        3 SETUPVAL                         R1 1
        4 LOADNIL                          R1
        5 SETUPVAL                         R1 2
        6 GETUPVAL                         R1 3
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETUPVAL                         R1 3
        9 NAMECALL                         R1 R1 K0 ["Disconnect"]
       11 CALL                             R1 1 0
       12 LOADNIL                          R1
       13 SETUPVAL                         R1 3
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 2
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 3
        8 JUMPIFNOT                        R2 ; [+4]
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R2 R2 K0 ["Parent"]
       12 JUMPIF                           R2 ; [+15]
       13 GETUPVAL                         R3 4
       14 MOVE                             R4 R3
       15 JUMPIFNOT                        R4 ; [+10]
       16 LOADK                            R7 K1 ["PluginGui"]
       17 NAMECALL                         R5 R4 K2 ["IsA"]
       19 CALL                             R5 2 1
       20 JUMPIFNOT                        R5 ; [+2]
       21 MOVE                             R2 R4
       22 JUMP                             ; [+4]
       23 GETTABLEKS                       R4 R4 K0 ["Parent"]
       25 JUMPBACK                         ; [-11]
       26 LOADNIL                          R2
       27 SETUPVAL                         R2 3
       28 GETUPVAL                         R2 3
       29 JUMPIFNOT                        R2 ; [+5]
       30 GETUPVAL                         R1 3
       31 NAMECALL                         R1 R1 K3 ["GetRelativeMousePosition"]
       33 CALL                             R1 1 1
       34 JUMP                             ; [+4]
       35 GETUPVAL                         R1 1
       36 JUMPIF                           R1 ; [+2]
       37 GETIMPORT                        R1 K6 [Vector2.zero]
       39 GETUPVAL                         R2 1
       40 SUB                              R0 R1 R2
       41 GETUPVAL                         R1 4
       42 GETIMPORT                        R2 K9 [UDim2.new]
       44 GETUPVAL                         R3 2
       45 GETTABLEKS                       R3 R3 K10 ["X"]
       47 GETTABLEKS                       R3 R3 K11 ["Scale"]
       49 GETUPVAL                         R5 2
       50 GETTABLEKS                       R5 R5 K10 ["X"]
       52 GETTABLEKS                       R5 R5 K12 ["Offset"]
       54 GETTABLEKS                       R6 R0 K10 ["X"]
       56 ADD                              R4 R5 R6
       57 GETUPVAL                         R5 2
       58 GETTABLEKS                       R5 R5 K13 ["Y"]
       60 GETTABLEKS                       R5 R5 K11 ["Scale"]
       62 GETUPVAL                         R7 2
       63 GETTABLEKS                       R7 R7 K13 ["Y"]
       65 GETTABLEKS                       R7 R7 K12 ["Offset"]
       67 GETTABLEKS                       R8 R0 K13 ["Y"]
       69 ADD                              R6 R7 R8
       70 CALL                             R2 4 1
       71 SETTABLEKS                       R2 R1 K14 ["Position"]
       73 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["UserInputState"]
        3 GETIMPORT                        R1 K3 [Enum.UserInputState.End]
        5 JUMPIFEQ                         R0 R1 ; [+8]
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["UserInputState"]
       10 GETIMPORT                        R1 K5 [Enum.UserInputState.Cancel]
       12 JUMPIFNOTEQ                      R0 R1 ; [+16]
       14 GETUPVAL                         R0 0
       15 LOADB                            R1 0
       16 SETUPVAL                         R1 1
       17 LOADNIL                          R1
       18 SETUPVAL                         R1 2
       19 LOADNIL                          R1
       20 SETUPVAL                         R1 3
       21 GETUPVAL                         R1 4
       22 JUMPIFNOT                        R1 ; [+6]
       23 GETUPVAL                         R1 4
       24 NAMECALL                         R1 R1 K6 ["Disconnect"]
       26 CALL                             R1 1 0
       27 LOADNIL                          R1
       28 SETUPVAL                         R1 4
       29 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 RETURN                           R0 0
        7 LOADB                            R1 1
        8 SETUPVAL                         R1 0
        9 GETUPVAL                         R2 2
       10 JUMPIFNOT                        R2 ; [+4]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K4 ["Parent"]
       14 JUMPIF                           R2 ; [+15]
       15 GETUPVAL                         R3 3
       16 MOVE                             R4 R3
       17 JUMPIFNOT                        R4 ; [+10]
       18 LOADK                            R7 K5 ["PluginGui"]
       19 NAMECALL                         R5 R4 K6 ["IsA"]
       21 CALL                             R5 2 1
       22 JUMPIFNOT                        R5 ; [+2]
       23 MOVE                             R2 R4
       24 JUMP                             ; [+4]
       25 GETTABLEKS                       R4 R4 K4 ["Parent"]
       27 JUMPBACK                         ; [-11]
       28 LOADNIL                          R2
       29 SETUPVAL                         R2 2
       30 GETUPVAL                         R2 2
       31 JUMPIFNOT                        R2 ; [+5]
       32 GETUPVAL                         R1 2
       33 NAMECALL                         R1 R1 K7 ["GetRelativeMousePosition"]
       35 CALL                             R1 1 1
       36 JUMP                             ; [+16]
       37 JUMPIFNOT                        R0 ; [+11]
       38 GETTABLEKS                       R2 R0 K8 ["Position"]
       40 GETIMPORT                        R3 K11 [Vector2.new]
       42 GETTABLEKS                       R4 R2 K12 ["X"]
       44 GETTABLEKS                       R5 R2 K13 ["Y"]
       46 CALL                             R3 2 1
       47 MOVE                             R1 R3
       48 JUMP                             ; [+4]
       49 GETUPVAL                         R1 1
       50 JUMPIF                           R1 ; [+2]
       51 GETIMPORT                        R1 K15 [Vector2.zero]
       53 SETUPVAL                         R1 1
       54 GETUPVAL                         R1 3
       55 GETTABLEKS                       R1 R1 K8 ["Position"]
       57 SETUPVAL                         R1 4
       58 GETUPVAL                         R1 5
       59 JUMPIFNOT                        R1 ; [+6]
       60 GETUPVAL                         R1 5
       61 NAMECALL                         R1 R1 K16 ["Disconnect"]
       63 CALL                             R1 1 0
       64 LOADNIL                          R1
       65 SETUPVAL                         R1 5
       66 LOADK                            R3 K17 ["UserInputState"]
       67 NAMECALL                         R1 R0 K18 ["GetPropertyChangedSignal"]
       69 CALL                             R1 2 1
       70 NEWCLOSURE                       R3 P0
       71 CAPTURE                          VAL R0
       72 CAPTURE                          UPVAL U0
       73 CAPTURE                          UPVAL U1
       74 CAPTURE                          UPVAL U4
       75 CAPTURE                          UPVAL U5
       76 NAMECALL                         R1 R1 K19 ["Connect"]
       78 CALL                             R1 2 1
       79 SETUPVAL                         R1 5
       80 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R1 R2 ; [+3]
        6 GETUPVAL                         R1 0
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R1 R2 ; [+15]
        6 LOADB                            R1 0
        7 SETUPVAL                         R1 0
        8 LOADNIL                          R1
        9 SETUPVAL                         R1 1
       10 LOADNIL                          R1
       11 SETUPVAL                         R1 2
       12 GETUPVAL                         R1 3
       13 JUMPIFNOT                        R1 ; [+6]
       14 GETUPVAL                         R1 3
       15 NAMECALL                         R1 R1 K4 ["Disconnect"]
       17 CALL                             R1 1 0
       18 LOADNIL                          R1
       19 SETUPVAL                         R1 3
       20 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R1 R2 ; [+17]
        6 GETUPVAL                         R1 0
        7 JUMPIFNOT                        R1 ; [+14]
        8 LOADB                            R1 0
        9 SETUPVAL                         R1 0
       10 LOADNIL                          R1
       11 SETUPVAL                         R1 1
       12 LOADNIL                          R1
       13 SETUPVAL                         R1 2
       14 GETUPVAL                         R1 3
       15 JUMPIFNOT                        R1 ; [+6]
       16 GETUPVAL                         R1 3
       17 NAMECALL                         R1 R1 K4 ["Disconnect"]
       19 CALL                             R1 1 0
       20 LOADNIL                          R1
       21 SETUPVAL                         R1 3
       22 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R1 R2 K0 ["Visible"]
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["Disconnect"]
        5 CALL                             R1 1 0
        6 LOADNIL                          R1
        7 SETUPVAL                         R1 0
        8 GETUPVAL                         R1 1
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 NAMECALL                         R6 R5 K0 ["Disconnect"]
       14 CALL                             R6 1 0
       15 FORGLOOP                         R1 2 ; [-4]
       17 GETIMPORT                        R1 K3 [table.clear]
       19 GETUPVAL                         R2 1
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 2
       22 NAMECALL                         R1 R1 K4 ["Destroy"]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 LOADB                            R6 0
       10 LOADNIL                          R7
       11 NEWTABLE                         R8 0 0
       13 NEWTABLE                         R9 0 0
       15 LOADB                            R10 0
       16 SETTABLEKS                       R10 R0 K0 ["Visible"]
       18 NEWCLOSURE                       R10 P0
       19 CAPTURE                          REF R3
       20 CAPTURE                          VAL R0
       21 CAPTURE                          REF R4
       22 NEWCLOSURE                       R11 P1
       23 CAPTURE                          REF R7
       24 NEWCLOSURE                       R12 P2
       25 CAPTURE                          REF R6
       26 CAPTURE                          REF R4
       27 CAPTURE                          REF R5
       28 CAPTURE                          REF R7
       29 NEWCLOSURE                       R13 P3
       30 CAPTURE                          REF R6
       31 CAPTURE                          REF R4
       32 CAPTURE                          REF R5
       33 CAPTURE                          REF R3
       34 CAPTURE                          VAL R0
       35 MOVE                             R15 R8
       36 GETTABLEKS                       R16 R2 K1 ["InputBegan"]
       38 NEWCLOSURE                       R18 P4
       39 CAPTURE                          REF R6
       40 CAPTURE                          REF R4
       41 CAPTURE                          REF R3
       42 CAPTURE                          VAL R0
       43 CAPTURE                          REF R5
       44 CAPTURE                          REF R7
       45 NAMECALL                         R16 R16 K2 ["Connect"]
       47 CALL                             R16 2 -1
       48 FASTCALL                         TABLE_INSERT ; [+2]
       49 GETIMPORT                        R14 K5 [table.insert]
       51 CALL                             R14 -1 0
       52 MOVE                             R15 R8
       53 GETTABLEKS                       R16 R2 K6 ["InputChanged"]
       55 NEWCLOSURE                       R18 P5
       56 CAPTURE                          VAL R13
       57 NAMECALL                         R16 R16 K2 ["Connect"]
       59 CALL                             R16 2 -1
       60 FASTCALL                         TABLE_INSERT ; [+2]
       61 GETIMPORT                        R14 K5 [table.insert]
       63 CALL                             R14 -1 0
       64 MOVE                             R15 R8
       65 GETUPVAL                         R16 2
       66 GETTABLEKS                       R16 R16 K7 ["Heartbeat"]
       68 MOVE                             R18 R13
       69 NAMECALL                         R16 R16 K2 ["Connect"]
       71 CALL                             R16 2 -1
       72 FASTCALL                         TABLE_INSERT ; [+2]
       73 GETIMPORT                        R14 K5 [table.insert]
       75 CALL                             R14 -1 0
       76 MOVE                             R15 R8
       77 GETTABLEKS                       R16 R2 K8 ["InputEnded"]
       79 NEWCLOSURE                       R18 P6
       80 CAPTURE                          REF R6
       81 CAPTURE                          REF R4
       82 CAPTURE                          REF R5
       83 CAPTURE                          REF R7
       84 NAMECALL                         R16 R16 K2 ["Connect"]
       86 CALL                             R16 2 -1
       87 FASTCALL                         TABLE_INSERT ; [+2]
       88 GETIMPORT                        R14 K5 [table.insert]
       90 CALL                             R14 -1 0
       91 MOVE                             R15 R8
       92 GETUPVAL                         R16 3
       93 GETTABLEKS                       R16 R16 K8 ["InputEnded"]
       95 NEWCLOSURE                       R18 P7
       96 CAPTURE                          REF R6
       97 CAPTURE                          REF R4
       98 CAPTURE                          REF R5
       99 CAPTURE                          REF R7
      100 NAMECALL                         R16 R16 K2 ["Connect"]
      102 CALL                             R16 2 -1
      103 FASTCALL                         TABLE_INSERT ; [+2]
      104 GETIMPORT                        R14 K5 [table.insert]
      106 CALL                             R14 -1 0
      107 SETTABLEKS                       R1 R9 K9 ["body"]
      109 NEWCLOSURE                       R14 P8
      110 CAPTURE                          VAL R0
      111 SETTABLEKS                       R14 R9 K10 ["setVisible"]
      113 NEWCLOSURE                       R14 P9
      114 CAPTURE                          REF R7
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R0
      117 SETTABLEKS                       R14 R9 K11 ["destroy"]
      119 CLOSEUPVALS                      R3
      120 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["UserInputService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 NEWTABLE                         R2 1 0
       15 DUPCLOSURE                       R3 K5 [PROTO_0]
       16 DUPCLOSURE                       R4 K6 [PROTO_1]
       17 DUPCLOSURE                       R5 K7 [PROTO_2]
       18 DUPCLOSURE                       R6 K8 [PROTO_14]
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R4
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R6 R2 K9 ["create"]
       25 RETURN                           R2 1
