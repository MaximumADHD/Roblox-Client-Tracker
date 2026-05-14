PROTO_0:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%.3f"]
        3 JUMPIFNOTEQKN                    R0 K4 [0] ; [+7]
        5 FASTCALL1                        MATH_ABS R0 ; [+3]
        6 MOVE                             R4 R0
        7 GETIMPORT                        R3 K7 [math.abs]
        9 CALL                             R3 1 1
       10 JUMP                             ; [+4]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K8 ["TICK_FREQUENCY"]
       14 MUL                              R3 R0 R4
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_1:
        0 LOADK                            R3 K0 ["\n"]
        1 GETUPVAL                         R6 0
        2 LOADK                            R8 K1 ["Curves"]
        3 MOVE                             R9 R0
        4 NAMECALL                         R6 R6 K2 ["getText"]
        6 CALL                             R6 3 1
        7 MOVE                             R4 R6
        8 LOADK                            R5 K3 [" "]
        9 CONCAT                           R2 R3 R5
       10 JUMPIFNOT                        R1 ; [+28]
       11 MOVE                             R3 R2
       12 GETUPVAL                         R4 0
       13 LOADK                            R6 K1 ["Curves"]
       14 LOADK                            R7 K4 ["TangentValuePerSecond"]
       15 DUPTABLE                         R8 K6 [{"value"}]
       16 GETIMPORT                        R9 K9 [string.format]
       18 LOADK                            R10 K10 ["%.3f"]
       19 JUMPIFNOTEQKN                    R1 K11 [0] ; [+7]
       21 FASTCALL1                        MATH_ABS R1 ; [+3]
       22 MOVE                             R12 R1
       23 GETIMPORT                        R11 K14 [math.abs]
       25 CALL                             R11 1 1
       26 JUMP                             ; [+4]
       27 GETUPVAL                         R12 1
       28 GETTABLEKS                       R12 R12 K15 ["TICK_FREQUENCY"]
       30 MUL                              R11 R1 R12
       31 CALL                             R9 2 1
       32 SETTABLEKS                       R9 R8 K5 ["value"]
       34 NAMECALL                         R4 R4 K2 ["getText"]
       36 CALL                             R4 4 1
       37 CONCAT                           R2 R3 R4
       38 RETURN                           R2 1
       39 MOVE                             R3 R2
       40 GETUPVAL                         R4 0
       41 LOADK                            R6 K1 ["Curves"]
       42 LOADK                            R7 K16 ["TangentAuto"]
       43 NAMECALL                         R4 R4 K2 ["getText"]
       45 CALL                             R4 3 1
       46 CONCAT                           R2 R3 R4
       47 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R2 K1 ["Localization"]
        6 LOADNIL                          R3
        7 DUPCLOSURE                       R4 K2 [PROTO_0]
        8 CAPTURE                          UPVAL U0
        9 NEWCLOSURE                       R5 P1
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U0
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R8 R8 K3 ["toString"]
       15 GETTABLEKS                       R9 R1 K4 ["Path"]
       17 JUMPIF                           R9 ; [+2]
       18 NEWTABLE                         R9 0 0
       20 CALL                             R8 1 1
       21 MOVE                             R6 R8
       22 LOADK                            R7 K5 ["\n"]
       23 CONCAT                           R3 R6 R7
       24 MOVE                             R6 R3
       25 LOADK                            R9 K6 ["Curves"]
       26 LOADK                            R10 K7 ["InterpolationMode2"]
       27 DUPTABLE                         R11 K9 [{"interpolationMode"}]
       28 GETTABLEKS                       R12 R1 K10 ["InterpolationMode"]
       30 GETTABLEKS                       R12 R12 K11 ["Name"]
       32 SETTABLEKS                       R12 R11 K8 ["interpolationMode"]
       34 NAMECALL                         R7 R2 K12 ["getText"]
       36 CALL                             R7 4 1
       37 CONCAT                           R3 R6 R7
       38 GETTABLEKS                       R6 R1 K13 ["PrevInterpolationMode"]
       40 GETIMPORT                        R7 K17 [Enum.KeyInterpolationMode.Cubic]
       42 JUMPIFNOTEQ                      R6 R7 ; [+8]
       44 MOVE                             R6 R3
       45 MOVE                             R7 R5
       46 LOADK                            R8 K18 ["LeftTangentLabel"]
       47 GETTABLEKS                       R9 R1 K19 ["LeftSlope"]
       49 CALL                             R7 2 1
       50 CONCAT                           R3 R6 R7
       51 GETTABLEKS                       R6 R1 K10 ["InterpolationMode"]
       53 GETIMPORT                        R7 K17 [Enum.KeyInterpolationMode.Cubic]
       55 JUMPIFNOTEQ                      R6 R7 ; [+8]
       57 MOVE                             R6 R3
       58 MOVE                             R7 R5
       59 LOADK                            R8 K20 ["RightTangentLabel"]
       60 GETTABLEKS                       R9 R1 K21 ["RightSlope"]
       62 CALL                             R7 2 1
       63 CONCAT                           R3 R6 R7
       64 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Width"]
        6 JUMPIF                           R3 ; [+3]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K3 ["KEYFRAME_WIDTH"]
       10 GETTABLEKS                       R4 R1 K4 ["Color"]
       12 GETTABLEKS                       R5 R1 K5 ["Selected"]
       14 GETTABLEKS                       R6 R1 K6 ["ZIndex"]
       16 NAMECALL                         R7 R0 K7 ["buildTooltip"]
       18 CALL                             R7 1 1
       19 JUMPIFNOT                        R5 ; [+4]
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R8 R8 K8 ["KEYFRAME_BORDER_SIZE_SELECTED"]
       23 JUMP                             ; [+3]
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R8 R8 K9 ["KEYFRAME_BORDER_SIZE"]
       27 JUMPIFNOT                        R5 ; [+9]
       28 GETTABLEKS                       R9 R2 K10 ["keyframe"]
       30 GETTABLEKS                       R9 R9 K11 ["Default"]
       32 GETTABLEKS                       R9 R9 K12 ["selected"]
       34 GETTABLEKS                       R9 R9 K13 ["borderColor"]
       36 JUMP                             ; [+1]
       37 MOVE                             R9 R4
       38 GETUPVAL                         R10 1
       39 GETTABLEKS                       R10 R10 K14 ["createElement"]
       41 LOADK                            R11 K15 ["ImageButton"]
       42 NEWTABLE                         R12 16 0
       44 GETIMPORT                        R13 K18 [UDim2.new]
       46 LOADN                            R14 0
       47 MOVE                             R15 R3
       48 LOADN                            R16 0
       49 MOVE                             R17 R3
       50 CALL                             R13 4 1
       51 SETTABLEKS                       R13 R12 K19 ["Size"]
       53 GETIMPORT                        R13 K21 [Vector2.new]
       55 LOADK                            R14 K22 [0.5]
       56 LOADK                            R15 K22 [0.5]
       57 CALL                             R13 2 1
       58 SETTABLEKS                       R13 R12 K23 ["AnchorPoint"]
       60 GETIMPORT                        R13 K18 [UDim2.new]
       62 LOADN                            R14 0
       63 GETTABLEKS                       R15 R1 K24 ["Position"]
       65 GETTABLEKS                       R15 R15 K25 ["X"]
       67 LOADN                            R16 0
       68 GETTABLEKS                       R17 R1 K24 ["Position"]
       70 GETTABLEKS                       R17 R17 K26 ["Y"]
       72 CALL                             R13 4 1
       73 SETTABLEKS                       R13 R12 K24 ["Position"]
       75 LOADN                            R13 45
       76 SETTABLEKS                       R13 R12 K27 ["Rotation"]
       78 LOADN                            R13 1
       79 SETTABLEKS                       R13 R12 K28 ["ImageTransparency"]
       81 LOADN                            R13 0
       82 SETTABLEKS                       R13 R12 K29 ["BackgroundTransparency"]
       84 LOADB                            R13 0
       85 SETTABLEKS                       R13 R12 K30 ["AutoButtonColor"]
       87 SETTABLEKS                       R8 R12 K31 ["BorderSizePixel"]
       89 SETTABLEKS                       R9 R12 K32 ["BorderColor3"]
       91 SETTABLEKS                       R4 R12 K33 ["BackgroundColor3"]
       93 SETTABLEKS                       R6 R12 K6 ["ZIndex"]
       95 GETUPVAL                         R13 1
       96 GETTABLEKS                       R13 R13 K34 ["Event"]
       98 GETTABLEKS                       R13 R13 K35 ["MouseButton2Click"]
      100 GETTABLEKS                       R14 R1 K36 ["OnRightClick"]
      102 SETTABLE                         R14 R12 R13
      103 GETUPVAL                         R13 1
      104 GETTABLEKS                       R13 R13 K34 ["Event"]
      106 GETTABLEKS                       R13 R13 K37 ["InputBegan"]
      108 GETTABLEKS                       R14 R1 K38 ["OnInputBegan"]
      110 SETTABLE                         R14 R12 R13
      111 GETUPVAL                         R13 1
      112 GETTABLEKS                       R13 R13 K34 ["Event"]
      114 GETTABLEKS                       R13 R13 K39 ["InputEnded"]
      116 GETTABLEKS                       R14 R1 K40 ["OnInputEnded"]
      118 SETTABLE                         R14 R12 R13
      119 DUPTABLE                         R13 K42 [{"Tooltip"}]
      120 MOVE                             R14 R7
      121 JUMPIFNOT                        R14 ; [+15]
      122 GETUPVAL                         R14 1
      123 GETTABLEKS                       R14 R14 K14 ["createElement"]
      125 GETUPVAL                         R15 2
      126 DUPTABLE                         R16 K46 [{"Text", "ShowDelay", "TextXAlignment"}]
      127 SETTABLEKS                       R7 R16 K43 ["Text"]
      129 LOADN                            R17 0
      130 SETTABLEKS                       R17 R16 K44 ["ShowDelay"]
      132 GETIMPORT                        R17 K49 [Enum.TextXAlignment.Left]
      134 SETTABLEKS                       R17 R16 K45 ["TextXAlignment"]
      136 CALL                             R14 2 1
      137 SETTABLEKS                       R14 R13 K41 ["Tooltip"]
      139 CALL                             R10 3 -1
      140 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["UI"]
       23 GETTABLEKS                       R3 R3 K10 ["Tooltip"]
       25 GETTABLEKS                       R4 R2 K11 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K12 ["withContext"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R0 K13 ["Src"]
       33 GETTABLEKS                       R7 R7 K14 ["Util"]
       35 GETTABLEKS                       R7 R7 K15 ["Constants"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R8 R0 K13 ["Src"]
       42 GETTABLEKS                       R8 R8 K14 ["Util"]
       44 GETTABLEKS                       R8 R8 K16 ["PathUtils"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R1 K17 ["PureComponent"]
       49 LOADK                            R10 K18 ["Keyframe"]
       50 NAMECALL                         R8 R8 K19 ["extend"]
       52 CALL                             R8 2 1
       53 DUPCLOSURE                       R9 K20 [PROTO_2]
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R7
       56 SETTABLEKS                       R9 R8 K21 ["buildTooltip"]
       58 DUPCLOSURE                       R9 K22 [PROTO_3]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R3
       62 SETTABLEKS                       R9 R8 K23 ["render"]
       64 MOVE                             R9 R5
       65 DUPTABLE                         R10 K26 [{"Stylizer", "Localization"}]
       66 GETTABLEKS                       R11 R4 K24 ["Stylizer"]
       68 SETTABLEKS                       R11 R10 K24 ["Stylizer"]
       70 GETTABLEKS                       R11 R4 K25 ["Localization"]
       72 SETTABLEKS                       R11 R10 K25 ["Localization"]
       74 CALL                             R9 1 1
       75 MOVE                             R10 R8
       76 CALL                             R9 1 1
       77 MOVE                             R8 R9
       78 RETURN                           R8 1
