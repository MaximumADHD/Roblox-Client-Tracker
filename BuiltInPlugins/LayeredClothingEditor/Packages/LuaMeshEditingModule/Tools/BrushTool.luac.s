PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CurrentCamera"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R4 R4 K1 ["ControlPointsAdornmentsFolderName"]
        7 NAMECALL                         R2 R2 K2 ["FindFirstChild"]
        9 CALL                             R2 2 1
       10 GETUPVAL                         R3 3
       11 NAMECALL                         R3 R3 K3 ["getMannequin"]
       13 CALL                             R3 1 1
       14 NEWTABLE                         R4 0 0
       16 NAMECALL                         R5 R3 K4 ["GetChildren"]
       18 CALL                             R5 1 3
       19 FORGPREP                         R5
       20 LOADK                            R12 K5 ["MeshPart"]
       21 NAMECALL                         R10 R9 K6 ["IsA"]
       23 CALL                             R10 2 1
       24 JUMPIFNOT                        R10 ; [+7]
       25 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       27 MOVE                             R11 R4
       28 MOVE                             R12 R9
       29 GETIMPORT                        R10 K9 [table.insert]
       31 CALL                             R10 2 0
       32 FORGLOOP                         R5 2 ; [-13]
       34 LOADNIL                          R5
       35 LOADNIL                          R6
       36 GETIMPORT                        R7 K12 [Vector2.new]
       38 GETTABLEKS                       R8 R0 K13 ["X"]
       40 GETTABLEKS                       R9 R0 K14 ["Y"]
       42 CALL                             R7 2 1
       43 GETTABLEKS                       R8 R1 K15 ["CFrame"]
       45 GETTABLEKS                       R8 R8 K16 ["Position"]
       47 NAMECALL                         R9 R2 K4 ["GetChildren"]
       49 CALL                             R9 1 3
       50 FORGPREP                         R9
       51 NAMECALL                         R14 R13 K4 ["GetChildren"]
       53 CALL                             R14 1 3
       54 FORGPREP                         R14
       55 GETTABLEKS                       R19 R18 K17 ["Adornee"]
       57 GETTABLEKS                       R19 R19 K15 ["CFrame"]
       59 GETTABLEKS                       R21 R18 K15 ["CFrame"]
       61 NAMECALL                         R19 R19 K18 ["ToWorldSpace"]
       63 CALL                             R19 2 1
       64 GETTABLEKS                       R19 R19 K16 ["Position"]
       66 MOVE                             R22 R19
       67 NAMECALL                         R20 R1 K19 ["WorldToScreenPoint"]
       69 CALL                             R20 2 2
       70 GETIMPORT                        R22 K12 [Vector2.new]
       72 GETTABLEKS                       R23 R20 K13 ["X"]
       74 GETTABLEKS                       R24 R20 K14 ["Y"]
       76 CALL                             R22 2 1
       77 GETTABLEKS                       R23 R20 K20 ["Z"]
       79 SUB                              R24 R7 R22
       80 GETTABLEKS                       R24 R24 K21 ["Magnitude"]
       82 JUMPIFNOT                        R21 ; [+30]
       83 JUMPIFEQKNIL                     R6 ; [+3]
       85 JUMPIFNOTLT                      R24 R6 ; [+27]
       87 GETIMPORT                        R25 K23 [RaycastParams.new]
       89 CALL                             R25 0 1
       90 SETTABLEKS                       R4 R25 K24 ["FilterDescendantsInstances"]
       92 GETIMPORT                        R26 K28 [Enum.RaycastFilterType.Include]
       94 SETTABLEKS                       R26 R25 K29 ["FilterType"]
       96 GETUPVAL                         R26 0
       97 MOVE                             R28 R8
       98 SUB                              R29 R19 R8
       99 MOVE                             R30 R25
      100 NAMECALL                         R26 R26 K30 ["Raycast"]
      102 CALL                             R26 4 1
      103 JUMPIFEQKNIL                     R26 ; [+7]
      105 GETTABLEKS                       R28 R26 K31 ["Distance"]
      107 SUB                              R27 R23 R28
      108 LOADK                            R28 K32 [0.08]
      109 JUMPIFNOTLT                      R27 R28 ; [+3]
      111 MOVE                             R5 R18
      112 MOVE                             R6 R24
      113 FORGLOOP                         R14 2 ; [-59]
      115 FORGLOOP                         R9 2 ; [-65]
      117 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["getCurrentContext"]
        3 CALL                             R3 1 1
        4 NAMECALL                         R3 R3 K1 ["getVertexData"]
        6 CALL                             R3 1 1
        7 GETTABLE                         R4 R3 R0
        8 NEWTABLE                         R5 0 0
       10 FASTCALL1                        TONUMBER R2 ; [+3]
       11 MOVE                             R8 R2
       12 GETIMPORT                        R7 K3 [tonumber]
       14 CALL                             R7 1 1
       15 GETTABLE                         R6 R4 R7
       16 MOVE                             R7 R4
       17 LOADNIL                          R8
       18 LOADNIL                          R9
       19 FORGPREP                         R7
       20 SUB                              R12 R11 R6
       21 GETTABLEKS                       R12 R12 K4 ["Magnitude"]
       23 JUMPIFNOTLT                      R12 R1 ; [+8]
       25 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       27 MOVE                             R14 R5
       28 MOVE                             R15 R10
       29 GETIMPORT                        R13 K7 [table.insert]
       31 CALL                             R13 2 0
       32 FORGLOOP                         R7 2 ; [-13]
       34 RETURN                           R5 1

PROTO_2:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["MeshName"]
        3 GETTABLEKS                       R4 R1 K0 ["MeshName"]
        5 JUMPIFNOTEQ                      R3 R4 ; [+9]
        7 GETTABLEKS                       R3 R0 K1 ["Index"]
        9 GETTABLEKS                       R4 R1 K1 ["Index"]
       11 JUMPIFEQ                         R3 R4 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+8]
        5 GETUPVAL                         R2 1
        6 NAMECALL                         R2 R2 K0 ["setHoveredPoint"]
        8 CALL                             R2 1 0
        9 NEWTABLE                         R2 0 0
       11 RETURN                           R2 1
       12 GETUPVAL                         R2 1
       13 MOVE                             R4 R1
       14 NAMECALL                         R2 R2 K0 ["setHoveredPoint"]
       16 CALL                             R2 2 0
       17 NEWTABLE                         R2 0 0
       19 GETUPVAL                         R5 1
       20 NAMECALL                         R5 R5 K1 ["getRadius"]
       22 CALL                             R5 1 1
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K2 ["FalloffCursorAdjustment"]
       26 GETUPVAL                         R8 1
       27 NAMECALL                         R8 R8 K3 ["getFalloff"]
       29 CALL                             R8 1 1
       30 MUL                              R6 R7 R8
       31 SUB                              R4 R5 R6
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R5 R5 K4 ["MinimumBrushRadius"]
       35 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       37 GETIMPORT                        R3 K7 [math.max]
       39 CALL                             R3 2 1
       40 GETUPVAL                         R4 3
       41 GETTABLEKS                       R5 R1 K8 ["Parent"]
       43 GETTABLEKS                       R5 R5 K9 ["Name"]
       45 MOVE                             R6 R3
       46 GETTABLEKS                       R7 R1 K9 ["Name"]
       48 CALL                             R4 3 1
       49 MOVE                             R5 R4
       50 LOADNIL                          R6
       51 LOADNIL                          R7
       52 FORGPREP                         R5
       53 DUPTABLE                         R13 K13 [{"MeshName", "Index", "__eq"}]
       54 GETTABLEKS                       R14 R1 K8 ["Parent"]
       56 GETTABLEKS                       R14 R14 K9 ["Name"]
       58 SETTABLEKS                       R14 R13 K10 ["MeshName"]
       60 FASTCALL1                        TONUMBER R9 ; [+3]
       61 MOVE                             R15 R9
       62 GETIMPORT                        R14 K15 [tonumber]
       64 CALL                             R14 1 1
       65 SETTABLEKS                       R14 R13 K11 ["Index"]
       67 DUPCLOSURE                       R14 K16 [PROTO_2]
       68 SETTABLEKS                       R14 R13 K12 ["__eq"]
       70 FASTCALL2K                       SETMETATABLE R13 K17 ; [+4]
       72 LOADK                            R14 K17 []
       73 GETIMPORT                        R12 K19 [setmetatable]
       75 CALL                             R12 2 1
       76 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       78 MOVE                             R11 R2
       79 GETIMPORT                        R10 K22 [table.insert]
       81 CALL                             R10 2 0
       82 FORGLOOP                         R5 2 ; [-30]
       84 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["CurrentCamera"]
        3 GETTABLEKS                       R4 R2 K2 ["FieldOfView"]
        5 DIVK                             R3 R4 K1 [2]
        6 FASTCALL1                        MATH_RAD R3 ; [+3]
        7 MOVE                             R7 R3
        8 GETIMPORT                        R6 K5 [math.rad]
       10 CALL                             R6 1 1
       11 FASTCALL1                        MATH_TAN R6 ; [+2]
       12 GETIMPORT                        R5 K7 [math.tan]
       14 CALL                             R5 1 1
       15 MUL                              R4 R1 R5
       16 GETTABLEKS                       R5 R2 K8 ["ViewportSize"]
       18 GETTABLEKS                       R6 R5 K9 ["X"]
       20 GETTABLEKS                       R7 R5 K10 ["Y"]
       22 ADD                              R10 R6 R7
       23 MUL                              R9 R0 R10
       24 MULK                             R10 R4 K1 [2]
       25 DIV                              R8 R9 R10
       26 RETURN                           R8 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getHoveredPoint"]
        3 CALL                             R0 1 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+7]
        6 GETIMPORT                        R0 K3 [Vector2.new]
        8 LOADN                            R1 0
        9 LOADN                            R2 0
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K4 ["CurrentCamera"]
       15 GETUPVAL                         R2 2
       16 NAMECALL                         R0 R0 K5 ["WorldToScreenPoint"]
       18 CALL                             R0 2 2
       19 GETIMPORT                        R2 K3 [Vector2.new]
       21 GETTABLEKS                       R3 R0 K6 ["X"]
       23 GETTABLEKS                       R4 R0 K7 ["Y"]
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["setSelected"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K1 ["getRadius"]
        9 CALL                             R0 1 1
       10 JUMPIFNOTEQKNIL                  R0 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 1
       14 NAMECALL                         R1 R1 K2 ["getFalloff"]
       16 CALL                             R1 1 1
       17 JUMPIFNOTEQKNIL                  R1 ; [+2]
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 2
       21 JUMPIFNOTEQKNIL                  R2 ; [+6]
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R2 R2 K3 ["new"]
       26 CALL                             R2 0 1
       27 SETUPVAL                         R2 2
       28 GETUPVAL                         R3 1
       29 NAMECALL                         R3 R3 K4 ["getHoveredPoint"]
       31 CALL                             R3 1 1
       32 JUMPIFEQKNIL                     R3 ; [+21]
       34 GETUPVAL                         R2 1
       35 NAMECALL                         R2 R2 K4 ["getHoveredPoint"]
       37 CALL                             R2 1 1
       38 GETTABLEKS                       R2 R2 K5 ["Adornee"]
       40 GETTABLEKS                       R2 R2 K6 ["CFrame"]
       42 GETUPVAL                         R4 1
       43 NAMECALL                         R4 R4 K4 ["getHoveredPoint"]
       45 CALL                             R4 1 1
       46 GETTABLEKS                       R4 R4 K6 ["CFrame"]
       48 NAMECALL                         R2 R2 K7 ["ToWorldSpace"]
       50 CALL                             R2 2 1
       51 GETTABLEKS                       R2 R2 K8 ["Position"]
       53 JUMP                             ; [+4]
       54 FASTCALL                         VECTOR ; [+2]
       55 GETIMPORT                        R2 K10 [Vector3.new]
       57 CALL                             R2 0 1
       58 NEWCLOSURE                       R3 P0
       59 CAPTURE                          UPVAL U1
       60 CAPTURE                          UPVAL U4
       61 CAPTURE                          VAL R2
       62 GETUPVAL                         R5 5
       63 GETIMPORT                        R7 K14 [Enum.UserInputType.MouseButton1]
       65 NAMECALL                         R5 R5 K15 ["IsMouseButtonPressed"]
       67 CALL                             R5 2 1
       68 JUMPIFNOT                        R5 ; [+28]
       69 GETUPVAL                         R5 1
       70 NAMECALL                         R5 R5 K4 ["getHoveredPoint"]
       72 CALL                             R5 1 1
       73 JUMPIFNOTEQKNIL                  R5 ; [+7]
       75 GETIMPORT                        R4 K17 [Vector2.new]
       77 LOADN                            R5 0
       78 LOADN                            R6 0
       79 CALL                             R4 2 1
       80 JUMP                             ; [+20]
       81 GETUPVAL                         R5 4
       82 GETTABLEKS                       R5 R5 K18 ["CurrentCamera"]
       84 MOVE                             R7 R2
       85 NAMECALL                         R5 R5 K19 ["WorldToScreenPoint"]
       87 CALL                             R5 2 2
       88 GETIMPORT                        R7 K17 [Vector2.new]
       90 GETTABLEKS                       R8 R5 K20 ["X"]
       92 GETTABLEKS                       R9 R5 K21 ["Y"]
       94 CALL                             R7 2 1
       95 MOVE                             R4 R7
       96 JUMP                             ; [+4]
       97 GETUPVAL                         R4 5
       98 NAMECALL                         R4 R4 K22 ["GetMouseLocation"]
      100 CALL                             R4 1 1
      101 GETUPVAL                         R6 4
      102 GETTABLEKS                       R6 R6 K18 ["CurrentCamera"]
      104 GETTABLEKS                       R6 R6 K6 ["CFrame"]
      106 GETTABLEKS                       R6 R6 K8 ["Position"]
      108 SUB                              R5 R6 R2
      109 GETTABLEKS                       R5 R5 K23 ["Magnitude"]
      111 GETUPVAL                         R7 4
      112 GETTABLEKS                       R7 R7 K18 ["CurrentCamera"]
      114 GETTABLEKS                       R9 R7 K25 ["FieldOfView"]
      116 DIVK                             R8 R9 K24 [2]
      117 FASTCALL1                        MATH_RAD R8 ; [+3]
      118 MOVE                             R12 R8
      119 GETIMPORT                        R11 K28 [math.rad]
      121 CALL                             R11 1 1
      122 FASTCALL1                        MATH_TAN R11 ; [+2]
      123 GETIMPORT                        R10 K30 [math.tan]
      125 CALL                             R10 1 1
      126 MUL                              R9 R5 R10
      127 GETTABLEKS                       R10 R7 K31 ["ViewportSize"]
      129 GETTABLEKS                       R11 R10 K20 ["X"]
      131 GETTABLEKS                       R12 R10 K21 ["Y"]
      133 ADD                              R15 R11 R12
      134 MUL                              R14 R0 R15
      135 MULK                             R15 R9 K24 [2]
      136 DIV                              R13 R14 R15
      137 MOVE                             R6 R13
      138 GETUPVAL                         R8 4
      139 GETTABLEKS                       R8 R8 K18 ["CurrentCamera"]
      141 GETTABLEKS                       R10 R8 K25 ["FieldOfView"]
      143 DIVK                             R9 R10 K24 [2]
      144 FASTCALL1                        MATH_RAD R9 ; [+3]
      145 MOVE                             R13 R9
      146 GETIMPORT                        R12 K28 [math.rad]
      148 CALL                             R12 1 1
      149 FASTCALL1                        MATH_TAN R12 ; [+2]
      150 GETIMPORT                        R11 K30 [math.tan]
      152 CALL                             R11 1 1
      153 MUL                              R10 R5 R11
      154 GETTABLEKS                       R11 R8 K31 ["ViewportSize"]
      156 GETTABLEKS                       R12 R11 K20 ["X"]
      158 GETTABLEKS                       R13 R11 K21 ["Y"]
      160 ADD                              R16 R12 R13
      161 MUL                              R15 R1 R16
      162 MULK                             R16 R10 K24 [2]
      163 DIV                              R14 R15 R16
      164 MOVE                             R7 R14
      165 GETUPVAL                         R8 2
      166 DUPTABLE                         R10 K36 [{"CurrRadius", "CurrFalloff", "Mouse", "Shown"}]
      167 SETTABLEKS                       R6 R10 K32 ["CurrRadius"]
      169 SETTABLEKS                       R7 R10 K33 ["CurrFalloff"]
      171 SETTABLEKS                       R4 R10 K34 ["Mouse"]
      173 GETUPVAL                         R11 6
      174 JUMPIFNOT                        R11 ; [+8]
      175 GETUPVAL                         R12 1
      176 NAMECALL                         R12 R12 K4 ["getHoveredPoint"]
      178 CALL                             R12 1 1
      179 JUMPIFNOTEQKNIL                  R12 ; [+2]
      181 LOADB                            R11 0 +1
      182 LOADB                            R11 1
      183 SETTABLEKS                       R11 R10 K35 ["Shown"]
      185 NAMECALL                         R8 R8 K37 ["render"]
      187 CALL                             R8 2 0
      188 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R2 R3 ; [+3]
        6 GETUPVAL                         R2 0
        7 CALL                             R2 0 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+22]
        6 GETUPVAL                         R2 0
        7 CALL                             R2 0 0
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R2 R2 K4 ["getMouse"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K5 ["CurrentCamera"]
       15 GETTABLEKS                       R6 R2 K6 ["X"]
       17 GETTABLEKS                       R7 R2 K7 ["Y"]
       19 NAMECALL                         R4 R3 K8 ["ScreenPointToRay"]
       21 CALL                             R4 3 1
       22 GETUPVAL                         R5 1
       23 MOVE                             R7 R4
       24 NAMECALL                         R5 R5 K9 ["setMouseStartPosition"]
       26 CALL                             R5 2 0
       27 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+3]
        6 GETUPVAL                         R2 0
        7 CALL                             R2 0 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 1
        2 NAMECALL                         R0 R0 K0 ["setHovered"]
        4 CALL                             R0 2 0
        5 LOADB                            R0 1
        6 SETUPVAL                         R0 1
        7 GETUPVAL                         R0 2
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["setHovered"]
        4 CALL                             R0 2 0
        5 LOADB                            R0 0
        6 SETUPVAL                         R0 1
        7 GETUPVAL                         R0 0
        8 LOADNIL                          R2
        9 NAMECALL                         R0 R0 K1 ["setHoveredPoint"]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R0 2
       13 GETUPVAL                         R1 3
       14 NEWTABLE                         R2 0 0
       16 CALL                             R0 2 0
       17 GETUPVAL                         R0 4
       18 CALL                             R0 0 0
       19 RETURN                           R0 0

PROTO_13:
        0 JUMPIF                           R1 ; [+5]
        1 GETIMPORT                        R2 K1 [error]
        3 LOADK                            R3 K2 ["Could not add context: Context was nil."]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 JUMPIF                           R2 ; [+8]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["InputChanged"]
       11 GETUPVAL                         R4 2
       12 NAMECALL                         R2 R2 K4 ["Connect"]
       14 CALL                             R2 2 1
       15 SETUPVAL                         R2 0
       16 GETUPVAL                         R2 3
       17 JUMPIFNOTEQKNIL                  R2 ; [+14]
       19 GETUPVAL                         R2 4
       20 GETTABLEKS                       R2 R2 K5 ["CurrentCamera"]
       22 LOADK                            R4 K6 ["CFrame"]
       23 NAMECALL                         R2 R2 K7 ["GetPropertyChangedSignal"]
       25 CALL                             R2 2 1
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          UPVAL U5
       28 NAMECALL                         R2 R2 K4 ["Connect"]
       30 CALL                             R2 2 1
       31 SETUPVAL                         R2 3
       32 GETUPVAL                         R2 6
       33 JUMPIF                           R2 ; [+11]
       34 GETUPVAL                         R2 7
       35 GETTABLEKS                       R2 R2 K8 ["MouseEnterStudioViewport"]
       37 NEWCLOSURE                       R4 P1
       38 CAPTURE                          UPVAL U8
       39 CAPTURE                          UPVAL U9
       40 CAPTURE                          UPVAL U5
       41 NAMECALL                         R2 R2 K4 ["Connect"]
       43 CALL                             R2 2 1
       44 SETUPVAL                         R2 6
       45 GETUPVAL                         R2 10
       46 JUMPIF                           R2 ; [+13]
       47 GETUPVAL                         R2 7
       48 GETTABLEKS                       R2 R2 K9 ["MouseLeaveStudioViewport"]
       50 NEWCLOSURE                       R4 P2
       51 CAPTURE                          UPVAL U8
       52 CAPTURE                          UPVAL U9
       53 CAPTURE                          UPVAL U11
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U5
       56 NAMECALL                         R2 R2 K4 ["Connect"]
       58 CALL                             R2 2 1
       59 SETUPVAL                         R2 10
       60 GETUPVAL                         R2 12
       61 JUMPIF                           R2 ; [+8]
       62 GETUPVAL                         R2 1
       63 GETTABLEKS                       R2 R2 K10 ["InputBegan"]
       65 GETUPVAL                         R4 13
       66 NAMECALL                         R2 R2 K4 ["Connect"]
       68 CALL                             R2 2 1
       69 SETUPVAL                         R2 12
       70 GETUPVAL                         R2 14
       71 JUMPIF                           R2 ; [+8]
       72 GETUPVAL                         R2 1
       73 GETTABLEKS                       R2 R2 K11 ["InputEnded"]
       75 GETUPVAL                         R4 15
       76 NAMECALL                         R2 R2 K4 ["Connect"]
       78 CALL                             R2 2 1
       79 SETUPVAL                         R2 14
       80 GETUPVAL                         R2 8
       81 MOVE                             R4 R1
       82 NAMECALL                         R2 R2 K12 ["getDedupedPositionsFromContext"]
       84 CALL                             R2 2 1
       85 GETUPVAL                         R3 16
       86 MOVE                             R4 R0
       87 MOVE                             R5 R1
       88 MOVE                             R6 R2
       89 CALL                             R3 3 0
       90 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["_getSelectedControlWeights"]
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["getMouse"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R2
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 0
        8 NAMECALL                         R4 R4 K1 ["getHoveredPoint"]
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 2
       12 JUMPIFNOTEQ                      R4 R5 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R4 0
       16 NAMECALL                         R4 R4 K1 ["getHoveredPoint"]
       18 CALL                             R4 1 1
       19 SETUPVAL                         R4 2
       20 GETUPVAL                         R4 3
       21 MOVE                             R5 R0
       22 MOVE                             R6 R3
       23 CALL                             R4 2 0
       24 RETURN                           R0 0

PROTO_16:
        0 JUMPIFEQKB                       R1 TRUE ; [+3]
        2 JUMPIFNOTEQKB                    R1 FALSE ; [+3]
        4 SETUPVAL                         R1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 1
        7 GETIMPORT                        R5 K3 [Enum.UserInputType.MouseButton1]
        9 NAMECALL                         R3 R3 K4 ["IsMouseButtonPressed"]
       11 CALL                             R3 2 1
       12 NOT                              R2 R3
       13 SETUPVAL                         R2 0
       14 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETTABLEKS                       R1 R0 K0 ["Heartbeat"]
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETTABLEKS                       R1 R0 K0 ["Heartbeat"]
        7 NAMECALL                         R1 R1 K1 ["Disconnect"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 1
       11 JUMPIFNOT                        R1 ; [+6]
       12 GETUPVAL                         R1 1
       13 NAMECALL                         R1 R1 K2 ["cleanup"]
       15 CALL                             R1 1 0
       16 LOADNIL                          R1
       17 SETUPVAL                         R1 1
       18 GETUPVAL                         R1 2
       19 JUMPIFNOT                        R1 ; [+6]
       20 GETUPVAL                         R1 2
       21 NAMECALL                         R1 R1 K1 ["Disconnect"]
       23 CALL                             R1 1 0
       24 LOADNIL                          R1
       25 SETUPVAL                         R1 2
       26 GETUPVAL                         R1 3
       27 JUMPIFEQKNIL                     R1 ; [+7]
       29 GETUPVAL                         R1 3
       30 NAMECALL                         R1 R1 K1 ["Disconnect"]
       32 CALL                             R1 1 0
       33 LOADNIL                          R1
       34 SETUPVAL                         R1 3
       35 GETUPVAL                         R1 4
       36 JUMPIFEQKNIL                     R1 ; [+7]
       38 GETUPVAL                         R1 4
       39 NAMECALL                         R1 R1 K1 ["Disconnect"]
       41 CALL                             R1 1 0
       42 LOADNIL                          R1
       43 SETUPVAL                         R1 4
       44 GETUPVAL                         R1 5
       45 JUMPIFEQKNIL                     R1 ; [+7]
       47 GETUPVAL                         R1 5
       48 NAMECALL                         R1 R1 K1 ["Disconnect"]
       50 CALL                             R1 1 0
       51 LOADNIL                          R1
       52 SETUPVAL                         R1 5
       53 GETUPVAL                         R1 6
       54 JUMPIFEQKNIL                     R1 ; [+7]
       56 GETUPVAL                         R1 6
       57 NAMECALL                         R1 R1 K1 ["Disconnect"]
       59 CALL                             R1 1 0
       60 LOADNIL                          R1
       61 SETUPVAL                         R1 6
       62 GETUPVAL                         R1 7
       63 JUMPIFEQKNIL                     R1 ; [+7]
       65 GETUPVAL                         R1 7
       66 NAMECALL                         R1 R1 K1 ["Disconnect"]
       68 CALL                             R1 1 0
       69 LOADNIL                          R1
       70 SETUPVAL                         R1 7
       71 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R3 1
        5 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        7 MOVE                             R2 R0
        8 GETIMPORT                        R1 K2 [setmetatable]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K3 ["render"]
       13 GETTABLEKS                       R3 R1 K4 ["shouldRender"]
       15 GETTABLEKS                       R4 R1 K5 ["addContext"]
       17 GETTABLEKS                       R5 R1 K6 ["cleanup"]
       19 GETTABLEKS                       R6 R1 K7 ["setSelected"]
       21 LOADNIL                          R7
       22 LOADNIL                          R8
       23 LOADNIL                          R9
       24 LOADB                            R10 1
       25 LOADNIL                          R11
       26 LOADNIL                          R12
       27 LOADNIL                          R13
       28 LOADNIL                          R14
       29 GETUPVAL                         R15 2
       30 GETTABLEKS                       R15 R15 K0 ["new"]
       32 CALL                             R15 0 1
       33 LOADNIL                          R16
       34 NEWCLOSURE                       R17 P0
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          VAL R1
       39 NEWCLOSURE                       R18 P1
       40 CAPTURE                          VAL R1
       41 NEWCLOSURE                       R19 P2
       42 CAPTURE                          VAL R17
       43 CAPTURE                          VAL R1
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          VAL R18
       46 DUPCLOSURE                       R20 K8 [PROTO_4]
       47 CAPTURE                          UPVAL U3
       48 NEWCLOSURE                       R21 P4
       49 CAPTURE                          REF R7
       50 CAPTURE                          VAL R1
       51 CAPTURE                          REF R15
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          REF R10
       56 NEWCLOSURE                       R22 P5
       57 CAPTURE                          VAL R21
       58 NEWCLOSURE                       R23 P6
       59 CAPTURE                          VAL R21
       60 CAPTURE                          VAL R1
       61 CAPTURE                          UPVAL U3
       62 NEWCLOSURE                       R24 P7
       63 CAPTURE                          VAL R21
       64 NEWCLOSURE                       R25 P8
       65 CAPTURE                          REF R8
       66 CAPTURE                          UPVAL U6
       67 CAPTURE                          VAL R22
       68 CAPTURE                          REF R9
       69 CAPTURE                          UPVAL U3
       70 CAPTURE                          VAL R21
       71 CAPTURE                          REF R11
       72 CAPTURE                          UPVAL U7
       73 CAPTURE                          VAL R1
       74 CAPTURE                          REF R10
       75 CAPTURE                          REF R12
       76 CAPTURE                          VAL R6
       77 CAPTURE                          REF R13
       78 CAPTURE                          VAL R23
       79 CAPTURE                          REF R14
       80 CAPTURE                          VAL R24
       81 CAPTURE                          VAL R4
       82 SETTABLEKS                       R25 R1 K5 ["addContext"]
       84 NEWCLOSURE                       R25 P9
       85 CAPTURE                          VAL R1
       86 SETTABLEKS                       R25 R1 K9 ["getVertexWeights"]
       88 NEWCLOSURE                       R25 P10
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R19
       91 CAPTURE                          REF R16
       92 CAPTURE                          VAL R6
       93 SETTABLEKS                       R25 R1 K7 ["setSelected"]
       95 NEWCLOSURE                       R25 P11
       96 CAPTURE                          REF R7
       97 CAPTURE                          UPVAL U6
       98 SETTABLEKS                       R25 R1 K10 ["setHovered"]
      100 NEWCLOSURE                       R25 P12
      101 CAPTURE                          VAL R5
      102 CAPTURE                          REF R15
      103 CAPTURE                          REF R8
      104 CAPTURE                          REF R9
      105 CAPTURE                          REF R11
      106 CAPTURE                          REF R12
      107 CAPTURE                          REF R13
      108 CAPTURE                          REF R14
      109 SETTABLEKS                       R25 R1 K6 ["cleanup"]
      111 CLOSEUPVALS                      R7
      112 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AssetService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["CoreGui"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["MouseService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["RunService"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K1 [game]
       27 LOADK                            R6 K7 ["UserInputService"]
       28 NAMECALL                         R4 R4 K3 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K1 [game]
       33 LOADK                            R7 K8 ["Workspace"]
       34 NAMECALL                         R5 R5 K3 ["GetService"]
       36 CALL                             R5 2 1
       37 GETIMPORT                        R6 K10 [script]
       39 GETTABLEKS                       R6 R6 K11 ["Parent"]
       41 GETTABLEKS                       R6 R6 K11 ["Parent"]
       43 GETTABLEKS                       R7 R6 K11 ["Parent"]
       45 GETIMPORT                        R8 K13 [require]
       47 GETTABLEKS                       R9 R7 K14 ["Roact"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K13 [require]
       52 GETTABLEKS                       R10 R7 K15 ["Dash"]
       54 CALL                             R9 1 1
       55 GETTABLEKS                       R10 R9 K16 ["join"]
       57 GETIMPORT                        R11 K13 [require]
       59 GETIMPORT                        R12 K10 [script]
       61 GETTABLEKS                       R12 R12 K11 ["Parent"]
       63 GETTABLEKS                       R12 R12 K17 ["VertexToolBase"]
       65 CALL                             R11 1 1
       66 GETTABLEKS                       R12 R6 K18 ["Views"]
       68 GETIMPORT                        R13 K13 [require]
       70 GETTABLEKS                       R14 R12 K19 ["RadiusUIView"]
       72 CALL                             R13 1 1
       73 GETTABLEKS                       R14 R6 K20 ["Util"]
       75 GETIMPORT                        R15 K13 [require]
       77 GETTABLEKS                       R16 R14 K21 ["TransformPointsHelpers"]
       79 CALL                             R15 1 1
       80 GETIMPORT                        R16 K13 [require]
       82 GETTABLEKS                       R17 R14 K22 ["Constants"]
       84 CALL                             R16 1 1
       85 GETIMPORT                        R17 K13 [require]
       87 GETTABLEKS                       R18 R14 K23 ["deepCopy"]
       89 CALL                             R17 1 1
       90 GETIMPORT                        R18 K13 [require]
       92 GETTABLEKS                       R19 R14 K24 ["softSelectPoints"]
       94 CALL                             R18 1 1
       95 NEWTABLE                         R20 2 0
       97 DUPTABLE                         R21 K26 [{"__index"}]
       98 SETTABLEKS                       R11 R21 K25 ["__index"]
      100 FASTCALL2                        SETMETATABLE R20 R21 ; [+3]
      102 GETIMPORT                        R19 K28 [setmetatable]
      104 CALL                             R19 2 1
      105 SETTABLEKS                       R19 R19 K25 ["__index"]
      107 DUPCLOSURE                       R20 K29 [PROTO_18]
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R19
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R16
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R2
      116 SETTABLEKS                       R20 R19 K30 ["new"]
      118 RETURN                           R19 1
