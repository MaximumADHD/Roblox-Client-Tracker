PROTO_0:
        0 DUPTABLE                         R1 K3 [{"time", "sinTime", "animatingDotIndex"}]
        1 LOADK                            R2 K4 [1.5707963267949]
        2 SETTABLEKS                       R2 R1 K0 ["time"]
        4 LOADN                            R2 1
        5 SETTABLEKS                       R2 R1 K1 ["sinTime"]
        7 LOADN                            R2 1
        8 SETTABLEKS                       R2 R1 K2 ["animatingDotIndex"]
       10 SETTABLEKS                       R1 R0 K5 ["state"]
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["updateAnimation"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["RenderStepped"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["connect"]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K2 ["animationConnection"]
       10 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["animationConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["animationConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["sinTime"]
        2 GETTABLEKS                       R3 R0 K1 ["animatingDotIndex"]
        4 GETTABLEKS                       R5 R0 K2 ["time"]
        6 GETUPVAL                         R6 0
        7 ADD                              R4 R5 R6
        8 MULK                             R6 R4 K3 [5]
        9 FASTCALL1                        MATH_SIN R6 ; [+2]
       10 GETIMPORT                        R5 K6 [math.sin]
       12 CALL                             R5 1 1
       13 LOADN                            R6 0
       14 JUMPIFNOTLE                      R6 R2 ; [+4]
       16 LOADN                            R6 0
       17 JUMPIFLT                         R5 R6 ; [+7]
       19 LOADN                            R6 0
       20 JUMPIFNOTLT                      R2 R6 ; [+6]
       22 LOADN                            R6 0
       23 JUMPIFNOTLE                      R6 R5 ; [+3]
       25 MODK                             R6 R3 K7 [1]
       26 ADDK                             R3 R6 K7 [1]
       27 DUPTABLE                         R6 K8 [{"time", "sinTime", "animatingDotIndex"}]
       28 SETTABLEKS                       R4 R6 K2 ["time"]
       30 SETTABLEKS                       R5 R6 K0 ["sinTime"]
       32 SETTABLEKS                       R3 R6 K1 ["animatingDotIndex"]
       34 RETURN                           R6 1

PROTO_5:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R1
        2 NAMECALL                         R2 R0 K0 ["setState"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 SUB                              R5 R1 R0
        1 MUL                              R4 R5 R2
        2 ADD                              R3 R0 R4
        3 RETURN                           R3 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["AnchorPoint"]
        6 GETTABLEKS                       R4 R1 K3 ["Position"]
        8 GETTABLEKS                       R5 R1 K4 ["ZIndex"]
       10 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       12 GETTABLEKS                       R7 R1 K6 ["Stylizer"]
       14 GETTABLEKS                       R8 R7 K7 ["Size"]
       16 GETTABLEKS                       R10 R1 K7 ["Size"]
       18 OR                               R9 R10 R8
       19 GETTABLEKS                       R11 R1 K9 ["PaddingLeft"]
       21 ORK                              R10 R11 K8 [0]
       22 GETIMPORT                        R11 K12 [Color3.new]
       24 LOADN                            R12 1
       25 LOADN                            R13 1
       26 LOADN                            R14 1
       27 CALL                             R11 3 1
       28 DUPTABLE                         R12 K14 [{"UIListLayout"}]
       29 GETUPVAL                         R14 0
       30 GETTABLEKS                       R13 R14 K15 ["createElement"]
       32 LOADK                            R14 K13 ["UIListLayout"]
       33 DUPTABLE                         R15 K21 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
       34 GETIMPORT                        R16 K23 [Enum.SortOrder.LayoutOrder]
       36 SETTABLEKS                       R16 R15 K16 ["SortOrder"]
       38 GETIMPORT                        R16 K25 [Enum.FillDirection.Horizontal]
       40 SETTABLEKS                       R16 R15 K17 ["FillDirection"]
       42 GETIMPORT                        R16 K27 [UDim.new]
       44 LOADN                            R17 1
       45 LOADN                            R18 0
       46 CALL                             R16 2 1
       47 SETTABLEKS                       R16 R15 K18 ["Padding"]
       49 GETIMPORT                        R16 K29 [Enum.HorizontalAlignment.Center]
       51 SETTABLEKS                       R16 R15 K19 ["HorizontalAlignment"]
       53 GETIMPORT                        R16 K30 [Enum.VerticalAlignment.Center]
       55 SETTABLEKS                       R16 R15 K20 ["VerticalAlignment"]
       57 CALL                             R13 2 1
       58 SETTABLEKS                       R13 R12 K13 ["UIListLayout"]
       60 GETTABLEKS                       R14 R2 K31 ["sinTime"]
       62 FASTCALL1                        MATH_ABS R14 ; [+2]
       63 GETIMPORT                        R13 K34 [math.abs]
       65 CALL                             R13 1 1
       66 GETTABLEKS                       R14 R2 K35 ["animatingDotIndex"]
       68 LOADN                            R17 1
       69 LOADN                            R15 1
       70 LOADN                            R16 1
       71 FORNPREP                         R15
       72 LOADK                            R18 K36 [0.5]
       73 JUMPIFNOTEQ                      R17 R14 ; [+8]
       75 GETGLOBAL                        R19 K37 ["lerpNum"]
       77 LOADK                            R20 K36 [0.5]
       78 LOADN                            R21 0
       79 MOVE                             R22 R13
       80 CALL                             R19 3 1
       81 MOVE                             R18 R19
       82 LOADK                            R20 K38 ["Frame"]
       83 MOVE                             R21 R17
       84 CONCAT                           R19 R20 R21
       85 GETUPVAL                         R21 0
       86 GETTABLEKS                       R20 R21 K15 ["createElement"]
       88 LOADK                            R21 K38 ["Frame"]
       89 DUPTABLE                         R22 K42 [{"Size", "LayoutOrder", "BorderSizePixel", "BackgroundColor3", "BackgroundTransparency"}]
       90 GETIMPORT                        R23 K44 [UDim2.new]
       92 LOADK                            R24 K45 [0.666666666666667]
       93 MOVE                             R25 R10
       94 LOADK                            R26 K45 [0.666666666666667]
       95 LOADN                            R27 0
       96 CALL                             R23 4 1
       97 SETTABLEKS                       R23 R22 K7 ["Size"]
       99 SETTABLEKS                       R17 R22 K5 ["LayoutOrder"]
      101 LOADN                            R23 0
      102 SETTABLEKS                       R23 R22 K39 ["BorderSizePixel"]
      104 SETTABLEKS                       R11 R22 K40 ["BackgroundColor3"]
      106 LOADN                            R23 1
      107 SETTABLEKS                       R23 R22 K41 ["BackgroundTransparency"]
      109 DUPTABLE                         R23 K47 [{"Image"}]
      110 GETUPVAL                         R25 0
      111 GETTABLEKS                       R24 R25 K15 ["createElement"]
      113 LOADK                            R25 K48 ["ImageLabel"]
      114 DUPTABLE                         R26 K50 [{"AnchorPoint", "BackgroundTransparency", "Size", "Position", "Image", "ImageTransparency", "LayoutOrder"}]
      115 GETIMPORT                        R27 K52 [Vector2.new]
      117 LOADN                            R28 0
      118 LOADK                            R29 K36 [0.5]
      119 CALL                             R27 2 1
      120 SETTABLEKS                       R27 R26 K2 ["AnchorPoint"]
      122 LOADN                            R27 1
      123 SETTABLEKS                       R27 R26 K41 ["BackgroundTransparency"]
      125 GETIMPORT                        R27 K44 [UDim2.new]
      127 LOADN                            R28 0
      128 LOADN                            R29 8
      129 LOADN                            R30 0
      130 LOADN                            R31 8
      131 CALL                             R27 4 1
      132 SETTABLEKS                       R27 R26 K7 ["Size"]
      134 GETIMPORT                        R27 K44 [UDim2.new]
      136 LOADN                            R28 0
      137 MOVE                             R29 R10
      138 LOADK                            R30 K36 [0.5]
      139 LOADN                            R31 0
      140 CALL                             R27 4 1
      141 SETTABLEKS                       R27 R26 K3 ["Position"]
      143 LOADK                            R27 K53 ["rbxasset://textures/AnimationEditor/FaceCaptureUI/FlashingDot.png"]
      144 SETTABLEKS                       R27 R26 K46 ["Image"]
      146 SETTABLEKS                       R18 R26 K49 ["ImageTransparency"]
      148 LOADN                            R27 2
      149 SETTABLEKS                       R27 R26 K5 ["LayoutOrder"]
      151 CALL                             R24 2 1
      152 SETTABLEKS                       R24 R23 K46 ["Image"]
      154 CALL                             R20 3 1
      155 SETTABLE                         R20 R12 R19
      156 FORNLOOP                         R15
      157 GETUPVAL                         R16 0
      158 GETTABLEKS                       R15 R16 K15 ["createElement"]
      160 LOADK                            R16 K38 ["Frame"]
      161 DUPTABLE                         R17 K54 [{"AnchorPoint", "Position", "Size", "ZIndex", "LayoutOrder", "BorderSizePixel", "BackgroundTransparency"}]
      162 SETTABLEKS                       R3 R17 K2 ["AnchorPoint"]
      164 SETTABLEKS                       R4 R17 K3 ["Position"]
      166 SETTABLEKS                       R9 R17 K7 ["Size"]
      168 SETTABLEKS                       R5 R17 K4 ["ZIndex"]
      170 SETTABLEKS                       R6 R17 K5 ["LayoutOrder"]
      172 LOADN                            R18 0
      173 SETTABLEKS                       R18 R17 K39 ["BorderSizePixel"]
      175 LOADN                            R18 1
      176 SETTABLEKS                       R18 R17 K41 ["BackgroundTransparency"]
      178 MOVE                             R18 R12
      179 CALL                             R15 3 -1
      180 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationClipEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["Roact"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R2 K13 ["ContextServices"]
       29 GETTABLEKS                       R5 R4 K14 ["withContext"]
       31 GETTABLEKS                       R7 R2 K15 ["Util"]
       33 GETTABLEKS                       R6 R7 K16 ["Typecheck"]
       35 GETTABLEKS                       R7 R3 K17 ["PureComponent"]
       37 LOADK                            R9 K18 ["FlashingDot"]
       38 NAMECALL                         R7 R7 K19 ["extend"]
       40 CALL                             R7 2 1
       41 GETTABLEKS                       R8 R6 K20 ["wrap"]
       43 MOVE                             R9 R7
       44 GETIMPORT                        R10 K5 [script]
       46 CALL                             R8 2 0
       47 DUPCLOSURE                       R8 K21 [PROTO_0]
       48 SETTABLEKS                       R8 R7 K22 ["init"]
       50 DUPCLOSURE                       R8 K23 [PROTO_2]
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R8 R7 K24 ["didMount"]
       54 DUPCLOSURE                       R8 K25 [PROTO_3]
       55 SETTABLEKS                       R8 R7 K26 ["willUnmount"]
       57 DUPCLOSURE                       R8 K27 [PROTO_5]
       58 SETTABLEKS                       R8 R7 K28 ["updateAnimation"]
       60 DUPCLOSURE                       R8 K29 [PROTO_6]
       61 SETGLOBAL                        R8 K30 ["lerpNum"]
       63 DUPCLOSURE                       R8 K31 [PROTO_7]
       64 CAPTURE                          VAL R3
       65 SETTABLEKS                       R8 R7 K32 ["render"]
       67 MOVE                             R8 R5
       68 DUPTABLE                         R9 K34 [{"Stylizer"}]
       69 GETTABLEKS                       R10 R4 K33 ["Stylizer"]
       71 SETTABLEKS                       R10 R9 K33 ["Stylizer"]
       73 CALL                             R8 1 1
       74 MOVE                             R9 R7
       75 CALL                             R8 1 1
       76 MOVE                             R7 R8
       77 RETURN                           R7 1
