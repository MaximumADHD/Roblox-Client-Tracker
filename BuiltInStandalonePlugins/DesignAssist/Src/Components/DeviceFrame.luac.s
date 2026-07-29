PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["chrome"]
        3 JUMPIFNOTEQKS                    R0 K1 ["Bezel"] ; [+8]
        5 GETIMPORT                        R0 K4 [Color3.new]
        7 LOADN                            R1 0
        8 LOADN                            R2 0
        9 LOADN                            R3 0
       10 CALL                             R0 3 -1
       11 RETURN                           R0 -1
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["chrome"]
       15 JUMPIFNOTEQKS                    R0 K5 ["Stroke"] ; [+3]
       17 GETUPVAL                         R0 1
       18 RETURN                           R0 1
       19 GETUPVAL                         R0 2
       20 GETTABLEKS                       R0 R0 K6 ["BackgroundColor3"]
       22 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["chrome"]
        3 JUMPIFNOTEQKS                    R1 K1 ["Bezel"] ; [+8]
        5 GETIMPORT                        R0 K4 [Color3.new]
        7 LOADN                            R1 0
        8 LOADN                            R2 0
        9 LOADN                            R3 0
       10 CALL                             R0 3 1
       11 JUMP                             ; [+10]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K0 ["chrome"]
       15 JUMPIFNOTEQKS                    R1 K5 ["Stroke"] ; [+3]
       17 GETUPVAL                         R0 1
       18 JUMP                             ; [+3]
       19 GETUPVAL                         R0 2
       20 GETTABLEKS                       R0 R0 K6 ["BackgroundColor3"]
       22 GETUPVAL                         R1 3
       23 LOADNIL                          R2
       24 LOADNIL                          R3
       25 FORGPREP                         R1
       26 SETTABLEKS                       R0 R5 K6 ["BackgroundColor3"]
       28 FORGLOOP                         R1 2 ; [-3]
       30 RETURN                           R0 0

PROTO_2:
        0 LOADN                            R6 0
        1 JUMPIFLE                         R3 R6 ; [+4]
        3 LOADN                            R6 0
        4 JUMPIFNOTLE                      R4 R6 ; [+2]
        6 RETURN                           R0 0
        7 GETIMPORT                        R6 K2 [Instance.new]
        9 LOADK                            R7 K3 ["Frame"]
       10 CALL                             R6 1 1
       11 SETTABLEKS                       R0 R6 K4 ["Name"]
       13 GETIMPORT                        R7 K7 [UDim2.fromOffset]
       15 MOVE                             R8 R1
       16 MOVE                             R9 R2
       17 CALL                             R7 2 1
       18 SETTABLEKS                       R7 R6 K8 ["Position"]
       20 GETIMPORT                        R7 K7 [UDim2.fromOffset]
       22 MOVE                             R8 R3
       23 MOVE                             R9 R4
       24 CALL                             R7 2 1
       25 SETTABLEKS                       R7 R6 K9 ["Size"]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K10 ["chrome"]
       30 JUMPIFNOTEQKS                    R8 K11 ["Bezel"] ; [+8]
       32 GETIMPORT                        R7 K13 [Color3.new]
       34 LOADN                            R8 0
       35 LOADN                            R9 0
       36 LOADN                            R10 0
       37 CALL                             R7 3 1
       38 JUMP                             ; [+10]
       39 GETUPVAL                         R8 0
       40 GETTABLEKS                       R8 R8 K10 ["chrome"]
       42 JUMPIFNOTEQKS                    R8 K14 ["Stroke"] ; [+3]
       44 GETUPVAL                         R7 1
       45 JUMP                             ; [+3]
       46 GETUPVAL                         R7 2
       47 GETTABLEKS                       R7 R7 K15 ["BackgroundColor3"]
       49 SETTABLEKS                       R7 R6 K15 ["BackgroundColor3"]
       51 ORK                              R7 R5 K16 [0]
       52 SETTABLEKS                       R7 R6 K17 ["BackgroundTransparency"]
       54 LOADN                            R7 0
       55 SETTABLEKS                       R7 R6 K18 ["BorderSizePixel"]
       57 LOADN                            R7 80
       58 SETTABLEKS                       R7 R6 K19 ["ZIndex"]
       60 GETUPVAL                         R7 3
       61 SETTABLEKS                       R7 R6 K20 ["Parent"]
       63 GETUPVAL                         R8 4
       64 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
       66 MOVE                             R9 R6
       67 GETIMPORT                        R7 K23 [table.insert]
       69 CALL                             R7 2 0
       70 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clear]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R1 R1 K3 ["ClearAllChildren"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K4 ["chrome"]
       10 JUMPIFNOTEQKS                    R1 K5 ["None"] ; [+2]
       12 RETURN                           R0 0
       13 LOADN                            R2 0
       14 GETTABLEKS                       R5 R0 K6 ["cornerRadius"]
       16 GETTABLEKS                       R6 R0 K7 ["bezelThickness"]
       18 SUB                              R4 R5 R6
       19 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       20 GETIMPORT                        R3 K10 [math.floor]
       22 CALL                             R3 1 1
       23 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       25 GETIMPORT                        R1 K12 [math.max]
       27 CALL                             R1 2 1
       28 LOADN                            R2 0
       29 JUMPIFNOTLE                      R1 R2 ; [+2]
       31 RETURN                           R0 0
       32 GETTABLEKS                       R2 R0 K7 ["bezelThickness"]
       34 GETTABLEKS                       R3 R0 K13 ["width"]
       36 GETTABLEKS                       R4 R0 K14 ["height"]
       38 MUL                              R5 R1 R1
       39 LOADN                            R8 0
       40 SUBK                             R6 R1 K15 [1]
       41 LOADN                            R7 1
       42 FORNPREP                         R6
       43 ADDK                             R10 R8 K16 [0.5]
       44 SUB                              R9 R1 R10
       45 LOADN                            R12 0
       46 MUL                              R14 R9 R9
       47 SUB                              R13 R5 R14
       48 FASTCALL2                        MATH_MAX R12 R13 ; [+3]
       50 GETIMPORT                        R11 K12 [math.max]
       52 CALL                             R11 2 1
       53 FASTCALL1                        MATH_SQRT R11 ; [+2]
       54 GETIMPORT                        R10 K18 [math.sqrt]
       56 CALL                             R10 1 1
       57 SUB                              R11 R1 R10
       58 FASTCALL1                        MATH_FLOOR R11 ; [+3]
       59 MOVE                             R13 R11
       60 GETIMPORT                        R12 K10 [math.floor]
       62 CALL                             R12 1 1
       63 SUB                              R13 R11 R12
       64 ADD                              R14 R2 R8
       65 ADD                              R17 R2 R4
       66 SUB                              R16 R17 R8
       67 SUBK                             R15 R16 K15 [1]
       68 LOADN                            R16 0
       69 JUMPIFNOTLT                      R16 R12 ; [+31]
       71 GETUPVAL                         R16 2
       72 LOADK                            R17 K19 ["TopLeft"]
       73 MOVE                             R18 R2
       74 MOVE                             R19 R14
       75 MOVE                             R20 R12
       76 LOADN                            R21 1
       77 CALL                             R16 5 0
       78 GETUPVAL                         R16 2
       79 LOADK                            R17 K20 ["TopRight"]
       80 ADD                              R19 R2 R3
       81 SUB                              R18 R19 R12
       82 MOVE                             R19 R14
       83 MOVE                             R20 R12
       84 LOADN                            R21 1
       85 CALL                             R16 5 0
       86 GETUPVAL                         R16 2
       87 LOADK                            R17 K21 ["BottomLeft"]
       88 MOVE                             R18 R2
       89 MOVE                             R19 R15
       90 MOVE                             R20 R12
       91 LOADN                            R21 1
       92 CALL                             R16 5 0
       93 GETUPVAL                         R16 2
       94 LOADK                            R17 K22 ["BottomRight"]
       95 ADD                              R19 R2 R3
       96 SUB                              R18 R19 R12
       97 MOVE                             R19 R15
       98 MOVE                             R20 R12
       99 LOADN                            R21 1
      100 CALL                             R16 5 0
      101 LOADK                            R16 K23 [0.02]
      102 JUMPIFNOTLT                      R16 R13 ; [+40]
      104 JUMPIFNOTLT                      R12 R1 ; [+38]
      106 SUBRK                            R16 K15 [1] R13
      107 GETUPVAL                         R17 2
      108 LOADK                            R18 K24 ["TopLeftEdge"]
      109 ADD                              R19 R2 R12
      110 MOVE                             R20 R14
      111 LOADN                            R21 1
      112 LOADN                            R22 1
      113 MOVE                             R23 R16
      114 CALL                             R17 6 0
      115 GETUPVAL                         R17 2
      116 LOADK                            R18 K25 ["TopRightEdge"]
      117 ADD                              R21 R2 R3
      118 SUB                              R20 R21 R12
      119 SUBK                             R19 R20 K15 [1]
      120 MOVE                             R20 R14
      121 LOADN                            R21 1
      122 LOADN                            R22 1
      123 MOVE                             R23 R16
      124 CALL                             R17 6 0
      125 GETUPVAL                         R17 2
      126 LOADK                            R18 K26 ["BottomLeftEdge"]
      127 ADD                              R19 R2 R12
      128 MOVE                             R20 R15
      129 LOADN                            R21 1
      130 LOADN                            R22 1
      131 MOVE                             R23 R16
      132 CALL                             R17 6 0
      133 GETUPVAL                         R17 2
      134 LOADK                            R18 K27 ["BottomRightEdge"]
      135 ADD                              R21 R2 R3
      136 SUB                              R20 R21 R12
      137 SUBK                             R19 R20 K15 [1]
      138 MOVE                             R20 R15
      139 LOADN                            R21 1
      140 LOADN                            R22 1
      141 MOVE                             R23 R16
      142 CALL                             R17 6 0
      143 FORNLOOP                         R6
      144 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["chrome"]
        2 JUMPIFNOTEQKS                    R1 K1 ["None"] ; [+44]
        4 GETUPVAL                         R1 0
        5 GETIMPORT                        R2 K4 [Vector2.new]
        7 LOADN                            R3 0
        8 LOADN                            R4 0
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R1 K5 ["AnchorPoint"]
       12 GETUPVAL                         R1 0
       13 GETIMPORT                        R2 K8 [UDim2.fromScale]
       15 LOADN                            R3 0
       16 LOADN                            R4 0
       17 CALL                             R2 2 1
       18 SETTABLEKS                       R2 R1 K9 ["Position"]
       20 GETUPVAL                         R1 0
       21 GETIMPORT                        R2 K8 [UDim2.fromScale]
       23 LOADN                            R3 1
       24 LOADN                            R4 1
       25 CALL                             R2 2 1
       26 SETTABLEKS                       R2 R1 K10 ["Size"]
       28 GETUPVAL                         R1 1
       29 GETIMPORT                        R2 K12 [UDim2.fromOffset]
       31 LOADN                            R3 0
       32 LOADN                            R4 56
       33 CALL                             R2 2 1
       34 SETTABLEKS                       R2 R1 K9 ["Position"]
       36 GETUPVAL                         R1 1
       37 GETIMPORT                        R2 K13 [UDim2.new]
       39 LOADN                            R3 1
       40 LOADK                            R4 K14 [0]
       41 LOADN                            R5 1
       42 LOADN                            R6 -120
       43 CALL                             R2 4 1
       44 SETTABLEKS                       R2 R1 K10 ["Size"]
       46 JUMP                             ; [+56]
       47 GETUPVAL                         R1 0
       48 GETIMPORT                        R2 K4 [Vector2.new]
       50 LOADK                            R3 K15 [0.5]
       51 LOADK                            R4 K15 [0.5]
       52 CALL                             R2 2 1
       53 SETTABLEKS                       R2 R1 K5 ["AnchorPoint"]
       55 GETUPVAL                         R1 0
       56 GETIMPORT                        R2 K8 [UDim2.fromScale]
       58 LOADK                            R3 K15 [0.5]
       59 LOADK                            R4 K15 [0.5]
       60 CALL                             R2 2 1
       61 SETTABLEKS                       R2 R1 K9 ["Position"]
       63 GETUPVAL                         R1 0
       64 GETIMPORT                        R2 K12 [UDim2.fromOffset]
       66 GETTABLEKS                       R4 R0 K16 ["width"]
       68 LOADN                            R6 2
       69 GETTABLEKS                       R7 R0 K17 ["bezelThickness"]
       71 MUL                              R5 R6 R7
       72 ADD                              R3 R4 R5
       73 GETTABLEKS                       R5 R0 K18 ["height"]
       75 LOADN                            R7 2
       76 GETTABLEKS                       R8 R0 K17 ["bezelThickness"]
       78 MUL                              R6 R7 R8
       79 ADD                              R4 R5 R6
       80 CALL                             R2 2 1
       81 SETTABLEKS                       R2 R1 K10 ["Size"]
       83 GETUPVAL                         R1 1
       84 GETIMPORT                        R2 K12 [UDim2.fromOffset]
       86 GETTABLEKS                       R3 R0 K17 ["bezelThickness"]
       88 GETTABLEKS                       R4 R0 K17 ["bezelThickness"]
       90 CALL                             R2 2 1
       91 SETTABLEKS                       R2 R1 K9 ["Position"]
       93 GETUPVAL                         R1 1
       94 GETIMPORT                        R2 K12 [UDim2.fromOffset]
       96 GETTABLEKS                       R3 R0 K16 ["width"]
       98 GETTABLEKS                       R4 R0 K18 ["height"]
      100 CALL                             R2 2 1
      101 SETTABLEKS                       R2 R1 K10 ["Size"]
      103 GETUPVAL                         R1 2
      104 GETIMPORT                        R2 K20 [UDim.new]
      106 LOADN                            R3 0
      107 GETTABLEKS                       R4 R0 K21 ["cornerRadius"]
      109 CALL                             R2 2 1
      110 SETTABLEKS                       R2 R1 K22 ["CornerRadius"]
      112 GETUPVAL                         R1 3
      113 GETIMPORT                        R2 K20 [UDim.new]
      115 LOADN                            R3 0
      116 GETTABLEKS                       R4 R0 K21 ["cornerRadius"]
      118 CALL                             R2 2 1
      119 SETTABLEKS                       R2 R1 K22 ["CornerRadius"]
      121 GETUPVAL                         R1 4
      122 GETIMPORT                        R2 K20 [UDim.new]
      124 LOADN                            R3 0
      125 LOADN                            R5 0
      126 GETTABLEKS                       R7 R0 K21 ["cornerRadius"]
      128 GETTABLEKS                       R8 R0 K17 ["bezelThickness"]
      130 SUB                              R6 R7 R8
      131 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
      133 GETIMPORT                        R4 K25 [math.max]
      135 CALL                             R4 2 1
      136 CALL                             R2 2 1
      137 SETTABLEKS                       R2 R1 K22 ["CornerRadius"]
      139 GETUPVAL                         R1 5
      140 GETTABLEKS                       R3 R0 K26 ["strokeThickness"]
      142 FASTCALL2K                       MATH_MAX R3 K27 ; [+4]
      144 LOADK                            R4 K27 [1]
      145 GETIMPORT                        R2 K25 [math.max]
      147 CALL                             R2 2 1
      148 SETTABLEKS                       R2 R1 K28 ["Thickness"]
      150 GETUPVAL                         R1 5
      151 LOADB                            R2 0
      152 GETTABLEKS                       R3 R0 K0 ["chrome"]
      154 JUMPIFEQKS                       R3 K1 ["None"] ; [+8]
      156 GETTABLEKS                       R3 R0 K26 ["strokeThickness"]
      158 LOADN                            R4 0
      159 JUMPIFLT                         R4 R3 ; [+2]
      161 LOADB                            R2 0 +1
      162 LOADB                            R2 1
      163 SETTABLEKS                       R2 R1 K29 ["Enabled"]
      165 GETUPVAL                         R1 6
      166 GETTABLEKS                       R2 R0 K30 ["label"]
      168 SETTABLEKS                       R2 R1 K31 ["Text"]
      170 GETUPVAL                         R1 6
      171 GETTABLEKS                       R3 R0 K0 ["chrome"]
      173 JUMPIFNOTEQKS                    R3 K1 ["None"] ; [+2]
      175 LOADB                            R2 0 +1
      176 LOADB                            R2 1
      177 SETTABLEKS                       R2 R1 K32 ["Visible"]
      179 GETUPVAL                         R1 7
      180 GETTABLEKS                       R3 R0 K0 ["chrome"]
      182 JUMPIFNOTEQKS                    R3 K1 ["None"] ; [+2]
      184 LOADB                            R2 0 +1
      185 LOADB                            R2 1
      186 SETTABLEKS                       R2 R1 K32 ["Visible"]
      188 GETUPVAL                         R1 8
      189 MOVE                             R2 R0
      190 CALL                             R1 1 0
      191 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Foundation"]
        3 GETTABLEKS                       R1 R1 K1 ["Utility"]
        5 GETTABLEKS                       R1 R1 K2 ["getTokens"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["getCanvasFoundationTheme"]
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["Foundation"]
       14 GETTABLEKS                       R3 R3 K4 ["Enums"]
       16 GETTABLEKS                       R3 R3 K5 ["Device"]
       18 GETTABLEKS                       R3 R3 K6 ["Desktop"]
       20 CALL                             R1 2 1
       21 GETTABLEKS                       R2 R1 K7 ["Color"]
       23 GETTABLEKS                       R2 R2 K8 ["Surface"]
       25 GETTABLEKS                       R2 R2 K9 ["Surface_0"]
       27 GETTABLEKS                       R3 R1 K7 ["Color"]
       29 GETTABLEKS                       R3 R3 K10 ["Stroke"]
       31 GETTABLEKS                       R3 R3 K11 ["Emphasis"]
       33 GETTABLEKS                       R4 R1 K7 ["Color"]
       35 GETTABLEKS                       R4 R4 K8 ["Surface"]
       37 GETTABLEKS                       R4 R4 K12 ["Surface_100"]
       39 GETTABLEKS                       R4 R4 K13 ["Color3"]
       41 SETUPVAL                         R4 1
       42 GETUPVAL                         R4 2
       43 GETTABLEKS                       R4 R4 K14 ["chrome"]
       45 JUMPIFNOTEQKS                    R4 K15 ["Bezel"] ; [+25]
       47 GETUPVAL                         R4 3
       48 GETIMPORT                        R5 K17 [Color3.new]
       50 LOADN                            R6 0
       51 LOADN                            R7 0
       52 LOADN                            R8 0
       53 CALL                             R5 3 1
       54 SETTABLEKS                       R5 R4 K18 ["BackgroundColor3"]
       56 GETUPVAL                         R4 3
       57 LOADN                            R5 0
       58 SETTABLEKS                       R5 R4 K19 ["BackgroundTransparency"]
       60 GETUPVAL                         R4 4
       61 GETTABLEKS                       R5 R2 K13 ["Color3"]
       63 SETTABLEKS                       R5 R4 K18 ["BackgroundColor3"]
       65 GETUPVAL                         R4 4
       66 GETTABLEKS                       R5 R2 K20 ["Transparency"]
       68 SETTABLEKS                       R5 R4 K19 ["BackgroundTransparency"]
       70 JUMP                             ; [+34]
       71 GETUPVAL                         R4 2
       72 GETTABLEKS                       R4 R4 K14 ["chrome"]
       74 JUMPIFNOTEQKS                    R4 K21 ["None"] ; [+16]
       76 GETUPVAL                         R4 3
       77 GETTABLEKS                       R5 R2 K13 ["Color3"]
       79 SETTABLEKS                       R5 R4 K18 ["BackgroundColor3"]
       81 GETUPVAL                         R4 3
       82 GETTABLEKS                       R5 R2 K20 ["Transparency"]
       84 SETTABLEKS                       R5 R4 K19 ["BackgroundTransparency"]
       86 GETUPVAL                         R4 4
       87 LOADN                            R5 1
       88 SETTABLEKS                       R5 R4 K19 ["BackgroundTransparency"]
       90 JUMP                             ; [+14]
       91 GETUPVAL                         R4 3
       92 GETTABLEKS                       R5 R2 K13 ["Color3"]
       94 SETTABLEKS                       R5 R4 K18 ["BackgroundColor3"]
       96 GETUPVAL                         R4 3
       97 GETTABLEKS                       R5 R2 K20 ["Transparency"]
       99 SETTABLEKS                       R5 R4 K19 ["BackgroundTransparency"]
      101 GETUPVAL                         R4 4
      102 LOADN                            R5 1
      103 SETTABLEKS                       R5 R4 K19 ["BackgroundTransparency"]
      105 GETUPVAL                         R4 5
      106 GETTABLEKS                       R5 R3 K13 ["Color3"]
      108 SETTABLEKS                       R5 R4 K7 ["Color"]
      110 GETUPVAL                         R4 5
      111 GETTABLEKS                       R5 R3 K20 ["Transparency"]
      113 SETTABLEKS                       R5 R4 K20 ["Transparency"]
      115 GETUPVAL                         R5 2
      116 GETTABLEKS                       R5 R5 K14 ["chrome"]
      118 JUMPIFNOTEQKS                    R5 K15 ["Bezel"] ; [+8]
      120 GETIMPORT                        R4 K17 [Color3.new]
      122 LOADN                            R5 0
      123 LOADN                            R6 0
      124 LOADN                            R7 0
      125 CALL                             R4 3 1
      126 JUMP                             ; [+10]
      127 GETUPVAL                         R5 2
      128 GETTABLEKS                       R5 R5 K14 ["chrome"]
      130 JUMPIFNOTEQKS                    R5 K10 ["Stroke"] ; [+3]
      132 GETUPVAL                         R4 1
      133 JUMP                             ; [+3]
      134 GETUPVAL                         R4 3
      135 GETTABLEKS                       R4 R4 K18 ["BackgroundColor3"]
      137 GETUPVAL                         R5 6
      138 LOADNIL                          R6
      139 LOADNIL                          R7
      140 FORGPREP                         R5
      141 SETTABLEKS                       R4 R9 K18 ["BackgroundColor3"]
      143 FORGLOOP                         R5 2 ; [-3]
      145 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["get"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETTABLEKS                       R3 R2 K1 ["id"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K1 ["id"]
       11 JUMPIFNOTEQ                      R3 R4 ; [+2]
       13 RETURN                           R0 0
       14 SETUPVAL                         R2 1
       15 GETUPVAL                         R3 2
       16 MOVE                             R4 R2
       17 CALL                             R3 1 0
       18 NAMECALL                         R3 R0 K2 ["applyTheme"]
       20 CALL                             R3 1 0
       21 GETUPVAL                         R3 3
       22 LOADNIL                          R4
       23 LOADNIL                          R5
       24 FORGPREP                         R3
       25 MOVE                             R8 R7
       26 MOVE                             R9 R2
       27 CALL                             R8 1 0
       28 FORGLOOP                         R3 2 ; [-4]
       30 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nextAfter"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["id"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R4 R1 K1 ["id"]
        9 NAMECALL                         R2 R0 K2 ["setProfile"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        3 MOVE                             R4 R1
        4 GETIMPORT                        R2 K2 [table.insert]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Destroy"]
        3 CALL                             R1 1 0
        4 GETIMPORT                        R1 K3 [table.clear]
        6 GETUPVAL                         R2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getDefault"]
        3 CALL                             R2 0 1
        4 NEWTABLE                         R3 0 0
        6 GETIMPORT                        R4 K3 [Color3.fromRGB]
        8 LOADN                            R5 245
        9 LOADN                            R6 245
       10 LOADN                            R7 245
       11 CALL                             R4 3 1
       12 GETIMPORT                        R5 K6 [Instance.new]
       14 LOADK                            R6 K7 ["Frame"]
       15 CALL                             R5 1 1
       16 LOADK                            R6 K8 ["__DeviceViewport"]
       17 SETTABLEKS                       R6 R5 K9 ["Name"]
       19 LOADN                            R6 0
       20 SETTABLEKS                       R6 R5 K10 ["BackgroundTransparency"]
       22 LOADN                            R6 0
       23 SETTABLEKS                       R6 R5 K11 ["BorderSizePixel"]
       25 LOADN                            R6 2
       26 SETTABLEKS                       R6 R5 K12 ["ZIndex"]
       28 SETTABLEKS                       R0 R5 K13 ["Parent"]
       30 GETIMPORT                        R6 K6 [Instance.new]
       32 LOADK                            R7 K14 ["UICorner"]
       33 CALL                             R6 1 1
       34 LOADK                            R7 K15 ["Corner"]
       35 SETTABLEKS                       R7 R6 K9 ["Name"]
       37 GETIMPORT                        R7 K17 [UDim.new]
       39 LOADN                            R8 0
       40 GETTABLEKS                       R9 R2 K18 ["cornerRadius"]
       42 CALL                             R7 2 1
       43 SETTABLEKS                       R7 R6 K19 ["CornerRadius"]
       45 SETTABLEKS                       R5 R6 K13 ["Parent"]
       47 GETIMPORT                        R7 K6 [Instance.new]
       49 LOADK                            R8 K7 ["Frame"]
       50 CALL                             R7 1 1
       51 LOADK                            R8 K20 ["__DeviceOutline"]
       52 SETTABLEKS                       R8 R7 K9 ["Name"]
       54 GETIMPORT                        R8 K23 [UDim2.fromScale]
       56 LOADN                            R9 1
       57 LOADN                            R10 1
       58 CALL                             R8 2 1
       59 SETTABLEKS                       R8 R7 K24 ["Size"]
       61 LOADN                            R8 1
       62 SETTABLEKS                       R8 R7 K10 ["BackgroundTransparency"]
       64 LOADN                            R8 0
       65 SETTABLEKS                       R8 R7 K11 ["BorderSizePixel"]
       67 LOADN                            R8 85
       68 SETTABLEKS                       R8 R7 K12 ["ZIndex"]
       70 SETTABLEKS                       R5 R7 K13 ["Parent"]
       72 GETIMPORT                        R8 K6 [Instance.new]
       74 LOADK                            R9 K14 ["UICorner"]
       75 CALL                             R8 1 1
       76 LOADK                            R9 K15 ["Corner"]
       77 SETTABLEKS                       R9 R8 K9 ["Name"]
       79 GETIMPORT                        R9 K17 [UDim.new]
       81 LOADN                            R10 0
       82 GETTABLEKS                       R11 R2 K18 ["cornerRadius"]
       84 CALL                             R9 2 1
       85 SETTABLEKS                       R9 R8 K19 ["CornerRadius"]
       87 SETTABLEKS                       R7 R8 K13 ["Parent"]
       89 GETIMPORT                        R9 K6 [Instance.new]
       91 LOADK                            R10 K25 ["UIStroke"]
       92 CALL                             R9 1 1
       93 LOADK                            R10 K26 ["Stroke"]
       94 SETTABLEKS                       R10 R9 K9 ["Name"]
       96 GETIMPORT                        R10 K30 [Enum.ApplyStrokeMode.Border]
       98 SETTABLEKS                       R10 R9 K28 ["ApplyStrokeMode"]
      100 GETTABLEKS                       R11 R2 K31 ["strokeThickness"]
      102 FASTCALL2K                       MATH_MAX R11 K32 ; [+4]
      104 LOADK                            R12 K32 [1]
      105 GETIMPORT                        R10 K35 [math.max]
      107 CALL                             R10 2 1
      108 SETTABLEKS                       R10 R9 K36 ["Thickness"]
      110 LOADB                            R10 0
      111 GETTABLEKS                       R11 R2 K37 ["chrome"]
      113 JUMPIFEQKS                       R11 K38 ["None"] ; [+8]
      115 GETTABLEKS                       R11 R2 K31 ["strokeThickness"]
      117 LOADN                            R12 0
      118 JUMPIFLT                         R12 R11 ; [+2]
      120 LOADB                            R10 0 +1
      121 LOADB                            R10 1
      122 SETTABLEKS                       R10 R9 K39 ["Enabled"]
      124 LOADK                            R10 K40 [0.35]
      125 SETTABLEKS                       R10 R9 K41 ["Transparency"]
      127 GETUPVAL                         R10 1
      128 SETTABLEKS                       R10 R9 K42 ["Color"]
      130 SETTABLEKS                       R7 R9 K13 ["Parent"]
      132 GETIMPORT                        R10 K6 [Instance.new]
      134 LOADK                            R11 K43 ["TextLabel"]
      135 CALL                             R10 1 1
      136 LOADK                            R11 K44 ["__DeviceFrameLabel"]
      137 SETTABLEKS                       R11 R10 K9 ["Name"]
      139 GETIMPORT                        R11 K46 [Vector2.new]
      141 LOADN                            R12 0
      142 LOADN                            R13 1
      143 CALL                             R11 2 1
      144 SETTABLEKS                       R11 R10 K47 ["AnchorPoint"]
      146 GETIMPORT                        R11 K49 [UDim2.fromOffset]
      148 LOADN                            R12 0
      149 LOADN                            R13 -6
      150 CALL                             R11 2 1
      151 SETTABLEKS                       R11 R10 K50 ["Position"]
      153 GETIMPORT                        R11 K51 [UDim2.new]
      155 LOADN                            R12 1
      156 LOADN                            R13 0
      157 LOADN                            R14 0
      158 LOADN                            R15 18
      159 CALL                             R11 4 1
      160 SETTABLEKS                       R11 R10 K24 ["Size"]
      162 LOADN                            R11 1
      163 SETTABLEKS                       R11 R10 K10 ["BackgroundTransparency"]
      165 LOADN                            R11 0
      166 SETTABLEKS                       R11 R10 K11 ["BorderSizePixel"]
      168 GETTABLEKS                       R11 R2 K52 ["label"]
      170 SETTABLEKS                       R11 R10 K53 ["Text"]
      172 GETUPVAL                         R11 2
      173 SETTABLEKS                       R11 R10 K54 ["TextColor3"]
      175 LOADK                            R11 K55 [0.1]
      176 SETTABLEKS                       R11 R10 K56 ["TextTransparency"]
      178 GETIMPORT                        R11 K59 [Enum.TextXAlignment.Left]
      180 SETTABLEKS                       R11 R10 K57 ["TextXAlignment"]
      182 GETIMPORT                        R11 K62 [Enum.TextYAlignment.Bottom]
      184 SETTABLEKS                       R11 R10 K60 ["TextYAlignment"]
      186 LOADN                            R11 12
      187 SETTABLEKS                       R11 R10 K63 ["TextSize"]
      189 GETIMPORT                        R11 K65 [Font.new]
      191 LOADK                            R12 K66 ["rbxasset://fonts/families/BuilderSans.json"]
      192 GETIMPORT                        R13 K69 [Enum.FontWeight.Medium]
      194 GETIMPORT                        R14 K72 [Enum.FontStyle.Normal]
      196 CALL                             R11 3 1
      197 SETTABLEKS                       R11 R10 K73 ["FontFace"]
      199 GETTABLEKS                       R12 R2 K37 ["chrome"]
      201 JUMPIFNOTEQKS                    R12 K38 ["None"] ; [+2]
      203 LOADB                            R11 0 +1
      204 LOADB                            R11 1
      205 SETTABLEKS                       R11 R10 K74 ["Visible"]
      207 LOADN                            R11 2
      208 SETTABLEKS                       R11 R10 K12 ["ZIndex"]
      210 SETTABLEKS                       R5 R10 K13 ["Parent"]
      212 GETIMPORT                        R11 K6 [Instance.new]
      214 LOADK                            R12 K7 ["Frame"]
      215 CALL                             R11 1 1
      216 LOADK                            R12 K75 ["DeviceContent"]
      217 SETTABLEKS                       R12 R11 K9 ["Name"]
      219 GETIMPORT                        R12 K49 [UDim2.fromOffset]
      221 GETTABLEKS                       R13 R2 K76 ["bezelThickness"]
      223 GETTABLEKS                       R14 R2 K76 ["bezelThickness"]
      225 CALL                             R12 2 1
      226 SETTABLEKS                       R12 R11 K50 ["Position"]
      228 GETIMPORT                        R12 K49 [UDim2.fromOffset]
      230 GETTABLEKS                       R13 R2 K77 ["width"]
      232 GETTABLEKS                       R14 R2 K78 ["height"]
      234 CALL                             R12 2 1
      235 SETTABLEKS                       R12 R11 K24 ["Size"]
      237 LOADN                            R12 1
      238 SETTABLEKS                       R12 R11 K10 ["BackgroundTransparency"]
      240 LOADN                            R12 0
      241 SETTABLEKS                       R12 R11 K11 ["BorderSizePixel"]
      243 LOADB                            R12 1
      244 SETTABLEKS                       R12 R11 K79 ["ClipsDescendants"]
      246 LOADN                            R12 3
      247 SETTABLEKS                       R12 R11 K12 ["ZIndex"]
      249 SETTABLEKS                       R5 R11 K13 ["Parent"]
      251 GETIMPORT                        R12 K6 [Instance.new]
      253 LOADK                            R13 K14 ["UICorner"]
      254 CALL                             R12 1 1
      255 LOADK                            R13 K15 ["Corner"]
      256 SETTABLEKS                       R13 R12 K9 ["Name"]
      258 GETIMPORT                        R13 K17 [UDim.new]
      260 LOADN                            R14 0
      261 LOADN                            R16 0
      262 GETTABLEKS                       R18 R2 K18 ["cornerRadius"]
      264 GETTABLEKS                       R19 R2 K76 ["bezelThickness"]
      266 SUB                              R17 R18 R19
      267 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
      269 GETIMPORT                        R15 K35 [math.max]
      271 CALL                             R15 2 1
      272 CALL                             R13 2 1
      273 SETTABLEKS                       R13 R12 K19 ["CornerRadius"]
      275 SETTABLEKS                       R11 R12 K13 ["Parent"]
      277 GETIMPORT                        R13 K6 [Instance.new]
      279 LOADK                            R14 K7 ["Frame"]
      280 CALL                             R13 1 1
      281 LOADK                            R14 K80 ["__DeviceBezelCornerMask"]
      282 SETTABLEKS                       R14 R13 K9 ["Name"]
      284 GETIMPORT                        R14 K23 [UDim2.fromScale]
      286 LOADN                            R15 1
      287 LOADN                            R16 1
      288 CALL                             R14 2 1
      289 SETTABLEKS                       R14 R13 K24 ["Size"]
      291 LOADN                            R14 1
      292 SETTABLEKS                       R14 R13 K10 ["BackgroundTransparency"]
      294 LOADN                            R14 0
      295 SETTABLEKS                       R14 R13 K11 ["BorderSizePixel"]
      297 LOADN                            R14 80
      298 SETTABLEKS                       R14 R13 K12 ["ZIndex"]
      300 SETTABLEKS                       R5 R13 K13 ["Parent"]
      302 NEWTABLE                         R14 0 0
      304 NEWCLOSURE                       R15 P0
      305 CAPTURE                          REF R2
      306 CAPTURE                          REF R4
      307 CAPTURE                          VAL R5
      308 NEWCLOSURE                       R16 P1
      309 CAPTURE                          REF R2
      310 CAPTURE                          REF R4
      311 CAPTURE                          VAL R5
      312 CAPTURE                          VAL R14
      313 NEWCLOSURE                       R17 P2
      314 CAPTURE                          REF R2
      315 CAPTURE                          REF R4
      316 CAPTURE                          VAL R5
      317 CAPTURE                          VAL R13
      318 CAPTURE                          VAL R14
      319 NEWCLOSURE                       R18 P3
      320 CAPTURE                          VAL R14
      321 CAPTURE                          VAL R13
      322 CAPTURE                          VAL R17
      323 NEWCLOSURE                       R19 P4
      324 CAPTURE                          VAL R5
      325 CAPTURE                          VAL R11
      326 CAPTURE                          VAL R6
      327 CAPTURE                          VAL R8
      328 CAPTURE                          VAL R12
      329 CAPTURE                          VAL R9
      330 CAPTURE                          VAL R10
      331 CAPTURE                          VAL R13
      332 CAPTURE                          VAL R18
      333 NEWTABLE                         R20 0 0
      335 NEWCLOSURE                       R21 P5
      336 CAPTURE                          REF R2
      337 SETTABLEKS                       R21 R20 K81 ["getProfile"]
      339 NEWCLOSURE                       R21 P6
      340 CAPTURE                          VAL R1
      341 CAPTURE                          REF R4
      342 CAPTURE                          REF R2
      343 CAPTURE                          VAL R5
      344 CAPTURE                          VAL R11
      345 CAPTURE                          VAL R9
      346 CAPTURE                          VAL R14
      347 SETTABLEKS                       R21 R20 K82 ["applyTheme"]
      349 NEWCLOSURE                       R21 P7
      350 CAPTURE                          UPVAL U0
      351 CAPTURE                          REF R2
      352 CAPTURE                          VAL R19
      353 CAPTURE                          VAL R3
      354 SETTABLEKS                       R21 R20 K83 ["setProfile"]
      356 NEWCLOSURE                       R21 P8
      357 CAPTURE                          UPVAL U0
      358 CAPTURE                          REF R2
      359 SETTABLEKS                       R21 R20 K84 ["cycle"]
      361 NEWCLOSURE                       R21 P9
      362 CAPTURE                          VAL R3
      363 SETTABLEKS                       R21 R20 K85 ["onProfileChanged"]
      365 NEWCLOSURE                       R21 P10
      366 CAPTURE                          VAL R5
      367 SETTABLEKS                       R21 R20 K86 ["getViewportFrame"]
      369 NEWCLOSURE                       R21 P11
      370 CAPTURE                          VAL R11
      371 SETTABLEKS                       R21 R20 K87 ["getContentFrame"]
      373 NEWCLOSURE                       R21 P12
      374 CAPTURE                          VAL R5
      375 CAPTURE                          VAL R3
      376 SETTABLEKS                       R21 R20 K88 ["destroy"]
      378 MOVE                             R21 R19
      379 MOVE                             R22 R2
      380 CALL                             R21 1 0
      381 CLOSEUPVALS                      R2
      382 RETURN                           R20 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["AppFramework"]
       11 GETTABLEKS                       R1 R1 K6 ["DeviceProfiles"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K9 [Color3.fromRGB]
       16 LOADN                            R2 140
       17 LOADN                            R3 146
       18 LOADN                            R4 158
       19 CALL                             R1 3 1
       20 GETIMPORT                        R2 K9 [Color3.fromRGB]
       22 LOADN                            R3 120
       23 LOADN                            R4 126
       24 LOADN                            R5 138
       25 CALL                             R2 3 1
       26 NEWTABLE                         R3 1 0
       28 DUPCLOSURE                       R4 K10 [PROTO_13]
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R4 R3 K11 ["mount"]
       34 RETURN                           R3 1
