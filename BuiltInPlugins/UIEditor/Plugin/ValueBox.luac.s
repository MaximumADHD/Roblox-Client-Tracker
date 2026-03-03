PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["m_imageLabel"]
        2 GETTABLEKS                       R1 R2 K1 ["Size"]
        4 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["m_imageLabel"]
        2 SETTABLEKS                       R1 R2 K1 ["Position"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["m_imageLabel"]
        2 SETTABLEKS                       R1 R2 K1 ["AnchorPoint"]
        4 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R3 K0 ["Font"]
        1 NAMECALL                         R1 R0 K1 ["GetStyled"]
        3 CALL                             R1 2 1
        4 GETIMPORT                        R2 K4 [Enum.Font.Unknown]
        6 JUMPIFNOTEQ                      R1 R2 ; [+5]
        8 GETIMPORT                        R2 K7 [Vector2.new]
       10 CALL                             R2 0 -1
       11 RETURN                           R2 -1
       12 GETUPVAL                         R2 0
       13 LOADK                            R6 K8 ["Text"]
       14 NAMECALL                         R4 R0 K1 ["GetStyled"]
       16 CALL                             R4 2 1
       17 LOADK                            R7 K9 ["TextSize"]
       18 NAMECALL                         R5 R0 K1 ["GetStyled"]
       20 CALL                             R5 2 1
       21 MOVE                             R6 R1
       22 GETIMPORT                        R7 K7 [Vector2.new]
       24 LOADN                            R8 0
       25 LOADN                            R9 0
       26 CALL                             R7 2 -1
       27 NAMECALL                         R2 R2 K10 ["GetTextSize"]
       29 CALL                             R2 -1 -1
       30 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["ValueBoxes"]
        2 NAMECALL                         R2 R2 K1 ["findOrCreateScreenGui"]
        4 CALL                             R2 2 1
        5 GETTABLEKS                       R3 R0 K2 ["m_textLabel"]
        7 SETTABLEKS                       R1 R3 K3 ["Text"]
        9 LOADK                            R4 K4 [0.025]
       10 GETTABLEKS                       R6 R2 K5 ["AbsoluteSize"]
       12 GETTABLEKS                       R5 R6 K6 ["Y"]
       14 MUL                              R3 R4 R5
       15 LOADN                            R6 12
       16 LOADN                            R7 15
       17 FASTCALL3                        MATH_CLAMP R3 R6 R7
       19 MOVE                             R5 R3
       20 GETIMPORT                        R4 K9 [math.clamp]
       22 CALL                             R4 3 1
       23 MOVE                             R3 R4
       24 GETTABLEKS                       R4 R0 K2 ["m_textLabel"]
       26 SETTABLEKS                       R3 R4 K10 ["TextSize"]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R5 R0 K2 ["m_textLabel"]
       31 CALL                             R4 1 1
       32 LOADK                            R6 K11 [0.00857142857142857]
       33 GETTABLEKS                       R8 R2 K5 ["AbsoluteSize"]
       35 GETTABLEKS                       R7 R8 K12 ["X"]
       37 MUL                              R5 R6 R7
       38 LOADN                            R8 0
       39 GETUPVAL                         R10 2
       40 GETTABLEKS                       R9 R10 K12 ["X"]
       42 FASTCALL3                        MATH_CLAMP R5 R8 R9
       44 MOVE                             R7 R5
       45 GETIMPORT                        R6 K9 [math.clamp]
       47 CALL                             R6 3 1
       48 MOVE                             R5 R6
       49 GETUPVAL                         R9 2
       50 GETTABLEKS                       R8 R9 K12 ["X"]
       52 DIV                              R7 R5 R8
       53 GETUPVAL                         R9 2
       54 GETTABLEKS                       R8 R9 K6 ["Y"]
       56 MUL                              R6 R7 R8
       57 GETTABLEKS                       R7 R0 K2 ["m_textLabel"]
       59 GETIMPORT                        R8 K15 [UDim2.new]
       61 LOADN                            R9 0
       62 GETTABLEKS                       R10 R4 K12 ["X"]
       64 LOADN                            R11 0
       65 GETTABLEKS                       R12 R4 K6 ["Y"]
       67 CALL                             R8 4 1
       68 SETTABLEKS                       R8 R7 K16 ["Size"]
       70 GETTABLEKS                       R8 R4 K12 ["X"]
       72 LOADN                            R10 2
       73 MUL                              R9 R10 R5
       74 ADD                              R7 R8 R9
       75 GETTABLEKS                       R9 R4 K6 ["Y"]
       77 LOADN                            R11 2
       78 MUL                              R10 R11 R6
       79 ADD                              R8 R9 R10
       80 GETTABLEKS                       R9 R0 K17 ["m_imageLabel"]
       82 GETIMPORT                        R10 K15 [UDim2.new]
       84 LOADN                            R11 0
       85 MOVE                             R12 R7
       86 LOADN                            R13 0
       87 MOVE                             R14 R8
       88 CALL                             R10 4 1
       89 SETTABLEKS                       R10 R9 K16 ["Size"]
       91 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["m_imageLabel"]
        2 SETTABLEKS                       R1 R2 K1 ["Visible"]
        4 GETTABLEKS                       R2 R0 K2 ["m_textLabel"]
        6 SETTABLEKS                       R1 R2 K1 ["Visible"]
        8 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["ImageLabel"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["UIEditorValueBoxImageLabel"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K6 ["ValueBoxes"]
        9 NAMECALL                         R1 R1 K7 ["findOrCreateScreenGui"]
       11 CALL                             R1 2 1
       12 LOADN                            R2 1
       13 SETTABLEKS                       R2 R1 K8 ["DisplayOrder"]
       15 SETTABLEKS                       R1 R0 K9 ["Parent"]
       17 LOADN                            R2 1
       18 SETTABLEKS                       R2 R0 K10 ["BackgroundTransparency"]
       20 LOADK                            R2 K11 ["rbxasset://textures/StudioUIEditor/valueBoxRoundedRectangle.png"]
       21 SETTABLEKS                       R2 R0 K12 ["Image"]
       23 GETIMPORT                        R2 K15 [Color3.fromRGB]
       25 LOADN                            R3 255
       26 LOADN                            R4 205
       27 LOADN                            R5 0
       28 CALL                             R2 3 1
       29 SETTABLEKS                       R2 R0 K16 ["ImageColor3"]
       31 GETIMPORT                        R2 K20 [Enum.ScaleType.Slice]
       33 SETTABLEKS                       R2 R0 K18 ["ScaleType"]
       35 GETIMPORT                        R2 K22 [Rect.new]
       37 LOADN                            R3 3
       38 LOADN                            R4 3
       39 LOADN                            R5 13
       40 LOADN                            R6 13
       41 CALL                             R2 4 1
       42 SETTABLEKS                       R2 R0 K23 ["SliceCenter"]
       44 RETURN                           R0 1

PROTO_7:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["TextLabel"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["UIEditorValueBoxTexLabel"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 GETIMPORT                        R1 K7 [Color3.new]
        9 LOADN                            R2 0
       10 LOADN                            R3 0
       11 LOADN                            R4 0
       12 CALL                             R1 3 1
       13 SETTABLEKS                       R1 R0 K8 ["TextColor3"]
       15 GETIMPORT                        R1 K10 [Color3.fromRGB]
       17 LOADN                            R2 118
       18 LOADN                            R3 118
       19 LOADN                            R4 118
       20 CALL                             R1 3 1
       21 SETTABLEKS                       R1 R0 K11 ["BackgroundColor3"]
       23 LOADN                            R1 1
       24 SETTABLEKS                       R1 R0 K12 ["BackgroundTransparency"]
       26 LOADN                            R1 0
       27 SETTABLEKS                       R1 R0 K13 ["BorderSizePixel"]
       29 GETIMPORT                        R1 K17 [Enum.Font.SourceSans]
       31 SETTABLEKS                       R1 R0 K15 ["Font"]
       33 GETIMPORT                        R1 K20 [Enum.TextXAlignment.Center]
       35 SETTABLEKS                       R1 R0 K18 ["TextXAlignment"]
       37 GETIMPORT                        R1 K22 [Enum.TextYAlignment.Center]
       39 SETTABLEKS                       R1 R0 K21 ["TextYAlignment"]
       41 LOADN                            R1 15
       42 SETTABLEKS                       R1 R0 K23 ["TextSize"]
       44 GETIMPORT                        R1 K25 [Vector2.new]
       46 LOADK                            R2 K26 [0.5]
       47 LOADK                            R3 K26 [0.5]
       48 CALL                             R1 2 1
       49 SETTABLEKS                       R1 R0 K27 ["AnchorPoint"]
       51 GETIMPORT                        R1 K29 [UDim2.new]
       53 LOADK                            R2 K26 [0.5]
       54 LOADN                            R3 0
       55 LOADK                            R4 K26 [0.5]
       56 LOADN                            R5 254
       57 CALL                             R1 4 1
       58 SETTABLEKS                       R1 R0 K30 ["Position"]
       60 RETURN                           R0 1

PROTO_8:
        0 NEWTABLE                         R1 2 0
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R1 K0 ["m_imageLabel"]
        6 JUMPIFEQKNIL                     R0 ; [+5]
        8 GETTABLEKS                       R2 R1 K0 ["m_imageLabel"]
       10 SETTABLEKS                       R0 R2 K1 ["Parent"]
       12 GETUPVAL                         R2 1
       13 CALL                             R2 0 1
       14 SETTABLEKS                       R2 R1 K2 ["m_textLabel"]
       16 GETTABLEKS                       R2 R1 K2 ["m_textLabel"]
       18 GETTABLEKS                       R3 R1 K0 ["m_imageLabel"]
       20 SETTABLEKS                       R3 R2 K1 ["Parent"]
       22 GETUPVAL                         R4 2
       23 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       25 MOVE                             R3 R1
       26 GETIMPORT                        R2 K4 [setmetatable]
       28 CALL                             R2 2 1
       29 RETURN                           R2 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["m_imageLabel"]
        2 NAMECALL                         R1 R1 K1 ["Destroy"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K1 [require]
        5 GETIMPORT                        R4 K3 [script]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["CoreGuiManager"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K7 [game]
       14 LOADK                            R4 K8 ["TextService"]
       15 NAMECALL                         R2 R2 K9 ["GetService"]
       17 CALL                             R2 2 1
       18 GETIMPORT                        R3 K12 [Vector2.new]
       20 LOADN                            R4 12
       21 LOADN                            R5 4
       22 CALL                             R3 2 1
       23 DUPCLOSURE                       R4 K13 [PROTO_0]
       24 SETTABLEKS                       R4 R0 K14 ["getSize"]
       26 DUPCLOSURE                       R4 K15 [PROTO_1]
       27 SETTABLEKS                       R4 R0 K16 ["setPosition"]
       29 DUPCLOSURE                       R4 K17 [PROTO_2]
       30 SETTABLEKS                       R4 R0 K18 ["setAnchorPoint"]
       32 DUPCLOSURE                       R4 K19 [PROTO_3]
       33 CAPTURE                          VAL R2
       34 DUPCLOSURE                       R5 K20 [PROTO_4]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R3
       38 SETTABLEKS                       R5 R0 K21 ["setText"]
       40 DUPCLOSURE                       R5 K22 [PROTO_5]
       41 SETTABLEKS                       R5 R0 K23 ["setVisible"]
       43 DUPCLOSURE                       R5 K24 [PROTO_6]
       44 CAPTURE                          VAL R1
       45 DUPCLOSURE                       R6 K25 [PROTO_7]
       46 DUPCLOSURE                       R7 K26 [PROTO_8]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R7 R0 K11 ["new"]
       52 SETTABLEKS                       R0 R0 K27 ["__index"]
       54 DUPCLOSURE                       R7 K28 [PROTO_9]
       55 SETTABLEKS                       R7 R0 K29 ["Destroy"]
       57 RETURN                           R0 1
