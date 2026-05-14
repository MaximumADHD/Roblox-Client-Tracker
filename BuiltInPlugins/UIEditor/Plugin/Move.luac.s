PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Parent"]
        2 JUMPIFNOT                        R2 ; [+10]
        3 MOVE                             R5 R1
        4 NAMECALL                         R3 R2 K1 ["IsA"]
        6 CALL                             R3 2 1
        7 JUMPIFNOT                        R3 ; [+3]
        8 GETTABLEKS                       R2 R2 K0 ["Parent"]
       10 JUMP                             ; [+1]
       11 RETURN                           R2 1
       12 JUMPBACK                         ; [-11]
       13 LOADNIL                          R3
       14 RETURN                           R3 1

PROTO_1:
        0 LOADN                            R3 1
        1 GETUPVAL                         R4 0
        2 LENGTH                           R1 R4
        3 LOADN                            R2 1
        4 FORNPREP                         R1
        5 GETUPVAL                         R6 0
        6 GETTABLE                         R5 R6 R3
        7 GETTABLEN                        R4 R5 1
        8 GETTABLEKS                       R6 R4 K0 ["Parent"]
       10 JUMPIFNOT                        R6 ; [+11]
       11 LOADK                            R9 K1 ["Folder"]
       12 NAMECALL                         R7 R6 K2 ["IsA"]
       14 CALL                             R7 2 1
       15 JUMPIFNOT                        R7 ; [+3]
       16 GETTABLEKS                       R6 R6 K0 ["Parent"]
       18 JUMP                             ; [+2]
       19 MOVE                             R5 R6
       20 JUMP                             ; [+2]
       21 JUMPBACK                         ; [-12]
       22 LOADNIL                          R5
       23 JUMPIFNOT                        R5 ; [+49]
       24 LOADK                            R8 K3 ["GuiBase2d"]
       25 NAMECALL                         R6 R5 K2 ["IsA"]
       27 CALL                             R6 2 1
       28 JUMPIFNOT                        R6 ; [+44]
       29 GETUPVAL                         R6 1
       30 GETUPVAL                         R10 0
       31 GETTABLE                         R9 R10 R3
       32 GETTABLEN                        R8 R9 3
       33 NAMECALL                         R6 R6 K4 ["isOnlyScaleUDim2"]
       35 CALL                             R6 2 1
       36 JUMPIF                           R6 ; [+13]
       37 GETUPVAL                         R7 1
       38 GETUPVAL                         R11 0
       39 GETTABLE                         R10 R11 R3
       40 GETTABLEN                        R9 R10 3
       41 NAMECALL                         R7 R7 K5 ["isOnlyOffsetUDim2"]
       43 CALL                             R7 2 1
       44 NOT                              R6 R7
       45 JUMPIFNOT                        R6 ; [+4]
       46 GETUPVAL                         R6 2
       47 NAMECALL                         R6 R6 K6 ["isScale"]
       49 CALL                             R6 1 1
       50 GETUPVAL                         R10 0
       51 GETTABLE                         R9 R10 R3
       52 GETTABLEN                        R8 R9 2
       53 ADD                              R7 R8 R0
       54 GETUPVAL                         R8 3
       55 MOVE                             R10 R6
       56 MOVE                             R11 R7
       57 GETTABLEKS                       R12 R4 K7 ["AbsoluteSize"]
       59 LOADK                            R15 K8 ["Position"]
       60 NAMECALL                         R13 R4 K9 ["GetStyled"]
       62 CALL                             R13 2 1
       63 MOVE                             R14 R5
       64 LOADK                            R17 K10 ["AnchorPoint"]
       65 NAMECALL                         R15 R4 K9 ["GetStyled"]
       67 CALL                             R15 2 -1
       68 NAMECALL                         R8 R8 K11 ["convertAbsolutePositionToScaleOrOffset"]
       70 CALL                             R8 -1 1
       71 SETTABLEKS                       R8 R4 K8 ["Position"]
       73 FORNLOOP                         R1
       74 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 SUB                              R2 R0 R3
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOTEQKN                    R0 K0 [1] ; [+7]
        2 GETIMPORT                        R1 K3 [Vector2.new]
        4 LOADN                            R2 0
        5 LOADN                            R3 255
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1
        8 JUMPIFNOTEQKN                    R0 K4 [2] ; [+7]
       10 GETIMPORT                        R1 K3 [Vector2.new]
       12 LOADN                            R2 0
       13 LOADN                            R3 1
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1
       16 JUMPIFNOTEQKN                    R0 K5 [3] ; [+7]
       18 GETIMPORT                        R1 K3 [Vector2.new]
       20 LOADN                            R2 255
       21 LOADN                            R3 0
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1
       24 JUMPIFNOTEQKN                    R0 K6 [4] ; [+7]
       26 GETIMPORT                        R1 K3 [Vector2.new]
       28 LOADN                            R2 1
       29 LOADN                            R3 0
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1
       32 GETIMPORT                        R1 K3 [Vector2.new]
       34 LOADN                            R2 0
       35 LOADN                            R3 255
       36 CALL                             R1 2 -1
       37 RETURN                           R1 -1

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R2 R0 K0 ["Parent"]
        3 JUMPIF                           R2 ; [+2]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 GETTABLEKS                       R2 R0 K0 ["Parent"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K1 ["IsA"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+3]
       13 GETTABLEKS                       R2 R0 K0 ["Parent"]
       15 RETURN                           R2 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R3 R0 K0 ["Parent"]
       19 MOVE                             R4 R1
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+12]
        1 GETTABLEKS                       R2 R0 K0 ["Parent"]
        3 JUMPIFNOT                        R2 ; [+9]
        4 GETTABLEKS                       R2 R0 K0 ["Parent"]
        6 JUMPIFNOTEQ                      R2 R1 ; [+3]
        8 LOADB                            R2 1
        9 RETURN                           R2 1
       10 GETTABLEKS                       R0 R0 K0 ["Parent"]
       12 JUMPBACK                         ; [-13]
       13 LOADB                            R2 0
       14 RETURN                           R2 1

PROTO_6:
        0 JUMPIFNOTEQ                      R0 R1 ; [+3]
        2 LOADN                            R2 0
        3 RETURN                           R2 1
        4 LOADN                            R2 0
        5 LOADK                            R5 K0 ["GuiObject"]
        6 NAMECALL                         R3 R0 K1 ["IsA"]
        8 CALL                             R3 2 1
        9 JUMPIFNOT                        R3 ; [+5]
       10 LOADK                            R5 K2 ["ZIndex"]
       11 NAMECALL                         R3 R0 K3 ["GetStyled"]
       13 CALL                             R3 2 1
       14 MOVE                             R2 R3
       15 NAMECALL                         R3 R0 K4 ["GetChildren"]
       17 CALL                             R3 1 1
       18 LOADN                            R6 1
       19 LENGTH                           R4 R3
       20 LOADN                            R5 1
       21 FORNPREP                         R4
       22 MOVE                             R8 R2
       23 GETGLOBAL                        R9 K5 ["getHighestZIndexOfSelfAndDescendants"]
       25 GETTABLE                         R10 R3 R6
       26 MOVE                             R11 R1
       27 CALL                             R9 2 -1
       28 FASTCALL                         MATH_MAX ; [+2]
       29 GETIMPORT                        R7 K8 [math.max]
       31 CALL                             R7 -1 1
       32 MOVE                             R2 R7
       33 FORNLOOP                         R4
       34 RETURN                           R2 1

PROTO_7:
        0 LOADK                            R4 K0 ["GuiObject"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+7]
        5 LOADK                            R5 K2 ["ZIndex"]
        6 NAMECALL                         R3 R0 K3 ["GetStyled"]
        8 CALL                             R3 2 1
        9 ADD                              R2 R3 R1
       10 SETTABLEKS                       R2 R0 K2 ["ZIndex"]
       12 NAMECALL                         R2 R0 K4 ["GetChildren"]
       14 CALL                             R2 1 1
       15 LOADN                            R5 1
       16 LENGTH                           R3 R2
       17 LOADN                            R4 1
       18 FORNPREP                         R3
       19 GETGLOBAL                        R6 K5 ["incrementZIndexOfSelfAndDescendantsBy"]
       21 GETTABLE                         R7 R2 R5
       22 MOVE                             R8 R1
       23 CALL                             R6 2 0
       24 FORNLOOP                         R3
       25 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_9:
        0 NEWTABLE                         R2 0 0
        2 SETUPVAL                         R2 0
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R2 R2 K0 ["getFilteredSelectionCommonAncestors"]
        6 CALL                             R2 1 1
        7 LOADN                            R5 1
        8 LENGTH                           R3 R2
        9 LOADN                            R4 1
       10 FORNPREP                         R3
       11 GETUPVAL                         R7 0
       12 NEWTABLE                         R8 0 3
       14 GETTABLE                         R9 R2 R5
       15 GETTABLE                         R10 R2 R5
       16 GETTABLEKS                       R10 R10 K1 ["AbsolutePosition"]
       18 GETTABLE                         R11 R2 R5
       19 LOADK                            R13 K2 ["Position"]
       20 NAMECALL                         R11 R11 K3 ["GetStyled"]
       22 CALL                             R11 2 -1
       23 SETLIST                          R8 R9 -1 [1]
       25 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       27 GETIMPORT                        R6 K6 [table.insert]
       29 CALL                             R6 2 0
       30 FORNLOOP                         R3
       31 GETUPVAL                         R4 0
       32 LENGTH                           R3 R4
       33 JUMPIFNOTEQKN                    R3 K7 [0] ; [+2]
       35 RETURN                           R0 0
       36 SETUPVAL                         R1 2
       37 LOADB                            R3 1
       38 SETUPVAL                         R3 3
       39 LOADB                            R3 0
       40 SETUPVAL                         R3 4
       41 GETUPVAL                         R3 6
       42 MOVE                             R5 R2
       43 NAMECALL                         R3 R3 K8 ["getExtentsFromGuis"]
       45 CALL                             R3 2 1
       46 SETUPVAL                         R3 5
       47 GETUPVAL                         R3 7
       48 NAMECALL                         R3 R3 K9 ["setToMoveIcon"]
       50 CALL                             R3 1 0
       51 GETUPVAL                         R3 8
       52 NAMECALL                         R3 R3 K10 ["createSelectionAdorns"]
       54 CALL                             R3 1 0
       55 GETUPVAL                         R3 9
       56 MOVE                             R5 R1
       57 NAMECALL                         R3 R3 K11 ["onMoveBegan"]
       59 CALL                             R3 2 0
       60 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+10]
        2 GETUPVAL                         R2 1
        3 LOADK                            R4 K0 ["Move"]
        4 NAMECALL                         R2 R2 K1 ["reportEvent"]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 2
        8 LOADK                            R4 K2 ["Translate Objects (better tt needed)"]
        9 NAMECALL                         R2 R2 K3 ["SetWaypoint"]
       11 CALL                             R2 2 0
       12 LOADB                            R2 0
       13 SETUPVAL                         R2 3
       14 LOADNIL                          R2
       15 SETUPVAL                         R2 4
       16 GETUPVAL                         R2 5
       17 NAMECALL                         R2 R2 K4 ["hideSnappingLines"]
       19 CALL                             R2 1 0
       20 LOADB                            R2 0
       21 SETUPVAL                         R2 0
       22 GETUPVAL                         R2 6
       23 NAMECALL                         R2 R2 K5 ["setToDefaultIcon"]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 5
       27 NAMECALL                         R2 R2 K6 ["deleteSelectionAdorns"]
       29 CALL                             R2 1 0
       30 GETUPVAL                         R2 7
       31 MOVE                             R4 R1
       32 NAMECALL                         R2 R2 K7 ["onMoveEnded"]
       34 CALL                             R2 2 0
       35 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+10]
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R5 2
        4 SUB                              R4 R1 R5
        5 NAMECALL                         R2 R2 K0 ["manhattanDistance"]
        7 CALL                             R2 2 1
        8 LOADN                            R3 3
        9 JUMPIFNOTLE                      R2 R3 ; [+2]
       11 RETURN                           R0 0
       12 LOADB                            R2 1
       13 SETUPVAL                         R2 0
       14 GETUPVAL                         R2 3
       15 NAMECALL                         R2 R2 K1 ["hideSnappingLines"]
       17 CALL                             R2 1 0
       18 GETUPVAL                         R2 4
       19 GETTABLEKS                       R2 R2 K2 ["MoveXY"]
       21 GETUPVAL                         R3 5
       22 GETIMPORT                        R5 K6 [Enum.KeyCode.LeftShift]
       24 NAMECALL                         R3 R3 K7 ["IsKeyDown"]
       26 CALL                             R3 2 1
       27 JUMPIF                           R3 ; [+7]
       28 GETUPVAL                         R3 5
       29 GETIMPORT                        R5 K9 [Enum.KeyCode.RightShift]
       31 NAMECALL                         R3 R3 K7 ["IsKeyDown"]
       33 CALL                             R3 2 1
       34 JUMPIFNOT                        R3 ; [+41]
       35 GETTABLEKS                       R5 R1 K10 ["Y"]
       37 GETUPVAL                         R6 2
       38 GETTABLEKS                       R6 R6 K10 ["Y"]
       40 SUB                              R4 R5 R6
       41 FASTCALL1                        MATH_ABS R4 ; [+2]
       42 GETIMPORT                        R3 K13 [math.abs]
       44 CALL                             R3 1 1
       45 GETTABLEKS                       R6 R1 K14 ["X"]
       47 GETUPVAL                         R7 2
       48 GETTABLEKS                       R7 R7 K14 ["X"]
       50 SUB                              R5 R6 R7
       51 FASTCALL1                        MATH_ABS R5 ; [+2]
       52 GETIMPORT                        R4 K13 [math.abs]
       54 CALL                             R4 1 1
       55 JUMPIFNOTLT                      R3 R4 ; [+11]
       57 GETIMPORT                        R5 K17 [Vector2.new]
       59 GETTABLEKS                       R6 R1 K14 ["X"]
       61 GETUPVAL                         R7 2
       62 GETTABLEKS                       R7 R7 K10 ["Y"]
       64 CALL                             R5 2 1
       65 MOVE                             R1 R5
       66 JUMP                             ; [+9]
       67 GETIMPORT                        R5 K17 [Vector2.new]
       69 GETUPVAL                         R6 2
       70 GETTABLEKS                       R6 R6 K14 ["X"]
       72 GETTABLEKS                       R7 R1 K10 ["Y"]
       74 CALL                             R5 2 1
       75 MOVE                             R1 R5
       76 GETUPVAL                         R3 6
       77 GETUPVAL                         R5 7
       78 GETUPVAL                         R7 2
       79 SUB                              R6 R1 R7
       80 NAMECALL                         R3 R3 K18 ["translate"]
       82 CALL                             R3 3 1
       83 LOADNIL                          R4
       84 GETUPVAL                         R5 8
       85 MOVE                             R7 R3
       86 GETUPVAL                         R8 4
       87 GETTABLEKS                       R8 R8 K2 ["MoveXY"]
       89 NAMECALL                         R5 R5 K19 ["snapExtents"]
       91 CALL                             R5 3 2
       92 MOVE                             R3 R5
       93 MOVE                             R4 R6
       94 LOADN                            R7 1
       95 LENGTH                           R5 R4
       96 LOADN                            R6 1
       97 FORNPREP                         R5
       98 GETUPVAL                         R8 3
       99 GETTABLE                         R10 R4 R7
      100 NAMECALL                         R8 R8 K20 ["showSnappingLine"]
      102 CALL                             R8 2 0
      103 FORNLOOP                         R5
      104 LOADNIL                          R5
      105 GETUPVAL                         R6 1
      106 GETTABLEKS                       R9 R3 K21 ["TopLeft"]
      108 GETUPVAL                         R10 7
      109 GETTABLEKS                       R10 R10 K21 ["TopLeft"]
      111 SUB                              R8 R9 R10
      112 NAMECALL                         R6 R6 K22 ["floorVector2"]
      114 CALL                             R6 2 1
      115 MOVE                             R5 R6
      116 GETUPVAL                         R7 2
      117 ADD                              R6 R7 R5
      118 GETUPVAL                         R7 9
      119 GETUPVAL                         R9 2
      120 SUB                              R8 R6 R9
      121 CALL                             R7 1 0
      122 GETUPVAL                         R6 3
      123 MOVE                             R8 R3
      124 NAMECALL                         R6 R6 K23 ["updateSelectionAdorns"]
      126 CALL                             R6 2 0
      127 GETUPVAL                         R6 10
      128 MOVE                             R8 R1
      129 NAMECALL                         R6 R6 K24 ["onMoveChanged"]
      131 CALL                             R6 2 0
      132 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["hasFilteredSelection"]
        3 CALL                             R1 1 1
        4 JUMPIF                           R1 ; [+9]
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K1 ["hideSelection"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 NAMECALL                         R1 R1 K2 ["setToDefaultIcon"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 1
       15 NAMECALL                         R1 R1 K3 ["updateSelectionPosition"]
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 1
       19 NAMECALL                         R1 R1 K4 ["showSelection"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 2
       23 NAMECALL                         R1 R1 K5 ["setToMoveIcon"]
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R4 K2 [Vector2.new]
        3 LOADN                            R5 0
        4 LOADN                            R6 0
        5 CALL                             R4 2 -1
        6 NAMECALL                         R2 R2 K3 ["startDrag"]
        8 CALL                             R2 -1 0
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R1
       12 CALL                             R3 1 -1
       13 CALL                             R2 -1 0
       14 GETUPVAL                         R2 0
       15 MOVE                             R4 R1
       16 NAMECALL                         R2 R2 K4 ["finishDrag"]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_14:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["AdornmentModule"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["Analytics"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["Extents2D"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R4 K3 [script]
       32 GETTABLEKS                       R4 R4 K4 ["Parent"]
       34 GETTABLEKS                       R4 R4 K8 ["GlobalValues"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K1 [require]
       39 GETIMPORT                        R5 K3 [script]
       41 GETTABLEKS                       R5 R5 K4 ["Parent"]
       43 GETTABLEKS                       R5 R5 K9 ["MouseIconManager"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K1 [require]
       48 GETIMPORT                        R6 K3 [script]
       50 GETTABLEKS                       R6 R6 K4 ["Parent"]
       52 GETTABLEKS                       R6 R6 K10 ["SelectionManager"]
       54 CALL                             R5 1 1
       55 GETIMPORT                        R6 K1 [require]
       57 GETIMPORT                        R7 K3 [script]
       59 GETTABLEKS                       R7 R7 K4 ["Parent"]
       61 GETTABLEKS                       R7 R7 K11 ["SnappingPointManager"]
       63 CALL                             R6 1 1
       64 GETIMPORT                        R7 K1 [require]
       66 GETIMPORT                        R8 K3 [script]
       68 GETTABLEKS                       R8 R8 K4 ["Parent"]
       70 GETTABLEKS                       R8 R8 K12 ["Utility"]
       72 CALL                             R7 1 1
       73 GETIMPORT                        R8 K1 [require]
       75 GETIMPORT                        R9 K3 [script]
       77 GETTABLEKS                       R9 R9 K4 ["Parent"]
       79 GETTABLEKS                       R9 R9 K13 ["Convert"]
       81 CALL                             R8 1 1
       82 GETIMPORT                        R9 K1 [require]
       84 GETIMPORT                        R10 K3 [script]
       86 GETTABLEKS                       R10 R10 K4 ["Parent"]
       88 GETTABLEKS                       R10 R10 K14 ["Enum"]
       90 GETTABLEKS                       R10 R10 K15 ["SnappingType"]
       92 CALL                             R9 1 1
       93 GETIMPORT                        R10 K17 [game]
       95 LOADK                            R12 K18 ["UserInputService"]
       96 NAMECALL                         R10 R10 K19 ["GetService"]
       98 CALL                             R10 2 1
       99 GETIMPORT                        R11 K17 [game]
      101 LOADK                            R13 K20 ["ChangeHistoryService"]
      102 NAMECALL                         R11 R11 K19 ["GetService"]
      104 CALL                             R11 2 1
      105 LOADNIL                          R12
      106 LOADNIL                          R13
      107 LOADB                            R14 0
      108 LOADB                            R15 0
      109 NEWTABLE                         R16 0 0
      111 LOADNIL                          R17
      112 DUPCLOSURE                       R18 K21 [PROTO_0]
      113 NEWCLOSURE                       R19 P1
      114 CAPTURE                          REF R16
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R8
      118 NEWCLOSURE                       R20 P2
      119 CAPTURE                          VAL R19
      120 CAPTURE                          REF R13
      121 DUPCLOSURE                       R21 K22 [PROTO_3]
      122 DUPCLOSURE                       R22 K23 [PROTO_4]
      123 CAPTURE                          VAL R22
      124 DUPCLOSURE                       R23 K24 [PROTO_5]
      125 DUPCLOSURE                       R24 K25 [PROTO_6]
      126 SETGLOBAL                        R24 K26 ["getHighestZIndexOfSelfAndDescendants"]
      128 DUPCLOSURE                       R24 K27 [PROTO_7]
      129 SETGLOBAL                        R24 K28 ["incrementZIndexOfSelfAndDescendantsBy"]
      131 NEWTABLE                         R24 16 0
      133 NEWCLOSURE                       R25 P8
      134 CAPTURE                          REF R14
      135 SETTABLEKS                       R25 R24 K29 ["isDragInProgress"]
      137 NEWCLOSURE                       R25 P9
      138 CAPTURE                          REF R16
      139 CAPTURE                          VAL R5
      140 CAPTURE                          REF R13
      141 CAPTURE                          REF R14
      142 CAPTURE                          REF R15
      143 CAPTURE                          REF R17
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R4
      146 CAPTURE                          VAL R0
      147 CAPTURE                          REF R12
      148 SETTABLEKS                       R25 R24 K30 ["startDrag"]
      150 NEWCLOSURE                       R25 P10
      151 CAPTURE                          REF R15
      152 CAPTURE                          VAL R1
      153 CAPTURE                          VAL R11
      154 CAPTURE                          REF R14
      155 CAPTURE                          REF R13
      156 CAPTURE                          VAL R0
      157 CAPTURE                          VAL R4
      158 CAPTURE                          REF R12
      159 SETTABLEKS                       R25 R24 K31 ["finishDrag"]
      161 NEWCLOSURE                       R25 P11
      162 CAPTURE                          REF R15
      163 CAPTURE                          VAL R7
      164 CAPTURE                          REF R13
      165 CAPTURE                          VAL R0
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R2
      169 CAPTURE                          REF R17
      170 CAPTURE                          VAL R6
      171 CAPTURE                          VAL R19
      172 CAPTURE                          REF R12
      173 SETTABLEKS                       R25 R24 K32 ["updateDrag"]
      175 DUPCLOSURE                       R25 K33 [PROTO_12]
      176 CAPTURE                          VAL R5
      177 CAPTURE                          VAL R0
      178 CAPTURE                          VAL R4
      179 SETTABLEKS                       R25 R24 K34 ["onSelectionChanged"]
      181 DUPCLOSURE                       R25 K35 [PROTO_13]
      182 CAPTURE                          VAL R24
      183 CAPTURE                          VAL R19
      184 CAPTURE                          VAL R21
      185 SETTABLEKS                       R25 R24 K36 ["bump"]
      187 NEWCLOSURE                       R25 P14
      188 CAPTURE                          REF R12
      189 SETTABLEKS                       R25 R24 K37 ["setActionMediator"]
      191 LOADN                            R25 1
      192 SETTABLEKS                       R25 R24 K38 ["UP"]
      194 LOADN                            R25 2
      195 SETTABLEKS                       R25 R24 K39 ["DOWN"]
      197 LOADN                            R25 3
      198 SETTABLEKS                       R25 R24 K40 ["LEFT"]
      200 LOADN                            R25 4
      201 SETTABLEKS                       R25 R24 K41 ["RIGHT"]
      203 CLOSEUPVALS                      R12
      204 RETURN                           R24 1
