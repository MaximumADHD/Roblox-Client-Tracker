PROTO_0:
        0 DUPTABLE                         R1 K3 [{[1] = 1, ["minorInterval"] = 1}]
        1 SETTABLEKS                       R1 R0 K4 ["state"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["VerticalZoom"]
        2 FASTCALL2K                       MATH_MIN R2 K1 ; [+4]
        4 LOADK                            R3 K1 [0.99]
        5 GETIMPORT                        R1 K4 [math.min]
        7 CALL                             R1 2 1
        8 GETTABLEKS                       R4 R0 K5 ["MaxValue"]
       10 GETTABLEKS                       R5 R0 K6 ["MinValue"]
       12 SUB                              R3 R4 R5
       13 SUBRK                            R4 K7 [1] R1
       14 MUL                              R2 R3 R4
       15 GETTABLEKS                       R3 R0 K8 ["ParentSize"]
       17 GETTABLEKS                       R3 R3 K9 ["Y"]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K10 ["SCALE_TICK_SPACING"]
       22 MUL                              R5 R6 R2
       23 DIV                              R4 R5 R3
       24 LOADN                            R6 10
       25 FASTCALL1                        MATH_LOG10 R4 ; [+3]
       26 MOVE                             R9 R4
       27 GETIMPORT                        R8 K12 [math.log10]
       29 CALL                             R8 1 1
       30 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       31 GETIMPORT                        R7 K14 [math.floor]
       33 CALL                             R7 1 1
       34 FASTCALL2                        MATH_POW R6 R7 ; [+3]
       36 GETIMPORT                        R5 K16 [math.pow]
       38 CALL                             R5 2 1
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K17 ["SCALE_NUM_TICKS"]
       42 MUL                              R6 R7 R5
       43 JUMPIFNOTLT                      R4 R6 ; [+3]
       45 MOVE                             R7 R5
       46 RETURN                           R7 1
       47 MOVE                             R7 R6
       48 RETURN                           R7 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["MinValue"]
        4 GETTABLEKS                       R4 R2 K2 ["MaxValue"]
        6 GETTABLEKS                       R5 R2 K3 ["VerticalScroll"]
        8 GETTABLEKS                       R6 R2 K4 ["VerticalZoom"]
       10 FASTCALL2K                       MATH_MIN R6 K5 ; [+5]
       12 MOVE                             R8 R6
       13 LOADK                            R9 K5 [0.99]
       14 GETIMPORT                        R7 K8 [math.min]
       16 CALL                             R7 2 1
       17 MOVE                             R6 R7
       18 SUBRK                            R8 K9 [1] R6
       19 DIVRK                            R7 K9 [1] R8
       20 SUB                              R8 R4 R1
       21 SUB                              R9 R4 R3
       22 DIV                              R1 R8 R9
       23 MUL                              R8 R5 R6
       24 SUB                              R1 R1 R8
       25 MUL                              R1 R1 R7
       26 GETTABLEKS                       R10 R2 K10 ["ParentSize"]
       28 GETTABLEKS                       R10 R10 K11 ["Y"]
       30 MUL                              R9 R1 R10
       31 LOADN                            R12 2
       32 GETUPVAL                         R13 0
       33 GETTABLEKS                       R13 R13 K12 ["CURVE_CANVAS_PADDING"]
       35 MUL                              R11 R12 R13
       36 SUBRK                            R10 K9 [1] R11
       37 MUL                              R8 R9 R10
       38 GETTABLEKS                       R10 R2 K10 ["ParentSize"]
       40 GETTABLEKS                       R10 R10 K11 ["Y"]
       42 GETUPVAL                         R11 0
       43 GETTABLEKS                       R11 R11 K12 ["CURVE_CANVAS_PADDING"]
       45 MUL                              R9 R10 R11
       46 ADD                              R1 R8 R9
       47 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["MinValue"]
        4 GETTABLEKS                       R4 R2 K2 ["MaxValue"]
        6 GETTABLEKS                       R5 R2 K3 ["VerticalScroll"]
        8 GETTABLEKS                       R6 R2 K4 ["VerticalZoom"]
       10 FASTCALL2K                       MATH_MIN R6 K5 ; [+5]
       12 MOVE                             R8 R6
       13 LOADK                            R9 K5 [0.99]
       14 GETIMPORT                        R7 K8 [math.min]
       16 CALL                             R7 2 1
       17 MOVE                             R6 R7
       18 SUBRK                            R8 K9 [1] R6
       19 DIVRK                            R7 K9 [1] R8
       20 GETTABLEKS                       R10 R2 K10 ["ParentSize"]
       22 GETTABLEKS                       R10 R10 K11 ["Y"]
       24 GETUPVAL                         R11 0
       25 GETTABLEKS                       R11 R11 K12 ["CURVE_CANVAS_PADDING"]
       27 MUL                              R9 R10 R11
       28 SUB                              R8 R1 R9
       29 GETTABLEKS                       R10 R2 K10 ["ParentSize"]
       31 GETTABLEKS                       R10 R10 K11 ["Y"]
       33 LOADN                            R13 2
       34 GETUPVAL                         R14 0
       35 GETTABLEKS                       R14 R14 K12 ["CURVE_CANVAS_PADDING"]
       37 MUL                              R12 R13 R14
       38 SUBRK                            R11 K9 [1] R12
       39 MUL                              R9 R10 R11
       40 DIV                              R1 R8 R9
       41 DIV                              R1 R1 R7
       42 MUL                              R8 R5 R6
       43 ADD                              R1 R1 R8
       44 SUB                              R9 R4 R3
       45 MUL                              R8 R1 R9
       46 SUB                              R1 R4 R8
       47 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["ParentSize"]
        2 GETTABLEKS                       R2 R2 K1 ["Y"]
        4 JUMPIFNOTEQKN                    R2 K2 [0] ; [+4]
        6 NEWTABLE                         R2 0 0
        8 RETURN                           R2 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["calculateInterval"]
       12 MOVE                             R3 R0
       13 CALL                             R2 1 1
       14 DUPTABLE                         R3 K6 [{"majorInterval", "minorInterval"}]
       15 SETTABLEKS                       R2 R3 K4 ["majorInterval"]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K7 ["SCALE_NUM_TICKS"]
       20 DIV                              R4 R2 R5
       21 SETTABLEKS                       R4 R3 K5 ["minorInterval"]
       23 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R5 R0 K0 ["props"]
        2 GETTABLEKS                       R6 R5 K1 ["Width"]
        4 GETTABLEKS                       R7 R5 K2 ["ScaleType"]
        6 MOVE                             R9 R1
        7 GETUPVAL                         R10 0
        8 GETTABLEKS                       R10 R10 K3 ["createElement"]
       10 GETUPVAL                         R11 1
       11 DUPTABLE                         R12 K7 [{"Value", "Width", "Position", "TickWidthScale", "ScaleType"}]
       12 ORK                              R13 R3 K8 [""]
       13 SETTABLEKS                       R13 R12 K4 ["Value"]
       15 SETTABLEKS                       R6 R12 K1 ["Width"]
       17 GETIMPORT                        R13 K11 [UDim2.new]
       19 LOADN                            R14 0
       20 LOADN                            R15 0
       21 LOADN                            R16 0
       22 MOVE                             R19 R2
       23 NAMECALL                         R17 R0 K12 ["scale"]
       25 CALL                             R17 2 -1
       26 CALL                             R13 -1 1
       27 SETTABLEKS                       R13 R12 K5 ["Position"]
       29 SETTABLEKS                       R4 R12 K6 ["TickWidthScale"]
       31 SETTABLEKS                       R7 R12 K2 ["ScaleType"]
       33 CALL                             R10 2 -1
       34 FASTCALL                         TABLE_INSERT ; [+2]
       35 GETIMPORT                        R8 K15 [table.insert]
       37 CALL                             R8 -1 0
       38 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["ScaleType"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["SCALE_TYPE"]
        7 GETTABLEKS                       R4 R4 K3 ["Angle"]
        9 JUMPIFNOTEQ                      R3 R4 ; [+11]
       11 GETIMPORT                        R3 K6 [string.format]
       13 LOADK                            R4 K7 ["%d°"]
       14 FASTCALL1                        MATH_FLOOR R1 ; [+3]
       15 MOVE                             R6 R1
       16 GETIMPORT                        R5 K10 [math.floor]
       18 CALL                             R5 1 1
       19 CALL                             R3 2 -1
       20 RETURN                           R3 -1
       21 GETIMPORT                        R3 K6 [string.format]
       23 LOADK                            R4 K11 ["%0.3f"]
       24 MOVE                             R5 R1
       25 CALL                             R3 2 -1
       26 RETURN                           R3 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["timelineTheme"]
        6 GETTABLEKS                       R4 R1 K3 ["ParentSize"]
        8 GETTABLEKS                       R4 R4 K4 ["Y"]
       10 JUMPIFNOTEQKN                    R4 K5 [0] ; [+2]
       12 RETURN                           R0 0
       13 NEWTABLE                         R4 0 0
       15 GETTABLEKS                       R9 R1 K3 ["ParentSize"]
       17 GETTABLEKS                       R9 R9 K4 ["Y"]
       19 NAMECALL                         R7 R0 K6 ["inverseScale"]
       21 CALL                             R7 2 1
       22 MOVE                             R5 R7
       23 LOADN                            R8 0
       24 NAMECALL                         R6 R0 K6 ["inverseScale"]
       26 CALL                             R6 2 1
       27 GETTABLEKS                       R9 R0 K7 ["state"]
       29 GETTABLEKS                       R9 R9 K8 ["majorInterval"]
       31 DIV                              R8 R5 R9
       32 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       33 GETIMPORT                        R7 K11 [math.floor]
       35 CALL                             R7 1 1
       36 GETTABLEKS                       R8 R0 K7 ["state"]
       38 GETTABLEKS                       R8 R8 K8 ["majorInterval"]
       40 MUL                              R5 R7 R8
       41 GETTABLEKS                       R9 R0 K7 ["state"]
       43 GETTABLEKS                       R9 R9 K8 ["majorInterval"]
       45 DIV                              R8 R6 R9
       46 FASTCALL1                        MATH_CEIL R8 ; [+2]
       47 GETIMPORT                        R7 K13 [math.ceil]
       49 CALL                             R7 1 1
       50 GETTABLEKS                       R8 R0 K7 ["state"]
       52 GETTABLEKS                       R8 R8 K8 ["majorInterval"]
       54 MUL                              R6 R7 R8
       55 MOVE                             R9 R5
       56 MOVE                             R7 R6
       57 GETTABLEKS                       R8 R0 K7 ["state"]
       59 GETTABLEKS                       R8 R8 K8 ["majorInterval"]
       61 FORNPREP                         R7
       62 MOVE                             R12 R4
       63 MOVE                             R13 R9
       64 MOVE                             R16 R9
       65 NAMECALL                         R14 R0 K14 ["formatLabel"]
       67 CALL                             R14 2 1
       68 GETTABLEKS                       R15 R1 K15 ["TickWidthScale"]
       70 NAMECALL                         R10 R0 K16 ["renderTick"]
       72 CALL                             R10 5 0
       73 LOADN                            R12 1
       74 LOADN                            R10 4
       75 LOADN                            R11 1
       76 FORNPREP                         R10
       77 MOVE                             R15 R4
       78 GETTABLEKS                       R18 R0 K7 ["state"]
       80 GETTABLEKS                       R18 R18 K17 ["minorInterval"]
       82 MUL                              R17 R12 R18
       83 ADD                              R16 R9 R17
       84 LOADK                            R17 K18 [""]
       85 GETTABLEKS                       R18 R1 K19 ["SmallTickWidthScale"]
       87 NAMECALL                         R13 R0 K16 ["renderTick"]
       89 CALL                             R13 5 0
       90 FORNLOOP                         R10
       91 FORNLOOP                         R7
       92 GETUPVAL                         R7 0
       93 GETTABLEKS                       R7 R7 K20 ["createElement"]
       95 LOADK                            R8 K21 ["Frame"]
       96 DUPTABLE                         R9 K29 [{["Size"], ["Position"], ["BackgroundColor3"], ["BorderColor3"], ["BorderSizePixel"] = 1, ["ZIndex"]}]
       97 GETTABLEKS                       R10 R1 K22 ["Size"]
       99 SETTABLEKS                       R10 R9 K22 ["Size"]
      101 GETTABLEKS                       R10 R1 K23 ["Position"]
      103 SETTABLEKS                       R10 R9 K23 ["Position"]
      105 GETTABLEKS                       R10 R3 K30 ["barColor"]
      107 SETTABLEKS                       R10 R9 K24 ["BackgroundColor3"]
      109 GETTABLEKS                       R10 R2 K31 ["borderColor"]
      111 SETTABLEKS                       R10 R9 K25 ["BorderColor3"]
      113 GETTABLEKS                       R10 R1 K28 ["ZIndex"]
      115 SETTABLEKS                       R10 R9 K28 ["ZIndex"]
      117 MOVE                             R10 R4
      118 CALL                             R7 3 -1
      119 RETURN                           R7 -1

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
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Util"]
       31 GETTABLEKS                       R6 R6 K13 ["Constants"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K11 ["Src"]
       38 GETTABLEKS                       R7 R7 K14 ["Components"]
       40 GETTABLEKS                       R7 R7 K15 ["Curves"]
       42 GETTABLEKS                       R7 R7 K16 ["ScaleTick"]
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R7 R1 K17 ["PureComponent"]
       47 LOADK                            R9 K18 ["Scale"]
       48 NAMECALL                         R7 R7 K19 ["extend"]
       50 CALL                             R7 2 1
       51 DUPCLOSURE                       R8 K20 [PROTO_0]
       52 SETTABLEKS                       R8 R7 K21 ["init"]
       54 DUPCLOSURE                       R8 K22 [PROTO_1]
       55 CAPTURE                          VAL R5
       56 SETTABLEKS                       R8 R7 K23 ["calculateInterval"]
       58 DUPCLOSURE                       R8 K24 [PROTO_2]
       59 CAPTURE                          VAL R5
       60 SETTABLEKS                       R8 R7 K25 ["scale"]
       62 DUPCLOSURE                       R8 K26 [PROTO_3]
       63 CAPTURE                          VAL R5
       64 SETTABLEKS                       R8 R7 K27 ["inverseScale"]
       66 NEWCLOSURE                       R8 P4
       67 CAPTURE                          REF R7
       68 CAPTURE                          VAL R5
       69 SETTABLEKS                       R8 R7 K28 ["getDerivedStateFromProps"]
       71 DUPCLOSURE                       R8 K29 [PROTO_5]
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R6
       74 SETTABLEKS                       R8 R7 K30 ["renderTick"]
       76 DUPCLOSURE                       R8 K31 [PROTO_6]
       77 CAPTURE                          VAL R5
       78 SETTABLEKS                       R8 R7 K32 ["formatLabel"]
       80 DUPCLOSURE                       R8 K33 [PROTO_7]
       81 CAPTURE                          VAL R1
       82 SETTABLEKS                       R8 R7 K34 ["render"]
       84 MOVE                             R8 R4
       85 DUPTABLE                         R9 K36 [{"Stylizer"}]
       86 GETTABLEKS                       R10 R3 K35 ["Stylizer"]
       88 SETTABLEKS                       R10 R9 K35 ["Stylizer"]
       90 CALL                             R8 1 1
       91 MOVE                             R9 R7
       92 CALL                             R8 1 1
       93 MOVE                             R7 R8
       94 CLOSEUPVALS                      R7
       95 RETURN                           R7 1
