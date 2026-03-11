PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteRotation"]
        2 JUMPIFEQKN                       R1 K1 [0] ; [+6]
        4 GETTABLEKS                       R1 R0 K2 ["AbsolutePosition"]
        6 GETTABLEKS                       R2 R0 K3 ["AbsoluteSize"]
        8 RETURN                           R1 2
        9 GETTABLEKS                       R1 R0 K2 ["AbsolutePosition"]
       11 GETTABLEKS                       R3 R0 K3 ["AbsoluteSize"]
       13 ADD                              R2 R3 R1
       14 LOADK                            R5 K4 ["GuiObject"]
       15 NAMECALL                         R3 R0 K5 ["FindFirstAncestorWhichIsA"]
       17 CALL                             R3 2 1
       18 JUMPIFNOT                        R3 ; [+58]
       19 GETTABLEKS                       R4 R3 K6 ["ClipsDescendants"]
       21 JUMPIFNOT                        R4 ; [+49]
       22 GETTABLEKS                       R4 R3 K2 ["AbsolutePosition"]
       24 GETTABLEKS                       R6 R3 K3 ["AbsoluteSize"]
       26 ADD                              R5 R6 R4
       27 GETIMPORT                        R6 K9 [Vector2.new]
       29 GETTABLEKS                       R8 R1 K10 ["X"]
       31 GETTABLEKS                       R9 R4 K10 ["X"]
       33 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       35 GETIMPORT                        R7 K13 [math.max]
       37 CALL                             R7 2 1
       38 GETTABLEKS                       R9 R1 K14 ["Y"]
       40 GETTABLEKS                       R10 R4 K14 ["Y"]
       42 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       44 GETIMPORT                        R8 K13 [math.max]
       46 CALL                             R8 2 1
       47 CALL                             R6 2 1
       48 MOVE                             R1 R6
       49 GETIMPORT                        R6 K9 [Vector2.new]
       51 GETTABLEKS                       R8 R2 K10 ["X"]
       53 GETTABLEKS                       R9 R5 K10 ["X"]
       55 FASTCALL2                        MATH_MIN R8 R9 ; [+3]
       57 GETIMPORT                        R7 K16 [math.min]
       59 CALL                             R7 2 1
       60 GETTABLEKS                       R9 R2 K14 ["Y"]
       62 GETTABLEKS                       R10 R5 K14 ["Y"]
       64 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       66 GETIMPORT                        R8 K16 [math.min]
       68 CALL                             R8 2 1
       69 CALL                             R6 2 1
       70 MOVE                             R2 R6
       71 LOADK                            R6 K4 ["GuiObject"]
       72 NAMECALL                         R4 R3 K5 ["FindFirstAncestorWhichIsA"]
       74 CALL                             R4 2 1
       75 MOVE                             R3 R4
       76 JUMPBACK                         ; [-59]
       77 MOVE                             R4 R1
       78 SUB                              R5 R2 R1
       79 RETURN                           R4 2

PROTO_1:
        0 JUMPIFNOT                        R1 ; [+5]
        1 LOADK                            R4 K0 ["GuiBase2d"]
        2 NAMECALL                         R2 R1 K1 ["IsA"]
        4 CALL                             R2 2 1
        5 JUMPIF                           R2 ; [+2]
        6 LOADB                            R2 0
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R1
       10 CALL                             R2 1 2
       11 MOVE                             R4 R3
       12 GETIMPORT                        R5 K4 [Vector2.new]
       14 LOADN                            R7 5
       15 GETTABLEKS                       R8 R4 K5 ["X"]
       17 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       19 GETIMPORT                        R6 K8 [math.max]
       21 CALL                             R6 2 1
       22 LOADN                            R8 5
       23 GETTABLEKS                       R9 R4 K9 ["Y"]
       25 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       27 GETIMPORT                        R7 K8 [math.max]
       29 CALL                             R7 2 1
       30 CALL                             R5 2 1
       31 MOVE                             R4 R5
       32 MULK                             R7 R3 K10 [0.5]
       33 ADD                              R6 R2 R7
       34 MULK                             R7 R4 K10 [0.5]
       35 SUB                              R5 R6 R7
       36 LOADB                            R6 0
       37 GETTABLEKS                       R7 R0 K11 ["x"]
       39 GETTABLEKS                       R8 R5 K11 ["x"]
       41 JUMPIFNOTLE                      R8 R7 ; [+29]
       43 LOADB                            R6 0
       44 GETTABLEKS                       R7 R0 K11 ["x"]
       46 GETTABLEKS                       R9 R5 K11 ["x"]
       48 GETTABLEKS                       R10 R4 K11 ["x"]
       50 ADD                              R8 R9 R10
       51 JUMPIFNOTLE                      R7 R8 ; [+19]
       53 LOADB                            R6 0
       54 GETTABLEKS                       R7 R0 K12 ["y"]
       56 GETTABLEKS                       R8 R5 K12 ["y"]
       58 JUMPIFNOTLE                      R8 R7 ; [+12]
       60 GETTABLEKS                       R7 R0 K12 ["y"]
       62 GETTABLEKS                       R9 R5 K12 ["y"]
       64 GETTABLEKS                       R10 R4 K12 ["y"]
       66 ADD                              R8 R9 R10
       67 JUMPIFLE                         R7 R8 ; [+2]
       69 LOADB                            R6 0 +1
       70 LOADB                            R6 1
       71 RETURN                           R6 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        4 CALL                             R2 1 1
        5 MOVE                             R3 R2
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 LOADK                            R10 K1 ["GuiBase2d"]
       10 NAMECALL                         R8 R7 K2 ["IsA"]
       12 CALL                             R8 2 1
       13 JUMPIF                           R8 ; [+5]
       14 LOADK                            R10 K3 ["Folder"]
       15 NAMECALL                         R8 R7 K2 ["IsA"]
       17 CALL                             R8 2 1
       18 JUMPIFNOT                        R8 ; [+13]
       19 GETUPVAL                         R8 0
       20 MOVE                             R10 R7
       21 NAMECALL                         R8 R8 K4 ["isVisible"]
       23 CALL                             R8 2 1
       24 JUMPIFNOT                        R8 ; [+7]
       25 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       27 MOVE                             R9 R1
       28 MOVE                             R10 R7
       29 GETIMPORT                        R8 K7 [table.insert]
       31 CALL                             R8 2 0
       32 FORGLOOP                         R3 2 ; [-24]
       34 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R4 K0 ["ZIndex"]
        1 NAMECALL                         R2 R0 K1 ["GetStyled"]
        3 CALL                             R2 2 1
        4 LOADK                            R5 K0 ["ZIndex"]
        5 NAMECALL                         R3 R1 K1 ["GetStyled"]
        7 CALL                             R3 2 1
        8 JUMPIFNOTEQ                      R2 R3 ; [+10]
       10 GETUPVAL                         R6 0
       11 GETTABLE                         R5 R6 R0
       12 GETUPVAL                         R7 0
       13 GETTABLE                         R6 R7 R1
       14 JUMPIFLT                         R5 R6 ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 RETURN                           R4 1
       19 JUMPIFLT                         R2 R3 ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 LOADN                            R5 1
        6 LENGTH                           R3 R1
        7 LOADN                            R4 1
        8 FORNPREP                         R3
        9 GETTABLE                         R6 R1 R5
       10 SETTABLE                         R5 R2 R6
       11 FORNLOOP                         R3
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R2
       14 GETIMPORT                        R4 K2 [table.sort]
       16 MOVE                             R5 R1
       17 MOVE                             R6 R3
       18 CALL                             R4 2 0
       19 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StarterGui"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NAMECALL                         R1 R0 K4 ["GetChildren"]
        8 CALL                             R1 1 1
        9 NEWTABLE                         R2 0 0
       11 SETUPVAL                         R2 0
       12 LOADN                            R4 1
       13 LENGTH                           R2 R1
       14 LOADN                            R3 1
       15 FORNPREP                         R2
       16 GETTABLE                         R5 R1 R4
       17 LOADK                            R7 K5 ["ScreenGui"]
       18 NAMECALL                         R5 R5 K6 ["IsA"]
       20 CALL                             R5 2 1
       21 JUMPIF                           R5 ; [+6]
       22 GETTABLE                         R5 R1 R4
       23 LOADK                            R7 K7 ["Folder"]
       24 NAMECALL                         R5 R5 K6 ["IsA"]
       26 CALL                             R5 2 1
       27 JUMPIFNOT                        R5 ; [+20]
       28 GETUPVAL                         R5 1
       29 GETTABLE                         R6 R1 R4
       30 CALL                             R5 1 1
       31 LOADN                            R8 1
       32 LENGTH                           R6 R5
       33 LOADN                            R7 1
       34 FORNPREP                         R6
       35 GETUPVAL                         R10 0
       36 GETTABLE                         R11 R5 R8
       37 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
       39 GETIMPORT                        R9 K10 [table.insert]
       41 CALL                             R9 2 0
       42 GETUPVAL                         R9 2
       43 GETTABLE                         R10 R5 R8
       44 GETUPVAL                         R12 0
       45 LENGTH                           R11 R12
       46 SETTABLE                         R11 R9 R10
       47 FORNLOOP                         R6
       48 FORNLOOP                         R2
       49 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R4 R0 K0 ["X"]
        5 GETTABLEKS                       R5 R0 K1 ["Y"]
        7 NAMECALL                         R2 R2 K2 ["GetGuiObjectsAtPosition"]
        9 CALL                             R2 3 1
       10 LOADN                            R5 1
       11 LENGTH                           R3 R2
       12 LOADN                            R4 1
       13 FORNPREP                         R3
       14 GETUPVAL                         R6 1
       15 GETTABLE                         R8 R2 R5
       16 NAMECALL                         R6 R6 K3 ["isVisible"]
       18 CALL                             R6 2 1
       19 JUMPIFNOT                        R6 ; [+7]
       20 GETTABLE                         R8 R2 R5
       21 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
       23 MOVE                             R7 R1
       24 GETIMPORT                        R6 K6 [table.insert]
       26 CALL                             R6 2 0
       27 FORNLOOP                         R3
       28 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEN                        R2 R1 1
        6 GETUPVAL                         R3 2
        7 GETIMPORT                        R5 K3 [Enum.KeyCode.LeftAlt]
        9 NAMECALL                         R3 R3 K4 ["IsKeyDown"]
       11 CALL                             R3 2 1
       12 JUMPIF                           R3 ; [+7]
       13 GETUPVAL                         R3 2
       14 GETIMPORT                        R5 K6 [Enum.KeyCode.RightAlt]
       16 NAMECALL                         R3 R3 K4 ["IsKeyDown"]
       18 CALL                             R3 2 1
       19 JUMPIFNOT                        R3 ; [+13]
       20 GETUPVAL                         R3 3
       21 GETUPVAL                         R5 4
       22 MOVE                             R6 R1
       23 NAMECALL                         R3 R3 K7 ["findItemInTable"]
       25 CALL                             R3 3 1
       26 JUMPIFEQKN                       R3 K8 [0] ; [+6]
       28 LENGTH                           R4 R1
       29 JUMPIFEQ                         R3 R4 ; [+3]
       31 ADDK                             R4 R3 K9 [1]
       32 GETTABLE                         R2 R1 R4
       33 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["findItemInTable"]
        5 CALL                             R2 3 1
        6 LOADN                            R3 0
        7 JUMPIFNOTLT                      R3 R2 ; [+8]
        9 GETIMPORT                        R3 K3 [table.remove]
       11 MOVE                             R4 R1
       12 MOVE                             R5 R2
       13 CALL                             R3 2 0
       14 LOADB                            R3 0
       15 RETURN                           R3 1
       16 FASTCALL2                        TABLE_INSERT R1 R0 ; [+5]
       18 MOVE                             R4 R1
       19 MOVE                             R5 R0
       20 GETIMPORT                        R3 K5 [table.insert]
       22 CALL                             R3 2 0
       23 LOADB                            R3 1
       24 RETURN                           R3 1

PROTO_9:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 GETUPVAL                         R3 0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 SETTABLE                         R6 R1 R5
        8 FORGLOOP                         R2 2 [inext] ; [-2]
       10 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 NAMECALL                         R3 R3 K0 ["getRawSelection"]
        6 CALL                             R3 1 1
        7 NEWTABLE                         R4 0 1
        9 FASTCALL1                        TABLE_UNPACK R3 ; [+3]
       10 MOVE                             R6 R3
       11 GETIMPORT                        R5 K2 [unpack]
       13 CALL                             R5 1 -1
       14 SETLIST                          R4 R5 -1 [1]
       16 LOADB                            R5 0
       17 JUMPIFNOT                        R2 ; [+82]
       18 GETUPVAL                         R6 2
       19 GETIMPORT                        R8 K6 [Enum.KeyCode.LeftControl]
       21 NAMECALL                         R6 R6 K7 ["IsKeyDown"]
       23 CALL                             R6 2 1
       24 JUMPIF                           R6 ; [+21]
       25 GETUPVAL                         R6 2
       26 GETIMPORT                        R8 K9 [Enum.KeyCode.RightControl]
       28 NAMECALL                         R6 R6 K7 ["IsKeyDown"]
       30 CALL                             R6 2 1
       31 JUMPIF                           R6 ; [+14]
       32 GETUPVAL                         R6 2
       33 GETIMPORT                        R8 K11 [Enum.KeyCode.LeftShift]
       35 NAMECALL                         R6 R6 K7 ["IsKeyDown"]
       37 CALL                             R6 2 1
       38 JUMPIF                           R6 ; [+7]
       39 GETUPVAL                         R6 2
       40 GETIMPORT                        R8 K13 [Enum.KeyCode.RightShift]
       42 NAMECALL                         R6 R6 K7 ["IsKeyDown"]
       44 CALL                             R6 2 1
       45 JUMPIFNOT                        R6 ; [+39]
       46 MOVE                             R7 R4
       47 GETUPVAL                         R8 3
       48 MOVE                             R10 R2
       49 MOVE                             R11 R7
       50 NAMECALL                         R8 R8 K14 ["findItemInTable"]
       52 CALL                             R8 3 1
       53 LOADN                            R9 0
       54 JUMPIFNOTLT                      R9 R8 ; [+8]
       56 GETIMPORT                        R9 K17 [table.remove]
       58 MOVE                             R10 R7
       59 MOVE                             R11 R8
       60 CALL                             R9 2 0
       61 LOADB                            R6 0
       62 JUMP                             ; [+8]
       63 FASTCALL2                        TABLE_INSERT R7 R2 ; [+5]
       65 MOVE                             R10 R7
       66 MOVE                             R11 R2
       67 GETIMPORT                        R9 K19 [table.insert]
       69 CALL                             R9 2 0
       70 LOADB                            R6 1
       71 JUMPIFNOT                        R6 ; [+6]
       72 GETUPVAL                         R6 4
       73 LOADK                            R8 K20 ["AddToSelection"]
       74 NAMECALL                         R6 R6 K21 ["reportEvent"]
       76 CALL                             R6 2 0
       77 JUMP                             ; [+5]
       78 GETUPVAL                         R6 4
       79 LOADK                            R8 K22 ["RemoveFromSelection"]
       80 NAMECALL                         R6 R6 K21 ["reportEvent"]
       82 CALL                             R6 2 0
       83 LOADB                            R5 1
       84 JUMP                             ; [+45]
       85 GETUPVAL                         R6 3
       86 MOVE                             R8 R2
       87 MOVE                             R9 R4
       88 NAMECALL                         R6 R6 K14 ["findItemInTable"]
       90 CALL                             R6 3 1
       91 JUMPIFNOTEQKN                    R6 K23 [0] ; [+38]
       93 NEWTABLE                         R6 0 1
       95 MOVE                             R7 R2
       96 SETLIST                          R6 R7 1 [1]
       98 MOVE                             R4 R6
       99 JUMP                             ; [+30]
      100 GETUPVAL                         R6 2
      101 GETIMPORT                        R8 K11 [Enum.KeyCode.LeftShift]
      103 NAMECALL                         R6 R6 K7 ["IsKeyDown"]
      105 CALL                             R6 2 1
      106 JUMPIF                           R6 ; [+7]
      107 GETUPVAL                         R6 2
      108 GETIMPORT                        R8 K13 [Enum.KeyCode.RightShift]
      110 NAMECALL                         R6 R6 K7 ["IsKeyDown"]
      112 CALL                             R6 2 1
      113 JUMPIFNOT                        R6 ; [+2]
      114 LOADNIL                          R6
      115 RETURN                           R6 1
      116 GETUPVAL                         R6 3
      117 MOVE                             R8 R2
      118 MOVE                             R9 R4
      119 NAMECALL                         R6 R6 K14 ["findItemInTable"]
      121 CALL                             R6 3 1
      122 JUMPIFNOTEQKN                    R6 K23 [0] ; [+7]
      124 NEWTABLE                         R6 0 1
      126 MOVE                             R7 R2
      127 SETLIST                          R6 R7 1 [1]
      129 MOVE                             R4 R6
      130 SETUPVAL                         R2 5
      131 GETUPVAL                         R6 1
      132 MOVE                             R8 R4
      133 NAMECALL                         R6 R6 K24 ["setSelection"]
      135 CALL                             R6 2 1
      136 JUMPIFNOT                        R6 ; [+17]
      137 JUMPIF                           R5 ; [+16]
      138 GETUPVAL                         R6 1
      139 NAMECALL                         R6 R6 K25 ["hasFilteredSelection"]
      141 CALL                             R6 1 1
      142 JUMPIFNOT                        R6 ; [+6]
      143 GETUPVAL                         R6 4
      144 LOADK                            R8 K26 ["Select"]
      145 NAMECALL                         R6 R6 K21 ["reportEvent"]
      147 CALL                             R6 2 0
      148 JUMP                             ; [+5]
      149 GETUPVAL                         R6 4
      150 LOADK                            R8 K27 ["Deselect"]
      151 NAMECALL                         R6 R6 K21 ["reportEvent"]
      153 CALL                             R6 2 0
      154 GETUPVAL                         R6 5
      155 RETURN                           R6 1

PROTO_13:
        0 GETIMPORT                        R3 K2 [Vector2.new]
        2 GETTABLEKS                       R5 R1 K3 ["X"]
        4 GETTABLEKS                       R6 R2 K3 ["X"]
        6 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
        8 GETIMPORT                        R4 K6 [math.min]
       10 CALL                             R4 2 1
       11 GETTABLEKS                       R6 R1 K7 ["Y"]
       13 GETTABLEKS                       R7 R2 K7 ["Y"]
       15 FASTCALL2                        MATH_MIN R6 R7 ; [+3]
       17 GETIMPORT                        R5 K6 [math.min]
       19 CALL                             R5 2 1
       20 CALL                             R3 2 1
       21 GETIMPORT                        R4 K2 [Vector2.new]
       23 GETTABLEKS                       R6 R1 K3 ["X"]
       25 GETTABLEKS                       R7 R2 K3 ["X"]
       27 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       29 GETIMPORT                        R5 K9 [math.max]
       31 CALL                             R5 2 1
       32 GETTABLEKS                       R7 R1 K7 ["Y"]
       34 GETTABLEKS                       R8 R2 K7 ["Y"]
       36 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       38 GETIMPORT                        R6 K9 [math.max]
       40 CALL                             R6 2 1
       41 CALL                             R4 2 1
       42 NEWTABLE                         R5 0 0
       44 LOADN                            R8 1
       45 GETUPVAL                         R9 0
       46 LENGTH                           R6 R9
       47 LOADN                            R7 1
       48 FORNPREP                         R6
       49 GETUPVAL                         R12 0
       50 GETTABLE                         R11 R12 R8
       51 GETTABLEKS                       R10 R11 K10 ["AbsolutePosition"]
       53 GETTABLEKS                       R9 R10 K3 ["X"]
       55 GETTABLEKS                       R10 R3 K3 ["X"]
       57 JUMPIFNOTLE                      R10 R9 ; [+53]
       59 GETUPVAL                         R12 0
       60 GETTABLE                         R11 R12 R8
       61 GETTABLEKS                       R10 R11 K10 ["AbsolutePosition"]
       63 GETTABLEKS                       R9 R10 K7 ["Y"]
       65 GETTABLEKS                       R10 R3 K7 ["Y"]
       67 JUMPIFNOTLE                      R10 R9 ; [+43]
       69 GETUPVAL                         R13 0
       70 GETTABLE                         R12 R13 R8
       71 GETTABLEKS                       R11 R12 K10 ["AbsolutePosition"]
       73 GETTABLEKS                       R10 R11 K3 ["X"]
       75 GETUPVAL                         R14 0
       76 GETTABLE                         R13 R14 R8
       77 GETTABLEKS                       R12 R13 K11 ["AbsoluteSize"]
       79 GETTABLEKS                       R11 R12 K3 ["X"]
       81 ADD                              R9 R10 R11
       82 GETTABLEKS                       R10 R4 K3 ["X"]
       84 JUMPIFNOTLE                      R9 R10 ; [+26]
       86 GETUPVAL                         R13 0
       87 GETTABLE                         R12 R13 R8
       88 GETTABLEKS                       R11 R12 K10 ["AbsolutePosition"]
       90 GETTABLEKS                       R10 R11 K7 ["Y"]
       92 GETUPVAL                         R14 0
       93 GETTABLE                         R13 R14 R8
       94 GETTABLEKS                       R12 R13 K11 ["AbsoluteSize"]
       96 GETTABLEKS                       R11 R12 K7 ["Y"]
       98 ADD                              R9 R10 R11
       99 GETTABLEKS                       R10 R4 K7 ["Y"]
      101 JUMPIFNOTLE                      R9 R10 ; [+9]
      103 GETUPVAL                         R12 0
      104 GETTABLE                         R11 R12 R8
      105 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
      107 MOVE                             R10 R5
      108 GETIMPORT                        R9 K14 [table.insert]
      110 CALL                             R9 2 0
      111 FORNLOOP                         R6
      112 GETUPVAL                         R6 1
      113 MOVE                             R8 R5
      114 NAMECALL                         R6 R6 K15 ["setSelection"]
      116 CALL                             R6 2 0
      117 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R4 K2 [Vector2.new]
        2 GETTABLEKS                       R6 R2 K3 ["X"]
        4 GETTABLEKS                       R7 R3 K3 ["X"]
        6 FASTCALL2                        MATH_MIN R6 R7 ; [+3]
        8 GETIMPORT                        R5 K6 [math.min]
       10 CALL                             R5 2 1
       11 GETTABLEKS                       R7 R2 K7 ["Y"]
       13 GETTABLEKS                       R8 R3 K7 ["Y"]
       15 FASTCALL2                        MATH_MIN R7 R8 ; [+3]
       17 GETIMPORT                        R6 K6 [math.min]
       19 CALL                             R6 2 1
       20 CALL                             R4 2 1
       21 GETIMPORT                        R5 K2 [Vector2.new]
       23 GETTABLEKS                       R7 R2 K3 ["X"]
       25 GETTABLEKS                       R8 R3 K3 ["X"]
       27 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       29 GETIMPORT                        R6 K9 [math.max]
       31 CALL                             R6 2 1
       32 GETTABLEKS                       R8 R2 K7 ["Y"]
       34 GETTABLEKS                       R9 R3 K7 ["Y"]
       36 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       38 GETIMPORT                        R7 K9 [math.max]
       40 CALL                             R7 2 1
       41 CALL                             R5 2 1
       42 NEWTABLE                         R6 0 0
       44 LOADN                            R9 1
       45 GETUPVAL                         R10 0
       46 LENGTH                           R7 R10
       47 LOADN                            R8 1
       48 FORNPREP                         R7
       49 GETUPVAL                         R13 0
       50 GETTABLE                         R12 R13 R9
       51 GETTABLEKS                       R11 R12 K10 ["AbsolutePosition"]
       53 GETTABLEKS                       R10 R11 K3 ["X"]
       55 GETTABLEKS                       R11 R4 K3 ["X"]
       57 JUMPIFNOTLE                      R11 R10 ; [+53]
       59 GETUPVAL                         R13 0
       60 GETTABLE                         R12 R13 R9
       61 GETTABLEKS                       R11 R12 K10 ["AbsolutePosition"]
       63 GETTABLEKS                       R10 R11 K7 ["Y"]
       65 GETTABLEKS                       R11 R4 K7 ["Y"]
       67 JUMPIFNOTLE                      R11 R10 ; [+43]
       69 GETUPVAL                         R14 0
       70 GETTABLE                         R13 R14 R9
       71 GETTABLEKS                       R12 R13 K10 ["AbsolutePosition"]
       73 GETTABLEKS                       R11 R12 K3 ["X"]
       75 GETUPVAL                         R15 0
       76 GETTABLE                         R14 R15 R9
       77 GETTABLEKS                       R13 R14 K11 ["AbsoluteSize"]
       79 GETTABLEKS                       R12 R13 K3 ["X"]
       81 ADD                              R10 R11 R12
       82 GETTABLEKS                       R11 R5 K3 ["X"]
       84 JUMPIFNOTLE                      R10 R11 ; [+26]
       86 GETUPVAL                         R14 0
       87 GETTABLE                         R13 R14 R9
       88 GETTABLEKS                       R12 R13 K10 ["AbsolutePosition"]
       90 GETTABLEKS                       R11 R12 K7 ["Y"]
       92 GETUPVAL                         R15 0
       93 GETTABLE                         R14 R15 R9
       94 GETTABLEKS                       R13 R14 K11 ["AbsoluteSize"]
       96 GETTABLEKS                       R12 R13 K7 ["Y"]
       98 ADD                              R10 R11 R12
       99 GETTABLEKS                       R11 R5 K7 ["Y"]
      101 JUMPIFNOTLE                      R10 R11 ; [+9]
      103 GETUPVAL                         R13 0
      104 GETTABLE                         R12 R13 R9
      105 FASTCALL2                        TABLE_INSERT R6 R12 ; [+4]
      107 MOVE                             R11 R6
      108 GETIMPORT                        R10 K14 [table.insert]
      110 CALL                             R10 2 0
      111 FORNLOOP                         R7
      112 LOADN                            R9 1
      113 LENGTH                           R7 R1
      114 LOADN                            R8 1
      115 FORNPREP                         R7
      116 GETUPVAL                         R10 1
      117 GETTABLE                         R12 R1 R9
      118 MOVE                             R13 R6
      119 NAMECALL                         R10 R10 K15 ["findItemInTable"]
      121 CALL                             R10 3 1
      122 JUMPIFEQKN                       R10 K16 [0] ; [+7]
      124 GETIMPORT                        R11 K18 [table.remove]
      126 MOVE                             R12 R6
      127 MOVE                             R13 R10
      128 CALL                             R11 2 0
      129 JUMP                             ; [+7]
      130 GETTABLE                         R13 R1 R9
      131 FASTCALL2                        TABLE_INSERT R6 R13 ; [+4]
      133 MOVE                             R12 R6
      134 GETIMPORT                        R11 K14 [table.insert]
      136 CALL                             R11 2 0
      137 FORNLOOP                         R7
      138 GETUPVAL                         R7 2
      139 MOVE                             R9 R6
      140 NAMECALL                         R7 R7 K19 ["setSelection"]
      142 CALL                             R7 2 0
      143 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Utility"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["SelectionManager"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R5 K3 [script]
       23 GETTABLEKS                       R4 R5 K4 ["Parent"]
       25 GETTABLEKS                       R3 R4 K7 ["InstanceInfo"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R6 K3 [script]
       32 GETTABLEKS                       R5 R6 K4 ["Parent"]
       34 GETTABLEKS                       R4 R5 K8 ["Analytics"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K10 [game]
       39 LOADK                            R6 K11 ["StarterGui"]
       40 NAMECALL                         R4 R4 K12 ["GetService"]
       42 CALL                             R4 2 1
       43 GETIMPORT                        R5 K10 [game]
       45 LOADK                            R7 K13 ["UserInputService"]
       46 NAMECALL                         R5 R5 K12 ["GetService"]
       48 CALL                             R5 2 1
       49 NEWTABLE                         R6 0 0
       51 NEWTABLE                         R7 0 0
       53 LOADNIL                          R8
       54 DUPCLOSURE                       R9 K14 [PROTO_0]
       55 DUPCLOSURE                       R10 K15 [PROTO_1]
       56 CAPTURE                          VAL R9
       57 DUPCLOSURE                       R11 K16 [PROTO_2]
       58 CAPTURE                          VAL R2
       59 DUPCLOSURE                       R12 K17 [PROTO_4]
       60 CAPTURE                          VAL R11
       61 NEWCLOSURE                       R13 P4
       62 CAPTURE                          REF R6
       63 CAPTURE                          VAL R12
       64 CAPTURE                          VAL R7
       65 DUPCLOSURE                       R14 K18 [PROTO_6]
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R2
       68 NEWCLOSURE                       R15 P6
       69 CAPTURE                          VAL R13
       70 CAPTURE                          VAL R14
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R0
       73 CAPTURE                          REF R8
       74 DUPCLOSURE                       R16 K19 [PROTO_8]
       75 CAPTURE                          VAL R0
       76 NEWTABLE                         R17 8 0
       78 NEWCLOSURE                       R18 P8
       79 CAPTURE                          REF R6
       80 SETTABLEKS                       R18 R17 K20 ["getGuiObjects"]
       82 DUPCLOSURE                       R18 K21 [PROTO_10]
       83 CAPTURE                          VAL R14
       84 SETTABLEKS                       R18 R17 K22 ["getGuiObjectsAtPoint"]
       86 DUPCLOSURE                       R18 K23 [PROTO_11]
       87 CAPTURE                          VAL R13
       88 SETTABLEKS                       R18 R17 K24 ["refreshPaintOrder"]
       90 NEWCLOSURE                       R18 P11
       91 CAPTURE                          VAL R15
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R0
       95 CAPTURE                          VAL R3
       96 CAPTURE                          REF R8
       97 SETTABLEKS                       R18 R17 K25 ["selectTopLevelItemAtPoint"]
       99 NEWCLOSURE                       R18 P12
      100 CAPTURE                          REF R6
      101 CAPTURE                          VAL R1
      102 SETTABLEKS                       R18 R17 K26 ["selectAllObjectsInBounds"]
      104 NEWCLOSURE                       R18 P13
      105 CAPTURE                          REF R6
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R1
      108 SETTABLEKS                       R18 R17 K27 ["toggleSelectionOfAllObjectsInBounds"]
      110 CLOSEUPVALS                      R6
      111 RETURN                           R17 1
